Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__calculate_coefficients_for_gather_upsample:bb.a
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
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !184

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !185

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
  br i1 %.not81.3, label %.preheader, label %.lr.ph, !llvm.loop !186

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
end_hunk_0
begin_hunk_1_@stbir__cleanup_gathered_coefficients:bb.a
  store <4 x float> %wide.load467, ptr %i.ff, align 4, !tbaa !58
  %index.next468 = add nuw i64 %index465, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next468, %n.vec463
  br i1 %i.fg, label %middle.block469, label %vector.body464, !llvm.loop !195

middle.block469:                                  ; preds = %vector.body464
  %cmp.n470 = icmp eq i64 %n.vec463, %wide.trip.count362
  br i1 %cmp.n470, label %stbir__insert_coeff.exit274, label %.preheader.preheader528

.preheader.preheader528:                          ; preds = %.preheader.preheader, %middle.block469
  %indvars.iv359.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec463, %middle.block469 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader528, %.preheader
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %.preheader ], [ %indvars.iv359.ph, %.preheader.preheader528 ] ; 3 uses
  %i.fh = sub nsw i64 %indvars.iv359, %i.ez
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !58
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv359
  store float %i.fj, ptr %i.fk, align 4, !tbaa !58
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %stbir__insert_coeff.exit274, label %.preheader, !llvm.loop !196

bb.n:                                             ; preds = %bb.i
  %.pre371 = load i32, ptr %.1191330, align 4, !tbaa !47 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.1191330, i64 4 ; 11 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !48 ; 4 uses
  br i1 %or.cond5, label %bb.o, label %stbir__insert_coeff.exit274

bb.o:                                             ; preds = %bb.n
  %.not = icmp slt i32 %i.fm, %i.a
  br i1 %.not, label %.loopexit279, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.b, ptr %i.fl, align 4, !tbaa !48
  %scevgep.i = getelementptr i8, ptr %.1193327, i64 4
  %i.fn = sext i32 %.pre371 to i64
  %i.fo = add i32 %i.fm, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %stbir__insert_coeff.exit
  %indvars.iv350 = phi i64 [ %i.es, %bb.p ], [ %indvars.iv.next351, %stbir__insert_coeff.exit ] ; 3 uses
  %i.fp = load ptr, ptr %i.eq, align 8, !tbaa !52
  %i.fq = trunc nsw i64 %indvars.iv350 to i32
  %i.fr = tail call i32 %i.fp(i32 noundef %i.fq, i32 noundef %i.a) #24 ; 17 uses
  %i.fs = sub nsw i64 %indvars.iv350, %i.fn
  %i.ft = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !58 ; 4 uses
  %i.fv = load i32, ptr %i.fl, align 4, !tbaa !48 ; 10 uses
  %i.fw = load i32, ptr %.1191330, align 4, !tbaa !47 ; 13 uses
  %i.fx = icmp slt i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.fr, ptr %i.fl, align 4, !tbaa !48
  store i32 %i.fr, ptr %.1191330, align 4, !tbaa !47
  store float %i.fu, ptr %.1193327, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit

bb.s:                                             ; preds = %bb.q
  %.not.i236 = icmp sgt i32 %i.fr, %i.fv
  br i1 %.not.i236, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fy = icmp slt i32 %i.fr, %i.fw
  br i1 %i.fy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fz = sub nsw i32 %i.fv, %i.fr
  %.not60.not.i = icmp slt i32 %i.fz, %6
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.ga = sub nsw i32 %i.fw, %i.fr                ; 2 uses
  %i.gb = sub i32 %i.fv, %i.fw                    ; 2 uses
  %i.gc = zext i32 %i.gb to i64                   ; 5 uses
  %i.gd = sext i32 %i.ga to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %.1193327, i64 %i.gd ; 6 uses
  %i.ge = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check516 = icmp ult i32 %i.gb, 7
  br i1 %min.iters.check516, label %.lr.ph.i.preheader, label %vector.memcheck513

vector.memcheck513:                               ; preds = %.lr.ph.preheader.i
  %i.gf = sext i32 %i.fr to i64
  %i.gg = sext i32 %i.fw to i64
  %i.gh = sub nsw i64 %i.gf, %i.gg
  %i.gi = shl nsw i64 %i.gh, 2
  %i.gj = add nsw i64 %i.gi, -1
  %diff.check514 = icmp ult i64 %i.gj, 31
  br i1 %diff.check514, label %.lr.ph.i.preheader, label %vector.ph517

vector.ph517:                                     ; preds = %vector.memcheck513
  %n.vec518 = and i64 %i.ge, 8589934584           ; 3 uses
  %i.gk = sub nsw i64 %i.gc, %n.vec518
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph517
  %index520 = phi i64 [ 0, %vector.ph517 ], [ %index.next523, %vector.body519 ] ; 2 uses
  %i.gl = sub i64 %i.gc, %index520                ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -12
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 -28
  %wide.load521 = load <4 x float>, ptr %i.gn, align 4, !tbaa !58
  %wide.load522 = load <4 x float>, ptr %i.go, align 4, !tbaa !58
  %i.gp = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gl ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 -12
  %i.gr = getelementptr i8, ptr %i.gp, i64 -28
  store <4 x float> %wide.load521, ptr %i.gq, align 4, !tbaa !58
  store <4 x float> %wide.load522, ptr %i.gr, align 4, !tbaa !58
  %index.next523 = add nuw i64 %index520, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next523, %n.vec518
  br i1 %i.gs, label %middle.block524, label %vector.body519, !llvm.loop !197

middle.block524:                                  ; preds = %vector.body519
  %cmp.n525 = icmp eq i64 %i.ge, %n.vec518
  br i1 %cmp.n525, label %.preheader.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck513, %.lr.ph.preheader.i, %middle.block524
  %indvars.iv.i.ph = phi i64 [ %i.gc, %vector.memcheck513 ], [ %i.gc, %.lr.ph.preheader.i ], [ %i.gk, %middle.block524 ] ; 4 uses
  %i.gt = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter544 = and i64 %i.gt, 3                 ; 2 uses
  %lcmp.mod545.not = icmp eq i64 %xtraiter544, 0
  br i1 %lcmp.mod545.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter546 = phi i64 [ %prol.iter546.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i.prol
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !58
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  store float %i.gv, ptr %gep.i.prol, align 4, !tbaa !58
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter546.next = add i64 %prol.iter546, 1   ; 2 uses
  %prol.iter546.cmp.not = icmp eq i64 %prol.iter546.next, %xtraiter544
  br i1 %prol.iter546.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !198

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.gw = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.gw, label %.preheader.i.loopexit, label %.lr.ph.i

.preheader.i.loopexit:                            ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block524
  %i.gx = icmp sgt i32 %i.ga, 1
  br i1 %i.gx, label %.lr.ph63.preheader.i, label %._crit_edge.i

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %i.gy = xor i32 %i.fr, -1
  %i.gz = add i32 %i.fw, %i.gy
  %i.ha = zext i32 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.ha, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.hb, i1 false), !tbaa !58
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !58
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %i.hd, ptr %gep.i, align 4, !tbaa !58
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i
  %i.hf = load float, ptr %i.he, align 4, !tbaa !58
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store float %i.hf, ptr %gep.i.1, align 4, !tbaa !58
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i.1
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !58
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store float %i.hh, ptr %gep.i.2, align 4, !tbaa !58
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i.2
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !58
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store float %i.hj, ptr %gep.i.3, align 4, !tbaa !58
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !199

._crit_edge.i:                                    ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.fu, ptr %.1193327, align 4, !tbaa !58
  store i32 %i.fr, ptr %.1191330, align 4, !tbaa !47
  br label %stbir__insert_coeff.exit

bb.v:                                             ; preds = %bb.t
  %i.hk = sub nsw i32 %i.fr, %i.fw
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.hl ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !58
  %i.ho = fadd float %i.fu, %i.hn
  store float %i.ho, ptr %i.hm, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit

bb.w:                                             ; preds = %bb.s
  %i.hp = sub nsw i32 %i.fr, %i.fw                ; 3 uses
  %.not59.not.i = icmp slt i32 %i.hp, %6
  br i1 %.not59.not.i, label %bb.x, label %stbir__insert_coeff.exit

bb.x:                                             ; preds = %bb.w
  %i.hq = sub nsw i32 %i.fv, %i.fw
  %.064.i = add nuw nsw i32 %i.hq, 1              ; 2 uses
  %i.hr = icmp slt i32 %.064.i, %i.hp
  br i1 %i.hr, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.x
  %i.hs = sext i32 %.064.i to i64
  %i.ht = shl nuw nsw i64 %i.hs, 2
  %scevgep73.i = getelementptr i8, ptr %.1193327, i64 %i.ht
  %i.hu = add i32 %i.fr, -2
  %i.hv = sub i32 %i.hu, %i.fv
  %i.hw = zext i32 %i.hv to i64
  %i.hx = shl nuw nsw i64 %i.hw, 2
  %i.hy = add nuw nsw i64 %i.hx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.hy, i1 false), !tbaa !58
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.x
  %i.hz = sext i32 %i.hp to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.hz
  store float %i.fu, ptr %i.ia, align 4, !tbaa !58
  store i32 %i.fr, ptr %i.fl, align 4, !tbaa !48
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %bb.r, %bb.u, %._crit_edge.i, %bb.v, %bb.w, %._crit_edge68.i
  %i.ib = phi i32 [ %i.fr, %bb.r ], [ %i.fv, %bb.u ], [ %i.fv, %._crit_edge.i ], [ %i.fv, %bb.v ], [ %i.fv, %bb.w ], [ %i.fr, %._crit_edge68.i ]
  %i.ic = phi i32 [ %i.fr, %bb.r ], [ %i.fw, %bb.u ], [ %i.fr, %._crit_edge.i ], [ %i.fw, %bb.v ], [ %i.fw, %bb.w ], [ %i.fw, %._crit_edge68.i ]
  %indvars.iv.next351 = add nsw i64 %indvars.iv350, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next351 to i32
  %exitcond353.not = icmp eq i32 %i.fo, %lftr.wideiv
  br i1 %exitcond353.not, label %.loopexit279, label %bb.q, !llvm.loop !200

.loopexit279:                                     ; preds = %stbir__insert_coeff.exit, %bb.o
  %i.id = phi i32 [ %i.fm, %bb.o ], [ %i.ib, %stbir__insert_coeff.exit ] ; 2 uses
  %i.ie = phi i32 [ %.pre371, %bb.o ], [ %i.ic, %stbir__insert_coeff.exit ] ; 4 uses
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %bb.y, label %stbir__insert_coeff.exit274

bb.y:                                             ; preds = %.loopexit279
  %narrow = xor i32 %i.ie, -1
  %i.ig = zext nneg i32 %narrow to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.ig ; 2 uses
  %.not408 = icmp eq i32 %i.ie, -1
  br i1 %.not408, label %._crit_edge306, label %.lr.ph305

.lr.ph305:                                        ; preds = %bb.y
  %scevgep.i242 = getelementptr i8, ptr %.1193327, i64 4
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph305, %stbir__insert_coeff.exit255
  %.0182303 = phi ptr [ %i.ih, %.lr.ph305 ], [ %i.ik, %stbir__insert_coeff.exit255 ] ; 2 uses
  %.1302 = phi i32 [ -1, %.lr.ph305 ], [ %i.ku, %stbir__insert_coeff.exit255 ] ; 2 uses
  %i.ii = load ptr, ptr %i.eq, align 8, !tbaa !52
  %i.ij = tail call i32 %i.ii(i32 noundef %.1302, i32 noundef %i.a) #24 ; 17 uses
  %i.ik = getelementptr inbounds i8, ptr %.0182303, i64 -4 ; 2 uses
  %i.il = load float, ptr %.0182303, align 4, !tbaa !58 ; 4 uses
  %i.im = load i32, ptr %i.fl, align 4, !tbaa !48 ; 10 uses
  %i.in = load i32, ptr %.1191330, align 4, !tbaa !47 ; 13 uses
  %i.io = icmp slt i32 %i.im, %i.in
  br i1 %i.io, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.ij, ptr %i.fl, align 4, !tbaa !48
  store i32 %i.ij, ptr %.1191330, align 4, !tbaa !47
  store float %i.il, ptr %.1193327, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit255

bb.ab:                                            ; preds = %bb.z
  %.not.i237 = icmp sgt i32 %i.ij, %i.im
  br i1 %.not.i237, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ip = icmp slt i32 %i.ij, %i.in
  br i1 %i.ip, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.iq = sub nsw i32 %i.im, %i.ij
  %.not60.not.i238 = icmp slt i32 %i.iq, %6
  br i1 %.not60.not.i238, label %.lr.ph.preheader.i243, label %stbir__insert_coeff.exit255

.lr.ph.preheader.i243:                            ; preds = %bb.ad
  %i.ir = sub nsw i32 %i.in, %i.ij                ; 2 uses
  %i.is = sub i32 %i.im, %i.in                    ; 2 uses
  %i.it = zext i32 %i.is to i64                   ; 5 uses
  %i.iu = sext i32 %i.ir to i64
  %invariant.gep.i244 = getelementptr [4 x i8], ptr %.1193327, i64 %i.iu ; 6 uses
  %i.iv = add nuw nsw i64 %i.it, 1                ; 2 uses
  %min.iters.check502 = icmp ult i32 %i.is, 7
  br i1 %min.iters.check502, label %.lr.ph.i245.preheader, label %vector.memcheck499

vector.memcheck499:                               ; preds = %.lr.ph.preheader.i243
  %i.iw = sext i32 %i.ij to i64
  %i.ix = sext i32 %i.in to i64
  %i.iy = sub nsw i64 %i.iw, %i.ix
  %i.iz = shl nsw i64 %i.iy, 2
  %i.ja = add nsw i64 %i.iz, -1
  %diff.check500 = icmp ult i64 %i.ja, 31
  br i1 %diff.check500, label %.lr.ph.i245.preheader, label %vector.ph503

vector.ph503:                                     ; preds = %vector.memcheck499
  %n.vec504 = and i64 %i.iv, 8589934584           ; 3 uses
  %i.jb = sub nsw i64 %i.it, %n.vec504
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next509, %vector.body505 ] ; 2 uses
  %i.jc = sub i64 %i.it, %index506                ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -12
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 -28
  %wide.load507 = load <4 x float>, ptr %i.je, align 4, !tbaa !58
  %wide.load508 = load <4 x float>, ptr %i.jf, align 4, !tbaa !58
  %i.jg = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %i.jc ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 -12
  %i.ji = getelementptr i8, ptr %i.jg, i64 -28
  store <4 x float> %wide.load507, ptr %i.jh, align 4, !tbaa !58
  store <4 x float> %wide.load508, ptr %i.ji, align 4, !tbaa !58
  %index.next509 = add nuw i64 %index506, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.jj, label %middle.block510, label %vector.body505, !llvm.loop !201

middle.block510:                                  ; preds = %vector.body505
  %cmp.n511 = icmp eq i64 %i.iv, %n.vec504
  br i1 %cmp.n511, label %.preheader.i239.loopexit, label %.lr.ph.i245.preheader

.lr.ph.i245.preheader:                            ; preds = %vector.memcheck499, %.lr.ph.preheader.i243, %middle.block510
  %indvars.iv.i246.ph = phi i64 [ %i.it, %vector.memcheck499 ], [ %i.it, %.lr.ph.preheader.i243 ], [ %i.jb, %middle.block510 ] ; 4 uses
  %i.jk = add nsw i64 %indvars.iv.i246.ph, 1
  %xtraiter547 = and i64 %i.jk, 3                 ; 2 uses
  %lcmp.mod548.not = icmp eq i64 %xtraiter547, 0
  br i1 %lcmp.mod548.not, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol

.lr.ph.i245.prol:                                 ; preds = %.lr.ph.i245.preheader, %.lr.ph.i245.prol
  %indvars.iv.i246.prol = phi i64 [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ], [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ] ; 3 uses
  %prol.iter549 = phi i64 [ %prol.iter549.next, %.lr.ph.i245.prol ], [ 0, %.lr.ph.i245.preheader ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i246.prol
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !58
  %gep.i247.prol = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246.prol
  store float %i.jm, ptr %gep.i247.prol, align 4, !tbaa !58
  %indvars.iv.next.i248.prol = add nsw i64 %indvars.iv.i246.prol, -1 ; 2 uses
  %prol.iter549.next = add i64 %prol.iter549, 1   ; 2 uses
  %prol.iter549.cmp.not = icmp eq i64 %prol.iter549.next, %xtraiter547
  br i1 %prol.iter549.cmp.not, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol, !llvm.loop !202

.lr.ph.i245.prol.loopexit:                        ; preds = %.lr.ph.i245.prol, %.lr.ph.i245.preheader
  %indvars.iv.i246.unr = phi i64 [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ], [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ]
  %i.jn = icmp ult i64 %indvars.iv.i246.ph, 3
  br i1 %i.jn, label %.preheader.i239.loopexit, label %.lr.ph.i245

.preheader.i239.loopexit:                         ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245, %middle.block510
  %i.jo = icmp sgt i32 %i.ir, 1
  br i1 %i.jo, label %.lr.ph63.preheader.i241, label %._crit_edge.i240

.lr.ph63.preheader.i241:                          ; preds = %.preheader.i239.loopexit
  %i.jp = xor i32 %i.ij, -1
  %i.jq = add i32 %i.in, %i.jp
  %i.jr = zext i32 %i.jq to i64
  %i.js = shl nuw nsw i64 %i.jr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i242, i8 0, i64 %i.js, i1 false), !tbaa !58
  br label %._crit_edge.i240

.lr.ph.i245:                                      ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245
  %indvars.iv.i246 = phi i64 [ %indvars.iv.next.i248.3, %.lr.ph.i245 ], [ %indvars.iv.i246.unr, %.lr.ph.i245.prol.loopexit ] ; 6 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i246
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !58
  %gep.i247 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246
  store float %i.ju, ptr %gep.i247, align 4, !tbaa !58
  %indvars.iv.next.i248 = add nsw i64 %indvars.iv.i246, -1 ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i248
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !58
  %gep.i247.1 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248
  store float %i.jw, ptr %gep.i247.1, align 4, !tbaa !58
  %indvars.iv.next.i248.1 = add nsw i64 %indvars.iv.i246, -2 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i248.1
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !58
  %gep.i247.2 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.1
  store float %i.jy, ptr %gep.i247.2, align 4, !tbaa !58
  %indvars.iv.next.i248.2 = add nsw i64 %indvars.iv.i246, -3 ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i248.2
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !58
  %gep.i247.3 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.2
  store float %i.ka, ptr %gep.i247.3, align 4, !tbaa !58
  %indvars.iv.next.i248.3 = add nsw i64 %indvars.iv.i246, -4
  %.not81.i249.3 = icmp eq i64 %indvars.iv.next.i248.2, 0
  br i1 %.not81.i249.3, label %.preheader.i239.loopexit, label %.lr.ph.i245, !llvm.loop !203

._crit_edge.i240:                                 ; preds = %.lr.ph63.preheader.i241, %.preheader.i239.loopexit
  store float %i.il, ptr %.1193327, align 4, !tbaa !58
  store i32 %i.ij, ptr %.1191330, align 4, !tbaa !47
  br label %stbir__insert_coeff.exit255

bb.ae:                                            ; preds = %bb.ac
  %i.kb = sub nsw i32 %i.ij, %i.in
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.kc ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !58
  %i.kf = fadd float %i.il, %i.ke
  store float %i.kf, ptr %i.kd, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit255

bb.af:                                            ; preds = %bb.ab
  %i.kg = sub nsw i32 %i.ij, %i.in                ; 3 uses
  %.not59.not.i250 = icmp slt i32 %i.kg, %6
  br i1 %.not59.not.i250, label %bb.ag, label %stbir__insert_coeff.exit255

bb.ag:                                            ; preds = %bb.af
  %i.kh = sub nsw i32 %i.im, %i.in
  %.064.i251 = add nuw nsw i32 %i.kh, 1           ; 2 uses
  %i.ki = icmp slt i32 %.064.i251, %i.kg
  br i1 %i.ki, label %.lr.ph67.preheader.i253, label %._crit_edge68.i252

.lr.ph67.preheader.i253:                          ; preds = %bb.ag
  %i.kj = sext i32 %.064.i251 to i64
  %i.kk = shl nuw nsw i64 %i.kj, 2
  %scevgep73.i254 = getelementptr i8, ptr %.1193327, i64 %i.kk
  %i.kl = add i32 %i.ij, -2
  %i.km = sub i32 %i.kl, %i.im
  %i.kn = zext i32 %i.km to i64
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = add nuw nsw i64 %i.ko, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i254, i8 0, i64 %i.kp, i1 false), !tbaa !58
  br label %._crit_edge68.i252

._crit_edge68.i252:                               ; preds = %.lr.ph67.preheader.i253, %bb.ag
  %i.kq = sext i32 %i.kg to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.kq
  store float %i.il, ptr %i.kr, align 4, !tbaa !58
  store i32 %i.ij, ptr %i.fl, align 4, !tbaa !48
  br label %stbir__insert_coeff.exit255

stbir__insert_coeff.exit255:                      ; preds = %bb.aa, %bb.ad, %._crit_edge.i240, %bb.ae, %bb.af, %._crit_edge68.i252
  %i.ks = phi i32 [ %i.ij, %bb.aa ], [ %i.im, %bb.ad ], [ %i.im, %._crit_edge.i240 ], [ %i.im, %bb.ae ], [ %i.im, %bb.af ], [ %i.ij, %._crit_edge68.i252 ]
  %i.kt = phi i32 [ %i.ij, %bb.aa ], [ %i.in, %bb.ad ], [ %i.ij, %._crit_edge.i240 ], [ %i.in, %bb.ae ], [ %i.in, %bb.af ], [ %i.in, %._crit_edge68.i252 ] ; 2 uses
  %i.ku = add nsw i32 %.1302, -1                  ; 2 uses
  %i.kv = icmp sgt i32 %i.ku, %i.kt
  br i1 %i.kv, label %bb.z, label %._crit_edge306, !llvm.loop !204

._crit_edge306:                                   ; preds = %stbir__insert_coeff.exit255, %bb.y
  %i.kw = phi i32 [ %i.id, %bb.y ], [ %i.ks, %stbir__insert_coeff.exit255 ] ; 4 uses
  %.0182.lcssa = phi ptr [ %i.ih, %bb.y ], [ %i.ik, %stbir__insert_coeff.exit255 ]
  %.lcssa = phi i32 [ -1, %bb.y ], [ %i.kt, %stbir__insert_coeff.exit255 ] ; 2 uses
  %i.kx = load float, ptr %.0182.lcssa, align 4, !tbaa !58 ; 4 uses
  store i32 0, ptr %.1191330, align 4, !tbaa !47
  %.not226309 = icmp slt i32 %i.kw, 0
  br i1 %.not226309, label %._crit_edge313, label %.lr.ph312.preheader

.lr.ph312.preheader:                              ; preds = %._crit_edge306
  %i.ky = sext i32 %.lcssa to i64                 ; 7 uses
  %i.kz = add nuw i32 %i.kw, 1
  %wide.trip.count357 = zext i32 %i.kz to i64     ; 4 uses
  %min.iters.check488 = icmp ult i32 %i.kw, 7
  br i1 %min.iters.check488, label %.lr.ph312.preheader529, label %vector.memcheck485

vector.memcheck485:                               ; preds = %.lr.ph312.preheader
  %i.la = shl nsw i64 %i.ky, 2
  %i.lb = add nsw i64 %i.la, -1
  %diff.check486 = icmp ult i64 %i.lb, 31
  br i1 %diff.check486, label %.lr.ph312.preheader529, label %vector.ph489

vector.ph489:                                     ; preds = %vector.memcheck485
  %n.vec490 = and i64 %wide.trip.count357, 4294967288 ; 3 uses
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph489
  %index492 = phi i64 [ 0, %vector.ph489 ], [ %index.next495, %vector.body491 ] ; 3 uses
  %i.lc = sub nsw i64 %index492, %i.ky
  %i.ld = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load493 = load <4 x float>, ptr %i.ld, align 4, !tbaa !58
  %wide.load494 = load <4 x float>, ptr %i.le, align 4, !tbaa !58
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %index492 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store <4 x float> %wide.load493, ptr %i.lf, align 4, !tbaa !58
  store <4 x float> %wide.load494, ptr %i.lg, align 4, !tbaa !58
  %index.next495 = add nuw i64 %index492, 8       ; 2 uses
  %i.lh = icmp eq i64 %index.next495, %n.vec490
  br i1 %i.lh, label %middle.block496, label %vector.body491, !llvm.loop !205

middle.block496:                                  ; preds = %vector.body491
  %cmp.n497 = icmp eq i64 %n.vec490, %wide.trip.count357
  br i1 %cmp.n497, label %._crit_edge313, label %.lr.ph312.preheader529

.lr.ph312.preheader529:                           ; preds = %vector.memcheck485, %.lr.ph312.preheader, %middle.block496
  %indvars.iv354.ph = phi i64 [ 0, %vector.memcheck485 ], [ 0, %.lr.ph312.preheader ], [ %n.vec490, %middle.block496 ] ; 3 uses
  %i.li = zext nneg i32 %i.kw to i64
  %i.lj = sub nsw i64 %i.li, %indvars.iv354.ph
  %xtraiter550 = and i64 %wide.trip.count357, 3   ; 2 uses
  %lcmp.mod551.not = icmp eq i64 %xtraiter550, 0
  br i1 %lcmp.mod551.not, label %.lr.ph312.prol.loopexit, label %.lr.ph312.prol

.lr.ph312.prol:                                   ; preds = %.lr.ph312.preheader529, %.lr.ph312.prol
  %indvars.iv354.prol = phi i64 [ %indvars.iv.next355.prol, %.lr.ph312.prol ], [ %indvars.iv354.ph, %.lr.ph312.preheader529 ] ; 3 uses
  %prol.iter552 = phi i64 [ %prol.iter552.next, %.lr.ph312.prol ], [ 0, %.lr.ph312.preheader529 ]
  %i.lk = sub nsw i64 %indvars.iv354.prol, %i.ky
  %i.ll = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.lk
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !58
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv354.prol
  store float %i.lm, ptr %i.ln, align 4, !tbaa !58
  %indvars.iv.next355.prol = add nuw nsw i64 %indvars.iv354.prol, 1 ; 2 uses
  %prol.iter552.next = add i64 %prol.iter552, 1   ; 2 uses
  %prol.iter552.cmp.not = icmp eq i64 %prol.iter552.next, %xtraiter550
  br i1 %prol.iter552.cmp.not, label %.lr.ph312.prol.loopexit, label %.lr.ph312.prol, !llvm.loop !206

.lr.ph312.prol.loopexit:                          ; preds = %.lr.ph312.prol, %.lr.ph312.preheader529
  %indvars.iv354.unr = phi i64 [ %indvars.iv354.ph, %.lr.ph312.preheader529 ], [ %indvars.iv.next355.prol, %.lr.ph312.prol ]
  %i.lo = icmp ult i64 %i.lj, 3
  br i1 %i.lo, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312.prol.loopexit, %.lr.ph312
  %indvars.iv354 = phi i64 [ %indvars.iv.next355.3, %.lr.ph312 ], [ %indvars.iv354.unr, %.lr.ph312.prol.loopexit ] ; 6 uses
  %i.lp = sub nsw i64 %indvars.iv354, %i.ky
  %i.lq = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !58
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv354
  store float %i.lr, ptr %i.ls, align 4, !tbaa !58
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.lt = sub nsw i64 %indvars.iv.next355, %i.ky
  %i.lu = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !58
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next355
  store float %i.lv, ptr %i.lw, align 4, !tbaa !58
  %indvars.iv.next355.1 = add nuw nsw i64 %indvars.iv354, 2 ; 2 uses
  %i.lx = sub nsw i64 %indvars.iv.next355.1, %i.ky
  %i.ly = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.lx
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !58
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next355.1
  store float %i.lz, ptr %i.ma, align 4, !tbaa !58
  %indvars.iv.next355.2 = add nuw nsw i64 %indvars.iv354, 3 ; 2 uses
  %i.mb = sub nsw i64 %indvars.iv.next355.2, %i.ky
  %i.mc = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.mb
  %i.md = load float, ptr %i.mc, align 4, !tbaa !58
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next355.2
  store float %i.md, ptr %i.me, align 4, !tbaa !58
  %indvars.iv.next355.3 = add nuw nsw i64 %indvars.iv354, 4 ; 2 uses
  %exitcond358.not.3 = icmp eq i64 %indvars.iv.next355.3, %wide.trip.count357
  br i1 %exitcond358.not.3, label %._crit_edge313, label %.lr.ph312, !llvm.loop !207

._crit_edge313:                                   ; preds = %.lr.ph312.prol.loopexit, %.lr.ph312, %middle.block496, %._crit_edge306
  %i.mf = load ptr, ptr %i.eq, align 8, !tbaa !52
  %i.mg = tail call i32 %i.mf(i32 noundef %.lcssa, i32 noundef %i.a) #24 ; 17 uses
  %i.mh = load i32, ptr %i.fl, align 4, !tbaa !48 ; 10 uses
  %i.mi = load i32, ptr %.1191330, align 4, !tbaa !47 ; 13 uses
  %i.mj = icmp slt i32 %i.mh, %i.mi
  br i1 %i.mj, label %stbir__insert_coeff.exit274.thread, label %bb.ah

stbir__insert_coeff.exit274.thread:               ; preds = %._crit_edge313
  store i32 %i.mg, ptr %i.fl, align 4, !tbaa !48
  store i32 %i.mg, ptr %.1191330, align 4, !tbaa !47
  store float %i.kx, ptr %.1193327, align 4, !tbaa !58
  br label %bb.an

bb.ah:                                            ; preds = %._crit_edge313
  %.not.i256 = icmp sgt i32 %i.mg, %i.mh
  br i1 %.not.i256, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mk = icmp slt i32 %i.mg, %i.mi
  br i1 %i.mk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ml = sub nsw i32 %i.mh, %i.mg
  %.not60.not.i257 = icmp slt i32 %i.ml, %6
  br i1 %.not60.not.i257, label %.lr.ph.preheader.i262, label %stbir__insert_coeff.exit274

.lr.ph.preheader.i262:                            ; preds = %bb.aj
  %i.mm = sub nsw i32 %i.mi, %i.mg                ; 2 uses
  %i.mn = sub i32 %i.mh, %i.mi                    ; 2 uses
  %i.mo = zext i32 %i.mn to i64                   ; 5 uses
  %i.mp = sext i32 %i.mm to i64
  %invariant.gep.i263 = getelementptr [4 x i8], ptr %.1193327, i64 %i.mp ; 6 uses
  %i.mq = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check474 = icmp ult i32 %i.mn, 7
  br i1 %min.iters.check474, label %.lr.ph.i264.preheader, label %vector.memcheck472

vector.memcheck472:                               ; preds = %.lr.ph.preheader.i262
  %i.mr = sext i32 %i.mg to i64
  %i.ms = sext i32 %i.mi to i64
  %i.mt = sub nsw i64 %i.mr, %i.ms
  %i.mu = shl nsw i64 %i.mt, 2
  %i.mv = add nsw i64 %i.mu, -1
  %diff.check = icmp ult i64 %i.mv, 31
  br i1 %diff.check, label %.lr.ph.i264.preheader, label %vector.ph475

vector.ph475:                                     ; preds = %vector.memcheck472
  %n.vec476 = and i64 %i.mq, 8589934584           ; 3 uses
  %i.mw = sub nsw i64 %i.mo, %n.vec476
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph475
  %index478 = phi i64 [ 0, %vector.ph475 ], [ %index.next481, %vector.body477 ] ; 2 uses
  %i.mx = sub i64 %i.mo, %index478                ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 -12
  %i.na = getelementptr inbounds i8, ptr %i.my, i64 -28
  %wide.load479 = load <4 x float>, ptr %i.mz, align 4, !tbaa !58
  %wide.load480 = load <4 x float>, ptr %i.na, align 4, !tbaa !58
  %i.nb = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %i.mx ; 2 uses
  %i.nc = getelementptr i8, ptr %i.nb, i64 -12
  %i.nd = getelementptr i8, ptr %i.nb, i64 -28
  store <4 x float> %wide.load479, ptr %i.nc, align 4, !tbaa !58
  store <4 x float> %wide.load480, ptr %i.nd, align 4, !tbaa !58
  %index.next481 = add nuw i64 %index478, 8       ; 2 uses
  %i.ne = icmp eq i64 %index.next481, %n.vec476
  br i1 %i.ne, label %middle.block482, label %vector.body477, !llvm.loop !208

middle.block482:                                  ; preds = %vector.body477
  %cmp.n483 = icmp eq i64 %i.mq, %n.vec476
  br i1 %cmp.n483, label %.preheader.i258.loopexit, label %.lr.ph.i264.preheader

.lr.ph.i264.preheader:                            ; preds = %vector.memcheck472, %.lr.ph.preheader.i262, %middle.block482
  %indvars.iv.i265.ph = phi i64 [ %i.mo, %vector.memcheck472 ], [ %i.mo, %.lr.ph.preheader.i262 ], [ %i.mw, %middle.block482 ] ; 4 uses
  %i.nf = add nsw i64 %indvars.iv.i265.ph, 1
  %xtraiter553 = and i64 %i.nf, 3                 ; 2 uses
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol

.lr.ph.i264.prol:                                 ; preds = %.lr.ph.i264.preheader, %.lr.ph.i264.prol
  %indvars.iv.i265.prol = phi i64 [ %indvars.iv.next.i267.prol, %.lr.ph.i264.prol ], [ %indvars.iv.i265.ph, %.lr.ph.i264.preheader ] ; 3 uses
  %prol.iter555 = phi i64 [ %prol.iter555.next, %.lr.ph.i264.prol ], [ 0, %.lr.ph.i264.preheader ]
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i265.prol
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !58
  %gep.i266.prol = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i265.prol
  store float %i.nh, ptr %gep.i266.prol, align 4, !tbaa !58
  %indvars.iv.next.i267.prol = add nsw i64 %indvars.iv.i265.prol, -1 ; 2 uses
  %prol.iter555.next = add i64 %prol.iter555, 1   ; 2 uses
  %prol.iter555.cmp.not = icmp eq i64 %prol.iter555.next, %xtraiter553
  br i1 %prol.iter555.cmp.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol, !llvm.loop !209

.lr.ph.i264.prol.loopexit:                        ; preds = %.lr.ph.i264.prol, %.lr.ph.i264.preheader
  %indvars.iv.i265.unr = phi i64 [ %indvars.iv.i265.ph, %.lr.ph.i264.preheader ], [ %indvars.iv.next.i267.prol, %.lr.ph.i264.prol ]
  %i.ni = icmp ult i64 %indvars.iv.i265.ph, 3
  br i1 %i.ni, label %.preheader.i258.loopexit, label %.lr.ph.i264

.preheader.i258.loopexit:                         ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264, %middle.block482
  %i.nj = icmp sgt i32 %i.mm, 1
  br i1 %i.nj, label %.lr.ph63.preheader.i260, label %._crit_edge.i259

.lr.ph63.preheader.i260:                          ; preds = %.preheader.i258.loopexit
  %scevgep.i261 = getelementptr i8, ptr %.1193327, i64 4
  %i.nk = xor i32 %i.mg, -1
  %i.nl = add i32 %i.mi, %i.nk
  %i.nm = zext i32 %i.nl to i64
  %i.nn = shl nuw nsw i64 %i.nm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i261, i8 0, i64 %i.nn, i1 false), !tbaa !58
  br label %._crit_edge.i259

.lr.ph.i264:                                      ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264
  %indvars.iv.i265 = phi i64 [ %indvars.iv.next.i267.3, %.lr.ph.i264 ], [ %indvars.iv.i265.unr, %.lr.ph.i264.prol.loopexit ] ; 6 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i265
  %i.np = load float, ptr %i.no, align 4, !tbaa !58
  %gep.i266 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i265
  store float %i.np, ptr %gep.i266, align 4, !tbaa !58
  %indvars.iv.next.i267 = add nsw i64 %indvars.iv.i265, -1 ; 2 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i267
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !58
  %gep.i266.1 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267
  store float %i.nr, ptr %gep.i266.1, align 4, !tbaa !58
  %indvars.iv.next.i267.1 = add nsw i64 %indvars.iv.i265, -2 ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i267.1
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !58
  %gep.i266.2 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267.1
  store float %i.nt, ptr %gep.i266.2, align 4, !tbaa !58
  %indvars.iv.next.i267.2 = add nsw i64 %indvars.iv.i265, -3 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i267.2
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !58
  %gep.i266.3 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267.2
  store float %i.nv, ptr %gep.i266.3, align 4, !tbaa !58
  %indvars.iv.next.i267.3 = add nsw i64 %indvars.iv.i265, -4
  %.not81.i268.3 = icmp eq i64 %indvars.iv.next.i267.2, 0
  br i1 %.not81.i268.3, label %.preheader.i258.loopexit, label %.lr.ph.i264, !llvm.loop !210

._crit_edge.i259:                                 ; preds = %.lr.ph63.preheader.i260, %.preheader.i258.loopexit
  store float %i.kx, ptr %.1193327, align 4, !tbaa !58
  store i32 %i.mg, ptr %.1191330, align 4, !tbaa !47
  br label %stbir__insert_coeff.exit274

bb.ak:                                            ; preds = %bb.ai
  %i.nw = sub nsw i32 %i.mg, %i.mi
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.nx ; 2 uses
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !58
  %i.oa = fadd float %i.kx, %i.nz
  store float %i.oa, ptr %i.ny, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit274

bb.al:                                            ; preds = %bb.ah
  %i.ob = sub nsw i32 %i.mg, %i.mi                ; 3 uses
  %.not59.not.i269 = icmp slt i32 %i.ob, %6
  br i1 %.not59.not.i269, label %bb.am, label %stbir__insert_coeff.exit274

bb.am:                                            ; preds = %bb.al
  %i.oc = sub nsw i32 %i.mh, %i.mi
  %.064.i270 = add nuw nsw i32 %i.oc, 1           ; 2 uses
  %i.od = icmp slt i32 %.064.i270, %i.ob
  br i1 %i.od, label %.lr.ph67.preheader.i272, label %._crit_edge68.i271

.lr.ph67.preheader.i272:                          ; preds = %bb.am
  %i.oe = sext i32 %.064.i270 to i64
  %i.of = shl nuw nsw i64 %i.oe, 2
  %scevgep73.i273 = getelementptr i8, ptr %.1193327, i64 %i.of
  %i.og = add i32 %i.mg, -2
  %i.oh = sub i32 %i.og, %i.mh
  %i.oi = zext i32 %i.oh to i64
  %i.oj = shl nuw nsw i64 %i.oi, 2
  %i.ok = add nuw nsw i64 %i.oj, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i273, i8 0, i64 %i.ok, i1 false), !tbaa !58
  br label %._crit_edge68.i271

._crit_edge68.i271:                               ; preds = %.lr.ph67.preheader.i272, %bb.am
  %i.ol = sext i32 %i.ob to i64
  %i.om = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.ol
  store float %i.kx, ptr %i.om, align 4, !tbaa !58
  store i32 %i.mg, ptr %i.fl, align 4, !tbaa !48
  br label %stbir__insert_coeff.exit274

stbir__insert_coeff.exit274:                      ; preds = %.preheader, %middle.block469, %bb.n, %._crit_edge68.i271, %bb.al, %bb.ak, %._crit_edge.i259, %bb.aj, %bb.m, %.loopexit279, %bb.l
  %i.on = phi i32 [ %i.ev, %bb.l ], [ %i.mg, %._crit_edge68.i271 ], [ %i.mh, %bb.al ], [ %i.mh, %bb.ak ], [ %i.mh, %._crit_edge.i259 ], [ %i.mh, %bb.aj ], [ %i.id, %.loopexit279 ], [ %i.ev, %bb.m ], [ %i.fm, %bb.n ], [ %i.ev, %middle.block469 ], [ %i.ev, %.preheader ] ; 2 uses
  %i.oo = phi i32 [ %i.ew, %bb.l ], [ %i.mi, %._crit_edge68.i271 ], [ %i.mi, %bb.al ], [ %i.mi, %bb.ak ], [ %i.mg, %._crit_edge.i259 ], [ %i.mi, %bb.aj ], [ %i.ie, %.loopexit279 ], [ 0, %bb.m ], [ %.pre371, %bb.n ], [ 0, %middle.block469 ], [ 0, %.preheader ] ; 2 uses
  %.not229 = icmp sgt i32 %i.oo, %i.on
  br i1 %.not229, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %stbir__insert_coeff.exit274.thread, %stbir__insert_coeff.exit274
  %i.op = phi i32 [ %i.mg, %stbir__insert_coeff.exit274.thread ], [ %i.oo, %stbir__insert_coeff.exit274 ] ; 4 uses
  %i.oq = phi i32 [ %i.mg, %stbir__insert_coeff.exit274.thread ], [ %i.on, %stbir__insert_coeff.exit274 ]
  %i.or = getelementptr inbounds nuw i8, ptr %.1191330, i64 4 ; 2 uses
  %reass.sub = sub i32 %i.oq, %i.op
  %i.os = add i32 %reass.sub, 1                   ; 2 uses
  %.not230315 = icmp eq i32 %i.os, 0
  br i1 %.not230315, label %.critedge.thread, label %.lr.ph318.preheader

.lr.ph318.preheader:                              ; preds = %bb.an
  %i.ot = sext i32 %i.os to i64
  br label %.lr.ph318

.critedge.thread:                                 ; preds = %bb.ao, %bb.an
  %i.ou = add nsw i32 %i.op, -1
  store i32 %i.ou, ptr %i.or, align 4, !tbaa !48
  br label %bb.aq

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %bb.ao
  %indvars.iv364 = phi i64 [ %i.ot, %.lr.ph318.preheader ], [ %indvars.iv.next365, %bb.ao ] ; 4 uses
  %i.ov = getelementptr [4 x i8], ptr %.1193327, i64 %indvars.iv364
  %i.ow = getelementptr i8, ptr %i.ov, i64 -4
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !58
  %i.oy = fcmp oeq float %i.ox, 0.000000e+00
  br i1 %i.oy, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %.lr.ph318
  %indvars.iv.next365 = add nsw i64 %indvars.iv364, -1 ; 2 uses
  %.not230 = icmp eq i64 %indvars.iv.next365, 0
  br i1 %.not230, label %.critedge.thread, label %.lr.ph318, !llvm.loop !211

.critedge:                                        ; preds = %.lr.ph318
  %i.oz = trunc nsw i64 %indvars.iv364 to i32     ; 4 uses
  %i.pa = add i32 %i.op, -1
  %i.pb = add i32 %i.pa, %i.oz                    ; 2 uses
  store i32 %i.pb, ptr %i.or, align 4, !tbaa !48
  %.not231.not = icmp sgt i64 %indvars.iv364, 0
  br i1 %.not231.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge
  %spec.select234 = tail call i32 @llvm.smin.i32(i32 %i.op, i32 %.0201324)
  %.1198 = tail call i32 @llvm.smax.i32(i32 %i.pb, i32 %.0197325)
  %spec.select235 = tail call i32 @llvm.smax.i32(i32 %i.oz, i32 %.0194326)
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge.thread, %bb.ap, %.critedge
  %.0282 = phi i32 [ %i.oz, %.critedge ], [ %i.oz, %bb.ap ], [ 0, %.critedge.thread ] ; 3 uses
  %.2203 = phi i32 [ %.0201324, %.critedge ], [ %spec.select234, %bb.ap ], [ %.0201324, %.critedge.thread ] ; 2 uses
  %.2199 = phi i32 [ %.0197325, %.critedge ], [ %.1198, %bb.ap ], [ %.0197325, %.critedge.thread ] ; 2 uses
  %.1195 = phi i32 [ %.0194326, %.critedge ], [ %spec.select235, %bb.ap ], [ %.0194326, %.critedge.thread ] ; 2 uses
  %i.pc = icmp slt i32 %.0282, %6
  br i1 %i.pc, label %.lr.ph322.preheader, label %.loopexit

.lr.ph322.preheader:                              ; preds = %bb.aq
  %i.pd = sext i32 %.0282 to i64
  %i.pe = shl nsw i64 %i.pd, 2
  %scevgep = getelementptr i8, ptr %.1193327, i64 %i.pe
  %i.pf = xor i32 %.0282, -1
  %i.pg = add i32 %6, %i.pf
  %i.ph = zext i32 %i.pg to i64
  %i.pi = shl nuw nsw i64 %i.ph, 2
  %i.pj = add nuw nsw i64 %i.pi, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.pj, i1 false), !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph322.preheader, %bb.aq, %stbir__insert_coeff.exit274
  %.3204 = phi i32 [ %.0201324, %stbir__insert_coeff.exit274 ], [ %.2203, %bb.aq ], [ %.2203, %.lr.ph322.preheader ] ; 2 uses
  %.3200 = phi i32 [ %.0197325, %stbir__insert_coeff.exit274 ], [ %.2199, %bb.aq ], [ %.2199, %.lr.ph322.preheader ] ; 2 uses
  %.2196 = phi i32 [ %.0194326, %stbir__insert_coeff.exit274 ], [ %.1195, %bb.aq ], [ %.1195, %.lr.ph322.preheader ] ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.1191330, i64 8
  %i.pl = getelementptr [4 x i8], ptr %.1193327, i64 %i.er
  %i.pm = add nuw nsw i32 %.2208323, 1            ; 2 uses
  %exitcond370.not = icmp eq i32 %i.pm, %3
  br i1 %exitcond370.not, label %._crit_edge332, label %bb.i, !llvm.loop !212

._crit_edge332:                                   ; preds = %.loopexit, %stbir_overlapping_memcpy.exit
  %.0201.lcssa = phi i32 [ 2147483647, %stbir_overlapping_memcpy.exit ], [ %.3204, %.loopexit ]
  %.0197.lcssa = phi i32 [ -2147483647, %stbir_overlapping_memcpy.exit ], [ %.3200, %.loopexit ]
  %.0194.lcssa = phi i32 [ -1, %stbir_overlapping_memcpy.exit ], [ %.2196, %.loopexit ]
  store i32 %.0201.lcssa, ptr %1, align 4, !tbaa !49
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.0197.lcssa, ptr %i.pn, align 4, !tbaa !50
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0194.lcssa, ptr %i.po, align 4, !tbaa !51
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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0257) #24, !srcloc !234
  %i.e = load i32, ptr %.0259, align 4, !tbaa !32
  store i32 %i.e, ptr %.0257, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %.0257, i64 4 ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %.0259, i64 %i.c
  %i.h = icmp ult ptr %i.f, %i.b
  br i1 %i.h, label %.preheader291, label %.loopexit, !llvm.loop !214

.preheader293:                                    ; preds = %bb.b, %.preheader293
  %.1260 = phi ptr [ %i.k, %.preheader293 ], [ %2, %bb.b ] ; 2 uses
  %.1258 = phi ptr [ %i.j, %.preheader293 ], [ %2, %bb.b ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1258) #24, !srcloc !235
  %i.i = load i64, ptr %.1260, align 8, !tbaa !236
  store i64 %i.i, ptr %.1258, align 8, !tbaa !236
  %i.j = getelementptr inbounds nuw i8, ptr %.1258, i64 8 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.1260, i64 %i.c
  %i.l = icmp ult ptr %i.j, %i.b
  br i1 %i.l, label %.preheader293, label %.loopexit, !llvm.loop !215

.preheader295:                                    ; preds = %bb.b, %.preheader295
  %.2261 = phi ptr [ %i.r, %.preheader295 ], [ %2, %bb.b ] ; 3 uses
  %.2 = phi ptr [ %i.q, %.preheader295 ], [ %2, %bb.b ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #24, !srcloc !237
  %i.m = load i64, ptr %.2261, align 8, !tbaa !236
  store i64 %i.m, ptr %.2, align 8, !tbaa !236
  %i.n = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.n) #24, !srcloc !238
  %i.o = getelementptr inbounds nuw i8, ptr %.2261, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32
  store i32 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %.2, i64 12 ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %.2261, i64 %i.c
  %i.s = icmp ult ptr %i.q, %i.b
  br i1 %i.s, label %.preheader295, label %.loopexit, !llvm.loop !216

.preheader297:                                    ; preds = %bb.b, %.preheader297
  %.3262 = phi ptr [ %i.v, %.preheader297 ], [ %2, %bb.b ] ; 2 uses
  %.3 = phi ptr [ %i.u, %.preheader297 ], [ %2, %bb.b ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3) #24, !srcloc !239
  %i.t = load <4 x float>, ptr %.3262, align 1, !tbaa !24
  store <4 x float> %i.t, ptr %.3, align 1, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.3262, i64 %i.c
  %i.w = icmp ult ptr %i.u, %i.b
  br i1 %i.w, label %.preheader297, label %.loopexit, !llvm.loop !217

.preheader299:                                    ; preds = %bb.b, %.preheader299
  %.4263 = phi ptr [ %i.ac, %.preheader299 ], [ %2, %bb.b ] ; 3 uses
  %.4 = phi ptr [ %i.ab, %.preheader299 ], [ %2, %bb.b ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.4) #24, !srcloc !240
  %i.x = load <4 x float>, ptr %.4263, align 1, !tbaa !24
end_hunk_1
begin_hunk_2_@stbir__calculate_filters:bb.a
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
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !265

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
  br i1 %i.ic, label %.lr.ph, label %._crit_edge, !llvm.loop !266

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
  br i1 %i.iu, label %middle.block219, label %vector.body215, !llvm.loop !267

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !268

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
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !269

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
  br i1 %exitcond.not, label %._crit_edge178, label %bb.aa, !llvm.loop !270

._crit_edge178:                                   ; preds = %stbir__insert_coeff.exit, %bb.z
  %.1.lcssa = phi i32 [ %.0137182, %bb.z ], [ %.2, %stbir__insert_coeff.exit ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.2147179, i64 8
  %i.kf = getelementptr inbounds [4 x i8], ptr %.2144180, i64 %i.gq
  %i.kg = add nuw nsw i32 %.0139181, 1            ; 2 uses
  %exitcond192.not = icmp eq i32 %i.kg, %.1149
  br i1 %exitcond192.not, label %._crit_edge185, label %bb.z, !llvm.loop !271

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
  br i1 %i.kz, label %middle.block231, label %vector.body226, !llvm.loop !272

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
  br i1 %i.lb, label %.lr.ph191, label %.loopexit, !llvm.loop !273

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
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.073) #24, !srcloc !278
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

.preheader:                                       ; preds = %.lr.ph, %.preheader85
  %.pn.lcssa = phi ptr [ %0, %.preheader85 ], [ %.27590, %.lr.ph ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader85 ], [ %i.bb, %.lr.ph ]
  %i.ai = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.ai, label %.lr.ph94, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.27590 = phi ptr [ %.275, %.lr.ph ], [ %.27586, %.lr.ph.preheader ] ; 4 uses
  %.289 = phi ptr [ %i.bb, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.pn88 = phi ptr [ %.27590, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.27590) #24, !srcloc !279
  %i.aj = load i8, ptr %.289, align 1, !tbaa !24
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x3B808081
  store float %i.al, ptr %.pn88, align 4, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %.289, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = uitofp i8 %i.an to float
  %i.ap = fmul nnan float %i.ao, f0x3B808081
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn88, i64 4
  store float %i.ap, ptr %i.aq, align 4, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %.289, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24
  %i.at = uitofp i8 %i.as to float
  %i.au = fmul nnan float %i.at, f0x3B808081
  %i.av = getelementptr inbounds nuw i8, ptr %.pn88, i64 8
  store float %i.au, ptr %i.av, align 4, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %.289, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !24
  %i.ay = uitofp i8 %i.ax to float
  %i.az = fmul nnan float %i.ay, f0x3B808081
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn88, i64 12
  store float %i.az, ptr %i.ba, align 4, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %.289, i64 4 ; 2 uses
end_hunk_2
