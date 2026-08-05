inline.NumInlined: 3253
inline.NumDeleted: 1381
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7rocksdb13InternalStats26DumpCFStatsNoFileHistogramEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index753 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next770, %vec.epilog.vector.body ]
  %vec.ind754 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next771, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi755 = phi <4 x i64> [ %i.vs, %vec.epilog.ph ], [ %i.vx, %vec.epilog.vector.body ]
  %vec.phi756 = phi <4 x i64> [ %i.vt, %vec.epilog.ph ], [ %i.wa, %vec.epilog.vector.body ]
  %vec.phi757 = phi <4 x i64> [ %i.vu, %vec.epilog.ph ], [ %i.vz, %vec.epilog.vector.body ]
  %wide.gep758 = getelementptr inbounds nuw [224 x i8], ptr %i.up, <4 x i64> %vec.ind754 ; 6 uses
  %wide.gep759 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep758, i64 24
  %wide.masked.gather760 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep759, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !977
  %wide.gep761 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep758, i64 16
  %wide.masked.gather762 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep761, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !978
  %wide.gep763 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep758, i64 48
  %wide.masked.gather764 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep763, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !979
  %i.vv = add <4 x i64> %wide.masked.gather760, %vec.phi755
  %i.vw = add <4 x i64> %i.vv, %wide.masked.gather762
  %i.vx = add <4 x i64> %i.vw, %wide.masked.gather764 ; 2 uses
  %wide.gep765 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep758, i64 56
  %wide.masked.gather766 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep765, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !964
  %wide.gep767 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep758, i64 72
  %wide.masked.gather768 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep767, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !965
  %i.vy = add <4 x i64> %wide.masked.gather766, %vec.phi757
  %i.vz = add <4 x i64> %i.vy, %wide.masked.gather768 ; 2 uses
  %wide.masked.gather769 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep758, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !980
  %i.wa = add <4 x i64> %wide.masked.gather769, %vec.phi756 ; 2 uses
  %index.next770 = add nuw i64 %index753, 4       ; 2 uses
  %vec.ind.next771 = add nuw nsw <4 x i64> %vec.ind754, splat (i64 4)
  %i.wb = icmp eq i64 %index.next770, %n.vec752
  br i1 %i.wb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !985

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.wc = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.vx) ; 2 uses
  %i.wd = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.wa) ; 2 uses
  %i.we = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.vz) ; 2 uses
  %cmp.n772 = icmp eq i64 %n.vec752, %wide.trip.count
  br i1 %cmp.n772, label %._crit_edge531, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec752, %vec.epilog.middle.block ]
  %.0108529.ph = phi i64 [ 0, %iter.check ], [ %i.vp, %vec.epilog.iter.check ], [ %i.wc, %vec.epilog.middle.block ]
  %.0110527.ph = phi i64 [ 0, %iter.check ], [ %i.vq, %vec.epilog.iter.check ], [ %i.wd, %vec.epilog.middle.block ]
  %.0111526.ph = phi i64 [ 0, %iter.check ], [ %i.vr, %vec.epilog.iter.check ], [ %i.we, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge531:                                   ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379
  %.0111.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379 ], [ %i.we, %vec.epilog.middle.block ], [ %i.vr, %middle.block ], [ %i.yb, %vec.epilog.scalar.ph ] ; 3 uses
  %.0110.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379 ], [ %i.wd, %vec.epilog.middle.block ], [ %i.vq, %middle.block ], [ %i.yd, %vec.epilog.scalar.ph ] ; 3 uses
  %.0108.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit379 ], [ %i.wc, %vec.epilog.middle.block ], [ %i.vp, %middle.block ], [ %i.ya, %vec.epilog.scalar.ph ] ; 3 uses
  %i.wf = uitofp i64 %.0111.lcssa to double       ; 2 uses
  %i.wg = fmul nnan double %i.wf, f0x3E10000000000000
  %i.wh = fcmp olt double %i.qf, 1.000000e-03
  %.sroa.speculated457 = select i1 %i.wh, double 1.000000e-03, double %i.qf
  %i.wi = uitofp i64 %.0108.lcssa to double       ; 2 uses
  %i.wj = fmul nnan double %i.wi, f0x3E10000000000000
  %i.wk = insertelement <2 x double> poison, double %i.wf, i64 0
  %i.wl = insertelement <2 x double> %i.wk, double %i.wi, i64 1
  %i.wm = fmul nnan <2 x double> %i.wl, splat (double f0x3EB0000000000000)
  %i.wn = insertelement <2 x double> poison, double %.sroa.speculated457, i64 0
  %i.wo = shufflevector <2 x double> %i.wn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wp = fdiv <2 x double> %i.wm, %i.wo          ; 2 uses
  %i.wq = uitofp i64 %.0110.lcssa to double
  %i.wr = fdiv double %i.wq, 1.000000e+06
  %i.ws = extractelement <2 x double> %i.wp, i64 0
  %i.wt = extractelement <2 x double> %i.wp, i64 1
  %i.wu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2000, ptr noundef nonnull @.str.317, double noundef %i.wg, double noundef %i.ws, double noundef %i.wj, double noundef %i.wt, double noundef %i.wr) #37 ; 0 uses
  %i.wv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #37 ; 6 uses
  %i.ww = load i64, ptr %i.q, align 8, !tbaa !38  ; 5 uses
  %i.wx = sub i64 9223372036854775807, %i.ww
  %i.wy = icmp ult i64 %i.wx, %i.wv
  br i1 %i.wy, label %bb.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i381

bb.dy:                                            ; preds = %._crit_edge531
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.327) #41
          to label %.noexc388 unwind label %bb.ex

.noexc388:                                        ; preds = %bb.dy
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i381: ; preds = %._crit_edge531
  %i.wz = add i64 %i.ww, %i.wv                    ; 3 uses
  %i.xa = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.xb = icmp eq ptr %i.xa, %i.w
  br i1 %i.xb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i387: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i381
  %i.xc = icmp ult i64 %i.ww, 16
  call void @llvm.assume(i1 %i.xc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i381
  %i.xd = load i64, ptr %i.w, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i387
  %i.xe = phi i64 [ %i.xd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i387 ]
  %.not.i.i384 = icmp ugt i64 %i.wz, %i.xe
  br i1 %.not.i.i384, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383
  %.not8.i.i385 = icmp eq i64 %i.wv, 0
  br i1 %.not8.i.i385, label %bb.ej, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.ww ; 2 uses
  %cond.i.i386 = icmp eq i64 %i.wv, 1
  br i1 %cond.i.i386, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.xg = load i8, ptr %i.a, align 16, !tbaa !15
  store i8 %i.xg, ptr %i.xf, align 1, !tbaa !15
  br label %bb.ej

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xf, ptr nonnull align 16 %i.a, i64 %i.wv, i1 false)
  br label %bb.ej

bb.ed:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i383
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ww, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.wv)
          to label %bb.ej unwind label %bb.ex

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.loopexit.split-lp:                               ; preds = %bb.ce, %bb.cj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ee:                                            ; preds = %bb.ck
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ef:                                            ; preds = %.invoke665, %bb.dc, %bb.cw, %bb.cq
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.eg:                                            ; preds = %bb.dj, %bb.de
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.eh:                                            ; preds = %bb.dq, %bb.dl
  %i.xk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ei:                                            ; preds = %bb.dx, %bb.ds
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0108529 = phi i64 [ %i.ya, %vec.epilog.scalar.ph ], [ %.0108529.ph, %vec.epilog.scalar.ph.preheader ]
  %.0110527 = phi i64 [ %i.yd, %vec.epilog.scalar.ph ], [ %.0110527.ph, %vec.epilog.scalar.ph.preheader ]
  %.0111526 = phi i64 [ %i.yb, %vec.epilog.scalar.ph ], [ %.0111526.ph, %vec.epilog.scalar.ph.preheader ]
  %i.xm = getelementptr inbounds nuw [224 x i8], ptr %i.up, i64 %indvars.iv ; 6 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !977
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  %i.xr = add i64 %i.xo, %.0108529
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 56
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xm, i64 72
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !965
  %i.xv = load i64, ptr %i.xs, align 8, !tbaa !964
  %i.xw = load i64, ptr %i.xq, align 8, !tbaa !979
  %i.xx = load i64, ptr %i.xp, align 8, !tbaa !978
  %i.xy = add i64 %i.xr, %i.xx
  %i.xz = add i64 %i.xv, %.0111526
  %i.ya = add i64 %i.xy, %i.xw                    ; 2 uses
  %i.yb = add i64 %i.xz, %i.xu                    ; 2 uses
  %i.yc = load i64, ptr %i.xm, align 8, !tbaa !980
  %i.yd = add i64 %i.yc, %.0110527                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge531, label %vec.epilog.scalar.ph, !llvm.loop !986

bb.ej:                                            ; preds = %bb.ec, %bb.eb, %bb.dz, %bb.ed
  store i64 %i.wz, ptr %i.q, align 8, !tbaa !38
  %i.ye = load ptr, ptr %2, align 8, !tbaa !9
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.wz
  store i8 0, ptr %i.yf, align 1, !tbaa !15
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 2 uses
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !987
  %i.yk = sub i64 %.0110.lcssa, %i.yj
  %i.yl = fcmp olt double %i.qi, 1.000000e-03
  %.sroa.speculated449 = select i1 %i.yl, double 1.000000e-03, double %i.qi
  %i.ym = load <2 x i64>, ptr %i.yg, align 8, !tbaa !267
  %i.yn = insertelement <2 x i64> poison, i64 %.0111.lcssa, i64 0
  %i.yo = insertelement <2 x i64> %i.yn, i64 %.0108.lcssa, i64 1
  %i.yp = sub <2 x i64> %i.yo, %i.ym
  %i.yq = uitofp <2 x i64> %i.yp to <2 x double>  ; 2 uses
  %24 = fmul nnan <2 x double> %i.yq, splat (double f0x3E10000000000000) ; 2 uses
  %i.yr = fmul nnan <2 x double> %i.yq, splat (double f0x3EB0000000000000)
  %i.ys = insertelement <2 x double> poison, double %.sroa.speculated449, i64 0
  %i.yt = shufflevector <2 x double> %i.ys, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yu = fdiv <2 x double> %i.yr, %i.yt          ; 2 uses
  %i.yv = uitofp i64 %i.yk to double
  %i.yw = fdiv double %i.yv, 1.000000e+06
  %25 = extractelement <2 x double> %i.yu, i64 0
  %26 = extractelement <2 x double> %i.yu, i64 1
  %i.yx = extractelement <2 x double> %24, i64 0
  %i.yy = extractelement <2 x double> %24, i64 1
  %i.yz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2000, ptr noundef nonnull @.str.318, double noundef %i.yx, double noundef %25, double noundef %i.yy, double noundef %26, double noundef %i.yw) #37 ; 0 uses
  %i.za = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #37 ; 6 uses
  %i.zb = load i64, ptr %i.q, align 8, !tbaa !38  ; 5 uses
  %i.zc = sub i64 9223372036854775807, %i.zb
  %i.zd = icmp ult i64 %i.zc, %i.za
  br i1 %i.zd, label %.invoke667, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i393: ; preds = %bb.ej
  %i.ze = add i64 %i.zb, %i.za                    ; 3 uses
  %i.zf = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.w
  br i1 %i.zg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i399: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i393
  %i.zh = icmp ult i64 %i.zb, 16
  call void @llvm.assume(i1 %i.zh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i393
  %i.zi = load i64, ptr %i.w, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i399
  %i.zj = phi i64 [ %i.zi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i399 ]
  %.not.i.i396 = icmp ugt i64 %i.ze, %i.zj
  br i1 %.not.i.i396, label %bb.eo, label %bb.ek

bb.ek:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395
  %.not8.i.i397 = icmp eq i64 %i.za, 0
  br i1 %.not8.i.i397, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zb ; 2 uses
  %cond.i.i398 = icmp eq i64 %i.za, 1
  br i1 %cond.i.i398, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.zl = load i8, ptr %i.a, align 16, !tbaa !15
  store i8 %i.zl, ptr %i.zk, align 1, !tbaa !15
  br label %bb.ep

bb.en:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zk, ptr nonnull align 16 %i.a, i64 %i.za, i1 false)
  br label %bb.ep

bb.eo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i395
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.zb, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.za)
          to label %bb.ep unwind label %bb.ey

bb.ep:                                            ; preds = %bb.en, %bb.em, %bb.ek, %bb.eo
  store i64 %i.ze, ptr %i.q, align 8, !tbaa !38
  %i.zm = load ptr, ptr %2, align 8, !tbaa !9
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.ze
  store i8 0, ptr %i.zn, align 1, !tbaa !15
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ah, i64 4280
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !437
  %i.zq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2000, ptr noundef nonnull @.str.319, i64 noundef %i.zp) #37 ; 0 uses
  %i.zr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #37 ; 6 uses
  %i.zs = load i64, ptr %i.q, align 8, !tbaa !38  ; 5 uses
  %i.zt = sub i64 9223372036854775807, %i.zs
  %i.zu = icmp ult i64 %i.zt, %i.zr
  br i1 %i.zu, label %.invoke667, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i403

.invoke667:                                       ; preds = %bb.ep, %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.327) #41
          to label %.cont668 unwind label %bb.ey

.cont668:                                         ; preds = %.invoke667
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i403: ; preds = %bb.ep
  %i.zv = add i64 %i.zs, %i.zr                    ; 3 uses
  %i.zw = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.w
  br i1 %i.zx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i409, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i409: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i403
  %i.zy = icmp ult i64 %i.zs, 16
  call void @llvm.assume(i1 %i.zy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i404: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i403
  %i.zz = load i64, ptr %i.w, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i404, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i409
  %i.aaa = phi i64 [ %i.zz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i404 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i409 ]
  %.not.i.i406 = icmp ugt i64 %i.zv, %i.aaa
  br i1 %.not.i.i406, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405
  %.not8.i.i407 = icmp eq i64 %i.zr, 0
  br i1 %.not8.i.i407, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zw, i64 %i.zs ; 2 uses
  %cond.i.i408 = icmp eq i64 %i.zr, 1
  br i1 %cond.i.i408, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aac = load i8, ptr %i.a, align 16, !tbaa !15
  store i8 %i.aac, ptr %i.aab, align 1, !tbaa !15
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aab, ptr nonnull align 16 %i.a, i64 %i.zr, i1 false)
  br label %bb.ev

bb.eu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i405
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.zs, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.zr)
          to label %bb.ev unwind label %bb.ey

bb.ev:                                            ; preds = %bb.et, %bb.es, %bb.eq, %bb.eu
  store i64 %i.zv, ptr %i.q, align 8, !tbaa !38
  %i.aad = load ptr, ptr %2, align 8, !tbaa !9
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.zv
  store i8 0, ptr %i.aae, align 1, !tbaa !15
  br i1 %1, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  store i64 %.0111.lcssa, ptr %i.yg, align 8, !tbaa !988
  store i64 %.0108.lcssa, ptr %i.yh, align 8, !tbaa !989
  store i64 %.0110.lcssa, ptr %i.yi, align 8, !tbaa !987
  br label %bb.ez

bb.ex:                                            ; preds = %bb.ed, %bb.dy
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ey:                                            ; preds = %.invoke667, %bb.eu, %bb.eo
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ez:                                            ; preds = %bb.ew, %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.aah = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.aah, ptr %21, align 8, !tbaa !37
  %i.aai = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.aai, align 8, !tbaa !38
  store i8 0, ptr %i.aah, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  invoke void @_ZN7rocksdb13InternalStats21DumpCFStatsWriteStallEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm(ptr noundef nonnull align 8 dereferenceable(2016) %0, ptr noundef nonnull %21, ptr noundef nonnull %i.e)
          to label %bb.fa unwind label %bb.fj

bb.fa:                                            ; preds = %bb.ez
  %i.aaj = load ptr, ptr %21, align 8, !tbaa !9   ; 3 uses
  %i.aak = load i64, ptr %i.aai, align 8, !tbaa !38 ; 6 uses
  %i.aal = load i64, ptr %i.q, align 8, !tbaa !38 ; 5 uses
  %i.aam = sub i64 9223372036854775807, %i.aal
  %i.aan = icmp ult i64 %i.aam, %i.aak
  br i1 %i.aan, label %bb.fb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.327) #41
          to label %.noexc414 unwind label %bb.fj

.noexc414:                                        ; preds = %bb.fb
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.fa
  %i.aao = add i64 %i.aal, %i.aak                 ; 3 uses
  %i.aap = load ptr, ptr %2, align 8, !tbaa !9    ; 2 uses
  %i.aaq = icmp eq ptr %i.aap, %i.w
  br i1 %i.aaq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aar = icmp ult i64 %i.aal, 16
  call void @llvm.assume(i1 %i.aar)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aas = load i64, ptr %i.w, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aat = phi i64 [ %i.aas, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i413 = icmp ugt i64 %i.aao, %i.aat
  br i1 %.not.i.i.i413, label %bb.fg, label %bb.fc

bb.fc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.aak, 0
  br i1 %.not8.i.i.i, label %bb.fh, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aal ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.aak, 1
  br i1 %cond.i.i.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aav = load i8, ptr %i.aaj, align 1, !tbaa !15
  store i8 %i.aav, ptr %i.aau, align 1, !tbaa !15
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aau, ptr align 1 %i.aaj, i64 %i.aak, i1 false)
  br label %bb.fh

bb.fg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.aal, i64 noundef 0, ptr noundef %i.aaj, i64 noundef %i.aak)
end_hunk_0
begin_hunk_1_@_ZN7rocksdb13InternalStats15CompactionStats3AddERKS1_:bb.a
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !1075
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !1076
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !1076
  %i.ej = add nsw i32 %i.ei, %i.eg
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !1076
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !1077
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1077
  %i.eo = add nsw i32 %i.en, %i.el
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !1077
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !1078
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !1078
  %i.et = add i64 %i.es, %i.eq
  store i64 %i.et, ptr %i.er, align 8, !tbaa !1078
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !1079
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !1079
  %i.ey = add i64 %i.ex, %i.ev
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !1079
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !963
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !963
  %i.fd = add i64 %i.fc, %i.fa
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !963
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !1080
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !1080
  %i.fi = add nsw i32 %i.fh, %i.ff
  store i32 %i.fi, ptr %i.fg, align 8, !tbaa !1080
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !399
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !399
  %i.fn = add nsw i32 %i.fm, %i.fl
  store i32 %i.fn, ptr %i.fk, align 4, !tbaa !399
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !399
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !399
  %i.fs = add nsw i32 %i.fr, %i.fp
  store i32 %i.fs, ptr %i.fq, align 8, !tbaa !399
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !399
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !399
  %i.fx = add nsw i32 %i.fw, %i.fu
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !399
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !399
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !399
  %i.gc = add nsw i32 %i.gb, %i.fz
  store i32 %i.gc, ptr %i.ga, align 8, !tbaa !399
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !399
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !399
  %i.gh = add nsw i32 %i.gg, %i.ge
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !399
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !399
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !399
  %i.gm = add nsw i32 %i.gl, %i.gj
  store i32 %i.gm, ptr %i.gk, align 8, !tbaa !399
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !399
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !399
  %i.gr = add nsw i32 %i.gq, %i.go
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !399
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !399
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !399
  %i.gw = add nsw i32 %i.gv, %i.gt
  store i32 %i.gw, ptr %i.gu, align 8, !tbaa !399
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !399
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !399
  %i.hb = add nsw i32 %i.ha, %i.gy
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !399
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !399
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !399
  %i.hg = add nsw i32 %i.hf, %i.hd
  store i32 %i.hg, ptr %i.he, align 8, !tbaa !399
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !399
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !399
  %i.hl = add nsw i32 %i.hk, %i.hi
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !399
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !399
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !399
  %i.hq = add nsw i32 %i.hp, %i.hn
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !399
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !399
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !399
  %i.hv = add nsw i32 %i.hu, %i.hs
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !399
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !399
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !399
  %i.ia = add nsw i32 %i.hz, %i.hx
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !399
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !399
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !399
  %i.if = add nsw i32 %i.ie, %i.ic
  store i32 %i.if, ptr %i.id, align 4, !tbaa !399
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !399
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !399
  %i.ik = add nsw i32 %i.ij, %i.ih
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !399
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.im = load i32, ptr %i.il, align 4, !tbaa !399
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !399
  %i.ip = add nsw i32 %i.io, %i.im
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !399
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !399
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !399
  %i.iu = add nsw i32 %i.it, %i.ir
  store i32 %i.iu, ptr %i.is, align 8, !tbaa !399
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !399
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !399
  %i.iz = add nsw i32 %i.iy, %i.iw
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !399
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !399
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !399
  %i.je = add nsw i32 %i.jd, %i.jb
  store i32 %i.je, ptr %i.jc, align 8, !tbaa !399
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !399
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !399
  %i.jj = add nsw i32 %i.ji, %i.jg
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !399
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_117PrepareLevelStatsEPSt3mapINS_13LevelStatTypeEdSt4lessIS2_ESaISt4pairIKS2_dEEEiidddRKNS_13InternalStats15CompactionStatsE(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !978
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !977  ; 2 uses
  %i.aa = add i64 %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %7 = load i64, ptr %i.ab, align 8, !tbaa !979
  %8 = add i64 %i.aa, %7
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %9 = load i64, ptr %i.ac, align 8, !tbaa !964   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !965
  %10 = add i64 %i.ae, %9
  %11 = sub i64 %9, %i.z
  %i.af = load i64, ptr %6, align 8, !tbaa !980
  %i.ag = add i64 %i.af, 1
  %i.ah = uitofp i64 %i.ag to double
  %i.ai = fdiv double %i.ah, 1.000000e+06         ; 2 uses
  %i.aj = sitofp i32 %1 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 1, ptr %i.a, align 4, !tbaa !28
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store double %i.aj, ptr %i.ak, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %12 = sitofp i32 %2 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 2, ptr %i.b, align 4, !tbaa !28
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  store double %12, ptr %i.al, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i32 3, ptr %i.c, align 4, !tbaa !28
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  store double %3, ptr %i.am, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 4, ptr %i.d, align 4, !tbaa !28
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  store double %4, ptr %i.an, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %13 = uitofp i64 %8 to double                   ; 2 uses
  %i.ao = fmul nnan double %13, f0x3E10000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store i32 5, ptr %i.e, align 4, !tbaa !28
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  store double %i.ao, ptr %i.ap, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !978
  %i.ar = uitofp i64 %i.aq to double
  %i.as = fmul nnan double %i.ar, f0x3E10000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store i32 6, ptr %i.f, align 4, !tbaa !28
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  store double %i.as, ptr %i.at, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  %i.au = load i64, ptr %i.y, align 8, !tbaa !977
  %i.av = uitofp i64 %i.au to double
  %i.aw = fmul nnan double %i.av, f0x3E10000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 7, ptr %i.g, align 4, !tbaa !28
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  store double %i.aw, ptr %i.ax, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  %i.ay = load i64, ptr %i.ac, align 8, !tbaa !964
  %i.az = uitofp i64 %i.ay to double
  %i.ba = fmul nnan double %i.az, f0x3E10000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  store i32 8, ptr %i.h, align 4, !tbaa !28
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  store double %i.ba, ptr %i.bb, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bc = load i64, ptr %14, align 8, !tbaa !1071
  %i.bd = uitofp i64 %i.bc to double
  %i.be = fmul nnan double %i.bd, f0x3E10000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37
  store i32 9, ptr %i.i, align 4, !tbaa !28
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  store double %i.be, ptr %i.bf, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  %i.bg = sitofp i64 %11 to double
  %i.bh = fmul nnan double %i.bg, f0x3E10000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #37
  store i32 10, ptr %i.j, align 4, !tbaa !28
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  store double %i.bh, ptr %i.bi, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bj = load i64, ptr %15, align 8, !tbaa !962
  %i.bk = uitofp i64 %i.bj to double
  %i.bl = fmul nnan double %i.bk, f0x3E10000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #37
  store i32 11, ptr %i.k, align 4, !tbaa !28
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  store double %i.bl, ptr %i.bm, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #37
  store i32 12, ptr %i.l, align 4, !tbaa !28
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  store double %5, ptr %i.bn, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #37
  %16 = fmul nnan double %13, f0x3EB0000000000000
  %17 = fdiv double %16, %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #37
  store i32 13, ptr %i.m, align 4, !tbaa !28
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  store double %17, ptr %i.bo, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #37
  store i32 14, ptr %i.n, align 4, !tbaa !28
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #37
  %19 = load i64, ptr %6, align 8, !tbaa !980
  %20 = insertelement <2 x i64> poison, i64 %10, i64 0
  %21 = insertelement <2 x i64> %20, i64 %19, i64 1
  %22 = uitofp <2 x i64> %21 to <2 x double>
  %23 = fmul nnan <2 x double> %22, <double f0x3EB0000000000000, double 1.000000e+00>
  %24 = insertelement <2 x double> <double poison, double 1.000000e+06>, double %i.ai, i64 0
  %25 = fdiv <2 x double> %23, %24                ; 2 uses
  %26 = extractelement <2 x double> %25, i64 0
  store double %26, ptr %18, align 8, !tbaa !1056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #37
  store i32 15, ptr %i.o, align 4, !tbaa !28
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  %27 = extractelement <2 x double> %25, i64 1
  store double %27, ptr %i.bp, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #37
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %29 = load i64, ptr %28, align 8, !tbaa !1064
  %30 = uitofp i64 %29 to double
  %31 = fdiv double %30, 1.000000e+06
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #37
  store i32 16, ptr %i.p, align 4, !tbaa !28
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
  store double %31, ptr %i.bq, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #37
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !1080
  %i.bt = sitofp i32 %i.bs to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #37
  store i32 17, ptr %i.q, align 4, !tbaa !28
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
  store double %i.bt, ptr %i.bu, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #37
  %i.bv = load i32, ptr %i.br, align 8, !tbaa !1080 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bx = load i64, ptr %6, align 8, !tbaa !980
  %i.by = uitofp i64 %i.bx to double
  %i.bz = fdiv double %i.by, 1.000000e+06
  %i.ca = sitofp i32 %i.bv to double
  %i.cb = fdiv double %i.bz, %i.ca
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.cc = phi double [ %i.cb, %bb.b ], [ 0.000000e+00, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #37
  store i32 18, ptr %i.r, align 4, !tbaa !28
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  store double %i.cc, ptr %i.cd, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #37
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !1078
  %i.cg = uitofp i64 %i.cf to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #37
  store i32 19, ptr %i.s, align 4, !tbaa !28
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.s)
  store double %i.cg, ptr %i.ch, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #37
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !1079
  %i.ck = uitofp i64 %i.cj to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #37
  store i32 20, ptr %i.t, align 4, !tbaa !28
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
  store double %i.ck, ptr %i.cl, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #37
  %i.cm = load i64, ptr %i.ab, align 8, !tbaa !979
  %i.cn = uitofp i64 %i.cm to double
  %i.co = fmul nnan double %i.cn, f0x3E10000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #37
  store i32 21, ptr %i.u, align 4, !tbaa !28
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.u)
  store double %i.co, ptr %i.cp, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #37
  %i.cq = load i64, ptr %i.ad, align 8, !tbaa !965
  %i.cr = uitofp i64 %i.cq to double
  %i.cs = fmul nnan double %i.cr, f0x3E10000000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #37
  store i32 22, ptr %i.v, align 4, !tbaa !28
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
  store double %i.cs, ptr %i.ct, align 8, !tbaa !1056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  invoke void @_ZNSt8_Rb_treeIN7rocksdb13LevelStatTypeESt4pairIKS1_dESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN7rocksdb13LevelStatTypeESt4pairIKS1_dESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #39
  unreachable

_ZNSt8_Rb_treeIN7rocksdb13LevelStatTypeESt4pairIKS1_dESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13InternalStats24DumpCFMapStatsByPriorityEPSt3mapIiS1_INS_13LevelStatTypeEdSt4lessIS2_ESaISt4pairIKS2_dEEES3_IiESaIS5_IKiS9_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2016) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.987", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.937", align 1    ; 3 uses
  %4 = alloca %"class.std::map.859", align 8      ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !801  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !799  ; 2 uses
  %.not13 = icmp eq ptr %i.d, %i.e
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.m = phi ptr [ %i.e, %.lr.ph ], [ %i.ah, %bb.k ] ; 2 uses
  %i.n = phi ptr [ %i.d, %.lr.ph ], [ %i.ai, %bb.k ]
  %.0912 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.k ] ; 3 uses
  %i.o = getelementptr inbounds nuw [224 x i8], ptr %i.m, i64 %.0912 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !980
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store i32 0, ptr %i.f, align 8, !tbaa !16
  store ptr null, ptr %i.g, align 8, !tbaa !21
  store ptr %i.f, ptr %i.h, align 8, !tbaa !22
  store ptr %i.f, ptr %i.i, align 8, !tbaa !23
  store i64 0, ptr %i.j, align 8, !tbaa !24
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_117PrepareLevelStatsEPSt3mapINS_13LevelStatTypeEdSt4lessIS2_ESaISt4pairIKS2_dEEEiidddRKNS_13InternalStats15CompactionStatsE(ptr noundef %4, i32 noundef 0, i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(224) %i.o)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.q = trunc i64 %.0912 to i32                  ; 3 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !399
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.r, %bb.d ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !399
  %i.u = icmp slt i32 %i.t, %i.q                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.u, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.u, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiS_IN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEES2_IiESaIS4_IKiS8_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !947

_ZNSt3mapIiS_IN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEES2_IiESaIS4_IKiS8_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.v = icmp eq ptr %.19.i.i.i.i, %i.l
  br i1 %i.v, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIiS_IN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEES2_IiESaIS4_IKiS8_EEE11lower_boundERSA_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !399
  %i.y = icmp sgt i32 %i.x, %i.q
  br i1 %i.y, label %.critedge.i, label %bb.f

.critedge.i:                                      ; preds = %bb.e, %_ZNSt3mapIiS_IN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEES2_IiESaIS4_IKiS8_EEE11lower_boundERSA_.exit.i, %bb.d
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ %.19.i.i.i.i, %_ZNSt3mapIiS_IN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEES2_IiESaIS4_IKiS8_EEE11lower_boundERSA_.exit.i ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %i.a, ptr %2, align 8, !tbaa !954, !alias.scope !1081
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.z = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS4_ESaIS0_IKS4_dEEEESt10_Select1stISB_ES5_IiESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESL_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.e
  %.sroa.06.0.i = phi ptr [ %i.z, %.noexc ], [ %.19.i.i.i.i, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.ab = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN7rocksdb13LevelStatTypeESt4pairIKS1_dESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEaSERKS8_.exit unwind label %bb.i ; 0 uses

_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEaSERKS8_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !21
  invoke void @_ZNSt8_Rb_treeIN7rocksdb13LevelStatTypeESt4pairIKS1_dESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ac)
          to label %_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEaSERKS8_.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #39
  unreachable

_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEED2Ev.exit: ; preds = %_ZNSt3mapIN7rocksdb13LevelStatTypeEdSt4lessIS1_ESaISt4pairIKS1_dEEEaSERKS8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !801
  %.pre14 = load ptr, ptr %i.b, align 8, !tbaa !799
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
end_hunk_1
