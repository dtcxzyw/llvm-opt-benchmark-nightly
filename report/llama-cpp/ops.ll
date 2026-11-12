Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 271
begin_hunk_0_@ggml_compute_forward_pool_1d:bb.a
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.ge, align 4, !tbaa !43
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gf, align 4, !tbaa !43
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gg, align 4, !tbaa !43
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gh, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !1224

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge16.split.split.us.split.us30.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index95
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.gj, align 4, !tbaa !43
  %index.next96 = add nuw i64 %index95, 4         ; 2 uses
  %i.gk = icmp eq i64 %index.next96, %n.vec94
  br i1 %i.gk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n97, label %._crit_edge16.split.split.us.split.us30.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04113.us19.us29.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec94, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.04113.us19.us29.i = phi i64 [ %i.gm, %vec.epilog.scalar.ph ], [ %.04113.us19.us29.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.04113.us19.us29.i
  store float f0xFF7FFFFF, ptr %i.gl, align 4, !tbaa !43
  %i.gm = add nuw nsw i64 %.04113.us19.us29.i, 1  ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.gm, %i.n
  br i1 %exitcond45.not.i, label %._crit_edge16.split.split.us.split.us30.i, label %vec.epilog.scalar.ph, !llvm.loop !1226

._crit_edge16.split.split.us.split.us30.i:        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.gn = add nuw nsw i64 %.04223.us27.i, 1       ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.gn, %i.o
  br i1 %exitcond46.not.i, label %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit, label %iter.check, !llvm.loop !1220

.lr.ph15.us31.i:                                  ; preds = %.lr.ph15.us31.i, %.lr.ph15.us31.preheader.i.new
  %.04223.us32.i = phi i64 [ 0, %.lr.ph15.us31.preheader.i.new ], [ %i.hl, %.lr.ph15.us31.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph15.us31.preheader.i.new ], [ %niter.next.7, %.lr.ph15.us31.i ]
  %i.go = mul i64 %.04223.us32.i, %i.x
  %i.gp = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.go
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gp, i8 0, i64 %i.fy, i1 false), !tbaa !43
  %i.gq = or disjoint i64 %.04223.us32.i, 1
  %i.gr = mul i64 %i.gq, %i.x
  %i.gs = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gr
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gs, i8 0, i64 %i.fy, i1 false), !tbaa !43
  %i.gt = or disjoint i64 %.04223.us32.i, 2
  %i.gu = mul i64 %i.gt, %i.x
  %i.gv = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gu
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gv, i8 0, i64 %i.fy, i1 false), !tbaa !43
  %i.gw = or disjoint i64 %.04223.us32.i, 3
  %i.gx = mul i64 %i.gw, %i.x
  %i.gy = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gx
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gy, i8 0, i64 %i.fy, i1 false), !tbaa !43
  %i.gz = or disjoint i64 %.04223.us32.i, 4
  %i.ha = mul i64 %i.gz, %i.x
  %i.hb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ha
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hb, i8 0, i64 %i.fy, i1 false), !tbaa !43
  %i.hc = or disjoint i64 %.04223.us32.i, 5
  %i.hd = mul i64 %i.hc, %i.x
  %i.he = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hd
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.he, i8 0, i64 %i.fy, i1 false), !tbaa !43
  %i.hf = or disjoint i64 %.04223.us32.i, 6
  %i.hg = mul i64 %i.hf, %i.x
  %i.hh = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hg
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hh, i8 0, i64 %i.fy, i1 false), !tbaa !43
  %i.hi = or disjoint i64 %.04223.us32.i, 7
  %i.hj = mul i64 %i.hi, %i.x
  %i.hk = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hj
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hk, i8 0, i64 %i.fy, i1 false), !tbaa !43
  %i.hl = add nuw nsw i64 %.04223.us32.i, 8       ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit148.unr-lcssa, label %.lr.ph15.us31.i, !llvm.loop !1220

.lr.ph15.i:                                       ; preds = %.lr.ph15.i, %.lr.ph15.preheader.i.new
  %.04223.i = phi i64 [ 0, %.lr.ph15.preheader.i.new ], [ %i.ij, %.lr.ph15.i ] ; 9 uses
  %niter155 = phi i64 [ 0, %.lr.ph15.preheader.i.new ], [ %niter155.next.7, %.lr.ph15.i ]
  %i.hm = mul i64 %.04223.i, %i.x
  %i.hn = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hm
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hn, i8 0, i64 %i.ga, i1 false), !tbaa !43
  %i.ho = or disjoint i64 %.04223.i, 1
  %i.hp = mul i64 %i.ho, %i.x
  %i.hq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hp
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hq, i8 0, i64 %i.ga, i1 false), !tbaa !43
  %i.hr = or disjoint i64 %.04223.i, 2
  %i.hs = mul i64 %i.hr, %i.x
  %i.ht = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hs
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ht, i8 0, i64 %i.ga, i1 false), !tbaa !43
  %i.hu = or disjoint i64 %.04223.i, 3
  %i.hv = mul i64 %i.hu, %i.x
  %i.hw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hv
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hw, i8 0, i64 %i.ga, i1 false), !tbaa !43
  %i.hx = or disjoint i64 %.04223.i, 4
  %i.hy = mul i64 %i.hx, %i.x
  %i.hz = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.hy
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hz, i8 0, i64 %i.ga, i1 false), !tbaa !43
  %i.ia = or disjoint i64 %.04223.i, 5
  %i.ib = mul i64 %i.ia, %i.x
  %i.ic = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ib
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ic, i8 0, i64 %i.ga, i1 false), !tbaa !43
  %i.id = or disjoint i64 %.04223.i, 6
  %i.ie = mul i64 %i.id, %i.x
  %i.if = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ie
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.if, i8 0, i64 %i.ga, i1 false), !tbaa !43
  %i.ig = or disjoint i64 %.04223.i, 7
  %i.ih = mul i64 %i.ig, %i.x
  %i.ii = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ih
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ii, i8 0, i64 %i.ga, i1 false), !tbaa !43
  %i.ij = add nuw nsw i64 %.04223.i, 8            ; 2 uses
  %niter155.next.7 = add nuw nsw i64 %niter155, 8 ; 2 uses
  %niter155.ncmp.7 = icmp eq i64 %niter155.next.7, %unroll_iter154
  br i1 %niter155.ncmp.7, label %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit146.unr-lcssa, label %.lr.ph15.i, !llvm.loop !1220

bb.ae:                                            ; preds = %.lr.ph.split.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7713, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit146.unr-lcssa: ; preds = %.lr.ph15.i
  %lcmp.mod152.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod152.not, label %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit, label %.lr.ph15.i.epil.preheader

.lr.ph15.i.epil.preheader:                        ; preds = %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit146.unr-lcssa, %.lr.ph15.preheader.i
  %.04223.i.epil.init = phi i64 [ 0, %.lr.ph15.preheader.i ], [ %i.ij, %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit146.unr-lcssa ]
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  tail call void @llvm.assume(i1 %lcmp.mod153)
  br label %.lr.ph15.i.epil

.lr.ph15.i.epil:                                  ; preds = %.lr.ph15.i.epil, %.lr.ph15.i.epil.preheader
  %.04223.i.epil = phi i64 [ %i.im, %.lr.ph15.i.epil ], [ %.04223.i.epil.init, %.lr.ph15.i.epil.preheader ] ; 2 uses
  %epil.iter151 = phi i64 [ %epil.iter151.next, %.lr.ph15.i.epil ], [ 0, %.lr.ph15.i.epil.preheader ]
  %i.ik = mul i64 %.04223.i.epil, %i.x
  %i.il = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ik
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.il, i8 0, i64 %i.ga, i1 false), !tbaa !43
  %i.im = add nuw nsw i64 %.04223.i.epil, 1
  %epil.iter151.next = add i64 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i64 %epil.iter151.next, %xtraiter150
  br i1 %epil.iter151.cmp.not, label %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit, label %.lr.ph15.i.epil, !llvm.loop !1227

_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit148.unr-lcssa: ; preds = %.lr.ph15.us31.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit, label %.lr.ph15.us31.i.epil.preheader

.lr.ph15.us31.i.epil.preheader:                   ; preds = %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit148.unr-lcssa, %.lr.ph15.us31.preheader.i
  %.04223.us32.i.epil.init = phi i64 [ 0, %.lr.ph15.us31.preheader.i ], [ %i.hl, %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit148.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph15.us31.i.epil

.lr.ph15.us31.i.epil:                             ; preds = %.lr.ph15.us31.i.epil, %.lr.ph15.us31.i.epil.preheader
  %.04223.us32.i.epil = phi i64 [ %i.ip, %.lr.ph15.us31.i.epil ], [ %.04223.us32.i.epil.init, %.lr.ph15.us31.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph15.us31.i.epil ], [ 0, %.lr.ph15.us31.i.epil.preheader ]
  %i.in = mul i64 %.04223.us32.i.epil, %i.x
  %i.io = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.in
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.io, i8 0, i64 %i.fy, i1 false), !tbaa !43
  %i.ip = add nuw nsw i64 %.04223.us32.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit, label %.lr.ph15.us31.i.epil, !llvm.loop !1228

_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit: ; preds = %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit148.unr-lcssa, %.lr.ph15.us31.i.epil, %._crit_edge16.split.split.us.split.us30.i, %_ZL32ggml_compute_forward_pool_1d_kspPK19ggml_compute_params12ggml_op_pooliiiP11ggml_tensor.exit.loopexit146.unr-lcssa, %.lr.ph15.i.epil, %._crit_edge16.split.us.us.split.i.split.split, %._crit_edge16.split.us.us.split.i.split.us.us.split.us.us, %._crit_edge16.split.us.us.split.us.us.i, %bb.a, %bb.b, %.lr.ph.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_pool_2d(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 12 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit91

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51
  %.fr265 = freeze i32 %i.g                       ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load i32, ptr %i.p, align 4, !tbaa !51   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37   ; 9 uses
  %i.t = tail call i64 @ggml_nbytes(ptr noundef %i.b) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 42 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31   ; 8 uses
  %i.z = mul i64 %i.y, %i.w                       ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 8 uses
  %.not264 = icmp eq i64 %i.t, 0
  br i1 %.not264, label %.loopexit91, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.ac = mul nsw i32 %i.i, %.fr265
  %i.ad = icmp sgt i64 %i.y, 0
  %i.ae = icmp sgt i32 %i.i, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ai = icmp sgt i32 %.fr265, 0
  %i.aj = sitofp i32 %i.ac to float               ; 2 uses
  %i.ak = fdiv float 0.000000e+00, %i.aj          ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.am = icmp sgt i64 %i.w, 0
  %or.cond = select i1 %i.ad, i1 %i.am, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.us.split.us, label %.loopexit91

.preheader.lr.ph.split.us.split.us:               ; preds = %.preheader.lr.ph
  %cond = icmp eq i32 %i.e, 2
  br i1 %cond, label %.split202.us, label %.preheader.lr.ph.split.us.split.us.split

.preheader.lr.ph.split.us.split.us.split:         ; preds = %.preheader.lr.ph.split.us.split.us
  br i1 %i.ae, label %.preheader.lr.ph.split.us.split.us.split.split.us, label %.preheader.lr.ph.split.us.split.us.split.split

.preheader.lr.ph.split.us.split.us.split.split.us: ; preds = %.preheader.lr.ph.split.us.split.us.split
  %cond263 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %i.ai, label %.preheader.lr.ph.split.us.split.us.split.split.us.split.us, label %.preheader.lr.ph.split.us.split.us.split.split.us.split

.preheader.lr.ph.split.us.split.us.split.split.us.split.us: ; preds = %.preheader.lr.ph.split.us.split.us.split.split.us
  %wide.trip.count341 = zext nneg i32 %i.i to i64 ; 2 uses
  %wide.trip.count336 = zext nneg i32 %.fr265 to i64 ; 4 uses
  %i.an = load i64, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  br i1 %cond263, label %.preheader.us.us.us.us.us.preheader, label %.preheader.us.us.us.us.preheader

.preheader.us.us.us.us.preheader:                 ; preds = %.preheader.lr.ph.split.us.split.us.split.split.us.split.us
  %cond376 = icmp eq i32 %i.e, 1
  %xtraiter = and i64 %wide.trip.count336, 1
  %i.ao = icmp eq i32 %.fr265, 1
  %unroll_iter = and i64 %wide.trip.count336, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod470 = trunc i32 %.fr265 to i1
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us.us.preheader:              ; preds = %.preheader.lr.ph.split.us.split.us.split.split.us.split.us
  %xtraiter472 = and i64 %wide.trip.count336, 1
  %i.ap = icmp eq i32 %.fr265, 1
  %unroll_iter476 = and i64 %wide.trip.count336, 2147483646
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  %lcmp.mod475 = trunc i32 %.fr265 to i1
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %.preheader.us.us.us.us.us.preheader, %._crit_edge.split116.us.split.us.us.us.us.split.us.us.us
  %.077150.us.us.us.us.us = phi ptr [ %i.cz, %._crit_edge.split116.us.split.us.us.us.us.split.us.us.us ], [ %i.ab, %.preheader.us.us.us.us.us.preheader ] ; 2 uses
  %.078146.us.us.us.us.us = phi ptr [ %i.cy, %._crit_edge.split116.us.split.us.us.us.us.split.us.us.us ], [ %i.s, %.preheader.us.us.us.us.us.preheader ] ; 2 uses
  br label %.lr.ph.us.us.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us.us.us:                   ; preds = %._crit_edge102.split.us.us.split.us.us.split.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us
  %indvars.iv347 = phi i64 [ %indvars.iv.next348, %._crit_edge102.split.us.us.split.us.us.split.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us ] ; 3 uses
  %i.aq = mul nuw nsw i64 %indvars.iv347, %i.w
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.077150.us.us.us.us.us, i64 %i.aq
  %i.as = trunc i64 %indvars.iv347 to i32
  %i.at = mul i32 %i.m, %i.as
  %i.au = sub i32 %i.at, %i.q
  br label %.lr.ph98.us.us.us.us.us.us.us.us.us.us.us

.lr.ph98.us.us.us.us.us.us.us.us.us.us.us:        ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us.us
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.av = trunc i64 %indvars.iv343 to i32
  %i.aw = mul i32 %i.k, %i.av
  %i.ax = sub i32 %i.aw, %i.o                     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph98.us.us.us.us.us.us.us.us.us.us.us
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us ], [ 0, %.lr.ph98.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.196.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.5.us.us.us.us.us.us.us.us.us.us.us.us, %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us ], [ f0xFF7FFFFF, %.lr.ph98.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv338 to i32
  %i.az = add nsw i32 %i.au, %i.ay                ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bc = load i64, ptr %i.ag, align 8, !tbaa !31
  %.not85.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i64 %i.bc, %i.bb
  br i1 %.not85.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us, label %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us:       ; preds = %bb.d
  %i.bd = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.be = mul i64 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %.078146.us.us.us.us.us, i64 %i.be ; 6 uses
  br i1 %i.ap, label %.epil.preheader471, label %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.new:   ; preds = %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us, %bb.p
  %indvars.iv333 = phi i64 [ %indvars.iv.next334.1, %bb.p ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.294.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.4.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.p ], [ %.196.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  %niter477 = phi i64 [ %niter477.next.1, %bb.p ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us ]
  %i.bg = trunc nuw nsw i64 %indvars.iv333 to i32
  %i.bh = add nsw i32 %i.ax, %i.bg                ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.new
  %i.bj = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bk = load i64, ptr %i.af, align 8, !tbaa !31
  %.not86.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i64 %i.bk, %i.bj
  br i1 %.not86.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bl = load i32, ptr %i.b, align 8, !tbaa !30
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.bj
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !41
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.bp
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bj
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.in.us.us.us.us.us.us.us.us.us.us.us.us = phi ptr [ %i.br, %bb.h ], [ %i.bq, %bb.g ]
  %i.bs = load float, ptr %.in.us.us.us.us.us.us.us.us.us.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.bt = fcmp olt float %i.bs, %.294.us.us.us.us.us.us.us.us.us.us.us.us
  %.sroa.speculated.us.us.us.us.us.us.us.us.us.us.us.us = select i1 %i.bt, float %.294.us.us.us.us.us.us.us.us.us.us.us.us, float %i.bs
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.new
  %.4.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.294.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.new ], [ %.294.us.us.us.us.us.us.us.us.us.us.us.us, %bb.e ], [ %.sroa.speculated.us.us.us.us.us.us.us.us.us.us.us.us, %bb.i ] ; 4 uses
  %i.bu = trunc i64 %indvars.iv333 to i32
  %i.bv = or disjoint i32 %i.bu, 1
  %i.bw = add nsw i32 %i.ax, %i.bv                ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = zext nneg i32 %i.bw to i64              ; 3 uses
  %i.bz = load i64, ptr %i.af, align 8, !tbaa !31
  %.not86.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp sgt i64 %i.bz, %i.by
  br i1 %.not86.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ca = load i32, ptr %i.b, align 8, !tbaa !30
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.by
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !41
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.ce
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.by
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.in.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi ptr [ %i.cg, %bb.n ], [ %i.cf, %bb.m ]
  %i.ch = load float, ptr %.in.us.us.us.us.us.us.us.us.us.us.us.us.1, align 4, !tbaa !43 ; 2 uses
  %i.ci = fcmp olt float %i.ch, %.4.us.us.us.us.us.us.us.us.us.us.us.us
  %.sroa.speculated.us.us.us.us.us.us.us.us.us.us.us.us.1 = select i1 %i.ci, float %.4.us.us.us.us.us.us.us.us.us.us.us.us, float %i.ch
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k, %bb.j
  %.4.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi float [ %.4.us.us.us.us.us.us.us.us.us.us.us.us, %bb.j ], [ %.4.us.us.us.us.us.us.us.us.us.us.us.us, %bb.k ], [ %.sroa.speculated.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.o ] ; 3 uses
  %indvars.iv.next334.1 = add nuw nsw i64 %indvars.iv333, 2 ; 2 uses
  %niter477.next.1 = add i64 %niter477, 2         ; 2 uses
  %niter477.ncmp.1 = icmp eq i64 %niter477.next.1, %unroll_iter476
  br i1 %niter477.ncmp.1, label %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.loopexit.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.new, !llvm.loop !1229

..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.loopexit.unr-lcssa: ; preds = %bb.p
  br i1 %lcmp.mod473.not, label %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us, label %.epil.preheader471

.epil.preheader471:                               ; preds = %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.loopexit.unr-lcssa, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us
  %indvars.iv333.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us ], [ %indvars.iv.next334.1, %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.loopexit.unr-lcssa ]
  %.294.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi float [ %.196.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.4.us.us.us.us.us.us.us.us.us.us.us.us.1, %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod475)
  %i.cj = trunc nuw nsw i64 %indvars.iv333.epil.init to i32
  %i.ck = add nsw i32 %i.ax, %i.cj                ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.q

bb.q:                                             ; preds = %.epil.preheader471
  %i.cm = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cn = load i64, ptr %i.af, align 8, !tbaa !31
  %.not86.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp sgt i64 %i.cn, %i.cm
  br i1 %.not86.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %bb.r, label %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us

bb.r:                                             ; preds = %bb.q
  %i.co = load i32, ptr %i.b, align 8, !tbaa !30
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.cm
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !41
  %i.cs = zext i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.cs
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cm
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.in.us.us.us.us.us.us.us.us.us.us.us.us.epil = phi ptr [ %i.cu, %bb.t ], [ %i.ct, %bb.s ]
  %i.cv = load float, ptr %.in.us.us.us.us.us.us.us.us.us.us.us.us.epil, align 4, !tbaa !43 ; 2 uses
  %i.cw = fcmp olt float %i.cv, %.294.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %.sroa.speculated.us.us.us.us.us.us.us.us.us.us.us.us.epil = select i1 %i.cw, float %.294.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, float %i.cv
  br label %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us

..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.loopexit.unr-lcssa, %bb.u, %bb.q, %.epil.preheader471, %bb.d, %bb.c
  %.5.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.196.us.us.us.us.us.us.us.us.us.us.us.us, %bb.c ], [ %.196.us.us.us.us.us.us.us.us.us.us.us.us, %bb.d ], [ %.4.us.us.us.us.us.us.us.us.us.us.us.us.1, %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.loopexit.unr-lcssa ], [ %.294.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader471 ], [ %.294.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %bb.q ], [ %.sroa.speculated.us.us.us.us.us.us.us.us.us.us.us.us.epil, %bb.u ] ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next339, %wide.trip.count341
  br i1 %exitcond342.not, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !1230

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %..loopexit_crit_edge.us.us.us.us.us.us.us.us.us.us.us.us
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv343
  store float %.5.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.cx, align 4, !tbaa !43
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next344, %i.w
  br i1 %exitcond346.not, label %._crit_edge102.split.us.us.split.us.us.split.us.us.us.us.us.us.us, label %.lr.ph98.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1231
end_hunk_0
begin_hunk_1_@ggml_compute_forward_pool_2d:bb.a

bb.v:                                             ; preds = %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us, %.lr.ph98.us.us.us.us.us182.us.us.us
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us ], [ 0, %.lr.ph98.us.us.us.us.us182.us.us.us ] ; 2 uses
  %.196.us.us.us.us.us.us185.us.us.us = phi float [ %.5.us.us.us.us.us.us196.us.us.us, %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us ], [ 0.000000e+00, %.lr.ph98.us.us.us.us.us182.us.us.us ] ; 4 uses
  %i.dj = trunc nuw nsw i64 %indvars.iv320 to i32
  %i.dk = add nsw i32 %i.df, %i.dj                ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dn = load i64, ptr %i.ag, align 8, !tbaa !31
  %.not85.us.us.us.us.us.us186.us.us.us = icmp sgt i64 %i.dn, %i.dm
  br i1 %.not85.us.us.us.us.us.us186.us.us.us, label %.lr.ph.us.us.us.us.us.us187.us.us.us, label %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us

.lr.ph.us.us.us.us.us.us187.us.us.us:             ; preds = %bb.w
  %i.do = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.dp = mul i64 %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %.078146.us.us.us.us, i64 %i.dp ; 6 uses
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us187.us.us.us.new

.lr.ph.us.us.us.us.us.us187.us.us.us.new:         ; preds = %.lr.ph.us.us.us.us.us.us187.us.us.us, %bb.am
  %indvars.iv316 = phi i64 [ %indvars.iv.next317.1, %bb.am ], [ 0, %.lr.ph.us.us.us.us.us.us187.us.us.us ] ; 3 uses
  %.294.us.us.us.us.us.us189.us.us.us = phi float [ %.4.us.us.us.us.us.us193.us.us.us.1, %bb.am ], [ %.196.us.us.us.us.us.us185.us.us.us, %.lr.ph.us.us.us.us.us.us187.us.us.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %bb.am ], [ 0, %.lr.ph.us.us.us.us.us.us187.us.us.us ]
  %i.dr = trunc nuw nsw i64 %indvars.iv316 to i32
  %i.ds = add nsw i32 %i.di, %i.dr                ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %.lr.ph.us.us.us.us.us.us187.us.us.us.new
  %i.du = zext nneg i32 %i.ds to i64              ; 3 uses
  %i.dv = load i64, ptr %i.af, align 8, !tbaa !31
  %.not86.us.us.us.us.us.us190.us.us.us = icmp sgt i64 %i.dv, %i.du
  br i1 %.not86.us.us.us.us.us.us190.us.us.us, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.dw = load i32, ptr %i.b, align 8, !tbaa !30
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.du
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !41
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.ea
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.du
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.in.us.us.us.us.us.us191.us.us.us = phi ptr [ %i.ec, %bb.aa ], [ %i.eb, %bb.z ]
  %i.ed = load float, ptr %.in.us.us.us.us.us.us191.us.us.us, align 4, !tbaa !43 ; 3 uses
  switch i32 %i.e, label %bb.ae [
    i32 1, label %bb.ad
    i32 0, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ee = fcmp olt float %i.ed, %.294.us.us.us.us.us.us189.us.us.us
  %.sroa.speculated.us.us.us.us.us.us192.us.us.us = select i1 %i.ee, float %.294.us.us.us.us.us.us189.us.us.us, float %i.ed
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ef = fadd float %.294.us.us.us.us.us.us189.us.us.us, %i.ed
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.x, %.lr.ph.us.us.us.us.us.us187.us.us.us.new
  %.4.us.us.us.us.us.us193.us.us.us = phi float [ %.294.us.us.us.us.us.us189.us.us.us, %.lr.ph.us.us.us.us.us.us187.us.us.us.new ], [ %.294.us.us.us.us.us.us189.us.us.us, %bb.x ], [ %.294.us.us.us.us.us.us189.us.us.us, %bb.ab ], [ %i.ef, %bb.ad ], [ %.sroa.speculated.us.us.us.us.us.us192.us.us.us, %bb.ac ] ; 6 uses
  %i.eg = trunc i64 %indvars.iv316 to i32
  %i.eh = or disjoint i32 %i.eg, 1
  %i.ei = add nsw i32 %i.di, %i.eh                ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.el = load i64, ptr %i.af, align 8, !tbaa !31
  %.not86.us.us.us.us.us.us190.us.us.us.1 = icmp sgt i64 %i.el, %i.ek
  br i1 %.not86.us.us.us.us.us.us190.us.us.us.1, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.em = load i32, ptr %i.b, align 8, !tbaa !30
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.ek
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !41
  %i.eq = zext i16 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.eq
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ek
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.in.us.us.us.us.us.us191.us.us.us.1 = phi ptr [ %i.es, %bb.ai ], [ %i.er, %bb.ah ]
  %i.et = load float, ptr %.in.us.us.us.us.us.us191.us.us.us.1, align 4, !tbaa !43 ; 3 uses
  switch i32 %i.e, label %bb.am [
    i32 1, label %bb.al
    i32 0, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.eu = fcmp olt float %i.et, %.4.us.us.us.us.us.us193.us.us.us
  %.sroa.speculated.us.us.us.us.us.us192.us.us.us.1 = select i1 %i.eu, float %.4.us.us.us.us.us.us193.us.us.us, float %i.et
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ev = fadd float %.4.us.us.us.us.us.us193.us.us.us, %i.et
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.af, %bb.ae
  %.4.us.us.us.us.us.us193.us.us.us.1 = phi float [ %.4.us.us.us.us.us.us193.us.us.us, %bb.ae ], [ %.4.us.us.us.us.us.us193.us.us.us, %bb.af ], [ %.4.us.us.us.us.us.us193.us.us.us, %bb.aj ], [ %i.ev, %bb.al ], [ %.sroa.speculated.us.us.us.us.us.us192.us.us.us.1, %bb.ak ] ; 3 uses
  %indvars.iv.next317.1 = add nuw nsw i64 %indvars.iv316, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us.loopexit.unr-lcssa, label %.lr.ph.us.us.us.us.us.us187.us.us.us.new, !llvm.loop !1229

..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us.loopexit.unr-lcssa: ; preds = %bb.am
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us.loopexit.unr-lcssa, %.lr.ph.us.us.us.us.us.us187.us.us.us
  %indvars.iv316.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us187.us.us.us ], [ %indvars.iv.next317.1, %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us.loopexit.unr-lcssa ]
  %.294.us.us.us.us.us.us189.us.us.us.epil.init = phi float [ %.196.us.us.us.us.us.us185.us.us.us, %.lr.ph.us.us.us.us.us.us187.us.us.us ], [ %.4.us.us.us.us.us.us193.us.us.us.1, %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us.loopexit.unr-lcssa ] ; 6 uses
  tail call void @llvm.assume(i1 %lcmp.mod470)
  %i.ew = trunc nuw nsw i64 %indvars.iv316.epil.init to i32
  %i.ex = add nsw i32 %i.di, %i.ew                ; 2 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us, label %bb.an

bb.an:                                            ; preds = %.epil.preheader
  %i.ez = zext nneg i32 %i.ex to i64              ; 3 uses
  %i.fa = load i64, ptr %i.af, align 8, !tbaa !31
  %.not86.us.us.us.us.us.us190.us.us.us.epil = icmp sgt i64 %i.fa, %i.ez
  br i1 %.not86.us.us.us.us.us.us190.us.us.us.epil, label %bb.ao, label %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us

bb.ao:                                            ; preds = %bb.an
  %i.fb = load i32, ptr %i.b, align 8, !tbaa !30
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.ez
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !41
  %i.ff = zext i16 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.ff
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ez
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.in.us.us.us.us.us.us191.us.us.us.epil = phi ptr [ %i.fh, %bb.aq ], [ %i.fg, %bb.ap ]
  %i.fi = load float, ptr %.in.us.us.us.us.us.us191.us.us.us.epil, align 4, !tbaa !43 ; 3 uses
  switch i32 %i.e, label %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us [
    i32 1, label %bb.at
    i32 0, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.fj = fcmp olt float %i.fi, %.294.us.us.us.us.us.us189.us.us.us.epil.init
  %.sroa.speculated.us.us.us.us.us.us192.us.us.us.epil = select i1 %i.fj, float %.294.us.us.us.us.us.us189.us.us.us.epil.init, float %i.fi
  br label %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us

bb.at:                                            ; preds = %bb.ar
  %i.fk = fadd float %.294.us.us.us.us.us.us189.us.us.us.epil.init, %i.fi
  br label %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us

..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us: ; preds = %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us.loopexit.unr-lcssa, %bb.at, %bb.as, %bb.ar, %bb.an, %.epil.preheader, %bb.w, %bb.v
  %.5.us.us.us.us.us.us196.us.us.us = phi float [ %.196.us.us.us.us.us.us185.us.us.us, %bb.v ], [ %.196.us.us.us.us.us.us185.us.us.us, %bb.w ], [ %.4.us.us.us.us.us.us193.us.us.us.1, %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us.loopexit.unr-lcssa ], [ %.294.us.us.us.us.us.us189.us.us.us.epil.init, %.epil.preheader ], [ %.294.us.us.us.us.us.us189.us.us.us.epil.init, %bb.an ], [ %.294.us.us.us.us.us.us189.us.us.us.epil.init, %bb.ar ], [ %i.fk, %bb.at ], [ %.sroa.speculated.us.us.us.us.us.us192.us.us.us.epil, %bb.as ] ; 3 uses
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %wide.trip.count341
  br i1 %exitcond324.not, label %._crit_edge.split.us.us.us.us.us.us197.us.us.us, label %bb.v, !llvm.loop !1230

._crit_edge.split.us.us.us.us.us.us197.us.us.us:  ; preds = %..loopexit_crit_edge.us.us.us.us.us.us194.us.us.us
  %i.fl = fdiv float %.5.us.us.us.us.us.us196.us.us.us, %i.aj
  %spec.select = select i1 %cond376, float %i.fl, float %.5.us.us.us.us.us.us196.us.us.us
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv325
  store float %spec.select, ptr %i.fm, align 4, !tbaa !43
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next326, %i.w
  br i1 %exitcond328.not, label %._crit_edge102.split.us.us.split.us.us.split.us200.us.us.us, label %.lr.ph98.us.us.us.us.us182.us.us.us, !llvm.loop !1231

._crit_edge102.split.us.us.split.us.us.split.us200.us.us.us: ; preds = %._crit_edge.split.us.us.us.us.us.us197.us.us.us
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next330, %i.y
  br i1 %exitcond332.not, label %._crit_edge.split116.us.split.us.us.us.us.split.us245, label %.lr.ph.us.us.us.us.us.us243, !llvm.loop !1232

._crit_edge.split116.us.split.us.us.us.us.split.us245: ; preds = %._crit_edge102.split.us.us.split.us.us.split.us200.us.us.us
  %i.fn = getelementptr inbounds nuw i8, ptr %.078146.us.us.us.us, i64 %i.an ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.077150.us.us.us.us, i64 %i.z
  %i.fp = icmp ult ptr %i.fn, %i.u
  br i1 %i.fp, label %.preheader.us.us.us.us, label %.loopexit91, !llvm.loop !1233

.preheader.lr.ph.split.us.split.us.split.split.us.split: ; preds = %.preheader.lr.ph.split.us.split.us.split.split.us
  br i1 %cond263, label %.preheader.lr.ph.split.us.split.us.split.split.us.split.split.us.split, label %.preheader.lr.ph.split.us.split.us.split.split.us.split.a

.preheader.lr.ph.split.us.split.us.split.split.us.split.a: ; preds = %.preheader.lr.ph.split.us.split.us.split.split.us.split
  %2 = shl i64 %i.z, 2
  %cond379 = icmp eq i32 %i.e, 1
  %3 = load i64, ptr %i.al, align 8, !tbaa !31    ; 2 uses
  br i1 %cond379, label %.preheader.us.us.us.preheader, label %._crit_edge.split116.us.split.split.us179.us.us

.preheader.us.us.us.preheader:                    ; preds = %.preheader.lr.ph.split.us.split.us.split.split.us.split.a
  %min.iters.check413 = icmp ult i64 %i.w, 4
  %min.iters.check415 = icmp ult i64 %i.w, 32
  %i.fq = and i64 %i.w, 28
  %n.vec417 = and i64 %i.w, 9223372036854775776   ; 4 uses
  %broadcast.splatinsert418 = insertelement <8 x float> poison, float %i.ak, i64 0
  %broadcast.splat419 = shufflevector <8 x float> %broadcast.splatinsert418, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n424 = icmp eq i64 %i.w, %n.vec417
  %min.epilog.iters.check428 = icmp eq i64 %i.fq, 0
  %n.vec431 = and i64 %i.w, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert432 = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat433 = shufflevector <4 x float> %broadcast.splatinsert432, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n438 = icmp eq i64 %i.w, %n.vec431
  br label %.preheader.us.us.us.us246.a

.preheader.us.us.us.us246.a:                      ; preds = %.preheader.us.us.us.preheader, %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us.a
  %.077150.us.us.us.us247.a = phi ptr [ %i.gc, %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us.a ], [ %i.ab, %.preheader.us.us.us.preheader ] ; 2 uses
  %.078146.us.us.us.us248.a = phi ptr [ %i.gb, %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us.a ], [ %i.s, %.preheader.us.us.us.preheader ]
  br label %iter.check450

iter.check450:                                    ; preds = %._crit_edge102.split.us.us.split.split.us.us.split.split.us.us.us.us.a, %.preheader.us.us.us.us246.a
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %._crit_edge102.split.us.us.split.split.us.us.split.split.us.us.us.us.a ], [ 0, %.preheader.us.us.us.us246.a ] ; 2 uses
  %i.fr = mul i64 %indvars.iv312, %i.w
  %i.fs = getelementptr [4 x i8], ptr %.077150.us.us.us.us247.a, i64 %i.fr ; 3 uses
  br i1 %min.iters.check413, label %.lr.ph98.us.us.us125.us.us170.us.us.us.preheader.a, label %vector.main.loop.iter.check441

vector.main.loop.iter.check441:                   ; preds = %iter.check450
  br i1 %min.iters.check415, label %vec.epilog.ph454, label %vector.body445

vector.body445:                                   ; preds = %vector.main.loop.iter.check441, %vector.body445
  %index446 = phi i64 [ %index.next447, %vector.body445 ], [ 0, %vector.main.loop.iter.check441 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %index446 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  store <8 x float> %broadcast.splat419, ptr %i.ft, align 4, !tbaa !43
  store <8 x float> %broadcast.splat419, ptr %i.fu, align 4, !tbaa !43
  store <8 x float> %broadcast.splat419, ptr %i.fv, align 4, !tbaa !43
  store <8 x float> %broadcast.splat419, ptr %i.fw, align 4, !tbaa !43
  %index.next447 = add nuw i64 %index446, 32      ; 2 uses
  %i.fx = icmp eq i64 %index.next447, %n.vec417
  br i1 %i.fx, label %middle.block448, label %vector.body445, !llvm.loop !1234

middle.block448:                                  ; preds = %vector.body445
  br i1 %cmp.n424, label %._crit_edge102.split.us.us.split.split.us.us.split.split.us.us.us.us.a, label %vec.epilog.iter.check451

vec.epilog.iter.check451:                         ; preds = %middle.block448
  br i1 %min.epilog.iters.check428, label %.lr.ph98.us.us.us125.us.us170.us.us.us.preheader.a, label %vec.epilog.ph454, !prof !52

vec.epilog.ph454:                                 ; preds = %vector.main.loop.iter.check441, %vec.epilog.iter.check451
  %vec.epilog.resume.val455 = phi i64 [ %n.vec417, %vec.epilog.iter.check451 ], [ 0, %vector.main.loop.iter.check441 ]
  br label %vec.epilog.vector.body457

vec.epilog.vector.body457:                        ; preds = %vec.epilog.vector.body457, %vec.epilog.ph454
  %index458 = phi i64 [ %vec.epilog.resume.val455, %vec.epilog.ph454 ], [ %index.next459, %vec.epilog.vector.body457 ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %index458
  store <4 x float> %broadcast.splat433, ptr %i.fy, align 4, !tbaa !43
  %index.next459 = add nuw i64 %index458, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next459, %n.vec431
  br i1 %i.fz, label %vec.epilog.middle.block460, label %vec.epilog.vector.body457, !llvm.loop !1235

vec.epilog.middle.block460:                       ; preds = %vec.epilog.vector.body457
  br i1 %cmp.n438, label %._crit_edge102.split.us.us.split.split.us.us.split.split.us.us.us.us.a, label %.lr.ph98.us.us.us125.us.us170.us.us.us.preheader.a

.lr.ph98.us.us.us125.us.us170.us.us.us.preheader.a: ; preds = %iter.check450, %vec.epilog.iter.check451, %vec.epilog.middle.block460
  %indvars.iv308.ph = phi i64 [ 0, %iter.check450 ], [ %n.vec417, %vec.epilog.iter.check451 ], [ %n.vec431, %vec.epilog.middle.block460 ]
  br label %.lr.ph98.us.us.us125.us.us170.us.us.us.a

.lr.ph98.us.us.us125.us.us170.us.us.us.a:         ; preds = %.lr.ph98.us.us.us125.us.us170.us.us.us.preheader.a, %.lr.ph98.us.us.us125.us.us170.us.us.us.a
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %.lr.ph98.us.us.us125.us.us170.us.us.us.a ], [ %indvars.iv308.ph, %.lr.ph98.us.us.us125.us.us170.us.us.us.preheader.a ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv308
  store float %i.ak, ptr %i.ga, align 4, !tbaa !43
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next309, %i.w
  br i1 %exitcond311.not, label %._crit_edge102.split.us.us.split.split.us.us.split.split.us.us.us.us.a, label %.lr.ph98.us.us.us125.us.us170.us.us.us.a, !llvm.loop !1236

._crit_edge102.split.us.us.split.split.us.us.split.split.us.us.us.us.a: ; preds = %.lr.ph98.us.us.us125.us.us170.us.us.us.a, %vec.epilog.middle.block460, %middle.block448
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next313, %i.y
  br i1 %exitcond315.not, label %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us.a, label %iter.check450, !llvm.loop !1232

._crit_edge.split116.us.split.split.us.us.us.us.split.split.us.a: ; preds = %._crit_edge102.split.us.us.split.split.us.us.split.split.us.us.us.us.a
  %i.gb = getelementptr inbounds nuw i8, ptr %.078146.us.us.us.us248.a, i64 %3 ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %.077150.us.us.us.us247.a, i64 %i.z
  %i.gd = icmp ult ptr %i.gb, %i.u
  br i1 %i.gd, label %.preheader.us.us.us.us246.a, label %.loopexit91, !llvm.loop !1233

.preheader.lr.ph.split.us.split.us.split.split.us.split.split.us.split: ; preds = %.preheader.lr.ph.split.us.split.us.split.split.us.split
  %4 = load i64, ptr %i.al, align 8, !tbaa !31
  %min.iters.check445 = icmp ult i64 %i.w, 4
  %min.iters.check447 = icmp ult i64 %i.w, 32
  %5 = and i64 %i.w, 28
  %n.vec449 = and i64 %i.w, 9223372036854775776   ; 4 uses
  %cmp.n454 = icmp eq i64 %i.w, %n.vec449
  %min.epilog.iters.check458 = icmp eq i64 %5, 0
  %n.vec461 = and i64 %i.w, 9223372036854775804   ; 3 uses
  %cmp.n466 = icmp eq i64 %i.w, %n.vec461
  br label %.preheader.us.us.us.a

.preheader.us.us.us.a:                            ; preds = %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us, %.preheader.lr.ph.split.us.split.us.split.split.us.split.split.us.split
  %.077150.us.us.us.a = phi ptr [ %i.ab, %.preheader.lr.ph.split.us.split.us.split.split.us.split.split.us.split ], [ %7, %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us ] ; 2 uses
  %.078146.us.us.us.a = phi ptr [ %i.s, %.preheader.lr.ph.split.us.split.us.split.split.us.split.split.us.split ], [ %6, %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us ]
  br label %.lr.ph.us.us177.us.us

.lr.ph.us.us177.us.us:                            ; preds = %._crit_edge102.split.us.us.split.split.us.us.us, %.preheader.us.us.us.a
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %._crit_edge102.split.us.us.split.split.us.us.us ], [ 0, %.preheader.us.us.us.a ] ; 2 uses
  %i.ge = mul nuw nsw i64 %indvars.iv304, %i.w
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.077150.us.us.us.a, i64 %i.ge ; 3 uses
  br i1 %min.iters.check445, label %.lr.ph98.us.us.us.us.us.us.preheader, label %vector.main.loop.iter.check414

vector.main.loop.iter.check414:                   ; preds = %.lr.ph.us.us177.us.us
  br i1 %min.iters.check447, label %vec.epilog.ph429, label %vector.body420

vector.body420:                                   ; preds = %vector.main.loop.iter.check414, %vector.body420
  %index421 = phi i64 [ %index.next422, %vector.body420 ], [ 0, %vector.main.loop.iter.check414 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index421 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gg, align 4, !tbaa !43
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gh, align 4, !tbaa !43
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gi, align 4, !tbaa !43
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gj, align 4, !tbaa !43
  %index.next422 = add nuw i64 %index421, 32      ; 2 uses
  %i.gk = icmp eq i64 %index.next422, %n.vec449
  br i1 %i.gk, label %middle.block423, label %vector.body420, !llvm.loop !1237

middle.block423:                                  ; preds = %vector.body420
  br i1 %cmp.n454, label %._crit_edge102.split.us.us.split.split.us.us.us, label %vec.epilog.iter.check426

vec.epilog.iter.check426:                         ; preds = %middle.block423
  br i1 %min.epilog.iters.check458, label %.lr.ph98.us.us.us.us.us.us.preheader, label %vec.epilog.ph429, !prof !52

vec.epilog.ph429:                                 ; preds = %vector.main.loop.iter.check414, %vec.epilog.iter.check426
  %vec.epilog.resume.val430 = phi i64 [ %n.vec449, %vec.epilog.iter.check426 ], [ 0, %vector.main.loop.iter.check414 ]
  br label %vec.epilog.vector.body434

vec.epilog.vector.body434:                        ; preds = %vec.epilog.vector.body434, %vec.epilog.ph429
  %index435 = phi i64 [ %vec.epilog.resume.val430, %vec.epilog.ph429 ], [ %index.next436, %vec.epilog.vector.body434 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index435
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.gl, align 4, !tbaa !43
  %index.next436 = add nuw i64 %index435, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next436, %n.vec461
  br i1 %i.gm, label %vec.epilog.middle.block437, label %vec.epilog.vector.body434, !llvm.loop !1238

vec.epilog.middle.block437:                       ; preds = %vec.epilog.vector.body434
  br i1 %cmp.n466, label %._crit_edge102.split.us.us.split.split.us.us.us, label %.lr.ph98.us.us.us.us.us.us.preheader

.lr.ph98.us.us.us.us.us.us.preheader:             ; preds = %.lr.ph.us.us177.us.us, %vec.epilog.iter.check426, %vec.epilog.middle.block437
  %indvars.iv297.ph = phi i64 [ 0, %.lr.ph.us.us177.us.us ], [ %n.vec449, %vec.epilog.iter.check426 ], [ %n.vec461, %vec.epilog.middle.block437 ]
  br label %.lr.ph98.us.us.us.us.us.us

.lr.ph98.us.us.us.us.us.us:                       ; preds = %.lr.ph98.us.us.us.us.us.us.preheader, %.lr.ph98.us.us.us.us.us.us
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %.lr.ph98.us.us.us.us.us.us ], [ %indvars.iv297.ph, %.lr.ph98.us.us.us.us.us.us.preheader ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv297
  store float f0xFF7FFFFF, ptr %i.gn, align 4, !tbaa !43
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next298, %i.w
  br i1 %exitcond300.not, label %._crit_edge102.split.us.us.split.split.us.us.us, label %.lr.ph98.us.us.us.us.us.us, !llvm.loop !1239

._crit_edge102.split.us.us.split.split.us.us.us:  ; preds = %.lr.ph98.us.us.us.us.us.us, %vec.epilog.middle.block437, %middle.block423
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next305, %i.y
  br i1 %exitcond307.not, label %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us, label %.lr.ph.us.us177.us.us, !llvm.loop !1232

._crit_edge.split116.us.split.split.us.us.us.us.split.split.us: ; preds = %._crit_edge102.split.us.us.split.split.us.us.us
  %6 = getelementptr inbounds nuw i8, ptr %.078146.us.us.us.a, i64 %4 ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.077150.us.us.us.a, i64 %i.z
  %8 = icmp ult ptr %6, %i.u
  br i1 %8, label %.preheader.us.us.us.a, label %.loopexit91, !llvm.loop !1233

._crit_edge.split116.us.split.split.us179.us.us:  ; preds = %.preheader.lr.ph.split.us.split.us.split.split.us.split.a, %._crit_edge.split116.us.split.split.us179.us.us
  %.077150.us.us.us = phi ptr [ %i.gp, %._crit_edge.split116.us.split.split.us179.us.us ], [ %i.ab, %.preheader.lr.ph.split.us.split.us.split.split.us.split.a ] ; 2 uses
  %.078146.us.us.us = phi ptr [ %i.go, %._crit_edge.split116.us.split.split.us179.us.us ], [ %i.s, %.preheader.lr.ph.split.us.split.us.split.split.us.split.a ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %.077150.us.us.us, i8 0, i64 %2, i1 false), !tbaa !43
  %i.go = getelementptr inbounds nuw i8, ptr %.078146.us.us.us, i64 %3 ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %.077150.us.us.us, i64 %i.z
  %i.gq = icmp ult ptr %i.go, %i.u
  br i1 %i.gq, label %._crit_edge.split116.us.split.split.us179.us.us, label %.loopexit91, !llvm.loop !1233

.preheader.lr.ph.split.us.split.us.split.split:   ; preds = %.preheader.lr.ph.split.us.split.us.split
  %i.gr = load i64, ptr %i.al, align 8, !tbaa !31 ; 3 uses
  switch i32 %i.e, label %.preheader.us.us.preheader [
    i32 0, label %.preheader.us.us.us225.preheader
    i32 1, label %.preheader.us.us.us228.preheader
  ]

.preheader.us.us.us228.preheader:                 ; preds = %.preheader.lr.ph.split.us.split.us.split.split
  %min.iters.check = icmp ult i64 %i.w, 4
  %min.iters.check383 = icmp ult i64 %i.w, 32
  %i.gs = and i64 %i.w, 28
  %n.vec = and i64 %i.w, 9223372036854775776      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ak, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.gs, 0
  %n.vec384 = and i64 %i.w, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert385 = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat386 = shufflevector <4 x float> %broadcast.splatinsert385, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n389 = icmp eq i64 %i.w, %n.vec384
  br label %.preheader.us.us.us228

.preheader.us.us.us225.preheader:                 ; preds = %.preheader.lr.ph.split.us.split.us.split.split
  %min.iters.check390 = icmp ult i64 %i.w, 4
  %min.iters.check392 = icmp ult i64 %i.w, 32
  %i.gt = and i64 %i.w, 28
  %n.vec394 = and i64 %i.w, 9223372036854775776   ; 4 uses
  %cmp.n399 = icmp eq i64 %i.w, %n.vec394
  %min.epilog.iters.check403 = icmp eq i64 %i.gt, 0
  %n.vec406 = and i64 %i.w, 9223372036854775804   ; 3 uses
  %cmp.n411 = icmp eq i64 %i.w, %n.vec406
  br label %.preheader.us.us.us225

.preheader.us.us.us225:                           ; preds = %.preheader.us.us.us225.preheader, %._crit_edge.split116.split.us.split.us160.us.us
  %.077150.us.us.us226 = phi ptr [ %i.hf, %._crit_edge.split116.split.us.split.us160.us.us ], [ %i.ab, %.preheader.us.us.us225.preheader ] ; 2 uses
  %.078146.us.us.us227 = phi ptr [ %i.he, %._crit_edge.split116.split.us.split.us160.us.us ], [ %i.s, %.preheader.us.us.us225.preheader ]
  br label %iter.check400

iter.check400:                                    ; preds = %._crit_edge102.split.split.us.split.us121.us.us.us, %.preheader.us.us.us225
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %._crit_edge102.split.split.us.split.us121.us.us.us ], [ 0, %.preheader.us.us.us225 ] ; 2 uses
  %i.gu = mul nuw nsw i64 %indvars.iv279, %i.w
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.077150.us.us.us226, i64 %i.gu ; 3 uses
  br i1 %min.iters.check390, label %vec.epilog.scalar.ph402.preheader, label %vector.main.loop.iter.check391

vector.main.loop.iter.check391:                   ; preds = %iter.check400
  br i1 %min.iters.check392, label %vec.epilog.ph404, label %vector.body395

vector.body395:                                   ; preds = %vector.main.loop.iter.check391, %vector.body395
  %index396 = phi i64 [ %index.next397, %vector.body395 ], [ 0, %vector.main.loop.iter.check391 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index396 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gw, align 4, !tbaa !43
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gx, align 4, !tbaa !43
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gy, align 4, !tbaa !43
  store <8 x float> splat (float f0xFF7FFFFF), ptr %i.gz, align 4, !tbaa !43
  %index.next397 = add nuw i64 %index396, 32      ; 2 uses
  %i.ha = icmp eq i64 %index.next397, %n.vec394
  br i1 %i.ha, label %middle.block398, label %vector.body395, !llvm.loop !1240

middle.block398:                                  ; preds = %vector.body395
  br i1 %cmp.n399, label %._crit_edge102.split.split.us.split.us121.us.us.us, label %vec.epilog.iter.check401

vec.epilog.iter.check401:                         ; preds = %middle.block398
  br i1 %min.epilog.iters.check403, label %vec.epilog.scalar.ph402.preheader, label %vec.epilog.ph404, !prof !52

vec.epilog.ph404:                                 ; preds = %vector.main.loop.iter.check391, %vec.epilog.iter.check401
  %vec.epilog.resume.val405 = phi i64 [ %n.vec394, %vec.epilog.iter.check401 ], [ 0, %vector.main.loop.iter.check391 ]
  br label %vec.epilog.vector.body407

vec.epilog.vector.body407:                        ; preds = %vec.epilog.vector.body407, %vec.epilog.ph404
  %index408 = phi i64 [ %vec.epilog.resume.val405, %vec.epilog.ph404 ], [ %index.next409, %vec.epilog.vector.body407 ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index408
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.hb, align 4, !tbaa !43
  %index.next409 = add nuw i64 %index408, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next409, %n.vec406
  br i1 %i.hc, label %vec.epilog.middle.block410, label %vec.epilog.vector.body407, !llvm.loop !1241

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body407
  br i1 %cmp.n411, label %._crit_edge102.split.split.us.split.us121.us.us.us, label %vec.epilog.scalar.ph402.preheader

vec.epilog.scalar.ph402.preheader:                ; preds = %iter.check400, %vec.epilog.iter.check401, %vec.epilog.middle.block410
  %indvars.iv.ph = phi i64 [ 0, %iter.check400 ], [ %n.vec394, %vec.epilog.iter.check401 ], [ %n.vec406, %vec.epilog.middle.block410 ]
  br label %vec.epilog.scalar.ph402

vec.epilog.scalar.ph402:                          ; preds = %vec.epilog.scalar.ph402.preheader, %vec.epilog.scalar.ph402
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph402 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph402.preheader ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv
  store float f0xFF7FFFFF, ptr %i.hd, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %exitcond.not, label %._crit_edge102.split.split.us.split.us121.us.us.us, label %vec.epilog.scalar.ph402, !llvm.loop !1242

._crit_edge102.split.split.us.split.us121.us.us.us: ; preds = %vec.epilog.scalar.ph402, %vec.epilog.middle.block410, %middle.block398
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next280, %i.y
  br i1 %exitcond282.not, label %._crit_edge.split116.split.us.split.us160.us.us, label %iter.check400, !llvm.loop !1232

._crit_edge.split116.split.us.split.us160.us.us:  ; preds = %._crit_edge102.split.split.us.split.us121.us.us.us
  %i.he = getelementptr inbounds nuw i8, ptr %.078146.us.us.us227, i64 %i.gr ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.077150.us.us.us226, i64 %i.z
  %i.hg = icmp ult ptr %i.he, %i.u
  br i1 %i.hg, label %.preheader.us.us.us225, label %.loopexit91, !llvm.loop !1233

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us.split.us.split.split
  %i.hh = shl i64 %i.z, 2
  br label %.preheader.us.us

.preheader.us.us.us228:                           ; preds = %.preheader.us.us.us228.preheader, %._crit_edge.split116.split.split.us.us.us.us
  %.077150.us.us.us229 = phi ptr [ %i.ht, %._crit_edge.split116.split.split.us.us.us.us ], [ %i.ab, %.preheader.us.us.us228.preheader ] ; 2 uses
  %.078146.us.us.us230 = phi ptr [ %i.hs, %._crit_edge.split116.split.split.us.us.us.us ], [ %i.s, %.preheader.us.us.us228.preheader ]
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge102.split.split.split.us.us.us.us.us, %.preheader.us.us.us228
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %._crit_edge102.split.split.split.us.us.us.us.us ], [ 0, %.preheader.us.us.us228 ] ; 2 uses
  %i.hi = mul nuw nsw i64 %indvars.iv293, %i.w
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.077150.us.us.us229, i64 %i.hi ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check383, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  store <8 x float> %broadcast.splat, ptr %i.hk, align 4, !tbaa !43
  store <8 x float> %broadcast.splat, ptr %i.hl, align 4, !tbaa !43
  store <8 x float> %broadcast.splat, ptr %i.hm, align 4, !tbaa !43
  store <8 x float> %broadcast.splat, ptr %i.hn, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !1243

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge102.split.split.split.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index387 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next388, %vec.epilog.vector.body ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index387
  store <4 x float> %broadcast.splat386, ptr %i.hp, align 4, !tbaa !43
  %index.next388 = add nuw i64 %index387, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next388, %n.vec384
  br i1 %i.hq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n389, label %._crit_edge102.split.split.split.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv289.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec384, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %vec.epilog.scalar.ph ], [ %indvars.iv289.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv289
  store float %i.ak, ptr %i.hr, align 4, !tbaa !43
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next290, %i.w
  br i1 %exitcond292.not, label %._crit_edge102.split.split.split.us.us.us.us.us, label %vec.epilog.scalar.ph, !llvm.loop !1245

._crit_edge102.split.split.split.us.us.us.us.us:  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next294, %i.y
  br i1 %exitcond296.not, label %._crit_edge.split116.split.split.us.us.us.us, label %iter.check, !llvm.loop !1232

._crit_edge.split116.split.split.us.us.us.us:     ; preds = %._crit_edge102.split.split.split.us.us.us.us.us
  %i.hs = getelementptr inbounds nuw i8, ptr %.078146.us.us.us230, i64 %i.gr ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.077150.us.us.us229, i64 %i.z
  %i.hu = icmp ult ptr %i.hs, %i.u
  br i1 %i.hu, label %.preheader.us.us.us228, label %.loopexit91, !llvm.loop !1233

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %.preheader.us.us
  %.077150.us.us = phi ptr [ %i.hw, %.preheader.us.us ], [ %i.ab, %.preheader.us.us.preheader ] ; 2 uses
  %.078146.us.us = phi ptr [ %i.hv, %.preheader.us.us ], [ %i.s, %.preheader.us.us.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %.077150.us.us, i8 0, i64 %i.hh, i1 false), !tbaa !43
  %i.hv = getelementptr inbounds nuw i8, ptr %.078146.us.us, i64 %i.gr ; 2 uses
  %i.hw = getelementptr [4 x i8], ptr %.077150.us.us, i64 %i.z
  %i.hx = icmp ult ptr %i.hv, %i.u
  br i1 %i.hx, label %.preheader.us.us, label %.loopexit91, !llvm.loop !1233

.split202.us:                                     ; preds = %.preheader.lr.ph.split.us.split.us
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7813, ptr noundef nonnull @.str.2) #17
  unreachable

.loopexit91:                                      ; preds = %._crit_edge.split116.split.split.us.us.us.us, %._crit_edge.split116.split.us.split.us160.us.us, %.preheader.us.us, %._crit_edge.split116.us.split.split.us179.us.us, %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us.a, %._crit_edge.split116.us.split.split.us.us.us.us.split.split.us, %._crit_edge.split116.us.split.us.us.us.us.split.us245, %._crit_edge.split116.us.split.us.us.us.us.split.us.us.us, %.preheader.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_pool_2d_back(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !35
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit172

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !51
  %.fr236 = freeze i32 %i.i                       ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load i32, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = tail call i64 @ggml_nbytes(ptr noundef nonnull %1) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %0, align 8, !tbaa !35
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7882, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.129) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ab = tail call i64 @ggml_nbytes(ptr noundef nonnull %1)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 0, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31 ; 4 uses
  %i.ag = mul nsw i64 %i.af, %i.ad                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 2 uses
  %.not235 = icmp eq i64 %i.x, 0
  br i1 %.not235, label %.loopexit172, label %.preheader171.lr.ph

.preheader171.lr.ph:                              ; preds = %bb.d
  %i.aj = mul nsw i32 %i.k, %.fr236
  %i.ak = icmp sgt i64 %i.af, 0
  %i.al = sitofp i32 %i.aj to float
  %i.am = icmp slt i32 %i.k, 1                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.aq = icmp slt i32 %.fr236, 1                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = icmp sgt i64 %i.ad, 0
  %or.cond = select i1 %i.ak, i1 %i.as, i1 false
  br i1 %or.cond, label %.preheader171.lr.ph.split.us.split.us, label %.loopexit172

.preheader171.lr.ph.split.us.split.us:            ; preds = %.preheader171.lr.ph
  %switch = icmp ult i32 %i.g, 2
  br i1 %switch, label %.preheader171.lr.ph.split.us.split.us.split, label %.split.us

.preheader171.lr.ph.split.us.split.us.split:      ; preds = %.preheader171.lr.ph.split.us.split.us
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !31 ; 3 uses
  %cond = icmp eq i32 %i.g, 0
  br i1 %cond, label %.preheader171.us.us.us.preheader, label %.preheader171.lr.ph.split.us.split.us.split.split

.preheader171.us.us.us.preheader:                 ; preds = %.preheader171.lr.ph.split.us.split.us.split
  %i.au = sext i32 %i.m to i64
  %i.av = sext i32 %i.q to i64
  %i.aw = sext i32 %i.o to i64
  %i.ax = sext i32 %i.s to i64
  %wide.trip.count266 = zext nneg i32 %i.k to i64
  %wide.trip.count261 = zext i32 %.fr236 to i64   ; 2 uses
  %brmerge = or i1 %i.am, %i.aq
  %xtraiter302 = and i64 %wide.trip.count261, 1
  %i.ay = icmp eq i32 %.fr236, 1
  %unroll_iter308 = and i64 %wide.trip.count261, 2147483646
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  %lcmp.mod307 = trunc i32 %.fr236 to i1
  br label %.preheader171.us.us.us

.preheader171.us.us.us:                           ; preds = %.preheader171.us.us.us.preheader, %._crit_edge.split204.us.us.us.us
  %.0147212.us.us.us = phi ptr [ %i.ez, %._crit_edge.split204.us.us.us.us ], [ %i.ai, %.preheader171.us.us.us.preheader ] ; 2 uses
  %.0148209.us.us.us = phi ptr [ %i.ey, %._crit_edge.split204.us.us.us.us ], [ %i.w, %.preheader171.us.us.us.preheader ] ; 2 uses
  %.0149205.us.us.us = phi ptr [ %i.ex, %._crit_edge.split204.us.us.us.us ], [ %i.u, %.preheader171.us.us.us.preheader ] ; 2 uses
  br label %.lr.ph.us202.us.us.us

.lr.ph.us202.us.us.us:                            ; preds = %._crit_edge195.split.us.us.us.us.us, %.preheader171.us.us.us
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %._crit_edge195.split.us.us.us.us.us ], [ 0, %.preheader171.us.us.us ] ; 3 uses
  %i.az = mul nuw nsw i64 %indvars.iv272, %i.ad
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.0147212.us.us.us, i64 %i.az
  %i.bb = mul nsw i64 %indvars.iv272, %i.aw
  %i.bc = sub nsw i64 %i.bb, %i.ax                ; 2 uses
  %i.bd = trunc nsw i64 %i.bc to i32
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %.critedge.us.us.us.us.us, %.lr.ph.us202.us.us.us
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.critedge.us.us.us.us.us ], [ 0, %.lr.ph.us202.us.us.us ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv268
  %i.bf = load float, ptr %i.be, align 4, !tbaa !43 ; 2 uses
  %i.bg = mul nsw i64 %indvars.iv268, %i.au
  %i.bh = sub nsw i64 %i.bg, %i.av                ; 2 uses
  br i1 %brmerge, label %.critedge.us.us.us.us.us, label %.lr.ph187.split.us.us.us.us.us.us.preheader

.lr.ph187.split.us.us.us.us.us.us.preheader:      ; preds = %.preheader.us.us.us.us.us
  %i.bi = trunc nsw i64 %i.bh to i32              ; 3 uses
  br label %.lr.ph187.split.us.us.us.us.us.us

.lr.ph187.split.us.us.us.us.us.us:                ; preds = %.lr.ph187.split.us.us.us.us.us.us.preheader, %..loopexit_crit_edge.us.us.us.us.us.us
  %indvars.iv263 = phi i64 [ 0, %.lr.ph187.split.us.us.us.us.us.us.preheader ], [ %indvars.iv.next264, %..loopexit_crit_edge.us.us.us.us.us.us ] ; 2 uses
  %.0134184.us.us.us.us.us.us = phi i32 [ -1, %.lr.ph187.split.us.us.us.us.us.us.preheader ], [ %.4.us.us.us.us.us.us, %..loopexit_crit_edge.us.us.us.us.us.us ] ; 4 uses
  %.0135183.us.us.us.us.us.us = phi i32 [ -1, %.lr.ph187.split.us.us.us.us.us.us.preheader ], [ %.4139.us.us.us.us.us.us, %..loopexit_crit_edge.us.us.us.us.us.us ] ; 4 uses
  %.0140182.us.us.us.us.us.us = phi float [ f0xFF7FFFFF, %.lr.ph187.split.us.us.us.us.us.us.preheader ], [ %.4144.us.us.us.us.us.us, %..loopexit_crit_edge.us.us.us.us.us.us ] ; 4 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv263 to i32 ; 4 uses
  %i.bk = add nsw i32 %i.bj, %i.bd                ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %..loopexit_crit_edge.us.us.us.us.us.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph187.split.us.us.us.us.us.us
  %i.bm = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bn = load i64, ptr %i.ao, align 8, !tbaa !31
  %.not167.us.us.us.us.us.us = icmp sgt i64 %i.bn, %i.bm
  br i1 %.not167.us.us.us.us.us.us, label %.lr.ph.us190.us.us.us.us.us, label %..loopexit_crit_edge.us.us.us.us.us.us

.lr.ph.us190.us.us.us.us.us:                      ; preds = %bb.e
  %i.bo = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.bp = mul i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %.0148209.us.us.us, i64 %i.bp ; 6 uses
  br i1 %i.ay, label %.epil.preheader301, label %.lr.ph.us190.us.us.us.us.us.new

.lr.ph.us190.us.us.us.us.us.new:                  ; preds = %.lr.ph.us190.us.us.us.us.us, %bb.q
  %indvars.iv258 = phi i64 [ %indvars.iv.next259.1, %bb.q ], [ 0, %.lr.ph.us190.us.us.us.us.us ] ; 3 uses
  %.1178.us.us.us.us.us.us = phi i32 [ %.3.us.us.us.us.us.us.1, %bb.q ], [ %.0134184.us.us.us.us.us.us, %.lr.ph.us190.us.us.us.us.us ] ; 3 uses
  %.1136177.us.us.us.us.us.us = phi i32 [ %.3138.us.us.us.us.us.us.1, %bb.q ], [ %.0135183.us.us.us.us.us.us, %.lr.ph.us190.us.us.us.us.us ] ; 3 uses
  %.1141176.us.us.us.us.us.us = phi float [ %.3143.us.us.us.us.us.us.1, %bb.q ], [ %.0140182.us.us.us.us.us.us, %.lr.ph.us190.us.us.us.us.us ] ; 4 uses
  %niter309 = phi i64 [ %niter309.next.1, %bb.q ], [ 0, %.lr.ph.us190.us.us.us.us.us ]
  %i.br = trunc nuw nsw i64 %indvars.iv258 to i32 ; 2 uses
  %i.bs = add nsw i32 %i.br, %i.bi                ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %bb.f

bb.f:                                             ; preds = %.lr.ph.us190.us.us.us.us.us.new
  %i.bu = zext nneg i32 %i.bs to i64              ; 3 uses
  %i.bv = load i64, ptr %i.an, align 8, !tbaa !31
  %.not168.us.us.us.us.us.us = icmp sgt i64 %i.bv, %i.bu
  br i1 %.not168.us.us.us.us.us.us, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bw = load i32, ptr %1, align 8, !tbaa !30
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.bu
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !41
  %i.ca = zext i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.ca
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bu
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.in.us.us.us.us.us.us = phi ptr [ %i.cc, %bb.i ], [ %i.cb, %bb.h ]
  %i.cd = load float, ptr %.in.us.us.us.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.ce = fcmp ugt float %i.cd, %.1141176.us.us.us.us.us.us ; 3 uses
  %..1141.us.us.us.us.us.us = select i1 %i.ce, float %i.cd, float %.1141176.us.us.us.us.us.us
  %.0132..1136.us.us.us.us.us.us = select i1 %i.ce, i32 %i.br, i32 %.1136177.us.us.us.us.us.us
  %.0133..1.us.us.us.us.us.us = select i1 %i.ce, i32 %i.bj, i32 %.1178.us.us.us.us.us.us
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %.lr.ph.us190.us.us.us.us.us.new
  %.3143.us.us.us.us.us.us = phi float [ %..1141.us.us.us.us.us.us, %bb.j ], [ %.1141176.us.us.us.us.us.us, %bb.f ], [ %.1141176.us.us.us.us.us.us, %.lr.ph.us190.us.us.us.us.us.new ] ; 4 uses
  %.3138.us.us.us.us.us.us = phi i32 [ %.0132..1136.us.us.us.us.us.us, %bb.j ], [ %.1136177.us.us.us.us.us.us, %bb.f ], [ %.1136177.us.us.us.us.us.us, %.lr.ph.us190.us.us.us.us.us.new ] ; 3 uses
  %.3.us.us.us.us.us.us = phi i32 [ %.0133..1.us.us.us.us.us.us, %bb.j ], [ %.1178.us.us.us.us.us.us, %bb.f ], [ %.1178.us.us.us.us.us.us, %.lr.ph.us190.us.us.us.us.us.new ] ; 3 uses
  %i.cf = trunc i64 %indvars.iv258 to i32
  %i.cg = or disjoint i32 %i.cf, 1                ; 2 uses
  %i.ch = add nsw i32 %i.cg, %i.bi                ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = zext nneg i32 %i.ch to i64              ; 3 uses
  %i.ck = load i64, ptr %i.an, align 8, !tbaa !31
  %.not168.us.us.us.us.us.us.1 = icmp sgt i64 %i.ck, %i.cj
end_hunk_1
