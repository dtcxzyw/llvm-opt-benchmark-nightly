Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/eval_f?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@ffcvtn:bb.a
  %i.us = or disjoint i64 %.21473, 3              ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !24
  %i.uv = zext i8 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.us
  store i64 %i.uv, ptr %i.uw, align 8, !tbaa !72
  %i.ux = add nuw nsw i64 %.21473, 4              ; 2 uses
  %niter1174.next.3 = add nuw nsw i64 %niter1174, 4 ; 2 uses
  %niter1174.ncmp.3 = icmp eq i64 %niter1174.next.3, %unroll_iter1173
  br i1 %niter1174.ncmp.3, label %.lr.ph476.preheader.loopexit.unr-lcssa, label %.lr.ph474, !llvm.loop !238

.lr.ph472:                                        ; preds = %.lr.ph472.preheader1131, %.lr.ph472
  %.22471 = phi i64 [ %i.vc, %.lr.ph472 ], [ %.22471.ph, %.lr.ph472.preheader1131 ] ; 3 uses
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.22471
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !71
  %i.va = sext i16 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.22471
  store i64 %i.va, ptr %i.vb, align 8, !tbaa !72
  %i.vc = add nuw nsw i64 %.22471, 1              ; 2 uses
  %exitcond557.not = icmp eq i64 %i.vc, %3
  br i1 %exitcond557.not, label %.lr.ph476.preheader, label %.lr.ph472, !llvm.loop !239

.lr.ph470:                                        ; preds = %.lr.ph470.preheader1133, %.lr.ph470
  %.23469 = phi i64 [ %i.vg, %.lr.ph470 ], [ %.23469.ph, %.lr.ph470.preheader1133 ] ; 3 uses
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.23469
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !11
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.23469
  store i64 %i.ve, ptr %i.vf, align 8, !tbaa !72
  %i.vg = add nuw nsw i64 %.23469, 1              ; 2 uses
  %exitcond556.not = icmp eq i64 %i.vg, %3
  br i1 %exitcond556.not, label %.lr.ph476.preheader, label %.lr.ph470, !llvm.loop !240

bb.be:                                            ; preds = %bb.bc
  %i.vh = tail call i32 @fffr4i8(ptr noundef %1, i64 noundef %3, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, i64 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %6, ptr noundef %8) #16 ; 0 uses
  br label %.loopexit425

bb.bf:                                            ; preds = %bb.bc
  %i.vi = tail call i32 @fffr8i8(ptr noundef %1, i64 noundef %3, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, i64 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %6, ptr noundef %8) #16 ; 0 uses
  br label %.loopexit425

bb.bg:                                            ; preds = %bb.bc
  store i32 410, ptr %8, align 4, !tbaa !9
  br label %.loopexit425

.loopexit425:                                     ; preds = %bb.bg, %bb.bf, %bb.be
  %i.vj = icmp sgt i64 %3, 0
  br i1 %i.vj, label %.lr.ph476.preheader, label %.loopexit

.lr.ph476.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph474
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1170, 0
  br i1 %lcmp.mod1171.not, label %.lr.ph476.preheader, label %.lr.ph474.epil.preheader

.lr.ph474.epil.preheader:                         ; preds = %.lr.ph476.preheader.loopexit.unr-lcssa, %.lr.ph474.preheader
  %.21473.epil.init = phi i64 [ 0, %.lr.ph474.preheader ], [ %i.ux, %.lr.ph476.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1172 = icmp ne i64 %xtraiter1170, 0
  tail call void @llvm.assume(i1 %lcmp.mod1172)
  br label %.lr.ph474.epil

.lr.ph474.epil:                                   ; preds = %.lr.ph474.epil, %.lr.ph474.epil.preheader
  %.21473.epil = phi i64 [ %i.vo, %.lr.ph474.epil ], [ %.21473.epil.init, %.lr.ph474.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph474.epil ], [ 0, %.lr.ph474.epil.preheader ]
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 %.21473.epil
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !24
  %i.vm = zext i8 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.21473.epil
  store i64 %i.vm, ptr %i.vn, align 8, !tbaa !72
  %i.vo = add nuw nsw i64 %.21473.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1170
  br i1 %epil.iter.cmp.not, label %.lr.ph476.preheader, label %.lr.ph474.epil, !llvm.loop !241

.lr.ph476.preheader:                              ; preds = %.lr.ph470, %.lr.ph472, %.lr.ph476.preheader.loopexit.unr-lcssa, %.lr.ph474.epil, %middle.block795, %middle.block807, %.loopexit425
  %xtraiter1175 = and i64 %3, 1
  %i.vp = icmp eq i64 %3, 1
  br i1 %i.vp, label %.lr.ph476.epil.preheader, label %.lr.ph476.preheader.new

.lr.ph476.preheader.new:                          ; preds = %.lr.ph476.preheader
  %unroll_iter1179 = and i64 %3, -2
  br label %.lr.ph476

.lr.ph476:                                        ; preds = %bb.bj, %.lr.ph476.preheader.new
  %.24475 = phi i64 [ 0, %.lr.ph476.preheader.new ], [ %i.vz, %bb.bj ] ; 4 uses
  %niter1180 = phi i64 [ 0, %.lr.ph476.preheader.new ], [ %niter1180.next.1, %bb.bj ]
  %i.vq = getelementptr inbounds nuw i8, ptr %2, i64 %.24475
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !24
  %.not383 = icmp eq i8 %i.vr, 0
  br i1 %.not383, label %.lr.ph476.1, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph476
  %i.vs = load i64, ptr %5, align 8, !tbaa !72
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.24475
  store i64 %i.vs, ptr %i.vt, align 8, !tbaa !72
  store i32 1, ptr %7, align 4, !tbaa !9
  br label %.lr.ph476.1

.lr.ph476.1:                                      ; preds = %.lr.ph476, %bb.bh
  %i.vu = or disjoint i64 %.24475, 1              ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %2, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !24
  %.not383.1 = icmp eq i8 %i.vw, 0
  br i1 %.not383.1, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph476.1
  %i.vx = load i64, ptr %5, align 8, !tbaa !72
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.vu
  store i64 %i.vx, ptr %i.vy, align 8, !tbaa !72
  store i32 1, ptr %7, align 4, !tbaa !9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph476.1
  %i.vz = add nuw nsw i64 %.24475, 2              ; 2 uses
  %niter1180.next.1 = add i64 %niter1180, 2       ; 2 uses
  %niter1180.ncmp.1 = icmp eq i64 %niter1180.next.1, %unroll_iter1179
  br i1 %niter1180.ncmp.1, label %.loopexit.loopexit1130.unr-lcssa, label %.lr.ph476, !llvm.loop !242

bb.bk:                                            ; preds = %bb.a
  switch i32 %0, label %bb.bn [
    i32 14, label %bb.bl
    i32 11, label %bb.bl
    i32 21, label %.preheader432
    i32 41, label %.preheader434
    i32 42, label %.preheader436
    i32 82, label %bb.bm
  ]

.preheader436:                                    ; preds = %bb.bk
  %i.wa = icmp sgt i64 %3, 0
  br i1 %i.wa, label %.lr.ph460.preheader, label %.loopexit

.lr.ph460.preheader:                              ; preds = %.preheader436
  %min.iters.check728 = icmp ult i64 %3, 8
  %i.wb = sub i64 %i.a, %i.b
  %diff.check730 = icmp ugt i64 %i.wb, -32
  %or.cond1105 = or i1 %min.iters.check728, %diff.check730
  br i1 %or.cond1105, label %.lr.ph460.preheader1141, label %vector.ph731

vector.ph731:                                     ; preds = %.lr.ph460.preheader
  %n.vec732 = and i64 %3, 9223372036854775800     ; 3 uses
  br label %vector.body733

vector.body733:                                   ; preds = %vector.body733, %vector.ph731
  %index734 = phi i64 [ 0, %vector.ph731 ], [ %index.next737, %vector.body733 ] ; 3 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index734 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %wide.load735 = load <4 x float>, ptr %i.wc, align 4, !tbaa !74
  %wide.load736 = load <4 x float>, ptr %i.wd, align 4, !tbaa !74
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index734 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  store <4 x float> %wide.load735, ptr %i.we, align 4, !tbaa !74
  store <4 x float> %wide.load736, ptr %i.wf, align 4, !tbaa !74
  %index.next737 = add nuw i64 %index734, 8       ; 2 uses
  %i.wg = icmp eq i64 %index.next737, %n.vec732
  br i1 %i.wg, label %middle.block738, label %vector.body733, !llvm.loop !243

middle.block738:                                  ; preds = %vector.body733
  %cmp.n739 = icmp eq i64 %3, %n.vec732
  br i1 %cmp.n739, label %.lr.ph468.preheader, label %.lr.ph460.preheader1141

.lr.ph460.preheader1141:                          ; preds = %.lr.ph460.preheader, %middle.block738
  %.28459.ph = phi i64 [ 0, %.lr.ph460.preheader ], [ %n.vec732, %middle.block738 ] ; 3 uses
  %xtraiter1159 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1160.not = icmp eq i64 %xtraiter1159, 0
  br i1 %lcmp.mod1160.not, label %.lr.ph460.prol.loopexit, label %.lr.ph460.prol

.lr.ph460.prol:                                   ; preds = %.lr.ph460.preheader1141, %.lr.ph460.prol
  %.28459.prol = phi i64 [ %i.wk, %.lr.ph460.prol ], [ %.28459.ph, %.lr.ph460.preheader1141 ] ; 3 uses
  %prol.iter1161 = phi i64 [ %prol.iter1161.next, %.lr.ph460.prol ], [ 0, %.lr.ph460.preheader1141 ]
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.28459.prol
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !74
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.28459.prol
  store float %i.wi, ptr %i.wj, align 4, !tbaa !74
  %i.wk = add nuw nsw i64 %.28459.prol, 1         ; 2 uses
  %prol.iter1161.next = add i64 %prol.iter1161, 1 ; 2 uses
  %prol.iter1161.cmp.not = icmp eq i64 %prol.iter1161.next, %xtraiter1159
  br i1 %prol.iter1161.cmp.not, label %.lr.ph460.prol.loopexit, label %.lr.ph460.prol, !llvm.loop !244

.lr.ph460.prol.loopexit:                          ; preds = %.lr.ph460.prol, %.lr.ph460.preheader1141
  %.28459.unr = phi i64 [ %.28459.ph, %.lr.ph460.preheader1141 ], [ %i.wk, %.lr.ph460.prol ]
  %i.wl = sub nsw i64 %.28459.ph, %3
  %i.wm = icmp ugt i64 %i.wl, -4
  br i1 %i.wm, label %.lr.ph468.preheader, label %.lr.ph460

.preheader434:                                    ; preds = %bb.bk
  %i.wn = icmp sgt i64 %3, 0
  br i1 %i.wn, label %.lr.ph462.preheader, label %.loopexit

.lr.ph462.preheader:                              ; preds = %.preheader434
  %min.iters.check742 = icmp ult i64 %3, 4
  br i1 %min.iters.check742, label %.lr.ph462.preheader1139, label %vector.ph743

vector.ph743:                                     ; preds = %.lr.ph462.preheader
  %n.vec744 = and i64 %3, 9223372036854775804     ; 3 uses
  br label %vector.body745

vector.body745:                                   ; preds = %vector.body745, %vector.ph743
  %index746 = phi i64 [ 0, %vector.ph743 ], [ %index.next749, %vector.body745 ] ; 3 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index746 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %wide.load747 = load <2 x i64>, ptr %i.wo, align 8, !tbaa !11
  %wide.load748 = load <2 x i64>, ptr %i.wp, align 8, !tbaa !11
  %9 = sitofp <2 x i64> %wide.load747 to <2 x float>
  %10 = sitofp <2 x i64> %wide.load748 to <2 x float>
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index746 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  store <2 x float> %9, ptr %i.wq, align 4, !tbaa !74
  store <2 x float> %10, ptr %11, align 4, !tbaa !74
  %index.next749 = add nuw i64 %index746, 4       ; 2 uses
  %i.wr = icmp eq i64 %index.next749, %n.vec744
  br i1 %i.wr, label %middle.block750, label %vector.body745, !llvm.loop !245

middle.block750:                                  ; preds = %vector.body745
  %cmp.n751 = icmp eq i64 %3, %n.vec744
  br i1 %cmp.n751, label %.lr.ph468.preheader, label %.lr.ph462.preheader1139

.lr.ph462.preheader1139:                          ; preds = %.lr.ph462.preheader, %middle.block750
  %.27461.ph = phi i64 [ 0, %.lr.ph462.preheader ], [ %n.vec744, %middle.block750 ]
  br label %.lr.ph462

.preheader432:                                    ; preds = %bb.bk
  %i.ws = icmp sgt i64 %3, 0
  br i1 %i.ws, label %.lr.ph464.preheader, label %.loopexit

.lr.ph464.preheader:                              ; preds = %.preheader432
  %min.iters.check754 = icmp ult i64 %3, 8
  br i1 %min.iters.check754, label %.lr.ph464.preheader1137, label %vector.ph755

vector.ph755:                                     ; preds = %.lr.ph464.preheader
  %n.vec756 = and i64 %3, 9223372036854775800     ; 3 uses
  br label %vector.body757

vector.body757:                                   ; preds = %vector.body757, %vector.ph755
  %index758 = phi i64 [ 0, %vector.ph755 ], [ %index.next761, %vector.body757 ] ; 3 uses
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index758 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %wide.load759 = load <4 x i16>, ptr %i.wt, align 2, !tbaa !71
  %wide.load760 = load <4 x i16>, ptr %i.wu, align 2, !tbaa !71
  %i.wv = sitofp <4 x i16> %wide.load759 to <4 x float>
  %i.ww = sitofp <4 x i16> %wide.load760 to <4 x float>
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index758 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  store <4 x float> %i.wv, ptr %i.wx, align 4, !tbaa !74
  store <4 x float> %i.ww, ptr %i.wy, align 4, !tbaa !74
  %index.next761 = add nuw i64 %index758, 8       ; 2 uses
  %i.wz = icmp eq i64 %index.next761, %n.vec756
  br i1 %i.wz, label %middle.block762, label %vector.body757, !llvm.loop !246

middle.block762:                                  ; preds = %vector.body757
  %cmp.n763 = icmp eq i64 %3, %n.vec756
  br i1 %cmp.n763, label %.lr.ph468.preheader, label %.lr.ph464.preheader1137

.lr.ph464.preheader1137:                          ; preds = %.lr.ph464.preheader, %middle.block762
  %.26463.ph = phi i64 [ 0, %.lr.ph464.preheader ], [ %n.vec756, %middle.block762 ]
  br label %.lr.ph464

bb.bl:                                            ; preds = %bb.bk, %bb.bk
  %i.xa = icmp sgt i64 %3, 0
  br i1 %i.xa, label %.lr.ph466.preheader, label %.loopexit

.lr.ph466.preheader:                              ; preds = %bb.bl
  %min.iters.check771 = icmp ult i64 %3, 8
  br i1 %min.iters.check771, label %.lr.ph466.preheader1136, label %vector.memcheck772

vector.memcheck772:                               ; preds = %.lr.ph466.preheader
  %i.xb = shl i64 %3, 2
  %i.xc = getelementptr i8, ptr %6, i64 %i.xb
  %i.xd = getelementptr i8, ptr %1, i64 %3
  %bound0773 = icmp ult ptr %6, %i.xd
  %bound1774 = icmp ult ptr %1, %i.xc
  %found.conflict775 = and i1 %bound0773, %bound1774
  br i1 %found.conflict775, label %.lr.ph466.preheader1136, label %vector.ph776

vector.ph776:                                     ; preds = %vector.memcheck772
  %n.vec777 = and i64 %3, 9223372036854775800     ; 3 uses
  br label %vector.body778

vector.body778:                                   ; preds = %vector.body778, %vector.ph776
  %index779 = phi i64 [ 0, %vector.ph776 ], [ %index.next782, %vector.body778 ] ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 %index779 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  %wide.load780 = load <4 x i8>, ptr %i.xe, align 1, !tbaa !24, !alias.scope !287
  %wide.load781 = load <4 x i8>, ptr %i.xf, align 1, !tbaa !24, !alias.scope !287
  %i.xg = uitofp <4 x i8> %wide.load780 to <4 x float>
  %i.xh = uitofp <4 x i8> %wide.load781 to <4 x float>
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index779 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  store <4 x float> %i.xg, ptr %i.xi, align 4, !tbaa !74, !alias.scope !288, !noalias !287
  store <4 x float> %i.xh, ptr %i.xj, align 4, !tbaa !74, !alias.scope !288, !noalias !287
  %index.next782 = add nuw i64 %index779, 8       ; 2 uses
  %i.xk = icmp eq i64 %index.next782, %n.vec777
  br i1 %i.xk, label %middle.block783, label %vector.body778, !llvm.loop !250

middle.block783:                                  ; preds = %vector.body778
  %cmp.n784 = icmp eq i64 %3, %n.vec777
  br i1 %cmp.n784, label %.lr.ph468.preheader, label %.lr.ph466.preheader1136

.lr.ph466.preheader1136:                          ; preds = %vector.memcheck772, %.lr.ph466.preheader, %middle.block783
  %.25465.ph = phi i64 [ 0, %vector.memcheck772 ], [ 0, %.lr.ph466.preheader ], [ %n.vec777, %middle.block783 ] ; 3 uses
  %xtraiter1162 = and i64 %3, 3                   ; 2 uses
  %lcmp.mod1163.not = icmp eq i64 %xtraiter1162, 0
  br i1 %lcmp.mod1163.not, label %.lr.ph466.prol.loopexit, label %.lr.ph466.prol

.lr.ph466.prol:                                   ; preds = %.lr.ph466.preheader1136, %.lr.ph466.prol
  %.25465.prol = phi i64 [ %i.xp, %.lr.ph466.prol ], [ %.25465.ph, %.lr.ph466.preheader1136 ] ; 3 uses
  %prol.iter1164 = phi i64 [ %prol.iter1164.next, %.lr.ph466.prol ], [ 0, %.lr.ph466.preheader1136 ]
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 %.25465.prol
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !24
  %i.xn = uitofp i8 %i.xm to float
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.25465.prol
  store float %i.xn, ptr %i.xo, align 4, !tbaa !74
  %i.xp = add nuw nsw i64 %.25465.prol, 1         ; 2 uses
  %prol.iter1164.next = add i64 %prol.iter1164, 1 ; 2 uses
  %prol.iter1164.cmp.not = icmp eq i64 %prol.iter1164.next, %xtraiter1162
  br i1 %prol.iter1164.cmp.not, label %.lr.ph466.prol.loopexit, label %.lr.ph466.prol, !llvm.loop !251

.lr.ph466.prol.loopexit:                          ; preds = %.lr.ph466.prol, %.lr.ph466.preheader1136
  %.25465.unr = phi i64 [ %.25465.ph, %.lr.ph466.preheader1136 ], [ %i.xp, %.lr.ph466.prol ]
  %i.xq = sub nsw i64 %.25465.ph, %3
  %i.xr = icmp ugt i64 %i.xq, -4
  br i1 %i.xr, label %.lr.ph468.preheader, label %.lr.ph466

.lr.ph466:                                        ; preds = %.lr.ph466.prol.loopexit, %.lr.ph466
  %.25465 = phi i64 [ %i.yl, %.lr.ph466 ], [ %.25465.unr, %.lr.ph466.prol.loopexit ] ; 6 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 %.25465
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !24
  %i.xu = uitofp i8 %i.xt to float
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.25465
  store float %i.xu, ptr %i.xv, align 4, !tbaa !74
  %i.xw = add nuw nsw i64 %.25465, 1              ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !24
  %i.xz = uitofp i8 %i.xy to float
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.xw
  store float %i.xz, ptr %i.ya, align 4, !tbaa !74
  %i.yb = add nuw nsw i64 %.25465, 2              ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 %i.yb
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !24
  %i.ye = uitofp i8 %i.yd to float
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.yb
  store float %i.ye, ptr %i.yf, align 4, !tbaa !74
  %i.yg = add nuw nsw i64 %.25465, 3              ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 %i.yg
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !24
  %i.yj = uitofp i8 %i.yi to float
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.yg
  store float %i.yj, ptr %i.yk, align 4, !tbaa !74
  %i.yl = add nuw nsw i64 %.25465, 4              ; 2 uses
  %exitcond554.not.3 = icmp eq i64 %i.yl, %3
  br i1 %exitcond554.not.3, label %.lr.ph468.preheader, label %.lr.ph466, !llvm.loop !252

.lr.ph464:                                        ; preds = %.lr.ph464.preheader1137, %.lr.ph464
  %.26463 = phi i64 [ %i.yq, %.lr.ph464 ], [ %.26463.ph, %.lr.ph464.preheader1137 ] ; 3 uses
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.26463
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !71
  %i.yo = sitofp i16 %i.yn to float
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.26463
  store float %i.yo, ptr %i.yp, align 4, !tbaa !74
  %i.yq = add nuw nsw i64 %.26463, 1              ; 2 uses
  %exitcond553.not = icmp eq i64 %i.yq, %3
  br i1 %exitcond553.not, label %.lr.ph468.preheader, label %.lr.ph464, !llvm.loop !253

.lr.ph462:                                        ; preds = %.lr.ph462.preheader1139, %.lr.ph462
  %.27461 = phi i64 [ %i.yv, %.lr.ph462 ], [ %.27461.ph, %.lr.ph462.preheader1139 ] ; 3 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.27461
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !11
  %i.yt = sitofp i64 %i.ys to float
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.27461
  store float %i.yt, ptr %i.yu, align 4, !tbaa !74
  %i.yv = add nuw nsw i64 %.27461, 1              ; 2 uses
  %exitcond552.not = icmp eq i64 %i.yv, %3
  br i1 %exitcond552.not, label %.lr.ph468.preheader, label %.lr.ph462, !llvm.loop !254

.lr.ph460:                                        ; preds = %.lr.ph460.prol.loopexit, %.lr.ph460
  %.28459 = phi i64 [ %i.zl, %.lr.ph460 ], [ %.28459.unr, %.lr.ph460.prol.loopexit ] ; 6 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.28459
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !74
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.28459
  store float %i.yx, ptr %i.yy, align 4, !tbaa !74
  %i.yz = add nuw nsw i64 %.28459, 1              ; 2 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.yz
  %i.zb = load float, ptr %i.za, align 4, !tbaa !74
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.yz
  store float %i.zb, ptr %i.zc, align 4, !tbaa !74
  %i.zd = add nuw nsw i64 %.28459, 2              ; 2 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zd
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !74
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.zd
  store float %i.zf, ptr %i.zg, align 4, !tbaa !74
  %i.zh = add nuw nsw i64 %.28459, 3              ; 2 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zh
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !74
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.zh
  store float %i.zj, ptr %i.zk, align 4, !tbaa !74
  %i.zl = add nuw nsw i64 %.28459, 4              ; 2 uses
  %exitcond551.not.3 = icmp eq i64 %i.zl, %3
  br i1 %exitcond551.not.3, label %.lr.ph468.preheader, label %.lr.ph460, !llvm.loop !255

bb.bm:                                            ; preds = %bb.bk
  %i.zm = tail call i32 @fffr8r4(ptr noundef %1, i64 noundef %3, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 0, float noundef 0.000000e+00, ptr noundef null, ptr noundef null, ptr noundef %6, ptr noundef %8) #16 ; 0 uses
  br label %.loopexit431

bb.bn:                                            ; preds = %bb.bk
  store i32 410, ptr %8, align 4, !tbaa !9
  br label %.loopexit431

.loopexit431:                                     ; preds = %bb.bn, %bb.bm
  %i.zn = icmp sgt i64 %3, 0
end_hunk_0
