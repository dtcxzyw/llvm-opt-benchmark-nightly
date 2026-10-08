Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@ggml_compute_forward_im2col_back_f32:bb.a
  %i.ij = mul nsw i64 %.0166278.us.us, %i.bw
  %i.ik = getelementptr i8, ptr %i.bi, i64 %i.ij
  br label %.preheader185.us.us.us286.us

.preheader185.us.us.us286.us:                     ; preds = %.preheader185.us.us.us286.us, %.preheader185.lr.ph.us.us
  %.0164257.us.us.us287.us = phi i64 [ %i.bk, %.preheader185.lr.ph.us.us ], [ %i.in, %.preheader185.us.us.us286.us ] ; 2 uses
  %i.il = mul i64 %.0164257.us.us.us287.us, %i.by
  %i.im = getelementptr i8, ptr %i.ik, i64 %i.il
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.im, i8 0, i64 %i.cd, i1 false), !tbaa !43
  %i.in = add nsw i64 %.0164257.us.us.us287.us, %i.bz ; 2 uses
  %i.io = icmp slt i64 %i.in, %i.ba
  br i1 %i.io, label %.preheader185.us.us.us286.us, label %._crit_edge.split273.us.split.us.split.us288.us, !llvm.loop !1046

._crit_edge.split273.us.split.us.split.us288.us:  ; preds = %.preheader185.us.us.us286.us
  %i.ip = or disjoint i64 %.0166278.us.us, 1
  %i.iq = mul nsw i64 %i.ip, %i.bw
  %i.ir = getelementptr i8, ptr %i.bi, i64 %i.iq
  br label %.preheader185.us.us.us286.us.1

.preheader185.us.us.us286.us.1:                   ; preds = %.preheader185.us.us.us286.us.1, %._crit_edge.split273.us.split.us.split.us288.us
  %.0164257.us.us.us287.us.1 = phi i64 [ %i.bk, %._crit_edge.split273.us.split.us.split.us288.us ], [ %i.iu, %.preheader185.us.us.us286.us.1 ] ; 2 uses
  %i.is = mul i64 %.0164257.us.us.us287.us.1, %i.by
  %i.it = getelementptr i8, ptr %i.ir, i64 %i.is
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.it, i8 0, i64 %i.cd, i1 false), !tbaa !43
  %i.iu = add nsw i64 %.0164257.us.us.us287.us.1, %i.bz ; 2 uses
  %i.iv = icmp slt i64 %i.iu, %i.ba
  br i1 %i.iv, label %.preheader185.us.us.us286.us.1, label %._crit_edge.split273.us.split.us.split.us288.us.1, !llvm.loop !1046

._crit_edge.split273.us.split.us.split.us288.us.1: ; preds = %.preheader185.us.us.us286.us.1
  %i.iw = or disjoint i64 %.0166278.us.us, 2
  %i.ix = mul nsw i64 %i.iw, %i.bw
  %i.iy = getelementptr i8, ptr %i.bi, i64 %i.ix
  br label %.preheader185.us.us.us286.us.2

.preheader185.us.us.us286.us.2:                   ; preds = %.preheader185.us.us.us286.us.2, %._crit_edge.split273.us.split.us.split.us288.us.1
  %.0164257.us.us.us287.us.2 = phi i64 [ %i.bk, %._crit_edge.split273.us.split.us.split.us288.us.1 ], [ %i.jb, %.preheader185.us.us.us286.us.2 ] ; 2 uses
  %i.iz = mul i64 %.0164257.us.us.us287.us.2, %i.by
  %i.ja = getelementptr i8, ptr %i.iy, i64 %i.iz
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ja, i8 0, i64 %i.cd, i1 false), !tbaa !43
  %i.jb = add nsw i64 %.0164257.us.us.us287.us.2, %i.bz ; 2 uses
  %i.jc = icmp slt i64 %i.jb, %i.ba
  br i1 %i.jc, label %.preheader185.us.us.us286.us.2, label %._crit_edge.split273.us.split.us.split.us288.us.2, !llvm.loop !1046

._crit_edge.split273.us.split.us.split.us288.us.2: ; preds = %.preheader185.us.us.us286.us.2
  %i.jd = or disjoint i64 %.0166278.us.us, 3
  %i.je = mul nsw i64 %i.jd, %i.bw
  %i.jf = getelementptr i8, ptr %i.bi, i64 %i.je
  br label %.preheader185.us.us.us286.us.3

.preheader185.us.us.us286.us.3:                   ; preds = %.preheader185.us.us.us286.us.3, %._crit_edge.split273.us.split.us.split.us288.us.2
  %.0164257.us.us.us287.us.3 = phi i64 [ %i.bk, %._crit_edge.split273.us.split.us.split.us288.us.2 ], [ %i.ji, %.preheader185.us.us.us286.us.3 ] ; 2 uses
  %i.jg = mul i64 %.0164257.us.us.us287.us.3, %i.by
  %i.jh = getelementptr i8, ptr %i.jf, i64 %i.jg
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jh, i8 0, i64 %i.cd, i1 false), !tbaa !43
  %i.ji = add nsw i64 %.0164257.us.us.us287.us.3, %i.bz ; 2 uses
  %i.jj = icmp slt i64 %i.ji, %i.ba
  br i1 %i.jj, label %.preheader185.us.us.us286.us.3, label %._crit_edge.split273.us.split.us.split.us288.us.3, !llvm.loop !1046

._crit_edge.split273.us.split.us.split.us288.us.3: ; preds = %.preheader185.us.us.us286.us.3
  %i.jk = add nuw nsw i64 %.0166278.us.us, 4      ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge280.split.loopexit364.unr-lcssa, label %.preheader185.lr.ph.us.us, !llvm.loop !1047

._crit_edge280.split.loopexit362.unr-lcssa:       ; preds = %._crit_edge.split273.us.split.us.split.us.split.us.split.split.us297.us.us.us.3
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod374.not, label %._crit_edge280.split, label %.preheader185.lr.ph.us.us.us.us.epil.preheader

.preheader185.lr.ph.us.us.us.us.epil.preheader:   ; preds = %._crit_edge280.split.loopexit362.unr-lcssa, %.preheader185.lr.ph.us.us.us.us.preheader
  %.0166278.us.us.us.us.epil.init = phi i64 [ 0, %.preheader185.lr.ph.us.us.us.us.preheader ], [ %i.hg, %._crit_edge280.split.loopexit362.unr-lcssa ]
  %lcmp.mod375 = icmp ne i64 %xtraiter372, 0
  tail call void @llvm.assume(i1 %lcmp.mod375)
  br label %.preheader185.lr.ph.us.us.us.us.epil

.preheader185.lr.ph.us.us.us.us.epil:             ; preds = %._crit_edge.split273.us.split.us.split.us.split.us.split.split.us297.us.us.us.epil, %.preheader185.lr.ph.us.us.us.us.epil.preheader
  %.0166278.us.us.us.us.epil = phi i64 [ %i.jr, %._crit_edge.split273.us.split.us.split.us.split.us.split.split.us297.us.us.us.epil ], [ %.0166278.us.us.us.us.epil.init, %.preheader185.lr.ph.us.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter373 = phi i64 [ %epil.iter373.next, %._crit_edge.split273.us.split.us.split.us.split.us.split.split.us297.us.us.us.epil ], [ 0, %.preheader185.lr.ph.us.us.us.us.epil.preheader ]
  %i.jl = mul nsw i64 %.0166278.us.us.us.us.epil, %i.bw
  %i.jm = getelementptr i8, ptr %i.bi, i64 %i.jl
  br label %.preheader185.us.us.us.us.us295.us.us.us.epil

.preheader185.us.us.us.us.us295.us.us.us.epil:    ; preds = %.preheader185.us.us.us.us.us295.us.us.us.epil, %.preheader185.lr.ph.us.us.us.us.epil
  %.0164257.us.us.us.us.us296.us.us.us.epil = phi i64 [ %i.bk, %.preheader185.lr.ph.us.us.us.us.epil ], [ %i.jp, %.preheader185.us.us.us.us.us295.us.us.us.epil ] ; 2 uses
  %i.jn = mul i64 %.0164257.us.us.us.us.us296.us.us.us.epil, %i.by
  %i.jo = getelementptr i8, ptr %i.jm, i64 %i.jn
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jo, i8 0, i64 %i.dw, i1 false), !tbaa !43
  %i.jp = add nsw i64 %.0164257.us.us.us.us.us296.us.us.us.epil, %i.bz ; 2 uses
  %i.jq = icmp slt i64 %i.jp, %i.ba
  br i1 %i.jq, label %.preheader185.us.us.us.us.us295.us.us.us.epil, label %._crit_edge.split273.us.split.us.split.us.split.us.split.split.us297.us.us.us.epil, !llvm.loop !1046

._crit_edge.split273.us.split.us.split.us.split.us.split.split.us297.us.us.us.epil: ; preds = %.preheader185.us.us.us.us.us295.us.us.us.epil
  %i.jr = add nuw nsw i64 %.0166278.us.us.us.us.epil, 1
  %epil.iter373.next = add i64 %epil.iter373, 1   ; 2 uses
  %epil.iter373.cmp.not = icmp eq i64 %epil.iter373.next, %xtraiter372
  br i1 %epil.iter373.cmp.not, label %._crit_edge280.split, label %.preheader185.lr.ph.us.us.us.us.epil, !llvm.loop !1048

._crit_edge280.split.loopexit363.unr-lcssa:       ; preds = %._crit_edge.split273.us.split.us.split.us.split.us292.us.us.3
  %lcmp.mod368.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod368.not, label %._crit_edge280.split, label %.preheader185.lr.ph.us.us.us.epil.preheader

.preheader185.lr.ph.us.us.us.epil.preheader:      ; preds = %._crit_edge280.split.loopexit363.unr-lcssa, %.preheader185.lr.ph.us.us.us.preheader
  %.0166278.us.us.us.epil.init = phi i64 [ 0, %.preheader185.lr.ph.us.us.us.preheader ], [ %i.ii, %._crit_edge280.split.loopexit363.unr-lcssa ]
  %lcmp.mod369 = icmp ne i64 %xtraiter366, 0
  tail call void @llvm.assume(i1 %lcmp.mod369)
  br label %.preheader185.lr.ph.us.us.us.epil

.preheader185.lr.ph.us.us.us.epil:                ; preds = %._crit_edge.split273.us.split.us.split.us.split.us292.us.us.epil, %.preheader185.lr.ph.us.us.us.epil.preheader
  %.0166278.us.us.us.epil = phi i64 [ %i.jy, %._crit_edge.split273.us.split.us.split.us.split.us292.us.us.epil ], [ %.0166278.us.us.us.epil.init, %.preheader185.lr.ph.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter367 = phi i64 [ %epil.iter367.next, %._crit_edge.split273.us.split.us.split.us.split.us292.us.us.epil ], [ 0, %.preheader185.lr.ph.us.us.us.epil.preheader ]
  %i.js = mul nsw i64 %.0166278.us.us.us.epil, %i.bw
  %i.jt = getelementptr i8, ptr %i.bi, i64 %i.js
  br label %.preheader185.us.us.us.us290.us.us.epil

.preheader185.us.us.us.us290.us.us.epil:          ; preds = %.preheader185.us.us.us.us290.us.us.epil, %.preheader185.lr.ph.us.us.us.epil
  %.0164257.us.us.us.us291.us.us.epil = phi i64 [ %i.bk, %.preheader185.lr.ph.us.us.us.epil ], [ %i.jw, %.preheader185.us.us.us.us290.us.us.epil ] ; 2 uses
  %i.ju = mul i64 %.0164257.us.us.us.us291.us.us.epil, %i.by
  %i.jv = getelementptr i8, ptr %i.jt, i64 %i.ju
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jv, i8 0, i64 %i.cg, i1 false), !tbaa !43
  %i.jw = add nsw i64 %.0164257.us.us.us.us291.us.us.epil, %i.bz ; 2 uses
  %i.jx = icmp slt i64 %i.jw, %i.ba
  br i1 %i.jx, label %.preheader185.us.us.us.us290.us.us.epil, label %._crit_edge.split273.us.split.us.split.us.split.us292.us.us.epil, !llvm.loop !1046

._crit_edge.split273.us.split.us.split.us.split.us292.us.us.epil: ; preds = %.preheader185.us.us.us.us290.us.us.epil
  %i.jy = add nuw nsw i64 %.0166278.us.us.us.epil, 1
  %epil.iter367.next = add i64 %epil.iter367, 1   ; 2 uses
  %epil.iter367.cmp.not = icmp eq i64 %epil.iter367.next, %xtraiter366
  br i1 %epil.iter367.cmp.not, label %._crit_edge280.split, label %.preheader185.lr.ph.us.us.us.epil, !llvm.loop !1049

._crit_edge280.split.loopexit364.unr-lcssa:       ; preds = %._crit_edge.split273.us.split.us.split.us288.us.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge280.split, label %.preheader185.lr.ph.us.us.epil.preheader

.preheader185.lr.ph.us.us.epil.preheader:         ; preds = %._crit_edge280.split.loopexit364.unr-lcssa, %.preheader185.lr.ph.us.us.preheader
  %.0166278.us.us.epil.init = phi i64 [ 0, %.preheader185.lr.ph.us.us.preheader ], [ %i.jk, %._crit_edge280.split.loopexit364.unr-lcssa ]
  %lcmp.mod365 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod365)
  br label %.preheader185.lr.ph.us.us.epil

.preheader185.lr.ph.us.us.epil:                   ; preds = %._crit_edge.split273.us.split.us.split.us288.us.epil, %.preheader185.lr.ph.us.us.epil.preheader
  %.0166278.us.us.epil = phi i64 [ %i.kf, %._crit_edge.split273.us.split.us.split.us288.us.epil ], [ %.0166278.us.us.epil.init, %.preheader185.lr.ph.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %._crit_edge.split273.us.split.us.split.us288.us.epil ], [ 0, %.preheader185.lr.ph.us.us.epil.preheader ]
  %i.jz = mul nsw i64 %.0166278.us.us.epil, %i.bw
  %i.ka = getelementptr i8, ptr %i.bi, i64 %i.jz
  br label %.preheader185.us.us.us286.us.epil

.preheader185.us.us.us286.us.epil:                ; preds = %.preheader185.us.us.us286.us.epil, %.preheader185.lr.ph.us.us.epil
  %.0164257.us.us.us287.us.epil = phi i64 [ %i.bk, %.preheader185.lr.ph.us.us.epil ], [ %i.kd, %.preheader185.us.us.us286.us.epil ] ; 2 uses
  %i.kb = mul i64 %.0164257.us.us.us287.us.epil, %i.by
  %i.kc = getelementptr i8, ptr %i.ka, i64 %i.kb
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kc, i8 0, i64 %i.cd, i1 false), !tbaa !43
  %i.kd = add nsw i64 %.0164257.us.us.us287.us.epil, %i.bz ; 2 uses
  %i.ke = icmp slt i64 %i.kd, %i.ba
  br i1 %i.ke, label %.preheader185.us.us.us286.us.epil, label %._crit_edge.split273.us.split.us.split.us288.us.epil, !llvm.loop !1046

._crit_edge.split273.us.split.us.split.us288.us.epil: ; preds = %.preheader185.us.us.us286.us.epil
  %i.kf = add nuw nsw i64 %.0166278.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge280.split, label %.preheader185.lr.ph.us.us.epil, !llvm.loop !1050

._crit_edge280.split:                             ; preds = %._crit_edge280.split.loopexit364.unr-lcssa, %._crit_edge.split273.us.split.us.split.us288.us.epil, %._crit_edge280.split.loopexit363.unr-lcssa, %._crit_edge.split273.us.split.us.split.us.split.us292.us.us.epil, %._crit_edge280.split.loopexit362.unr-lcssa, %._crit_edge.split273.us.split.us.split.us.split.us.split.split.us297.us.us.us.epil, %._crit_edge.split273.us.split.us.split.us.split.us.split.split.us.us.us.us.us.us, %._crit_edge.split273.us.split.us.split.us.split.us.split.us.us.us.us.us.us, %.lr.ph, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_im2col_3d(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !30
  switch i32 %i.a, label %bb.w [
    i32 1, label %bb.b
    i32 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 10 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6772, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.thread200.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  br label %.thread200.i

.thread200.i:                                     ; preds = %bb.e, %bb.d
  %i.n = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ]    ; 11 uses
  %i.o = phi i64 [ %i.i, %bb.e ], [ 0, %bb.d ]    ; 17 uses
  %i.p = phi i64 [ %i.m, %bb.e ], [ 0, %bb.d ]    ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !31 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.an = load i32, ptr %i.am, align 4, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !51 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !51 ; 2 uses
  %i.bg = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !36
  %i.bj = sext i32 %i.bf to i64                   ; 9 uses
  %i.bk = sdiv i64 %i.x, %i.bj                    ; 3 uses
  %i.bl = sdiv i64 %i.al, %i.bk                   ; 4 uses
  %i.bm = mul i64 %i.o, %i.n                      ; 3 uses
  %i.bn = mul i64 %i.bm, %i.p                     ; 2 uses
  %i.bo = icmp eq i64 %i.z, 4
  br i1 %i.bo, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread200.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6811, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #17
  unreachable

bb.g:                                             ; preds = %.thread200.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !37 ; 2 uses
  %i.br = icmp sgt i64 %i.bk, 0
  br i1 %i.br, label %.preheader209.lr.ph.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader209.lr.ph.i:                            ; preds = %bb.g
  %i.bs = icmp slt i64 %i.bl, 1
  %i.bt = icmp slt i64 %i.aj, 1
  %i.bu = icmp slt i64 %i.ah, 1
  %i.bv = sext i32 %i.bg to i64                   ; 3 uses
  %i.bw = icmp sge i32 %i.bg, %i.bf
  %i.bx = sext i32 %i.an to i64                   ; 2 uses
  %i.by = sext i32 %i.az to i64
  %i.bz = sext i32 %i.at to i64                   ; 2 uses
  %i.ca = sext i32 %i.ap to i64                   ; 2 uses
  %i.cb = sext i32 %i.bb to i64                   ; 3 uses
  %i.cc = sext i32 %i.av to i64                   ; 3 uses
  %i.cd = sext i32 %i.ar to i64                   ; 2 uses
  %i.ce = sext i32 %i.bd to i64                   ; 2 uses
  %i.cf = sext i32 %i.ax to i64                   ; 2 uses
  %i.cg = sext i32 %i.bi to i64                   ; 3 uses
  %brmerge.i = select i1 %i.bs, i1 true, i1 %i.bt
  %brmerge300.i = select i1 %brmerge.i, i1 true, i1 %i.bu
  %brmerge302.i = select i1 %brmerge300.i, i1 true, i1 %i.bw
  br i1 %brmerge302.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader209.lr.ph.split.split.split.split.i

.preheader209.lr.ph.split.split.split.split.i:    ; preds = %.preheader209.lr.ph.i
  %i.ch = icmp slt i64 %i.o, 1
  %i.ci = icmp slt i64 %i.n, 1
  %i.cj = icmp slt i64 %i.p, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !37 ; 3 uses
  %brmerge339.i = select i1 %i.cj, i1 true, i1 %i.ci
  %brmerge341.i.a = select i1 %brmerge339.i, i1 true, i1 %i.ch
  br i1 %brmerge341.i.a, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader209.us.us.us.preheader.i

.preheader209.us.us.us.preheader.i:               ; preds = %.preheader209.lr.ph.split.split.split.split.i
  %i.cm = shl nuw i64 %i.o, 1
  %i.cn = shl i64 %i.bm, 1
  %i.co = mul i64 %i.bn, %i.bj
  %i.cp = mul i64 %i.n, %i.o
  %i.cq = mul i64 %i.p, %i.bv
  %2 = shl i64 %i.cq, 1
  %3 = add i64 %2, 2
  %i.cr = mul i64 %i.cp, %3
  %i.cs = mul i64 %i.o, %i.n
  %i.ct = mul i64 %i.cs, %i.p
  %i.cu = mul i64 %i.ct, %i.aj
  %i.cv = mul i64 %i.cu, %i.ah
  %i.cw = mul i64 %i.cv, %i.bl
  %i.cx = mul i64 %i.cw, %i.bj
  %i.cy = shl i64 %i.cx, 1
  %i.cz = mul i64 %i.o, %i.n
  %i.da = mul i64 %i.cz, %i.p
  %i.db = mul i64 %i.da, %i.aj
  %i.dc = mul i64 %i.db, %i.ah
  %i.dd = mul i64 %i.dc, %i.bj
  %i.de = shl i64 %i.dd, 1
  %i.df = mul i64 %i.o, %i.n
  %i.dg = mul i64 %i.df, %i.p
  %i.dh = mul i64 %i.dg, %i.ah
  %i.di = mul i64 %i.dh, %i.bj
  %i.dj = shl i64 %i.di, 1
  %i.dk = mul i64 %i.o, %i.n
  %i.dl = mul i64 %i.dk, %i.p
  %i.dm = mul i64 %i.dl, %i.bj
  %i.dn = shl i64 %i.dm, 1
  %i.do = mul i64 %i.o, %i.n
  %i.dp = mul i64 %i.do, %i.p
  %i.dq = mul i64 %i.dp, %i.cg
  %i.dr = shl i64 %i.dq, 1
  %i.ds = mul i64 %i.o, %i.n
  %i.dt = shl i64 %i.ds, 1
  %i.du = mul i64 %i.af, %i.bv                    ; 2 uses
  %i.dv = mul i64 %i.ad, %i.cf                    ; 2 uses
  %i.dw = mul i64 %i.ab, %i.cc
  %i.dx = add i64 %i.dv, %i.dw
  %i.dy = shl nsw i64 %i.bz, 2                    ; 2 uses
  %i.dz = add i64 %i.dx, %i.dy
  %i.ea = sub i64 %i.du, %i.dz
  %i.eb = mul i64 %i.af, %i.bj
  %i.ec = mul i64 %i.ad, %i.cd
  %i.ed = mul i64 %i.ab, %i.ca
  %i.ee = shl nsw i64 %i.bx, 2
  %i.ef = mul i64 %i.af, %i.cg
  %i.eg = mul i64 %i.ad, %i.ce
  %i.eh = add nsw i64 %i.n, -1
  %i.ei = mul i64 %i.eh, %i.cb
  %i.ej = sub i64 %i.ei, %i.cc
  %i.ek = mul i64 %i.ab, %i.ej
  %i.el = add i64 %i.ek, %i.du
  %i.em = shl i64 %i.o, 2
  %i.en = add i64 %i.el, %i.em
  %i.eo = add i64 %i.dv, %i.dy
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = mul i64 %i.ab, %i.cb
  %i.er = getelementptr i8, ptr %i.bq, i64 %i.cr
  %i.es = getelementptr i8, ptr %i.cl, i64 %i.ea
  %i.et = getelementptr i8, ptr %i.cl, i64 %i.ep
  %min.iters.check100 = icmp ugt i64 %i.o, 7
  %ident.check89.not = icmp eq i32 %i.az, 1
  %or.cond = select i1 %min.iters.check100, i1 %ident.check89.not, i1 false
  %stride.check98 = icmp ugt i64 %i.o, 4611686018427387903
  %stride.check99 = icmp slt i64 %i.eq, 0
  %invariant.op124 = or i1 %stride.check98, %stride.check99
  %n.vec102 = and i64 %i.o, 4611686018427387896   ; 3 uses
  %broadcast.splatinsert105 = insertelement <8 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat106 = shufflevector <8 x i64> %broadcast.splatinsert105, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n115 = icmp eq i64 %i.o, %n.vec102
  br label %.preheader209.us.us.us.i

.preheader209.us.us.us.i:                         ; preds = %._crit_edge.split280.us.split.us.split.us.us.us.us.i, %.preheader209.us.us.us.preheader.i
  %.0188282.us.us.us.i = phi i64 [ %i.js, %._crit_edge.split280.us.split.us.split.us.us.us.us.i ], [ 0, %.preheader209.us.us.us.preheader.i ] ; 5 uses
  %i.eu = mul i64 %i.cy, %.0188282.us.us.us.i
  %i.ev = mul i64 %i.eb, %.0188282.us.us.us.i     ; 2 uses
  %i.ew = mul i64 %.0188282.us.us.us.i, %i.bl
  %i.ex = mul nsw i64 %.0188282.us.us.us.i, %i.bj
  %i.ey = getelementptr i8, ptr %i.er, i64 %i.eu
  %i.ez = getelementptr i8, ptr %i.es, i64 %i.ev
  %i.fa = getelementptr i8, ptr %i.et, i64 %i.ev
  br label %.preheader208.us.us.us.us.us.us.i

.preheader208.us.us.us.us.us.us.i:                ; preds = %._crit_edge255.split266.us.split.us.split.us.us.us.us.us.us.us.i, %.preheader209.us.us.us.i
  %.0187268.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader209.us.us.us.i ], [ %i.jr, %._crit_edge255.split266.us.split.us.split.us.us.us.us.us.us.us.i ] ; 5 uses
  %i.fb = mul i64 %i.de, %.0187268.us.us.us.us.us.us.i
  %i.fc = mul i64 %i.ec, %.0187268.us.us.us.us.us.us.i ; 2 uses
  %i.fd = add i64 %.0187268.us.us.us.us.us.us.i, %i.ew
  %i.fe = mul i64 %i.fd, %i.aj
  %i.ff = mul nsw i64 %.0187268.us.us.us.us.us.us.i, %i.cd
  %i.fg = sub i64 %i.ff, %i.cf
  %i.fh = getelementptr i8, ptr %i.ey, i64 %i.fb
  %i.fi = getelementptr i8, ptr %i.ez, i64 %i.fc
  %i.fj = getelementptr i8, ptr %i.fa, i64 %i.fc
  br label %.preheader207.us.us.us.us.us.us.us.us.us.i

.preheader207.us.us.us.us.us.us.us.us.us.i:       ; preds = %._crit_edge.split252.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i, %.preheader208.us.us.us.us.us.us.i
  %.0186254.us.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader208.us.us.us.us.us.us.i ], [ %i.jq, %._crit_edge.split252.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i ] ; 5 uses
  %i.fk = mul i64 %i.dj, %.0186254.us.us.us.us.us.us.us.us.us.i
  %i.fl = mul i64 %i.ed, %.0186254.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %reass.add.us.us.us.us.us.us.us.us.us.i = add i64 %.0186254.us.us.us.us.us.us.us.us.us.i, %i.fe
  %reass.mul.us.us.us.us.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.us.us.us.us.i, %i.ah
  %i.fm = mul nsw i64 %.0186254.us.us.us.us.us.us.us.us.us.i, %i.ca
  %i.fn = sub i64 %i.fm, %i.cc
  %i.fo = getelementptr i8, ptr %i.fh, i64 %i.fk
  %i.fp = getelementptr i8, ptr %i.fi, i64 %i.fl
  %i.fq = getelementptr i8, ptr %i.fj, i64 %i.fl
  br label %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i:     ; preds = %._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader207.us.us.us.us.us.us.us.us.us.i
  %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader207.us.us.us.us.us.us.us.us.us.i ], [ %i.jp, %._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 5 uses
  %i.fr = mul i64 %i.dn, %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.fs = mul i64 %i.ee, %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.ft = add i64 %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i, %reass.mul.us.us.us.us.us.us.us.us.us.i
  %i.fu = mul i64 %i.co, %i.ft
  %i.fv = getelementptr [2 x i8], ptr %i.bq, i64 %i.fu
  %i.fw = mul nsw i64 %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.bx
  %i.fx = sub i64 %i.fw, %i.bz                    ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fo, i64 %i.fr
  %i.fz = getelementptr i8, ptr %i.fp, i64 %i.fs
  %i.ga = getelementptr i8, ptr %i.fq, i64 %i.fs
  %broadcast.splatinsert103 = insertelement <8 x i64> poison, i64 %i.fx, i64 0
  %broadcast.splat104 = shufflevector <8 x i64> %broadcast.splatinsert103, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i
  %indvar.i = phi i64 [ %indvar.next.i, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %.0184225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.jn, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ], [ %i.bv, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %i.gb = mul i64 %i.dr, %indvar.i
  %i.gc = mul i64 %i.ef, %indvar.i                ; 2 uses
  %i.gd = add nsw i64 %.0184225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.ex
  %i.ge = mul i64 %i.gd, %i.af
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ge
  %i.gg = mul i64 %i.bn, %.0184225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.gh = getelementptr [2 x i8], ptr %i.fv, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.fy, i64 %i.gb
  %i.gj = getelementptr i8, ptr %i.fz, i64 %i.gc
  %i.gk = getelementptr i8, ptr %i.ga, i64 %i.gc
  br label %.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ], [ %i.jm, %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 5 uses
  %i.gl = mul i64 %i.dt, %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %scevgep92.a = getelementptr i8, ptr %i.gi, i64 %i.gl
  %i.gm = mul i64 %i.eg, %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %scevgep94 = getelementptr i8, ptr %i.gj, i64 %i.gm
  %scevgep313.i = getelementptr i8, ptr %i.gk, i64 %i.gm
  %i.gn = mul nsw i64 %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.ce
  %i.go = add i64 %i.gn, %i.fg                    ; 3 uses
  %i.gp = icmp slt i64 %i.go, 0
  %i.gq = mul i64 %i.go, %i.ad
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gq
  %i.gs = mul i64 %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.bm
  %i.gt = getelementptr [2 x i8], ptr %i.gh, i64 %i.gs ; 3 uses
  br i1 %i.gp, label %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i, label %.preheader.lr.ph.split.split.us228.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader.lr.ph.split.split.us228.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.gu = icmp sge i64 %i.go, %i.v
  %.fr220.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = freeze i1 %i.gu
  br i1 %.fr220.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i, label %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader

.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader: ; preds = %.preheader.lr.ph.split.split.us228.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %bound095 = icmp ult ptr %i.gt, %scevgep313.i
  %bound196 = icmp ult ptr %scevgep94, %scevgep92.a
  %found.conflict97 = and i1 %bound095, %bound196
  %.reass125 = or i1 %found.conflict97, %invariant.op124
  br label %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %.0182213.us231.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.jl, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %i.gv = mul nsw i64 %.0182213.us231.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.cb
  %i.gw = add i64 %i.gv, %i.fn                    ; 3 uses
  %i.gx = icmp slt i64 %i.gw, 0
  %i.gy = mul i64 %i.gw, %i.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gy ; 2 uses
  %i.ha = mul i64 %.0182213.us231.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.o
  %i.hb = getelementptr [2 x i8], ptr %i.gt, i64 %i.ha ; 3 uses
  br i1 %i.gx, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.split.us232.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.us232.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.hc = icmp slt i64 %i.gw, %i.t
  %.fr.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = freeze i1 %i.hc
  br i1 %.fr.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i

.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader: ; preds = %.lr.ph.split.split.us232.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %.reass125
  br i1 %brmerge, label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118, label %vector.body107

vector.body107:                                   ; preds = %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, %vector.body107
  %index108 = phi i64 [ %index.next112, %vector.body107 ], [ 0, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %vec.ind109 = phi <8 x i64> [ %vec.ind.next113, %vector.body107 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %i.hd = add <8 x i64> %vec.ind109, %broadcast.splat104 ; 3 uses
  %i.he = extractelement <8 x i64> %i.hd, i64 0
  %i.hf = icmp sgt <8 x i64> %i.hd, splat (i64 -1)
  %i.hg = icmp slt <8 x i64> %i.hd, %broadcast.splat106
  %i.hh = select <8 x i1> %i.hf, <8 x i1> %i.hg, <8 x i1> zeroinitializer ; 2 uses
  %i.hi = shl i64 %i.he, 2
  %i.hj = getelementptr i8, ptr %i.gz, i64 %i.hi
  %wide.masked.load110 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.hj, <8 x i1> %i.hh, <8 x float> poison), !tbaa !43, !alias.scope !1077 ; 2 uses
  %i.hk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.load110)
  %i.hl = fmul <8 x float> %i.hk, splat (float f0x77800000)
  %i.hm = fmul <8 x float> %i.hl, splat (float f0x08800000)
  %i.hn = bitcast <8 x float> %wide.masked.load110 to <8 x i32> ; 2 uses
  %i.ho = shl <8 x i32> %i.hn, splat (i32 1)      ; 2 uses
  %i.hp = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.ho, <8 x i32> splat (i32 1895825408))
  %i.hq = lshr exact <8 x i32> %i.hp, splat (i32 1)
  %i.hr = and <8 x i32> %i.hq, splat (i32 2139095040)
  %i.hs = add nuw <8 x i32> %i.hr, splat (i32 125829120)
  %i.ht = bitcast <8 x i32> %i.hs to <8 x float>
  %i.hu = fadd <8 x float> %i.hm, %i.ht
  %i.hv = bitcast <8 x float> %i.hu to <8 x i32>  ; 2 uses
  %i.hw = lshr <8 x i32> %i.hv, splat (i32 13)
  %i.hx = and <8 x i32> %i.hw, splat (i32 31744)
  %i.hy = and <8 x i32> %i.hv, splat (i32 4095)
  %i.hz = add nuw nsw <8 x i32> %i.hx, %i.hy
  %i.ia = lshr <8 x i32> %i.hn, splat (i32 16)
  %i.ib = and <8 x i32> %i.ia, splat (i32 32768)
  %i.ic = icmp ugt <8 x i32> %i.ho, splat (i32 -16777216)
  %i.id = select <8 x i1> %i.ic, <8 x i32> splat (i32 32256), <8 x i32> %i.hz
  %i.ie = or <8 x i32> %i.id, %i.ib
  %i.if = trunc nuw <8 x i32> %i.ie to <8 x i16>
  %predphi111 = select <8 x i1> %i.hh, <8 x i16> %i.if, <8 x i16> zeroinitializer
  %i.ig = getelementptr [2 x i8], ptr %i.hb, i64 %index108
  store <8 x i16> %predphi111, ptr %i.ig, align 2, !tbaa !41, !alias.scope !1078, !noalias !1077
  %index.next112 = add nuw i64 %index108, 8       ; 2 uses
  %vec.ind.next113 = add nuw nsw <8 x i64> %vec.ind109, splat (i64 8)
  %i.ih = icmp eq i64 %index.next112, %n.vec102
  br i1 %i.ih, label %middle.block114, label %vector.body107, !llvm.loop !1054

middle.block114:                                  ; preds = %vector.body107
  br i1 %cmp.n115, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118

.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118: ; preds = %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, %middle.block114
  %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.ph = phi i64 [ %n.vec102, %middle.block114 ], [ 0, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ]
  br label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118, %bb.i
  %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.jk, %bb.i ], [ %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader118 ] ; 3 uses
  %i.ii = mul nsw i64 %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.by
  %i.ij = add i64 %i.ii, %i.fx                    ; 3 uses
  %i.ik = icmp sgt i64 %i.ij, -1
  %.not198.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.ij, %i.r
  %or.cond199.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = select i1 %i.ik, i1 %.not198.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond199.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.il = shl i64 %i.ij, 2
  %i.im = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !43 ; 2 uses
  %i.io = tail call float @llvm.fabs.f32(float %i.in)
  %i.ip = fmul float %i.io, f0x77800000
  %i.iq = fmul float %i.ip, f0x08800000
  %i.ir = bitcast float %i.in to i32              ; 2 uses
  %i.is = shl i32 %i.ir, 1                        ; 2 uses
  %i.it = tail call i32 @llvm.umax.i32(i32 %i.is, i32 1895825408)
  %spec.store.select.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = lshr exact i32 %i.it, 1
  %i.iu = and i32 %spec.store.select.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 2139095040
  %i.iv = add nuw i32 %i.iu, 125829120
  %i.iw = bitcast i32 %i.iv to float
  %i.ix = fadd float %i.iq, %i.iw
  %i.iy = bitcast float %i.ix to i32              ; 2 uses
  %i.iz = lshr i32 %i.iy, 13
  %i.ja = and i32 %i.iz, 31744
  %i.jb = and i32 %i.iy, 4095
  %i.jc = add nuw nsw i32 %i.ja, %i.jb
  %i.jd = lshr i32 %i.ir, 16
  %i.je = and i32 %i.jd, 32768
  %i.jf = icmp ugt i32 %i.is, -16777216
  %i.jg = select i1 %i.jf, i32 32256, i32 %i.jc
  %i.jh = or i32 %i.jg, %i.je
  %i.ji = trunc nuw i32 %i.jh to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %.sink.i = phi i16 [ %i.ji, %bb.h ], [ 0, %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ]
  %i.jj = getelementptr [2 x i8], ptr %i.hb, i64 %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  store i16 %.sink.i, ptr %i.jj, align 2, !tbaa !41
  %i.jk = add nuw nsw i64 %.0210.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jk, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1055

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.split.us232.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.hb, i8 0, i64 %i.cm, i1 false), !tbaa !41
  br label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %bb.i, %middle.block114, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i
  %i.jl = add nuw nsw i64 %.0182213.us231.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond311.not.i.a = icmp eq i64 %i.jl, %i.n
  br i1 %exitcond311.not.i.a, label %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.preheader.us230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1056

._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.preheader.lr.ph.split.split.us228.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.gt, i8 0, i64 %i.cn, i1 false), !tbaa !41
  br label %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i
  %i.jm = add nuw nsw i64 %.0183221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond314.not.i.a = icmp eq i64 %i.jm, %i.p
  br i1 %exitcond314.not.i.a, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.preheader206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1057

._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.jn = add nsw i64 %.0184225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.cg ; 2 uses
  %i.jo = icmp slt i64 %i.jn, %i.bj
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %i.jo, label %.preheader206.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1058

._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.jp = add nuw nsw i64 %.0185241.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond315.not.i.a = icmp eq i64 %i.jp, %i.ah
  br i1 %exitcond315.not.i.a, label %._crit_edge.split252.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1059

._crit_edge.split252.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge227.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.jq = add nuw nsw i64 %.0186254.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond316.not.i.a = icmp eq i64 %i.jq, %i.aj
  br i1 %exitcond316.not.i.a, label %._crit_edge255.split266.us.split.us.split.us.us.us.us.us.us.us.i, label %.preheader207.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1060

._crit_edge255.split266.us.split.us.split.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.split252.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i
  %i.jr = add nuw nsw i64 %.0187268.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond317.not.i.a = icmp eq i64 %i.jr, %i.bl
  br i1 %exitcond317.not.i.a, label %._crit_edge.split280.us.split.us.split.us.us.us.us.i, label %.preheader208.us.us.us.us.us.us.i, !llvm.loop !1061

._crit_edge.split280.us.split.us.split.us.us.us.us.i: ; preds = %._crit_edge255.split266.us.split.us.split.us.us.us.us.us.us.us.i
  %i.js = add nuw nsw i64 %.0188282.us.us.us.i, 1 ; 2 uses
  %exitcond318.not.i.a = icmp eq i64 %i.js, %i.bk
  br i1 %exitcond318.not.i.a, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader209.us.us.us.i, !llvm.loop !1062

bb.j:                                             ; preds = %bb.a
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !24 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !24 ; 10 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !30
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6862, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %.not.i5 = icmp eq ptr %i.ju, null
  br i1 %.not.i5, label %.thread205.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !31
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !31
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !31
  br label %.thread205.i

.thread205.i:                                     ; preds = %bb.m, %bb.l
  %i.kf = phi i64 [ %i.kc, %bb.m ], [ 0, %bb.l ]  ; 11 uses
  %i.kg = phi i64 [ %i.ka, %bb.m ], [ 0, %bb.l ]  ; 22 uses
  %i.kh = phi i64 [ %i.ke, %bb.m ], [ 0, %bb.l ]  ; 9 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !31 ; 7 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !31
  %i.km = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !31
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !31
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !31
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !31 ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !31 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jw, i64 72
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !31 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !31 ; 6 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !31 ; 5 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !31
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !51
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !51
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !51
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !51
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !51
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !51
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !51 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !51
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !51
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !51 ; 2 uses
  %i.ly = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !36
  %i.mb = sext i32 %i.lx to i64                   ; 9 uses
  %i.mc = sdiv i64 %i.kp, %i.mb                   ; 3 uses
  %i.md = sdiv i64 %i.ld, %i.mc                   ; 4 uses
  %i.me = mul i64 %i.kg, %i.kf                    ; 3 uses
  %i.mf = mul i64 %i.me, %i.kh                    ; 2 uses
  %i.mg = icmp eq i64 %i.kr, 4
  br i1 %i.mg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread205.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6902, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #17
  unreachable

bb.o:                                             ; preds = %.thread205.i
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !37 ; 2 uses
  %i.mj = icmp sgt i64 %i.mc, 0
  br i1 %i.mj, label %.preheader214.lr.ph.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader214.lr.ph.i:                            ; preds = %bb.o
  %i.mk = icmp slt i64 %i.md, 1
  %i.ml = icmp slt i64 %i.lb, 1
  %i.mm = icmp slt i64 %i.kz, 1
  %i.mn = sext i32 %i.ly to i64                   ; 3 uses
  %i.mo = icmp sge i32 %i.ly, %i.lx
  %i.mp = sext i32 %i.lf to i64                   ; 2 uses
  %i.mq = sext i32 %i.lr to i64                   ; 5 uses
  %i.mr = sext i32 %i.ll to i64                   ; 2 uses
  %i.ms = sext i32 %i.lh to i64                   ; 2 uses
  %i.mt = sext i32 %i.lt to i64                   ; 3 uses
  %i.mu = sext i32 %i.ln to i64                   ; 3 uses
  %i.mv = sext i32 %i.lj to i64                   ; 2 uses
  %i.mw = sext i32 %i.lv to i64                   ; 2 uses
  %i.mx = sext i32 %i.lp to i64                   ; 2 uses
  %i.my = sext i32 %i.ma to i64                   ; 3 uses
  %brmerge.i7 = select i1 %i.mk, i1 true, i1 %i.ml
  %brmerge305.i = select i1 %brmerge.i7, i1 true, i1 %i.mm
  %brmerge307.i = select i1 %brmerge305.i, i1 true, i1 %i.mo
  br i1 %brmerge307.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader214.lr.ph.split.split.split.split.i

.preheader214.lr.ph.split.split.split.split.i:    ; preds = %.preheader214.lr.ph.i
  %i.mz = icmp slt i64 %i.kg, 1
  %i.na = icmp slt i64 %i.kf, 1
  %i.nb = icmp slt i64 %i.kh, 1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.jw, i64 248
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !37 ; 3 uses
  %brmerge344.i = select i1 %i.nb, i1 true, i1 %i.na
  %brmerge346.i = select i1 %brmerge344.i, i1 true, i1 %i.mz
  br i1 %brmerge346.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader214.us.us.us.preheader.i

.preheader214.us.us.us.preheader.i:               ; preds = %.preheader214.lr.ph.split.split.split.split.i
  %i.ne = shl nuw i64 %i.kg, 2
  %i.nf = shl i64 %i.me, 2
  %i.ng = mul i64 %i.mf, %i.mb
  %i.nh = mul i64 %i.kf, %i.kg
  %i.ni = mul i64 %i.kh, %i.mn
  %4 = shl i64 %i.ni, 2
  %5 = add i64 %4, 4
  %i.nj = mul i64 %i.nh, %5
  %i.nk = mul i64 %i.kg, %i.kf
  %i.nl = mul i64 %i.nk, %i.kh
  %i.nm = mul i64 %i.nl, %i.lb
  %i.nn = mul i64 %i.nm, %i.kz
  %i.no = mul i64 %i.nn, %i.md
  %i.np = mul i64 %i.no, %i.mb
  %i.nq = shl i64 %i.np, 2
  %i.nr = mul i64 %i.kg, %i.kf
  %i.ns = mul i64 %i.nr, %i.kh
  %i.nt = mul i64 %i.ns, %i.lb
  %i.nu = mul i64 %i.nt, %i.kz
  %i.nv = mul i64 %i.nu, %i.mb
  %i.nw = shl i64 %i.nv, 2
  %i.nx = mul i64 %i.kg, %i.kf
  %i.ny = mul i64 %i.nx, %i.kh
  %i.nz = mul i64 %i.ny, %i.kz
  %i.oa = mul i64 %i.nz, %i.mb
  %i.ob = shl i64 %i.oa, 2
  %i.oc = mul i64 %i.kg, %i.kf
  %i.od = mul i64 %i.oc, %i.kh
  %i.oe = mul i64 %i.od, %i.mb
  %i.of = shl i64 %i.oe, 2
  %i.og = mul i64 %i.kg, %i.kf
  %i.oh = mul i64 %i.og, %i.kh
  %i.oi = mul i64 %i.oh, %i.my
  %i.oj = shl i64 %i.oi, 2
  %i.ok = mul i64 %i.kg, %i.kf
  %i.ol = shl i64 %i.ok, 2
  %i.om = shl i64 %i.kg, 2                        ; 2 uses
  %i.on = mul i64 %i.kx, %i.mn                    ; 2 uses
  %i.oo = mul i64 %i.kv, %i.mx                    ; 2 uses
  %i.op = mul i64 %i.kt, %i.mu
  %i.oq = add i64 %i.oo, %i.op
  %i.or = shl nsw i64 %i.mr, 2                    ; 2 uses
  %i.os = add i64 %i.oq, %i.or
  %i.ot = sub i64 %i.on, %i.os
  %i.ou = mul i64 %i.kx, %i.mb
  %i.ov = mul i64 %i.kv, %i.mv
  %i.ow = mul i64 %i.kt, %i.ms
  %i.ox = shl nsw i64 %i.mp, 2
  %i.oy = mul i64 %i.kx, %i.my
  %i.oz = mul i64 %i.kv, %i.mw
  %i.pa = add nsw i64 %i.kf, -1
  %i.pb = mul i64 %i.pa, %i.mt
  %i.pc = sub i64 %i.pb, %i.mu
  %i.pd = mul i64 %i.kt, %i.pc
  %i.pe = add i64 %i.pd, %i.on
  %i.pf = add i64 %i.pe, %i.om
  %i.pg = add i64 %i.oo, %i.or
  %i.ph = sub i64 %i.pf, %i.pg
  %i.pi = mul i64 %i.kt, %i.mt
  %i.pj = getelementptr i8, ptr %i.mi, i64 %i.nj
  %i.pk = getelementptr i8, ptr %i.nd, i64 %i.ot
  %i.pl = getelementptr i8, ptr %i.nd, i64 %i.ph
  %min.iters.check = icmp ugt i64 %i.kg, 3
  %ident.check.not = icmp eq i32 %i.lr, 1
  %or.cond117 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.pm = or i64 %i.pi, %i.om
  %i.pn = icmp slt i64 %i.pm, 0
  %min.iters.check65 = icmp ult i64 %i.kg, 32
  %i.po = and i64 %i.kg, 28
  %n.vec = and i64 %i.kg, 9223372036854775776     ; 4 uses
  %broadcast.splatinsert66 = insertelement <8 x i64> poison, i64 %i.kj, i64 0
  %broadcast.splat67 = shufflevector <8 x i64> %broadcast.splatinsert66, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.kg, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.po, 0
  %n.vec74 = and i64 %i.kg, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert77 = insertelement <4 x i64> poison, i64 %i.kj, i64 0
  %broadcast.splat78 = shufflevector <4 x i64> %broadcast.splatinsert77, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n87 = icmp eq i64 %i.kg, %n.vec74
  %xtraiter = and i64 %i.kg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader214.us.us.us.i

.preheader214.us.us.us.i:                         ; preds = %._crit_edge.split285.us.split.us.split.us.us.us.us.i, %.preheader214.us.us.us.preheader.i
  %.0193287.us.us.us.i = phi i64 [ %i.vd, %._crit_edge.split285.us.split.us.split.us.us.us.us.i ], [ 0, %.preheader214.us.us.us.preheader.i ] ; 5 uses
  %i.pp = mul i64 %i.nq, %.0193287.us.us.us.i
  %i.pq = mul i64 %i.ou, %.0193287.us.us.us.i     ; 2 uses
  %i.pr = mul i64 %.0193287.us.us.us.i, %i.md
  %i.ps = mul nsw i64 %.0193287.us.us.us.i, %i.mb
  %i.pt = getelementptr i8, ptr %i.pj, i64 %i.pp
  %i.pu = getelementptr i8, ptr %i.pk, i64 %i.pq
  %i.pv = getelementptr i8, ptr %i.pl, i64 %i.pq
  br label %.preheader213.us.us.us.us.us.us.i

.preheader213.us.us.us.us.us.us.i:                ; preds = %._crit_edge260.split271.us.split.us.split.us.us.us.us.us.us.us.i, %.preheader214.us.us.us.i
  %.0192273.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader214.us.us.us.i ], [ %i.vc, %._crit_edge260.split271.us.split.us.split.us.us.us.us.us.us.us.i ] ; 5 uses
  %i.pw = mul i64 %i.nw, %.0192273.us.us.us.us.us.us.i
  %i.px = mul i64 %i.ov, %.0192273.us.us.us.us.us.us.i ; 2 uses
  %i.py = add i64 %.0192273.us.us.us.us.us.us.i, %i.pr
  %i.pz = mul i64 %i.py, %i.lb
  %i.qa = mul nsw i64 %.0192273.us.us.us.us.us.us.i, %i.mv
  %i.qb = sub i64 %i.qa, %i.mx
  %i.qc = getelementptr i8, ptr %i.pt, i64 %i.pw
  %i.qd = getelementptr i8, ptr %i.pu, i64 %i.px
  %i.qe = getelementptr i8, ptr %i.pv, i64 %i.px
  br label %.preheader212.us.us.us.us.us.us.us.us.us.i

.preheader212.us.us.us.us.us.us.us.us.us.i:       ; preds = %._crit_edge.split257.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i, %.preheader213.us.us.us.us.us.us.i
  %.0191259.us.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader213.us.us.us.us.us.us.i ], [ %i.vb, %._crit_edge.split257.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i ] ; 5 uses
  %i.qf = mul i64 %i.ob, %.0191259.us.us.us.us.us.us.us.us.us.i
  %i.qg = mul i64 %i.ow, %.0191259.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %reass.add.us.us.us.us.us.us.us.us.us.i8 = add i64 %.0191259.us.us.us.us.us.us.us.us.us.i, %i.pz
  %reass.mul.us.us.us.us.us.us.us.us.us.i9 = mul i64 %reass.add.us.us.us.us.us.us.us.us.us.i8, %i.kz
  %i.qh = mul nsw i64 %.0191259.us.us.us.us.us.us.us.us.us.i, %i.ms
  %i.qi = sub i64 %i.qh, %i.mu
  %i.qj = getelementptr i8, ptr %i.qc, i64 %i.qf
  %i.qk = getelementptr i8, ptr %i.qd, i64 %i.qg
  %i.ql = getelementptr i8, ptr %i.qe, i64 %i.qg
  br label %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i10

.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i10:   ; preds = %._crit_edge232.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader212.us.us.us.us.us.us.us.us.us.i
  %.0190246.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader212.us.us.us.us.us.us.us.us.us.i ], [ %i.va, %._crit_edge232.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 5 uses
  %i.qm = mul i64 %i.of, %.0190246.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.qn = mul i64 %i.ox, %.0190246.us.us.us.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.qo = add i64 %.0190246.us.us.us.us.us.us.us.us.us.us.us.us.i, %reass.mul.us.us.us.us.us.us.us.us.us.i9
  %i.qp = mul i64 %i.ng, %i.qo
  %i.qq = getelementptr [4 x i8], ptr %i.mi, i64 %i.qp
  %i.qr = mul nsw i64 %.0190246.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.mp
  %i.qs = sub i64 %i.qr, %i.mr                    ; 7 uses
  %i.qt = getelementptr i8, ptr %i.qj, i64 %i.qm
  %i.qu = getelementptr i8, ptr %i.qk, i64 %i.qn
  %i.qv = getelementptr i8, ptr %i.ql, i64 %i.qn
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.qs, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i64> splat (i64 8), %broadcast.splat
  %invariant.op120.a = add <8 x i64> splat (i64 16), %broadcast.splat
  %invariant.op122 = add <8 x i64> splat (i64 24), %broadcast.splat
  %broadcast.splatinsert75 = insertelement <4 x i64> poison, i64 %i.qs, i64 0
  %broadcast.splat76 = shufflevector <4 x i64> %broadcast.splatinsert75, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader211.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader211.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i16, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i10
  %indvar.i11 = phi i64 [ %indvar.next.i17, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i16 ], [ 0, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i10 ] ; 3 uses
  %.0189230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.uy, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i16 ], [ %i.mn, %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i10 ] ; 3 uses
  %i.qw = mul i64 %i.oj, %indvar.i11
  %i.qx = mul i64 %i.oy, %indvar.i11              ; 2 uses
  %i.qy = add nsw i64 %.0189230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.ps
  %i.qz = mul i64 %i.qy, %i.kx
  %i.ra = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.qz
  %i.rb = mul i64 %i.mf, %.0189230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.rc = getelementptr [4 x i8], ptr %i.qq, i64 %i.rb
  %i.rd = getelementptr i8, ptr %i.qt, i64 %i.qw
  %i.re = getelementptr i8, ptr %i.qu, i64 %i.qx
  %i.rf = getelementptr i8, ptr %i.qv, i64 %i.qx
  br label %.preheader211.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader211.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader211.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %.0188226.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader211.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ], [ %i.ux, %._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ] ; 5 uses
  %i.rg = mul i64 %i.ol, %.0188226.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %scevgep61 = getelementptr i8, ptr %i.rd, i64 %i.rg
  %i.rh = mul i64 %i.oz, %.0188226.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.re, i64 %i.rh
  %scevgep318.i = getelementptr i8, ptr %i.rf, i64 %i.rh
  %i.ri = mul nsw i64 %.0188226.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.mw
  %i.rj = add i64 %i.ri, %i.qb                    ; 3 uses
  %i.rk = icmp slt i64 %i.rj, 0
  %i.rl = mul i64 %i.rj, %i.kv
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rl
  %i.rn = mul i64 %.0188226.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.me
  %i.ro = getelementptr [4 x i8], ptr %i.rc, i64 %i.rn ; 3 uses
  br i1 %i.rk, label %._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i, label %.preheader.lr.ph.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader.lr.ph.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.preheader211.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.rp = icmp sge i64 %i.rj, %i.kn
  %.fr225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = freeze i1 %i.rp
  br i1 %.fr225.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i, label %.preheader.us235.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader

.preheader.us235.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader: ; preds = %.preheader.lr.ph.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %bound0 = icmp ult ptr %i.ro, %scevgep318.i
  %bound1 = icmp ult ptr %scevgep63, %scevgep61
  %found.conflict = and i1 %bound0, %bound1
  %i.rq = or i1 %found.conflict, %i.pn
  br label %.preheader.us235.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.preheader.us235.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.preheader.us235.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i14
  %.0187218.us236.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.uw, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i14 ], [ 0, %.preheader.us235.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %i.rr = mul nsw i64 %.0187218.us236.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.mt
  %i.rs = add i64 %i.rr, %i.qi                    ; 3 uses
  %i.rt = icmp slt i64 %i.rs, 0
  %i.ru = mul i64 %i.rs, %i.kt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.ru ; 7 uses
  %i.rw = mul i64 %.0187218.us236.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.kg
  %i.rx = getelementptr [4 x i8], ptr %i.ro, i64 %i.rw ; 8 uses
  br i1 %i.rt, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i13, label %.lr.ph.split.split.us237.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.us237.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.preheader.us235.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.ry = icmp slt i64 %i.rs, %i.kl
  %.fr.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i12 = freeze i1 %i.ry
  br i1 %.fr.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i12, label %iter.check, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i13

iter.check:                                       ; preds = %.lr.ph.split.split.us237.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %or.cond117.not = xor i1 %or.cond117, true
  %brmerge126 = select i1 %or.cond117.not, i1 true, i1 %i.rq
  br i1 %brmerge126, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %i.rz = add <8 x i64> %vec.ind, %broadcast.splat ; 3 uses
  %i.sa = extractelement <8 x i64> %i.rz, i64 0
  %.reass = add <8 x i64> %vec.ind, %invariant.op ; 2 uses
  %.reass121.a = add <8 x i64> %vec.ind, %invariant.op120.a ; 2 uses
  %.reass123 = add <8 x i64> %vec.ind, %invariant.op122 ; 2 uses
  %i.sb = icmp sgt <8 x i64> %i.rz, splat (i64 -1)
  %i.sc = icmp sgt <8 x i64> %.reass, splat (i64 -1)
  %i.sd = icmp sgt <8 x i64> %.reass121.a, splat (i64 -1)
  %i.se = icmp sgt <8 x i64> %.reass123, splat (i64 -1)
  %i.sf = icmp slt <8 x i64> %i.rz, %broadcast.splat67
  %i.sg = icmp slt <8 x i64> %.reass, %broadcast.splat67
  %i.sh = icmp slt <8 x i64> %.reass121.a, %broadcast.splat67
  %i.si = icmp slt <8 x i64> %.reass123, %broadcast.splat67
  %i.sj = select <8 x i1> %i.sb, <8 x i1> %i.sf, <8 x i1> zeroinitializer
  %i.sk = select <8 x i1> %i.sc, <8 x i1> %i.sg, <8 x i1> zeroinitializer
  %i.sl = select <8 x i1> %i.sd, <8 x i1> %i.sh, <8 x i1> zeroinitializer
  %i.sm = select <8 x i1> %i.se, <8 x i1> %i.si, <8 x i1> zeroinitializer
  %i.sn = shl i64 %i.sa, 2
  %i.so = getelementptr i8, ptr %i.rv, i64 %i.sn  ; 4 uses
  %i.sp = getelementptr i8, ptr %i.so, i64 32
  %i.sq = getelementptr i8, ptr %i.so, i64 64
  %i.sr = getelementptr i8, ptr %i.so, i64 96
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.so, <8 x i1> %i.sj, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1079
  %wide.masked.load68 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.sp, <8 x i1> %i.sk, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1079
  %wide.masked.load69 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.sq, <8 x i1> %i.sl, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1079
  %wide.masked.load70 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.sr, <8 x i1> %i.sm, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1079
  %i.ss = getelementptr [4 x i8], ptr %i.rx, i64 %index ; 4 uses
  %i.st = getelementptr i8, ptr %i.ss, i64 32
  %i.su = getelementptr i8, ptr %i.ss, i64 64
  %i.sv = getelementptr i8, ptr %i.ss, i64 96
  store <8 x float> %wide.masked.load, ptr %i.ss, align 4, !tbaa !43, !alias.scope !1080, !noalias !1079
  store <8 x float> %wide.masked.load68, ptr %i.st, align 4, !tbaa !43, !alias.scope !1080, !noalias !1079
  store <8 x float> %wide.masked.load69, ptr %i.su, align 4, !tbaa !43, !alias.scope !1080, !noalias !1079
  store <8 x float> %wide.masked.load70, ptr %i.sv, align 4, !tbaa !43, !alias.scope !1080, !noalias !1079
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.sw = icmp eq i64 %index.next, %n.vec
  br i1 %i.sw, label %middle.block, label %vector.body, !llvm.loop !1066

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i14, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat80, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind82 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next86, %vec.epilog.vector.body ] ; 2 uses
  %i.sx = add <4 x i64> %vec.ind82, %broadcast.splat76 ; 3 uses
  %i.sy = extractelement <4 x i64> %i.sx, i64 0
  %i.sz = icmp sgt <4 x i64> %i.sx, splat (i64 -1)
  %i.ta = icmp slt <4 x i64> %i.sx, %broadcast.splat78
  %i.tb = select <4 x i1> %i.sz, <4 x i1> %i.ta, <4 x i1> zeroinitializer
  %i.tc = shl i64 %i.sy, 2
  %i.td = getelementptr i8, ptr %i.rv, i64 %i.tc
  %wide.masked.load83 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.td, <4 x i1> %i.tb, <4 x float> zeroinitializer), !tbaa !43, !alias.scope !1079
  %i.te = getelementptr [4 x i8], ptr %i.rx, i64 %index81
  store <4 x float> %wide.masked.load83, ptr %i.te, align 4, !tbaa !43, !alias.scope !1080, !noalias !1079
  %index.next85 = add nuw i64 %index81, 4         ; 2 uses
  %vec.ind.next86 = add nuw nsw <4 x i64> %vec.ind82, splat (i64 4)
  %i.tf = icmp eq i64 %index.next85, %n.vec74
  br i1 %i.tf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1067

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n87, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i14, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader

.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec74, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol

.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol: ; preds = %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader, %bb.q
  %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol = phi i64 [ %i.tn, %bb.q ], [ %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.q ], [ 0, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ]
  %i.tg = mul nsw i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol, %i.mq
  %i.th = add i64 %i.tg, %i.qs                    ; 3 uses
  %i.ti = icmp sgt i64 %i.th, -1
  %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol = icmp slt i64 %i.th, %i.kj
  %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol = select i1 %i.ti, i1 %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol, i1 false
  br i1 %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol
  %i.tj = shl i64 %i.th, 2
  %i.tk = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.tj
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol
  %.sink.i18.prol = phi float [ %i.tl, %bb.p ], [ 0.000000e+00, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol ]
  %i.tm = getelementptr [4 x i8], ptr %i.rx, i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol
  store float %.sink.i18.prol, ptr %i.tm, align 4, !tbaa !43
  %i.tn = add nuw nsw i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol, !llvm.loop !1068

.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol.loopexit: ; preds = %bb.q, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader
  %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.unr = phi i64 [ %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.preheader ], [ %i.tn, %bb.q ]
  %i.to = sub nsw i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.ph, %i.kg
  %i.tp = icmp ugt i64 %i.to, -4
  br i1 %i.tp, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i14, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.v
  %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.uv, %bb.v ], [ %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.unr, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol.loopexit ] ; 6 uses
  %i.tq = mul nsw i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.mq
  %i.tr = add i64 %i.tq, %i.qs                    ; 3 uses
  %i.ts = icmp sgt i64 %i.tr, -1
  %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.tr, %i.kj
  %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i = select i1 %i.ts, i1 %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %bb.r, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1

bb.r:                                             ; preds = %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.tt = shl i64 %i.tr, 2
  %i.tu = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.tt
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !43
  br label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1

.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1: ; preds = %bb.r, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %.sink.i18 = phi float [ %i.tv, %bb.r ], [ 0.000000e+00, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i ]
  %i.tw = getelementptr [4 x i8], ptr %i.rx, i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  store float %.sink.i18, ptr %i.tw, align 4, !tbaa !43
  %i.tx = add nuw nsw i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.ty = mul nsw i64 %i.tx, %i.mq
  %i.tz = add i64 %i.ty, %i.qs                    ; 3 uses
  %i.ua = icmp sgt i64 %i.tz, -1
  %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1 = icmp slt i64 %i.tz, %i.kj
  %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1 = select i1 %i.ua, i1 %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1, i1 false
  br i1 %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1, label %bb.s, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2

bb.s:                                             ; preds = %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1
  %i.ub = shl i64 %i.tz, 2
  %i.uc = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.ub
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !43
  br label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2

.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2: ; preds = %bb.s, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1
  %.sink.i18.1 = phi float [ %i.ud, %bb.s ], [ 0.000000e+00, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.1 ]
  %i.ue = getelementptr [4 x i8], ptr %i.rx, i64 %i.tx
  store float %.sink.i18.1, ptr %i.ue, align 4, !tbaa !43
  %i.uf = add nuw nsw i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %i.ug = mul nsw i64 %i.uf, %i.mq
  %i.uh = add i64 %i.ug, %i.qs                    ; 3 uses
  %i.ui = icmp sgt i64 %i.uh, -1
  %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2 = icmp slt i64 %i.uh, %i.kj
  %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2 = select i1 %i.ui, i1 %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2, i1 false
  br i1 %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2, label %bb.t, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3

bb.t:                                             ; preds = %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2
  %i.uj = shl i64 %i.uh, 2
  %i.uk = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.uj
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !43
  br label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3

.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3: ; preds = %bb.t, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2
  %.sink.i18.2 = phi float [ %i.ul, %bb.t ], [ 0.000000e+00, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.2 ]
  %i.um = getelementptr [4 x i8], ptr %i.rx, i64 %i.uf
  store float %.sink.i18.2, ptr %i.um, align 4, !tbaa !43
  %i.un = add nuw nsw i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 3 ; 2 uses
  %i.uo = mul nsw i64 %i.un, %i.mq
  %i.up = add i64 %i.uo, %i.qs                    ; 3 uses
  %i.uq = icmp sgt i64 %i.up, -1
  %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3 = icmp slt i64 %i.up, %i.kj
  %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3 = select i1 %i.uq, i1 %.not203.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3, i1 false
  br i1 %or.cond204.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3
  %i.ur = shl i64 %i.up, 2
  %i.us = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.ur
  %i.ut = load float, ptr %i.us, align 4, !tbaa !43
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3
  %.sink.i18.3 = phi float [ %i.ut, %bb.u ], [ 0.000000e+00, %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.3 ]
  %i.uu = getelementptr [4 x i8], ptr %i.rx, i64 %i.un
  store float %.sink.i18.3, ptr %i.uu, align 4, !tbaa !43
  %i.uv = add nuw nsw i64 %.0215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond.not.i19.3 = icmp eq i64 %i.uv, %i.kg
  br i1 %exitcond.not.i19.3, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i14, label %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1069

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i13: ; preds = %.lr.ph.split.split.us237.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader.us235.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.rx, i8 0, i64 %i.ne, i1 false), !tbaa !43
  br label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i14

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i14: ; preds = %.lr.ph.split.split.split.us238.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.v, %middle.block, %vec.epilog.middle.block, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i13
  %i.uw = add nuw nsw i64 %.0187218.us236.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond316.not.i15 = icmp eq i64 %i.uw, %i.kf
  br i1 %exitcond316.not.i15, label %._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %.preheader.us235.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1070

._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.preheader.lr.ph.split.split.us233.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %.preheader211.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ro, i8 0, i64 %i.nf, i1 false), !tbaa !43
  br label %._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i

._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i14, %._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.sink.split.i
  %i.ux = add nuw nsw i64 %.0188226.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond319.not.i.a = icmp eq i64 %i.ux, %i.kh
  br i1 %exitcond319.not.i.a, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i16, label %.preheader211.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1071

._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i16: ; preds = %._crit_edge219.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.uy = add nsw i64 %.0189230.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, %i.my ; 2 uses
  %i.uz = icmp slt i64 %i.uy, %i.mb
  %indvar.next.i17 = add i64 %indvar.i11, 1
  br i1 %i.uz, label %.preheader211.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i, label %._crit_edge232.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1072

._crit_edge232.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i16
  %i.va = add nuw nsw i64 %.0190246.us.us.us.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond320.not.i.a = icmp eq i64 %i.va, %i.kz
  br i1 %exitcond320.not.i.a, label %._crit_edge.split257.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.i10, !llvm.loop !1073

._crit_edge.split257.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i: ; preds = %._crit_edge232.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.i
  %i.vb = add nuw nsw i64 %.0191259.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond321.not.i = icmp eq i64 %i.vb, %i.lb
  br i1 %exitcond321.not.i, label %._crit_edge260.split271.us.split.us.split.us.us.us.us.us.us.us.i, label %.preheader212.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1074

._crit_edge260.split271.us.split.us.split.us.us.us.us.us.us.us.i: ; preds = %._crit_edge.split257.us.split.us.split.us.us.us.us.us.us.us.us.us.us.i
  %i.vc = add nuw nsw i64 %.0192273.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond322.not.i = icmp eq i64 %i.vc, %i.md
  br i1 %exitcond322.not.i, label %._crit_edge.split285.us.split.us.split.us.us.us.us.i, label %.preheader213.us.us.us.us.us.us.i, !llvm.loop !1075

._crit_edge.split285.us.split.us.split.us.us.us.us.i: ; preds = %._crit_edge260.split271.us.split.us.split.us.us.us.us.us.us.us.i
  %i.vd = add nuw nsw i64 %.0193287.us.us.us.i, 1 ; 2 uses
  %exitcond323.not.i = icmp eq i64 %i.vd, %i.mc
  br i1 %exitcond323.not.i, label %_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader214.us.us.us.i, !llvm.loop !1076

bb.w:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6957, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL34ggml_compute_forward_im2col_3d_f16PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.split285.us.split.us.split.us.us.us.us.i, %._crit_edge.split280.us.split.us.split.us.us.us.us.i, %.preheader214.lr.ph.split.split.split.split.i, %.preheader214.lr.ph.i, %bb.o, %.preheader209.lr.ph.split.split.split.split.i, %.preheader209.lr.ph.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_col2im_1d(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 13 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  switch i32 %i.c, label %bb.ak [
    i32 0, label %bb.b
    i32 1, label %bb.o
    i32 30, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7023, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.115) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %1)
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7024, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.78) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 6 uses
  %i.j = sext i32 %i.g to i64                     ; 2 uses
  %i.k = sdiv i64 %i.i, %i.j                      ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = load i32, ptr %0, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = add i64 %i.m, -1
  %i.w = add i64 %i.v, %i.u
  %i.x = sdiv i64 %i.w, %i.u                      ; 2 uses
  %i.y = sext i32 %i.r to i64
  %i.z = mul i64 %i.x, %i.y                       ; 3 uses
  %i.aa = add i64 %i.z, %i.x
  %i.ab = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.m) ; 2 uses
  %i.ac = icmp sgt i32 %i.g, 0
  br i1 %i.ac, label %.preheader.lr.ph.i, label %_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader.lr.ph.i:                               ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.aj = icmp slt i64 %i.z, %i.ab
  %i.ak = sext i32 %i.ag to i64
  %i.al = sext i32 %i.ai to i64                   ; 8 uses
  %i.am = sub i64 %i.al, %i.k
  %i.an = add nsw i64 %i.ae, -1
  br i1 %i.aj, label %.preheader.i, label %_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge80.i
  %.06981.i = phi i64 [ %i.ar, %._crit_edge80.i ], [ 0, %.preheader.lr.ph.i ] ; 3 uses
  %i.ao = mul nuw nsw i64 %.06981.i, %i.k
  %i.ap = getelementptr [4 x i8], ptr %i.o, i64 %i.ao ; 5 uses
  %i.aq = mul nsw i64 %.06981.i, %i.m
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.q, i64 %i.aq
  br label %bb.g

._crit_edge80.i:                                  ; preds = %._crit_edge.i
  %i.ar = add nuw nsw i64 %.06981.i, 1            ; 2 uses
  %exitcond84.not.i = icmp eq i64 %i.ar, %i.j
  br i1 %exitcond84.not.i, label %_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader.i, !llvm.loop !1081

bb.g:                                             ; preds = %._crit_edge.i, %.preheader.i
  %.06878.i = phi i64 [ %i.z, %.preheader.i ], [ %i.bk, %._crit_edge.i ] ; 3 uses
  %i.as = add nsw i64 %.06878.i, %i.ak            ; 7 uses
  %i.at = add i64 %i.am, %i.as
  %i.au = sdiv i64 %i.at, %i.al
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.au, i64 0) ; 5 uses
  %i.av = sdiv i64 %i.as, %i.al
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.av, i64 %i.an) ; 4 uses
  %.not7475.i = icmp sgt i64 %spec.store.select.i, %spec.select.i
  br i1 %.not7475.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.aw = add i64 %spec.select.i, 1
  %i.ax = sub i64 %i.aw, %spec.store.select.i
  %i.ay = sub i64 %spec.select.i, %spec.store.select.i
  %xtraiter68 = and i64 %i.ax, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.i
  %.077.i.prol = phi i64 [ %i.bi, %bb.i ], [ %spec.store.select.i, %.lr.ph.i.preheader ] ; 3 uses
  %.06676.i.prol = phi float [ %.1.i.prol, %bb.i ], [ 0.000000e+00, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.i ], [ 0, %.lr.ph.i.preheader ]
  %i.az = mul nsw i64 %.077.i.prol, %i.al
  %i.ba = sub nsw i64 %i.as, %i.az                ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  %i.bc = icmp slt i64 %i.ba, %i.k
  %or.cond.i.prol = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond.i.prol, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.prol
  %i.bd = mul nsw i64 %.077.i.prol, %i.i
  %i.be = getelementptr [4 x i8], ptr %i.ap, i64 %i.ba
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !43
  %i.bh = fadd float %.06676.i.prol, %i.bg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.prol
  %.1.i.prol = phi float [ %i.bh, %bb.h ], [ %.06676.i.prol, %.lr.ph.i.prol ] ; 3 uses
  %i.bi = add nuw i64 %.077.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1082

.lr.ph.i.prol.loopexit:                           ; preds = %bb.i, %.lr.ph.i.preheader
  %.1.i.lcssa.unr = phi float [ poison, %.lr.ph.i.preheader ], [ %.1.i.prol, %bb.i ]
  %.077.i.unr = phi i64 [ %spec.store.select.i, %.lr.ph.i.preheader ], [ %i.bi, %bb.i ]
  %.06676.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %.1.i.prol, %bb.i ]
  %i.bj = icmp ult i64 %i.ay, 3
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.n, %bb.g
  %.066.lcssa.i = phi float [ 0.000000e+00, %bb.g ], [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.3, %bb.n ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.06878.i
  store float %.066.lcssa.i, ptr %gep.i, align 4, !tbaa !43
  %i.bk = add nsw i64 %.06878.i, 1                ; 2 uses
  %exitcond83.not.i = icmp eq i64 %i.bk, %i.ab
  br i1 %exitcond83.not.i, label %._crit_edge80.i, label %bb.g, !llvm.loop !1083

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.n
  %.077.i = phi i64 [ %i.cy, %bb.n ], [ %.077.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.06676.i = phi float [ %.1.i.3, %bb.n ], [ %.06676.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.bl = mul nsw i64 %.077.i, %i.al
  %i.bm = sub nsw i64 %i.as, %i.bl                ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  %i.bo = icmp slt i64 %i.bm, %i.k
  %or.cond.i = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.i, label %bb.j, label %.lr.ph.i.1

bb.j:                                             ; preds = %.lr.ph.i
  %i.bp = mul nsw i64 %.077.i, %i.i
  %i.bq = getelementptr [4 x i8], ptr %i.ap, i64 %i.bm
  %i.br = getelementptr [4 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load float, ptr %i.br, align 4, !tbaa !43
  %i.bt = fadd float %.06676.i, %i.bs
  br label %.lr.ph.i.1
end_hunk_0
