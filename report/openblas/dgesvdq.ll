Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgesvdq?download=true
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@dgesvdq_:bb.a
  %min.iters.check2793 = icmp ugt i64 %i.ut, 3
  %or.cond3220 = select i1 %min.iters.check2793, i1 %ident.check2783.not, i1 false
  br i1 %or.cond3220, label %vector.memcheck2784, label %vec.epilog.scalar.ph2810.preheader

vector.memcheck2784:                              ; preds = %iter.check2809
  %bound02790 = icmp ult ptr %scevgep, %scevgep2789
  %bound12791 = icmp ult ptr %scevgep2788, %scevgep2787
  %found.conflict2792 = and i1 %bound02790, %bound12791
  br i1 %found.conflict2792, label %vec.epilog.scalar.ph2810.preheader, label %vector.main.loop.iter.check2794

vector.main.loop.iter.check2794:                  ; preds = %vector.memcheck2784
  %min.iters.check2795 = icmp ult i64 %i.ut, 16
  br i1 %min.iters.check2795, label %vec.epilog.ph2813, label %vector.ph2796

vector.ph2796:                                    ; preds = %vector.main.loop.iter.check2794
  %i.uz = and i64 %i.ut, 12
  %n.vec2797 = and i64 %i.ut, -16                 ; 4 uses
  %i.va = add i64 %indvars.iv2265, %n.vec2797
  br label %vector.body2798

vector.body2798:                                  ; preds = %vector.ph2796, %vector.body2798
  %index2799 = phi i64 [ 0, %vector.ph2796 ], [ %index.next2804, %vector.body2798 ] ; 2 uses
  %i.vb = add nuw i64 %indvars.iv2265, %index2799 ; 2 uses
  %i.vc = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.vb ; 4 uses
  %i.vd = getelementptr i8, ptr %i.vc, i64 32
  %i.ve = getelementptr i8, ptr %i.vc, i64 64
  %i.vf = getelementptr i8, ptr %i.vc, i64 96
  %wide.load2800 = load <4 x double>, ptr %i.vc, align 8, !tbaa !118, !alias.scope !127
  %wide.load2801 = load <4 x double>, ptr %i.vd, align 8, !tbaa !118, !alias.scope !127
  %wide.load2802 = load <4 x double>, ptr %i.ve, align 8, !tbaa !118, !alias.scope !127
  %wide.load2803 = load <4 x double>, ptr %i.vf, align 8, !tbaa !118, !alias.scope !127
  %i.vg = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %i.vb ; 4 uses
  %i.vh = getelementptr i8, ptr %i.vg, i64 32
  %i.vi = getelementptr i8, ptr %i.vg, i64 64
  %i.vj = getelementptr i8, ptr %i.vg, i64 96
  store <4 x double> %wide.load2800, ptr %i.vg, align 8, !tbaa !118, !alias.scope !128, !noalias !127
  store <4 x double> %wide.load2801, ptr %i.vh, align 8, !tbaa !118, !alias.scope !128, !noalias !127
  store <4 x double> %wide.load2802, ptr %i.vi, align 8, !tbaa !118, !alias.scope !128, !noalias !127
  store <4 x double> %wide.load2803, ptr %i.vj, align 8, !tbaa !118, !alias.scope !128, !noalias !127
  %index.next2804 = add nuw i64 %index2799, 16    ; 2 uses
  %i.vk = icmp eq i64 %index.next2804, %n.vec2797
  br i1 %i.vk, label %middle.block2805, label %vector.body2798, !llvm.loop !32

middle.block2805:                                 ; preds = %vector.body2798
  %cmp.n2806 = icmp eq i64 %i.ut, %n.vec2797
  br i1 %cmp.n2806, label %._crit_edge2027, label %vec.epilog.iter.check2811

vec.epilog.iter.check2811:                        ; preds = %middle.block2805
  %min.epilog.iters.check2812 = icmp eq i64 %i.uz, 0
  br i1 %min.epilog.iters.check2812, label %vec.epilog.scalar.ph2810.preheader, label %vec.epilog.ph2813, !prof !126

vec.epilog.ph2813:                                ; preds = %vector.main.loop.iter.check2794, %vec.epilog.iter.check2811
  %vec.epilog.resume.val2807 = phi i64 [ %n.vec2797, %vec.epilog.iter.check2811 ], [ 0, %vector.main.loop.iter.check2794 ]
  %n.vec2814 = and i64 %i.ut, -4                  ; 3 uses
  %i.vl = add i64 %indvars.iv2265, %n.vec2814
  br label %vec.epilog.vector.body2815

vec.epilog.vector.body2815:                       ; preds = %vec.epilog.vector.body2815, %vec.epilog.ph2813
  %index2816 = phi i64 [ %vec.epilog.resume.val2807, %vec.epilog.ph2813 ], [ %index.next2818, %vec.epilog.vector.body2815 ] ; 2 uses
  %i.vm = add nuw i64 %indvars.iv2265, %index2816 ; 2 uses
  %i.vn = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.vm
  %wide.load2817 = load <4 x double>, ptr %i.vn, align 8, !tbaa !118, !alias.scope !127
  %i.vo = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %i.vm
  store <4 x double> %wide.load2817, ptr %i.vo, align 8, !tbaa !118, !alias.scope !128, !noalias !127
  %index.next2818 = add nuw i64 %index2816, 4     ; 2 uses
  %i.vp = icmp eq i64 %index.next2818, %n.vec2814
  br i1 %i.vp, label %vec.epilog.middle.block2819, label %vec.epilog.vector.body2815, !llvm.loop !33

vec.epilog.middle.block2819:                      ; preds = %vec.epilog.vector.body2815
  %cmp.n2820 = icmp eq i64 %i.ut, %n.vec2814
  br i1 %cmp.n2820, label %._crit_edge2027, label %vec.epilog.scalar.ph2810.preheader

vec.epilog.scalar.ph2810.preheader:               ; preds = %iter.check2809, %vector.memcheck2784, %vec.epilog.iter.check2811, %vec.epilog.middle.block2819
  %indvars.iv2267.ph = phi i64 [ %indvars.iv2265, %iter.check2809 ], [ %indvars.iv2265, %vector.memcheck2784 ], [ %i.va, %vec.epilog.iter.check2811 ], [ %i.vl, %vec.epilog.middle.block2819 ] ; 4 uses
  %i.vq = sub i64 %wide.trip.count2270, %indvars.iv2267.ph
  %xtraiter3248 = and i64 %i.vq, 7                ; 2 uses
  %lcmp.mod3249.not = icmp eq i64 %xtraiter3248, 0
  br i1 %lcmp.mod3249.not, label %vec.epilog.scalar.ph2810.prol.loopexit, label %vec.epilog.scalar.ph2810.prol

vec.epilog.scalar.ph2810.prol:                    ; preds = %vec.epilog.scalar.ph2810.preheader, %vec.epilog.scalar.ph2810.prol
  %indvars.iv2267.prol = phi i64 [ %indvars.iv.next2268.prol, %vec.epilog.scalar.ph2810.prol ], [ %indvars.iv2267.ph, %vec.epilog.scalar.ph2810.preheader ] ; 3 uses
  %prol.iter3250 = phi i64 [ %prol.iter3250.next, %vec.epilog.scalar.ph2810.prol ], [ 0, %vec.epilog.scalar.ph2810.preheader ]
  %i.vr = mul nsw i64 %indvars.iv2267.prol, %i.ub
  %gep2549.prol = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.vr
  %i.vs = load double, ptr %gep2549.prol, align 8, !tbaa !118
  %gep2551.prol = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %indvars.iv2267.prol
  store double %i.vs, ptr %gep2551.prol, align 8, !tbaa !118
  %indvars.iv.next2268.prol = add nuw nsw i64 %indvars.iv2267.prol, 1 ; 2 uses
  %prol.iter3250.next = add i64 %prol.iter3250, 1 ; 2 uses
  %prol.iter3250.cmp.not = icmp eq i64 %prol.iter3250.next, %xtraiter3248
  br i1 %prol.iter3250.cmp.not, label %vec.epilog.scalar.ph2810.prol.loopexit, label %vec.epilog.scalar.ph2810.prol, !llvm.loop !34

vec.epilog.scalar.ph2810.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2810.prol, %vec.epilog.scalar.ph2810.preheader
  %indvars.iv2267.unr = phi i64 [ %indvars.iv2267.ph, %vec.epilog.scalar.ph2810.preheader ], [ %indvars.iv.next2268.prol, %vec.epilog.scalar.ph2810.prol ]
  %i.vt = sub i64 %indvars.iv2267.ph, %wide.trip.count2270
  %i.vu = icmp ugt i64 %i.vt, -8
  br i1 %i.vu, label %._crit_edge2027, label %vec.epilog.scalar.ph2810

vec.epilog.scalar.ph2810:                         ; preds = %vec.epilog.scalar.ph2810.prol.loopexit, %vec.epilog.scalar.ph2810
  %indvars.iv2267 = phi i64 [ %indvars.iv.next2268.7, %vec.epilog.scalar.ph2810 ], [ %indvars.iv2267.unr, %vec.epilog.scalar.ph2810.prol.loopexit ] ; 10 uses
  %i.vv = mul nsw i64 %indvars.iv2267, %i.ub
  %gep2549 = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.vv
  %i.vw = load double, ptr %gep2549, align 8, !tbaa !118
  %gep2551 = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %indvars.iv2267
  store double %i.vw, ptr %gep2551, align 8, !tbaa !118
  %indvars.iv.next2268 = add nuw nsw i64 %indvars.iv2267, 1 ; 2 uses
  %i.vx = mul nsw i64 %indvars.iv.next2268, %i.ub
  %gep2549.1 = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.vx
  %i.vy = load double, ptr %gep2549.1, align 8, !tbaa !118
  %gep2551.1 = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %indvars.iv.next2268
  store double %i.vy, ptr %gep2551.1, align 8, !tbaa !118
  %indvars.iv.next2268.1 = add nuw nsw i64 %indvars.iv2267, 2 ; 2 uses
  %i.vz = mul nsw i64 %indvars.iv.next2268.1, %i.ub
  %gep2549.2 = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.vz
  %i.wa = load double, ptr %gep2549.2, align 8, !tbaa !118
  %gep2551.2 = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %indvars.iv.next2268.1
  store double %i.wa, ptr %gep2551.2, align 8, !tbaa !118
  %indvars.iv.next2268.2 = add nuw nsw i64 %indvars.iv2267, 3 ; 2 uses
  %i.wb = mul nsw i64 %indvars.iv.next2268.2, %i.ub
  %gep2549.3 = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.wb
  %i.wc = load double, ptr %gep2549.3, align 8, !tbaa !118
  %gep2551.3 = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %indvars.iv.next2268.2
  store double %i.wc, ptr %gep2551.3, align 8, !tbaa !118
  %indvars.iv.next2268.3 = add nuw nsw i64 %indvars.iv2267, 4 ; 2 uses
  %i.wd = mul nsw i64 %indvars.iv.next2268.3, %i.ub
  %gep2549.4 = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.wd
  %i.we = load double, ptr %gep2549.4, align 8, !tbaa !118
  %gep2551.4 = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %indvars.iv.next2268.3
  store double %i.we, ptr %gep2551.4, align 8, !tbaa !118
  %indvars.iv.next2268.4 = add nuw nsw i64 %indvars.iv2267, 5 ; 2 uses
  %i.wf = mul nsw i64 %indvars.iv.next2268.4, %i.ub
  %gep2549.5 = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.wf
  %i.wg = load double, ptr %gep2549.5, align 8, !tbaa !118
  %gep2551.5 = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %indvars.iv.next2268.4
  store double %i.wg, ptr %gep2551.5, align 8, !tbaa !118
  %indvars.iv.next2268.5 = add nuw nsw i64 %indvars.iv2267, 6 ; 2 uses
  %i.wh = mul nsw i64 %indvars.iv.next2268.5, %i.ub
  %gep2549.6 = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.wh
  %i.wi = load double, ptr %gep2549.6, align 8, !tbaa !118
  %gep2551.6 = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %indvars.iv.next2268.5
  store double %i.wi, ptr %gep2551.6, align 8, !tbaa !118
  %indvars.iv.next2268.6 = add nuw nsw i64 %indvars.iv2267, 7 ; 2 uses
  %i.wj = mul nsw i64 %indvars.iv.next2268.6, %i.ub
  %gep2549.7 = getelementptr [8 x i8], ptr %invariant.gep2548, i64 %i.wj
  %i.wk = load double, ptr %gep2549.7, align 8, !tbaa !118
  %gep2551.7 = getelementptr [8 x i8], ptr %invariant.gep2550, i64 %indvars.iv.next2268.6
  store double %i.wk, ptr %gep2551.7, align 8, !tbaa !118
  %indvars.iv.next2268.7 = add nuw nsw i64 %indvars.iv2267, 8 ; 2 uses
  %exitcond2271.not.7 = icmp eq i64 %indvars.iv.next2268.7, %wide.trip.count2270
  br i1 %exitcond2271.not.7, label %._crit_edge2027, label %vec.epilog.scalar.ph2810, !llvm.loop !35

._crit_edge2027:                                  ; preds = %vec.epilog.scalar.ph2810.prol.loopexit, %vec.epilog.scalar.ph2810, %middle.block2805, %vec.epilog.middle.block2819, %bb.dt
  %indvars.iv.next2266 = add nuw nsw i64 %indvars.iv2265, 1 ; 2 uses
  %exitcond2274.not = icmp eq i64 %indvars.iv.next2266, %wide.trip.count2273
  %indvar.next2786 = add i64 %indvar2785, 1
  br i1 %exitcond2274.not, label %._crit_edge2032, label %bb.dt, !llvm.loop !36

._crit_edge2032:                                  ; preds = %._crit_edge2027
  store i32 %i.uf, ptr %i.f, align 4, !tbaa !116
  %.not2670 = icmp eq i32 %i.tz, 1
  br i1 %.not2670, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %._crit_edge2032
  %i.wl = add nsw i32 %i.tz, -1                   ; 2 uses
  store i32 %i.wl, ptr %i.a, align 4, !tbaa !116
  store i32 %i.wl, ptr %i.b, align 4, !tbaa !116
  %i.wm = shl i32 %i.n, 1
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr [8 x i8], ptr %i.p, i64 %i.wn
  %i.wp = getelementptr i8, ptr %i.wo, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.wp, ptr noundef nonnull %11) #6
  br label %bb.dv

bb.dv:                                            ; preds = %._crit_edge2032.thread, %bb.du, %._crit_edge2032
  %i.wq = load i32, ptr %18, align 4, !tbaa !116
  %i.wr = load i32, ptr %6, align 4, !tbaa !116   ; 2 uses
  %i.ws = sub nsw i32 %i.wq, %i.wr
  store i32 %i.ws, ptr %i.a, align 4, !tbaa !116
  %i.wt = sext i32 %i.wr to i64
  %i.wu = getelementptr [8 x i8], ptr %i.u, i64 %i.wt
  %i.wv = getelementptr i8, ptr %i.wu, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.13, ptr noundef nonnull %6, ptr noundef nonnull %i.h, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %i.wv, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  %i.ww = load i32, ptr %i.h, align 4, !tbaa !116 ; 7 uses
  store i32 %i.ww, ptr %i.a, align 4, !tbaa !116
  %.not18222040 = icmp slt i32 %i.ww, 1
  br i1 %.not18222040, label %.loopexit1950, label %.lr.ph2043

.lr.ph2043:                                       ; preds = %bb.dv
  store i32 %i.ww, ptr %i.b, align 4, !tbaa !116
  %i.wx = sext i32 %i.n to i64                    ; 6 uses
  %i.wy = zext nneg i32 %i.ww to i64
  %i.wz = add nuw i32 %i.ww, 1                    ; 2 uses
  %wide.trip.count2283 = zext i32 %i.wz to i64
  %wide.trip.count2280 = zext nneg i32 %i.ww to i64 ; 4 uses
  %ident.check2823.not = icmp eq i32 %i.n, 1
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph2043, %bb.dx
  %indvar2824 = phi i64 [ 0, %.lr.ph2043 ], [ %indvar.next2825, %bb.dx ] ; 2 uses
  %indvars.iv2275 = phi i64 [ 1, %.lr.ph2043 ], [ %indvars.iv.next2276, %bb.dx ] ; 7 uses
  %22 = xor i64 %indvar2824, -1
  %23 = add i64 %22, %wide.trip.count2280         ; 3 uses
  %.not1823.not2034 = icmp samesign ult i64 %indvars.iv2275, %i.wy
  br i1 %.not1823.not2034, label %.lr.ph2037, label %bb.dx

.lr.ph2037:                                       ; preds = %bb.dw
  %i.xa = mul nsw i64 %indvars.iv2275, %i.wx
  %invariant.gep2552 = getelementptr [8 x i8], ptr %i.p, i64 %i.xa ; 6 uses
  %invariant.gep2554 = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv2275 ; 6 uses
  %min.iters.check2826 = icmp ugt i64 %23, 7
  %or.cond3221 = select i1 %min.iters.check2826, i1 %ident.check2823.not, i1 false
  br i1 %or.cond3221, label %vector.ph2827, label %scalar.ph.preheader

vector.ph2827:                                    ; preds = %.lr.ph2037
  %n.vec2828 = and i64 %23, -8                    ; 3 uses
  %i.xb = add i64 %indvars.iv2275, %n.vec2828
  %invariant.op3318 = add nuw i64 %indvars.iv2275, 1
  br label %vector.body2829

vector.body2829:                                  ; preds = %vector.body2829, %vector.ph2827
  %index2830 = phi i64 [ 0, %vector.ph2827 ], [ %index.next2835, %vector.body2829 ] ; 2 uses
  %.reass3319 = add nuw i64 %index2830, %invariant.op3318 ; 2 uses
  %i.xc = getelementptr [8 x i8], ptr %invariant.gep2552, i64 %.reass3319 ; 3 uses
  %i.xd = getelementptr i8, ptr %i.xc, i64 32     ; 2 uses
  %wide.load2831 = load <4 x double>, ptr %i.xc, align 8, !tbaa !118
  %wide.load2832 = load <4 x double>, ptr %i.xd, align 8, !tbaa !118 ; 2 uses
  %i.xe = getelementptr [8 x i8], ptr %invariant.gep2554, i64 %.reass3319 ; 3 uses
  %i.xf = getelementptr i8, ptr %i.xe, i64 32     ; 2 uses
  %wide.load2833 = load <4 x double>, ptr %i.xe, align 8, !tbaa !118
  %wide.load2834 = load <4 x double>, ptr %i.xf, align 8, !tbaa !118
  store <4 x double> %wide.load2833, ptr %i.xc, align 8, !tbaa !118
  store <4 x double> %wide.load2834, ptr %i.xd, align 8, !tbaa !118
  store <4 x double> %wide.load2831, ptr %i.xe, align 8, !tbaa !118
  store <4 x double> %wide.load2832, ptr %i.xf, align 8, !tbaa !118
  %index.next2835 = add nuw i64 %index2830, 8     ; 2 uses
  %i.xg = icmp eq i64 %index.next2835, %n.vec2828
  br i1 %i.xg, label %middle.block2836, label %vector.body2829, !llvm.loop !37

middle.block2836:                                 ; preds = %vector.body2829
  %i.xh = extractelement <4 x double> %wide.load2832, i64 3
  %cmp.n2837 = icmp eq i64 %23, %n.vec2828
  br i1 %cmp.n2837, label %._crit_edge2038, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph2037, %middle.block2836
  %indvars.iv2277.ph = phi i64 [ %indvars.iv2275, %.lr.ph2037 ], [ %i.xb, %middle.block2836 ] ; 4 uses
  %i.xi = sub i64 %wide.trip.count2280, %indvars.iv2277.ph
  %xtraiter3251 = and i64 %i.xi, 3                ; 2 uses
  %lcmp.mod3252.not = icmp eq i64 %xtraiter3251, 0
  br i1 %lcmp.mod3252.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv2277.prol = phi i64 [ %indvars.iv.next2278.prol, %scalar.ph.prol ], [ %indvars.iv2277.ph, %scalar.ph.preheader ]
  %prol.iter3253 = phi i64 [ %prol.iter3253.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next2278.prol = add nuw nsw i64 %indvars.iv2277.prol, 1 ; 4 uses
  %gep2553.prol = getelementptr [8 x i8], ptr %invariant.gep2552, i64 %indvars.iv.next2278.prol ; 2 uses
  %i.xj = load double, ptr %gep2553.prol, align 8, !tbaa !118 ; 2 uses
  %i.xk = mul nsw i64 %indvars.iv.next2278.prol, %i.wx
  %gep2555.prol = getelementptr [8 x i8], ptr %invariant.gep2554, i64 %i.xk ; 2 uses
  %i.xl = load double, ptr %gep2555.prol, align 8, !tbaa !118
  store double %i.xl, ptr %gep2553.prol, align 8, !tbaa !118
  store double %i.xj, ptr %gep2555.prol, align 8, !tbaa !118
  %prol.iter3253.next = add i64 %prol.iter3253, 1 ; 2 uses
  %prol.iter3253.cmp.not = icmp eq i64 %prol.iter3253.next, %xtraiter3251
  br i1 %prol.iter3253.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !38

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa3242.unr = phi double [ poison, %scalar.ph.preheader ], [ %i.xj, %scalar.ph.prol ]
  %indvars.iv2277.unr = phi i64 [ %indvars.iv2277.ph, %scalar.ph.preheader ], [ %indvars.iv.next2278.prol, %scalar.ph.prol ]
  %i.xm = sub i64 %indvars.iv2277.ph, %wide.trip.count2280
  %i.xn = icmp ugt i64 %i.xm, -4
  br i1 %i.xn, label %._crit_edge2038, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv2277 = phi i64 [ %indvars.iv.next2278.3, %scalar.ph ], [ %indvars.iv2277.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv.next2278 = add nuw nsw i64 %indvars.iv2277, 1 ; 2 uses
  %gep2553 = getelementptr [8 x i8], ptr %invariant.gep2552, i64 %indvars.iv.next2278 ; 2 uses
  %i.xo = load double, ptr %gep2553, align 8, !tbaa !118
  %i.xp = mul nsw i64 %indvars.iv.next2278, %i.wx
  %gep2555 = getelementptr [8 x i8], ptr %invariant.gep2554, i64 %i.xp ; 2 uses
  %i.xq = load double, ptr %gep2555, align 8, !tbaa !118
  store double %i.xq, ptr %gep2553, align 8, !tbaa !118
  store double %i.xo, ptr %gep2555, align 8, !tbaa !118
  %indvars.iv.next2278.1 = add nuw nsw i64 %indvars.iv2277, 2 ; 2 uses
  %gep2553.1 = getelementptr [8 x i8], ptr %invariant.gep2552, i64 %indvars.iv.next2278.1 ; 2 uses
  %i.xr = load double, ptr %gep2553.1, align 8, !tbaa !118
  %i.xs = mul nsw i64 %indvars.iv.next2278.1, %i.wx
  %gep2555.1 = getelementptr [8 x i8], ptr %invariant.gep2554, i64 %i.xs ; 2 uses
  %i.xt = load double, ptr %gep2555.1, align 8, !tbaa !118
  store double %i.xt, ptr %gep2553.1, align 8, !tbaa !118
  store double %i.xr, ptr %gep2555.1, align 8, !tbaa !118
  %indvars.iv.next2278.2 = add nuw nsw i64 %indvars.iv2277, 3 ; 2 uses
  %gep2553.2 = getelementptr [8 x i8], ptr %invariant.gep2552, i64 %indvars.iv.next2278.2 ; 2 uses
  %i.xu = load double, ptr %gep2553.2, align 8, !tbaa !118
  %i.xv = mul nsw i64 %indvars.iv.next2278.2, %i.wx
  %gep2555.2 = getelementptr [8 x i8], ptr %invariant.gep2554, i64 %i.xv ; 2 uses
  %i.xw = load double, ptr %gep2555.2, align 8, !tbaa !118
  store double %i.xw, ptr %gep2553.2, align 8, !tbaa !118
  store double %i.xu, ptr %gep2555.2, align 8, !tbaa !118
  %indvars.iv.next2278.3 = add nuw nsw i64 %indvars.iv2277, 4 ; 4 uses
  %gep2553.3 = getelementptr [8 x i8], ptr %invariant.gep2552, i64 %indvars.iv.next2278.3 ; 2 uses
  %i.xx = load double, ptr %gep2553.3, align 8, !tbaa !118 ; 2 uses
  %i.xy = mul nsw i64 %indvars.iv.next2278.3, %i.wx
  %gep2555.3 = getelementptr [8 x i8], ptr %invariant.gep2554, i64 %i.xy ; 2 uses
  %i.xz = load double, ptr %gep2555.3, align 8, !tbaa !118
  store double %i.xz, ptr %gep2553.3, align 8, !tbaa !118
  store double %i.xx, ptr %gep2555.3, align 8, !tbaa !118
  %exitcond2281.not.3 = icmp eq i64 %indvars.iv.next2278.3, %wide.trip.count2280
  br i1 %exitcond2281.not.3, label %._crit_edge2038, label %scalar.ph, !llvm.loop !39

._crit_edge2038:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block2836
  %.lcssa2680 = phi double [ %i.xh, %middle.block2836 ], [ %.lcssa3242.unr, %scalar.ph.prol.loopexit ], [ %i.xx, %scalar.ph ]
  store double %.lcssa2680, ptr %i.e, align 8, !tbaa !118
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge2038, %bb.dw
  %indvars.iv.next2276 = add nuw nsw i64 %indvars.iv2275, 1 ; 2 uses
  %exitcond2284.not = icmp eq i64 %indvars.iv.next2276, %wide.trip.count2283
  %indvar.next2825 = add i64 %indvar2824, 1
  br i1 %exitcond2284.not, label %.loopexit1950, label %bb.dw, !llvm.loop !40

bb.dy:                                            ; preds = %bb.dr
  call void @dlacpy_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %10, ptr noundef nonnull %11) #6
  %i.ya = load i32, ptr %i.h, align 4, !tbaa !116 ; 2 uses
  %i.yb = icmp sgt i32 %i.ya, 1
  br i1 %i.yb, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.yc = add nsw i32 %i.ya, -1                   ; 2 uses
  store i32 %i.yc, ptr %i.a, align 4, !tbaa !116
  store i32 %i.yc, ptr %i.b, align 4, !tbaa !116
  %i.yd = sext i32 %i.n to i64
  %i.ye = getelementptr [8 x i8], ptr %i.p, i64 %i.yd
  %i.yf = getelementptr i8, ptr %i.ye, i64 16
  call void @dlaset_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.yf, ptr noundef nonnull %11) #6
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.yg = load i32, ptr %18, align 4, !tbaa !116
  %i.yh = load i32, ptr %6, align 4, !tbaa !116   ; 2 uses
  %i.yi = sub nsw i32 %i.yg, %i.yh
  store i32 %i.yi, ptr %i.a, align 4, !tbaa !116
  %i.yj = sext i32 %i.yh to i64
  %i.yk = getelementptr [8 x i8], ptr %i.u, i64 %i.yj
  %i.yl = getelementptr i8, ptr %i.yk, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %i.yl, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  %.pre2427 = load i32, ptr %i.h, align 4, !tbaa !116
  br label %bb.eb

.loopexit1950:                                    ; preds = %bb.dx, %bb.dv
  %storemerge1821.lcssa = phi i32 [ 1, %bb.dv ], [ %i.wz, %bb.dx ]
  store i32 %storemerge1821.lcssa, ptr %i.f, align 4, !tbaa !116
  br label %bb.eb

bb.eb:                                            ; preds = %.loopexit1950, %bb.ea
  %i.ym = phi i32 [ %i.ww, %.loopexit1950 ], [ %.pre2427, %bb.ea ] ; 3 uses
  %i.yn = load i32, ptr %5, align 4, !tbaa !116   ; 2 uses
  %i.yo = icmp sge i32 %i.ym, %i.yn
  %or.cond37 = select i1 %i.yo, i1 true, i1 %i.af
  br i1 %or.cond37, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.yp = sub nsw i32 %i.yn, %i.ym
  store i32 %i.yp, ptr %i.a, align 4, !tbaa !116
  %i.yq = add i32 %i.n, 1                         ; 2 uses
  %i.yr = add i32 %i.yq, %i.ym
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ys
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.yt, ptr noundef nonnull %11) #6
  %i.yu = load i32, ptr %i.h, align 4, !tbaa !116 ; 3 uses
  %i.yv = load i32, ptr %i.g, align 4, !tbaa !116 ; 2 uses
  %i.yw = icmp slt i32 %i.yu, %i.yv
  br i1 %i.yw, label %bb.ed, label %.thread1917

bb.ed:                                            ; preds = %bb.ec
  %i.yx = sub nsw i32 %i.yv, %i.yu
  store i32 %i.yx, ptr %i.a, align 4, !tbaa !116
  %i.yy = add nsw i32 %i.yu, 1
  %i.yz = mul nsw i32 %i.yy, %i.n
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr [8 x i8], ptr %i.p, i64 %i.za
  %i.zc = getelementptr i8, ptr %i.zb, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.zc, ptr noundef nonnull %11) #6
  %i.zd = load i32, ptr %5, align 4, !tbaa !116
  %i.ze = load i32, ptr %i.h, align 4, !tbaa !116 ; 3 uses
  %i.zf = sub nsw i32 %i.zd, %i.ze
  store i32 %i.zf, ptr %i.a, align 4, !tbaa !116
  %i.zg = load i32, ptr %i.g, align 4, !tbaa !116
  %i.zh = sub nsw i32 %i.zg, %i.ze
  store i32 %i.zh, ptr %i.b, align 4, !tbaa !116
  %i.zi = add nsw i32 %i.ze, 1
  %i.zj = mul i32 %i.zi, %i.yq
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.zk
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b76, ptr noundef %i.zl, ptr noundef nonnull %11) #6
  br label %.thread1917

bb.ee:                                            ; preds = %bb.eb
  br i1 %i.af, label %.thread1918, label %.thread1917

.thread1917:                                      ; preds = %bb.ed, %bb.ec, %bb.ee
  %i.zm = load i32, ptr %18, align 4, !tbaa !116
  %i.zn = load i32, ptr %6, align 4, !tbaa !116   ; 2 uses
  %i.zo = sub nsw i32 %i.zm, %i.zn
  store i32 %i.zo, ptr %i.a, align 4, !tbaa !116
  %i.zp = sext i32 %i.zn to i64
  %i.zq = getelementptr [8 x i8], ptr %i.u, i64 %i.zp
  %i.zr = getelementptr i8, ptr %i.zq, i64 8
  call void @dormqr_(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, ptr noundef nonnull %5, ptr noundef nonnull %i.g, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %17, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %i.zr, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #6
  %or.cond39 = select i1 %.not1729, i1 true, i1 %i.af
end_hunk_0
begin_hunk_1_@dgesvdq_:bb.a
  br i1 %found.conflict2850, label %vec.epilog.scalar.ph2869.preheader, label %vector.main.loop.iter.check2853

vector.main.loop.iter.check2853:                  ; preds = %vector.memcheck2841
  %min.iters.check2854 = icmp ult i64 %i.aau, 16
  br i1 %min.iters.check2854, label %vec.epilog.ph2872, label %vector.ph2855

vector.ph2855:                                    ; preds = %vector.main.loop.iter.check2853
  %i.aba = and i64 %i.aau, 12
  %n.vec2856 = and i64 %i.aau, -16                ; 4 uses
  %i.abb = add i64 %indvars.iv2285, %n.vec2856
  br label %vector.body2857

vector.body2857:                                  ; preds = %vector.ph2855, %vector.body2857
  %index2858 = phi i64 [ 0, %vector.ph2855 ], [ %index.next2863, %vector.body2857 ] ; 2 uses
  %i.abc = add nuw i64 %indvars.iv2285, %index2858 ; 2 uses
  %i.abd = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.abc ; 4 uses
  %i.abe = getelementptr i8, ptr %i.abd, i64 32
  %i.abf = getelementptr i8, ptr %i.abd, i64 64
  %i.abg = getelementptr i8, ptr %i.abd, i64 96
  %wide.load2859 = load <4 x double>, ptr %i.abd, align 8, !tbaa !118, !alias.scope !129
  %wide.load2860 = load <4 x double>, ptr %i.abe, align 8, !tbaa !118, !alias.scope !129
  %wide.load2861 = load <4 x double>, ptr %i.abf, align 8, !tbaa !118, !alias.scope !129
  %wide.load2862 = load <4 x double>, ptr %i.abg, align 8, !tbaa !118, !alias.scope !129
  %i.abh = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %i.abc ; 4 uses
  %i.abi = getelementptr i8, ptr %i.abh, i64 32
  %i.abj = getelementptr i8, ptr %i.abh, i64 64
  %i.abk = getelementptr i8, ptr %i.abh, i64 96
  store <4 x double> %wide.load2859, ptr %i.abh, align 8, !tbaa !118, !alias.scope !130, !noalias !129
  store <4 x double> %wide.load2860, ptr %i.abi, align 8, !tbaa !118, !alias.scope !130, !noalias !129
  store <4 x double> %wide.load2861, ptr %i.abj, align 8, !tbaa !118, !alias.scope !130, !noalias !129
  store <4 x double> %wide.load2862, ptr %i.abk, align 8, !tbaa !118, !alias.scope !130, !noalias !129
  %index.next2863 = add nuw i64 %index2858, 16    ; 2 uses
  %i.abl = icmp eq i64 %index.next2863, %n.vec2856
  br i1 %i.abl, label %middle.block2864, label %vector.body2857, !llvm.loop !44

middle.block2864:                                 ; preds = %vector.body2857
  %cmp.n2865 = icmp eq i64 %i.aau, %n.vec2856
  br i1 %cmp.n2865, label %._crit_edge2049, label %vec.epilog.iter.check2870

vec.epilog.iter.check2870:                        ; preds = %middle.block2864
  %min.epilog.iters.check2871 = icmp eq i64 %i.aba, 0
  br i1 %min.epilog.iters.check2871, label %vec.epilog.scalar.ph2869.preheader, label %vec.epilog.ph2872, !prof !126

vec.epilog.ph2872:                                ; preds = %vector.main.loop.iter.check2853, %vec.epilog.iter.check2870
  %vec.epilog.resume.val2866 = phi i64 [ %n.vec2856, %vec.epilog.iter.check2870 ], [ 0, %vector.main.loop.iter.check2853 ]
  %n.vec2873 = and i64 %i.aau, -4                 ; 3 uses
  %i.abm = add i64 %indvars.iv2285, %n.vec2873
  br label %vec.epilog.vector.body2874

vec.epilog.vector.body2874:                       ; preds = %vec.epilog.vector.body2874, %vec.epilog.ph2872
  %index2875 = phi i64 [ %vec.epilog.resume.val2866, %vec.epilog.ph2872 ], [ %index.next2877, %vec.epilog.vector.body2874 ] ; 2 uses
  %i.abn = add nuw i64 %indvars.iv2285, %index2875 ; 2 uses
  %i.abo = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.abn
  %wide.load2876 = load <4 x double>, ptr %i.abo, align 8, !tbaa !118, !alias.scope !129
  %i.abp = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %i.abn
  store <4 x double> %wide.load2876, ptr %i.abp, align 8, !tbaa !118, !alias.scope !130, !noalias !129
  %index.next2877 = add nuw i64 %index2875, 4     ; 2 uses
  %i.abq = icmp eq i64 %index.next2877, %n.vec2873
  br i1 %i.abq, label %vec.epilog.middle.block2878, label %vec.epilog.vector.body2874, !llvm.loop !45

vec.epilog.middle.block2878:                      ; preds = %vec.epilog.vector.body2874
  %cmp.n2879 = icmp eq i64 %i.aau, %n.vec2873
  br i1 %cmp.n2879, label %._crit_edge2049, label %vec.epilog.scalar.ph2869.preheader

vec.epilog.scalar.ph2869.preheader:               ; preds = %iter.check2868, %vector.memcheck2841, %vec.epilog.iter.check2870, %vec.epilog.middle.block2878
  %indvars.iv2287.ph = phi i64 [ %indvars.iv2285, %iter.check2868 ], [ %indvars.iv2285, %vector.memcheck2841 ], [ %i.abb, %vec.epilog.iter.check2870 ], [ %i.abm, %vec.epilog.middle.block2878 ] ; 4 uses
  %i.abr = sub i64 %wide.trip.count2290, %indvars.iv2287.ph
  %xtraiter3254 = and i64 %i.abr, 7               ; 2 uses
  %lcmp.mod3255.not = icmp eq i64 %xtraiter3254, 0
  br i1 %lcmp.mod3255.not, label %vec.epilog.scalar.ph2869.prol.loopexit, label %vec.epilog.scalar.ph2869.prol

vec.epilog.scalar.ph2869.prol:                    ; preds = %vec.epilog.scalar.ph2869.preheader, %vec.epilog.scalar.ph2869.prol
  %indvars.iv2287.prol = phi i64 [ %indvars.iv.next2288.prol, %vec.epilog.scalar.ph2869.prol ], [ %indvars.iv2287.ph, %vec.epilog.scalar.ph2869.preheader ] ; 3 uses
  %prol.iter3256 = phi i64 [ %prol.iter3256.next, %vec.epilog.scalar.ph2869.prol ], [ 0, %vec.epilog.scalar.ph2869.preheader ]
  %i.abs = mul nsw i64 %indvars.iv2287.prol, %i.aac
  %gep2557.prol = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.abs
  %i.abt = load double, ptr %gep2557.prol, align 8, !tbaa !118
  %gep2559.prol = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %indvars.iv2287.prol
  store double %i.abt, ptr %gep2559.prol, align 8, !tbaa !118
  %indvars.iv.next2288.prol = add nuw nsw i64 %indvars.iv2287.prol, 1 ; 2 uses
  %prol.iter3256.next = add i64 %prol.iter3256, 1 ; 2 uses
  %prol.iter3256.cmp.not = icmp eq i64 %prol.iter3256.next, %xtraiter3254
  br i1 %prol.iter3256.cmp.not, label %vec.epilog.scalar.ph2869.prol.loopexit, label %vec.epilog.scalar.ph2869.prol, !llvm.loop !46

vec.epilog.scalar.ph2869.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2869.prol, %vec.epilog.scalar.ph2869.preheader
  %indvars.iv2287.unr = phi i64 [ %indvars.iv2287.ph, %vec.epilog.scalar.ph2869.preheader ], [ %indvars.iv.next2288.prol, %vec.epilog.scalar.ph2869.prol ]
  %i.abu = sub i64 %indvars.iv2287.ph, %wide.trip.count2290
  %i.abv = icmp ugt i64 %i.abu, -8
  br i1 %i.abv, label %._crit_edge2049, label %vec.epilog.scalar.ph2869

vec.epilog.scalar.ph2869:                         ; preds = %vec.epilog.scalar.ph2869.prol.loopexit, %vec.epilog.scalar.ph2869
  %indvars.iv2287 = phi i64 [ %indvars.iv.next2288.7, %vec.epilog.scalar.ph2869 ], [ %indvars.iv2287.unr, %vec.epilog.scalar.ph2869.prol.loopexit ] ; 10 uses
  %i.abw = mul nsw i64 %indvars.iv2287, %i.aac
  %gep2557 = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.abw
  %i.abx = load double, ptr %gep2557, align 8, !tbaa !118
  %gep2559 = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %indvars.iv2287
  store double %i.abx, ptr %gep2559, align 8, !tbaa !118
  %indvars.iv.next2288 = add nuw nsw i64 %indvars.iv2287, 1 ; 2 uses
  %i.aby = mul nsw i64 %indvars.iv.next2288, %i.aac
  %gep2557.1 = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.aby
  %i.abz = load double, ptr %gep2557.1, align 8, !tbaa !118
  %gep2559.1 = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %indvars.iv.next2288
  store double %i.abz, ptr %gep2559.1, align 8, !tbaa !118
  %indvars.iv.next2288.1 = add nuw nsw i64 %indvars.iv2287, 2 ; 2 uses
  %i.aca = mul nsw i64 %indvars.iv.next2288.1, %i.aac
  %gep2557.2 = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.aca
  %i.acb = load double, ptr %gep2557.2, align 8, !tbaa !118
  %gep2559.2 = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %indvars.iv.next2288.1
  store double %i.acb, ptr %gep2559.2, align 8, !tbaa !118
  %indvars.iv.next2288.2 = add nuw nsw i64 %indvars.iv2287, 3 ; 2 uses
  %i.acc = mul nsw i64 %indvars.iv.next2288.2, %i.aac
  %gep2557.3 = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.acc
  %i.acd = load double, ptr %gep2557.3, align 8, !tbaa !118
  %gep2559.3 = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %indvars.iv.next2288.2
  store double %i.acd, ptr %gep2559.3, align 8, !tbaa !118
  %indvars.iv.next2288.3 = add nuw nsw i64 %indvars.iv2287, 4 ; 2 uses
  %i.ace = mul nsw i64 %indvars.iv.next2288.3, %i.aac
  %gep2557.4 = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.ace
  %i.acf = load double, ptr %gep2557.4, align 8, !tbaa !118
  %gep2559.4 = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %indvars.iv.next2288.3
  store double %i.acf, ptr %gep2559.4, align 8, !tbaa !118
  %indvars.iv.next2288.4 = add nuw nsw i64 %indvars.iv2287, 5 ; 2 uses
  %i.acg = mul nsw i64 %indvars.iv.next2288.4, %i.aac
  %gep2557.5 = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.acg
  %i.ach = load double, ptr %gep2557.5, align 8, !tbaa !118
  %gep2559.5 = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %indvars.iv.next2288.4
  store double %i.ach, ptr %gep2559.5, align 8, !tbaa !118
  %indvars.iv.next2288.5 = add nuw nsw i64 %indvars.iv2287, 6 ; 2 uses
  %i.aci = mul nsw i64 %indvars.iv.next2288.5, %i.aac
  %gep2557.6 = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.aci
  %i.acj = load double, ptr %gep2557.6, align 8, !tbaa !118
  %gep2559.6 = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %indvars.iv.next2288.5
  store double %i.acj, ptr %gep2559.6, align 8, !tbaa !118
  %indvars.iv.next2288.6 = add nuw nsw i64 %indvars.iv2287, 7 ; 2 uses
  %i.ack = mul nsw i64 %indvars.iv.next2288.6, %i.aac
  %gep2557.7 = getelementptr [8 x i8], ptr %invariant.gep2556, i64 %i.ack
  %i.acl = load double, ptr %gep2557.7, align 8, !tbaa !118
  %gep2559.7 = getelementptr [8 x i8], ptr %invariant.gep2558, i64 %indvars.iv.next2288.6
  store double %i.acl, ptr %gep2559.7, align 8, !tbaa !118
  %indvars.iv.next2288.7 = add nuw nsw i64 %indvars.iv2287, 8 ; 2 uses
  %exitcond2291.not.7 = icmp eq i64 %indvars.iv.next2288.7, %wide.trip.count2290
  br i1 %exitcond2291.not.7, label %._crit_edge2049, label %vec.epilog.scalar.ph2869, !llvm.loop !47

._crit_edge2049:                                  ; preds = %vec.epilog.scalar.ph2869.prol.loopexit, %vec.epilog.scalar.ph2869, %middle.block2864, %vec.epilog.middle.block2878, %bb.ej
  %indvars.iv.next2286 = add nuw nsw i64 %indvars.iv2285, 1 ; 2 uses
  %exitcond2294.not = icmp eq i64 %indvars.iv.next2286, %wide.trip.count2293
  %indvar.next2843 = add i64 %indvar2842, 1
  br i1 %exitcond2294.not, label %._crit_edge2054, label %bb.ej, !llvm.loop !48

._crit_edge2054:                                  ; preds = %._crit_edge2049
  store i32 %i.aag, ptr %i.f, align 4, !tbaa !116
  %.not2671 = icmp eq i32 %i.aaa, 1
  br i1 %.not2671, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge2054
  %i.acm = add nsw i32 %i.aaa, -1                 ; 2 uses
  store i32 %i.acm, ptr %i.a, align 4, !tbaa !116
  store i32 %i.acm, ptr %i.b, align 4, !tbaa !116
  %i.acn = shl i32 %i.q, 1
  %i.aco = sext i32 %i.acn to i64
  %i.acp = getelementptr [8 x i8], ptr %i.s, i64 %i.aco
  %i.acq = getelementptr i8, ptr %i.acp, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.acq, ptr noundef nonnull %13) #6
  br label %bb.el

bb.el:                                            ; preds = %._crit_edge2054.thread, %bb.ek, %._crit_edge2054
  %.pre2428 = load i32, ptr %6, align 4, !tbaa !116 ; 4 uses
  br i1 %i.an, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.acr = load i32, ptr %i.h, align 4, !tbaa !116 ; 3 uses
  %i.acs = icmp eq i32 %i.acr, %.pre2428
  br i1 %i.acs, label %bb.en, label %bb.er

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.act = load i32, ptr %18, align 4, !tbaa !116
  %i.acu = sub nsw i32 %i.act, %.pre2428
  store i32 %i.acu, ptr %i.a, align 4, !tbaa !116
  %i.acv = sext i32 %.pre2428 to i64
  %i.acw = getelementptr [8 x i8], ptr %i.u, i64 %i.acv
  %i.acx = getelementptr i8, ptr %i.acw, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, ptr noundef nonnull %i.h, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %i.acx, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  %i.acy = load i32, ptr %i.h, align 4, !tbaa !116 ; 11 uses
  store i32 %i.acy, ptr %i.a, align 4, !tbaa !116
  %.not18322074 = icmp slt i32 %i.acy, 1
  br i1 %.not18322074, label %._crit_edge2078.thread, label %.lr.ph2077

.lr.ph2077:                                       ; preds = %bb.en
  store i32 %i.acy, ptr %i.b, align 4, !tbaa !116
  %i.acz = sext i32 %i.q to i64                   ; 6 uses
  %i.ada = zext nneg i32 %i.acy to i64
  %i.adb = add nuw i32 %i.acy, 1                  ; 2 uses
  %wide.trip.count2313 = zext i32 %i.adb to i64
  %wide.trip.count2310 = zext nneg i32 %i.acy to i64 ; 5 uses
  %ident.check2900.not = icmp eq i32 %i.q, 1
  br label %bb.eo

bb.eo:                                            ; preds = %.lr.ph2077, %bb.ep
  %indvar2901 = phi i64 [ 0, %.lr.ph2077 ], [ %indvar.next2902, %bb.ep ] ; 2 uses
  %indvars.iv2305 = phi i64 [ 1, %.lr.ph2077 ], [ %indvars.iv.next2306, %bb.ep ] ; 7 uses
  %24 = xor i64 %indvar2901, -1
  %25 = add i64 %24, %wide.trip.count2310         ; 3 uses
  %.not1836.not2068 = icmp samesign ult i64 %indvars.iv2305, %i.ada
  br i1 %.not1836.not2068, label %.lr.ph2071, label %bb.ep

.lr.ph2071:                                       ; preds = %bb.eo
  %i.adc = mul nsw i64 %indvars.iv2305, %i.acz
  %invariant.gep2564 = getelementptr [8 x i8], ptr %i.s, i64 %i.adc ; 6 uses
  %invariant.gep2566 = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv2305 ; 6 uses
  %min.iters.check2904 = icmp ugt i64 %25, 7
  %or.cond3223 = select i1 %min.iters.check2904, i1 %ident.check2900.not, i1 false
  br i1 %or.cond3223, label %vector.ph2905, label %scalar.ph2903.preheader

vector.ph2905:                                    ; preds = %.lr.ph2071
  %n.vec2906 = and i64 %25, -8                    ; 3 uses
  %i.add = add i64 %indvars.iv2305, %n.vec2906
  %invariant.op3322 = add nuw i64 %indvars.iv2305, 1
  br label %vector.body2907

vector.body2907:                                  ; preds = %vector.body2907, %vector.ph2905
  %index2908 = phi i64 [ 0, %vector.ph2905 ], [ %index.next2913, %vector.body2907 ] ; 2 uses
  %.reass3323 = add nuw i64 %index2908, %invariant.op3322 ; 2 uses
  %i.ade = getelementptr [8 x i8], ptr %invariant.gep2564, i64 %.reass3323 ; 3 uses
  %i.adf = getelementptr i8, ptr %i.ade, i64 32   ; 2 uses
  %wide.load2909 = load <4 x double>, ptr %i.ade, align 8, !tbaa !118
  %wide.load2910 = load <4 x double>, ptr %i.adf, align 8, !tbaa !118 ; 2 uses
  %i.adg = getelementptr [8 x i8], ptr %invariant.gep2566, i64 %.reass3323 ; 3 uses
  %i.adh = getelementptr i8, ptr %i.adg, i64 32   ; 2 uses
  %wide.load2911 = load <4 x double>, ptr %i.adg, align 8, !tbaa !118
  %wide.load2912 = load <4 x double>, ptr %i.adh, align 8, !tbaa !118
  store <4 x double> %wide.load2911, ptr %i.ade, align 8, !tbaa !118
  store <4 x double> %wide.load2912, ptr %i.adf, align 8, !tbaa !118
  store <4 x double> %wide.load2909, ptr %i.adg, align 8, !tbaa !118
  store <4 x double> %wide.load2910, ptr %i.adh, align 8, !tbaa !118
  %index.next2913 = add nuw i64 %index2908, 8     ; 2 uses
  %i.adi = icmp eq i64 %index.next2913, %n.vec2906
  br i1 %i.adi, label %middle.block2914, label %vector.body2907, !llvm.loop !49

middle.block2914:                                 ; preds = %vector.body2907
  %i.adj = extractelement <4 x double> %wide.load2910, i64 3
  %cmp.n2915 = icmp eq i64 %25, %n.vec2906
  br i1 %cmp.n2915, label %._crit_edge2072, label %scalar.ph2903.preheader

scalar.ph2903.preheader:                          ; preds = %.lr.ph2071, %middle.block2914
  %indvars.iv2307.ph = phi i64 [ %indvars.iv2305, %.lr.ph2071 ], [ %i.add, %middle.block2914 ] ; 4 uses
  %i.adk = sub i64 %wide.trip.count2310, %indvars.iv2307.ph
  %xtraiter3260 = and i64 %i.adk, 3               ; 2 uses
  %lcmp.mod3261.not = icmp eq i64 %xtraiter3260, 0
  br i1 %lcmp.mod3261.not, label %scalar.ph2903.prol.loopexit, label %scalar.ph2903.prol

scalar.ph2903.prol:                               ; preds = %scalar.ph2903.preheader, %scalar.ph2903.prol
  %indvars.iv2307.prol = phi i64 [ %indvars.iv.next2308.prol, %scalar.ph2903.prol ], [ %indvars.iv2307.ph, %scalar.ph2903.preheader ]
  %prol.iter3262 = phi i64 [ %prol.iter3262.next, %scalar.ph2903.prol ], [ 0, %scalar.ph2903.preheader ]
  %indvars.iv.next2308.prol = add nuw nsw i64 %indvars.iv2307.prol, 1 ; 4 uses
  %gep2565.prol = getelementptr [8 x i8], ptr %invariant.gep2564, i64 %indvars.iv.next2308.prol ; 2 uses
  %i.adl = load double, ptr %gep2565.prol, align 8, !tbaa !118 ; 2 uses
  %i.adm = mul nsw i64 %indvars.iv.next2308.prol, %i.acz
  %gep2567.prol = getelementptr [8 x i8], ptr %invariant.gep2566, i64 %i.adm ; 2 uses
  %i.adn = load double, ptr %gep2567.prol, align 8, !tbaa !118
  store double %i.adn, ptr %gep2565.prol, align 8, !tbaa !118
  store double %i.adl, ptr %gep2567.prol, align 8, !tbaa !118
  %prol.iter3262.next = add i64 %prol.iter3262, 1 ; 2 uses
  %prol.iter3262.cmp.not = icmp eq i64 %prol.iter3262.next, %xtraiter3260
  br i1 %prol.iter3262.cmp.not, label %scalar.ph2903.prol.loopexit, label %scalar.ph2903.prol, !llvm.loop !50

scalar.ph2903.prol.loopexit:                      ; preds = %scalar.ph2903.prol, %scalar.ph2903.preheader
  %.lcssa3240.unr = phi double [ poison, %scalar.ph2903.preheader ], [ %i.adl, %scalar.ph2903.prol ]
  %indvars.iv2307.unr = phi i64 [ %indvars.iv2307.ph, %scalar.ph2903.preheader ], [ %indvars.iv.next2308.prol, %scalar.ph2903.prol ]
  %i.ado = sub i64 %indvars.iv2307.ph, %wide.trip.count2310
  %i.adp = icmp ugt i64 %i.ado, -4
  br i1 %i.adp, label %._crit_edge2072, label %scalar.ph2903

scalar.ph2903:                                    ; preds = %scalar.ph2903.prol.loopexit, %scalar.ph2903
  %indvars.iv2307 = phi i64 [ %indvars.iv.next2308.3, %scalar.ph2903 ], [ %indvars.iv2307.unr, %scalar.ph2903.prol.loopexit ] ; 4 uses
  %indvars.iv.next2308 = add nuw nsw i64 %indvars.iv2307, 1 ; 2 uses
  %gep2565 = getelementptr [8 x i8], ptr %invariant.gep2564, i64 %indvars.iv.next2308 ; 2 uses
  %i.adq = load double, ptr %gep2565, align 8, !tbaa !118
  %i.adr = mul nsw i64 %indvars.iv.next2308, %i.acz
  %gep2567 = getelementptr [8 x i8], ptr %invariant.gep2566, i64 %i.adr ; 2 uses
  %i.ads = load double, ptr %gep2567, align 8, !tbaa !118
  store double %i.ads, ptr %gep2565, align 8, !tbaa !118
  store double %i.adq, ptr %gep2567, align 8, !tbaa !118
  %indvars.iv.next2308.1 = add nuw nsw i64 %indvars.iv2307, 2 ; 2 uses
  %gep2565.1 = getelementptr [8 x i8], ptr %invariant.gep2564, i64 %indvars.iv.next2308.1 ; 2 uses
  %i.adt = load double, ptr %gep2565.1, align 8, !tbaa !118
  %i.adu = mul nsw i64 %indvars.iv.next2308.1, %i.acz
  %gep2567.1 = getelementptr [8 x i8], ptr %invariant.gep2566, i64 %i.adu ; 2 uses
  %i.adv = load double, ptr %gep2567.1, align 8, !tbaa !118
  store double %i.adv, ptr %gep2565.1, align 8, !tbaa !118
  store double %i.adt, ptr %gep2567.1, align 8, !tbaa !118
  %indvars.iv.next2308.2 = add nuw nsw i64 %indvars.iv2307, 3 ; 2 uses
  %gep2565.2 = getelementptr [8 x i8], ptr %invariant.gep2564, i64 %indvars.iv.next2308.2 ; 2 uses
  %i.adw = load double, ptr %gep2565.2, align 8, !tbaa !118
  %i.adx = mul nsw i64 %indvars.iv.next2308.2, %i.acz
  %gep2567.2 = getelementptr [8 x i8], ptr %invariant.gep2566, i64 %i.adx ; 2 uses
  %i.ady = load double, ptr %gep2567.2, align 8, !tbaa !118
  store double %i.ady, ptr %gep2565.2, align 8, !tbaa !118
  store double %i.adw, ptr %gep2567.2, align 8, !tbaa !118
  %indvars.iv.next2308.3 = add nuw nsw i64 %indvars.iv2307, 4 ; 4 uses
  %gep2565.3 = getelementptr [8 x i8], ptr %invariant.gep2564, i64 %indvars.iv.next2308.3 ; 2 uses
  %i.adz = load double, ptr %gep2565.3, align 8, !tbaa !118 ; 2 uses
  %i.aea = mul nsw i64 %indvars.iv.next2308.3, %i.acz
  %gep2567.3 = getelementptr [8 x i8], ptr %invariant.gep2566, i64 %i.aea ; 2 uses
  %i.aeb = load double, ptr %gep2567.3, align 8, !tbaa !118
  store double %i.aeb, ptr %gep2565.3, align 8, !tbaa !118
  store double %i.adz, ptr %gep2567.3, align 8, !tbaa !118
  %exitcond2311.not.3 = icmp eq i64 %indvars.iv.next2308.3, %wide.trip.count2310
  br i1 %exitcond2311.not.3, label %._crit_edge2072, label %scalar.ph2903, !llvm.loop !51

._crit_edge2072:                                  ; preds = %scalar.ph2903.prol.loopexit, %scalar.ph2903, %middle.block2914
  %.lcssa2678 = phi double [ %i.adj, %middle.block2914 ], [ %.lcssa3240.unr, %scalar.ph2903.prol.loopexit ], [ %i.adz, %scalar.ph2903 ]
  store double %.lcssa2678, ptr %i.e, align 8, !tbaa !118
  br label %bb.ep

bb.ep:                                            ; preds = %._crit_edge2072, %bb.eo
  %indvars.iv.next2306 = add nuw nsw i64 %indvars.iv2305, 1 ; 2 uses
  %exitcond2314.not = icmp eq i64 %indvars.iv.next2306, %wide.trip.count2313
  %indvar.next2902 = add i64 %indvar2901, 1
  br i1 %exitcond2314.not, label %._crit_edge2078, label %bb.eo, !llvm.loop !52

._crit_edge2078:                                  ; preds = %bb.ep
  store i32 %i.adb, ptr %i.f, align 4, !tbaa !116
  %i.aec = load i32, ptr %6, align 4, !tbaa !116  ; 3 uses
  %i.aed = icmp slt i32 %i.acy, %i.aec
  br i1 %i.aed, label %.lr.ph2088, label %bb.eq

._crit_edge2078.thread:                           ; preds = %bb.en
  store i32 1, ptr %i.f, align 4, !tbaa !116
  %i.aee = load i32, ptr %6, align 4, !tbaa !116
  %i.aef = icmp slt i32 %i.acy, %i.aee
  br i1 %i.aef, label %.loopexit1949, label %bb.eq

.lr.ph2088:                                       ; preds = %._crit_edge2078
  store i32 %i.acy, ptr %i.a, align 4, !tbaa !116
  store i32 %i.aec, ptr %i.b, align 4, !tbaa !116
  %i.aeg = zext nneg i32 %i.acy to i64            ; 5 uses
  %i.aeh = sext i32 %i.q to i64                   ; 10 uses
  %i.aei = add nuw nsw i32 %i.acy, 1              ; 2 uses
  %wide.trip.count2323 = zext nneg i32 %i.aei to i64
  %wide.trip.count2318 = sext i32 %i.aec to i64   ; 4 uses
  %i.aej = sub nsw i64 %wide.trip.count2318, %wide.trip.count2310 ; 7 uses
  %min.iters.check2920 = icmp ugt i64 %i.aej, 3
  %ident.check2918.not = icmp eq i32 %i.q, 1
  %or.cond3224 = select i1 %min.iters.check2920, i1 %ident.check2918.not, i1 false
  %min.iters.check2922 = icmp ult i64 %i.aej, 16
  %i.aek = and i64 %i.aej, 12
  %n.vec2924 = and i64 %i.aej, -16                ; 4 uses
  %i.ael = add nsw i64 %n.vec2924, %i.aeg
  %invariant.op3324 = add nuw i64 %i.aeg, 1
  %cmp.n2933 = icmp eq i64 %i.aej, %n.vec2924
  %min.epilog.iters.check2939 = icmp eq i64 %i.aek, 0
  %n.vec2941 = and i64 %i.aej, -4                 ; 3 uses
  %i.aem = add nsw i64 %n.vec2941, %i.aeg
  %invariant.op3326 = add nuw i64 %i.aeg, 1
  %cmp.n2947 = icmp eq i64 %i.aej, %n.vec2941
  br label %iter.check2936

iter.check2936:                                   ; preds = %._crit_edge2084, %.lr.ph2088
  %indvars.iv2320 = phi i64 [ 1, %.lr.ph2088 ], [ %indvars.iv.next2321, %._crit_edge2084 ] ; 3 uses
  %i.aen = mul nsw i64 %indvars.iv2320, %i.aeh
  %invariant.gep2568 = getelementptr [8 x i8], ptr %i.s, i64 %i.aen ; 11 uses
  %invariant.gep2570 = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv2320 ; 11 uses
  br i1 %or.cond3224, label %vector.main.loop.iter.check2921, label %vec.epilog.scalar.ph2937.preheader

vector.main.loop.iter.check2921:                  ; preds = %iter.check2936
  br i1 %min.iters.check2922, label %vec.epilog.ph2940, label %vector.body2925

vector.body2925:                                  ; preds = %vector.main.loop.iter.check2921, %vector.body2925
  %index2926 = phi i64 [ %index.next2931, %vector.body2925 ], [ 0, %vector.main.loop.iter.check2921 ] ; 2 uses
  %.reass3325 = add nuw i64 %index2926, %invariant.op3324 ; 2 uses
  %i.aeo = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %.reass3325 ; 4 uses
  %i.aep = getelementptr i8, ptr %i.aeo, i64 32
  %i.aeq = getelementptr i8, ptr %i.aeo, i64 64
  %i.aer = getelementptr i8, ptr %i.aeo, i64 96
  %wide.load2927 = load <4 x double>, ptr %i.aeo, align 8, !tbaa !118
  %wide.load2928 = load <4 x double>, ptr %i.aep, align 8, !tbaa !118
  %wide.load2929 = load <4 x double>, ptr %i.aeq, align 8, !tbaa !118
  %wide.load2930 = load <4 x double>, ptr %i.aer, align 8, !tbaa !118
  %i.aes = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %.reass3325 ; 4 uses
  %i.aet = getelementptr i8, ptr %i.aes, i64 32
  %i.aeu = getelementptr i8, ptr %i.aes, i64 64
  %i.aev = getelementptr i8, ptr %i.aes, i64 96
  store <4 x double> %wide.load2927, ptr %i.aes, align 8, !tbaa !118
  store <4 x double> %wide.load2928, ptr %i.aet, align 8, !tbaa !118
  store <4 x double> %wide.load2929, ptr %i.aeu, align 8, !tbaa !118
  store <4 x double> %wide.load2930, ptr %i.aev, align 8, !tbaa !118
  %index.next2931 = add nuw i64 %index2926, 16    ; 2 uses
  %i.aew = icmp eq i64 %index.next2931, %n.vec2924
  br i1 %i.aew, label %middle.block2932, label %vector.body2925, !llvm.loop !53

middle.block2932:                                 ; preds = %vector.body2925
  br i1 %cmp.n2933, label %._crit_edge2084, label %vec.epilog.iter.check2938

vec.epilog.iter.check2938:                        ; preds = %middle.block2932
  br i1 %min.epilog.iters.check2939, label %vec.epilog.scalar.ph2937.preheader, label %vec.epilog.ph2940, !prof !126

vec.epilog.ph2940:                                ; preds = %vector.main.loop.iter.check2921, %vec.epilog.iter.check2938
  %vec.epilog.resume.val2934 = phi i64 [ %n.vec2924, %vec.epilog.iter.check2938 ], [ 0, %vector.main.loop.iter.check2921 ]
  br label %vec.epilog.vector.body2942

vec.epilog.vector.body2942:                       ; preds = %vec.epilog.vector.body2942, %vec.epilog.ph2940
  %index2943 = phi i64 [ %vec.epilog.resume.val2934, %vec.epilog.ph2940 ], [ %index.next2945, %vec.epilog.vector.body2942 ] ; 2 uses
  %.reass3327 = add nuw i64 %index2943, %invariant.op3326 ; 2 uses
  %i.aex = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %.reass3327
  %wide.load2944 = load <4 x double>, ptr %i.aex, align 8, !tbaa !118
  %i.aey = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %.reass3327
  store <4 x double> %wide.load2944, ptr %i.aey, align 8, !tbaa !118
  %index.next2945 = add nuw i64 %index2943, 4     ; 2 uses
  %i.aez = icmp eq i64 %index.next2945, %n.vec2941
  br i1 %i.aez, label %vec.epilog.middle.block2946, label %vec.epilog.vector.body2942, !llvm.loop !54

vec.epilog.middle.block2946:                      ; preds = %vec.epilog.vector.body2942
  br i1 %cmp.n2947, label %._crit_edge2084, label %vec.epilog.scalar.ph2937.preheader

vec.epilog.scalar.ph2937.preheader:               ; preds = %iter.check2936, %vec.epilog.iter.check2938, %vec.epilog.middle.block2946
  %indvars.iv2315.ph = phi i64 [ %i.aeg, %iter.check2936 ], [ %i.ael, %vec.epilog.iter.check2938 ], [ %i.aem, %vec.epilog.middle.block2946 ] ; 4 uses
  %i.afa = sub nsw i64 %wide.trip.count2318, %indvars.iv2315.ph
  %xtraiter3263 = and i64 %i.afa, 7               ; 2 uses
  %lcmp.mod3264.not = icmp eq i64 %xtraiter3263, 0
  br i1 %lcmp.mod3264.not, label %vec.epilog.scalar.ph2937.prol.loopexit, label %vec.epilog.scalar.ph2937.prol

vec.epilog.scalar.ph2937.prol:                    ; preds = %vec.epilog.scalar.ph2937.preheader, %vec.epilog.scalar.ph2937.prol
  %indvars.iv2315.prol = phi i64 [ %indvars.iv.next2316.prol, %vec.epilog.scalar.ph2937.prol ], [ %indvars.iv2315.ph, %vec.epilog.scalar.ph2937.preheader ]
  %prol.iter3265 = phi i64 [ %prol.iter3265.next, %vec.epilog.scalar.ph2937.prol ], [ 0, %vec.epilog.scalar.ph2937.preheader ]
  %indvars.iv.next2316.prol = add nuw nsw i64 %indvars.iv2315.prol, 1 ; 4 uses
  %gep2569.prol = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %indvars.iv.next2316.prol
  %i.afb = load double, ptr %gep2569.prol, align 8, !tbaa !118
  %i.afc = mul nsw i64 %indvars.iv.next2316.prol, %i.aeh
  %gep2571.prol = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.afc
  store double %i.afb, ptr %gep2571.prol, align 8, !tbaa !118
  %prol.iter3265.next = add i64 %prol.iter3265, 1 ; 2 uses
  %prol.iter3265.cmp.not = icmp eq i64 %prol.iter3265.next, %xtraiter3263
  br i1 %prol.iter3265.cmp.not, label %vec.epilog.scalar.ph2937.prol.loopexit, label %vec.epilog.scalar.ph2937.prol, !llvm.loop !55

vec.epilog.scalar.ph2937.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2937.prol, %vec.epilog.scalar.ph2937.preheader
  %indvars.iv2315.unr = phi i64 [ %indvars.iv2315.ph, %vec.epilog.scalar.ph2937.preheader ], [ %indvars.iv.next2316.prol, %vec.epilog.scalar.ph2937.prol ]
  %i.afd = sub nsw i64 %indvars.iv2315.ph, %wide.trip.count2318
  %i.afe = icmp ugt i64 %i.afd, -8
  br i1 %i.afe, label %._crit_edge2084, label %vec.epilog.scalar.ph2937

vec.epilog.scalar.ph2937:                         ; preds = %vec.epilog.scalar.ph2937.prol.loopexit, %vec.epilog.scalar.ph2937
  %indvars.iv2315 = phi i64 [ %indvars.iv.next2316.7, %vec.epilog.scalar.ph2937 ], [ %indvars.iv2315.unr, %vec.epilog.scalar.ph2937.prol.loopexit ] ; 8 uses
  %indvars.iv.next2316 = add nuw nsw i64 %indvars.iv2315, 1 ; 2 uses
  %gep2569 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %indvars.iv.next2316
  %i.aff = load double, ptr %gep2569, align 8, !tbaa !118
  %i.afg = mul nsw i64 %indvars.iv.next2316, %i.aeh
  %gep2571 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.afg
  store double %i.aff, ptr %gep2571, align 8, !tbaa !118
  %indvars.iv.next2316.1 = add nuw nsw i64 %indvars.iv2315, 2 ; 2 uses
  %gep2569.1 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %indvars.iv.next2316.1
  %i.afh = load double, ptr %gep2569.1, align 8, !tbaa !118
  %i.afi = mul nsw i64 %indvars.iv.next2316.1, %i.aeh
  %gep2571.1 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.afi
  store double %i.afh, ptr %gep2571.1, align 8, !tbaa !118
  %indvars.iv.next2316.2 = add nuw nsw i64 %indvars.iv2315, 3 ; 2 uses
  %gep2569.2 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %indvars.iv.next2316.2
  %i.afj = load double, ptr %gep2569.2, align 8, !tbaa !118
  %i.afk = mul nsw i64 %indvars.iv.next2316.2, %i.aeh
  %gep2571.2 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.afk
  store double %i.afj, ptr %gep2571.2, align 8, !tbaa !118
  %indvars.iv.next2316.3 = add nuw nsw i64 %indvars.iv2315, 4 ; 2 uses
  %gep2569.3 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %indvars.iv.next2316.3
  %i.afl = load double, ptr %gep2569.3, align 8, !tbaa !118
  %i.afm = mul nsw i64 %indvars.iv.next2316.3, %i.aeh
  %gep2571.3 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.afm
  store double %i.afl, ptr %gep2571.3, align 8, !tbaa !118
  %indvars.iv.next2316.4 = add nuw nsw i64 %indvars.iv2315, 5 ; 2 uses
  %gep2569.4 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %indvars.iv.next2316.4
  %i.afn = load double, ptr %gep2569.4, align 8, !tbaa !118
  %i.afo = mul nsw i64 %indvars.iv.next2316.4, %i.aeh
  %gep2571.4 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.afo
  store double %i.afn, ptr %gep2571.4, align 8, !tbaa !118
  %indvars.iv.next2316.5 = add nuw nsw i64 %indvars.iv2315, 6 ; 2 uses
  %gep2569.5 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %indvars.iv.next2316.5
  %i.afp = load double, ptr %gep2569.5, align 8, !tbaa !118
  %i.afq = mul nsw i64 %indvars.iv.next2316.5, %i.aeh
  %gep2571.5 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.afq
  store double %i.afp, ptr %gep2571.5, align 8, !tbaa !118
  %indvars.iv.next2316.6 = add nuw nsw i64 %indvars.iv2315, 7 ; 2 uses
  %gep2569.6 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %indvars.iv.next2316.6
  %i.afr = load double, ptr %gep2569.6, align 8, !tbaa !118
  %i.afs = mul nsw i64 %indvars.iv.next2316.6, %i.aeh
  %gep2571.6 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.afs
  store double %i.afr, ptr %gep2571.6, align 8, !tbaa !118
  %indvars.iv.next2316.7 = add nuw nsw i64 %indvars.iv2315, 8 ; 4 uses
  %gep2569.7 = getelementptr [8 x i8], ptr %invariant.gep2568, i64 %indvars.iv.next2316.7
  %i.aft = load double, ptr %gep2569.7, align 8, !tbaa !118
  %i.afu = mul nsw i64 %indvars.iv.next2316.7, %i.aeh
  %gep2571.7 = getelementptr [8 x i8], ptr %invariant.gep2570, i64 %i.afu
  store double %i.aft, ptr %gep2571.7, align 8, !tbaa !118
  %exitcond2319.not.7 = icmp eq i64 %indvars.iv.next2316.7, %wide.trip.count2318
  br i1 %exitcond2319.not.7, label %._crit_edge2084, label %vec.epilog.scalar.ph2937, !llvm.loop !56

._crit_edge2084:                                  ; preds = %vec.epilog.scalar.ph2937.prol.loopexit, %vec.epilog.scalar.ph2937, %vec.epilog.middle.block2946, %middle.block2932
  %indvars.iv.next2321 = add nuw nsw i64 %indvars.iv2320, 1 ; 2 uses
  %exitcond2324.not = icmp eq i64 %indvars.iv.next2321, %wide.trip.count2323
  br i1 %exitcond2324.not, label %.loopexit1949, label %iter.check2936, !llvm.loop !57

.loopexit1949:                                    ; preds = %._crit_edge2084, %._crit_edge2078.thread
  %storemerge1833.lcssa = phi i32 [ 1, %._crit_edge2078.thread ], [ %i.aei, %._crit_edge2084 ]
  store i32 %storemerge1833.lcssa, ptr %i.f, align 4, !tbaa !116
  br label %bb.eq

bb.eq:                                            ; preds = %._crit_edge2078.thread, %.loopexit1949, %._crit_edge2078
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %15) #6
  br label %.thread1918

bb.er:                                            ; preds = %bb.em
  %i.afv = sub nsw i32 %.pre2428, %i.acr
  store i32 %i.afv, ptr %i.a, align 4, !tbaa !116
  %i.afw = add nsw i32 %i.acr, 1
  %i.afx = mul nsw i32 %i.afw, %i.q
  %i.afy = sext i32 %i.afx to i64
  %i.afz = getelementptr [8 x i8], ptr %i.s, i64 %i.afy
  %i.aga = getelementptr i8, ptr %i.afz, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.16, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.aga, ptr noundef nonnull %13) #6
  %i.agb = load i32, ptr %18, align 4, !tbaa !116
  %i.agc = load i32, ptr %6, align 4, !tbaa !116  ; 2 uses
  %i.agd = sub nsw i32 %i.agb, %i.agc
  store i32 %i.agd, ptr %i.a, align 4, !tbaa !116
  %i.age = sext i32 %i.agc to i64
  %i.agf = getelementptr [8 x i8], ptr %i.u, i64 %i.age
  %i.agg = getelementptr i8, ptr %i.agf, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %i.agg, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  %i.agh = load i32, ptr %6, align 4, !tbaa !116  ; 6 uses
  store i32 %i.agh, ptr %i.a, align 4, !tbaa !116
  %.not18292062 = icmp slt i32 %i.agh, 1
  br i1 %.not18292062, label %._crit_edge2066, label %.lr.ph2065

.lr.ph2065:                                       ; preds = %bb.er
  store i32 %i.agh, ptr %i.b, align 4, !tbaa !116
  %i.agi = sext i32 %i.q to i64                   ; 6 uses
  %i.agj = zext nneg i32 %i.agh to i64
  %i.agk = add nuw i32 %i.agh, 1                  ; 2 uses
  %wide.trip.count2303 = zext i32 %i.agk to i64
  %wide.trip.count2300 = zext nneg i32 %i.agh to i64 ; 4 uses
  %ident.check2882.not = icmp eq i32 %i.q, 1
  br label %bb.es

bb.es:                                            ; preds = %.lr.ph2065, %bb.et
  %indvar2883 = phi i64 [ 0, %.lr.ph2065 ], [ %indvar.next2884, %bb.et ] ; 2 uses
  %indvars.iv2295 = phi i64 [ 1, %.lr.ph2065 ], [ %indvars.iv.next2296, %bb.et ] ; 7 uses
  %26 = xor i64 %indvar2883, -1
  %27 = add i64 %26, %wide.trip.count2300         ; 3 uses
  %.not1830.not2056 = icmp samesign ult i64 %indvars.iv2295, %i.agj
  br i1 %.not1830.not2056, label %.lr.ph2059, label %bb.et

.lr.ph2059:                                       ; preds = %bb.es
  %i.agl = mul nsw i64 %indvars.iv2295, %i.agi
  %invariant.gep2560 = getelementptr [8 x i8], ptr %i.s, i64 %i.agl ; 6 uses
  %invariant.gep2562 = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv2295 ; 6 uses
  %min.iters.check2886 = icmp ugt i64 %27, 7
  %or.cond3225 = select i1 %min.iters.check2886, i1 %ident.check2882.not, i1 false
  br i1 %or.cond3225, label %vector.ph2887, label %scalar.ph2885.preheader

vector.ph2887:                                    ; preds = %.lr.ph2059
  %n.vec2888 = and i64 %27, -8                    ; 3 uses
  %i.agm = add i64 %indvars.iv2295, %n.vec2888
  %invariant.op3320 = add nuw i64 %indvars.iv2295, 1
  br label %vector.body2889

vector.body2889:                                  ; preds = %vector.body2889, %vector.ph2887
  %index2890 = phi i64 [ 0, %vector.ph2887 ], [ %index.next2895, %vector.body2889 ] ; 2 uses
  %.reass3321 = add nuw i64 %index2890, %invariant.op3320 ; 2 uses
  %i.agn = getelementptr [8 x i8], ptr %invariant.gep2560, i64 %.reass3321 ; 3 uses
  %i.ago = getelementptr i8, ptr %i.agn, i64 32   ; 2 uses
  %wide.load2891 = load <4 x double>, ptr %i.agn, align 8, !tbaa !118
  %wide.load2892 = load <4 x double>, ptr %i.ago, align 8, !tbaa !118 ; 2 uses
  %i.agp = getelementptr [8 x i8], ptr %invariant.gep2562, i64 %.reass3321 ; 3 uses
  %i.agq = getelementptr i8, ptr %i.agp, i64 32   ; 2 uses
  %wide.load2893 = load <4 x double>, ptr %i.agp, align 8, !tbaa !118
  %wide.load2894 = load <4 x double>, ptr %i.agq, align 8, !tbaa !118
  store <4 x double> %wide.load2893, ptr %i.agn, align 8, !tbaa !118
  store <4 x double> %wide.load2894, ptr %i.ago, align 8, !tbaa !118
  store <4 x double> %wide.load2891, ptr %i.agp, align 8, !tbaa !118
  store <4 x double> %wide.load2892, ptr %i.agq, align 8, !tbaa !118
  %index.next2895 = add nuw i64 %index2890, 8     ; 2 uses
  %i.agr = icmp eq i64 %index.next2895, %n.vec2888
  br i1 %i.agr, label %middle.block2896, label %vector.body2889, !llvm.loop !58

middle.block2896:                                 ; preds = %vector.body2889
  %i.ags = extractelement <4 x double> %wide.load2892, i64 3
  %cmp.n2897 = icmp eq i64 %27, %n.vec2888
  br i1 %cmp.n2897, label %._crit_edge2060, label %scalar.ph2885.preheader

scalar.ph2885.preheader:                          ; preds = %.lr.ph2059, %middle.block2896
  %indvars.iv2297.ph = phi i64 [ %indvars.iv2295, %.lr.ph2059 ], [ %i.agm, %middle.block2896 ] ; 4 uses
  %i.agt = sub i64 %wide.trip.count2300, %indvars.iv2297.ph
  %xtraiter3257 = and i64 %i.agt, 3               ; 2 uses
  %lcmp.mod3258.not = icmp eq i64 %xtraiter3257, 0
  br i1 %lcmp.mod3258.not, label %scalar.ph2885.prol.loopexit, label %scalar.ph2885.prol

scalar.ph2885.prol:                               ; preds = %scalar.ph2885.preheader, %scalar.ph2885.prol
  %indvars.iv2297.prol = phi i64 [ %indvars.iv.next2298.prol, %scalar.ph2885.prol ], [ %indvars.iv2297.ph, %scalar.ph2885.preheader ]
  %prol.iter3259 = phi i64 [ %prol.iter3259.next, %scalar.ph2885.prol ], [ 0, %scalar.ph2885.preheader ]
  %indvars.iv.next2298.prol = add nuw nsw i64 %indvars.iv2297.prol, 1 ; 4 uses
  %gep2561.prol = getelementptr [8 x i8], ptr %invariant.gep2560, i64 %indvars.iv.next2298.prol ; 2 uses
  %i.agu = load double, ptr %gep2561.prol, align 8, !tbaa !118 ; 2 uses
  %i.agv = mul nsw i64 %indvars.iv.next2298.prol, %i.agi
  %gep2563.prol = getelementptr [8 x i8], ptr %invariant.gep2562, i64 %i.agv ; 2 uses
  %i.agw = load double, ptr %gep2563.prol, align 8, !tbaa !118
  store double %i.agw, ptr %gep2561.prol, align 8, !tbaa !118
  store double %i.agu, ptr %gep2563.prol, align 8, !tbaa !118
  %prol.iter3259.next = add i64 %prol.iter3259, 1 ; 2 uses
  %prol.iter3259.cmp.not = icmp eq i64 %prol.iter3259.next, %xtraiter3257
  br i1 %prol.iter3259.cmp.not, label %scalar.ph2885.prol.loopexit, label %scalar.ph2885.prol, !llvm.loop !59

scalar.ph2885.prol.loopexit:                      ; preds = %scalar.ph2885.prol, %scalar.ph2885.preheader
  %.lcssa3241.unr = phi double [ poison, %scalar.ph2885.preheader ], [ %i.agu, %scalar.ph2885.prol ]
  %indvars.iv2297.unr = phi i64 [ %indvars.iv2297.ph, %scalar.ph2885.preheader ], [ %indvars.iv.next2298.prol, %scalar.ph2885.prol ]
  %i.agx = sub i64 %indvars.iv2297.ph, %wide.trip.count2300
  %i.agy = icmp ugt i64 %i.agx, -4
  br i1 %i.agy, label %._crit_edge2060, label %scalar.ph2885

scalar.ph2885:                                    ; preds = %scalar.ph2885.prol.loopexit, %scalar.ph2885
  %indvars.iv2297 = phi i64 [ %indvars.iv.next2298.3, %scalar.ph2885 ], [ %indvars.iv2297.unr, %scalar.ph2885.prol.loopexit ] ; 4 uses
  %indvars.iv.next2298 = add nuw nsw i64 %indvars.iv2297, 1 ; 2 uses
  %gep2561 = getelementptr [8 x i8], ptr %invariant.gep2560, i64 %indvars.iv.next2298 ; 2 uses
  %i.agz = load double, ptr %gep2561, align 8, !tbaa !118
  %i.aha = mul nsw i64 %indvars.iv.next2298, %i.agi
  %gep2563 = getelementptr [8 x i8], ptr %invariant.gep2562, i64 %i.aha ; 2 uses
  %i.ahb = load double, ptr %gep2563, align 8, !tbaa !118
  store double %i.ahb, ptr %gep2561, align 8, !tbaa !118
  store double %i.agz, ptr %gep2563, align 8, !tbaa !118
  %indvars.iv.next2298.1 = add nuw nsw i64 %indvars.iv2297, 2 ; 2 uses
  %gep2561.1 = getelementptr [8 x i8], ptr %invariant.gep2560, i64 %indvars.iv.next2298.1 ; 2 uses
  %i.ahc = load double, ptr %gep2561.1, align 8, !tbaa !118
  %i.ahd = mul nsw i64 %indvars.iv.next2298.1, %i.agi
  %gep2563.1 = getelementptr [8 x i8], ptr %invariant.gep2562, i64 %i.ahd ; 2 uses
  %i.ahe = load double, ptr %gep2563.1, align 8, !tbaa !118
  store double %i.ahe, ptr %gep2561.1, align 8, !tbaa !118
  store double %i.ahc, ptr %gep2563.1, align 8, !tbaa !118
  %indvars.iv.next2298.2 = add nuw nsw i64 %indvars.iv2297, 3 ; 2 uses
  %gep2561.2 = getelementptr [8 x i8], ptr %invariant.gep2560, i64 %indvars.iv.next2298.2 ; 2 uses
  %i.ahf = load double, ptr %gep2561.2, align 8, !tbaa !118
  %i.ahg = mul nsw i64 %indvars.iv.next2298.2, %i.agi
  %gep2563.2 = getelementptr [8 x i8], ptr %invariant.gep2562, i64 %i.ahg ; 2 uses
  %i.ahh = load double, ptr %gep2563.2, align 8, !tbaa !118
  store double %i.ahh, ptr %gep2561.2, align 8, !tbaa !118
  store double %i.ahf, ptr %gep2563.2, align 8, !tbaa !118
  %indvars.iv.next2298.3 = add nuw nsw i64 %indvars.iv2297, 4 ; 4 uses
  %gep2561.3 = getelementptr [8 x i8], ptr %invariant.gep2560, i64 %indvars.iv.next2298.3 ; 2 uses
  %i.ahi = load double, ptr %gep2561.3, align 8, !tbaa !118 ; 2 uses
  %i.ahj = mul nsw i64 %indvars.iv.next2298.3, %i.agi
  %gep2563.3 = getelementptr [8 x i8], ptr %invariant.gep2562, i64 %i.ahj ; 2 uses
  %i.ahk = load double, ptr %gep2563.3, align 8, !tbaa !118
  store double %i.ahk, ptr %gep2561.3, align 8, !tbaa !118
  store double %i.ahi, ptr %gep2563.3, align 8, !tbaa !118
  %exitcond2301.not.3 = icmp eq i64 %indvars.iv.next2298.3, %wide.trip.count2300
  br i1 %exitcond2301.not.3, label %._crit_edge2060, label %scalar.ph2885, !llvm.loop !60

._crit_edge2060:                                  ; preds = %scalar.ph2885.prol.loopexit, %scalar.ph2885, %middle.block2896
  %.lcssa2679 = phi double [ %i.ags, %middle.block2896 ], [ %.lcssa3241.unr, %scalar.ph2885.prol.loopexit ], [ %i.ahi, %scalar.ph2885 ]
  store double %.lcssa2679, ptr %i.e, align 8, !tbaa !118
  br label %bb.et

bb.et:                                            ; preds = %._crit_edge2060, %bb.es
  %indvars.iv.next2296 = add nuw nsw i64 %indvars.iv2295, 1 ; 2 uses
  %exitcond2304.not = icmp eq i64 %indvars.iv.next2296, %wide.trip.count2303
  %indvar.next2884 = add i64 %indvar2883, 1
  br i1 %exitcond2304.not, label %._crit_edge2066, label %bb.es, !llvm.loop !61

._crit_edge2066:                                  ; preds = %bb.et, %bb.er
  %storemerge1828.lcssa = phi i32 [ 1, %bb.er ], [ %i.agk, %bb.et ]
  store i32 %storemerge1828.lcssa, ptr %i.f, align 4, !tbaa !116
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %15) #6
  br label %.thread1918

bb.eu:                                            ; preds = %bb.eh
  call void @dlacpy_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %12, ptr noundef nonnull %13) #6
  %i.ahl = load i32, ptr %i.h, align 4, !tbaa !116 ; 2 uses
  %i.ahm = icmp sgt i32 %i.ahl, 1
  br i1 %i.ahm, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ahn = add nsw i32 %i.ahl, -1                 ; 2 uses
  store i32 %i.ahn, ptr %i.a, align 4, !tbaa !116
  store i32 %i.ahn, ptr %i.b, align 4, !tbaa !116
  %i.aho = sext i32 %i.q to i64
  %i.ahp = getelementptr [8 x i8], ptr %i.s, i64 %i.aho
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 16
  call void @dlaset_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.ahq, ptr noundef nonnull %13) #6
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pre2429 = load i32, ptr %6, align 4, !tbaa !116 ; 4 uses
  br i1 %i.an, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ahr = load i32, ptr %i.h, align 4, !tbaa !116 ; 3 uses
  %i.ahs = icmp eq i32 %i.ahr, %.pre2429
  br i1 %i.ahs, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.aht = load i32, ptr %18, align 4, !tbaa !116
  %i.ahu = sub nsw i32 %i.aht, %.pre2429
  store i32 %i.ahu, ptr %i.a, align 4, !tbaa !116
  %i.ahv = sext i32 %.pre2429 to i64
  %i.ahw = getelementptr [8 x i8], ptr %i.u, i64 %i.ahv
  %i.ahx = getelementptr i8, ptr %i.ahw, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %i.ahx, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %15) #6
  br label %.thread1918

bb.ez:                                            ; preds = %bb.ex
  %i.ahy = sub nsw i32 %.pre2429, %i.ahr
  store i32 %i.ahy, ptr %i.a, align 4, !tbaa !116
  %i.ahz = add i32 %i.q, 1
  %i.aia = add i32 %i.ahz, %i.ahr
  %i.aib = sext i32 %i.aia to i64
  %i.aic = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aib
  call void @dlaset_(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.aic, ptr noundef nonnull %13) #6
  %i.aid = load i32, ptr %18, align 4, !tbaa !116
  %i.aie = load i32, ptr %6, align 4, !tbaa !116  ; 2 uses
  %i.aif = sub nsw i32 %i.aid, %i.aie
  store i32 %i.aif, ptr %i.a, align 4, !tbaa !116
  %i.aig = sext i32 %i.aie to i64
  %i.aih = getelementptr [8 x i8], ptr %i.u, i64 %i.aig
  %i.aii = getelementptr i8, ptr %i.aih, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.13, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %i.aii, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %15) #6
  br label %.thread1918

bb.fa:                                            ; preds = %bb.eg
  br i1 %.not1732, label %bb.gf, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %.pr1921 = load i32, ptr %i.h, align 4, !tbaa !116 ; 19 uses
  br i1 %i.an, label %thread-pre-split1920, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aij = load i32, ptr %6, align 4, !tbaa !116  ; 12 uses
  %i.aik = icmp eq i32 %.pr1921, %i.aij
  br i1 %i.aik, label %thread-pre-split1920, label %bb.fn

thread-pre-split1920:                             ; preds = %bb.fb, %bb.fc
  %.not18552152 = icmp slt i32 %.pr1921, 1
  br i1 %.not18552152, label %._crit_edge2156.thread, label %.lr.ph2155

._crit_edge2156.thread:                           ; preds = %thread-pre-split1920
  store i32 1, ptr %i.f, align 4, !tbaa !116
  br label %bb.ff

.lr.ph2155:                                       ; preds = %thread-pre-split1920
  %i.ail = load i32, ptr %6, align 4, !tbaa !116  ; 3 uses
  store i32 %i.ail, ptr %i.b, align 4, !tbaa !116
  %i.aim = sext i32 %i.j to i64                   ; 9 uses
  %i.ain = add i32 %i.ail, 1
  %i.aio = sext i32 %i.ail to i64
  %i.aip = sext i32 %i.q to i64                   ; 4 uses
  %i.aiq = add nuw i32 %.pr1921, 1                ; 2 uses
end_hunk_1
begin_hunk_2_@dgesvdq_:bb.a
  %min.iters.check3122 = icmp ugt i64 %i.aje, 3
  %or.cond3226 = select i1 %min.iters.check3122, i1 %ident.check3110.not, i1 false
  br i1 %or.cond3226, label %vector.memcheck3111, label %vec.epilog.scalar.ph3139.preheader

vector.memcheck3111:                              ; preds = %iter.check3138
  %bound03118 = icmp ult ptr %scevgep3114, %scevgep3117
  %bound13119 = icmp ult ptr %scevgep3116, %scevgep3115
  %found.conflict3120 = and i1 %bound03118, %bound13119
  br i1 %found.conflict3120, label %vec.epilog.scalar.ph3139.preheader, label %vector.main.loop.iter.check3123

vector.main.loop.iter.check3123:                  ; preds = %vector.memcheck3111
  %min.iters.check3124 = icmp ult i64 %i.aje, 16
  br i1 %min.iters.check3124, label %vec.epilog.ph3142, label %vector.ph3125

vector.ph3125:                                    ; preds = %vector.main.loop.iter.check3123
  %i.ajk = and i64 %i.aje, 12
  %n.vec3126 = and i64 %i.aje, -16                ; 4 uses
  %i.ajl = add i64 %indvars.iv2375, %n.vec3126
  br label %vector.body3127

vector.body3127:                                  ; preds = %vector.ph3125, %vector.body3127
  %index3128 = phi i64 [ 0, %vector.ph3125 ], [ %index.next3133, %vector.body3127 ] ; 2 uses
  %i.ajm = add nuw i64 %indvars.iv2375, %index3128 ; 2 uses
  %i.ajn = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.ajm ; 4 uses
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 32
  %i.ajp = getelementptr i8, ptr %i.ajn, i64 64
  %i.ajq = getelementptr i8, ptr %i.ajn, i64 96
  %wide.load3129 = load <4 x double>, ptr %i.ajn, align 8, !tbaa !118, !alias.scope !131
  %wide.load3130 = load <4 x double>, ptr %i.ajo, align 8, !tbaa !118, !alias.scope !131
  %wide.load3131 = load <4 x double>, ptr %i.ajp, align 8, !tbaa !118, !alias.scope !131
  %wide.load3132 = load <4 x double>, ptr %i.ajq, align 8, !tbaa !118, !alias.scope !131
  %i.ajr = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %i.ajm ; 4 uses
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 32
  %i.ajt = getelementptr i8, ptr %i.ajr, i64 64
  %i.aju = getelementptr i8, ptr %i.ajr, i64 96
  store <4 x double> %wide.load3129, ptr %i.ajr, align 8, !tbaa !118, !alias.scope !132, !noalias !131
  store <4 x double> %wide.load3130, ptr %i.ajs, align 8, !tbaa !118, !alias.scope !132, !noalias !131
  store <4 x double> %wide.load3131, ptr %i.ajt, align 8, !tbaa !118, !alias.scope !132, !noalias !131
  store <4 x double> %wide.load3132, ptr %i.aju, align 8, !tbaa !118, !alias.scope !132, !noalias !131
  %index.next3133 = add nuw i64 %index3128, 16    ; 2 uses
  %i.ajv = icmp eq i64 %index.next3133, %n.vec3126
  br i1 %i.ajv, label %middle.block3134, label %vector.body3127, !llvm.loop !65

middle.block3134:                                 ; preds = %vector.body3127
  %cmp.n3135 = icmp eq i64 %i.aje, %n.vec3126
  br i1 %cmp.n3135, label %._crit_edge2151, label %vec.epilog.iter.check3140

vec.epilog.iter.check3140:                        ; preds = %middle.block3134
  %min.epilog.iters.check3141 = icmp eq i64 %i.ajk, 0
  br i1 %min.epilog.iters.check3141, label %vec.epilog.scalar.ph3139.preheader, label %vec.epilog.ph3142, !prof !126

vec.epilog.ph3142:                                ; preds = %vector.main.loop.iter.check3123, %vec.epilog.iter.check3140
  %vec.epilog.resume.val3136 = phi i64 [ %n.vec3126, %vec.epilog.iter.check3140 ], [ 0, %vector.main.loop.iter.check3123 ]
  %n.vec3143 = and i64 %i.aje, -4                 ; 3 uses
  %i.ajw = add i64 %indvars.iv2375, %n.vec3143
  br label %vec.epilog.vector.body3144

vec.epilog.vector.body3144:                       ; preds = %vec.epilog.vector.body3144, %vec.epilog.ph3142
  %index3145 = phi i64 [ %vec.epilog.resume.val3136, %vec.epilog.ph3142 ], [ %index.next3147, %vec.epilog.vector.body3144 ] ; 2 uses
  %i.ajx = add nuw i64 %indvars.iv2375, %index3145 ; 2 uses
  %i.ajy = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.ajx
  %wide.load3146 = load <4 x double>, ptr %i.ajy, align 8, !tbaa !118, !alias.scope !131
  %i.ajz = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %i.ajx
  store <4 x double> %wide.load3146, ptr %i.ajz, align 8, !tbaa !118, !alias.scope !132, !noalias !131
  %index.next3147 = add nuw i64 %index3145, 4     ; 2 uses
  %i.aka = icmp eq i64 %index.next3147, %n.vec3143
  br i1 %i.aka, label %vec.epilog.middle.block3148, label %vec.epilog.vector.body3144, !llvm.loop !66

vec.epilog.middle.block3148:                      ; preds = %vec.epilog.vector.body3144
  %cmp.n3149 = icmp eq i64 %i.aje, %n.vec3143
  br i1 %cmp.n3149, label %._crit_edge2151, label %vec.epilog.scalar.ph3139.preheader

vec.epilog.scalar.ph3139.preheader:               ; preds = %iter.check3138, %vector.memcheck3111, %vec.epilog.iter.check3140, %vec.epilog.middle.block3148
  %indvars.iv2377.ph = phi i64 [ %indvars.iv2375, %iter.check3138 ], [ %indvars.iv2375, %vector.memcheck3111 ], [ %i.ajl, %vec.epilog.iter.check3140 ], [ %i.ajw, %vec.epilog.middle.block3148 ] ; 4 uses
  %i.akb = sub i64 %wide.trip.count2380, %indvars.iv2377.ph
  %xtraiter3281 = and i64 %i.akb, 7               ; 2 uses
  %lcmp.mod3282.not = icmp eq i64 %xtraiter3281, 0
  br i1 %lcmp.mod3282.not, label %vec.epilog.scalar.ph3139.prol.loopexit, label %vec.epilog.scalar.ph3139.prol

vec.epilog.scalar.ph3139.prol:                    ; preds = %vec.epilog.scalar.ph3139.preheader, %vec.epilog.scalar.ph3139.prol
  %indvars.iv2377.prol = phi i64 [ %indvars.iv.next2378.prol, %vec.epilog.scalar.ph3139.prol ], [ %indvars.iv2377.ph, %vec.epilog.scalar.ph3139.preheader ] ; 3 uses
  %prol.iter3283 = phi i64 [ %prol.iter3283.next, %vec.epilog.scalar.ph3139.prol ], [ 0, %vec.epilog.scalar.ph3139.preheader ]
  %i.akc = mul nsw i64 %indvars.iv2377.prol, %i.aim
  %gep2593.prol = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.akc
  %i.akd = load double, ptr %gep2593.prol, align 8, !tbaa !118
  %gep2595.prol = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %indvars.iv2377.prol
  store double %i.akd, ptr %gep2595.prol, align 8, !tbaa !118
  %indvars.iv.next2378.prol = add nuw nsw i64 %indvars.iv2377.prol, 1 ; 2 uses
  %prol.iter3283.next = add i64 %prol.iter3283, 1 ; 2 uses
  %prol.iter3283.cmp.not = icmp eq i64 %prol.iter3283.next, %xtraiter3281
  br i1 %prol.iter3283.cmp.not, label %vec.epilog.scalar.ph3139.prol.loopexit, label %vec.epilog.scalar.ph3139.prol, !llvm.loop !67

vec.epilog.scalar.ph3139.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3139.prol, %vec.epilog.scalar.ph3139.preheader
  %indvars.iv2377.unr = phi i64 [ %indvars.iv2377.ph, %vec.epilog.scalar.ph3139.preheader ], [ %indvars.iv.next2378.prol, %vec.epilog.scalar.ph3139.prol ]
  %i.ake = sub i64 %indvars.iv2377.ph, %wide.trip.count2380
  %i.akf = icmp ugt i64 %i.ake, -8
  br i1 %i.akf, label %._crit_edge2151, label %vec.epilog.scalar.ph3139

vec.epilog.scalar.ph3139:                         ; preds = %vec.epilog.scalar.ph3139.prol.loopexit, %vec.epilog.scalar.ph3139
  %indvars.iv2377 = phi i64 [ %indvars.iv.next2378.7, %vec.epilog.scalar.ph3139 ], [ %indvars.iv2377.unr, %vec.epilog.scalar.ph3139.prol.loopexit ] ; 10 uses
  %i.akg = mul nsw i64 %indvars.iv2377, %i.aim
  %gep2593 = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.akg
  %i.akh = load double, ptr %gep2593, align 8, !tbaa !118
  %gep2595 = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %indvars.iv2377
  store double %i.akh, ptr %gep2595, align 8, !tbaa !118
  %indvars.iv.next2378 = add nuw nsw i64 %indvars.iv2377, 1 ; 2 uses
  %i.aki = mul nsw i64 %indvars.iv.next2378, %i.aim
  %gep2593.1 = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.aki
  %i.akj = load double, ptr %gep2593.1, align 8, !tbaa !118
  %gep2595.1 = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %indvars.iv.next2378
  store double %i.akj, ptr %gep2595.1, align 8, !tbaa !118
  %indvars.iv.next2378.1 = add nuw nsw i64 %indvars.iv2377, 2 ; 2 uses
  %i.akk = mul nsw i64 %indvars.iv.next2378.1, %i.aim
  %gep2593.2 = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.akk
  %i.akl = load double, ptr %gep2593.2, align 8, !tbaa !118
  %gep2595.2 = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %indvars.iv.next2378.1
  store double %i.akl, ptr %gep2595.2, align 8, !tbaa !118
  %indvars.iv.next2378.2 = add nuw nsw i64 %indvars.iv2377, 3 ; 2 uses
  %i.akm = mul nsw i64 %indvars.iv.next2378.2, %i.aim
  %gep2593.3 = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.akm
  %i.akn = load double, ptr %gep2593.3, align 8, !tbaa !118
  %gep2595.3 = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %indvars.iv.next2378.2
  store double %i.akn, ptr %gep2595.3, align 8, !tbaa !118
  %indvars.iv.next2378.3 = add nuw nsw i64 %indvars.iv2377, 4 ; 2 uses
  %i.ako = mul nsw i64 %indvars.iv.next2378.3, %i.aim
  %gep2593.4 = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.ako
  %i.akp = load double, ptr %gep2593.4, align 8, !tbaa !118
  %gep2595.4 = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %indvars.iv.next2378.3
  store double %i.akp, ptr %gep2595.4, align 8, !tbaa !118
  %indvars.iv.next2378.4 = add nuw nsw i64 %indvars.iv2377, 5 ; 2 uses
  %i.akq = mul nsw i64 %indvars.iv.next2378.4, %i.aim
  %gep2593.5 = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.akq
  %i.akr = load double, ptr %gep2593.5, align 8, !tbaa !118
  %gep2595.5 = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %indvars.iv.next2378.4
  store double %i.akr, ptr %gep2595.5, align 8, !tbaa !118
  %indvars.iv.next2378.5 = add nuw nsw i64 %indvars.iv2377, 6 ; 2 uses
  %i.aks = mul nsw i64 %indvars.iv.next2378.5, %i.aim
  %gep2593.6 = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.aks
  %i.akt = load double, ptr %gep2593.6, align 8, !tbaa !118
  %gep2595.6 = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %indvars.iv.next2378.5
  store double %i.akt, ptr %gep2595.6, align 8, !tbaa !118
  %indvars.iv.next2378.6 = add nuw nsw i64 %indvars.iv2377, 7 ; 2 uses
  %i.aku = mul nsw i64 %indvars.iv.next2378.6, %i.aim
  %gep2593.7 = getelementptr [8 x i8], ptr %invariant.gep2592, i64 %i.aku
  %i.akv = load double, ptr %gep2593.7, align 8, !tbaa !118
  %gep2595.7 = getelementptr [8 x i8], ptr %invariant.gep2594, i64 %indvars.iv.next2378.6
  store double %i.akv, ptr %gep2595.7, align 8, !tbaa !118
  %indvars.iv.next2378.7 = add nuw nsw i64 %indvars.iv2377, 8 ; 2 uses
  %exitcond2381.not.7 = icmp eq i64 %indvars.iv.next2378.7, %wide.trip.count2380
  br i1 %exitcond2381.not.7, label %._crit_edge2151, label %vec.epilog.scalar.ph3139, !llvm.loop !68

._crit_edge2151:                                  ; preds = %vec.epilog.scalar.ph3139.prol.loopexit, %vec.epilog.scalar.ph3139, %middle.block3134, %vec.epilog.middle.block3148, %bb.fd
  %indvars.iv.next2376 = add nuw nsw i64 %indvars.iv2375, 1 ; 2 uses
  %exitcond2384.not = icmp eq i64 %indvars.iv.next2376, %wide.trip.count2383
  %indvar.next3113 = add i64 %indvar3112, 1
  br i1 %exitcond2384.not, label %._crit_edge2156, label %bb.fd, !llvm.loop !69

._crit_edge2156:                                  ; preds = %._crit_edge2151
  store i32 %i.aiq, ptr %i.f, align 4, !tbaa !116
  %.not2674 = icmp eq i32 %.pr1921, 1
  br i1 %.not2674, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %._crit_edge2156
  %i.akw = add nsw i32 %.pr1921, -1               ; 2 uses
  store i32 %i.akw, ptr %i.a, align 4, !tbaa !116
  store i32 %i.akw, ptr %i.b, align 4, !tbaa !116
  %i.akx = shl i32 %i.q, 1
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr [8 x i8], ptr %i.s, i64 %i.aky
  %i.ala = getelementptr i8, ptr %i.akz, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.ala, ptr noundef nonnull %13) #6
  br label %bb.ff

bb.ff:                                            ; preds = %._crit_edge2156.thread, %bb.fe, %._crit_edge2156
  %i.alb = load i32, ptr %18, align 4, !tbaa !116
  %i.alc = load i32, ptr %6, align 4, !tbaa !116  ; 2 uses
  %i.ald = sub nsw i32 %i.alb, %i.alc
  store i32 %i.ald, ptr %i.a, align 4, !tbaa !116
  %i.ale = sext i32 %i.alc to i64
  %i.alf = getelementptr [8 x i8], ptr %i.u, i64 %i.ale
  %i.alg = getelementptr i8, ptr %i.alf, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, ptr noundef nonnull %i.h, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %9, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %i.alg, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  %i.alh = load i32, ptr %i.h, align 4, !tbaa !116 ; 11 uses
  store i32 %i.alh, ptr %i.a, align 4, !tbaa !116
  %.not18572164 = icmp slt i32 %i.alh, 1
  br i1 %.not18572164, label %._crit_edge2168.thread, label %.lr.ph2167

.lr.ph2167:                                       ; preds = %bb.ff
  store i32 %i.alh, ptr %i.b, align 4, !tbaa !116
  %i.ali = sext i32 %i.q to i64                   ; 6 uses
  %i.alj = zext nneg i32 %i.alh to i64
  %i.alk = add nuw i32 %i.alh, 1                  ; 2 uses
  %wide.trip.count2393 = zext i32 %i.alk to i64
  %wide.trip.count2390 = zext nneg i32 %i.alh to i64 ; 5 uses
  %ident.check3152.not = icmp eq i32 %i.q, 1
  br label %bb.fg

bb.fg:                                            ; preds = %.lr.ph2167, %bb.fh
  %indvar3153 = phi i64 [ 0, %.lr.ph2167 ], [ %indvar.next3154, %bb.fh ] ; 2 uses
  %indvars.iv2385 = phi i64 [ 1, %.lr.ph2167 ], [ %indvars.iv.next2386, %bb.fh ] ; 7 uses
  %28 = xor i64 %indvar3153, -1
  %29 = add i64 %28, %wide.trip.count2390         ; 3 uses
  %.not1865.not2158 = icmp samesign ult i64 %indvars.iv2385, %i.alj
  br i1 %.not1865.not2158, label %.lr.ph2161, label %bb.fh

.lr.ph2161:                                       ; preds = %bb.fg
  %i.all = mul nsw i64 %indvars.iv2385, %i.ali
  %invariant.gep2596 = getelementptr [8 x i8], ptr %i.s, i64 %i.all ; 6 uses
  %invariant.gep2598 = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv2385 ; 6 uses
  %min.iters.check3156 = icmp ugt i64 %29, 7
  %or.cond3227 = select i1 %min.iters.check3156, i1 %ident.check3152.not, i1 false
  br i1 %or.cond3227, label %vector.ph3157, label %scalar.ph3155.preheader

vector.ph3157:                                    ; preds = %.lr.ph2161
  %n.vec3158 = and i64 %29, -8                    ; 3 uses
  %i.alm = add i64 %indvars.iv2385, %n.vec3158
  %invariant.op3336 = add nuw i64 %indvars.iv2385, 1
  br label %vector.body3159

vector.body3159:                                  ; preds = %vector.body3159, %vector.ph3157
  %index3160 = phi i64 [ 0, %vector.ph3157 ], [ %index.next3165, %vector.body3159 ] ; 2 uses
  %.reass3337 = add nuw i64 %index3160, %invariant.op3336 ; 2 uses
  %i.aln = getelementptr [8 x i8], ptr %invariant.gep2596, i64 %.reass3337 ; 3 uses
  %i.alo = getelementptr i8, ptr %i.aln, i64 32   ; 2 uses
  %wide.load3161 = load <4 x double>, ptr %i.aln, align 8, !tbaa !118
  %wide.load3162 = load <4 x double>, ptr %i.alo, align 8, !tbaa !118 ; 2 uses
  %i.alp = getelementptr [8 x i8], ptr %invariant.gep2598, i64 %.reass3337 ; 3 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 32   ; 2 uses
  %wide.load3163 = load <4 x double>, ptr %i.alp, align 8, !tbaa !118
  %wide.load3164 = load <4 x double>, ptr %i.alq, align 8, !tbaa !118
  store <4 x double> %wide.load3163, ptr %i.aln, align 8, !tbaa !118
  store <4 x double> %wide.load3164, ptr %i.alo, align 8, !tbaa !118
  store <4 x double> %wide.load3161, ptr %i.alp, align 8, !tbaa !118
  store <4 x double> %wide.load3162, ptr %i.alq, align 8, !tbaa !118
  %index.next3165 = add nuw i64 %index3160, 8     ; 2 uses
  %i.alr = icmp eq i64 %index.next3165, %n.vec3158
  br i1 %i.alr, label %middle.block3166, label %vector.body3159, !llvm.loop !70

middle.block3166:                                 ; preds = %vector.body3159
  %i.als = extractelement <4 x double> %wide.load3162, i64 3
  %cmp.n3167 = icmp eq i64 %29, %n.vec3158
  br i1 %cmp.n3167, label %._crit_edge2162, label %scalar.ph3155.preheader

scalar.ph3155.preheader:                          ; preds = %.lr.ph2161, %middle.block3166
  %indvars.iv2387.ph = phi i64 [ %indvars.iv2385, %.lr.ph2161 ], [ %i.alm, %middle.block3166 ] ; 4 uses
  %i.alt = sub i64 %wide.trip.count2390, %indvars.iv2387.ph
  %xtraiter3284 = and i64 %i.alt, 3               ; 2 uses
  %lcmp.mod3285.not = icmp eq i64 %xtraiter3284, 0
  br i1 %lcmp.mod3285.not, label %scalar.ph3155.prol.loopexit, label %scalar.ph3155.prol

scalar.ph3155.prol:                               ; preds = %scalar.ph3155.preheader, %scalar.ph3155.prol
  %indvars.iv2387.prol = phi i64 [ %indvars.iv.next2388.prol, %scalar.ph3155.prol ], [ %indvars.iv2387.ph, %scalar.ph3155.preheader ]
  %prol.iter3286 = phi i64 [ %prol.iter3286.next, %scalar.ph3155.prol ], [ 0, %scalar.ph3155.preheader ]
  %indvars.iv.next2388.prol = add nuw nsw i64 %indvars.iv2387.prol, 1 ; 4 uses
  %gep2597.prol = getelementptr [8 x i8], ptr %invariant.gep2596, i64 %indvars.iv.next2388.prol ; 2 uses
  %i.alu = load double, ptr %gep2597.prol, align 8, !tbaa !118 ; 2 uses
  %i.alv = mul nsw i64 %indvars.iv.next2388.prol, %i.ali
  %gep2599.prol = getelementptr [8 x i8], ptr %invariant.gep2598, i64 %i.alv ; 2 uses
  %i.alw = load double, ptr %gep2599.prol, align 8, !tbaa !118
  store double %i.alw, ptr %gep2597.prol, align 8, !tbaa !118
  store double %i.alu, ptr %gep2599.prol, align 8, !tbaa !118
  %prol.iter3286.next = add i64 %prol.iter3286, 1 ; 2 uses
  %prol.iter3286.cmp.not = icmp eq i64 %prol.iter3286.next, %xtraiter3284
  br i1 %prol.iter3286.cmp.not, label %scalar.ph3155.prol.loopexit, label %scalar.ph3155.prol, !llvm.loop !71

scalar.ph3155.prol.loopexit:                      ; preds = %scalar.ph3155.prol, %scalar.ph3155.preheader
  %.lcssa3237.unr = phi double [ poison, %scalar.ph3155.preheader ], [ %i.alu, %scalar.ph3155.prol ]
  %indvars.iv2387.unr = phi i64 [ %indvars.iv2387.ph, %scalar.ph3155.preheader ], [ %indvars.iv.next2388.prol, %scalar.ph3155.prol ]
  %i.alx = sub i64 %indvars.iv2387.ph, %wide.trip.count2390
  %i.aly = icmp ugt i64 %i.alx, -4
  br i1 %i.aly, label %._crit_edge2162, label %scalar.ph3155

scalar.ph3155:                                    ; preds = %scalar.ph3155.prol.loopexit, %scalar.ph3155
  %indvars.iv2387 = phi i64 [ %indvars.iv.next2388.3, %scalar.ph3155 ], [ %indvars.iv2387.unr, %scalar.ph3155.prol.loopexit ] ; 4 uses
  %indvars.iv.next2388 = add nuw nsw i64 %indvars.iv2387, 1 ; 2 uses
  %gep2597 = getelementptr [8 x i8], ptr %invariant.gep2596, i64 %indvars.iv.next2388 ; 2 uses
  %i.alz = load double, ptr %gep2597, align 8, !tbaa !118
  %i.ama = mul nsw i64 %indvars.iv.next2388, %i.ali
  %gep2599 = getelementptr [8 x i8], ptr %invariant.gep2598, i64 %i.ama ; 2 uses
  %i.amb = load double, ptr %gep2599, align 8, !tbaa !118
  store double %i.amb, ptr %gep2597, align 8, !tbaa !118
  store double %i.alz, ptr %gep2599, align 8, !tbaa !118
  %indvars.iv.next2388.1 = add nuw nsw i64 %indvars.iv2387, 2 ; 2 uses
  %gep2597.1 = getelementptr [8 x i8], ptr %invariant.gep2596, i64 %indvars.iv.next2388.1 ; 2 uses
  %i.amc = load double, ptr %gep2597.1, align 8, !tbaa !118
  %i.amd = mul nsw i64 %indvars.iv.next2388.1, %i.ali
  %gep2599.1 = getelementptr [8 x i8], ptr %invariant.gep2598, i64 %i.amd ; 2 uses
  %i.ame = load double, ptr %gep2599.1, align 8, !tbaa !118
  store double %i.ame, ptr %gep2597.1, align 8, !tbaa !118
  store double %i.amc, ptr %gep2599.1, align 8, !tbaa !118
  %indvars.iv.next2388.2 = add nuw nsw i64 %indvars.iv2387, 3 ; 2 uses
  %gep2597.2 = getelementptr [8 x i8], ptr %invariant.gep2596, i64 %indvars.iv.next2388.2 ; 2 uses
  %i.amf = load double, ptr %gep2597.2, align 8, !tbaa !118
  %i.amg = mul nsw i64 %indvars.iv.next2388.2, %i.ali
  %gep2599.2 = getelementptr [8 x i8], ptr %invariant.gep2598, i64 %i.amg ; 2 uses
  %i.amh = load double, ptr %gep2599.2, align 8, !tbaa !118
  store double %i.amh, ptr %gep2597.2, align 8, !tbaa !118
  store double %i.amf, ptr %gep2599.2, align 8, !tbaa !118
  %indvars.iv.next2388.3 = add nuw nsw i64 %indvars.iv2387, 4 ; 4 uses
  %gep2597.3 = getelementptr [8 x i8], ptr %invariant.gep2596, i64 %indvars.iv.next2388.3 ; 2 uses
  %i.ami = load double, ptr %gep2597.3, align 8, !tbaa !118 ; 2 uses
  %i.amj = mul nsw i64 %indvars.iv.next2388.3, %i.ali
  %gep2599.3 = getelementptr [8 x i8], ptr %invariant.gep2598, i64 %i.amj ; 2 uses
  %i.amk = load double, ptr %gep2599.3, align 8, !tbaa !118
  store double %i.amk, ptr %gep2597.3, align 8, !tbaa !118
  store double %i.ami, ptr %gep2599.3, align 8, !tbaa !118
  %exitcond2391.not.3 = icmp eq i64 %indvars.iv.next2388.3, %wide.trip.count2390
  br i1 %exitcond2391.not.3, label %._crit_edge2162, label %scalar.ph3155, !llvm.loop !72

._crit_edge2162:                                  ; preds = %scalar.ph3155.prol.loopexit, %scalar.ph3155, %middle.block3166
  %.lcssa2675 = phi double [ %i.als, %middle.block3166 ], [ %.lcssa3237.unr, %scalar.ph3155.prol.loopexit ], [ %i.ami, %scalar.ph3155 ]
  store double %.lcssa2675, ptr %i.e, align 8, !tbaa !118
  br label %bb.fh

bb.fh:                                            ; preds = %._crit_edge2162, %bb.fg
  %indvars.iv.next2386 = add nuw nsw i64 %indvars.iv2385, 1 ; 2 uses
  %exitcond2394.not = icmp eq i64 %indvars.iv.next2386, %wide.trip.count2393
  %indvar.next3154 = add i64 %indvar3153, 1
  br i1 %exitcond2394.not, label %._crit_edge2168, label %bb.fg, !llvm.loop !73

._crit_edge2168:                                  ; preds = %bb.fh
  store i32 %i.alk, ptr %i.f, align 4, !tbaa !116
  %i.aml = load i32, ptr %6, align 4, !tbaa !116  ; 3 uses
  %i.amm = icmp slt i32 %i.alh, %i.aml
  br i1 %i.amm, label %.lr.ph2178, label %bb.fi

._crit_edge2168.thread:                           ; preds = %bb.ff
  store i32 1, ptr %i.f, align 4, !tbaa !116
  %i.amn = load i32, ptr %6, align 4, !tbaa !116
  %i.amo = icmp slt i32 %i.alh, %i.amn
  br i1 %i.amo, label %.loopexit, label %bb.fi

.lr.ph2178:                                       ; preds = %._crit_edge2168
  store i32 %i.alh, ptr %i.a, align 4, !tbaa !116
  store i32 %i.aml, ptr %i.b, align 4, !tbaa !116
  %i.amp = zext nneg i32 %i.alh to i64            ; 5 uses
  %i.amq = sext i32 %i.q to i64                   ; 10 uses
  %i.amr = add nuw nsw i32 %i.alh, 1              ; 2 uses
  %wide.trip.count2403 = zext nneg i32 %i.amr to i64
  %wide.trip.count2398 = sext i32 %i.aml to i64   ; 4 uses
  %i.ams = sub nsw i64 %wide.trip.count2398, %wide.trip.count2390 ; 7 uses
  %min.iters.check3172 = icmp ugt i64 %i.ams, 3
  %ident.check3170.not = icmp eq i32 %i.q, 1
  %or.cond3228 = select i1 %min.iters.check3172, i1 %ident.check3170.not, i1 false
  %min.iters.check3174 = icmp ult i64 %i.ams, 16
  %i.amt = and i64 %i.ams, 12
  %n.vec3176 = and i64 %i.ams, -16                ; 4 uses
  %i.amu = add nsw i64 %n.vec3176, %i.amp
  %invariant.op3338 = add nuw i64 %i.amp, 1
  %cmp.n3185 = icmp eq i64 %i.ams, %n.vec3176
  %min.epilog.iters.check3191 = icmp eq i64 %i.amt, 0
  %n.vec3193 = and i64 %i.ams, -4                 ; 3 uses
  %i.amv = add nsw i64 %n.vec3193, %i.amp
  %invariant.op3340 = add nuw i64 %i.amp, 1
  %cmp.n3199 = icmp eq i64 %i.ams, %n.vec3193
  br label %iter.check3188

iter.check3188:                                   ; preds = %._crit_edge2174, %.lr.ph2178
  %indvars.iv2400 = phi i64 [ 1, %.lr.ph2178 ], [ %indvars.iv.next2401, %._crit_edge2174 ] ; 3 uses
  %i.amw = mul nsw i64 %indvars.iv2400, %i.amq
  %invariant.gep2600 = getelementptr [8 x i8], ptr %i.s, i64 %i.amw ; 11 uses
  %invariant.gep2602 = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv2400 ; 11 uses
  br i1 %or.cond3228, label %vector.main.loop.iter.check3173, label %vec.epilog.scalar.ph3189.preheader

vector.main.loop.iter.check3173:                  ; preds = %iter.check3188
  br i1 %min.iters.check3174, label %vec.epilog.ph3192, label %vector.body3177

vector.body3177:                                  ; preds = %vector.main.loop.iter.check3173, %vector.body3177
  %index3178 = phi i64 [ %index.next3183, %vector.body3177 ], [ 0, %vector.main.loop.iter.check3173 ] ; 2 uses
  %.reass3339 = add nuw i64 %index3178, %invariant.op3338 ; 2 uses
  %i.amx = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %.reass3339 ; 4 uses
  %i.amy = getelementptr i8, ptr %i.amx, i64 32
  %i.amz = getelementptr i8, ptr %i.amx, i64 64
  %i.ana = getelementptr i8, ptr %i.amx, i64 96
  %wide.load3179 = load <4 x double>, ptr %i.amx, align 8, !tbaa !118
  %wide.load3180 = load <4 x double>, ptr %i.amy, align 8, !tbaa !118
  %wide.load3181 = load <4 x double>, ptr %i.amz, align 8, !tbaa !118
  %wide.load3182 = load <4 x double>, ptr %i.ana, align 8, !tbaa !118
  %i.anb = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %.reass3339 ; 4 uses
  %i.anc = getelementptr i8, ptr %i.anb, i64 32
  %i.and = getelementptr i8, ptr %i.anb, i64 64
  %i.ane = getelementptr i8, ptr %i.anb, i64 96
  store <4 x double> %wide.load3179, ptr %i.anb, align 8, !tbaa !118
  store <4 x double> %wide.load3180, ptr %i.anc, align 8, !tbaa !118
  store <4 x double> %wide.load3181, ptr %i.and, align 8, !tbaa !118
  store <4 x double> %wide.load3182, ptr %i.ane, align 8, !tbaa !118
  %index.next3183 = add nuw i64 %index3178, 16    ; 2 uses
  %i.anf = icmp eq i64 %index.next3183, %n.vec3176
  br i1 %i.anf, label %middle.block3184, label %vector.body3177, !llvm.loop !74

middle.block3184:                                 ; preds = %vector.body3177
  br i1 %cmp.n3185, label %._crit_edge2174, label %vec.epilog.iter.check3190

vec.epilog.iter.check3190:                        ; preds = %middle.block3184
  br i1 %min.epilog.iters.check3191, label %vec.epilog.scalar.ph3189.preheader, label %vec.epilog.ph3192, !prof !126

vec.epilog.ph3192:                                ; preds = %vector.main.loop.iter.check3173, %vec.epilog.iter.check3190
  %vec.epilog.resume.val3186 = phi i64 [ %n.vec3176, %vec.epilog.iter.check3190 ], [ 0, %vector.main.loop.iter.check3173 ]
  br label %vec.epilog.vector.body3194

vec.epilog.vector.body3194:                       ; preds = %vec.epilog.vector.body3194, %vec.epilog.ph3192
  %index3195 = phi i64 [ %vec.epilog.resume.val3186, %vec.epilog.ph3192 ], [ %index.next3197, %vec.epilog.vector.body3194 ] ; 2 uses
  %.reass3341 = add nuw i64 %index3195, %invariant.op3340 ; 2 uses
  %i.ang = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %.reass3341
  %wide.load3196 = load <4 x double>, ptr %i.ang, align 8, !tbaa !118
  %i.anh = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %.reass3341
  store <4 x double> %wide.load3196, ptr %i.anh, align 8, !tbaa !118
  %index.next3197 = add nuw i64 %index3195, 4     ; 2 uses
  %i.ani = icmp eq i64 %index.next3197, %n.vec3193
  br i1 %i.ani, label %vec.epilog.middle.block3198, label %vec.epilog.vector.body3194, !llvm.loop !75

vec.epilog.middle.block3198:                      ; preds = %vec.epilog.vector.body3194
  br i1 %cmp.n3199, label %._crit_edge2174, label %vec.epilog.scalar.ph3189.preheader

vec.epilog.scalar.ph3189.preheader:               ; preds = %iter.check3188, %vec.epilog.iter.check3190, %vec.epilog.middle.block3198
  %indvars.iv2395.ph = phi i64 [ %i.amp, %iter.check3188 ], [ %i.amu, %vec.epilog.iter.check3190 ], [ %i.amv, %vec.epilog.middle.block3198 ] ; 4 uses
  %i.anj = sub nsw i64 %wide.trip.count2398, %indvars.iv2395.ph
  %xtraiter3287 = and i64 %i.anj, 7               ; 2 uses
  %lcmp.mod3288.not = icmp eq i64 %xtraiter3287, 0
  br i1 %lcmp.mod3288.not, label %vec.epilog.scalar.ph3189.prol.loopexit, label %vec.epilog.scalar.ph3189.prol

vec.epilog.scalar.ph3189.prol:                    ; preds = %vec.epilog.scalar.ph3189.preheader, %vec.epilog.scalar.ph3189.prol
  %indvars.iv2395.prol = phi i64 [ %indvars.iv.next2396.prol, %vec.epilog.scalar.ph3189.prol ], [ %indvars.iv2395.ph, %vec.epilog.scalar.ph3189.preheader ]
  %prol.iter3289 = phi i64 [ %prol.iter3289.next, %vec.epilog.scalar.ph3189.prol ], [ 0, %vec.epilog.scalar.ph3189.preheader ]
  %indvars.iv.next2396.prol = add nuw nsw i64 %indvars.iv2395.prol, 1 ; 4 uses
  %gep2601.prol = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %indvars.iv.next2396.prol
  %i.ank = load double, ptr %gep2601.prol, align 8, !tbaa !118
  %i.anl = mul nsw i64 %indvars.iv.next2396.prol, %i.amq
  %gep2603.prol = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %i.anl
  store double %i.ank, ptr %gep2603.prol, align 8, !tbaa !118
  %prol.iter3289.next = add i64 %prol.iter3289, 1 ; 2 uses
  %prol.iter3289.cmp.not = icmp eq i64 %prol.iter3289.next, %xtraiter3287
  br i1 %prol.iter3289.cmp.not, label %vec.epilog.scalar.ph3189.prol.loopexit, label %vec.epilog.scalar.ph3189.prol, !llvm.loop !76

vec.epilog.scalar.ph3189.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3189.prol, %vec.epilog.scalar.ph3189.preheader
  %indvars.iv2395.unr = phi i64 [ %indvars.iv2395.ph, %vec.epilog.scalar.ph3189.preheader ], [ %indvars.iv.next2396.prol, %vec.epilog.scalar.ph3189.prol ]
  %i.anm = sub nsw i64 %indvars.iv2395.ph, %wide.trip.count2398
  %i.ann = icmp ugt i64 %i.anm, -8
  br i1 %i.ann, label %._crit_edge2174, label %vec.epilog.scalar.ph3189

vec.epilog.scalar.ph3189:                         ; preds = %vec.epilog.scalar.ph3189.prol.loopexit, %vec.epilog.scalar.ph3189
  %indvars.iv2395 = phi i64 [ %indvars.iv.next2396.7, %vec.epilog.scalar.ph3189 ], [ %indvars.iv2395.unr, %vec.epilog.scalar.ph3189.prol.loopexit ] ; 8 uses
  %indvars.iv.next2396 = add nuw nsw i64 %indvars.iv2395, 1 ; 2 uses
  %gep2601 = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %indvars.iv.next2396
  %i.ano = load double, ptr %gep2601, align 8, !tbaa !118
  %i.anp = mul nsw i64 %indvars.iv.next2396, %i.amq
  %gep2603 = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %i.anp
  store double %i.ano, ptr %gep2603, align 8, !tbaa !118
  %indvars.iv.next2396.1 = add nuw nsw i64 %indvars.iv2395, 2 ; 2 uses
  %gep2601.1 = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %indvars.iv.next2396.1
  %i.anq = load double, ptr %gep2601.1, align 8, !tbaa !118
  %i.anr = mul nsw i64 %indvars.iv.next2396.1, %i.amq
  %gep2603.1 = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %i.anr
  store double %i.anq, ptr %gep2603.1, align 8, !tbaa !118
  %indvars.iv.next2396.2 = add nuw nsw i64 %indvars.iv2395, 3 ; 2 uses
  %gep2601.2 = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %indvars.iv.next2396.2
  %i.ans = load double, ptr %gep2601.2, align 8, !tbaa !118
  %i.ant = mul nsw i64 %indvars.iv.next2396.2, %i.amq
  %gep2603.2 = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %i.ant
  store double %i.ans, ptr %gep2603.2, align 8, !tbaa !118
  %indvars.iv.next2396.3 = add nuw nsw i64 %indvars.iv2395, 4 ; 2 uses
  %gep2601.3 = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %indvars.iv.next2396.3
  %i.anu = load double, ptr %gep2601.3, align 8, !tbaa !118
  %i.anv = mul nsw i64 %indvars.iv.next2396.3, %i.amq
  %gep2603.3 = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %i.anv
  store double %i.anu, ptr %gep2603.3, align 8, !tbaa !118
  %indvars.iv.next2396.4 = add nuw nsw i64 %indvars.iv2395, 5 ; 2 uses
  %gep2601.4 = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %indvars.iv.next2396.4
  %i.anw = load double, ptr %gep2601.4, align 8, !tbaa !118
  %i.anx = mul nsw i64 %indvars.iv.next2396.4, %i.amq
  %gep2603.4 = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %i.anx
  store double %i.anw, ptr %gep2603.4, align 8, !tbaa !118
  %indvars.iv.next2396.5 = add nuw nsw i64 %indvars.iv2395, 6 ; 2 uses
  %gep2601.5 = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %indvars.iv.next2396.5
  %i.any = load double, ptr %gep2601.5, align 8, !tbaa !118
  %i.anz = mul nsw i64 %indvars.iv.next2396.5, %i.amq
  %gep2603.5 = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %i.anz
  store double %i.any, ptr %gep2603.5, align 8, !tbaa !118
  %indvars.iv.next2396.6 = add nuw nsw i64 %indvars.iv2395, 7 ; 2 uses
  %gep2601.6 = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %indvars.iv.next2396.6
  %i.aoa = load double, ptr %gep2601.6, align 8, !tbaa !118
  %i.aob = mul nsw i64 %indvars.iv.next2396.6, %i.amq
  %gep2603.6 = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %i.aob
  store double %i.aoa, ptr %gep2603.6, align 8, !tbaa !118
  %indvars.iv.next2396.7 = add nuw nsw i64 %indvars.iv2395, 8 ; 4 uses
  %gep2601.7 = getelementptr [8 x i8], ptr %invariant.gep2600, i64 %indvars.iv.next2396.7
  %i.aoc = load double, ptr %gep2601.7, align 8, !tbaa !118
  %i.aod = mul nsw i64 %indvars.iv.next2396.7, %i.amq
  %gep2603.7 = getelementptr [8 x i8], ptr %invariant.gep2602, i64 %i.aod
  store double %i.aoc, ptr %gep2603.7, align 8, !tbaa !118
  %exitcond2399.not.7 = icmp eq i64 %indvars.iv.next2396.7, %wide.trip.count2398
  br i1 %exitcond2399.not.7, label %._crit_edge2174, label %vec.epilog.scalar.ph3189, !llvm.loop !77

._crit_edge2174:                                  ; preds = %vec.epilog.scalar.ph3189.prol.loopexit, %vec.epilog.scalar.ph3189, %vec.epilog.middle.block3198, %middle.block3184
  %indvars.iv.next2401 = add nuw nsw i64 %indvars.iv2400, 1 ; 2 uses
  %exitcond2404.not = icmp eq i64 %indvars.iv.next2401, %wide.trip.count2403
  br i1 %exitcond2404.not, label %.loopexit, label %iter.check3188, !llvm.loop !78

.loopexit:                                        ; preds = %._crit_edge2174, %._crit_edge2168.thread
  %storemerge1858.lcssa = phi i32 [ 1, %._crit_edge2168.thread ], [ %i.amr, %._crit_edge2174 ]
  store i32 %storemerge1858.lcssa, ptr %i.f, align 4, !tbaa !116
  br label %bb.fi

bb.fi:                                            ; preds = %._crit_edge2168.thread, %.loopexit, %._crit_edge2168
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %15) #6
  %i.aoe = load i32, ptr %i.h, align 4, !tbaa !116 ; 9 uses
  store i32 %i.aoe, ptr %i.a, align 4, !tbaa !116
  %.not18612186 = icmp slt i32 %i.aoe, 1
  br i1 %.not18612186, label %._crit_edge2190, label %.lr.ph2189

.lr.ph2189:                                       ; preds = %bb.fi
  store i32 %i.aoe, ptr %i.b, align 4, !tbaa !116
  %i.aof = sext i32 %i.n to i64                   ; 6 uses
  %i.aog = zext nneg i32 %i.aoe to i64
  %i.aoh = add nuw i32 %i.aoe, 1                  ; 2 uses
  %wide.trip.count2413 = zext i32 %i.aoh to i64
  %wide.trip.count2410 = zext nneg i32 %i.aoe to i64 ; 4 uses
  %ident.check3202.not = icmp eq i32 %i.n, 1
  br label %bb.fj

bb.fj:                                            ; preds = %.lr.ph2189, %bb.fk
  %indvar3203 = phi i64 [ 0, %.lr.ph2189 ], [ %indvar.next3204, %bb.fk ] ; 2 uses
  %indvars.iv2405 = phi i64 [ 1, %.lr.ph2189 ], [ %indvars.iv.next2406, %bb.fk ] ; 7 uses
  %30 = xor i64 %indvar3203, -1
  %31 = add i64 %30, %wide.trip.count2410         ; 3 uses
  %.not1863.not2180 = icmp samesign ult i64 %indvars.iv2405, %i.aog
  br i1 %.not1863.not2180, label %.lr.ph2183, label %bb.fk

.lr.ph2183:                                       ; preds = %bb.fj
  %i.aoi = mul nsw i64 %indvars.iv2405, %i.aof
  %invariant.gep2604 = getelementptr [8 x i8], ptr %i.p, i64 %i.aoi ; 6 uses
  %invariant.gep2606 = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv2405 ; 6 uses
  %min.iters.check3206 = icmp ugt i64 %31, 7
  %or.cond3229 = select i1 %min.iters.check3206, i1 %ident.check3202.not, i1 false
  br i1 %or.cond3229, label %vector.ph3207, label %scalar.ph3205.preheader

vector.ph3207:                                    ; preds = %.lr.ph2183
  %n.vec3208 = and i64 %31, -8                    ; 3 uses
  %i.aoj = add i64 %indvars.iv2405, %n.vec3208
  %invariant.op3342 = add nuw i64 %indvars.iv2405, 1
  br label %vector.body3209

vector.body3209:                                  ; preds = %vector.body3209, %vector.ph3207
  %index3210 = phi i64 [ 0, %vector.ph3207 ], [ %index.next3215, %vector.body3209 ] ; 2 uses
  %.reass3343 = add nuw i64 %index3210, %invariant.op3342 ; 2 uses
  %i.aok = getelementptr [8 x i8], ptr %invariant.gep2604, i64 %.reass3343 ; 3 uses
  %i.aol = getelementptr i8, ptr %i.aok, i64 32   ; 2 uses
  %wide.load3211 = load <4 x double>, ptr %i.aok, align 8, !tbaa !118
  %wide.load3212 = load <4 x double>, ptr %i.aol, align 8, !tbaa !118 ; 2 uses
  %i.aom = getelementptr [8 x i8], ptr %invariant.gep2606, i64 %.reass3343 ; 3 uses
  %i.aon = getelementptr i8, ptr %i.aom, i64 32   ; 2 uses
  %wide.load3213 = load <4 x double>, ptr %i.aom, align 8, !tbaa !118
  %wide.load3214 = load <4 x double>, ptr %i.aon, align 8, !tbaa !118
  store <4 x double> %wide.load3213, ptr %i.aok, align 8, !tbaa !118
  store <4 x double> %wide.load3214, ptr %i.aol, align 8, !tbaa !118
  store <4 x double> %wide.load3211, ptr %i.aom, align 8, !tbaa !118
  store <4 x double> %wide.load3212, ptr %i.aon, align 8, !tbaa !118
  %index.next3215 = add nuw i64 %index3210, 8     ; 2 uses
  %i.aoo = icmp eq i64 %index.next3215, %n.vec3208
  br i1 %i.aoo, label %middle.block3216, label %vector.body3209, !llvm.loop !79

middle.block3216:                                 ; preds = %vector.body3209
  %i.aop = extractelement <4 x double> %wide.load3212, i64 3
  %cmp.n3217 = icmp eq i64 %31, %n.vec3208
  br i1 %cmp.n3217, label %._crit_edge2184, label %scalar.ph3205.preheader

scalar.ph3205.preheader:                          ; preds = %.lr.ph2183, %middle.block3216
  %indvars.iv2407.ph = phi i64 [ %indvars.iv2405, %.lr.ph2183 ], [ %i.aoj, %middle.block3216 ] ; 4 uses
  %i.aoq = sub i64 %wide.trip.count2410, %indvars.iv2407.ph
  %xtraiter3290 = and i64 %i.aoq, 3               ; 2 uses
  %lcmp.mod3291.not = icmp eq i64 %xtraiter3290, 0
  br i1 %lcmp.mod3291.not, label %scalar.ph3205.prol.loopexit, label %scalar.ph3205.prol

scalar.ph3205.prol:                               ; preds = %scalar.ph3205.preheader, %scalar.ph3205.prol
  %indvars.iv2407.prol = phi i64 [ %indvars.iv.next2408.prol, %scalar.ph3205.prol ], [ %indvars.iv2407.ph, %scalar.ph3205.preheader ]
  %prol.iter3292 = phi i64 [ %prol.iter3292.next, %scalar.ph3205.prol ], [ 0, %scalar.ph3205.preheader ]
  %indvars.iv.next2408.prol = add nuw nsw i64 %indvars.iv2407.prol, 1 ; 4 uses
  %gep2605.prol = getelementptr [8 x i8], ptr %invariant.gep2604, i64 %indvars.iv.next2408.prol ; 2 uses
  %i.aor = load double, ptr %gep2605.prol, align 8, !tbaa !118 ; 2 uses
  %i.aos = mul nsw i64 %indvars.iv.next2408.prol, %i.aof
  %gep2607.prol = getelementptr [8 x i8], ptr %invariant.gep2606, i64 %i.aos ; 2 uses
  %i.aot = load double, ptr %gep2607.prol, align 8, !tbaa !118
  store double %i.aot, ptr %gep2605.prol, align 8, !tbaa !118
  store double %i.aor, ptr %gep2607.prol, align 8, !tbaa !118
  %prol.iter3292.next = add i64 %prol.iter3292, 1 ; 2 uses
  %prol.iter3292.cmp.not = icmp eq i64 %prol.iter3292.next, %xtraiter3290
  br i1 %prol.iter3292.cmp.not, label %scalar.ph3205.prol.loopexit, label %scalar.ph3205.prol, !llvm.loop !80

scalar.ph3205.prol.loopexit:                      ; preds = %scalar.ph3205.prol, %scalar.ph3205.preheader
  %.lcssa3236.unr = phi double [ poison, %scalar.ph3205.preheader ], [ %i.aor, %scalar.ph3205.prol ]
  %indvars.iv2407.unr = phi i64 [ %indvars.iv2407.ph, %scalar.ph3205.preheader ], [ %indvars.iv.next2408.prol, %scalar.ph3205.prol ]
  %i.aou = sub i64 %indvars.iv2407.ph, %wide.trip.count2410
  %i.aov = icmp ugt i64 %i.aou, -4
  br i1 %i.aov, label %._crit_edge2184, label %scalar.ph3205

scalar.ph3205:                                    ; preds = %scalar.ph3205.prol.loopexit, %scalar.ph3205
  %indvars.iv2407 = phi i64 [ %indvars.iv.next2408.3, %scalar.ph3205 ], [ %indvars.iv2407.unr, %scalar.ph3205.prol.loopexit ] ; 4 uses
  %indvars.iv.next2408 = add nuw nsw i64 %indvars.iv2407, 1 ; 2 uses
  %gep2605 = getelementptr [8 x i8], ptr %invariant.gep2604, i64 %indvars.iv.next2408 ; 2 uses
  %i.aow = load double, ptr %gep2605, align 8, !tbaa !118
  %i.aox = mul nsw i64 %indvars.iv.next2408, %i.aof
  %gep2607 = getelementptr [8 x i8], ptr %invariant.gep2606, i64 %i.aox ; 2 uses
  %i.aoy = load double, ptr %gep2607, align 8, !tbaa !118
  store double %i.aoy, ptr %gep2605, align 8, !tbaa !118
  store double %i.aow, ptr %gep2607, align 8, !tbaa !118
  %indvars.iv.next2408.1 = add nuw nsw i64 %indvars.iv2407, 2 ; 2 uses
  %gep2605.1 = getelementptr [8 x i8], ptr %invariant.gep2604, i64 %indvars.iv.next2408.1 ; 2 uses
  %i.aoz = load double, ptr %gep2605.1, align 8, !tbaa !118
  %i.apa = mul nsw i64 %indvars.iv.next2408.1, %i.aof
  %gep2607.1 = getelementptr [8 x i8], ptr %invariant.gep2606, i64 %i.apa ; 2 uses
  %i.apb = load double, ptr %gep2607.1, align 8, !tbaa !118
  store double %i.apb, ptr %gep2605.1, align 8, !tbaa !118
  store double %i.aoz, ptr %gep2607.1, align 8, !tbaa !118
  %indvars.iv.next2408.2 = add nuw nsw i64 %indvars.iv2407, 3 ; 2 uses
  %gep2605.2 = getelementptr [8 x i8], ptr %invariant.gep2604, i64 %indvars.iv.next2408.2 ; 2 uses
  %i.apc = load double, ptr %gep2605.2, align 8, !tbaa !118
  %i.apd = mul nsw i64 %indvars.iv.next2408.2, %i.aof
  %gep2607.2 = getelementptr [8 x i8], ptr %invariant.gep2606, i64 %i.apd ; 2 uses
  %i.ape = load double, ptr %gep2607.2, align 8, !tbaa !118
  store double %i.ape, ptr %gep2605.2, align 8, !tbaa !118
  store double %i.apc, ptr %gep2607.2, align 8, !tbaa !118
  %indvars.iv.next2408.3 = add nuw nsw i64 %indvars.iv2407, 4 ; 4 uses
  %gep2605.3 = getelementptr [8 x i8], ptr %invariant.gep2604, i64 %indvars.iv.next2408.3 ; 2 uses
  %i.apf = load double, ptr %gep2605.3, align 8, !tbaa !118 ; 2 uses
  %i.apg = mul nsw i64 %indvars.iv.next2408.3, %i.aof
  %gep2607.3 = getelementptr [8 x i8], ptr %invariant.gep2606, i64 %i.apg ; 2 uses
  %i.aph = load double, ptr %gep2607.3, align 8, !tbaa !118
  store double %i.aph, ptr %gep2605.3, align 8, !tbaa !118
  store double %i.apf, ptr %gep2607.3, align 8, !tbaa !118
  %exitcond2411.not.3 = icmp eq i64 %indvars.iv.next2408.3, %wide.trip.count2410
  br i1 %exitcond2411.not.3, label %._crit_edge2184, label %scalar.ph3205, !llvm.loop !81

._crit_edge2184:                                  ; preds = %scalar.ph3205.prol.loopexit, %scalar.ph3205, %middle.block3216
  %.lcssa = phi double [ %i.aop, %middle.block3216 ], [ %.lcssa3236.unr, %scalar.ph3205.prol.loopexit ], [ %i.apf, %scalar.ph3205 ]
  store double %.lcssa, ptr %i.e, align 8, !tbaa !118
  br label %bb.fk

bb.fk:                                            ; preds = %._crit_edge2184, %bb.fj
  %indvars.iv.next2406 = add nuw nsw i64 %indvars.iv2405, 1 ; 2 uses
  %exitcond2414.not = icmp eq i64 %indvars.iv.next2406, %wide.trip.count2413
  %indvar.next3204 = add i64 %indvar3203, 1
  br i1 %exitcond2414.not, label %._crit_edge2190, label %bb.fj, !llvm.loop !82

._crit_edge2190:                                  ; preds = %bb.fk, %bb.fi
  %storemerge1860.lcssa = phi i32 [ 1, %bb.fi ], [ %i.aoh, %bb.fk ]
  store i32 %storemerge1860.lcssa, ptr %i.f, align 4, !tbaa !116
  %i.api = load i32, ptr %5, align 4, !tbaa !116  ; 2 uses
  %i.apj = icmp sge i32 %i.aoe, %i.api
  %or.cond43 = select i1 %i.apj, i1 true, i1 %i.af
  br i1 %or.cond43, label %bb.gz, label %bb.fl

bb.fl:                                            ; preds = %._crit_edge2190
  %i.apk = sub nsw i32 %i.api, %i.aoe
  store i32 %i.apk, ptr %i.a, align 4, !tbaa !116
  %i.apl = add i32 %i.n, 1                        ; 2 uses
  %i.apm = add i32 %i.apl, %i.aoe
  %i.apn = sext i32 %i.apm to i64
  %i.apo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.apn
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.apo, ptr noundef nonnull %11) #6
  %i.app = load i32, ptr %i.h, align 4, !tbaa !116 ; 3 uses
  %i.apq = load i32, ptr %i.g, align 4, !tbaa !116 ; 2 uses
  %i.apr = icmp slt i32 %i.app, %i.apq
  br i1 %i.apr, label %bb.fm, label %.thread1923

bb.fm:                                            ; preds = %bb.fl
  %i.aps = sub nsw i32 %i.apq, %i.app
  br label %.thread1923.sink.split

bb.fn:                                            ; preds = %bb.fc
  %i.apt = shl nsw i32 %.pr1921, 1
  %i.apu = icmp sgt i32 %i.apt, %i.aij
  %.not18462117 = icmp slt i32 %.pr1921, 1        ; 2 uses
  br i1 %i.apu, label %bb.fo, label %bb.fy

bb.fo:                                            ; preds = %bb.fn
  br i1 %.not18462117, label %._crit_edge2121.thread, label %.lr.ph2120

._crit_edge2121.thread:                           ; preds = %bb.fo
  store i32 1, ptr %i.f, align 4, !tbaa !116
  br label %bb.fr

.lr.ph2120:                                       ; preds = %bb.fo
  store i32 %i.aij, ptr %i.b, align 4, !tbaa !116
  %i.apv = sext i32 %i.j to i64                   ; 9 uses
  %i.apw = add nsw i32 %i.aij, 1
  %i.apx = sext i32 %i.aij to i64
  %i.apy = sext i32 %i.q to i64                   ; 4 uses
  %i.apz = add nuw i32 %.pr1921, 1                ; 2 uses
  %wide.trip.count2353 = zext i32 %i.apz to i64
  %wide.trip.count2350 = zext i32 %i.apw to i64   ; 5 uses
  %i.aqa = shl nsw i64 %i.apy, 3
  %i.aqb = or i64 %i.apy, %i.r
  %i.aqc = shl nsw i64 %i.aqb, 3                  ; 2 uses
  %i.aqd = add nsw i64 %i.aqa, 8
  %i.aqe = shl nuw nsw i64 %wide.trip.count2350, 3 ; 2 uses
  %i.aqf = shl nsw i64 %i.apy, 3
  %i.aqg = getelementptr i8, ptr %12, i64 %i.aqc
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 8
  %i.aqi = getelementptr i8, ptr %12, i64 %i.aqc
  %i.aqj = getelementptr i8, ptr %i.aqi, i64 %i.aqe
  %i.aqk = getelementptr i8, ptr %7, i64 %i.aqe
  %i.aql = getelementptr i8, ptr %i.aqk, i64 -8
  %ident.check3032.not = icmp eq i32 %i.j, 1
  br label %bb.fp

bb.fp:                                            ; preds = %.lr.ph2120, %._crit_edge2116
  %indvar3034 = phi i64 [ 0, %.lr.ph2120 ], [ %indvar.next3035, %._crit_edge2116 ] ; 6 uses
  %indvars.iv2345 = phi i64 [ 1, %.lr.ph2120 ], [ %indvars.iv.next2346, %._crit_edge2116 ] ; 10 uses
  %i.aqm = xor i64 %indvar3034, -1
  %i.aqn = add i64 %i.aqm, %wide.trip.count2350   ; 7 uses
  %i.aqo = mul i64 %i.aqd, %indvar3034
  %scevgep3036 = getelementptr i8, ptr %i.aqh, i64 %i.aqo
  %i.aqp = mul i64 %i.aqf, %indvar3034
  %scevgep3037 = getelementptr i8, ptr %i.aqj, i64 %i.aqp
  %i.aqq = shl nuw nsw i64 %indvar3034, 4
  %scevgep3038 = getelementptr i8, ptr %7, i64 %i.aqq
  %i.aqr = shl nuw nsw i64 %indvar3034, 3
  %scevgep3039 = getelementptr i8, ptr %i.aql, i64 %i.aqr
  %.not18532112 = icmp sgt i64 %indvars.iv2345, %i.apx
  br i1 %.not18532112, label %._crit_edge2116, label %iter.check3060

iter.check3060:                                   ; preds = %bb.fp
  %i.aqs = mul nsw i64 %indvars.iv2345, %i.apy
  %invariant.gep2580 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv2345 ; 11 uses
  %invariant.gep2582 = getelementptr [8 x i8], ptr %i.s, i64 %i.aqs ; 11 uses
  %min.iters.check3044 = icmp ugt i64 %i.aqn, 3
  %or.cond3230 = select i1 %min.iters.check3044, i1 %ident.check3032.not, i1 false
  br i1 %or.cond3230, label %vector.memcheck3033, label %vec.epilog.scalar.ph3061.preheader

vector.memcheck3033:                              ; preds = %iter.check3060
  %bound03040 = icmp ult ptr %scevgep3036, %scevgep3039
  %bound13041 = icmp ult ptr %scevgep3038, %scevgep3037
end_hunk_2
begin_hunk_3_@dgesvdq_:bb.a
  br i1 %min.iters.check3046, label %vec.epilog.ph3064, label %vector.ph3047

vector.ph3047:                                    ; preds = %vector.main.loop.iter.check3045
  %i.aqt = and i64 %i.aqn, 12
  %n.vec3048 = and i64 %i.aqn, -16                ; 4 uses
  %i.aqu = add i64 %indvars.iv2345, %n.vec3048
  br label %vector.body3049

vector.body3049:                                  ; preds = %vector.ph3047, %vector.body3049
  %index3050 = phi i64 [ 0, %vector.ph3047 ], [ %index.next3055, %vector.body3049 ] ; 2 uses
  %i.aqv = add nuw i64 %indvars.iv2345, %index3050 ; 2 uses
  %i.aqw = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.aqv ; 4 uses
  %i.aqx = getelementptr i8, ptr %i.aqw, i64 32
  %i.aqy = getelementptr i8, ptr %i.aqw, i64 64
  %i.aqz = getelementptr i8, ptr %i.aqw, i64 96
  %wide.load3051 = load <4 x double>, ptr %i.aqw, align 8, !tbaa !118, !alias.scope !133
  %wide.load3052 = load <4 x double>, ptr %i.aqx, align 8, !tbaa !118, !alias.scope !133
  %wide.load3053 = load <4 x double>, ptr %i.aqy, align 8, !tbaa !118, !alias.scope !133
  %wide.load3054 = load <4 x double>, ptr %i.aqz, align 8, !tbaa !118, !alias.scope !133
  %i.ara = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %i.aqv ; 4 uses
  %i.arb = getelementptr i8, ptr %i.ara, i64 32
  %i.arc = getelementptr i8, ptr %i.ara, i64 64
  %i.ard = getelementptr i8, ptr %i.ara, i64 96
  store <4 x double> %wide.load3051, ptr %i.ara, align 8, !tbaa !118, !alias.scope !134, !noalias !133
  store <4 x double> %wide.load3052, ptr %i.arb, align 8, !tbaa !118, !alias.scope !134, !noalias !133
  store <4 x double> %wide.load3053, ptr %i.arc, align 8, !tbaa !118, !alias.scope !134, !noalias !133
  store <4 x double> %wide.load3054, ptr %i.ard, align 8, !tbaa !118, !alias.scope !134, !noalias !133
  %index.next3055 = add nuw i64 %index3050, 16    ; 2 uses
  %i.are = icmp eq i64 %index.next3055, %n.vec3048
  br i1 %i.are, label %middle.block3056, label %vector.body3049, !llvm.loop !86

middle.block3056:                                 ; preds = %vector.body3049
  %cmp.n3057 = icmp eq i64 %i.aqn, %n.vec3048
  br i1 %cmp.n3057, label %._crit_edge2116, label %vec.epilog.iter.check3062

vec.epilog.iter.check3062:                        ; preds = %middle.block3056
  %min.epilog.iters.check3063 = icmp eq i64 %i.aqt, 0
  br i1 %min.epilog.iters.check3063, label %vec.epilog.scalar.ph3061.preheader, label %vec.epilog.ph3064, !prof !126

vec.epilog.ph3064:                                ; preds = %vector.main.loop.iter.check3045, %vec.epilog.iter.check3062
  %vec.epilog.resume.val3058 = phi i64 [ %n.vec3048, %vec.epilog.iter.check3062 ], [ 0, %vector.main.loop.iter.check3045 ]
  %n.vec3065 = and i64 %i.aqn, -4                 ; 3 uses
  %i.arf = add i64 %indvars.iv2345, %n.vec3065
  br label %vec.epilog.vector.body3066

vec.epilog.vector.body3066:                       ; preds = %vec.epilog.vector.body3066, %vec.epilog.ph3064
  %index3067 = phi i64 [ %vec.epilog.resume.val3058, %vec.epilog.ph3064 ], [ %index.next3069, %vec.epilog.vector.body3066 ] ; 2 uses
  %i.arg = add nuw i64 %indvars.iv2345, %index3067 ; 2 uses
  %i.arh = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.arg
  %wide.load3068 = load <4 x double>, ptr %i.arh, align 8, !tbaa !118, !alias.scope !133
  %i.ari = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %i.arg
  store <4 x double> %wide.load3068, ptr %i.ari, align 8, !tbaa !118, !alias.scope !134, !noalias !133
  %index.next3069 = add nuw i64 %index3067, 4     ; 2 uses
  %i.arj = icmp eq i64 %index.next3069, %n.vec3065
  br i1 %i.arj, label %vec.epilog.middle.block3070, label %vec.epilog.vector.body3066, !llvm.loop !87

vec.epilog.middle.block3070:                      ; preds = %vec.epilog.vector.body3066
  %cmp.n3071 = icmp eq i64 %i.aqn, %n.vec3065
  br i1 %cmp.n3071, label %._crit_edge2116, label %vec.epilog.scalar.ph3061.preheader

vec.epilog.scalar.ph3061.preheader:               ; preds = %iter.check3060, %vector.memcheck3033, %vec.epilog.iter.check3062, %vec.epilog.middle.block3070
  %indvars.iv2347.ph = phi i64 [ %indvars.iv2345, %iter.check3060 ], [ %indvars.iv2345, %vector.memcheck3033 ], [ %i.aqu, %vec.epilog.iter.check3062 ], [ %i.arf, %vec.epilog.middle.block3070 ] ; 4 uses
  %i.ark = sub i64 %wide.trip.count2350, %indvars.iv2347.ph
  %xtraiter3272 = and i64 %i.ark, 7               ; 2 uses
  %lcmp.mod3273.not = icmp eq i64 %xtraiter3272, 0
  br i1 %lcmp.mod3273.not, label %vec.epilog.scalar.ph3061.prol.loopexit, label %vec.epilog.scalar.ph3061.prol

vec.epilog.scalar.ph3061.prol:                    ; preds = %vec.epilog.scalar.ph3061.preheader, %vec.epilog.scalar.ph3061.prol
  %indvars.iv2347.prol = phi i64 [ %indvars.iv.next2348.prol, %vec.epilog.scalar.ph3061.prol ], [ %indvars.iv2347.ph, %vec.epilog.scalar.ph3061.preheader ] ; 3 uses
  %prol.iter3274 = phi i64 [ %prol.iter3274.next, %vec.epilog.scalar.ph3061.prol ], [ 0, %vec.epilog.scalar.ph3061.preheader ]
  %i.arl = mul nsw i64 %indvars.iv2347.prol, %i.apv
  %gep2581.prol = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.arl
  %i.arm = load double, ptr %gep2581.prol, align 8, !tbaa !118
  %gep2583.prol = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %indvars.iv2347.prol
  store double %i.arm, ptr %gep2583.prol, align 8, !tbaa !118
  %indvars.iv.next2348.prol = add nuw nsw i64 %indvars.iv2347.prol, 1 ; 2 uses
  %prol.iter3274.next = add i64 %prol.iter3274, 1 ; 2 uses
  %prol.iter3274.cmp.not = icmp eq i64 %prol.iter3274.next, %xtraiter3272
  br i1 %prol.iter3274.cmp.not, label %vec.epilog.scalar.ph3061.prol.loopexit, label %vec.epilog.scalar.ph3061.prol, !llvm.loop !88

vec.epilog.scalar.ph3061.prol.loopexit:           ; preds = %vec.epilog.scalar.ph3061.prol, %vec.epilog.scalar.ph3061.preheader
  %indvars.iv2347.unr = phi i64 [ %indvars.iv2347.ph, %vec.epilog.scalar.ph3061.preheader ], [ %indvars.iv.next2348.prol, %vec.epilog.scalar.ph3061.prol ]
  %i.arn = sub i64 %indvars.iv2347.ph, %wide.trip.count2350
  %i.aro = icmp ugt i64 %i.arn, -8
  br i1 %i.aro, label %._crit_edge2116, label %vec.epilog.scalar.ph3061

vec.epilog.scalar.ph3061:                         ; preds = %vec.epilog.scalar.ph3061.prol.loopexit, %vec.epilog.scalar.ph3061
  %indvars.iv2347 = phi i64 [ %indvars.iv.next2348.7, %vec.epilog.scalar.ph3061 ], [ %indvars.iv2347.unr, %vec.epilog.scalar.ph3061.prol.loopexit ] ; 10 uses
  %i.arp = mul nsw i64 %indvars.iv2347, %i.apv
  %gep2581 = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.arp
  %i.arq = load double, ptr %gep2581, align 8, !tbaa !118
  %gep2583 = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %indvars.iv2347
  store double %i.arq, ptr %gep2583, align 8, !tbaa !118
  %indvars.iv.next2348 = add nuw nsw i64 %indvars.iv2347, 1 ; 2 uses
  %i.arr = mul nsw i64 %indvars.iv.next2348, %i.apv
  %gep2581.1 = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.arr
  %i.ars = load double, ptr %gep2581.1, align 8, !tbaa !118
  %gep2583.1 = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %indvars.iv.next2348
  store double %i.ars, ptr %gep2583.1, align 8, !tbaa !118
  %indvars.iv.next2348.1 = add nuw nsw i64 %indvars.iv2347, 2 ; 2 uses
  %i.art = mul nsw i64 %indvars.iv.next2348.1, %i.apv
  %gep2581.2 = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.art
  %i.aru = load double, ptr %gep2581.2, align 8, !tbaa !118
  %gep2583.2 = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %indvars.iv.next2348.1
  store double %i.aru, ptr %gep2583.2, align 8, !tbaa !118
  %indvars.iv.next2348.2 = add nuw nsw i64 %indvars.iv2347, 3 ; 2 uses
  %i.arv = mul nsw i64 %indvars.iv.next2348.2, %i.apv
  %gep2581.3 = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.arv
  %i.arw = load double, ptr %gep2581.3, align 8, !tbaa !118
  %gep2583.3 = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %indvars.iv.next2348.2
  store double %i.arw, ptr %gep2583.3, align 8, !tbaa !118
  %indvars.iv.next2348.3 = add nuw nsw i64 %indvars.iv2347, 4 ; 2 uses
  %i.arx = mul nsw i64 %indvars.iv.next2348.3, %i.apv
  %gep2581.4 = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.arx
  %i.ary = load double, ptr %gep2581.4, align 8, !tbaa !118
  %gep2583.4 = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %indvars.iv.next2348.3
  store double %i.ary, ptr %gep2583.4, align 8, !tbaa !118
  %indvars.iv.next2348.4 = add nuw nsw i64 %indvars.iv2347, 5 ; 2 uses
  %i.arz = mul nsw i64 %indvars.iv.next2348.4, %i.apv
  %gep2581.5 = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.arz
  %i.asa = load double, ptr %gep2581.5, align 8, !tbaa !118
  %gep2583.5 = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %indvars.iv.next2348.4
  store double %i.asa, ptr %gep2583.5, align 8, !tbaa !118
  %indvars.iv.next2348.5 = add nuw nsw i64 %indvars.iv2347, 6 ; 2 uses
  %i.asb = mul nsw i64 %indvars.iv.next2348.5, %i.apv
  %gep2581.6 = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.asb
  %i.asc = load double, ptr %gep2581.6, align 8, !tbaa !118
  %gep2583.6 = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %indvars.iv.next2348.5
  store double %i.asc, ptr %gep2583.6, align 8, !tbaa !118
  %indvars.iv.next2348.6 = add nuw nsw i64 %indvars.iv2347, 7 ; 2 uses
  %i.asd = mul nsw i64 %indvars.iv.next2348.6, %i.apv
  %gep2581.7 = getelementptr [8 x i8], ptr %invariant.gep2580, i64 %i.asd
  %i.ase = load double, ptr %gep2581.7, align 8, !tbaa !118
  %gep2583.7 = getelementptr [8 x i8], ptr %invariant.gep2582, i64 %indvars.iv.next2348.6
  store double %i.ase, ptr %gep2583.7, align 8, !tbaa !118
  %indvars.iv.next2348.7 = add nuw nsw i64 %indvars.iv2347, 8 ; 2 uses
  %exitcond2351.not.7 = icmp eq i64 %indvars.iv.next2348.7, %wide.trip.count2350
  br i1 %exitcond2351.not.7, label %._crit_edge2116, label %vec.epilog.scalar.ph3061, !llvm.loop !89

._crit_edge2116:                                  ; preds = %vec.epilog.scalar.ph3061.prol.loopexit, %vec.epilog.scalar.ph3061, %middle.block3056, %vec.epilog.middle.block3070, %bb.fp
  %indvars.iv.next2346 = add nuw nsw i64 %indvars.iv2345, 1 ; 2 uses
  %exitcond2354.not = icmp eq i64 %indvars.iv.next2346, %wide.trip.count2353
  %indvar.next3035 = add i64 %indvar3034, 1
  br i1 %exitcond2354.not, label %._crit_edge2121, label %bb.fp, !llvm.loop !90

._crit_edge2121:                                  ; preds = %._crit_edge2116
  store i32 %i.apz, ptr %i.f, align 4, !tbaa !116
  %.not2673 = icmp eq i32 %.pr1921, 1
  br i1 %.not2673, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %._crit_edge2121
  %i.asf = add nsw i32 %.pr1921, -1               ; 2 uses
  store i32 %i.asf, ptr %i.a, align 4, !tbaa !116
  store i32 %i.asf, ptr %i.b, align 4, !tbaa !116
  %i.asg = shl i32 %i.q, 1
  %i.ash = sext i32 %i.asg to i64
  %i.asi = getelementptr [8 x i8], ptr %i.s, i64 %i.ash
  %i.asj = getelementptr i8, ptr %i.asi, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.asj, ptr noundef nonnull %13) #6
  %.pre2432 = load i32, ptr %6, align 4, !tbaa !116
  %.pre2433 = load i32, ptr %i.h, align 4, !tbaa !116
  br label %bb.fr

bb.fr:                                            ; preds = %._crit_edge2121.thread, %bb.fq, %._crit_edge2121
  %i.ask = phi i32 [ %.pre2433, %bb.fq ], [ %.pr1921, %._crit_edge2121 ], [ %.pr1921, %._crit_edge2121.thread ] ; 2 uses
  %i.asl = phi i32 [ %.pre2432, %bb.fq ], [ %i.aij, %._crit_edge2121 ], [ %i.aij, %._crit_edge2121.thread ]
  %i.asm = sub nsw i32 %i.asl, %i.ask
  store i32 %i.asm, ptr %i.a, align 4, !tbaa !116
  %i.asn = add nsw i32 %i.ask, 1
  %i.aso = mul nsw i32 %i.asn, %i.q
  %i.asp = sext i32 %i.aso to i64
  %i.asq = getelementptr [8 x i8], ptr %i.s, i64 %i.asp
  %i.asr = getelementptr i8, ptr %i.asq, i64 8
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.asr, ptr noundef nonnull %13) #6
  %i.ass = load i32, ptr %18, align 4, !tbaa !116
  %i.ast = load i32, ptr %6, align 4, !tbaa !116  ; 2 uses
  %i.asu = sub nsw i32 %i.ass, %i.ast
  store i32 %i.asu, ptr %i.a, align 4, !tbaa !116
  %i.asv = sext i32 %i.ast to i64
  %i.asw = getelementptr [8 x i8], ptr %i.u, i64 %i.asv
  %i.asx = getelementptr i8, ptr %i.asw, i64 8
  call void @dgesvd_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %9, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %i.asx, ptr noundef nonnull %i.a, ptr noundef nonnull %21) #6
  %i.asy = load i32, ptr %6, align 4, !tbaa !116  ; 6 uses
  store i32 %i.asy, ptr %i.a, align 4, !tbaa !116
  %.not18482129 = icmp slt i32 %i.asy, 1
  br i1 %.not18482129, label %._crit_edge2133, label %.lr.ph2132

.lr.ph2132:                                       ; preds = %bb.fr
  store i32 %i.asy, ptr %i.b, align 4, !tbaa !116
  %i.asz = sext i32 %i.q to i64                   ; 6 uses
  %i.ata = zext nneg i32 %i.asy to i64
  %i.atb = add nuw i32 %i.asy, 1                  ; 2 uses
  %wide.trip.count2363 = zext i32 %i.atb to i64
  %wide.trip.count2360 = zext nneg i32 %i.asy to i64 ; 4 uses
  %ident.check3074.not = icmp eq i32 %i.q, 1
  br label %bb.fs

bb.fs:                                            ; preds = %.lr.ph2132, %bb.ft
  %indvar3075 = phi i64 [ 0, %.lr.ph2132 ], [ %indvar.next3076, %bb.ft ] ; 2 uses
  %indvars.iv2355 = phi i64 [ 1, %.lr.ph2132 ], [ %indvars.iv.next2356, %bb.ft ] ; 7 uses
  %32 = xor i64 %indvar3075, -1
  %33 = add i64 %32, %wide.trip.count2360         ; 3 uses
  %.not1852.not2123 = icmp samesign ult i64 %indvars.iv2355, %i.ata
  br i1 %.not1852.not2123, label %.lr.ph2126, label %bb.ft

.lr.ph2126:                                       ; preds = %bb.fs
  %i.atc = mul nsw i64 %indvars.iv2355, %i.asz
  %invariant.gep2584 = getelementptr [8 x i8], ptr %i.s, i64 %i.atc ; 6 uses
  %invariant.gep2586 = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv2355 ; 6 uses
  %min.iters.check3078 = icmp ugt i64 %33, 7
  %or.cond3231 = select i1 %min.iters.check3078, i1 %ident.check3074.not, i1 false
  br i1 %or.cond3231, label %vector.ph3079, label %scalar.ph3077.preheader

vector.ph3079:                                    ; preds = %.lr.ph2126
  %n.vec3080 = and i64 %33, -8                    ; 3 uses
  %i.atd = add i64 %indvars.iv2355, %n.vec3080
  %invariant.op3332 = add nuw i64 %indvars.iv2355, 1
  br label %vector.body3081

vector.body3081:                                  ; preds = %vector.body3081, %vector.ph3079
  %index3082 = phi i64 [ 0, %vector.ph3079 ], [ %index.next3087, %vector.body3081 ] ; 2 uses
  %.reass3333 = add nuw i64 %index3082, %invariant.op3332 ; 2 uses
  %i.ate = getelementptr [8 x i8], ptr %invariant.gep2584, i64 %.reass3333 ; 3 uses
  %i.atf = getelementptr i8, ptr %i.ate, i64 32   ; 2 uses
  %wide.load3083 = load <4 x double>, ptr %i.ate, align 8, !tbaa !118
  %wide.load3084 = load <4 x double>, ptr %i.atf, align 8, !tbaa !118 ; 2 uses
  %i.atg = getelementptr [8 x i8], ptr %invariant.gep2586, i64 %.reass3333 ; 3 uses
  %i.ath = getelementptr i8, ptr %i.atg, i64 32   ; 2 uses
  %wide.load3085 = load <4 x double>, ptr %i.atg, align 8, !tbaa !118
  %wide.load3086 = load <4 x double>, ptr %i.ath, align 8, !tbaa !118
  store <4 x double> %wide.load3085, ptr %i.ate, align 8, !tbaa !118
  store <4 x double> %wide.load3086, ptr %i.atf, align 8, !tbaa !118
  store <4 x double> %wide.load3083, ptr %i.atg, align 8, !tbaa !118
  store <4 x double> %wide.load3084, ptr %i.ath, align 8, !tbaa !118
  %index.next3087 = add nuw i64 %index3082, 8     ; 2 uses
  %i.ati = icmp eq i64 %index.next3087, %n.vec3080
  br i1 %i.ati, label %middle.block3088, label %vector.body3081, !llvm.loop !91

middle.block3088:                                 ; preds = %vector.body3081
  %i.atj = extractelement <4 x double> %wide.load3084, i64 3
  %cmp.n3089 = icmp eq i64 %33, %n.vec3080
  br i1 %cmp.n3089, label %._crit_edge2127, label %scalar.ph3077.preheader

scalar.ph3077.preheader:                          ; preds = %.lr.ph2126, %middle.block3088
  %indvars.iv2357.ph = phi i64 [ %indvars.iv2355, %.lr.ph2126 ], [ %i.atd, %middle.block3088 ] ; 4 uses
  %i.atk = sub i64 %wide.trip.count2360, %indvars.iv2357.ph
  %xtraiter3275 = and i64 %i.atk, 3               ; 2 uses
  %lcmp.mod3276.not = icmp eq i64 %xtraiter3275, 0
  br i1 %lcmp.mod3276.not, label %scalar.ph3077.prol.loopexit, label %scalar.ph3077.prol

scalar.ph3077.prol:                               ; preds = %scalar.ph3077.preheader, %scalar.ph3077.prol
  %indvars.iv2357.prol = phi i64 [ %indvars.iv.next2358.prol, %scalar.ph3077.prol ], [ %indvars.iv2357.ph, %scalar.ph3077.preheader ]
  %prol.iter3277 = phi i64 [ %prol.iter3277.next, %scalar.ph3077.prol ], [ 0, %scalar.ph3077.preheader ]
  %indvars.iv.next2358.prol = add nuw nsw i64 %indvars.iv2357.prol, 1 ; 4 uses
  %gep2585.prol = getelementptr [8 x i8], ptr %invariant.gep2584, i64 %indvars.iv.next2358.prol ; 2 uses
  %i.atl = load double, ptr %gep2585.prol, align 8, !tbaa !118 ; 2 uses
  %i.atm = mul nsw i64 %indvars.iv.next2358.prol, %i.asz
  %gep2587.prol = getelementptr [8 x i8], ptr %invariant.gep2586, i64 %i.atm ; 2 uses
  %i.atn = load double, ptr %gep2587.prol, align 8, !tbaa !118
  store double %i.atn, ptr %gep2585.prol, align 8, !tbaa !118
  store double %i.atl, ptr %gep2587.prol, align 8, !tbaa !118
  %prol.iter3277.next = add i64 %prol.iter3277, 1 ; 2 uses
  %prol.iter3277.cmp.not = icmp eq i64 %prol.iter3277.next, %xtraiter3275
  br i1 %prol.iter3277.cmp.not, label %scalar.ph3077.prol.loopexit, label %scalar.ph3077.prol, !llvm.loop !92

scalar.ph3077.prol.loopexit:                      ; preds = %scalar.ph3077.prol, %scalar.ph3077.preheader
  %.lcssa3239.unr = phi double [ poison, %scalar.ph3077.preheader ], [ %i.atl, %scalar.ph3077.prol ]
  %indvars.iv2357.unr = phi i64 [ %indvars.iv2357.ph, %scalar.ph3077.preheader ], [ %indvars.iv.next2358.prol, %scalar.ph3077.prol ]
  %i.ato = sub i64 %indvars.iv2357.ph, %wide.trip.count2360
  %i.atp = icmp ugt i64 %i.ato, -4
  br i1 %i.atp, label %._crit_edge2127, label %scalar.ph3077

scalar.ph3077:                                    ; preds = %scalar.ph3077.prol.loopexit, %scalar.ph3077
  %indvars.iv2357 = phi i64 [ %indvars.iv.next2358.3, %scalar.ph3077 ], [ %indvars.iv2357.unr, %scalar.ph3077.prol.loopexit ] ; 4 uses
  %indvars.iv.next2358 = add nuw nsw i64 %indvars.iv2357, 1 ; 2 uses
  %gep2585 = getelementptr [8 x i8], ptr %invariant.gep2584, i64 %indvars.iv.next2358 ; 2 uses
  %i.atq = load double, ptr %gep2585, align 8, !tbaa !118
  %i.atr = mul nsw i64 %indvars.iv.next2358, %i.asz
  %gep2587 = getelementptr [8 x i8], ptr %invariant.gep2586, i64 %i.atr ; 2 uses
  %i.ats = load double, ptr %gep2587, align 8, !tbaa !118
  store double %i.ats, ptr %gep2585, align 8, !tbaa !118
  store double %i.atq, ptr %gep2587, align 8, !tbaa !118
  %indvars.iv.next2358.1 = add nuw nsw i64 %indvars.iv2357, 2 ; 2 uses
  %gep2585.1 = getelementptr [8 x i8], ptr %invariant.gep2584, i64 %indvars.iv.next2358.1 ; 2 uses
  %i.att = load double, ptr %gep2585.1, align 8, !tbaa !118
  %i.atu = mul nsw i64 %indvars.iv.next2358.1, %i.asz
  %gep2587.1 = getelementptr [8 x i8], ptr %invariant.gep2586, i64 %i.atu ; 2 uses
  %i.atv = load double, ptr %gep2587.1, align 8, !tbaa !118
  store double %i.atv, ptr %gep2585.1, align 8, !tbaa !118
  store double %i.att, ptr %gep2587.1, align 8, !tbaa !118
  %indvars.iv.next2358.2 = add nuw nsw i64 %indvars.iv2357, 3 ; 2 uses
  %gep2585.2 = getelementptr [8 x i8], ptr %invariant.gep2584, i64 %indvars.iv.next2358.2 ; 2 uses
  %i.atw = load double, ptr %gep2585.2, align 8, !tbaa !118
  %i.atx = mul nsw i64 %indvars.iv.next2358.2, %i.asz
  %gep2587.2 = getelementptr [8 x i8], ptr %invariant.gep2586, i64 %i.atx ; 2 uses
  %i.aty = load double, ptr %gep2587.2, align 8, !tbaa !118
  store double %i.aty, ptr %gep2585.2, align 8, !tbaa !118
  store double %i.atw, ptr %gep2587.2, align 8, !tbaa !118
  %indvars.iv.next2358.3 = add nuw nsw i64 %indvars.iv2357, 4 ; 4 uses
  %gep2585.3 = getelementptr [8 x i8], ptr %invariant.gep2584, i64 %indvars.iv.next2358.3 ; 2 uses
  %i.atz = load double, ptr %gep2585.3, align 8, !tbaa !118 ; 2 uses
  %i.aua = mul nsw i64 %indvars.iv.next2358.3, %i.asz
  %gep2587.3 = getelementptr [8 x i8], ptr %invariant.gep2586, i64 %i.aua ; 2 uses
  %i.aub = load double, ptr %gep2587.3, align 8, !tbaa !118
  store double %i.aub, ptr %gep2585.3, align 8, !tbaa !118
  store double %i.atz, ptr %gep2587.3, align 8, !tbaa !118
  %exitcond2361.not.3 = icmp eq i64 %indvars.iv.next2358.3, %wide.trip.count2360
  br i1 %exitcond2361.not.3, label %._crit_edge2127, label %scalar.ph3077, !llvm.loop !93

._crit_edge2127:                                  ; preds = %scalar.ph3077.prol.loopexit, %scalar.ph3077, %middle.block3088
  %.lcssa2677 = phi double [ %i.atj, %middle.block3088 ], [ %.lcssa3239.unr, %scalar.ph3077.prol.loopexit ], [ %i.atz, %scalar.ph3077 ]
  store double %.lcssa2677, ptr %i.e, align 8, !tbaa !118
  br label %bb.ft

bb.ft:                                            ; preds = %._crit_edge2127, %bb.fs
  %indvars.iv.next2356 = add nuw nsw i64 %indvars.iv2355, 1 ; 2 uses
  %exitcond2364.not = icmp eq i64 %indvars.iv.next2356, %wide.trip.count2363
  %indvar.next3076 = add i64 %indvar3075, 1
  br i1 %exitcond2364.not, label %._crit_edge2133, label %bb.fs, !llvm.loop !94

._crit_edge2133:                                  ; preds = %bb.ft, %bb.fr
  %storemerge1847.lcssa = phi i32 [ 1, %bb.fr ], [ %i.atb, %bb.ft ]
  store i32 %storemerge1847.lcssa, ptr %i.f, align 4, !tbaa !116
  call void @dlapmt_(ptr noundef nonnull @c_false, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %15) #6
  %i.auc = load i32, ptr %6, align 4, !tbaa !116  ; 9 uses
  store i32 %i.auc, ptr %i.a, align 4, !tbaa !116
  %.not18502141 = icmp slt i32 %i.auc, 1
  br i1 %.not18502141, label %._crit_edge2145, label %.lr.ph2144

.lr.ph2144:                                       ; preds = %._crit_edge2133
  store i32 %i.auc, ptr %i.b, align 4, !tbaa !116
  %i.aud = sext i32 %i.n to i64                   ; 6 uses
  %i.aue = zext nneg i32 %i.auc to i64
  %i.auf = add nuw i32 %i.auc, 1                  ; 2 uses
  %wide.trip.count2373 = zext i32 %i.auf to i64
  %wide.trip.count2370 = zext nneg i32 %i.auc to i64 ; 4 uses
  %ident.check3092.not = icmp eq i32 %i.n, 1
  br label %bb.fu

bb.fu:                                            ; preds = %.lr.ph2144, %bb.fv
  %indvar3093 = phi i64 [ 0, %.lr.ph2144 ], [ %indvar.next3094, %bb.fv ] ; 2 uses
  %indvars.iv2365 = phi i64 [ 1, %.lr.ph2144 ], [ %indvars.iv.next2366, %bb.fv ] ; 7 uses
  %34 = xor i64 %indvar3093, -1
  %35 = add i64 %34, %wide.trip.count2370         ; 3 uses
  %.not1851.not2135 = icmp samesign ult i64 %indvars.iv2365, %i.aue
  br i1 %.not1851.not2135, label %.lr.ph2138, label %bb.fv

.lr.ph2138:                                       ; preds = %bb.fu
  %i.aug = mul nsw i64 %indvars.iv2365, %i.aud
  %invariant.gep2588 = getelementptr [8 x i8], ptr %i.p, i64 %i.aug ; 6 uses
  %invariant.gep2590 = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv2365 ; 6 uses
  %min.iters.check3096 = icmp ugt i64 %35, 7
  %or.cond3232 = select i1 %min.iters.check3096, i1 %ident.check3092.not, i1 false
  br i1 %or.cond3232, label %vector.ph3097, label %scalar.ph3095.preheader

vector.ph3097:                                    ; preds = %.lr.ph2138
  %n.vec3098 = and i64 %35, -8                    ; 3 uses
  %i.auh = add i64 %indvars.iv2365, %n.vec3098
  %invariant.op3334 = add nuw i64 %indvars.iv2365, 1
  br label %vector.body3099

vector.body3099:                                  ; preds = %vector.body3099, %vector.ph3097
  %index3100 = phi i64 [ 0, %vector.ph3097 ], [ %index.next3105, %vector.body3099 ] ; 2 uses
  %.reass3335 = add nuw i64 %index3100, %invariant.op3334 ; 2 uses
  %i.aui = getelementptr [8 x i8], ptr %invariant.gep2588, i64 %.reass3335 ; 3 uses
  %i.auj = getelementptr i8, ptr %i.aui, i64 32   ; 2 uses
  %wide.load3101 = load <4 x double>, ptr %i.aui, align 8, !tbaa !118
  %wide.load3102 = load <4 x double>, ptr %i.auj, align 8, !tbaa !118 ; 2 uses
  %i.auk = getelementptr [8 x i8], ptr %invariant.gep2590, i64 %.reass3335 ; 3 uses
  %i.aul = getelementptr i8, ptr %i.auk, i64 32   ; 2 uses
  %wide.load3103 = load <4 x double>, ptr %i.auk, align 8, !tbaa !118
  %wide.load3104 = load <4 x double>, ptr %i.aul, align 8, !tbaa !118
  store <4 x double> %wide.load3103, ptr %i.aui, align 8, !tbaa !118
  store <4 x double> %wide.load3104, ptr %i.auj, align 8, !tbaa !118
  store <4 x double> %wide.load3101, ptr %i.auk, align 8, !tbaa !118
  store <4 x double> %wide.load3102, ptr %i.aul, align 8, !tbaa !118
  %index.next3105 = add nuw i64 %index3100, 8     ; 2 uses
  %i.aum = icmp eq i64 %index.next3105, %n.vec3098
  br i1 %i.aum, label %middle.block3106, label %vector.body3099, !llvm.loop !95

middle.block3106:                                 ; preds = %vector.body3099
  %i.aun = extractelement <4 x double> %wide.load3102, i64 3
  %cmp.n3107 = icmp eq i64 %35, %n.vec3098
  br i1 %cmp.n3107, label %._crit_edge2139, label %scalar.ph3095.preheader

scalar.ph3095.preheader:                          ; preds = %.lr.ph2138, %middle.block3106
  %indvars.iv2367.ph = phi i64 [ %indvars.iv2365, %.lr.ph2138 ], [ %i.auh, %middle.block3106 ] ; 4 uses
  %i.auo = sub i64 %wide.trip.count2370, %indvars.iv2367.ph
  %xtraiter3278 = and i64 %i.auo, 3               ; 2 uses
  %lcmp.mod3279.not = icmp eq i64 %xtraiter3278, 0
  br i1 %lcmp.mod3279.not, label %scalar.ph3095.prol.loopexit, label %scalar.ph3095.prol

scalar.ph3095.prol:                               ; preds = %scalar.ph3095.preheader, %scalar.ph3095.prol
  %indvars.iv2367.prol = phi i64 [ %indvars.iv.next2368.prol, %scalar.ph3095.prol ], [ %indvars.iv2367.ph, %scalar.ph3095.preheader ]
  %prol.iter3280 = phi i64 [ %prol.iter3280.next, %scalar.ph3095.prol ], [ 0, %scalar.ph3095.preheader ]
  %indvars.iv.next2368.prol = add nuw nsw i64 %indvars.iv2367.prol, 1 ; 4 uses
  %gep2589.prol = getelementptr [8 x i8], ptr %invariant.gep2588, i64 %indvars.iv.next2368.prol ; 2 uses
  %i.aup = load double, ptr %gep2589.prol, align 8, !tbaa !118 ; 2 uses
  %i.auq = mul nsw i64 %indvars.iv.next2368.prol, %i.aud
  %gep2591.prol = getelementptr [8 x i8], ptr %invariant.gep2590, i64 %i.auq ; 2 uses
  %i.aur = load double, ptr %gep2591.prol, align 8, !tbaa !118
  store double %i.aur, ptr %gep2589.prol, align 8, !tbaa !118
  store double %i.aup, ptr %gep2591.prol, align 8, !tbaa !118
  %prol.iter3280.next = add i64 %prol.iter3280, 1 ; 2 uses
  %prol.iter3280.cmp.not = icmp eq i64 %prol.iter3280.next, %xtraiter3278
  br i1 %prol.iter3280.cmp.not, label %scalar.ph3095.prol.loopexit, label %scalar.ph3095.prol, !llvm.loop !96

scalar.ph3095.prol.loopexit:                      ; preds = %scalar.ph3095.prol, %scalar.ph3095.preheader
  %.lcssa3238.unr = phi double [ poison, %scalar.ph3095.preheader ], [ %i.aup, %scalar.ph3095.prol ]
  %indvars.iv2367.unr = phi i64 [ %indvars.iv2367.ph, %scalar.ph3095.preheader ], [ %indvars.iv.next2368.prol, %scalar.ph3095.prol ]
  %i.aus = sub i64 %indvars.iv2367.ph, %wide.trip.count2370
  %i.aut = icmp ugt i64 %i.aus, -4
  br i1 %i.aut, label %._crit_edge2139, label %scalar.ph3095

scalar.ph3095:                                    ; preds = %scalar.ph3095.prol.loopexit, %scalar.ph3095
  %indvars.iv2367 = phi i64 [ %indvars.iv.next2368.3, %scalar.ph3095 ], [ %indvars.iv2367.unr, %scalar.ph3095.prol.loopexit ] ; 4 uses
  %indvars.iv.next2368 = add nuw nsw i64 %indvars.iv2367, 1 ; 2 uses
  %gep2589 = getelementptr [8 x i8], ptr %invariant.gep2588, i64 %indvars.iv.next2368 ; 2 uses
  %i.auu = load double, ptr %gep2589, align 8, !tbaa !118
  %i.auv = mul nsw i64 %indvars.iv.next2368, %i.aud
  %gep2591 = getelementptr [8 x i8], ptr %invariant.gep2590, i64 %i.auv ; 2 uses
  %i.auw = load double, ptr %gep2591, align 8, !tbaa !118
  store double %i.auw, ptr %gep2589, align 8, !tbaa !118
  store double %i.auu, ptr %gep2591, align 8, !tbaa !118
  %indvars.iv.next2368.1 = add nuw nsw i64 %indvars.iv2367, 2 ; 2 uses
  %gep2589.1 = getelementptr [8 x i8], ptr %invariant.gep2588, i64 %indvars.iv.next2368.1 ; 2 uses
  %i.aux = load double, ptr %gep2589.1, align 8, !tbaa !118
  %i.auy = mul nsw i64 %indvars.iv.next2368.1, %i.aud
  %gep2591.1 = getelementptr [8 x i8], ptr %invariant.gep2590, i64 %i.auy ; 2 uses
  %i.auz = load double, ptr %gep2591.1, align 8, !tbaa !118
  store double %i.auz, ptr %gep2589.1, align 8, !tbaa !118
  store double %i.aux, ptr %gep2591.1, align 8, !tbaa !118
  %indvars.iv.next2368.2 = add nuw nsw i64 %indvars.iv2367, 3 ; 2 uses
  %gep2589.2 = getelementptr [8 x i8], ptr %invariant.gep2588, i64 %indvars.iv.next2368.2 ; 2 uses
  %i.ava = load double, ptr %gep2589.2, align 8, !tbaa !118
  %i.avb = mul nsw i64 %indvars.iv.next2368.2, %i.aud
  %gep2591.2 = getelementptr [8 x i8], ptr %invariant.gep2590, i64 %i.avb ; 2 uses
  %i.avc = load double, ptr %gep2591.2, align 8, !tbaa !118
  store double %i.avc, ptr %gep2589.2, align 8, !tbaa !118
  store double %i.ava, ptr %gep2591.2, align 8, !tbaa !118
  %indvars.iv.next2368.3 = add nuw nsw i64 %indvars.iv2367, 4 ; 4 uses
  %gep2589.3 = getelementptr [8 x i8], ptr %invariant.gep2588, i64 %indvars.iv.next2368.3 ; 2 uses
  %i.avd = load double, ptr %gep2589.3, align 8, !tbaa !118 ; 2 uses
  %i.ave = mul nsw i64 %indvars.iv.next2368.3, %i.aud
  %gep2591.3 = getelementptr [8 x i8], ptr %invariant.gep2590, i64 %i.ave ; 2 uses
  %i.avf = load double, ptr %gep2591.3, align 8, !tbaa !118
  store double %i.avf, ptr %gep2589.3, align 8, !tbaa !118
  store double %i.avd, ptr %gep2591.3, align 8, !tbaa !118
  %exitcond2371.not.3 = icmp eq i64 %indvars.iv.next2368.3, %wide.trip.count2370
  br i1 %exitcond2371.not.3, label %._crit_edge2139, label %scalar.ph3095, !llvm.loop !97

._crit_edge2139:                                  ; preds = %scalar.ph3095.prol.loopexit, %scalar.ph3095, %middle.block3106
  %.lcssa2676 = phi double [ %i.aun, %middle.block3106 ], [ %.lcssa3238.unr, %scalar.ph3095.prol.loopexit ], [ %i.avd, %scalar.ph3095 ]
  store double %.lcssa2676, ptr %i.e, align 8, !tbaa !118
  br label %bb.fv

bb.fv:                                            ; preds = %._crit_edge2139, %bb.fu
  %indvars.iv.next2366 = add nuw nsw i64 %indvars.iv2365, 1 ; 2 uses
  %exitcond2374.not = icmp eq i64 %indvars.iv.next2366, %wide.trip.count2373
  %indvar.next3094 = add i64 %indvar3093, 1
  br i1 %exitcond2374.not, label %._crit_edge2145, label %bb.fu, !llvm.loop !98

._crit_edge2145:                                  ; preds = %bb.fv, %._crit_edge2133
  %storemerge1849.lcssa = phi i32 [ 1, %._crit_edge2133 ], [ %i.auf, %bb.fv ]
  store i32 %storemerge1849.lcssa, ptr %i.f, align 4, !tbaa !116
  %i.avg = load i32, ptr %5, align 4, !tbaa !116  ; 2 uses
  %i.avh = icmp sge i32 %i.auc, %i.avg
  %or.cond45 = select i1 %i.avh, i1 true, i1 %i.af
  br i1 %or.cond45, label %bb.gz, label %bb.fw

bb.fw:                                            ; preds = %._crit_edge2145
  %i.avi = sub nsw i32 %i.avg, %i.auc
  store i32 %i.avi, ptr %i.a, align 4, !tbaa !116
  %i.avj = add i32 %i.n, 1                        ; 2 uses
  %i.avk = add i32 %i.avj, %i.auc
  %i.avl = sext i32 %i.avk to i64
  %i.avm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.avl
  call void @dlaset_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull @c_b72, ptr noundef nonnull @c_b72, ptr noundef %i.avm, ptr noundef nonnull %11) #6
  %i.avn = load i32, ptr %6, align 4, !tbaa !116  ; 3 uses
  %i.avo = load i32, ptr %i.g, align 4, !tbaa !116 ; 2 uses
  %i.avp = icmp slt i32 %i.avn, %i.avo
  br i1 %i.avp, label %bb.fx, label %.thread1923

bb.fx:                                            ; preds = %bb.fw
  %i.avq = sub nsw i32 %i.avo, %i.avn
  br label %.thread1923.sink.split

bb.fy:                                            ; preds = %bb.fn
  br i1 %.not18462117, label %._crit_edge2099.thread, label %.lr.ph2098

._crit_edge2099.thread:                           ; preds = %bb.fy
  store i32 1, ptr %i.f, align 4, !tbaa !116
  br label %bb.gb

.lr.ph2098:                                       ; preds = %bb.fy
  store i32 %i.aij, ptr %i.b, align 4, !tbaa !116
  %i.avr = sext i32 %i.j to i64                   ; 9 uses
  %i.avs = add i32 %i.aij, 1
  %i.avt = sext i32 %i.aij to i64
  %i.avu = zext nneg i32 %.pr1921 to i64          ; 2 uses
  %i.avv = sext i32 %i.n to i64                   ; 4 uses
  %i.avw = add nuw i32 %.pr1921, 1                ; 2 uses
  %wide.trip.count2333 = zext i32 %i.avw to i64
  %wide.trip.count2330 = zext i32 %i.avs to i64   ; 5 uses
  %i.avx = add nuw nsw i64 %i.avu, 1
  %i.avy = mul nsw i64 %i.avx, %i.avv
  %i.avz = add i64 %i.avy, %i.o
  %i.awa = shl i64 %i.avz, 3                      ; 2 uses
  %i.awb = shl nsw i64 %i.avv, 3
  %i.awc = add nsw i64 %i.awb, 8
  %i.awd = shl nuw nsw i64 %wide.trip.count2330, 3 ; 2 uses
  %i.awe = shl nsw i64 %i.avv, 3
  %i.awf = getelementptr i8, ptr %10, i64 %i.awa
  %i.awg = getelementptr i8, ptr %i.awf, i64 8
  %i.awh = getelementptr i8, ptr %10, i64 %i.awa
  %i.awi = getelementptr i8, ptr %i.awh, i64 %i.awd
  %i.awj = getelementptr i8, ptr %7, i64 %i.awd
  %i.awk = getelementptr i8, ptr %i.awj, i64 -8
  %ident.check2950.not = icmp eq i32 %i.j, 1
  br label %bb.fz

bb.fz:                                            ; preds = %.lr.ph2098, %._crit_edge2094
  %indvar2952 = phi i64 [ 0, %.lr.ph2098 ], [ %indvar.next2953, %._crit_edge2094 ] ; 6 uses
  %indvars.iv2325 = phi i64 [ 1, %.lr.ph2098 ], [ %indvars.iv.next2326, %._crit_edge2094 ] ; 10 uses
  %i.awl = xor i64 %indvar2952, -1
  %i.awm = add i64 %i.awl, %wide.trip.count2330   ; 7 uses
  %i.awn = mul i64 %i.awc, %indvar2952
  %scevgep2954 = getelementptr i8, ptr %i.awg, i64 %i.awn
  %i.awo = mul i64 %i.awe, %indvar2952
  %scevgep2955 = getelementptr i8, ptr %i.awi, i64 %i.awo
  %i.awp = shl nuw nsw i64 %indvar2952, 4
  %scevgep2956 = getelementptr i8, ptr %7, i64 %i.awp
  %i.awq = shl nuw nsw i64 %indvar2952, 3
  %scevgep2957 = getelementptr i8, ptr %i.awk, i64 %i.awq
  %.not18442090 = icmp sgt i64 %indvars.iv2325, %i.avt
  br i1 %.not18442090, label %._crit_edge2094, label %iter.check2978

iter.check2978:                                   ; preds = %bb.fz
  %i.awr = add nuw nsw i64 %indvars.iv2325, %i.avu
  %i.aws = mul nsw i64 %i.awr, %i.avv
  %invariant.gep2572 = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv2325 ; 11 uses
  %invariant.gep2574 = getelementptr [8 x i8], ptr %i.p, i64 %i.aws ; 11 uses
  %min.iters.check2962 = icmp ugt i64 %i.awm, 3
  %or.cond3233 = select i1 %min.iters.check2962, i1 %ident.check2950.not, i1 false
  br i1 %or.cond3233, label %vector.memcheck2951, label %vec.epilog.scalar.ph2979.preheader

vector.memcheck2951:                              ; preds = %iter.check2978
  %bound02958 = icmp ult ptr %scevgep2954, %scevgep2957
  %bound12959 = icmp ult ptr %scevgep2956, %scevgep2955
  %found.conflict2960 = and i1 %bound02958, %bound12959
  br i1 %found.conflict2960, label %vec.epilog.scalar.ph2979.preheader, label %vector.main.loop.iter.check2963
end_hunk_3
