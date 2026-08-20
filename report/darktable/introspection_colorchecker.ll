inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 64
begin_hunk_0_@commit_params:bb.a
  %i.vp = fdiv reassoc nsz arcp contract afn double %i.vh, %i.vi ; 3 uses
  %i.vq = fmul reassoc nsz arcp contract afn double %i.vj, %i.vp
  %i.vr = fadd reassoc nsz arcp contract afn double %i.va, %i.vq
  %i.vs = fmul reassoc nsz arcp contract afn double %i.vk, %i.vp
  %i.vt = fadd reassoc nsz arcp contract afn double %i.vd, %i.vs
  %i.vu = fsub reassoc nsz arcp contract afn double %i.ve, %i.vt
  %i.vv = fdiv reassoc nsz arcp contract afn double %i.vu, %i.vl ; 2 uses
  %i.vw = fmul reassoc nsz arcp contract afn double %i.vm, %i.vv
  %i.vx = fadd reassoc nsz arcp contract afn double %i.vr, %i.vw
  %i.vy = fsub reassoc nsz arcp contract afn double %i.vb, %i.vx
  %i.vz = fdiv reassoc nsz arcp contract afn double %i.vy, %i.pn
  %i.wa = fptrunc reassoc nsz arcp contract afn double %i.vz to float
  store float %i.wa, ptr %i.vn, align 4, !tbaa !13
  %i.wb = insertelement <2 x double> poison, double %i.vv, i64 0
  %i.wc = insertelement <2 x double> %i.wb, double %i.vp, i64 1
  %i.wd = fptrunc <2 x double> %i.wc to <2 x float>
  store <2 x float> %i.wd, ptr %i.vo, align 4, !tbaa !13
  %i.we = fptrunc reassoc nsz arcp contract afn double %i.uy to float
  store float %i.we, ptr %i.cp, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  br label %bb.ad

bb.s:                                             ; preds = %.preheader512
  %i.wf = zext nneg i32 %i.w to i64               ; 68 uses
  %i.wg = shl nuw nsw i64 %i.wf, 3                ; 2 uses
  %i.wh = mul nuw nsw i64 %i.wg, %i.wf
  %i.wi = tail call noalias ptr @malloc(i64 noundef %i.wh) #28 ; 23 uses
  %i.wj = tail call noalias ptr @malloc(i64 noundef %i.wg) #28 ; 119 uses
  br i1 %i.x, label %.preheader511.lr.ph, label %.preheader506

.preheader511.lr.ph:                              ; preds = %bb.s
  %i.wk = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.wl = zext nneg i32 %spec.select to i64
  %wide.trip.count561 = zext nneg i32 %spec.select to i64 ; 9 uses
  br label %.preheader511

.preheader511:                                    ; preds = %.preheader511.lr.ph, %bb.t
  %indvars.iv555 = phi i64 [ 0, %.preheader511.lr.ph ], [ %indvars.iv.next556, %bb.t ] ; 5 uses
  %.idx632 = mul nuw nsw i64 %indvars.iv555, 12
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.idx632 ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !13
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wp = load <2 x float>, ptr %i.wo, align 4, !tbaa !13
  %i.wq = mul nuw nsw i64 %indvars.iv555, %i.wf
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv555
  %invariant.gep637 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.wq
  br label %bb.u

.lr.ph518:                                        ; preds = %bb.t
  %i.wr = mul nuw nsw i32 %i.w, %i.v
  %i.ws = zext nneg i32 %i.wr to i64
  %invariant.gep639 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.ws ; 9 uses
  %invariant.gep641 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.ce ; 9 uses
  %xtraiter1168 = and i64 %wide.trip.count561, 7  ; 3 uses
  %i.wt = icmp slt i32 %i.u, 8
  br i1 %i.wt, label %.epil.preheader, label %.lr.ph518.new

.lr.ph518.new:                                    ; preds = %.lr.ph518
  %unroll_iter = and i64 %wide.trip.count561, 56
  br label %bb.w

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next556 = add nuw nsw i64 %indvars.iv555, 1 ; 2 uses
  %exitcond562.not = icmp eq i64 %indvars.iv.next556, %wide.trip.count561
  br i1 %exitcond562.not, label %.lr.ph518, label %.preheader511

bb.u:                                             ; preds = %.preheader511, %bb.u
  %indvars.iv557 = phi i64 [ %indvars.iv555, %.preheader511 ], [ %indvars.iv.next558, %bb.u ] ; 4 uses
  %.idx633 = mul nuw nsw i64 %indvars.iv557, 12
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.idx633 ; 2 uses
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !13
  %i.ww = fsub reassoc nsz arcp contract afn float %i.wv, %i.wn ; 2 uses
  %i.wx = fmul reassoc nsz arcp contract afn float %i.ww, %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.wz = load <2 x float>, ptr %i.wy, align 4, !tbaa !13
  %i.xa = fsub reassoc nsz arcp contract afn <2 x float> %i.wz, %i.wp ; 2 uses
  %i.xb = fmul reassoc nsz arcp contract afn <2 x float> %i.xa, %i.xa ; 2 uses
  %i.xc = extractelement <2 x float> %i.xb, i64 0
  %i.xd = fadd reassoc nsz arcp contract afn float %i.xc, %i.wx
  %i.xe = extractelement <2 x float> %i.xb, i64 1
  %i.xf = fadd reassoc nsz arcp contract afn float %i.xd, %i.xe ; 3 uses
  %i.xg = fcmp reassoc nsz arcp contract afn olt float %i.xf, f0x322BCC77
  %i.xh = bitcast float %i.xf to i32
  %i.xi = select i1 %i.xg, i32 841731191, i32 %i.xh ; 2 uses
  %i.xj = and i32 %i.xi, 8388607
  %i.xk = or disjoint i32 %i.xj, 1056964608
  %i.xl = uitofp reassoc nsz arcp contract afn i32 %i.xi to float
  %i.xm = fmul reassoc nnan nsz arcp contract afn float %i.xl, f0x34000000
  %i.xn = bitcast i32 %i.xk to float              ; 2 uses
  %i.xo = fadd reassoc nsz arcp contract afn float %i.xn, f0x3EB444F9
  %.neg.i.i.i = fmul reassoc nnan nsz arcp contract afn float %i.xn, f0xBFBFBF75
  %.neg6.i.i.i = fdiv reassoc nsz arcp contract afn float -1.725880e+00, %i.xo
  %.neg7.i.i.i = fadd reassoc nnan nsz arcp contract afn float %i.xm, f0xC2F87377
  %i.xp = fadd reassoc nsz arcp contract afn float %.neg7.i.i.i, %.neg.i.i.i
  %i.xq = fadd reassoc nsz arcp contract afn float %i.xp, %.neg6.i.i.i
  %i.xr = fmul reassoc nsz arcp contract afn float %i.xf, f0x3F317218
  %i.xs = fmul reassoc nsz arcp contract afn float %i.xr, %i.xq
  %i.xt = fpext reassoc nsz arcp contract afn float %i.xs to double ; 2 uses
  %i.xu = mul nuw nsw i64 %indvars.iv557, %i.wf
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.xu
  store double %i.xt, ptr %gep, align 8, !tbaa !83
  %gep638 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep637, i64 %indvars.iv557
  store double %i.xt, ptr %gep638, align 8, !tbaa !83
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %i.xv = icmp samesign ult i64 %indvars.iv.next558, %i.wl
  br i1 %i.xv, label %bb.u, label %bb.t

.lr.ph520.unr-lcssa:                              ; preds = %bb.w
  %lcmp.mod1169.not = icmp eq i64 %xtraiter1168, 0
  br i1 %lcmp.mod1169.not, label %.lr.ph520, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph520.unr-lcssa, %.lr.ph518
  %indvars.iv563.epil.init = phi i64 [ 0, %.lr.ph518 ], [ %indvars.iv.next564.7, %.lr.ph520.unr-lcssa ]
  %lcmp.mod1170 = icmp ne i64 %xtraiter1168, 0
  tail call void @llvm.assume(i1 %lcmp.mod1170)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv563.epil = phi i64 [ %indvars.iv563.epil.init, %.epil.preheader ], [ %indvars.iv.next564.epil, %bb.v ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %gep640.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639, i64 %indvars.iv563.epil
  store double 1.000000e+00, ptr %gep640.epil, align 8, !tbaa !83
  %i.xw = mul nuw nsw i64 %indvars.iv563.epil, %i.wf
  %gep642.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641, i64 %i.xw
  store double 1.000000e+00, ptr %gep642.epil, align 8, !tbaa !83
  %indvars.iv.next564.epil = add nuw nsw i64 %indvars.iv563.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1168
  br i1 %epil.iter.cmp.not, label %.lr.ph520, label %bb.v, !llvm.loop !85

.lr.ph520:                                        ; preds = %bb.v, %.lr.ph520.unr-lcssa
  %i.xx = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 5 uses
  %i.xy = mul nuw nsw i32 %i.ch, %i.w
  %i.xz = zext nneg i32 %i.xy to i64
  %invariant.gep643 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.xz ; 5 uses
  %invariant.gep645 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.ce ; 5 uses
  %xtraiter1172 = and i64 %wide.trip.count561, 3  ; 3 uses
  %i.ya = icmp slt i32 %i.u, 4
  br i1 %i.ya, label %.epil.preheader1171, label %.lr.ph520.new

.lr.ph520.new:                                    ; preds = %.lr.ph520
  %unroll_iter1176 = and i64 %wide.trip.count561, 60
  br label %bb.y

bb.w:                                             ; preds = %bb.w, %.lr.ph518.new
  %indvars.iv563 = phi i64 [ 0, %.lr.ph518.new ], [ %indvars.iv.next564.7, %bb.w ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph518.new ], [ %niter.next.7, %bb.w ]
  %gep640 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639, i64 %indvars.iv563
  store double 1.000000e+00, ptr %gep640, align 8, !tbaa !83
  %i.yb = mul nuw nsw i64 %indvars.iv563, %i.wf
  %gep642 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641, i64 %i.yb
  store double 1.000000e+00, ptr %gep642, align 8, !tbaa !83
  %indvars.iv.next564 = or disjoint i64 %indvars.iv563, 1 ; 2 uses
  %gep640.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639, i64 %indvars.iv.next564
  store double 1.000000e+00, ptr %gep640.1, align 8, !tbaa !83
  %i.yc = mul nuw nsw i64 %indvars.iv.next564, %i.wf
  %gep642.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641, i64 %i.yc
  store double 1.000000e+00, ptr %gep642.1, align 8, !tbaa !83
  %indvars.iv.next564.1 = or disjoint i64 %indvars.iv563, 2 ; 2 uses
  %gep640.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639, i64 %indvars.iv.next564.1
  store double 1.000000e+00, ptr %gep640.2, align 8, !tbaa !83
  %i.yd = mul nuw nsw i64 %indvars.iv.next564.1, %i.wf
  %gep642.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641, i64 %i.yd
  store double 1.000000e+00, ptr %gep642.2, align 8, !tbaa !83
  %indvars.iv.next564.2 = or disjoint i64 %indvars.iv563, 3 ; 2 uses
  %gep640.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639, i64 %indvars.iv.next564.2
  store double 1.000000e+00, ptr %gep640.3, align 8, !tbaa !83
  %i.ye = mul nuw nsw i64 %indvars.iv.next564.2, %i.wf
  %gep642.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641, i64 %i.ye
  store double 1.000000e+00, ptr %gep642.3, align 8, !tbaa !83
  %indvars.iv.next564.3 = or disjoint i64 %indvars.iv563, 4 ; 2 uses
  %gep640.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639, i64 %indvars.iv.next564.3
  store double 1.000000e+00, ptr %gep640.4, align 8, !tbaa !83
  %i.yf = mul nuw nsw i64 %indvars.iv.next564.3, %i.wf
  %gep642.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641, i64 %i.yf
  store double 1.000000e+00, ptr %gep642.4, align 8, !tbaa !83
  %indvars.iv.next564.4 = or disjoint i64 %indvars.iv563, 5 ; 2 uses
  %gep640.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639, i64 %indvars.iv.next564.4
  store double 1.000000e+00, ptr %gep640.5, align 8, !tbaa !83
  %i.yg = mul nuw nsw i64 %indvars.iv.next564.4, %i.wf
  %gep642.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641, i64 %i.yg
  store double 1.000000e+00, ptr %gep642.5, align 8, !tbaa !83
  %indvars.iv.next564.5 = or disjoint i64 %indvars.iv563, 6 ; 2 uses
  %gep640.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639, i64 %indvars.iv.next564.5
  store double 1.000000e+00, ptr %gep640.6, align 8, !tbaa !83
  %i.yh = mul nuw nsw i64 %indvars.iv.next564.5, %i.wf
  %gep642.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641, i64 %i.yh
  store double 1.000000e+00, ptr %gep642.6, align 8, !tbaa !83
  %indvars.iv.next564.6 = or disjoint i64 %indvars.iv563, 7 ; 2 uses
  %gep640.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639, i64 %indvars.iv.next564.6
  store double 1.000000e+00, ptr %gep640.7, align 8, !tbaa !83
  %i.yi = mul nuw nsw i64 %indvars.iv.next564.6, %i.wf
  %gep642.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641, i64 %i.yi
  store double 1.000000e+00, ptr %gep642.7, align 8, !tbaa !83
  %indvars.iv.next564.7 = add nuw nsw i64 %indvars.iv563, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph520.unr-lcssa, label %bb.w

.lr.ph522.unr-lcssa:                              ; preds = %bb.y
  %lcmp.mod1174.not = icmp eq i64 %xtraiter1172, 0
  br i1 %lcmp.mod1174.not, label %.lr.ph522, label %.epil.preheader1171

.epil.preheader1171:                              ; preds = %.lr.ph522.unr-lcssa, %.lr.ph520
  %indvars.iv568.epil.init = phi i64 [ 0, %.lr.ph520 ], [ %indvars.iv.next569.3, %.lr.ph522.unr-lcssa ]
  %lcmp.mod1175 = icmp ne i64 %xtraiter1172, 0
  tail call void @llvm.assume(i1 %lcmp.mod1175)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader1171
  %indvars.iv568.epil = phi i64 [ %indvars.iv568.epil.init, %.epil.preheader1171 ], [ %indvars.iv.next569.epil, %bb.x ] ; 4 uses
  %epil.iter1173 = phi i64 [ 0, %.epil.preheader1171 ], [ %epil.iter1173.next, %bb.x ]
  %.idx634.epil = mul nuw nsw i64 %indvars.iv568.epil, 12
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xx, i64 %.idx634.epil
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !13
  %i.yl = fpext reassoc nsz arcp contract afn float %i.yk to double ; 2 uses
  %gep644.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643, i64 %indvars.iv568.epil
  store double %i.yl, ptr %gep644.epil, align 8, !tbaa !83
  %i.ym = mul nuw nsw i64 %indvars.iv568.epil, %i.wf
  %gep646.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645, i64 %i.ym
  %i.yn = getelementptr inbounds nuw i8, ptr %gep646.epil, i64 8
  store double %i.yl, ptr %i.yn, align 8, !tbaa !83
  %indvars.iv.next569.epil = add nuw nsw i64 %indvars.iv568.epil, 1
  %epil.iter1173.next = add i64 %epil.iter1173, 1 ; 2 uses
  %epil.iter1173.cmp.not = icmp eq i64 %epil.iter1173.next, %xtraiter1172
  br i1 %epil.iter1173.cmp.not, label %.lr.ph522, label %bb.x, !llvm.loop !86

.lr.ph522:                                        ; preds = %bb.x, %.lr.ph522.unr-lcssa
  %i.yo = mul nuw nsw i32 %i.ck, %i.w
  %i.yp = zext nneg i32 %i.yo to i64
  %invariant.gep647 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.yp ; 5 uses
  %invariant.gep649 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.ce ; 5 uses
  %xtraiter1179 = and i64 %wide.trip.count561, 3  ; 3 uses
  %i.yq = icmp slt i32 %i.u, 4
  br i1 %i.yq, label %.epil.preheader1178, label %.lr.ph522.new

.lr.ph522.new:                                    ; preds = %.lr.ph522
  %unroll_iter1183 = and i64 %wide.trip.count561, 60
  br label %bb.aa

bb.y:                                             ; preds = %bb.y, %.lr.ph520.new
  %indvars.iv568 = phi i64 [ 0, %.lr.ph520.new ], [ %indvars.iv.next569.3, %bb.y ] ; 7 uses
  %niter1177 = phi i64 [ 0, %.lr.ph520.new ], [ %niter1177.next.3, %bb.y ]
  %.idx634 = mul nuw nsw i64 %indvars.iv568, 12
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xx, i64 %.idx634
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !13
  %i.yt = fpext reassoc nsz arcp contract afn float %i.ys to double ; 2 uses
  %gep644 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643, i64 %indvars.iv568
  store double %i.yt, ptr %gep644, align 8, !tbaa !83
  %i.yu = mul nuw nsw i64 %indvars.iv568, %i.wf
  %gep646 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645, i64 %i.yu
  %i.yv = getelementptr inbounds nuw i8, ptr %gep646, i64 8
  store double %i.yt, ptr %i.yv, align 8, !tbaa !83
  %indvars.iv.next569 = or disjoint i64 %indvars.iv568, 1 ; 3 uses
  %.idx634.1 = mul nuw nsw i64 %indvars.iv.next569, 12
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xx, i64 %.idx634.1
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !13
  %i.yy = fpext reassoc nsz arcp contract afn float %i.yx to double ; 2 uses
  %gep644.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643, i64 %indvars.iv.next569
  store double %i.yy, ptr %gep644.1, align 8, !tbaa !83
  %i.yz = mul nuw nsw i64 %indvars.iv.next569, %i.wf
  %gep646.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645, i64 %i.yz
  %i.za = getelementptr inbounds nuw i8, ptr %gep646.1, i64 8
  store double %i.yy, ptr %i.za, align 8, !tbaa !83
  %indvars.iv.next569.1 = or disjoint i64 %indvars.iv568, 2 ; 3 uses
  %.idx634.2 = mul nuw nsw i64 %indvars.iv.next569.1, 12
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xx, i64 %.idx634.2
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !13
  %i.zd = fpext reassoc nsz arcp contract afn float %i.zc to double ; 2 uses
  %gep644.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643, i64 %indvars.iv.next569.1
  store double %i.zd, ptr %gep644.2, align 8, !tbaa !83
  %i.ze = mul nuw nsw i64 %indvars.iv.next569.1, %i.wf
  %gep646.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645, i64 %i.ze
  %i.zf = getelementptr inbounds nuw i8, ptr %gep646.2, i64 8
  store double %i.zd, ptr %i.zf, align 8, !tbaa !83
  %indvars.iv.next569.2 = or disjoint i64 %indvars.iv568, 3 ; 3 uses
  %.idx634.3 = mul nuw nsw i64 %indvars.iv.next569.2, 12
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xx, i64 %.idx634.3
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !13
  %i.zi = fpext reassoc nsz arcp contract afn float %i.zh to double ; 2 uses
  %gep644.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643, i64 %indvars.iv.next569.2
  store double %i.zi, ptr %gep644.3, align 8, !tbaa !83
  %i.zj = mul nuw nsw i64 %indvars.iv.next569.2, %i.wf
  %gep646.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645, i64 %i.zj
  %i.zk = getelementptr inbounds nuw i8, ptr %gep646.3, i64 8
  store double %i.zi, ptr %i.zk, align 8, !tbaa !83
  %indvars.iv.next569.3 = add nuw nsw i64 %indvars.iv568, 4 ; 2 uses
  %niter1177.next.3 = add i64 %niter1177, 4       ; 2 uses
  %niter1177.ncmp.3 = icmp eq i64 %niter1177.next.3, %unroll_iter1176
  br i1 %niter1177.ncmp.3, label %.lr.ph522.unr-lcssa, label %bb.y

.lr.ph524.unr-lcssa:                              ; preds = %bb.aa
  %lcmp.mod1181.not = icmp eq i64 %xtraiter1179, 0
  br i1 %lcmp.mod1181.not, label %.lr.ph524, label %.epil.preheader1178

.epil.preheader1178:                              ; preds = %.lr.ph524.unr-lcssa, %.lr.ph522
  %indvars.iv573.epil.init = phi i64 [ 0, %.lr.ph522 ], [ %indvars.iv.next574.3, %.lr.ph524.unr-lcssa ]
  %lcmp.mod1182 = icmp ne i64 %xtraiter1179, 0
  tail call void @llvm.assume(i1 %lcmp.mod1182)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader1178
  %indvars.iv573.epil = phi i64 [ %indvars.iv573.epil.init, %.epil.preheader1178 ], [ %indvars.iv.next574.epil, %bb.z ] ; 4 uses
  %epil.iter1180 = phi i64 [ 0, %.epil.preheader1178 ], [ %epil.iter1180.next, %bb.z ]
  %.idx635.epil = mul nuw nsw i64 %indvars.iv573.epil, 12
  %i.zl = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx635.epil
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !13
  %i.zo = fpext reassoc nsz arcp contract afn float %i.zn to double ; 2 uses
  %gep648.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647, i64 %indvars.iv573.epil
  store double %i.zo, ptr %gep648.epil, align 8, !tbaa !83
  %i.zp = mul nuw nsw i64 %indvars.iv573.epil, %i.wf
  %gep650.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep649, i64 %i.zp
  %i.zq = getelementptr inbounds nuw i8, ptr %gep650.epil, i64 16
  store double %i.zo, ptr %i.zq, align 8, !tbaa !83
  %indvars.iv.next574.epil = add nuw nsw i64 %indvars.iv573.epil, 1
  %epil.iter1180.next = add i64 %epil.iter1180, 1 ; 2 uses
  %epil.iter1180.cmp.not = icmp eq i64 %epil.iter1180.next, %xtraiter1179
  br i1 %epil.iter1180.cmp.not, label %.lr.ph524, label %bb.z, !llvm.loop !87

.lr.ph524:                                        ; preds = %bb.z, %.lr.ph524.unr-lcssa
  %i.zr = mul nuw nsw i32 %i.cn, %i.w
  %i.zs = zext nneg i32 %i.zr to i64
  %invariant.gep651 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.zs ; 5 uses
  %invariant.gep653 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.ce ; 5 uses
  %xtraiter1186 = and i64 %wide.trip.count561, 3  ; 3 uses
  %i.zt = icmp slt i32 %i.u, 4
  br i1 %i.zt, label %.epil.preheader1185, label %.lr.ph524.new

.lr.ph524.new:                                    ; preds = %.lr.ph524
  %unroll_iter1190 = and i64 %wide.trip.count561, 60
  br label %bb.ac

bb.aa:                                            ; preds = %bb.aa, %.lr.ph522.new
  %indvars.iv573 = phi i64 [ 0, %.lr.ph522.new ], [ %indvars.iv.next574.3, %bb.aa ] ; 7 uses
  %niter1184 = phi i64 [ 0, %.lr.ph522.new ], [ %niter1184.next.3, %bb.aa ]
  %.idx635 = mul nuw nsw i64 %indvars.iv573, 12
  %i.zu = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx635
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !13
  %i.zx = fpext reassoc nsz arcp contract afn float %i.zw to double ; 2 uses
  %gep648 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647, i64 %indvars.iv573
  store double %i.zx, ptr %gep648, align 8, !tbaa !83
  %i.zy = mul nuw nsw i64 %indvars.iv573, %i.wf
  %gep650 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep649, i64 %i.zy
  %i.zz = getelementptr inbounds nuw i8, ptr %gep650, i64 16
  store double %i.zx, ptr %i.zz, align 8, !tbaa !83
  %indvars.iv.next574 = or disjoint i64 %indvars.iv573, 1 ; 3 uses
  %.idx635.1 = mul nuw nsw i64 %indvars.iv.next574, 12
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx635.1
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !13
  %i.aad = fpext reassoc nsz arcp contract afn float %i.aac to double ; 2 uses
  %gep648.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647, i64 %indvars.iv.next574
  store double %i.aad, ptr %gep648.1, align 8, !tbaa !83
  %i.aae = mul nuw nsw i64 %indvars.iv.next574, %i.wf
  %gep650.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep649, i64 %i.aae
  %i.aaf = getelementptr inbounds nuw i8, ptr %gep650.1, i64 16
  store double %i.aad, ptr %i.aaf, align 8, !tbaa !83
  %indvars.iv.next574.1 = or disjoint i64 %indvars.iv573, 2 ; 3 uses
  %.idx635.2 = mul nuw nsw i64 %indvars.iv.next574.1, 12
  %i.aag = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx635.2
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !13
  %i.aaj = fpext reassoc nsz arcp contract afn float %i.aai to double ; 2 uses
  %gep648.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647, i64 %indvars.iv.next574.1
  store double %i.aaj, ptr %gep648.2, align 8, !tbaa !83
  %i.aak = mul nuw nsw i64 %indvars.iv.next574.1, %i.wf
  %gep650.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep649, i64 %i.aak
  %i.aal = getelementptr inbounds nuw i8, ptr %gep650.2, i64 16
  store double %i.aaj, ptr %i.aal, align 8, !tbaa !83
  %indvars.iv.next574.2 = or disjoint i64 %indvars.iv573, 3 ; 3 uses
  %.idx635.3 = mul nuw nsw i64 %indvars.iv.next574.2, 12
  %i.aam = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx635.3
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !13
  %i.aap = fpext reassoc nsz arcp contract afn float %i.aao to double ; 2 uses
  %gep648.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647, i64 %indvars.iv.next574.2
  store double %i.aap, ptr %gep648.3, align 8, !tbaa !83
  %i.aaq = mul nuw nsw i64 %indvars.iv.next574.2, %i.wf
  %gep650.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep649, i64 %i.aaq
  %i.aar = getelementptr inbounds nuw i8, ptr %gep650.3, i64 16
  store double %i.aap, ptr %i.aar, align 8, !tbaa !83
  %indvars.iv.next574.3 = add nuw nsw i64 %indvars.iv573, 4 ; 2 uses
  %niter1184.next.3 = add i64 %niter1184, 4       ; 2 uses
  %niter1184.ncmp.3 = icmp eq i64 %niter1184.next.3, %unroll_iter1183
  br i1 %niter1184.ncmp.3, label %.lr.ph524.unr-lcssa, label %bb.aa

.preheader506.loopexit.unr-lcssa:                 ; preds = %bb.ac
  %lcmp.mod1188.not = icmp eq i64 %xtraiter1186, 0
  br i1 %lcmp.mod1188.not, label %.preheader506, label %.epil.preheader1185

.epil.preheader1185:                              ; preds = %.preheader506.loopexit.unr-lcssa, %.lr.ph524
  %indvars.iv578.epil.init = phi i64 [ 0, %.lr.ph524 ], [ %indvars.iv.next579.3, %.preheader506.loopexit.unr-lcssa ]
  %lcmp.mod1189 = icmp ne i64 %xtraiter1186, 0
  tail call void @llvm.assume(i1 %lcmp.mod1189)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader1185
  %indvars.iv578.epil = phi i64 [ %indvars.iv578.epil.init, %.epil.preheader1185 ], [ %indvars.iv.next579.epil, %bb.ab ] ; 4 uses
  %epil.iter1187 = phi i64 [ 0, %.epil.preheader1185 ], [ %epil.iter1187.next, %bb.ab ]
  %.idx636.epil = mul nuw nsw i64 %indvars.iv578.epil, 12
  %i.aas = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx636.epil
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 12
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !13
  %i.aav = fpext reassoc nsz arcp contract afn float %i.aau to double ; 2 uses
  %gep652.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep651, i64 %indvars.iv578.epil
  store double %i.aav, ptr %gep652.epil, align 8, !tbaa !83
  %i.aaw = mul nuw nsw i64 %indvars.iv578.epil, %i.wf
  %gep654.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep653, i64 %i.aaw
  %i.aax = getelementptr inbounds nuw i8, ptr %gep654.epil, i64 24
  store double %i.aav, ptr %i.aax, align 8, !tbaa !83
  %indvars.iv.next579.epil = add nuw nsw i64 %indvars.iv578.epil, 1
  %epil.iter1187.next = add i64 %epil.iter1187, 1 ; 2 uses
  %epil.iter1187.cmp.not = icmp eq i64 %epil.iter1187.next, %xtraiter1186
  br i1 %epil.iter1187.cmp.not, label %.preheader506, label %bb.ab, !llvm.loop !88

.preheader506:                                    ; preds = %.preheader506.loopexit.unr-lcssa, %bb.ab, %bb.s
  %i.aay = icmp ult i32 %spec.select, %i.w
  br i1 %i.aay, label %.preheader505.preheader, label %._crit_edge

.preheader505.preheader:                          ; preds = %.preheader506
  %i.aaz = mul nuw nsw i32 %spec.select, %i.w
  %i.aba = add nuw nsw i32 %i.v, %i.aaz
  %i.abb = zext nneg i32 %i.aba to i64
  %i.abc = shl nuw nsw i64 %i.abb, 3
  %i.abd = shl nuw nsw i64 %i.ce, 3
  %i.abe = add nuw nsw i64 %i.abd, 32             ; 3 uses
  %i.abf = sub nuw nsw i32 %i.w, %spec.select     ; 3 uses
  %i.abg = getelementptr nuw i8, ptr %i.wi, i64 %i.abc ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.abg, i8 0, i64 32, i1 false), !tbaa !83
  %exitcond587.not = icmp eq i32 %i.abf, 1
  br i1 %exitcond587.not, label %._crit_edge, label %.preheader505.1

bb.ac:                                            ; preds = %bb.ac, %.lr.ph524.new
  %indvars.iv578 = phi i64 [ 0, %.lr.ph524.new ], [ %indvars.iv.next579.3, %bb.ac ] ; 7 uses
  %niter1191 = phi i64 [ 0, %.lr.ph524.new ], [ %niter1191.next.3, %bb.ac ]
  %.idx636 = mul nuw nsw i64 %indvars.iv578, 12
  %i.abh = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx636
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 12
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !13
  %i.abk = fpext reassoc nsz arcp contract afn float %i.abj to double ; 2 uses
  %gep652 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep651, i64 %indvars.iv578
  store double %i.abk, ptr %gep652, align 8, !tbaa !83
  %i.abl = mul nuw nsw i64 %indvars.iv578, %i.wf
  %gep654 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep653, i64 %i.abl
  %i.abm = getelementptr inbounds nuw i8, ptr %gep654, i64 24
  store double %i.abk, ptr %i.abm, align 8, !tbaa !83
  %indvars.iv.next579 = or disjoint i64 %indvars.iv578, 1 ; 3 uses
  %.idx636.1 = mul nuw nsw i64 %indvars.iv.next579, 12
  %i.abn = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx636.1
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 12
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !13
  %i.abq = fpext reassoc nsz arcp contract afn float %i.abp to double ; 2 uses
  %gep652.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep651, i64 %indvars.iv.next579
  store double %i.abq, ptr %gep652.1, align 8, !tbaa !83
  %i.abr = mul nuw nsw i64 %indvars.iv.next579, %i.wf
  %gep654.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep653, i64 %i.abr
  %i.abs = getelementptr inbounds nuw i8, ptr %gep654.1, i64 24
  store double %i.abq, ptr %i.abs, align 8, !tbaa !83
  %indvars.iv.next579.1 = or disjoint i64 %indvars.iv578, 2 ; 3 uses
  %.idx636.2 = mul nuw nsw i64 %indvars.iv.next579.1, 12
  %i.abt = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx636.2
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 12
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !13
  %i.abw = fpext reassoc nsz arcp contract afn float %i.abv to double ; 2 uses
  %gep652.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep651, i64 %indvars.iv.next579.1
  store double %i.abw, ptr %gep652.2, align 8, !tbaa !83
  %i.abx = mul nuw nsw i64 %indvars.iv.next579.1, %i.wf
  %gep654.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep653, i64 %i.abx
  %i.aby = getelementptr inbounds nuw i8, ptr %gep654.2, i64 24
  store double %i.abw, ptr %i.aby, align 8, !tbaa !83
  %indvars.iv.next579.2 = or disjoint i64 %indvars.iv578, 3 ; 3 uses
  %.idx636.3 = mul nuw nsw i64 %indvars.iv.next579.2, 12
  %i.abz = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx636.3
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 12
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !13
  %i.acc = fpext reassoc nsz arcp contract afn float %i.acb to double ; 2 uses
  %gep652.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep651, i64 %indvars.iv.next579.2
  store double %i.acc, ptr %gep652.3, align 8, !tbaa !83
  %i.acd = mul nuw nsw i64 %indvars.iv.next579.2, %i.wf
  %gep654.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep653, i64 %i.acd
  %i.ace = getelementptr inbounds nuw i8, ptr %gep654.3, i64 24
  store double %i.acc, ptr %i.ace, align 8, !tbaa !83
  %indvars.iv.next579.3 = add nuw nsw i64 %indvars.iv578, 4 ; 2 uses
  %niter1191.next.3 = add i64 %niter1191, 4       ; 2 uses
  %niter1191.ncmp.3 = icmp eq i64 %niter1191.next.3, %unroll_iter1190
  br i1 %niter1191.ncmp.3, label %.preheader506.loopexit.unr-lcssa, label %bb.ac

.preheader505.1:                                  ; preds = %.preheader505.preheader
  %scevgep.1 = getelementptr nuw i8, ptr %i.abg, i64 %i.abe
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.1, i8 0, i64 32, i1 false), !tbaa !83
  %exitcond587.not.1 = icmp eq i32 %i.abf, 2
  br i1 %exitcond587.not.1, label %._crit_edge, label %.preheader505.2

.preheader505.2:                                  ; preds = %.preheader505.1
  %i.acf = shl nuw nsw i64 %i.abe, 1
  %scevgep.2 = getelementptr nuw i8, ptr %i.abg, i64 %i.acf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.2, i8 0, i64 32, i1 false), !tbaa !83
  %exitcond587.not.2 = icmp eq i32 %i.abf, 3
  br i1 %exitcond587.not.2, label %._crit_edge, label %.preheader505.3

.preheader505.3:                                  ; preds = %.preheader505.2
  %i.acg = mul nuw nsw i64 %i.abe, 3
  %scevgep.3 = getelementptr nuw i8, ptr %i.abg, i64 %i.acg
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep.3, i8 0, i64 32, i1 false), !tbaa !83
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader505.preheader, %.preheader505.1, %.preheader505.2, %.preheader505.3, %.preheader506
  %i.ach = shl nuw nsw i64 %i.wf, 2
  %i.aci = tail call noalias ptr @malloc(i64 noundef %i.ach) #28 ; 5 uses
  %i.acj = tail call fastcc i32 @gauss_make_triangular(ptr noundef %i.wi, ptr noundef %i.aci, i32 noundef %i.w)
  %.not378 = icmp eq i32 %i.acj, 0
  br i1 %.not378, label %.loopexit, label %.preheader504

.preheader504:                                    ; preds = %._crit_edge
  br i1 %i.x, label %iter.check, label %.preheader503

iter.check:                                       ; preds = %.preheader504
  %i.ack = getelementptr inbounds nuw i8, ptr %1, i64 588 ; 3 uses
  %wide.trip.count591 = zext nneg i32 %spec.select to i64 ; 6 uses
  %min.iters.check660 = icmp slt i32 %i.u, 4
  br i1 %min.iters.check660, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check661 = icmp slt i32 %i.u, 16
  br i1 %min.iters.check661, label %vec.epilog.ph, label %vector.ph662

vector.ph662:                                     ; preds = %vector.main.loop.iter.check
  %i.acl = and i64 %wide.trip.count591, 12
  %n.vec663 = and i64 %wide.trip.count591, 48     ; 5 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 636
  %wide.load666 = load <4 x float>, ptr %i.ack, align 4, !tbaa !13
  %wide.load667 = load <4 x float>, ptr %i.acm, align 4, !tbaa !13
  %wide.load668 = load <4 x float>, ptr %i.acn, align 4, !tbaa !13
  %wide.load669 = load <4 x float>, ptr %i.aco, align 4, !tbaa !13
  %i.acp = fpext reassoc nsz arcp contract afn <4 x float> %wide.load666 to <4 x double>
  %i.acq = fpext reassoc nsz arcp contract afn <4 x float> %wide.load667 to <4 x double>
  %i.acr = fpext reassoc nsz arcp contract afn <4 x float> %wide.load668 to <4 x double>
  %i.acs = fpext reassoc nsz arcp contract afn <4 x float> %wide.load669 to <4 x double>
  %i.act = getelementptr inbounds nuw i8, ptr %i.wj, i64 32
  %i.acu = getelementptr inbounds nuw i8, ptr %i.wj, i64 64
  %i.acv = getelementptr inbounds nuw i8, ptr %i.wj, i64 96
  store <4 x double> %i.acp, ptr %i.wj, align 8, !tbaa !83
  store <4 x double> %i.acq, ptr %i.act, align 8, !tbaa !83
  store <4 x double> %i.acr, ptr %i.acu, align 8, !tbaa !83
  store <4 x double> %i.acs, ptr %i.acv, align 8, !tbaa !83
  %i.acw = icmp eq i64 %n.vec663, 16
  br i1 %i.acw, label %middle.block671, label %vector.body664.1

vector.body664.1:                                 ; preds = %vector.ph662
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 652
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 668
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 684
  %i.ada = getelementptr inbounds nuw i8, ptr %1, i64 700
  %wide.load666.1 = load <4 x float>, ptr %i.acx, align 4, !tbaa !13
  %wide.load667.1 = load <4 x float>, ptr %i.acy, align 4, !tbaa !13
  %wide.load668.1 = load <4 x float>, ptr %i.acz, align 4, !tbaa !13
  %wide.load669.1 = load <4 x float>, ptr %i.ada, align 4, !tbaa !13
  %i.adb = fpext reassoc nsz arcp contract afn <4 x float> %wide.load666.1 to <4 x double>
  %i.adc = fpext reassoc nsz arcp contract afn <4 x float> %wide.load667.1 to <4 x double>
  %i.add = fpext reassoc nsz arcp contract afn <4 x float> %wide.load668.1 to <4 x double>
  %i.ade = fpext reassoc nsz arcp contract afn <4 x float> %wide.load669.1 to <4 x double>
  %i.adf = getelementptr inbounds nuw i8, ptr %i.wj, i64 128
  %i.adg = getelementptr inbounds nuw i8, ptr %i.wj, i64 160
  %i.adh = getelementptr inbounds nuw i8, ptr %i.wj, i64 192
  %i.adi = getelementptr inbounds nuw i8, ptr %i.wj, i64 224
  store <4 x double> %i.adb, ptr %i.adf, align 8, !tbaa !83
  store <4 x double> %i.adc, ptr %i.adg, align 8, !tbaa !83
  store <4 x double> %i.add, ptr %i.adh, align 8, !tbaa !83
  store <4 x double> %i.ade, ptr %i.adi, align 8, !tbaa !83
  %i.adj = icmp eq i64 %n.vec663, 32
  br i1 %i.adj, label %middle.block671, label %vector.body664.2

vector.body664.2:                                 ; preds = %vector.body664.1
  %i.adk = getelementptr inbounds nuw i8, ptr %1, i64 716
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 732
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 748
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 764
  %wide.load666.2 = load <4 x float>, ptr %i.adk, align 4, !tbaa !13
  %wide.load667.2 = load <4 x float>, ptr %i.adl, align 4, !tbaa !13
  %wide.load668.2 = load <4 x float>, ptr %i.adm, align 4, !tbaa !13
  %wide.load669.2 = load <4 x float>, ptr %i.adn, align 4, !tbaa !13
  %i.ado = fpext reassoc nsz arcp contract afn <4 x float> %wide.load666.2 to <4 x double>
  %i.adp = fpext reassoc nsz arcp contract afn <4 x float> %wide.load667.2 to <4 x double>
  %i.adq = fpext reassoc nsz arcp contract afn <4 x float> %wide.load668.2 to <4 x double>
  %i.adr = fpext reassoc nsz arcp contract afn <4 x float> %wide.load669.2 to <4 x double>
  %i.ads = getelementptr inbounds nuw i8, ptr %i.wj, i64 256
  %i.adt = getelementptr inbounds nuw i8, ptr %i.wj, i64 288
  %i.adu = getelementptr inbounds nuw i8, ptr %i.wj, i64 320
  %i.adv = getelementptr inbounds nuw i8, ptr %i.wj, i64 352
  store <4 x double> %i.ado, ptr %i.ads, align 8, !tbaa !83
  store <4 x double> %i.adp, ptr %i.adt, align 8, !tbaa !83
  store <4 x double> %i.adq, ptr %i.adu, align 8, !tbaa !83
  store <4 x double> %i.adr, ptr %i.adv, align 8, !tbaa !83
  br label %middle.block671

middle.block671:                                  ; preds = %vector.body664.2, %vector.body664.1, %vector.ph662
  %cmp.n672 = icmp eq i64 %n.vec663, %wide.trip.count591
  br i1 %cmp.n672, label %.preheader503, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block671
  %min.epilog.iters.check = icmp eq i64 %i.acl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec663, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec673 = and i64 %wide.trip.count591, 60     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index674 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next676, %vec.epilog.vector.body ] ; 3 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %index674
  %wide.load675 = load <4 x float>, ptr %i.adw, align 4, !tbaa !13
  %i.adx = fpext reassoc nsz arcp contract afn <4 x float> %wide.load675 to <4 x double>
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %index674
  store <4 x double> %i.adx, ptr %i.ady, align 8, !tbaa !83
  %index.next676 = add nuw i64 %index674, 4       ; 2 uses
  %i.adz = icmp eq i64 %index.next676, %n.vec673
  br i1 %i.adz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !90

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n677 = icmp eq i64 %n.vec673, %wide.trip.count591
  br i1 %cmp.n677, label %.preheader503, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv588.ph = phi i64 [ 0, %iter.check ], [ %n.vec663, %vec.epilog.iter.check ], [ %n.vec673, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader503:                                    ; preds = %vec.epilog.scalar.ph, %middle.block671, %vec.epilog.middle.block, %.preheader504
  %i.aea = shl nuw nsw i64 %i.ce, 3
  %scevgep593 = getelementptr i8, ptr %i.wj, i64 %i.aea ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep593, i8 0, i64 32, i1 false), !tbaa !83
  %broadcast.splatinsert685 = insertelement <4 x i64> poison, i64 %i.wf, i64 0
  %broadcast.splat686 = shufflevector <4 x i64> %broadcast.splatinsert685, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert714 = insertelement <4 x i64> poison, i64 %i.wf, i64 0
  %broadcast.splat715 = shufflevector <4 x i64> %broadcast.splatinsert714, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check706

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv588 = phi i64 [ %indvars.iv.next589, %vec.epilog.scalar.ph ], [ %indvars.iv588.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %indvars.iv588
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !13
  %i.aed = fpext reassoc nsz arcp contract afn float %i.aec to double
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv588
  store double %i.aed, ptr %i.aee, align 8, !tbaa !83
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next589, %wide.trip.count591
  br i1 %exitcond592.not, label %.preheader503, label %vec.epilog.scalar.ph, !llvm.loop !91

.loopexit.i433:                                   ; preds = %.lr.ph.i428, %vec.epilog.middle.block727, %middle.block702
  %indvars.iv.next63.i426 = add nuw nsw i64 %indvars.iv62.i424, 1 ; 2 uses
  %indvars.iv.next.i434 = add nuw nsw i64 %indvars.iv.i425, 1
  %exitcond66.not.i435 = icmp eq i64 %indvars.iv.next63.i426, %i.co
  br i1 %exitcond66.not.i435, label %.lr.ph58.i436, label %iter.check706

.lr.ph58.i436:                                    ; preds = %.loopexit.i433
  %i.aef = add nuw nsw i32 %i.v, 5
  %i.aeg = zext nneg i32 %i.aef to i64            ; 3 uses
  %broadcast.splatinsert738 = insertelement <4 x i64> poison, i64 %i.wf, i64 0
  %broadcast.splat739 = shufflevector <4 x i64> %broadcast.splatinsert738, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert771 = insertelement <4 x i64> poison, i64 %i.wf, i64 0
  %broadcast.splat772 = shufflevector <4 x i64> %broadcast.splatinsert771, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check763

iter.check706:                                    ; preds = %.loopexit.i433, %.preheader503
  %indvars.iv62.i424 = phi i64 [ 0, %.preheader503 ], [ %indvars.iv.next63.i426, %.loopexit.i433 ] ; 5 uses
  %indvars.iv.i425 = phi i64 [ 1, %.preheader503 ], [ %indvars.iv.next.i434, %.loopexit.i433 ] ; 8 uses
  %i.aeh = sub nsw i64 %i.co, %indvars.iv62.i424  ; 7 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv62.i424
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !17
  %i.aek = sext i32 %i.aej to i64
  %i.ael = getelementptr inbounds [8 x i8], ptr %i.wj, i64 %i.aek ; 2 uses
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !83 ; 4 uses
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv62.i424 ; 2 uses
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !83
  store double %i.aeo, ptr %i.ael, align 8, !tbaa !83
  store double %i.aem, ptr %i.aen, align 8, !tbaa !83
  %invariant.gep.i427 = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv62.i424 ; 6 uses
  %min.iters.check680 = icmp ult i64 %i.aeh, 4
  br i1 %min.iters.check680, label %.lr.ph.i428.preheader, label %vector.main.loop.iter.check681

vector.main.loop.iter.check681:                   ; preds = %iter.check706
  %min.iters.check682 = icmp ult i64 %i.aeh, 16
end_hunk_0
begin_hunk_1_@commit_params:bb.a

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @gauss_solve(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 2, 4) %2) unnamed_addr #11 {
bb.a:
  %i.a = shl nuw nsw i32 %2, 2
  %i.b = zext nneg i32 %i.a to i64
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #28 ; 4 uses
  %i.d = tail call fastcc i32 @gauss_make_triangular(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = add nsw i32 %2, -1                       ; 3 uses
  %i.f = zext nneg i32 %2 to i64                  ; 18 uses
  %wide.trip.count65.i = zext nneg i32 %i.e to i64 ; 5 uses
  %i.g = shl nuw nsw i64 %i.f, 3                  ; 3 uses
  %scevgep9 = getelementptr i8, ptr %1, i64 %i.g
  %i.h = add nsw i64 %i.g, -8
  %i.i = mul nuw nsw i64 %i.h, %i.f
  %i.j = load i32, ptr %i.c, align 4, !tbaa !17
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !83 ; 3 uses
  %i.n = load double, ptr %1, align 8, !tbaa !83
  store double %i.n, ptr %i.l, align 8, !tbaa !83
  store double %i.m, ptr %1, align 8, !tbaa !83
  %min.iters.check.not = icmp eq i32 %2, 3
  br i1 %min.iters.check.not, label %vector.memcheck, label %.lr.ph.i.preheader

.loopexit.i:                                      ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol, %vector.ph
  %exitcond66.not.i = icmp eq i32 %i.e, 1
  br i1 %exitcond66.not.i, label %.lr.ph58.i, label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %.loopexit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !83 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !83
  store double %i.u, ptr %i.r, align 8, !tbaa !83
  store double %i.s, ptr %i.t, align 8, !tbaa !83
  %invariant.gep.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = and i64 %i.f, 1                          ; 2 uses
  %lcmp.mod.1.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.1.not, label %.lr.ph.i.prol.loopexit.1, label %.lr.ph.i.prol.1

.lr.ph.i.prol.1:                                  ; preds = %.lr.ph.preheader.i.1, %.lr.ph.i.prol.1
  %indvars.iv59.i.prol.1 = phi i64 [ %indvars.iv.next60.i.prol.1, %.lr.ph.i.prol.1 ], [ 2, %.lr.ph.preheader.i.1 ] ; 3 uses
  %prol.iter.1 = phi i64 [ %prol.iter.next.1, %.lr.ph.i.prol.1 ], [ 0, %.lr.ph.preheader.i.1 ]
  %i.w = mul nuw nsw i64 %indvars.iv59.i.prol.1, %i.f
  %gep.i.prol.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.w
  %i.x = load double, ptr %gep.i.prol.1, align 8, !tbaa !83
  %i.y = fmul reassoc nsz arcp contract afn double %i.x, %i.s
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv59.i.prol.1 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !83
  %i.ab = fadd reassoc nsz arcp contract afn double %i.aa, %i.y
  store double %i.ab, ptr %i.z, align 8, !tbaa !83
  %indvars.iv.next60.i.prol.1 = add nuw nsw i64 %indvars.iv59.i.prol.1, 1 ; 2 uses
  %prol.iter.next.1 = add i64 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i64 %prol.iter.next.1, %i.v
  br i1 %prol.iter.cmp.1.not, label %.lr.ph.i.prol.loopexit.1, label %.lr.ph.i.prol.1, !llvm.loop !120

.lr.ph.i.prol.loopexit.1:                         ; preds = %.lr.ph.i.prol.1, %.lr.ph.preheader.i.1
  %indvars.iv59.i.unr.1 = phi i64 [ 2, %.lr.ph.preheader.i.1 ], [ %indvars.iv.next60.i.prol.1, %.lr.ph.i.prol.1 ]
  %i.ac = add nsw i32 %2, -3
  %i.ad = icmp ult i32 %i.ac, 3
  br i1 %i.ad, label %.lr.ph58.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.prol.loopexit.1, %.lr.ph.i.1
  %indvars.iv59.i.1 = phi i64 [ %indvars.iv.next60.i.3.1, %.lr.ph.i.1 ], [ %indvars.iv59.i.unr.1, %.lr.ph.i.prol.loopexit.1 ] ; 6 uses
  %i.ae = mul nuw nsw i64 %indvars.iv59.i.1, %i.f
  %gep.i.128 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.ae
  %i.af = load double, ptr %gep.i.128, align 8, !tbaa !83
  %i.ag = fmul reassoc nsz arcp contract afn double %i.af, %i.s
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv59.i.1 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !83
  %i.aj = fadd reassoc nsz arcp contract afn double %i.ai, %i.ag
  store double %i.aj, ptr %i.ah, align 8, !tbaa !83
  %indvars.iv.next60.i.129 = add nuw nsw i64 %indvars.iv59.i.1, 1 ; 2 uses
  %i.ak = mul nuw nsw i64 %indvars.iv.next60.i.129, %i.f
  %gep.i.1.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.ak
  %i.al = load double, ptr %gep.i.1.1, align 8, !tbaa !83
  %i.am = fmul reassoc nsz arcp contract afn double %i.al, %i.s
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next60.i.129 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !83
  %i.ap = fadd reassoc nsz arcp contract afn double %i.ao, %i.am
  store double %i.ap, ptr %i.an, align 8, !tbaa !83
  %indvars.iv.next60.i.1.1 = add nuw nsw i64 %indvars.iv59.i.1, 2 ; 2 uses
  %i.aq = mul nuw nsw i64 %indvars.iv.next60.i.1.1, %i.f
  %gep.i.2.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.aq
  %i.ar = load double, ptr %gep.i.2.1, align 8, !tbaa !83
  %i.as = fmul reassoc nsz arcp contract afn double %i.ar, %i.s
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next60.i.1.1 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !83
  %i.av = fadd reassoc nsz arcp contract afn double %i.au, %i.as
  store double %i.av, ptr %i.at, align 8, !tbaa !83
  %indvars.iv.next60.i.2.1 = add nuw nsw i64 %indvars.iv59.i.1, 3 ; 2 uses
  %i.aw = mul nuw nsw i64 %indvars.iv.next60.i.2.1, %i.f
  %gep.i.3.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.1, i64 %i.aw
  %i.ax = load double, ptr %gep.i.3.1, align 8, !tbaa !83
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, %i.s
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next60.i.2.1 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !83
  %i.bb = fadd reassoc nsz arcp contract afn double %i.ba, %i.ay
  store double %i.bb, ptr %i.az, align 8, !tbaa !83
  %indvars.iv.next60.i.3.1 = add nuw nsw i64 %indvars.iv59.i.1, 4 ; 2 uses
  %exitcond.not.i.3.1 = icmp eq i64 %indvars.iv.next60.i.3.1, %i.f
  br i1 %exitcond.not.i.3.1, label %.lr.ph58.i, label %.lr.ph.i.1, !llvm.loop !121

.lr.ph58.i:                                       ; preds = %.lr.ph.i.1, %.lr.ph.i.prol.loopexit.1, %.loopexit.i
  %i.bc = add nuw nsw i32 %2, 1
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = mul nuw nsw i64 %wide.trip.count65.i, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %wide.trip.count65.i ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !83
  %i.bj = fdiv reassoc nsz arcp contract afn double %i.bi, %i.bg ; 2 uses
  store double %i.bj, ptr %i.bh, align 8, !tbaa !83
  %invariant.gep75.i = getelementptr [8 x i8], ptr %0, i64 %wide.trip.count65.i
  %lcmp.mod32 = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.b

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.bk = getelementptr i8, ptr %0, i64 %i.i      ; 4 uses
  %i.bl = getelementptr i8, ptr %0, i64 %i.g      ; 4 uses
  %i.bm = icmp ugt ptr %i.bk, %i.bl
  %umax = select i1 %i.bm, ptr %i.bk, ptr %i.bl
  %scevgep12 = getelementptr i8, ptr %umax, i64 8
  %i.bn = icmp ult ptr %i.bk, %i.bl
  %umin = select i1 %i.bn, ptr %i.bk, ptr %i.bl
  %scevgep = getelementptr nuw i8, ptr %1, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep12
  %bound1 = icmp ult ptr %umin, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.m, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = shl nuw nsw <2 x i64> %broadcast.splat14, <i64 0, i64 1> ; 2 uses
  %i.bp = extractelement <2 x i64> %i.bo, i64 0
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp
  %i.br = extractelement <2 x i64> %i.bo, i64 1
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br
  %i.bt = load double, ptr %i.bq, align 8, !tbaa !83, !alias.scope !122
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !83, !alias.scope !122
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bu, i64 1
  %i.bx = fmul reassoc nsz arcp contract afn <2 x double> %i.bw, %broadcast.splat
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.by, align 8, !tbaa !83, !alias.scope !125, !noalias !122
  %i.bz = fadd reassoc nsz arcp contract afn <2 x double> %wide.load, %i.bx
  store <2 x double> %i.bz, ptr %i.by, align 8, !tbaa !83, !alias.scope !125, !noalias !122
  br label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i
  %i.ca = add nuw nsw i64 %i.f, 3
  %xtraiter = and i64 %i.ca, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv59.i.prol = phi i64 [ %indvars.iv.next60.i.prol, %.lr.ph.i.prol ], [ 1, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cb = mul nuw nsw i64 %indvars.iv59.i.prol, %i.f
  %gep.i.prol = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cb
  %i.cc = load double, ptr %gep.i.prol, align 8, !tbaa !83
  %i.cd = fmul reassoc nsz arcp contract afn double %i.cc, %i.m
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv59.i.prol ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !83
  %i.cg = fadd reassoc nsz arcp contract afn double %i.cf, %i.cd
  store double %i.cg, ptr %i.ce, align 8, !tbaa !83
  %indvars.iv.next60.i.prol = add nuw nsw i64 %indvars.iv59.i.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.prol, !llvm.loop !120

bb.b:                                             ; preds = %bb.b, %.lr.ph58.i
  %indvars.iv67.i.epil = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next68.i.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph58.i ], [ %epil.iter.next, %bb.b ]
  %i.ch = mul nuw nsw i64 %indvars.iv67.i.epil, %i.f
  %gep76.i.epil = getelementptr [8 x i8], ptr %invariant.gep75.i, i64 %i.ch
  %i.ci = load double, ptr %gep76.i.epil, align 8, !tbaa !83
  %i.cj = fmul reassoc nsz arcp contract afn double %i.ci, %i.bj
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.i.epil ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !83
  %i.cm = fsub reassoc nsz arcp contract afn double %i.cl, %i.cj
  store double %i.cm, ptr %i.ck, align 8, !tbaa !83
  %indvars.iv.next68.i.epil = add nuw nsw i64 %indvars.iv67.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %wide.trip.count65.i
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.b, !llvm.loop !127

.epilog-lcssa:                                    ; preds = %bb.b
  %indvars.iv.next73.i = add nsw i64 %wide.trip.count65.i, -1 ; 5 uses
  %.not35 = icmp eq i32 %2, 2
  br i1 %.not35, label %gauss_solve_triangular.exit, label %bb.c

bb.c:                                             ; preds = %.epilog-lcssa
  %i.cn = mul nuw nsw i64 %indvars.iv.next73.i, %i.bd
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !83
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next73.i ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !83
  %i.cs = fdiv reassoc nsz arcp contract afn double %i.cr, %i.cp ; 6 uses
  store double %i.cs, ptr %i.cq, align 8, !tbaa !83
  %invariant.gep75.i.1 = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next73.i ; 5 uses
  %xtraiter30.1 = and i64 %indvars.iv.next73.i, 3 ; 3 uses
  %i.ct = add nsw i32 %2, -3
  %i.cu = icmp ult i32 %i.ct, 3
  br i1 %i.cu, label %.epil.preheader.1, label %.new.1

.new.1:                                           ; preds = %bb.c
  %unroll_iter.1 = and i64 %indvars.iv.next73.i, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new.1
  %indvars.iv67.i.1 = phi i64 [ 0, %.new.1 ], [ %indvars.iv.next68.i.3.1, %bb.d ] ; 6 uses
  %niter.1 = phi i64 [ 0, %.new.1 ], [ %niter.next.3.1, %bb.d ]
  %i.cv = mul nuw nsw i64 %indvars.iv67.i.1, %i.f
  %gep76.i.133 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.cv
  %i.cw = load double, ptr %gep76.i.133, align 8, !tbaa !83
  %i.cx = fmul reassoc nsz arcp contract afn double %i.cw, %i.cs
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.i.1 ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !83
  %i.da = fsub reassoc nsz arcp contract afn double %i.cz, %i.cx
  store double %i.da, ptr %i.cy, align 8, !tbaa !83
  %indvars.iv.next68.i.134 = or disjoint i64 %indvars.iv67.i.1, 1 ; 2 uses
  %i.db = mul nuw nsw i64 %indvars.iv.next68.i.134, %i.f
  %gep76.i.1.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.db
  %i.dc = load double, ptr %gep76.i.1.1, align 8, !tbaa !83
  %i.dd = fmul reassoc nsz arcp contract afn double %i.dc, %i.cs
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68.i.134 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !83
  %i.dg = fsub reassoc nsz arcp contract afn double %i.df, %i.dd
  store double %i.dg, ptr %i.de, align 8, !tbaa !83
  %indvars.iv.next68.i.1.1 = or disjoint i64 %indvars.iv67.i.1, 2 ; 2 uses
  %i.dh = mul nuw nsw i64 %indvars.iv.next68.i.1.1, %i.f
  %gep76.i.2.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.dh
  %i.di = load double, ptr %gep76.i.2.1, align 8, !tbaa !83
  %i.dj = fmul reassoc nsz arcp contract afn double %i.di, %i.cs
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68.i.1.1 ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !83
  %i.dm = fsub reassoc nsz arcp contract afn double %i.dl, %i.dj
  store double %i.dm, ptr %i.dk, align 8, !tbaa !83
  %indvars.iv.next68.i.2.1 = or disjoint i64 %indvars.iv67.i.1, 3 ; 2 uses
  %i.dn = mul nuw nsw i64 %indvars.iv.next68.i.2.1, %i.f
  %gep76.i.3.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.dn
  %i.do = load double, ptr %gep76.i.3.1, align 8, !tbaa !83
  %i.dp = fmul reassoc nsz arcp contract afn double %i.do, %i.cs
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next68.i.2.1 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !83
  %i.ds = fsub reassoc nsz arcp contract afn double %i.dr, %i.dp
  store double %i.ds, ptr %i.dq, align 8, !tbaa !83
  %indvars.iv.next68.i.3.1 = add nuw nsw i64 %indvars.iv67.i.1, 4 ; 2 uses
  %niter.next.3.1 = add i64 %niter.1, 4           ; 2 uses
  %niter.ncmp.3.1 = icmp eq i64 %niter.next.3.1, %unroll_iter.1
  br i1 %niter.ncmp.3.1, label %.unr-lcssa.1, label %bb.d

.unr-lcssa.1:                                     ; preds = %bb.d
  %lcmp.mod31.1.not = icmp eq i64 %xtraiter30.1, 0
  br i1 %lcmp.mod31.1.not, label %gauss_solve_triangular.exit, label %.epil.preheader.1

.epil.preheader.1:                                ; preds = %.unr-lcssa.1, %bb.c
  %indvars.iv67.i.epil.init.1 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next68.i.3.1, %.unr-lcssa.1 ]
  %lcmp.mod32.1 = icmp ne i64 %xtraiter30.1, 0
  tail call void @llvm.assume(i1 %lcmp.mod32.1)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader.1
  %indvars.iv67.i.epil.1 = phi i64 [ %indvars.iv67.i.epil.init.1, %.epil.preheader.1 ], [ %indvars.iv.next68.i.epil.1, %bb.e ] ; 3 uses
  %epil.iter.1 = phi i64 [ 0, %.epil.preheader.1 ], [ %epil.iter.next.1, %bb.e ]
  %i.dt = mul nuw nsw i64 %indvars.iv67.i.epil.1, %i.f
  %gep76.i.epil.1 = getelementptr [8 x i8], ptr %invariant.gep75.i.1, i64 %i.dt
  %i.du = load double, ptr %gep76.i.epil.1, align 8, !tbaa !83
  %i.dv = fmul reassoc nsz arcp contract afn double %i.du, %i.cs
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67.i.epil.1 ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !83
  %i.dy = fsub reassoc nsz arcp contract afn double %i.dx, %i.dv
  store double %i.dy, ptr %i.dw, align 8, !tbaa !83
  %indvars.iv.next68.i.epil.1 = add nuw nsw i64 %indvars.iv67.i.epil.1, 1
  %epil.iter.next.1 = add i64 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i64 %epil.iter.next.1, %xtraiter30.1
  br i1 %epil.iter.cmp.1.not, label %gauss_solve_triangular.exit, label %bb.e, !llvm.loop !127

gauss_solve_triangular.exit:                      ; preds = %.unr-lcssa.1, %bb.e, %.epilog-lcssa
  %i.dz = load double, ptr %0, align 8, !tbaa !83
  %i.ea = load double, ptr %1, align 8, !tbaa !83
  %i.eb = fdiv reassoc nsz arcp contract afn double %i.ea, %i.dz
  store double %i.eb, ptr %1, align 8, !tbaa !83
  br label %bb.f

bb.f:                                             ; preds = %gauss_solve_triangular.exit, %bb.a
  tail call void @free(ptr noundef %i.c) #23
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @gauss_make_triangular(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 2, 54) %2) unnamed_addr #12 {
bb.a:
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  store i32 %i.a, ptr %i.c, align 4, !tbaa !17
  %i.d = zext nneg i32 %2 to i64                  ; 25 uses
  %i.e = zext nneg i32 %2 to i64                  ; 8 uses
  %i.f = shl nuw nsw i64 %i.d, 3                  ; 4 uses
  %i.g = add nuw nsw i64 %i.f, 8                  ; 2 uses
  %i.h = mul nuw nsw i64 %i.d, %i.d
  %i.i = shl nuw nsw i64 %i.h, 3
  %scevgep166 = getelementptr i8, ptr %0, i64 %i.i ; 2 uses
  %i.j = add nsw i64 %i.f, -8
  %i.k = mul nsw i64 %i.j, %i.d
  %i.l = shl nuw nsw i64 %i.d, 3
  %i.m = shl nuw nsw i64 %i.d, 3                  ; 3 uses
  %scevgep194 = getelementptr i8, ptr %0, i64 %i.m
  %i.n = add nuw nsw i64 %i.m, 8
  %i.o = shl nuw nsw i64 %i.d, 3
  %i.p = add nsw i64 %i.e, -1                     ; 2 uses
  %i.q = add nsw i64 %i.e, -2                     ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.m
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = getelementptr i8, ptr %0, i64 %i.f
  %i.u = getelementptr i8, ptr %0, i64 %i.k
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = getelementptr i8, ptr %0, i64 %i.f
  br label %bb.b

.loopexit:                                        ; preds = %._crit_edge120, %.preheader110
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %i.d
  br i1 %exitcond150.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %indvars.iv146 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next147, %.loopexit ] ; 22 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.loopexit ] ; 15 uses
  %i.x = sub i64 %i.p, %indvars.iv146
  %i.y = sub i64 %i.q, %indvars.iv146
  %i.z = sub i64 %i.q, %indvars.iv146
  %i.aa = shl nuw nsw i64 %indvars.iv146, 3
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  %scevgep192 = getelementptr i8, ptr %i.ab, i64 8
  %i.ac = mul i64 %i.n, %indvars.iv146
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep196 = getelementptr i8, ptr %i.ad, i64 8
  %i.ae = mul i64 %i.o, %indvars.iv146
  %scevgep197 = getelementptr i8, ptr %i.r, i64 %i.ae
  %i.af = xor i64 %indvars.iv146, -1
  %i.ag = add nsw i64 %i.af, %i.d                 ; 10 uses
  %i.ah = mul i64 %i.g, %indvars.iv146            ; 3 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.ah ; 2 uses
  %scevgep167 = getelementptr i8, ptr %i.t, i64 %i.ah
  %i.ai = shl nuw nsw i64 %indvars.iv146, 3
  %scevgep168 = getelementptr i8, ptr %i.v, i64 %i.ai
  %i.aj = getelementptr i8, ptr %0, i64 %i.ah
  %scevgep169 = getelementptr i8, ptr %i.aj, i64 8
  %i.ak = mul i64 %i.l, %indvars.iv146
  %scevgep170 = getelementptr i8, ptr %i.w, i64 %i.ak
  %indvars148 = trunc i64 %indvars.iv146 to i32   ; 4 uses
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 3 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next147, %i.e ; 2 uses
  br i1 %i.al, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.am = sub i64 %i.p, %indvars.iv146
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv146 ; 5 uses
  %i.an = getelementptr [8 x i8], ptr %0, i64 %indvars.iv146 ; 5 uses
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv123.prol = phi i64 [ %indvars.iv.next124.prol, %.lr.ph.prol ], [ %indvars.iv, %.lr.ph.preheader ] ; 3 uses
  %.0100111.prol = phi i32 [ %.1101.prol, %.lr.ph.prol ], [ %indvars148, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ao = mul nuw nsw i64 %indvars.iv123.prol, %i.d
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ao
  %i.ap = load double, ptr %gep.prol, align 8, !tbaa !83
  %i.aq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ap)
  %i.ar = mul nsw i32 %.0100111.prol, %2
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [8 x i8], ptr %i.an, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !83
  %i.av = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.au)
  %i.aw = fcmp reassoc nsz arcp contract afn ogt double %i.aq, %i.av
  %i.ax = trunc nuw nsw i64 %indvars.iv123.prol to i32
  %.1101.prol = select i1 %i.aw, i32 %i.ax, i32 %.0100111.prol ; 3 uses
  %indvars.iv.next124.prol = add nuw nsw i64 %indvars.iv123.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !128

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.1101.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.1101.prol, %.lr.ph.prol ]
  %indvars.iv123.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next124.prol, %.lr.ph.prol ]
  %.0100111.unr = phi i32 [ %indvars148, %.lr.ph.preheader ], [ %.1101.prol, %.lr.ph.prol ]
  %i.ay = icmp ult i64 %i.z, 3
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  %.0100.lcssa = phi i32 [ %indvars148, %bb.b ], [ %.1101.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1101.3, %.lr.ph ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv146
  store i32 %.0100.lcssa, ptr %i.az, align 4, !tbaa !17
  %i.ba = mul nsw i32 %.0100.lcssa, %2
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %0, i64 %indvars.iv146
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.bb ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !83 ; 7 uses
  %i.bf = mul nuw nsw i64 %indvars.iv146, %i.e    ; 2 uses
  %i.bg = mul nuw nsw i32 %2, %indvars148
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv146
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !83
  store double %i.bk, ptr %i.bd, align 8, !tbaa !83
  store double %i.be, ptr %i.bj, align 8, !tbaa !83
  %i.bl = fcmp reassoc nsz arcp contract afn une double %i.be, 0.000000e+00
  br i1 %i.bl, label %.preheader110, label %.critedge

.preheader110:                                    ; preds = %._crit_edge
  br i1 %i.al, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %.preheader110
  %invariant.gep154 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv146 ; 5 uses
  %xtraiter214 = and i64 %i.x, 3                  ; 2 uses
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod215.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph114
  %i.bm = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.be
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.prol.preheader
  %indvars.iv126.prol = phi i64 [ %indvars.iv, %.prol.preheader ], [ %indvars.iv.next127.prol, %bb.c ] ; 2 uses
  %prol.iter216 = phi i64 [ 0, %.prol.preheader ], [ %prol.iter216.next, %bb.c ]
  %i.bn = mul nuw nsw i64 %indvars.iv126.prol, %i.d
  %gep155.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154, i64 %i.bn ; 2 uses
  %i.bo = load double, ptr %gep155.prol, align 8, !tbaa !83
  %i.bp = fneg reassoc nsz arcp contract afn double %i.bo
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bp, %i.bm
  store double %i.bq, ptr %gep155.prol, align 8, !tbaa !83
  %indvars.iv.next127.prol = add nuw nsw i64 %indvars.iv126.prol, 1 ; 2 uses
  %prol.iter216.next = add i64 %prol.iter216, 1   ; 2 uses
  %prol.iter216.cmp.not = icmp eq i64 %prol.iter216.next, %xtraiter214
  br i1 %prol.iter216.cmp.not, label %.prol.loopexit, label %bb.c, !llvm.loop !129

.prol.loopexit:                                   ; preds = %bb.c, %.lr.ph114
  %indvars.iv126.unr = phi i64 [ %indvars.iv, %.lr.ph114 ], [ %indvars.iv.next127.prol, %bb.c ]
  %i.br = icmp ult i64 %i.y, 3
  br i1 %i.br, label %._crit_edge115, label %.lr.ph114.new

.lr.ph114.new:                                    ; preds = %.prol.loopexit
  %i.bs = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.be
  %i.bt = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.be
  %i.bu = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.be
  %i.bv = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.be
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.3, %.lr.ph ], [ %indvars.iv123.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0100111 = phi i32 [ %.1101.3, %.lr.ph ], [ %.0100111.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bw = mul nuw nsw i64 %indvars.iv123, %i.d
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bw
  %i.bx = load double, ptr %gep, align 8, !tbaa !83
  %i.by = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bx)
  %i.bz = mul nsw i32 %.0100111, %2
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [8 x i8], ptr %i.an, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !83
  %i.cd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cc)
  %i.ce = fcmp reassoc nsz arcp contract afn ogt double %i.by, %i.cd
  %i.cf = trunc nuw nsw i64 %indvars.iv123 to i32
  %.1101 = select i1 %i.ce, i32 %i.cf, i32 %.0100111 ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.cg = mul nuw nsw i64 %indvars.iv.next124, %i.d
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.cg
  %i.ch = load double, ptr %gep.1, align 8, !tbaa !83
  %i.ci = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ch)
  %i.cj = mul nsw i32 %.1101, %2
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr [8 x i8], ptr %i.an, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !83
  %i.cn = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.cm)
  %i.co = fcmp reassoc nsz arcp contract afn ogt double %i.ci, %i.cn
  %i.cp = trunc nuw nsw i64 %indvars.iv.next124 to i32
  %.1101.1 = select i1 %i.co, i32 %i.cp, i32 %.1101 ; 2 uses
end_hunk_1
