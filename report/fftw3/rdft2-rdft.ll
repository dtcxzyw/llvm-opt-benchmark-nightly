Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/rdft2-rdft?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@apply_r2hc:bb.a
  br i1 %lcmp.mod316.not, label %._crit_edge.split.split.us.us.us, label %._crit_edge.i.us59.us.us.epil.preheader

._crit_edge.i.us59.us.us.epil.preheader:          ; preds = %._crit_edge.split.split.us.us.us.unr-lcssa, %.lr.ph.us.us98
  %.056.us60.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us98 ], [ %i.jh, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  %.155.us61.us.us.epil.init = phi ptr [ %.04872.us.us100, %.lr.ph.us.us98 ], [ %i.jj, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  %.15054.us62.us.us.epil.init = phi ptr [ %.04971.us.us101, %.lr.ph.us.us98 ], [ %i.ji, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod319)
  br label %._crit_edge.i.us59.us.us.epil

._crit_edge.i.us59.us.us.epil:                    ; preds = %._crit_edge.i.us59.us.us.epil, %._crit_edge.i.us59.us.us.epil.preheader
  %.056.us60.us.us.epil = phi i64 [ %.056.us60.us.us.epil.init, %._crit_edge.i.us59.us.us.epil.preheader ], [ %i.jr, %._crit_edge.i.us59.us.us.epil ] ; 2 uses
  %.155.us61.us.us.epil = phi ptr [ %.155.us61.us.us.epil.init, %._crit_edge.i.us59.us.us.epil.preheader ], [ %i.jt, %._crit_edge.i.us59.us.us.epil ] ; 3 uses
  %.15054.us62.us.us.epil = phi ptr [ %.15054.us62.us.us.epil.init, %._crit_edge.i.us59.us.us.epil.preheader ], [ %i.js, %._crit_edge.i.us59.us.us.epil ] ; 3 uses
  %epil.iter315 = phi i64 [ 0, %._crit_edge.i.us59.us.us.epil.preheader ], [ %epil.iter315.next, %._crit_edge.i.us59.us.us.epil ]
  %i.jk = mul nsw i64 %.056.us60.us.us.epil, %i.h
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.jk ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !27
  store double %i.jm, ptr %.15054.us62.us.us.epil, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us61.us.us.epil, align 8, !tbaa !27
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !27
  %i.jp = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us.epil, i64 %i.p
  store double %i.jo, ptr %i.jp, align 8, !tbaa !27
  %i.jq = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us.epil, i64 %i.p
  store double 0.000000e+00, ptr %i.jq, align 8, !tbaa !27
  %i.jr = add nuw nsw i64 %.056.us60.us.us.epil, 1
  %i.js = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us.epil, i64 %i.n ; 2 uses
  %i.jt = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us.epil, i64 %i.n ; 2 uses
  %epil.iter315.next = add i64 %epil.iter315, 1   ; 2 uses
  %epil.iter315.cmp.not = icmp eq i64 %epil.iter315.next, %xtraiter314
  br i1 %epil.iter315.cmp.not, label %._crit_edge.split.split.us.us.us, label %._crit_edge.i.us59.us.us.epil, !llvm.loop !69

._crit_edge.split.split.us.us.us:                 ; preds = %._crit_edge.i.us59.us.us.epil, %._crit_edge.split.split.us.us.us.unr-lcssa
  %.lcssa300 = phi ptr [ %i.ji, %._crit_edge.split.split.us.us.us.unr-lcssa ], [ %i.js, %._crit_edge.i.us59.us.us.epil ] ; 2 uses
  %.lcssa299 = phi ptr [ %i.jj, %._crit_edge.split.split.us.us.us.unr-lcssa ], [ %i.jt, %._crit_edge.i.us59.us.us.epil ] ; 2 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %.05269.us.us103, i64 %i.u ; 2 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %.05170.us.us102, i64 %i.u ; 2 uses
  %i.jw = add nuw nsw i64 %.04773.us.us99, %.fr121 ; 2 uses
  %.not.us.us104 = icmp sgt i64 %i.jw, %i.d
  br i1 %.not.us.us104, label %._crit_edge76, label %.lr.ph.us.us98, !llvm.loop !60

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split.split.us86
  %.04773.us = phi i64 [ %i.mc, %._crit_edge.split.split.us86 ], [ %.fr121, %.lr.ph.us.preheader ]
  %.04872.us = phi ptr [ %.lcssa304, %._crit_edge.split.split.us86 ], [ %4, %.lr.ph.us.preheader ] ; 2 uses
  %.04971.us = phi ptr [ %.lcssa305, %._crit_edge.split.split.us86 ], [ %3, %.lr.ph.us.preheader ] ; 2 uses
  %.05170.us = phi ptr [ %i.mb, %._crit_edge.split.split.us86 ], [ %2, %.lr.ph.us.preheader ]
  %.05269.us = phi ptr [ %i.ma, %._crit_edge.split.split.us86 ], [ %1, %.lr.ph.us.preheader ] ; 2 uses
  %i.jx = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.jx(ptr noundef %i.b, ptr noundef %.05269.us, ptr noundef %i.s) #4
  br i1 %i.hs, label %._crit_edge.i.us.epil.preheader, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph.us, %._crit_edge.i.us
  %.056.us83 = phi i64 [ %i.lr, %._crit_edge.i.us ], [ 0, %.lr.ph.us ] ; 9 uses
  %.155.us84 = phi ptr [ %i.lt, %._crit_edge.i.us ], [ %.04872.us, %.lr.ph.us ] ; 2 uses
  %.15054.us85 = phi ptr [ %i.ls, %._crit_edge.i.us ], [ %.04971.us, %.lr.ph.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %._crit_edge.i.us ], [ 0, %.lr.ph.us ]
  %i.jy = mul nsw i64 %.056.us83, %i.h
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !27
  store double %i.ka, ptr %.15054.us85, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us84, align 8, !tbaa !27
  %i.kb = or disjoint i64 %.056.us83, 1
  %i.kc = getelementptr inbounds [8 x i8], ptr %.15054.us85, i64 %i.n ; 2 uses
  %i.kd = getelementptr inbounds [8 x i8], ptr %.155.us84, i64 %i.n ; 2 uses
  %i.ke = mul nsw i64 %i.kb, %i.h
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ke
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !27
  store double %i.kg, ptr %i.kc, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.kd, align 8, !tbaa !27
  %i.kh = or disjoint i64 %.056.us83, 2
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.n ; 2 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.n ; 2 uses
  %i.kk = mul nsw i64 %i.kh, %i.h
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kk
  %i.km = load double, ptr %i.kl, align 8, !tbaa !27
  store double %i.km, ptr %i.ki, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.kj, align 8, !tbaa !27
  %i.kn = or disjoint i64 %.056.us83, 3
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.n ; 2 uses
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.n ; 2 uses
  %i.kq = mul nsw i64 %i.kn, %i.h
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kq
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !27
  store double %i.ks, ptr %i.ko, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.kp, align 8, !tbaa !27
  %i.kt = or disjoint i64 %.056.us83, 4
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.n ; 2 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.n ; 2 uses
  %i.kw = mul nsw i64 %i.kt, %i.h
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kw
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !27
  store double %i.ky, ptr %i.ku, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.kv, align 8, !tbaa !27
  %i.kz = or disjoint i64 %.056.us83, 5
  %i.la = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.n ; 2 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.n ; 2 uses
  %i.lc = mul nsw i64 %i.kz, %i.h
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !27
  store double %i.le, ptr %i.la, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.lb, align 8, !tbaa !27
  %i.lf = or disjoint i64 %.056.us83, 6
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.n ; 2 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.n ; 2 uses
  %i.li = mul nsw i64 %i.lf, %i.h
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !27
  store double %i.lk, ptr %i.lg, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.lh, align 8, !tbaa !27
  %i.ll = or disjoint i64 %.056.us83, 7
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.n ; 2 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lh, i64 %i.n ; 2 uses
  %i.lo = mul nsw i64 %i.ll, %i.h
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lo
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !27
  store double %i.lq, ptr %i.lm, align 8, !tbaa !27
  store double 0.000000e+00, ptr %i.ln, align 8, !tbaa !27
  %i.lr = add nuw nsw i64 %.056.us83, 8           ; 2 uses
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.n ; 3 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.n ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.split.us86.unr-lcssa, label %._crit_edge.i.us, !llvm.loop !59

._crit_edge.split.split.us86.unr-lcssa:           ; preds = %._crit_edge.i.us
  br i1 %lcmp.mod.not, label %._crit_edge.split.split.us86, label %._crit_edge.i.us.epil.preheader

._crit_edge.i.us.epil.preheader:                  ; preds = %._crit_edge.split.split.us86.unr-lcssa, %.lr.ph.us
  %.056.us83.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.lr, %._crit_edge.split.split.us86.unr-lcssa ]
  %.155.us84.epil.init = phi ptr [ %.04872.us, %.lr.ph.us ], [ %i.lt, %._crit_edge.split.split.us86.unr-lcssa ]
  %.15054.us85.epil.init = phi ptr [ %.04971.us, %.lr.ph.us ], [ %i.ls, %._crit_edge.split.split.us86.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod313)
  br label %._crit_edge.i.us.epil

._crit_edge.i.us.epil:                            ; preds = %._crit_edge.i.us.epil, %._crit_edge.i.us.epil.preheader
  %.056.us83.epil = phi i64 [ %.056.us83.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.lx, %._crit_edge.i.us.epil ] ; 2 uses
  %.155.us84.epil = phi ptr [ %.155.us84.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.lz, %._crit_edge.i.us.epil ] ; 2 uses
  %.15054.us85.epil = phi ptr [ %.15054.us85.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.ly, %._crit_edge.i.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %._crit_edge.i.us.epil.preheader ], [ %epil.iter.next, %._crit_edge.i.us.epil ]
  %i.lu = mul nsw i64 %.056.us83.epil, %i.h
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lu
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !27
  store double %i.lw, ptr %.15054.us85.epil, align 8, !tbaa !27
  store double 0.000000e+00, ptr %.155.us84.epil, align 8, !tbaa !27
  %i.lx = add nuw nsw i64 %.056.us83.epil, 1
  %i.ly = getelementptr inbounds [8 x i8], ptr %.15054.us85.epil, i64 %i.n ; 2 uses
  %i.lz = getelementptr inbounds [8 x i8], ptr %.155.us84.epil, i64 %i.n ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.split.us86, label %._crit_edge.i.us.epil, !llvm.loop !70

._crit_edge.split.split.us86:                     ; preds = %._crit_edge.i.us.epil, %._crit_edge.split.split.us86.unr-lcssa
  %.lcssa305 = phi ptr [ %i.ls, %._crit_edge.split.split.us86.unr-lcssa ], [ %i.ly, %._crit_edge.i.us.epil ] ; 2 uses
  %.lcssa304 = phi ptr [ %i.lt, %._crit_edge.split.split.us86.unr-lcssa ], [ %i.lz, %._crit_edge.i.us.epil ] ; 2 uses
  %i.ma = getelementptr inbounds [8 x i8], ptr %.05269.us, i64 %i.u ; 2 uses
  %i.mb = getelementptr inbounds [8 x i8], ptr %.05170.us, i64 %i.u ; 2 uses
  %i.mc = add nuw nsw i64 %.04773.us, %.fr121     ; 2 uses
  %.not.us = icmp sgt i64 %i.mc, %i.d
  br i1 %.not.us, label %._crit_edge76, label %.lr.ph.us, !llvm.loop !60

.lr.ph75.split:                                   ; preds = %.lr.ph75, %.lr.ph75.split
  %.04773 = phi i64 [ %i.mg, %.lr.ph75.split ], [ %.fr121, %.lr.ph75 ]
  %.05170 = phi ptr [ %i.mf, %.lr.ph75.split ], [ %2, %.lr.ph75 ]
  %.05269 = phi ptr [ %i.me, %.lr.ph75.split ], [ %1, %.lr.ph75 ] ; 2 uses
  %i.md = load ptr, ptr %i.t, align 8, !tbaa !26
  tail call void %i.md(ptr noundef %i.b, ptr noundef %.05269, ptr noundef %i.s) #4
  %i.me = getelementptr inbounds [8 x i8], ptr %.05269, i64 %i.u ; 2 uses
  %i.mf = getelementptr inbounds [8 x i8], ptr %.05170, i64 %i.u ; 2 uses
  %i.mg = add nsw i64 %.04773, %.fr121            ; 2 uses
  %.not = icmp sgt i64 %i.mg, %i.d
  br i1 %.not, label %._crit_edge76, label %.lr.ph75.split, !llvm.loop !60

._crit_edge76:                                    ; preds = %.lr.ph75.split, %._crit_edge.split.split.us86, %._crit_edge.split.split.us.us.us, %._crit_edge.split.us.us.us.split, %._crit_edge.split.us.us.us.split.us.us, %bb.a
  %.052.lcssa = phi ptr [ %1, %bb.a ], [ %i.ma, %._crit_edge.split.split.us86 ], [ %i.ho, %._crit_edge.split.us.us.us.split ], [ %i.er, %._crit_edge.split.us.us.us.split.us.us ], [ %i.ju, %._crit_edge.split.split.us.us.us ], [ %i.me, %.lr.ph75.split ]
  %.051.lcssa = phi ptr [ %2, %bb.a ], [ %i.mb, %._crit_edge.split.split.us86 ], [ %i.hp, %._crit_edge.split.us.us.us.split ], [ %i.es, %._crit_edge.split.us.us.us.split.us.us ], [ %i.jv, %._crit_edge.split.split.us.us.us ], [ %i.mf, %.lr.ph75.split ]
  %.049.lcssa = phi ptr [ %3, %bb.a ], [ %.lcssa305, %._crit_edge.split.split.us86 ], [ %i.hm, %._crit_edge.split.us.us.us.split ], [ %i.ep, %._crit_edge.split.us.us.us.split.us.us ], [ %.lcssa300, %._crit_edge.split.split.us.us.us ], [ %3, %.lr.ph75.split ]
  %.048.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa304, %._crit_edge.split.split.us86 ], [ %i.hn, %._crit_edge.split.us.us.us.split ], [ %i.eq, %._crit_edge.split.us.us.us.split.us.us ], [ %.lcssa299, %._crit_edge.split.split.us.us.us ], [ %4, %.lr.ph75.split ]
  tail call void @fftw_ifree(ptr noundef %i.s) #4
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !18 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 56
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !26
  tail call void %i.mk(ptr noundef %i.mi, ptr noundef %.052.lcssa, ptr noundef %.051.lcssa, ptr noundef %.049.lcssa, ptr noundef %.048.lcssa) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_hc2r(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 14 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21   ; 22 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25   ; 16 uses
  %i.q = shl i64 %i.f, 3
  %i.r = mul i64 %i.q, %i.h
  %i.s = tail call ptr @fftw_malloc_plain(i64 noundef %i.r) #4 ; 22 uses
  %.not68 = icmp sgt i64 %i.f, %i.d
  br i1 %.not68, label %._crit_edge74, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.t = icmp sgt i64 %i.f, 0
  %i.u = add i64 %i.j, -3                         ; 4 uses
  %i.v = lshr i64 %i.u, 1                         ; 3 uses
  %i.w = add nuw nsw i64 %i.v, 2                  ; 2 uses
  %i.x = and i64 %i.u, -2
  %i.y = add nuw i64 %i.x, 4
  %i.z = icmp eq i64 %i.j, 2
  %i.aa = icmp eq i64 %i.y, %i.j
  %i.ab = mul nsw i64 %i.w, %i.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %i.ad = mul nsw i64 %i.n, %i.f                  ; 10 uses
  br i1 %i.t, label %.preheader.lr.ph.split.us, label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ae = icmp sgt i64 %i.j, 2
  br i1 %i.ae, label %.preheader.lr.ph.split.us.split.us, label %.preheader.lr.ph.split.us.split

.preheader.lr.ph.split.us.split.us:               ; preds = %.preheader.lr.ph.split.us
  br i1 %i.aa, label %.preheader.us.us.us.preheader, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us.split.us
  %i.af = add nuw i64 %i.v, 1                     ; 2 uses
  %xtraiter223 = and i64 %i.af, 3                 ; 3 uses
  %i.ag = icmp ult i64 %i.u, 6
  %unroll_iter227 = and i64 %i.af, -4
  %lcmp.mod225.not = icmp eq i64 %xtraiter223, 0
  %lcmp.mod226 = icmp ne i64 %xtraiter223, 0
  br label %.preheader.us.us

.preheader.us.us.us.preheader:                    ; preds = %.preheader.lr.ph.split.us.split.us
  %i.ah = add nuw i64 %i.v, 1                     ; 2 uses
  %xtraiter229 = and i64 %i.ah, 3                 ; 3 uses
  %i.ai = icmp ult i64 %i.u, 6
  %unroll_iter233 = and i64 %i.ah, -4
  %lcmp.mod231.not = icmp eq i64 %xtraiter229, 0
  %lcmp.mod232 = icmp ne i64 %xtraiter229, 0
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %._crit_edge.split.us.us.us.split.us.us
  %.04773.us.us.us = phi i64 [ %i.co, %._crit_edge.split.us.us.us.split.us.us ], [ %i.f, %.preheader.us.us.us.preheader ]
  %.04872.us.us.us = phi ptr [ %i.ck, %._crit_edge.split.us.us.us.split.us.us ], [ %4, %.preheader.us.us.us.preheader ]
  %.04971.us.us.us = phi ptr [ %i.cj, %._crit_edge.split.us.us.us.split.us.us ], [ %3, %.preheader.us.us.us.preheader ]
  %.05170.us.us.us = phi ptr [ %i.cn, %._crit_edge.split.us.us.us.split.us.us ], [ %2, %.preheader.us.us.us.preheader ]
  %.05269.us.us.us = phi ptr [ %i.cm, %._crit_edge.split.us.us.us.split.us.us ], [ %1, %.preheader.us.us.us.preheader ] ; 2 uses
  br label %.lr.ph.preheader.i.us.us.us.us.us

.lr.ph.preheader.i.us.us.us.us.us:                ; preds = %._crit_edge.loopexit.i.us.us.us.us.us, %.preheader.us.us.us
  %.056.us.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us ], [ %i.ci, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 2 uses
  %.155.us.us.us.us.us = phi ptr [ %.04872.us.us.us, %.preheader.us.us.us ], [ %i.ck, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 6 uses
  %.15054.us.us.us.us.us = phi ptr [ %.04971.us.us.us, %.preheader.us.us.us ], [ %i.cj, %._crit_edge.loopexit.i.us.us.us.us.us ] ; 8 uses
  %i.aj = mul nsw i64 %.056.us.us.us.us.us, %i.h
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aj ; 12 uses
  %i.al = load double, ptr %.15054.us.us.us.us.us, align 8, !tbaa !27
  store double %i.al, ptr %i.ak, align 8, !tbaa !27
  br i1 %i.ai, label %.lr.ph.i.us.us.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us.us.us

.lr.ph.i.us.us.us.us.us:                          ; preds = %.lr.ph.preheader.i.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us
  %.026.i.us.us.us.us.us = phi i64 [ %i.bv, %.lr.ph.i.us.us.us.us.us ], [ 1, %.lr.ph.preheader.i.us.us.us.us.us ] ; 7 uses
  %niter234 = phi i64 [ %niter234.next.3, %.lr.ph.i.us.us.us.us.us ], [ 0, %.lr.ph.preheader.i.us.us.us.us.us ]
  %i.am = mul nsw i64 %.026.i.us.us.us.us.us, %i.p ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.026.i.us.us.us.us.us
  store double %i.ao, ptr %i.ap, align 8, !tbaa !27
  %i.aq = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.am
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !27
  %i.as = sub nuw nsw i64 %i.j, %.026.i.us.us.us.us.us
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.as
  store double %i.ar, ptr %i.at, align 8, !tbaa !27
  %i.au = add nuw nsw i64 %.026.i.us.us.us.us.us, 1 ; 3 uses
  %i.av = mul nsw i64 %i.au, %i.p                 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.au
  store double %i.ax, ptr %i.ay, align 8, !tbaa !27
  %i.az = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.av
  %i.ba = load double, ptr %i.az, align 8, !tbaa !27
  %i.bb = sub nuw nsw i64 %i.j, %i.au
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bb
  store double %i.ba, ptr %i.bc, align 8, !tbaa !27
  %i.bd = add nuw nsw i64 %.026.i.us.us.us.us.us, 2 ; 3 uses
  %i.be = mul nsw i64 %i.bd, %i.p                 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bd
  store double %i.bg, ptr %i.bh, align 8, !tbaa !27
  %i.bi = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.be
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !27
  %i.bk = sub nuw nsw i64 %i.j, %i.bd
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bk
  store double %i.bj, ptr %i.bl, align 8, !tbaa !27
  %i.bm = add nuw nsw i64 %.026.i.us.us.us.us.us, 3 ; 3 uses
  %i.bn = mul nsw i64 %i.bm, %i.p                 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !27
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bm
  store double %i.bp, ptr %i.bq, align 8, !tbaa !27
  %i.br = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.bn
  %i.bs = load double, ptr %i.br, align 8, !tbaa !27
  %i.bt = sub nuw nsw i64 %i.j, %i.bm
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bt
  store double %i.bs, ptr %i.bu, align 8, !tbaa !27
  %i.bv = add nuw nsw i64 %.026.i.us.us.us.us.us, 4 ; 2 uses
  %niter234.next.3 = add i64 %niter234, 4         ; 2 uses
  %niter234.ncmp.3 = icmp eq i64 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us.us, !llvm.loop !85

._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa:  ; preds = %.lr.ph.i.us.us.us.us.us
  br i1 %lcmp.mod231.not, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.epil.preheader

.lr.ph.i.us.us.us.us.us.epil.preheader:           ; preds = %._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa, %.lr.ph.preheader.i.us.us.us.us.us
  %.026.i.us.us.us.us.us.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.us.us.us.us.us ], [ %i.bv, %._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %.lr.ph.i.us.us.us.us.us.epil

.lr.ph.i.us.us.us.us.us.epil:                     ; preds = %.lr.ph.i.us.us.us.us.us.epil, %.lr.ph.i.us.us.us.us.us.epil.preheader
  %.026.i.us.us.us.us.us.epil = phi i64 [ %i.ce, %.lr.ph.i.us.us.us.us.us.epil ], [ %.026.i.us.us.us.us.us.epil.init, %.lr.ph.i.us.us.us.us.us.epil.preheader ] ; 4 uses
  %epil.iter230 = phi i64 [ %epil.iter230.next, %.lr.ph.i.us.us.us.us.us.epil ], [ 0, %.lr.ph.i.us.us.us.us.us.epil.preheader ]
  %i.bw = mul nsw i64 %.026.i.us.us.us.us.us.epil, %i.p ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.026.i.us.us.us.us.us.epil
  store double %i.by, ptr %i.bz, align 8, !tbaa !27
  %i.ca = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.bw
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !27
  %i.cc = sub nuw nsw i64 %i.j, %.026.i.us.us.us.us.us.epil
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cc
  store double %i.cb, ptr %i.cd, align 8, !tbaa !27
  %i.ce = add nuw nsw i64 %.026.i.us.us.us.us.us.epil, 1
  %epil.iter230.next = add i64 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i64 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %._crit_edge.loopexit.i.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.epil, !llvm.loop !86

._crit_edge.loopexit.i.us.us.us.us.us:            ; preds = %.lr.ph.i.us.us.us.us.us.epil, %._crit_edge.loopexit.i.us.us.us.us.us.unr-lcssa
  %i.cf = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.ab
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !27
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.w
  store double %i.cg, ptr %i.ch, align 8, !tbaa !27
  %i.ci = add nuw nsw i64 %.056.us.us.us.us.us, 1 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us.us.us, i64 %i.l ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.155.us.us.us.us.us, i64 %i.l ; 3 uses
  %exitcond139.not = icmp eq i64 %i.ci, %i.f
  br i1 %exitcond139.not, label %._crit_edge.split.us.us.us.split.us.us, label %.lr.ph.preheader.i.us.us.us.us.us, !llvm.loop !87

._crit_edge.split.us.us.us.split.us.us:           ; preds = %._crit_edge.loopexit.i.us.us.us.us.us
  %i.cl = load ptr, ptr %i.ac, align 8, !tbaa !26
  tail call void %i.cl(ptr noundef %i.b, ptr noundef nonnull %i.s, ptr noundef %.05269.us.us.us) #4
  %i.cm = getelementptr inbounds [8 x i8], ptr %.05269.us.us.us, i64 %i.ad ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.05170.us.us.us, i64 %i.ad ; 2 uses
  %i.co = add nuw nsw i64 %.04773.us.us.us, %i.f  ; 2 uses
  %.not.us.us.us = icmp sgt i64 %i.co, %i.d
  br i1 %.not.us.us.us, label %._crit_edge74, label %.preheader.us.us.us, !llvm.loop !88

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.us.split
  %.04773.us.us = phi i64 [ %i.er, %._crit_edge.split.us.us.us.split ], [ %i.f, %.preheader.us.us.preheader ]
  %.04872.us.us = phi ptr [ %i.en, %._crit_edge.split.us.us.us.split ], [ %4, %.preheader.us.us.preheader ]
  %.04971.us.us = phi ptr [ %i.em, %._crit_edge.split.us.us.us.split ], [ %3, %.preheader.us.us.preheader ]
  %.05170.us.us = phi ptr [ %i.eq, %._crit_edge.split.us.us.us.split ], [ %2, %.preheader.us.us.preheader ]
  %.05269.us.us = phi ptr [ %i.ep, %._crit_edge.split.us.us.us.split ], [ %1, %.preheader.us.us.preheader ] ; 2 uses
  br label %.lr.ph.preheader.i.us.us.us

.lr.ph.preheader.i.us.us.us:                      ; preds = %._crit_edge.loopexit.i.us.us.us, %.preheader.us.us
  %.056.us.us.us = phi i64 [ 0, %.preheader.us.us ], [ %i.el, %._crit_edge.loopexit.i.us.us.us ] ; 2 uses
  %.155.us.us.us = phi ptr [ %.04872.us.us, %.preheader.us.us ], [ %i.en, %._crit_edge.loopexit.i.us.us.us ] ; 6 uses
  %.15054.us.us.us = phi ptr [ %.04971.us.us, %.preheader.us.us ], [ %i.em, %._crit_edge.loopexit.i.us.us.us ] ; 7 uses
  %i.cp = mul nsw i64 %.056.us.us.us, %i.h
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cp ; 11 uses
  %i.cr = load double, ptr %.15054.us.us.us, align 8, !tbaa !27
  store double %i.cr, ptr %i.cq, align 8, !tbaa !27
  br i1 %i.ag, label %.lr.ph.i.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %.lr.ph.preheader.i.us.us.us, %.lr.ph.i.us.us.us
  %.026.i.us.us.us = phi i64 [ %i.eb, %.lr.ph.i.us.us.us ], [ 1, %.lr.ph.preheader.i.us.us.us ] ; 7 uses
  %niter228 = phi i64 [ %niter228.next.3, %.lr.ph.i.us.us.us ], [ 0, %.lr.ph.preheader.i.us.us.us ]
  %i.cs = mul nsw i64 %.026.i.us.us.us, %i.p      ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.026.i.us.us.us
  store double %i.cu, ptr %i.cv, align 8, !tbaa !27
  %i.cw = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.cs
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !27
  %i.cy = sub nuw nsw i64 %i.j, %.026.i.us.us.us
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cy
  store double %i.cx, ptr %i.cz, align 8, !tbaa !27
  %i.da = add nuw nsw i64 %.026.i.us.us.us, 1     ; 3 uses
  %i.db = mul nsw i64 %i.da, %i.p                 ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !27
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.da
  store double %i.dd, ptr %i.de, align 8, !tbaa !27
  %i.df = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.db
  %i.dg = load double, ptr %i.df, align 8, !tbaa !27
  %i.dh = sub nuw nsw i64 %i.j, %i.da
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dh
  store double %i.dg, ptr %i.di, align 8, !tbaa !27
  %i.dj = add nuw nsw i64 %.026.i.us.us.us, 2     ; 3 uses
  %i.dk = mul nsw i64 %i.dj, %i.p                 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !27
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dj
  store double %i.dm, ptr %i.dn, align 8, !tbaa !27
  %i.do = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.dk
  %i.dp = load double, ptr %i.do, align 8, !tbaa !27
  %i.dq = sub nuw nsw i64 %i.j, %i.dj
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dq
  store double %i.dp, ptr %i.dr, align 8, !tbaa !27
  %i.ds = add nuw nsw i64 %.026.i.us.us.us, 3     ; 3 uses
  %i.dt = mul nsw i64 %i.ds, %i.p                 ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ds
  store double %i.dv, ptr %i.dw, align 8, !tbaa !27
  %i.dx = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.dt
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !27
  %i.dz = sub nuw nsw i64 %i.j, %i.ds
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dz
  store double %i.dy, ptr %i.ea, align 8, !tbaa !27
  %i.eb = add nuw nsw i64 %.026.i.us.us.us, 4     ; 2 uses
  %niter228.next.3 = add i64 %niter228, 4         ; 2 uses
  %niter228.ncmp.3 = icmp eq i64 %niter228.next.3, %unroll_iter227
  br i1 %niter228.ncmp.3, label %._crit_edge.loopexit.i.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us, !llvm.loop !85

._crit_edge.loopexit.i.us.us.us.unr-lcssa:        ; preds = %.lr.ph.i.us.us.us
  br i1 %lcmp.mod225.not, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us.epil.preheader

.lr.ph.i.us.us.us.epil.preheader:                 ; preds = %._crit_edge.loopexit.i.us.us.us.unr-lcssa, %.lr.ph.preheader.i.us.us.us
  %.026.i.us.us.us.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.us.us.us ], [ %i.eb, %._crit_edge.loopexit.i.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod226)
  br label %.lr.ph.i.us.us.us.epil

.lr.ph.i.us.us.us.epil:                           ; preds = %.lr.ph.i.us.us.us.epil, %.lr.ph.i.us.us.us.epil.preheader
  %.026.i.us.us.us.epil = phi i64 [ %i.ek, %.lr.ph.i.us.us.us.epil ], [ %.026.i.us.us.us.epil.init, %.lr.ph.i.us.us.us.epil.preheader ] ; 4 uses
  %epil.iter224 = phi i64 [ %epil.iter224.next, %.lr.ph.i.us.us.us.epil ], [ 0, %.lr.ph.i.us.us.us.epil.preheader ]
  %i.ec = mul nsw i64 %.026.i.us.us.us.epil, %i.p ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !27
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.026.i.us.us.us.epil
  store double %i.ee, ptr %i.ef, align 8, !tbaa !27
  %i.eg = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.ec
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !27
  %i.ei = sub nuw nsw i64 %i.j, %.026.i.us.us.us.epil
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ei
  store double %i.eh, ptr %i.ej, align 8, !tbaa !27
  %i.ek = add nuw nsw i64 %.026.i.us.us.us.epil, 1
  %epil.iter224.next = add i64 %epil.iter224, 1   ; 2 uses
  %epil.iter224.cmp.not = icmp eq i64 %epil.iter224.next, %xtraiter223
  br i1 %epil.iter224.cmp.not, label %._crit_edge.loopexit.i.us.us.us, label %.lr.ph.i.us.us.us.epil, !llvm.loop !89

._crit_edge.loopexit.i.us.us.us:                  ; preds = %.lr.ph.i.us.us.us.epil, %._crit_edge.loopexit.i.us.us.us.unr-lcssa
  %i.el = add nuw nsw i64 %.056.us.us.us, 1       ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %.15054.us.us.us, i64 %i.l ; 3 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %.155.us.us.us, i64 %i.l ; 3 uses
  %exitcond138.not = icmp eq i64 %i.el, %i.f
  br i1 %exitcond138.not, label %._crit_edge.split.us.us.us.split, label %.lr.ph.preheader.i.us.us.us, !llvm.loop !87

._crit_edge.split.us.us.us.split:                 ; preds = %._crit_edge.loopexit.i.us.us.us
  %i.eo = load ptr, ptr %i.ac, align 8, !tbaa !26
  tail call void %i.eo(ptr noundef %i.b, ptr noundef nonnull %i.s, ptr noundef %.05269.us.us) #4
  %i.ep = getelementptr inbounds [8 x i8], ptr %.05269.us.us, i64 %i.ad ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %.05170.us.us, i64 %i.ad ; 2 uses
  %i.er = add nuw nsw i64 %.04773.us.us, %i.f     ; 2 uses
  %.not.us.us = icmp sgt i64 %i.er, %i.d
  br i1 %.not.us.us, label %._crit_edge74, label %.preheader.us.us, !llvm.loop !88

.preheader.lr.ph.split.us.split:                  ; preds = %.preheader.lr.ph.split.us
  br i1 %i.z, label %.preheader.us.us95.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us.split
  %xtraiter = and i64 %i.f, 7                     ; 3 uses
  %i.es = icmp ult i64 %i.f, 8
  %unroll_iter = and i64 %i.f, 9223372036854775800
  %5 = shl i64 %i.l, 6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod214 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us.us95.preheader:                     ; preds = %.preheader.lr.ph.split.us.split
  %xtraiter215 = and i64 %i.f, 3                  ; 3 uses
  %i.et = icmp ult i64 %i.f, 4
  %unroll_iter221 = and i64 %i.f, 9223372036854775804
  %6 = shl i64 %i.l, 5
  %lcmp.mod217.not = icmp eq i64 %xtraiter215, 0
  %lcmp.mod220 = icmp ne i64 %xtraiter215, 0
  br label %.preheader.us.us95

.preheader.us.us95:                               ; preds = %.preheader.us.us95.preheader, %._crit_edge.split.split.us.us.us
  %.04773.us.us96 = phi i64 [ %i.gm, %._crit_edge.split.split.us.us.us ], [ %i.f, %.preheader.us.us95.preheader ]
  %.04872.us.us97 = phi ptr [ %.lcssa200, %._crit_edge.split.split.us.us.us ], [ %4, %.preheader.us.us95.preheader ] ; 2 uses
  %.04971.us.us98 = phi ptr [ %.lcssa201, %._crit_edge.split.split.us.us.us ], [ %3, %.preheader.us.us95.preheader ] ; 2 uses
  %.05170.us.us99 = phi ptr [ %i.gl, %._crit_edge.split.split.us.us.us ], [ %2, %.preheader.us.us95.preheader ]
  %.05269.us.us100 = phi ptr [ %i.gk, %._crit_edge.split.split.us.us.us ], [ %1, %.preheader.us.us95.preheader ] ; 2 uses
  br i1 %i.et, label %._crit_edge.i.us59.us.us.epil.preheader, label %._crit_edge.i.us59.us.us

._crit_edge.i.us59.us.us:                         ; preds = %.preheader.us.us95, %._crit_edge.i.us59.us.us
  %.056.us60.us.us = phi i64 [ %i.fy, %._crit_edge.i.us59.us.us ], [ 0, %.preheader.us.us95 ] ; 5 uses
  %.155.us61.us.us = phi ptr [ %7, %._crit_edge.i.us59.us.us ], [ %.04872.us.us97, %.preheader.us.us95 ]
  %.15054.us62.us.us = phi ptr [ %i.fz, %._crit_edge.i.us59.us.us ], [ %.04971.us.us98, %.preheader.us.us95 ] ; 3 uses
  %niter222 = phi i64 [ %niter222.next.3, %._crit_edge.i.us59.us.us ], [ 0, %.preheader.us.us95 ]
  %i.eu = mul nsw i64 %.056.us60.us.us, %i.h
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.eu ; 2 uses
  %i.ew = load double, ptr %.15054.us62.us.us, align 8, !tbaa !27
  store double %i.ew, ptr %i.ev, align 8, !tbaa !27
  %i.ex = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.p
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !27
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store double %i.ey, ptr %i.ez, align 8, !tbaa !27
  %i.fa = or disjoint i64 %.056.us60.us.us, 1
  %i.fb = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us, i64 %i.l ; 3 uses
  %i.fc = mul nsw i64 %i.fa, %i.h
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fb, align 8, !tbaa !27
  store double %i.fe, ptr %i.fd, align 8, !tbaa !27
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.p
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !27
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store double %i.fg, ptr %i.fh, align 8, !tbaa !27
  %i.fi = or disjoint i64 %.056.us60.us.us, 2
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.l ; 3 uses
  %i.fk = mul nsw i64 %i.fi, %i.h
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.fk ; 2 uses
  %i.fm = load double, ptr %i.fj, align 8, !tbaa !27
  store double %i.fm, ptr %i.fl, align 8, !tbaa !27
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.p
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !27
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store double %i.fo, ptr %i.fp, align 8, !tbaa !27
  %i.fq = or disjoint i64 %.056.us60.us.us, 3
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.l ; 3 uses
  %i.fs = mul nsw i64 %i.fq, %i.h
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.fs ; 2 uses
  %i.fu = load double, ptr %i.fr, align 8, !tbaa !27
  store double %i.fu, ptr %i.ft, align 8, !tbaa !27
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.p
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !27
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store double %i.fw, ptr %i.fx, align 8, !tbaa !27
  %i.fy = add nuw nsw i64 %.056.us60.us.us, 4     ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.l ; 3 uses
  %7 = getelementptr inbounds i8, ptr %.155.us61.us.us, i64 %6 ; 3 uses
  %niter222.next.3 = add nuw nsw i64 %niter222, 4 ; 2 uses
  %niter222.ncmp.3 = icmp eq i64 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %._crit_edge.split.split.us.us.us.unr-lcssa, label %._crit_edge.i.us59.us.us, !llvm.loop !87

._crit_edge.split.split.us.us.us.unr-lcssa:       ; preds = %._crit_edge.i.us59.us.us
  br i1 %lcmp.mod217.not, label %._crit_edge.split.split.us.us.us, label %._crit_edge.i.us59.us.us.epil.preheader

._crit_edge.i.us59.us.us.epil.preheader:          ; preds = %._crit_edge.split.split.us.us.us.unr-lcssa, %.preheader.us.us95
  %.056.us60.us.us.epil.init = phi i64 [ 0, %.preheader.us.us95 ], [ %i.fy, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  %.155.us61.us.us.epil.init = phi ptr [ %.04872.us.us97, %.preheader.us.us95 ], [ %7, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  %.15054.us62.us.us.epil.init = phi ptr [ %.04971.us.us98, %.preheader.us.us95 ], [ %i.fz, %._crit_edge.split.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod220)
  br label %._crit_edge.i.us59.us.us.epil

._crit_edge.i.us59.us.us.epil:                    ; preds = %._crit_edge.i.us59.us.us.epil, %._crit_edge.i.us59.us.us.epil.preheader
  %.056.us60.us.us.epil = phi i64 [ %.056.us60.us.us.epil.init, %._crit_edge.i.us59.us.us.epil.preheader ], [ %i.gg, %._crit_edge.i.us59.us.us.epil ] ; 2 uses
  %.155.us61.us.us.epil = phi ptr [ %.155.us61.us.us.epil.init, %._crit_edge.i.us59.us.us.epil.preheader ], [ %i.gi, %._crit_edge.i.us59.us.us.epil ]
  %.15054.us62.us.us.epil = phi ptr [ %.15054.us62.us.us.epil.init, %._crit_edge.i.us59.us.us.epil.preheader ], [ %i.gh, %._crit_edge.i.us59.us.us.epil ] ; 3 uses
  %epil.iter216 = phi i64 [ 0, %._crit_edge.i.us59.us.us.epil.preheader ], [ %epil.iter216.next, %._crit_edge.i.us59.us.us.epil ]
  %i.ga = mul nsw i64 %.056.us60.us.us.epil, %i.h
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ga ; 2 uses
  %i.gc = load double, ptr %.15054.us62.us.us.epil, align 8, !tbaa !27
  store double %i.gc, ptr %i.gb, align 8, !tbaa !27
  %i.gd = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us.epil, i64 %i.p
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !27
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store double %i.ge, ptr %i.gf, align 8, !tbaa !27
  %i.gg = add nuw nsw i64 %.056.us60.us.us.epil, 1
  %i.gh = getelementptr inbounds [8 x i8], ptr %.15054.us62.us.us.epil, i64 %i.l ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %.155.us61.us.us.epil, i64 %i.l ; 2 uses
  %epil.iter216.next = add i64 %epil.iter216, 1   ; 2 uses
  %epil.iter216.cmp.not = icmp eq i64 %epil.iter216.next, %xtraiter215
  br i1 %epil.iter216.cmp.not, label %._crit_edge.split.split.us.us.us, label %._crit_edge.i.us59.us.us.epil, !llvm.loop !90

._crit_edge.split.split.us.us.us:                 ; preds = %._crit_edge.i.us59.us.us.epil, %._crit_edge.split.split.us.us.us.unr-lcssa
  %.lcssa201 = phi ptr [ %i.fz, %._crit_edge.split.split.us.us.us.unr-lcssa ], [ %i.gh, %._crit_edge.i.us59.us.us.epil ] ; 2 uses
  %.lcssa200 = phi ptr [ %7, %._crit_edge.split.split.us.us.us.unr-lcssa ], [ %i.gi, %._crit_edge.i.us59.us.us.epil ] ; 2 uses
  %i.gj = load ptr, ptr %i.ac, align 8, !tbaa !26
  tail call void %i.gj(ptr noundef %i.b, ptr noundef nonnull %i.s, ptr noundef %.05269.us.us100) #4
  %i.gk = getelementptr inbounds [8 x i8], ptr %.05269.us.us100, i64 %i.ad ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %.05170.us.us99, i64 %i.ad ; 2 uses
  %i.gm = add nuw nsw i64 %.04773.us.us96, %i.f   ; 2 uses
  %.not.us.us101 = icmp sgt i64 %i.gm, %i.d
  br i1 %.not.us.us101, label %._crit_edge74, label %.preheader.us.us95, !llvm.loop !88

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.split.us84
  %.04773.us = phi i64 [ %i.ik, %._crit_edge.split.split.us84 ], [ %i.f, %.preheader.us.preheader ]
  %.04872.us = phi ptr [ %.lcssa205, %._crit_edge.split.split.us84 ], [ %4, %.preheader.us.preheader ] ; 2 uses
  %.04971.us = phi ptr [ %.lcssa206, %._crit_edge.split.split.us84 ], [ %3, %.preheader.us.preheader ] ; 2 uses
  %.05170.us = phi ptr [ %i.ij, %._crit_edge.split.split.us84 ], [ %2, %.preheader.us.preheader ]
  %.05269.us = phi ptr [ %i.ii, %._crit_edge.split.split.us84 ], [ %1, %.preheader.us.preheader ] ; 2 uses
  br i1 %i.es, label %._crit_edge.i.us.epil.preheader, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.preheader.us, %._crit_edge.i.us
  %.056.us81 = phi i64 [ %i.hz, %._crit_edge.i.us ], [ 0, %.preheader.us ] ; 9 uses
  %.155.us82 = phi ptr [ %8, %._crit_edge.i.us ], [ %.04872.us, %.preheader.us ]
  %.15054.us83 = phi ptr [ %i.ia, %._crit_edge.i.us ], [ %.04971.us, %.preheader.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.7, %._crit_edge.i.us ], [ 0, %.preheader.us ]
  %i.gn = mul nsw i64 %.056.us81, %i.h
  %i.go = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gn
  %i.gp = load double, ptr %.15054.us83, align 8, !tbaa !27
  store double %i.gp, ptr %i.go, align 8, !tbaa !27
  %i.gq = or disjoint i64 %.056.us81, 1
  %i.gr = getelementptr inbounds [8 x i8], ptr %.15054.us83, i64 %i.l ; 2 uses
  %i.gs = mul nsw i64 %i.gq, %i.h
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gs
  %i.gu = load double, ptr %i.gr, align 8, !tbaa !27
  store double %i.gu, ptr %i.gt, align 8, !tbaa !27
  %i.gv = or disjoint i64 %.056.us81, 2
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.l ; 2 uses
  %i.gx = mul nsw i64 %i.gv, %i.h
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gx
  %i.gz = load double, ptr %i.gw, align 8, !tbaa !27
  store double %i.gz, ptr %i.gy, align 8, !tbaa !27
  %i.ha = or disjoint i64 %.056.us81, 3
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.l ; 2 uses
  %i.hc = mul nsw i64 %i.ha, %i.h
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hc
  %i.he = load double, ptr %i.hb, align 8, !tbaa !27
  store double %i.he, ptr %i.hd, align 8, !tbaa !27
  %i.hf = or disjoint i64 %.056.us81, 4
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.l ; 2 uses
  %i.hh = mul nsw i64 %i.hf, %i.h
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hh
  %i.hj = load double, ptr %i.hg, align 8, !tbaa !27
  store double %i.hj, ptr %i.hi, align 8, !tbaa !27
  %i.hk = or disjoint i64 %.056.us81, 5
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.l ; 2 uses
  %i.hm = mul nsw i64 %i.hk, %i.h
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hm
  %i.ho = load double, ptr %i.hl, align 8, !tbaa !27
  store double %i.ho, ptr %i.hn, align 8, !tbaa !27
  %i.hp = or disjoint i64 %.056.us81, 6
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.l ; 2 uses
  %i.hr = mul nsw i64 %i.hp, %i.h
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hr
  %i.ht = load double, ptr %i.hq, align 8, !tbaa !27
  store double %i.ht, ptr %i.hs, align 8, !tbaa !27
  %i.hu = or disjoint i64 %.056.us81, 7
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.l ; 2 uses
  %i.hw = mul nsw i64 %i.hu, %i.h
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hw
  %i.hy = load double, ptr %i.hv, align 8, !tbaa !27
  store double %i.hy, ptr %i.hx, align 8, !tbaa !27
  %i.hz = add nuw nsw i64 %.056.us81, 8           ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %i.l ; 3 uses
  %8 = getelementptr inbounds i8, ptr %.155.us82, i64 %5 ; 3 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.split.us84.unr-lcssa, label %._crit_edge.i.us, !llvm.loop !87

._crit_edge.split.split.us84.unr-lcssa:           ; preds = %._crit_edge.i.us
  br i1 %lcmp.mod.not, label %._crit_edge.split.split.us84, label %._crit_edge.i.us.epil.preheader

._crit_edge.i.us.epil.preheader:                  ; preds = %._crit_edge.split.split.us84.unr-lcssa, %.preheader.us
  %.056.us81.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.hz, %._crit_edge.split.split.us84.unr-lcssa ]
  %.155.us82.epil.init = phi ptr [ %.04872.us, %.preheader.us ], [ %8, %._crit_edge.split.split.us84.unr-lcssa ]
  %.15054.us83.epil.init = phi ptr [ %.04971.us, %.preheader.us ], [ %i.ia, %._crit_edge.split.split.us84.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod214)
  br label %._crit_edge.i.us.epil

._crit_edge.i.us.epil:                            ; preds = %._crit_edge.i.us.epil, %._crit_edge.i.us.epil.preheader
  %.056.us81.epil = phi i64 [ %.056.us81.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.ie, %._crit_edge.i.us.epil ] ; 2 uses
  %.155.us82.epil = phi ptr [ %.155.us82.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.ig, %._crit_edge.i.us.epil ]
  %.15054.us83.epil = phi ptr [ %.15054.us83.epil.init, %._crit_edge.i.us.epil.preheader ], [ %i.if, %._crit_edge.i.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %._crit_edge.i.us.epil.preheader ], [ %epil.iter.next, %._crit_edge.i.us.epil ]
  %i.ib = mul nsw i64 %.056.us81.epil, %i.h
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ib
  %i.id = load double, ptr %.15054.us83.epil, align 8, !tbaa !27
  store double %i.id, ptr %i.ic, align 8, !tbaa !27
  %i.ie = add nuw nsw i64 %.056.us81.epil, 1
  %i.if = getelementptr inbounds [8 x i8], ptr %.15054.us83.epil, i64 %i.l ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %.155.us82.epil, i64 %i.l ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.split.us84, label %._crit_edge.i.us.epil, !llvm.loop !91

._crit_edge.split.split.us84:                     ; preds = %._crit_edge.i.us.epil, %._crit_edge.split.split.us84.unr-lcssa
  %.lcssa206 = phi ptr [ %i.ia, %._crit_edge.split.split.us84.unr-lcssa ], [ %i.if, %._crit_edge.i.us.epil ] ; 2 uses
  %.lcssa205 = phi ptr [ %8, %._crit_edge.split.split.us84.unr-lcssa ], [ %i.ig, %._crit_edge.i.us.epil ] ; 2 uses
  %i.ih = load ptr, ptr %i.ac, align 8, !tbaa !26
  tail call void %i.ih(ptr noundef %i.b, ptr noundef nonnull %i.s, ptr noundef %.05269.us) #4
  %i.ii = getelementptr inbounds [8 x i8], ptr %.05269.us, i64 %i.ad ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %.05170.us, i64 %i.ad ; 2 uses
  %i.ik = add nuw nsw i64 %.04773.us, %i.f        ; 2 uses
  %.not.us = icmp sgt i64 %i.ik, %i.d
  br i1 %.not.us, label %._crit_edge74, label %.preheader.us, !llvm.loop !88

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04773 = phi i64 [ %i.io, %.preheader ], [ %i.f, %.preheader.lr.ph ]
  %.05170 = phi ptr [ %i.in, %.preheader ], [ %2, %.preheader.lr.ph ]
  %.05269 = phi ptr [ %i.im, %.preheader ], [ %1, %.preheader.lr.ph ] ; 2 uses
  %i.il = load ptr, ptr %i.ac, align 8, !tbaa !26
  tail call void %i.il(ptr noundef %i.b, ptr noundef %i.s, ptr noundef %.05269) #4
  %i.im = getelementptr inbounds [8 x i8], ptr %.05269, i64 %i.ad ; 2 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %.05170, i64 %i.ad ; 2 uses
  %i.io = add nsw i64 %.04773, %i.f               ; 2 uses
  %.not = icmp sgt i64 %i.io, %i.d
  br i1 %.not, label %._crit_edge74, label %.preheader, !llvm.loop !88

._crit_edge74:                                    ; preds = %.preheader, %._crit_edge.split.split.us84, %._crit_edge.split.split.us.us.us, %._crit_edge.split.us.us.us.split, %._crit_edge.split.us.us.us.split.us.us, %bb.a
  %.052.lcssa = phi ptr [ %1, %bb.a ], [ %i.ii, %._crit_edge.split.split.us84 ], [ %i.ep, %._crit_edge.split.us.us.us.split ], [ %i.cm, %._crit_edge.split.us.us.us.split.us.us ], [ %i.gk, %._crit_edge.split.split.us.us.us ], [ %i.im, %.preheader ]
  %.051.lcssa = phi ptr [ %2, %bb.a ], [ %i.ij, %._crit_edge.split.split.us84 ], [ %i.eq, %._crit_edge.split.us.us.us.split ], [ %i.cn, %._crit_edge.split.us.us.us.split.us.us ], [ %i.gl, %._crit_edge.split.split.us.us.us ], [ %i.in, %.preheader ]
  %.049.lcssa = phi ptr [ %3, %bb.a ], [ %.lcssa206, %._crit_edge.split.split.us84 ], [ %i.em, %._crit_edge.split.us.us.us.split ], [ %i.cj, %._crit_edge.split.us.us.us.split.us.us ], [ %.lcssa201, %._crit_edge.split.split.us.us.us ], [ %3, %.preheader ]
  %.048.lcssa = phi ptr [ %4, %bb.a ], [ %.lcssa205, %._crit_edge.split.split.us84 ], [ %i.en, %._crit_edge.split.us.us.us.split ], [ %i.ck, %._crit_edge.split.us.us.us.split.us.us ], [ %.lcssa200, %._crit_edge.split.split.us.us.us ], [ %4, %.preheader ]
  tail call void @fftw_ifree(ptr noundef %i.s) #4
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !18 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !26
  tail call void %i.is(ptr noundef %i.iq, ptr noundef %.052.lcssa, ptr noundef %.051.lcssa, ptr noundef %.049.lcssa, ptr noundef %.048.lcssa) #4
  ret void
}

declare void @fftw_rdft2_strides(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_madd(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ifree0(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @fftw_toobig(i64 noundef) local_unnamed_addr #1

declare i32 @fftw_rdft2_inplace_strides(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @fftw_iabs(i64 noundef) local_unnamed_addr #1

declare i64 @fftw_imin(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!13 = !{!"plan_s", !9, i64 0, !12, i64 8, !11, i64 40, !6, i64 48, !6, i64 52}
!14 = !{!"", !13, i64 0, !9, i64 56}
!15 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!16 = !{!"", !14, i64 0, !15, i64 64, !15, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!17 = !{!16, !15, i64 64}
!18 = !{!16, !15, i64 72}
!19 = !{!16, !10, i64 80}
!20 = !{!16, !10, i64 88}
!21 = !{!16, !10, i64 120}
!22 = !{!16, !10, i64 128}
!23 = !{!16, !10, i64 96}
!24 = !{!16, !10, i64 104}
!25 = !{!16, !10, i64 112}
!26 = !{!14, !9, i64 56}
!27 = !{!11, !11, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{!"problem_s", !9, i64 0}
!31 = !{!"p1 double", !9, i64 0}
!32 = !{!"", !30, i64 0, !9, i64 8, !9, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !6, i64 56}
!33 = !{!32, !9, i64 16}
!34 = !{!"", !6, i64 0, !5, i64 8}
!35 = !{!34, !6, i64 0}
!36 = !{!32, !9, i64 8}
!37 = !{!32, !6, i64 56}
!38 = !{!32, !31, i64 32}
!39 = !{!32, !31, i64 24}
!40 = !{!10, !10, i64 0}
!41 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!42 = !{!41, !10, i64 0}
!43 = !{!32, !31, i64 40}
!44 = !{!32, !31, i64 48}
!45 = !{!41, !10, i64 8}
!46 = !{!41, !10, i64 16}
!47 = !{!16, !11, i64 32}
!48 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!49 = !{!48, !9, i64 0}
!50 = !{!16, !9, i64 56}
!51 = distinct !{!51, !"LVerDomain"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !28, !77, !78}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !28, !77}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = distinct !{!65, !61}
!66 = distinct !{!66, !28, !77, !78}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !28, !77}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !29}
!71 = !{!52}
!72 = !{!53}
!73 = !{!55, !54, !52}
!74 = !{!54}
!75 = !{!55}
!76 = !{!54, !52}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!62}
!80 = !{!63}
!81 = !{!65, !64, !62}
!82 = !{!64}
!83 = !{!65}
!84 = !{!64, !62}
!85 = distinct !{!85, !28}
!86 = distinct !{!86, !29}
!87 = distinct !{!87, !28}
!88 = distinct !{!88, !28}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
end_hunk_0
