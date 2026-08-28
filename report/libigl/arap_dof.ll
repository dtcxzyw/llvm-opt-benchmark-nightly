Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/arap_dof?download=true
inline.NumInlined: 10962
inline.NumDeleted: 4749
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN3igl15arap_dof_updateIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEfEEbRKNS_11ArapDOFDataIT_T0_EERKNS2_IdLin1ELi1ELi0ELin1ELi1EEERKS3_idRS3_:bb.a
  %i.vk = trunc i64 %i.vj to i32                  ; 2 uses
  %i.vl = add i32 %i.vk, %i.us
  %i.vm = icmp slt i32 %i.vl, %i.vk
  %.reass821 = or i1 %i.vm, %invariant.op820
  %i.vn = add i64 %i.vh, -1
  %diff.check691 = icmp ult i64 %i.vn, 31
  %or.cond763 = select i1 %.reass821, i1 true, i1 %diff.check691
  br i1 %or.cond763, label %scalar.ph692.preheader, label %vector.body696

vector.body696:                                   ; preds = %vector.scevcheck, %vector.body696
  %index697 = phi i64 [ %index.next700, %vector.body696 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.vo = getelementptr [4 x i8], ptr %gep.i219, i64 %index697 ; 2 uses
  %i.vp = getelementptr i8, ptr %i.vo, i64 16
  %wide.load698 = load <4 x float>, ptr %i.vo, align 4, !tbaa !364
  %wide.load699 = load <4 x float>, ptr %i.vp, align 4, !tbaa !364
  %i.vq = add i64 %index697, %i.uy
  %sext759 = shl i64 %i.vq, 32
  %i.vr = ashr exact i64 %sext759, 30
  %i.vs = getelementptr i8, ptr %.val147, i64 %i.vr ; 2 uses
  %i.vt = getelementptr i8, ptr %i.vs, i64 16
  store <4 x float> %wide.load698, ptr %i.vs, align 4, !tbaa !364
  store <4 x float> %wide.load699, ptr %i.vt, align 4, !tbaa !364
  %index.next700 = add nuw i64 %index697, 8       ; 2 uses
  %i.vu = icmp eq i64 %index.next700, %n.vec695
  br i1 %i.vu, label %middle.block701, label %vector.body696, !llvm.loop !413

middle.block701:                                  ; preds = %vector.body696
  br i1 %cmp.n702, label %._crit_edge.i223, label %scalar.ph692.preheader

scalar.ph692.preheader:                           ; preds = %vector.scevcheck, %.preheader.i217, %middle.block701
  %indvars.iv.i220.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.i217 ], [ %n.vec695, %middle.block701 ] ; 5 uses
  br i1 %lcmp.mod795.not, label %scalar.ph692.prol.loopexit, label %scalar.ph692.prol

scalar.ph692.prol:                                ; preds = %scalar.ph692.preheader
  %i.vv = mul nsw i64 %indvars.iv.i220.ph, %.val146
  %i.vw = getelementptr [4 x i8], ptr %gep.i219, i64 %i.vv
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !364
  %i.vy = trunc nuw nsw i64 %indvars.iv.i220.ph to i32
  %i.vz = mul i32 %i.uk, %i.vy
  %i.wa = add i32 %i.vz, %i.uz
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr [4 x i8], ptr %.val147, i64 %i.wb
  store float %i.vx, ptr %i.wc, align 4, !tbaa !364
  %indvars.iv.next.i221.prol = or disjoint i64 %indvars.iv.i220.ph, 1
  br label %scalar.ph692.prol.loopexit

scalar.ph692.prol.loopexit:                       ; preds = %scalar.ph692.prol, %scalar.ph692.preheader
  %indvars.iv.i220.unr = phi i64 [ %indvars.iv.i220.ph, %scalar.ph692.preheader ], [ %indvars.iv.next.i221.prol, %scalar.ph692.prol ]
  %i.wd = icmp eq i64 %indvars.iv.i220.ph, %i.uv
  br i1 %i.wd, label %._crit_edge.i223, label %scalar.ph692

._crit_edge8.i226:                                ; preds = %._crit_edge.i223
  %indvars.iv.next21.i227 = add nuw nsw i64 %indvars.iv20.i215, 1 ; 2 uses
  %exitcond24.not.i228 = icmp eq i64 %indvars.iv.next21.i227, %i.up
  br i1 %exitcond24.not.i228, label %_ZN3iglL12mergeColumnsIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRS4_.exit, label %.preheader5.i214, !llvm.loop !414

._crit_edge.i223:                                 ; preds = %scalar.ph692.prol.loopexit, %scalar.ph692, %middle.block701
  %indvars.iv.next16.i224 = add nuw nsw i64 %indvars.iv15.i218, 1 ; 2 uses
  %exitcond19.not.i225 = icmp eq i64 %indvars.iv.next16.i224, %wide.trip.count18.i213
  br i1 %exitcond19.not.i225, label %._crit_edge8.i226, label %.preheader.i217, !llvm.loop !415

scalar.ph692:                                     ; preds = %scalar.ph692.prol.loopexit, %scalar.ph692
  %indvars.iv.i220 = phi i64 [ %indvars.iv.next.i221.1, %scalar.ph692 ], [ %indvars.iv.i220.unr, %scalar.ph692.prol.loopexit ] ; 4 uses
  %i.we = mul nsw i64 %indvars.iv.i220, %.val146
  %i.wf = getelementptr [4 x i8], ptr %gep.i219, i64 %i.we
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !364
  %i.wh = trunc i64 %indvars.iv.i220 to i32
  %i.wi = mul i32 %i.uk, %i.wh
  %i.wj = add i32 %i.wi, %i.uz
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr [4 x i8], ptr %.val147, i64 %i.wk
  store float %i.wg, ptr %i.wl, align 4, !tbaa !364
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i220, 1 ; 2 uses
  %i.wm = mul nsw i64 %indvars.iv.next.i221, %.val146
  %i.wn = getelementptr [4 x i8], ptr %gep.i219, i64 %i.wm
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !364
  %i.wp = trunc i64 %indvars.iv.next.i221 to i32
  %i.wq = mul i32 %i.uk, %i.wp
  %i.wr = add i32 %i.wq, %i.uz
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr [4 x i8], ptr %.val147, i64 %i.ws
  store float %i.wo, ptr %i.wt, align 4, !tbaa !364
  %indvars.iv.next.i221.1 = add nuw nsw i64 %indvars.iv.i220, 2 ; 2 uses
  %exitcond.not.i222.1 = icmp eq i64 %indvars.iv.next.i221.1, %i.uq
  br i1 %exitcond.not.i222.1, label %._crit_edge.i223, label %scalar.ph692, !llvm.loop !416

_ZN3iglL12mergeColumnsIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRS4_.exit: ; preds = %._crit_edge8.i226, %bb.br
  %i.wu = load i8, ptr %i.ob, align 1, !tbaa !417, !range !94, !noundef !64
  %i.wv = trunc nuw i8 %i.wu to i1
  br i1 %i.wv, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i230, label %bb.cw

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i230: ; preds = %_ZN3iglL12mergeColumnsIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEEvRKT_iiiRS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  %i.ww = mul i32 %i.ul, %i.uk
  %i.wx = mul i32 %i.ww, %i.um                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  %i.wy = sext i32 %i.wx to i64                   ; 2 uses
  %.not.i335 = icmp eq i32 %i.wx, 0
  br i1 %.not.i335, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i230
  %i.wz = icmp sgt i32 %i.wx, 0
  br i1 %i.wz, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i338, label %.sink.split.i336

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i338: ; preds = %bb.bs
  %i.xa = shl nuw nsw i64 %i.wy, 2
  %i.xb = call noalias ptr @malloc(i64 noundef %i.xa) #27 ; 2 uses
  %i.xc = icmp eq ptr %i.xb, null
  br i1 %i.xc, label %bb.bt, label %.sink.split.i336

bb.bt:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i338
  %i.xd = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.xd, align 8, !tbaa !44
  invoke void @__cxa_throw(ptr nonnull %i.xd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc340 unwind label %bb.bu

.noexc340:                                        ; preds = %bb.bt
  unreachable

.sink.split.i336:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i338, %bb.bs
  %.sink.i337 = phi ptr [ %i.xb, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i338 ], [ null, %bb.bs ]
  store ptr %.sink.i337, ptr %34, align 8, !tbaa !358
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %.body232

bb.bv:                                            ; preds = %.sink.split.i336, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i230
  store i64 %i.wy, ptr %i.oc, align 8, !tbaa !359
  store i64 1, ptr %i.od, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  %i.xf = load double, ptr %i.oe, align 8, !tbaa !418 ; 3 uses
  %i.xg = fmul double %i.xf, %i.xf
  %i.xh = insertelement <2 x double> poison, double %i.xg, i64 0
  %i.xi = insertelement <2 x double> %i.xh, double %i.xf, i64 1
  %i.xj = fdiv <2 x double> <double -1.000000e+00, double 1.000000e+00>, %i.xi
  %i.xk = fptrunc <2 x double> %i.xj to <2 x float> ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %i.xl = load i64, ptr %i.oh, align 8, !tbaa !359 ; 4 uses
  %i.xm = load i64, ptr %i.oi, align 8, !tbaa !360 ; 4 uses
  %i.xn = icmp eq i64 %i.xl, 0
  %i.xo = icmp eq i64 %i.xm, 0
  %or.cond.i.i.i = or i1 %i.xn, %i.xo
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i342, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.xp = sdiv i64 9223372036854775807, %i.xm
  %i.xq = icmp sgt i64 %i.xl, %i.xp
  br i1 %i.xq, label %.invoke612, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i342

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i342: ; preds = %bb.bw, %bb.bv
  %i.xr = mul nsw i64 %i.xm, %i.xl                ; 11 uses
  %.not.i386 = icmp eq i64 %i.xr, 0
  br i1 %.not.i386, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i342
  %i.xs = icmp sgt i64 %i.xr, 0
  br i1 %i.xs, label %bb.by, label %.sink.split.i387

bb.by:                                            ; preds = %bb.bx
  %i.xt = icmp samesign ugt i64 %i.xr, 4611686018427387903
  br i1 %i.xt, label %.invoke612, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i389

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i389: ; preds = %bb.by
  %i.xu = shl nuw i64 %i.xr, 2
  %i.xv = call noalias ptr @malloc(i64 noundef %i.xu) #27 ; 2 uses
  %i.xw = icmp eq ptr %i.xv, null
  br i1 %i.xw, label %.invoke612, label %.sink.split.i387

.invoke612:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i389, %bb.by, %bb.bw
  %i.xx = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.xx, align 8, !tbaa !44
  invoke void @__cxa_throw(ptr nonnull %i.xx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont613 unwind label %bb.ca

.cont613:                                         ; preds = %.invoke612
  unreachable

.sink.split.i387:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i389, %bb.bx
  %.sink.i388 = phi ptr [ %i.xv, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i389 ], [ null, %bb.bx ] ; 2 uses
  store ptr %.sink.i388, ptr %35, align 8, !tbaa !358
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i342, %.sink.split.i387
  %i.xy = phi ptr [ %.sink.i388, %.sink.split.i387 ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i342 ] ; 6 uses
  %i.xz = ptrtoaddr ptr %i.xy to i64              ; 2 uses
  store i64 %i.xl, ptr %i.oj, align 8, !tbaa !359
  store i64 %i.xm, ptr %i.ok, align 8, !tbaa !360
  %i.ya = load ptr, ptr %i.of, align 8, !tbaa !358 ; 6 uses
  %i.yb = ptrtoaddr ptr %i.ya to i64
  %i.yc = load ptr, ptr %i.og, align 8, !tbaa !358 ; 6 uses
  %i.yd = ptrtoaddr ptr %i.yc to i64
  %i.ye = sdiv i64 %i.xr, 4
  %i.yf = shl nsw i64 %i.ye, 2                    ; 7 uses
  %i.yg = icmp sgt i64 %i.xr, 3
  br i1 %i.yg, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %bb.bz
  %i.yh = shufflevector <2 x float> %i.xk, <2 x float> poison, <4 x i32> zeroinitializer
  %45 = shufflevector <2 x float> %i.xk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.bz
  %i.yi = icmp slt i64 %i.yf, %i.xr
  br i1 %i.yi, label %.lr.ph.i.i.i.i.i.i.i344.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.i.i344.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i
  %i.yj = sub i64 %i.xr, %i.yf                    ; 3 uses
  %min.iters.check672 = icmp ult i64 %i.yj, 8
  br i1 %min.iters.check672, label %.lr.ph.i.i.i.i.i.i.i344.preheader767, label %vector.memcheck667

vector.memcheck667:                               ; preds = %.lr.ph.i.i.i.i.i.i.i344.preheader
  %i.yk = sub i64 %i.yb, %i.xz
  %diff.check668 = icmp ugt i64 %i.yk, -32
  %i.yl = sub i64 %i.yd, %i.xz
  %diff.check669 = icmp ugt i64 %i.yl, -32
  %conflict.rdx670 = or i1 %diff.check668, %diff.check669
  br i1 %conflict.rdx670, label %.lr.ph.i.i.i.i.i.i.i344.preheader767, label %vector.ph673

vector.ph673:                                     ; preds = %vector.memcheck667
  %n.vec674 = and i64 %i.yj, -8                   ; 3 uses
  %i.ym = add i64 %i.yf, %n.vec674
  %broadcast.splat = shufflevector <2 x float> %i.xk, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat676 = shufflevector <2 x float> %i.xk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body677

vector.body677:                                   ; preds = %vector.body677, %vector.ph673
  %index678 = phi i64 [ 0, %vector.ph673 ], [ %index.next683, %vector.body677 ] ; 2 uses
  %i.yn = add i64 %i.yf, %index678                ; 3 uses
  %i.yo = getelementptr inbounds [4 x i8], ptr %i.xy, i64 %i.yn ; 2 uses
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %i.yn ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %wide.load679 = load <4 x float>, ptr %i.yp, align 4, !tbaa !364
  %wide.load680 = load <4 x float>, ptr %i.yq, align 4, !tbaa !364
  %i.yr = fmul <4 x float> %wide.load679, %broadcast.splat
  %i.ys = fmul <4 x float> %wide.load680, %broadcast.splat
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.yc, i64 %i.yn ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %wide.load681 = load <4 x float>, ptr %i.yt, align 4, !tbaa !364
  %wide.load682 = load <4 x float>, ptr %i.yu, align 4, !tbaa !364
  %i.yv = fmul <4 x float> %wide.load681, %broadcast.splat676
  %i.yw = fmul <4 x float> %wide.load682, %broadcast.splat676
  %i.yx = fadd <4 x float> %i.yr, %i.yv
  %i.yy = fadd <4 x float> %i.ys, %i.yw
  %i.yz = fneg <4 x float> %i.yx
  %i.za = fneg <4 x float> %i.yy
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  store <4 x float> %i.yz, ptr %i.yo, align 4, !tbaa !364
  store <4 x float> %i.za, ptr %i.zb, align 4, !tbaa !364
  %index.next683 = add nuw i64 %index678, 8       ; 2 uses
  %i.zc = icmp eq i64 %index.next683, %n.vec674
  br i1 %i.zc, label %middle.block684, label %vector.body677, !llvm.loop !419

middle.block684:                                  ; preds = %vector.body677
  %cmp.n685 = icmp eq i64 %i.yj, %n.vec674
  br i1 %cmp.n685, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i344.preheader767

.lr.ph.i.i.i.i.i.i.i344.preheader767:             ; preds = %vector.memcheck667, %.lr.ph.i.i.i.i.i.i.i344.preheader, %middle.block684
  %.05.i.i.i.i.i.i.i345.ph = phi i64 [ %i.yf, %vector.memcheck667 ], [ %i.yf, %.lr.ph.i.i.i.i.i.i.i344.preheader ], [ %i.ym, %middle.block684 ] ; 7 uses
  %i.zd = sub i64 %i.xr, %.05.i.i.i.i.i.i.i345.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i345.ph, 1
  %xtraiter797 = and i64 %i.zd, 1
  %lcmp.mod798.not = icmp eq i64 %xtraiter797, 0
  br i1 %lcmp.mod798.not, label %.lr.ph.i.i.i.i.i.i.i344.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i344.prol

.lr.ph.i.i.i.i.i.i.i344.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i344.preheader767
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.xy, i64 %.05.i.i.i.i.i.i.i345.ph
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %.05.i.i.i.i.i.i.i345.ph
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !364
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.yc, i64 %.05.i.i.i.i.i.i.i345.ph
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !364
  %i.zj = insertelement <2 x float> poison, float %i.zg, i64 0
  %i.zk = insertelement <2 x float> %i.zj, float %i.zi, i64 1
  %i.zl = fmul <2 x float> %i.zk, %i.xk           ; 2 uses
  %shift.prol = shufflevector <2 x float> %i.zl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.prol = fadd <2 x float> %i.zl, %shift.prol
  %i.zm = extractelement <2 x float> %foldExtExtBinop.prol, i64 0
  %i.zn = fneg float %i.zm
  store float %i.zn, ptr %i.ze, align 4, !tbaa !364
  %i.zo = add nsw i64 %.05.i.i.i.i.i.i.i345.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i344.prol.loopexit

.lr.ph.i.i.i.i.i.i.i344.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i344.prol, %.lr.ph.i.i.i.i.i.i.i344.preheader767
  %.05.i.i.i.i.i.i.i345.unr = phi i64 [ %.05.i.i.i.i.i.i.i345.ph, %.lr.ph.i.i.i.i.i.i.i344.preheader767 ], [ %i.zo, %.lr.ph.i.i.i.i.i.i.i344.prol ]
  %i.zp = icmp eq i64 %i.xr, %.neg
  br i1 %i.zp, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i344

.lr.ph.i.i.i.i.i.i.i344:                          ; preds = %.lr.ph.i.i.i.i.i.i.i344.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i344
  %.05.i.i.i.i.i.i.i345 = phi i64 [ %i.aal, %.lr.ph.i.i.i.i.i.i.i344 ], [ %.05.i.i.i.i.i.i.i345.unr, %.lr.ph.i.i.i.i.i.i.i344.prol.loopexit ] ; 5 uses
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.xy, i64 %.05.i.i.i.i.i.i.i345
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %.05.i.i.i.i.i.i.i345
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !364
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.yc, i64 %.05.i.i.i.i.i.i.i345
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !364
  %i.zv = insertelement <2 x float> poison, float %i.zs, i64 0
  %i.zw = insertelement <2 x float> %i.zv, float %i.zu, i64 1
  %i.zx = fmul <2 x float> %i.zw, %i.xk           ; 2 uses
  %shift = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.zx, %shift
  %i.zy = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.zz = fneg float %i.zy
  store float %i.zz, ptr %i.zq, align 4, !tbaa !364
  %i.aaa = add nsw i64 %.05.i.i.i.i.i.i.i345, 1   ; 3 uses
  %i.aab = getelementptr inbounds [4 x i8], ptr %i.xy, i64 %i.aaa
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %i.aaa
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !364
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.yc, i64 %i.aaa
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !364
  %i.aag = insertelement <2 x float> poison, float %i.aad, i64 0
  %i.aah = insertelement <2 x float> %i.aag, float %i.aaf, i64 1
  %i.aai = fmul <2 x float> %i.aah, %i.xk         ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.aai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x float> %i.aai, %shift.1
  %i.aaj = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %i.aak = fneg float %i.aaj
  store float %i.aak, ptr %i.aab, align 4, !tbaa !364
  %i.aal = add nsw i64 %.05.i.i.i.i.i.i.i345, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i346.1 = icmp eq i64 %i.aal, %i.xr
  br i1 %exitcond.not.i.i.i.i.i.i.i346.1, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i344, !llvm.loop !420

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.aav, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i.i.i.i ] ; 4 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %.011.i.i.i.i.i.i
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.011.i.i.i.i.i.i
  %i.aao = load <4 x float>, ptr %i.aan, align 16, !tbaa !54
  %i.aap = fmul <4 x float> %i.yh, %i.aao
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %.011.i.i.i.i.i.i
  %i.aar = load <4 x float>, ptr %i.aaq, align 16, !tbaa !54
  %i.aas = fmul <4 x float> %45, %i.aar
  %i.aat = fadd <4 x float> %i.aap, %i.aas
  %i.aau = fneg <4 x float> %i.aat
  store <4 x float> %i.aau, ptr %i.aam, align 16, !tbaa !54
  %i.aav = add nuw nsw i64 %.011.i.i.i.i.i.i, 4   ; 2 uses
  %i.aaw = icmp slt i64 %i.aav, %i.yf
  br i1 %i.aaw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !421

bb.ca:                                            ; preds = %.invoke612
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %.body347

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i344.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i344, %middle.block684, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  store ptr %35, ptr %37, align 8, !tbaa !398, !alias.scope !422
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfdEEKNS1_IfLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.cb unwind label %bb.cn

bb.cb:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  %i.aay = load double, ptr %i.ol, align 8, !tbaa !46, !noalias !425
  store ptr %i.on, ptr %39, align 8, !tbaa !89, !alias.scope !428
  store double %i.aay, ptr %i.oo, align 8, !tbaa !119, !alias.scope !428
  store ptr %i.om, ptr %i.op, align 8, !tbaa !121, !alias.scope !428
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_7ProductIS2_NS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS7_18scalar_constant_opIdEEKNS1_IdLi3ELi1ELi0ELi3ELi1EEEEESE_EELi0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.cc unwind label %bb.co

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  store ptr %i.oq, ptr %i.os, align 8
  store ptr %36, ptr %.sroa.5403.0..sroa_idx, align 8
  store ptr %38, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %i.or, ptr %i.ot, align 8, !tbaa !398, !alias.scope !431
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %i.aaz = load i64, ptr %i.ou, align 8, !tbaa !359 ; 4 uses
  %i.aba = load i64, ptr %i.ov, align 8, !tbaa !360 ; 4 uses
  %i.abb = icmp eq i64 %i.aaz, 0
  %i.abc = icmp eq i64 %i.aba, 0
  %or.cond.i.i.i.i239 = or i1 %i.abb, %i.abc
  br i1 %or.cond.i.i.i.i239, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.abd = sdiv i64 9223372036854775807, %i.aba
  %i.abe = icmp sgt i64 %i.aaz, %i.abd
  br i1 %i.abe, label %.invoke614, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i

.invoke614:                                       ; preds = %bb.cd, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.cf
  %i.abf = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.abf, align 8, !tbaa !44
  invoke void @__cxa_throw(ptr nonnull %i.abf, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.cont615 unwind label %.body241.loopexit.split-lp

.cont615:                                         ; preds = %.invoke614
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i: ; preds = %bb.cd, %bb.cc
  %i.abg = mul nsw i64 %i.aba, %i.aaz             ; 4 uses
  %.not.i349 = icmp eq i64 %i.abg, 0
  br i1 %.not.i349, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS_7ProductIS2_S2_Li0EEEKS2_EEKNS_12CwiseUnaryOpINS6_14scalar_cast_opIfdEEKNS1_IfLin1ELin1ELi0ELin1ELin1EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  %i.abh = icmp sgt i64 %i.abg, 0
  br i1 %i.abh, label %bb.cf, label %.sink.split.i350

bb.cf:                                            ; preds = %bb.ce
  %i.abi = icmp samesign ugt i64 %i.abg, 2305843009213693951
  br i1 %i.abi, label %.invoke614, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.cf
  %i.abj = shl nuw i64 %i.abg, 3
  %i.abk = call noalias ptr @malloc(i64 noundef %i.abj) #27 ; 2 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %.invoke614, label %.sink.split.i350

.sink.split.i350:                                 ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.ce
  %.sink.i351 = phi ptr [ %i.abk, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.ce ]
  store ptr %.sink.i351, ptr %40, align 8, !tbaa !42
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS_7ProductIS2_S2_Li0EEEKS2_EEKNS_12CwiseUnaryOpINS6_14scalar_cast_opIfdEEKNS1_IfLin1ELin1ELi0ELin1ELin1EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS_7ProductIS2_S2_Li0EEEKS2_EEKNS_12CwiseUnaryOpINS6_14scalar_cast_opIfdEEKNS1_IfLin1ELin1ELi0ELin1ELin1EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i: ; preds = %.sink.split.i350, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.aaz, ptr %i.ow, align 8, !tbaa !13
  store i64 %i.aba, ptr %i.ox, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_IS6_KNS_7ProductIS3_S3_Li0EEEKS3_EEKNS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLin1ELin1ELi0ELin1ELin1EEEEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(57) %41, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.cg unwind label %.body241.loopexit

.body241.loopexit:                                ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS_7ProductIS2_S2_Li0EEEKS2_EEKNS_12CwiseUnaryOpINS6_14scalar_cast_opIfdEEKNS1_IfLin1ELin1ELi0ELin1ELin1EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body241

.body241.loopexit.split-lp:                       ; preds = %.invoke614
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body241

.body241:                                         ; preds = %.body241.loopexit.split-lp, %.body241.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.body241.loopexit ], [ %lpad.loopexit.split-lp, %.body241.loopexit.split-lp ]
  %i.abm = load ptr, ptr %40, align 8, !tbaa !42
  call void @free(ptr noundef %i.abm) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  br label %bb.ct

bb.cg:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_IS8_KNS_7ProductIS2_S2_Li0EEEKS2_EEKNS_12CwiseUnaryOpINS6_14scalar_cast_opIfdEEKNS1_IfLin1ELin1ELi0ELin1ELin1EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  store ptr %40, ptr %43, align 8, !tbaa !89, !alias.scope !434
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.ch unwind label %bb.cp

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  store ptr %i.oy, ptr %44, align 8
  store ptr %42, ptr %i.oz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_S3_Li0EEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISA_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef null)
          to label %bb.ci unwind label %bb.cq

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  %i.abn = load ptr, ptr %31, align 8, !tbaa !358 ; 9 uses
  %i.abo = ptrtoaddr ptr %i.abn to i64
  %i.abp = load ptr, ptr %34, align 8, !tbaa !358 ; 8 uses
  %i.abq = ptrtoaddr ptr %i.abp to i64
  %i.abr = load i64, ptr %i.oc, align 8, !tbaa !359 ; 6 uses
  %i.abs = load i64, ptr %i.od, align 8, !tbaa !360 ; 6 uses
  %i.abt = load i64, ptr %i.nj, align 8, !tbaa !359
  %.not.i.i.i.i.i.i354 = icmp eq i64 %i.abt, %i.abr
  %i.abu = load i64, ptr %i.nk, align 8
  %.not8.i.i.i.i.i.i362 = icmp eq i64 %i.abu, %i.abs
  %or.cond507 = select i1 %.not.i.i.i.i.i.i354, i1 %.not8.i.i.i.i.i.i362, i1 false
  br i1 %or.cond507, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.abv = icmp eq i64 %i.abr, 0
  %i.abw = icmp eq i64 %i.abs, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.abv, %i.abw
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen12ArrayWrapperINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.abx = sdiv i64 9223372036854775807, %i.abs
  %i.aby = icmp sgt i64 %i.abr, %i.abx
  br i1 %i.aby, label %.noexc.i.i.i.i.i, label %_ZN5Eigen12ArrayWrapperINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.ck
  %i.abz = call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.abz, align 8, !tbaa !44
  invoke void @__cxa_throw(ptr nonnull %i.abz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
          to label %.noexc363 unwind label %.loopexit.split-lp

.noexc363:                                        ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZN5Eigen12ArrayWrapperINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  %i.aca = mul nsw i64 %i.abs, %i.abr
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %i.aca, i64 noundef %i.abr, i64 noundef %i.abs)
          to label %.noexc364 unwind label %.loopexit511

.noexc364:                                        ; preds = %_ZN5Eigen12ArrayWrapperINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i
  %.pre20.i.i.i.i.i = load i64, ptr %i.nj, align 8, !tbaa !359
  %.pre22.i.i.i.i.i = load i64, ptr %i.nk, align 8, !tbaa !360
  %.pre528 = load ptr, ptr %31, align 8, !tbaa !358
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ci, %.noexc364
  %i.acb = phi ptr [ %.pre528, %.noexc364 ], [ %i.abn, %bb.ci ] ; 8 uses
  %i.acc = phi i64 [ %.pre22.i.i.i.i.i, %.noexc364 ], [ %i.abs, %bb.ci ]
  %i.acd = phi i64 [ %.pre20.i.i.i.i.i, %.noexc364 ], [ %i.abr, %bb.ci ]
  %i.ace = ptrtoaddr ptr %i.acb to i64            ; 2 uses
  %i.acf = mul nsw i64 %i.acd, %i.acc             ; 7 uses
  %i.acg = sdiv i64 %i.acf, 4
  %i.ach = shl nsw i64 %i.acg, 2                  ; 7 uses
  %i.aci = icmp sgt i64 %i.acf, 3
  br i1 %i.aci, label %.lr.ph.i.i.i.i.i.i360, label %._crit_edge.i.i.i.i.i.i356

._crit_edge.i.i.i.i.i.i356:                       ; preds = %.lr.ph.i.i.i.i.i.i360, %bb.cl
  %i.acj = icmp slt i64 %i.ach, %i.acf
  br i1 %i.acj, label %.lr.ph.i.i.i.i.i.i.i357.preheader, label %_ZN5Eigen12ArrayWrapperINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKS3_S9_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i357.preheader:                ; preds = %._crit_edge.i.i.i.i.i.i356
  %i.ack = sub i64 %i.acf, %i.ach                 ; 3 uses
  %min.iters.check654 = icmp ult i64 %i.ack, 8
  br i1 %min.iters.check654, label %.lr.ph.i.i.i.i.i.i.i357.preheader766, label %vector.memcheck649

vector.memcheck649:                               ; preds = %.lr.ph.i.i.i.i.i.i.i357.preheader
  %i.acl = sub i64 %i.abo, %i.ace
  %diff.check650 = icmp ugt i64 %i.acl, -32
  %i.acm = sub i64 %i.abq, %i.ace
  %diff.check651 = icmp ugt i64 %i.acm, -32
  %conflict.rdx652 = or i1 %diff.check650, %diff.check651
  br i1 %conflict.rdx652, label %.lr.ph.i.i.i.i.i.i.i357.preheader766, label %vector.ph655
end_hunk_0
