Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@ggml_compute_forward_rms_norm_mul_fused:bb.a
  %i.if = add nuw nsw i64 %.0124173.us.us.us.us.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %i.if, %i.ac
  br i1 %exitcond202.not.i, label %._crit_edge.split179.us.split.us.us.us.i, label %.lr.ph155.us.us.us.us.i, !llvm.loop !631

._crit_edge.split179.us.split.us.us.us.i:         ; preds = %._crit_edge156.split.us.us.split.us.us.us.us.i
  %i.ig = add nuw nsw i64 %.0125183.us.us.i, 1    ; 2 uses
  %exitcond203.not.i = icmp eq i64 %i.ig, %i.ae
  br i1 %exitcond203.not.i, label %_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit, label %.preheader.us.us.i, !llvm.loop !632

bb.n:                                             ; preds = %.thread145.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3949, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67) #17
  unreachable

_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit: ; preds = %._crit_edge.split179.us.split.us.us.us.i, %.preheader.lr.ph.split.split.i, %.preheader146.i, %.preheader.lr.ph.i
  ret void

bb.o:                                             ; preds = %.thread, %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4026, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_rms_norm_back(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 12 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 6 uses
  %i.f = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef %i.e)
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4038, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.70) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4040, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4041, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31   ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.0.copyload.i = load float, ptr %i.an, align 4 ; 3 uses
  %i.ao = icmp sgt i64 %i.u, 0
  br i1 %i.ao, label %.preheader.lr.ph.i, label %_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader.lr.ph.i:                               ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !36
  %i.ar = load i32, ptr %0, align 8, !tbaa !35
  %i.as = icmp slt i64 %i.s, 1
  %i.at = sext i32 %i.ar to i64                   ; 5 uses
  %i.au = icmp sle i64 %i.q, %i.at
  %i.av = sitofp i64 %i.o to float                ; 3 uses
  %i.aw = sext i32 %i.aq to i64                   ; 4 uses
  %i.ax = fdiv float 0.000000e+00, %i.av
  %i.ay = fadd float %i.ax, %.0.copyload.i        ; 2 uses
  %brmerge.i = select i1 %i.as, i1 true, i1 %i.au
  br i1 %brmerge.i, label %_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader.lr.ph.split.split.i

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = icmp sgt i64 %i.o, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !37 ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !37 ; 2 uses
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !37 ; 2 uses
  br i1 %i.ba, label %.preheader.us.us.i.preheader, label %.preheader.lr.ph.split.split.split.i

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.split.i
  %i.bg = mul i64 %i.ai, %i.at
  %i.bh = shl i64 %i.o, 2                         ; 3 uses
  %i.bi = mul i64 %i.ai, %i.aw
  %i.bj = mul i64 %i.w, %i.at
  %i.bk = mul i64 %i.w, %i.aw
  %i.bl = mul i64 %i.ac, %i.at
  %i.bm = mul i64 %i.ac, %i.aw
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bg
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bh
  %i.bp = getelementptr i8, ptr %i.bd, i64 %i.bj
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bh
  %i.br = getelementptr i8, ptr %i.be, i64 %i.bl
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bh
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.bt = icmp ult i64 %i.o, 4
  %unroll_iter = and i64 %i.o, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i64 %i.o, 4
  %min.iters.check21 = icmp ult i64 %i.o, 32
  %i.bu = and i64 %i.o, 28
  %n.vec = and i64 %i.o, 9223372036854775776      ; 4 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  %n.vec31 = and i64 %i.o, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.o, %n.vec31
  %xtraiter45 = and i64 %i.o, 3                   ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %._crit_edge.split177.us.split.us.us.us.i
  %.0131183.us.us.i = phi i64 [ %i.gl, %._crit_edge.split177.us.split.us.us.us.i ], [ 0, %.preheader.us.us.i.preheader ] ; 7 uses
  %i.bv = mul i64 %i.am, %.0131183.us.us.i
  %i.bw = mul i64 %i.aa, %.0131183.us.us.i
  %i.bx = mul i64 %i.ag, %.0131183.us.us.i
  %i.by = mul i64 %.0131183.us.us.i, %i.aa
  %i.bz = mul i64 %.0131183.us.us.i, %i.ag
  %i.ca = mul i64 %.0131183.us.us.i, %i.am
  %invariant.gep172.us.us.i = getelementptr i8, ptr %i.bd, i64 %i.by
  %invariant.gep.us.us.i = getelementptr i8, ptr %i.be, i64 %i.bz
  %invariant.gep174.us.us.i = getelementptr i8, ptr %i.bf, i64 %i.ca
  %i.cb = getelementptr i8, ptr %i.bo, i64 %i.bv
  %i.cc = getelementptr i8, ptr %i.bq, i64 %i.bw
  %i.cd = getelementptr i8, ptr %i.bs, i64 %i.bx
  br label %.lr.ph154.us.us.us.us.i

.lr.ph154.us.us.us.us.i:                          ; preds = %._crit_edge155.split.us.us.split.us.us.us.us.i, %.preheader.us.us.i
  %.0130171.us.us.us.us.i = phi i64 [ 0, %.preheader.us.us.i ], [ %i.gk, %._crit_edge155.split.us.us.split.us.us.us.us.i ] ; 7 uses
  %i.ce = mul i64 %i.ak, %.0130171.us.us.us.us.i
  %i.cf = mul i64 %i.y, %.0130171.us.us.us.us.i
  %i.cg = mul i64 %i.ae, %.0130171.us.us.us.us.i
  %i.ch = mul i64 %.0130171.us.us.us.us.i, %i.y
  %gep.us.us.us.us.i = getelementptr i8, ptr %invariant.gep172.us.us.i, i64 %i.ch
  %i.ci = mul i64 %.0130171.us.us.us.us.i, %i.ae
  %gep173.us.us.us.us.i = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %i.ci
  %i.cj = mul i64 %.0130171.us.us.us.us.i, %i.ak
  %gep175.us.us.us.us.i = getelementptr i8, ptr %invariant.gep174.us.us.i, i64 %i.cj
  %i.ck = getelementptr i8, ptr %i.cb, i64 %i.ce
  %i.cl = getelementptr i8, ptr %i.cc, i64 %i.cf
  %i.cm = getelementptr i8, ptr %i.cd, i64 %i.cg
  br label %.lr.ph.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.i:                       ; preds = %._crit_edge151.us.us.us.us.us.us.i, %.lr.ph154.us.us.us.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge151.us.us.us.us.us.us.i ], [ 0, %.lr.ph154.us.us.us.us.i ] ; 4 uses
  %.0129152.us.us.us.us.us.us.i = phi i64 [ %i.gi, %._crit_edge151.us.us.us.us.us.us.i ], [ %i.at, %.lr.ph154.us.us.us.us.i ] ; 4 uses
  %i.cn = mul i64 %i.bi, %indvar
  %scevgep = getelementptr i8, ptr %i.ck, i64 %i.cn ; 2 uses
  %i.co = mul i64 %i.bk, %indvar
  %scevgep16 = getelementptr i8, ptr %i.cl, i64 %i.co
  %i.cp = mul i64 %i.bm, %indvar
  %scevgep17 = getelementptr i8, ptr %i.cm, i64 %i.cp
  %i.cq = mul i64 %.0129152.us.us.us.us.us.us.i, %i.w
  %gep157.us.us.us.us.us.us.i = getelementptr i8, ptr %gep.us.us.us.us.i, i64 %i.cq ; 13 uses
  %i.cr = mul i64 %.0129152.us.us.us.us.us.us.i, %i.ac
  %gep160.us.us.us.us.us.us.i = getelementptr i8, ptr %gep173.us.us.us.us.i, i64 %i.cr ; 13 uses
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.us.i.new:                   ; preds = %.lr.ph.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i.new
  %.0126146.us.us.us.us.us.us.i = phi i64 [ %i.dd, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.i ] ; 6 uses
  %.0127145.us.us.us.us.us.us.i = phi double [ %33, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us.i ]
  %.0128144.us.us.us.us.us.us.i = phi double [ %28, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us.i ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.i ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %.0126146.us.us.us.us.us.us.i
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !43 ; 3 uses
  %2 = fmul float %i.ct, %i.ct
  %3 = fpext float %2 to double
  %4 = fadd double %.0128144.us.us.us.us.us.us.i, %3
  %5 = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %.0126146.us.us.us.us.us.us.i
  %6 = load float, ptr %5, align 4, !tbaa !43
  %7 = fmul float %i.ct, %6
  %8 = fpext float %7 to double
  %9 = fadd double %.0127145.us.us.us.us.us.us.i, %8
  %i.cu = or disjoint i64 %.0126146.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !43 ; 3 uses
  %10 = fmul float %i.cw, %i.cw
  %11 = fpext float %10 to double
  %12 = fadd double %4, %11
  %13 = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.cu
  %14 = load float, ptr %13, align 4, !tbaa !43
  %15 = fmul float %i.cw, %14
  %16 = fpext float %15 to double
  %17 = fadd double %9, %16
  %i.cx = or disjoint i64 %.0126146.us.us.us.us.us.us.i, 2 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !43 ; 3 uses
  %18 = fmul float %i.cz, %i.cz
  %19 = fpext float %18 to double
  %20 = fadd double %12, %19
  %21 = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.cx
  %22 = load float, ptr %21, align 4, !tbaa !43
  %23 = fmul float %i.cz, %22
  %24 = fpext float %23 to double
  %25 = fadd double %17, %24
  %i.da = or disjoint i64 %.0126146.us.us.us.us.us.us.i, 3 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !43 ; 3 uses
  %26 = fmul float %i.dc, %i.dc
  %27 = fpext float %26 to double
  %28 = fadd double %20, %27                      ; 3 uses
  %29 = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.da
  %30 = load float, ptr %29, align 4, !tbaa !43
  %31 = fmul float %i.dc, %30
  %32 = fpext float %31 to double
  %33 = fadd double %25, %32                      ; 3 uses
  %i.dd = add nuw nsw i64 %.0126146.us.us.us.us.us.us.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %iter.check.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.i.new, !llvm.loop !637

iter.check.unr-lcssa:                             ; preds = %.lr.ph.us.us.us.us.us.us.i.new
  br i1 %lcmp.mod.not, label %iter.check, label %.epil.preheader

.epil.preheader:                                  ; preds = %iter.check.unr-lcssa, %.lr.ph.us.us.us.us.us.us.i
  %.0126146.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.i ], [ %i.dd, %iter.check.unr-lcssa ]
  %.0127145.us.us.us.us.us.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us.i ], [ %33, %iter.check.unr-lcssa ]
  %.0128144.us.us.us.us.us.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us.i ], [ %28, %iter.check.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.0126146.us.us.us.us.us.us.i.epil = phi i64 [ %.0126146.us.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %i.dg, %bb.j ] ; 3 uses
  %.0127145.us.us.us.us.us.us.i.epil = phi double [ %.0127145.us.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %41, %bb.j ]
  %.0128144.us.us.us.us.us.us.i.epil = phi double [ %.0128144.us.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %36, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %.0126146.us.us.us.us.us.us.i.epil
  %i.df = load float, ptr %i.de, align 4, !tbaa !43 ; 3 uses
  %34 = fmul float %i.df, %i.df
  %35 = fpext float %34 to double
  %36 = fadd double %.0128144.us.us.us.us.us.us.i.epil, %35 ; 2 uses
  %37 = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %.0126146.us.us.us.us.us.us.i.epil
  %38 = load float, ptr %37, align 4, !tbaa !43
  %39 = fmul float %i.df, %38
  %40 = fpext float %39 to double
  %41 = fadd double %.0127145.us.us.us.us.us.us.i.epil, %40 ; 2 uses
  %i.dg = add nuw nsw i64 %.0126146.us.us.us.us.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %iter.check, label %bb.j, !llvm.loop !638

iter.check:                                       ; preds = %bb.j, %iter.check.unr-lcssa
  %.lcssa41 = phi double [ %28, %iter.check.unr-lcssa ], [ %36, %bb.j ]
  %.lcssa = phi double [ %33, %iter.check.unr-lcssa ], [ %41, %bb.j ]
  %i.dh = fptrunc double %.lcssa41 to float       ; 2 uses
  %i.di = fdiv float %i.dh, %i.av
  %i.dj = fadd float %.0.copyload.i, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %.0.copyload.i, float %i.av, float %i.dh)
  %i.dl = tail call float @sqrtf(float noundef %i.dj) #18
  %i.dm = fdiv float 1.000000e+00, %i.dl          ; 7 uses
  %i.dn = mul i64 %.0129152.us.us.us.us.us.us.i, %i.ai
  %gep163.us.us.us.us.us.us.i = getelementptr i8, ptr %gep175.us.us.us.us.i, i64 %i.dn ; 9 uses
  %i.do = fptrunc double %.lcssa to float
  %i.dp = fneg float %i.do
  %i.dq = fdiv float %i.dp, %i.dk                 ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %gep163.us.us.us.us.us.us.i, %scevgep16
  %bound1 = icmp ult ptr %gep157.us.us.us.us.us.us.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound018 = icmp ult ptr %gep163.us.us.us.us.us.us.i, %scevgep17
  %bound119 = icmp ult ptr %gep160.us.us.us.us.us.us.i, %scevgep
  %found.conflict20 = and i1 %bound018, %bound119
  %conflict.rdx = or i1 %found.conflict, %found.conflict20
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.dm, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert22 = insertelement <8 x float> poison, float %i.dq, i64 0
  %broadcast.splat23 = shufflevector <8 x float> %broadcast.splatinsert22, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %wide.load = load <8 x float>, ptr %i.dr, align 4, !tbaa !43, !alias.scope !650
  %wide.load24 = load <8 x float>, ptr %i.ds, align 4, !tbaa !43, !alias.scope !650
  %wide.load25 = load <8 x float>, ptr %i.dt, align 4, !tbaa !43, !alias.scope !650
  %wide.load26 = load <8 x float>, ptr %i.du, align 4, !tbaa !43, !alias.scope !650
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %wide.load27 = load <8 x float>, ptr %i.dv, align 4, !tbaa !43, !alias.scope !651
  %wide.load28 = load <8 x float>, ptr %i.dw, align 4, !tbaa !43, !alias.scope !651
  %wide.load29 = load <8 x float>, ptr %i.dx, align 4, !tbaa !43, !alias.scope !651
  %wide.load30 = load <8 x float>, ptr %i.dy, align 4, !tbaa !43, !alias.scope !651
  %i.dz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load27, <8 x float> %broadcast.splat23, <8 x float> %wide.load)
  %i.ea = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load28, <8 x float> %broadcast.splat23, <8 x float> %wide.load24)
  %i.eb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load29, <8 x float> %broadcast.splat23, <8 x float> %wide.load25)
  %i.ec = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load30, <8 x float> %broadcast.splat23, <8 x float> %wide.load26)
  %i.ed = fmul <8 x float> %broadcast.splat, %i.dz
  %i.ee = fmul <8 x float> %broadcast.splat, %i.ea
  %i.ef = fmul <8 x float> %broadcast.splat, %i.eb
  %i.eg = fmul <8 x float> %broadcast.splat, %i.ec
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  store <8 x float> %i.ed, ptr %i.eh, align 4, !tbaa !43, !alias.scope !652, !noalias !653
  store <8 x float> %i.ee, ptr %i.ei, align 4, !tbaa !43, !alias.scope !652, !noalias !653
  store <8 x float> %i.ef, ptr %i.ej, align 4, !tbaa !43, !alias.scope !652, !noalias !653
  store <8 x float> %i.eg, ptr %i.ek, align 4, !tbaa !43, !alias.scope !652, !noalias !653
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !643

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge151.us.us.us.us.us.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert32 = insertelement <4 x float> poison, float %i.dm, i64 0
  %broadcast.splat33 = shufflevector <4 x float> %broadcast.splatinsert32, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert34 = insertelement <4 x float> poison, float %i.dq, i64 0
  %broadcast.splat35 = shufflevector <4 x float> %broadcast.splatinsert34, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 4 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %index36
  %wide.load37 = load <4 x float>, ptr %i.em, align 4, !tbaa !43, !alias.scope !650
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %index36
  %wide.load38 = load <4 x float>, ptr %i.en, align 4, !tbaa !43, !alias.scope !651
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load38, <4 x float> %broadcast.splat35, <4 x float> %wide.load37)
  %i.ep = fmul <4 x float> %broadcast.splat33, %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %index36
  store <4 x float> %i.ep, ptr %i.eq, align 4, !tbaa !43, !alias.scope !652, !noalias !653
  %index.next39 = add nuw i64 %index36, 4         ; 2 uses
  %i.er = icmp eq i64 %index.next39, %n.vec31
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !644

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n40, label %._crit_edge151.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0148.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod46.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0148.us.us.us.us.us.us.i.prol = phi i64 [ %i.ez, %vec.epilog.scalar.ph.prol ], [ %.0148.us.us.us.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i.prol
  %i.et = load float, ptr %i.es, align 4, !tbaa !43
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i.prol
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !43
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.dq, float %i.et)
  %i.ex = fmul float %i.dm, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i.prol
  store float %i.ex, ptr %i.ey, align 4, !tbaa !43
  %i.ez = add nuw nsw i64 %.0148.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter45
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !645

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0148.us.us.us.us.us.us.i.unr = phi i64 [ %.0148.us.us.us.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ez, %vec.epilog.scalar.ph.prol ]
  %i.fa = sub nsw i64 %.0148.us.us.us.us.us.us.i.ph, %i.o
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %._crit_edge151.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0148.us.us.us.us.us.us.i = phi i64 [ %i.gh, %vec.epilog.scalar.ph ], [ %.0148.us.us.us.us.us.us.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !43
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !43
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.dq, float %i.fd)
  %i.fh = fmul float %i.dm, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %.0148.us.us.us.us.us.us.i
  store float %i.fh, ptr %i.fi, align 4, !tbaa !43
  %i.fj = add nuw nsw i64 %.0148.us.us.us.us.us.us.i, 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !43
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.fj
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !43
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.dq, float %i.fl)
  %i.fp = fmul float %i.dm, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %i.fj
  store float %i.fp, ptr %i.fq, align 4, !tbaa !43
  %i.fr = add nuw nsw i64 %.0148.us.us.us.us.us.us.i, 2 ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !43
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.fr
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !43
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.dq, float %i.ft)
  %i.fx = fmul float %i.dm, %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %i.fr
  store float %i.fx, ptr %i.fy, align 4, !tbaa !43
  %i.fz = add nuw nsw i64 %.0148.us.us.us.us.us.us.i, 3 ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %gep157.us.us.us.us.us.us.i, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !43
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %gep160.us.us.us.us.us.us.i, i64 %i.fz
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !43
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.dq, float %i.gb)
  %i.gf = fmul float %i.dm, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %gep163.us.us.us.us.us.us.i, i64 %i.fz
  store float %i.gf, ptr %i.gg, align 4, !tbaa !43
  %i.gh = add nuw nsw i64 %.0148.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond202.not.i.3 = icmp eq i64 %i.gh, %i.o
  br i1 %exitcond202.not.i.3, label %._crit_edge151.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph, !llvm.loop !646

._crit_edge151.us.us.us.us.us.us.i:               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.gi = add nsw i64 %.0129152.us.us.us.us.us.us.i, %i.aw ; 2 uses
  %i.gj = icmp slt i64 %i.gi, %i.q
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gj, label %.lr.ph.us.us.us.us.us.us.i, label %._crit_edge155.split.us.us.split.us.us.us.us.i, !llvm.loop !647

._crit_edge155.split.us.us.split.us.us.us.us.i:   ; preds = %._crit_edge151.us.us.us.us.us.us.i
  %i.gk = add nuw nsw i64 %.0130171.us.us.us.us.i, 1 ; 2 uses
  %exitcond203.not.i = icmp eq i64 %i.gk, %i.s
  br i1 %exitcond203.not.i, label %._crit_edge.split177.us.split.us.us.us.i, label %.lr.ph154.us.us.us.us.i, !llvm.loop !648

._crit_edge.split177.us.split.us.us.us.i:         ; preds = %._crit_edge155.split.us.us.split.us.us.us.us.i
  %i.gl = add nuw nsw i64 %.0131183.us.us.i, 1    ; 2 uses
  %exitcond204.not.i = icmp eq i64 %i.gl, %i.u
  br i1 %exitcond204.not.i, label %_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader.us.us.i, !llvm.loop !649

.preheader.lr.ph.split.split.split.i:             ; preds = %.preheader.lr.ph.split.split.i
  %i.gm = fcmp olt float %i.ay, 0.000000e+00
  br i1 %i.gm, label %cdce.call, label %_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit, !prof !60

cdce.call:                                        ; preds = %.preheader.lr.ph.split.split.split.i
  %i.gn = tail call float @sqrtf(float noundef %i.ay) #18 ; 0 uses
  br label %_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit

_ZL38ggml_compute_forward_rms_norm_back_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.split177.us.split.us.us.us.i, %cdce.call, %.preheader.lr.ph.split.split.split.i, %bb.i, %.preheader.lr.ph.i
  ret void

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4201, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_group_norm(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.i
end_hunk_0
