Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_anaeig?download=true
inline.NumInlined: 415
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_Z10gmx_anaeigiPPc:bb.a
bb.eh:                                            ; preds = %bb.ea
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %.pre804 = load i32, ptr %i.an, align 4, !tbaa !9
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.dy
  %i.wk = phi i32 [ %.pre804, %bb.eh ], [ %.pre805, %bb.dy ]
  %i.wl = sext i32 %i.wk to i64
  %i.wm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.111, i32 noundef 1433, i64 noundef range(i64 -2147483648, 2147483648) %i.wl, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit346 unwind label %.loopexit.split-lp605 ; 19 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit346:       ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.wn = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  store ptr %i.wn, ptr %39, align 8, !tbaa !33
  %i.wo = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 0, ptr %i.wo, align 8, !tbaa !34
  store i8 0, ptr %i.wn, align 8, !tbaa !26
  %i.wp = load i8, ptr %i.ab, align 1, !range !153
  %i.wq = trunc nuw i8 %i.wp to i1
  %or.cond41 = select i1 %spec.select320, i1 %i.wq, i1 false
  br i1 %or.cond41, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit346
  %i.wr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.132, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader: ; preds = %bb.ej
  %i.ws = load i32, ptr %i.an, align 4, !tbaa !9  ; 6 uses
  store i32 0, ptr %i.ap, align 4, !tbaa !9
  %i.wt = icmp sgt i32 %i.ws, 0
  br i1 %i.wt, label %.lr.ph667, label %.loopexit598

.lr.ph667:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader
  %i.wu = getelementptr inbounds nuw i8, ptr %.0243, i64 8
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !167 ; 5 uses
  %i.ww = load ptr, ptr %i.ar, align 8, !tbaa !134 ; 5 uses
  %wide.trip.count775 = zext nneg i32 %i.ws to i64 ; 2 uses
  %xtraiter1314 = and i64 %wide.trip.count775, 3  ; 3 uses
  %i.wx = icmp ult i32 %i.ws, 4
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader, label %.lr.ph667.new

.lr.ph667.new:                                    ; preds = %.lr.ph667
  %unroll_iter1318 = and i64 %wide.trip.count775, 2147483644
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %.lr.ph667.new
  %indvars.iv772 = phi i64 [ 0, %.lr.ph667.new ], [ %indvars.iv.next773.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ] ; 6 uses
  %niter1319 = phi i64 [ 0, %.lr.ph667.new ], [ %niter1319.next.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv772
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !9
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [36 x i8], ptr %i.wv, i64 %i.xa
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !166
  %i.xd = call noundef float @sqrtf(float noundef %i.xc) #23
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv772
  store float %i.xd, ptr %i.xe, align 4, !tbaa !28
  %indvars.iv.next773 = or disjoint i64 %indvars.iv772, 1 ; 3 uses
  %i.xf = trunc nuw nsw i64 %indvars.iv.next773 to i32
  store i32 %i.xf, ptr %i.ap, align 4, !tbaa !9
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv.next773
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !9
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds [36 x i8], ptr %i.wv, i64 %i.xi
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !166
  %i.xl = call noundef float @sqrtf(float noundef %i.xk) #23
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.next773
  store float %i.xl, ptr %i.xm, align 4, !tbaa !28
  %indvars.iv.next773.1 = or disjoint i64 %indvars.iv772, 2 ; 3 uses
  %i.xn = trunc nuw nsw i64 %indvars.iv.next773.1 to i32
  store i32 %i.xn, ptr %i.ap, align 4, !tbaa !9
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv.next773.1
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !9
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds [36 x i8], ptr %i.wv, i64 %i.xq
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !166
  %i.xt = call noundef float @sqrtf(float noundef %i.xs) #23
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.next773.1
  store float %i.xt, ptr %i.xu, align 4, !tbaa !28
  %indvars.iv.next773.2 = or disjoint i64 %indvars.iv772, 3 ; 3 uses
  %i.xv = trunc nuw nsw i64 %indvars.iv.next773.2 to i32
  store i32 %i.xv, ptr %i.ap, align 4, !tbaa !9
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv.next773.2
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !9
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [36 x i8], ptr %i.wv, i64 %i.xy
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !166
  %i.yb = call noundef float @sqrtf(float noundef %i.ya) #23
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.next773.2
  store float %i.yb, ptr %i.yc, align 4, !tbaa !28
  %indvars.iv.next773.3 = add nuw nsw i64 %indvars.iv772, 4 ; 3 uses
  %i.yd = trunc nuw nsw i64 %indvars.iv.next773.3 to i32
  store i32 %i.yd, ptr %i.ap, align 4, !tbaa !9
  %niter1319.next.3 = add i64 %niter1319, 4       ; 2 uses
  %niter1319.ncmp.3 = icmp eq i64 %niter1319.next.3, %unroll_iter1318
  br i1 %niter1319.ncmp.3, label %.loopexit598.loopexit.unr-lcssa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, !llvm.loop !53

.loopexit:                                        ; preds = %.lr.ph185.split.us.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph185.split.split.us.i
  %lpad.loopexit562 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph185.split.split.i
  %lpad.loopexit566 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.is
  %lpad.loopexit570 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.hs
  %lpad.loopexit573 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph580.i
  %lpad.loopexit575 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.gr
  %lpad.loopexit580 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.gw, %._crit_edge577.i, %.noexc395, %bb.gs, %bb.gp
  %lpad.loopexit582 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph77.us.i, %.noexc365
  %lpad.loopexit585 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc368, %bb.fr
  %lpad.loopexit588 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit, %bb.ew
  %lpad.loopexit594 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.fk, %bb.fx, %bb.kk, %bb.lk, %bb.ej, %bb.ek, %bb.ep, %bb.er, %bb.eu, %.loopexit593, %._crit_edge.i, %.noexc362, %.noexc363, %.split.us.i, %bb.fy, %bb.fz, %._crit_edge.i372, %bb.ge, %bb.gh, %bb.gl, %bb.gm, %bb.gx, %.noexc399, %bb.gy, %bb.gz, %bb.ha, %bb.hc, %._crit_edge581.i, %bb.hh, %._crit_edge584.i, %bb.hy, %bb.ib, %bb.ie, %.noexc413, %.noexc414, %.noexc415, %.noexc416, %bb.ij, %._crit_edge593.i, %bb.iv, %.noexc421, %bb.jb, %.noexc424, %.loopexit540.thread.i, %.loopexit540.i, %bb.km, %.loopexit155.i, %.noexc449, %._crit_edge.i431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ek:                                            ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit346
  %i.ye = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.133, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader: ; preds = %bb.ek
  %i.yf = load i32, ptr %i.an, align 4, !tbaa !9  ; 8 uses
  %i.yg = icmp sgt i32 %i.yf, 0
  br i1 %i.yg, label %iter.check1077, label %.loopexit599

iter.check1077:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader
  %wide.trip.count770 = zext nneg i32 %i.yf to i64 ; 6 uses
  %min.iters.check1066 = icmp ult i32 %i.yf, 4
  br i1 %min.iters.check1066, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1296, label %vector.main.loop.iter.check1067

vector.main.loop.iter.check1067:                  ; preds = %iter.check1077
  %min.iters.check1068 = icmp ult i32 %i.yf, 32
  br i1 %min.iters.check1068, label %vec.epilog.ph1081, label %vector.ph1069

vector.ph1069:                                    ; preds = %vector.main.loop.iter.check1067
  %i.yh = and i64 %wide.trip.count770, 28
  %n.vec1070 = and i64 %wide.trip.count770, 2147483616 ; 4 uses
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.ph1069, %vector.body1071
  %index1072 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1073, %vector.body1071 ] ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %index1072 ; 4 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 32
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 64
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.yi, align 4, !tbaa !28
  store <8 x float> splat (float 1.000000e+00), ptr %i.yj, align 4, !tbaa !28
  store <8 x float> splat (float 1.000000e+00), ptr %i.yk, align 4, !tbaa !28
  store <8 x float> splat (float 1.000000e+00), ptr %i.yl, align 4, !tbaa !28
  %index.next1073 = add nuw i64 %index1072, 32    ; 2 uses
  %i.ym = icmp eq i64 %index.next1073, %n.vec1070
  br i1 %i.ym, label %middle.block1074, label %vector.body1071, !llvm.loop !54

middle.block1074:                                 ; preds = %vector.body1071
  %cmp.n1075 = icmp eq i64 %n.vec1070, %wide.trip.count770
  br i1 %cmp.n1075, label %.loopexit599, label %vec.epilog.iter.check1079

vec.epilog.iter.check1079:                        ; preds = %middle.block1074
  %min.epilog.iters.check1080 = icmp eq i64 %i.yh, 0
  br i1 %min.epilog.iters.check1080, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1296, label %vec.epilog.ph1081, !prof !35

vec.epilog.ph1081:                                ; preds = %vector.main.loop.iter.check1067, %vec.epilog.iter.check1079
  %vec.epilog.resume.val1076 = phi i64 [ %n.vec1070, %vec.epilog.iter.check1079 ], [ 0, %vector.main.loop.iter.check1067 ]
  %n.vec1082 = and i64 %wide.trip.count770, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1083

vec.epilog.vector.body1083:                       ; preds = %vec.epilog.vector.body1083, %vec.epilog.ph1081
  %index1084 = phi i64 [ %vec.epilog.resume.val1076, %vec.epilog.ph1081 ], [ %index.next1085, %vec.epilog.vector.body1083 ] ; 2 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %index1084
  store <4 x float> splat (float 1.000000e+00), ptr %i.yn, align 4, !tbaa !28
  %index.next1085 = add nuw i64 %index1084, 4     ; 2 uses
  %i.yo = icmp eq i64 %index.next1085, %n.vec1082
  br i1 %i.yo, label %vec.epilog.middle.block1086, label %vec.epilog.vector.body1083, !llvm.loop !55

vec.epilog.middle.block1086:                      ; preds = %vec.epilog.vector.body1083
  %cmp.n1087 = icmp eq i64 %n.vec1082, %wide.trip.count770
  br i1 %cmp.n1087, label %.loopexit599, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1296: ; preds = %iter.check1077, %vec.epilog.iter.check1079, %vec.epilog.middle.block1086
  %indvars.iv767.ph = phi i64 [ 0, %iter.check1077 ], [ %n.vec1070, %vec.epilog.iter.check1079 ], [ %n.vec1082, %vec.epilog.middle.block1086 ]
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349
  %indvars.iv767 = phi i64 [ %indvars.iv.next768, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349 ], [ %indvars.iv767.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader1296 ] ; 2 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv767
  store float 1.000000e+00, ptr %i.yp, align 4, !tbaa !28
  %indvars.iv.next768 = add nuw nsw i64 %indvars.iv767, 1 ; 2 uses
  %exitcond771.not = icmp eq i64 %indvars.iv.next768, %wide.trip.count770
  br i1 %exitcond771.not, label %.loopexit599, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349, !llvm.loop !56

.loopexit599:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349, %middle.block1074, %vec.epilog.middle.block1086, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader
  %storemerge288.lcssa = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349.preheader ], [ %i.yf, %middle.block1074 ], [ %i.yf, %vec.epilog.middle.block1086 ], [ %i.yf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit349 ]
  store i32 %storemerge288.lcssa, ptr %i.ap, align 4, !tbaa !9
  br label %.loopexit598

.loopexit598.loopexit.unr-lcssa:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %lcmp.mod1316.not = icmp eq i64 %xtraiter1314, 0
  br i1 %lcmp.mod1316.not, label %.loopexit598, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader: ; preds = %.loopexit598.loopexit.unr-lcssa, %.lr.ph667
  %indvars.iv772.epil.init = phi i64 [ 0, %.lr.ph667 ], [ %indvars.iv.next773.3, %.loopexit598.loopexit.unr-lcssa ]
  %lcmp.mod1317 = icmp ne i64 %xtraiter1314, 0
  call void @llvm.assume(i1 %lcmp.mod1317)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader
  %indvars.iv772.epil = phi i64 [ %indvars.iv772.epil.init, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader ], [ %indvars.iv.next773.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil ] ; 3 uses
  %epil.iter1315 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil.preheader ], [ %epil.iter1315.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil ]
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv772.epil
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !9
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds [36 x i8], ptr %i.wv, i64 %i.ys
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !166
  %i.yv = call noundef float @sqrtf(float noundef %i.yu) #23
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv772.epil
  store float %i.yv, ptr %i.yw, align 4, !tbaa !28
  %indvars.iv.next773.epil = add nuw nsw i64 %indvars.iv772.epil, 1 ; 2 uses
  %i.yx = trunc nuw nsw i64 %indvars.iv.next773.epil to i32
  store i32 %i.yx, ptr %i.ap, align 4, !tbaa !9
  %epil.iter1315.next = add i64 %epil.iter1315, 1 ; 2 uses
  %epil.iter1315.cmp.not = icmp eq i64 %epil.iter1315.next, %xtraiter1314
  br i1 %epil.iter1315.cmp.not, label %.loopexit598, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil, !llvm.loop !57

.loopexit598:                                     ; preds = %.loopexit598.loopexit.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader, %.loopexit599
  %i.yy = phi i32 [ %i.yf, %.loopexit599 ], [ %i.ws, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader ], [ %i.ws, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.epil ], [ %i.ws, %.loopexit598.loopexit.unr-lcssa ] ; 5 uses
  br i1 %spec.select318, label %.preheader597, label %bb.el

.preheader597:                                    ; preds = %.loopexit598
  %i.yz = icmp sgt i32 %i.yy, 0
  br i1 %i.yz, label %.preheader596.lr.ph, label %._crit_edge674

.preheader596.lr.ph:                              ; preds = %.preheader597
  %i.za = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 3 uses
  %i.zb = load ptr, ptr %i.aj, align 8, !tbaa !15 ; 3 uses
  %wide.trip.count784 = zext nneg i32 %i.yy to i64 ; 2 uses
  %xtraiter1320 = and i64 %wide.trip.count784, 1
  %i.zc = icmp eq i32 %i.yy, 1
  br i1 %i.zc, label %.preheader596.epil.preheader, label %.preheader596.lr.ph.new

.preheader596.lr.ph.new:                          ; preds = %.preheader596.lr.ph
  %unroll_iter1326 = and i64 %wide.trip.count784, 2147483646
  br label %.preheader596

.preheader596:                                    ; preds = %.preheader596, %.preheader596.lr.ph.new
  %indvars.iv781 = phi i64 [ 0, %.preheader596.lr.ph.new ], [ %indvars.iv.next782.1, %.preheader596 ] ; 5 uses
  %.0239673 = phi float [ 0.000000e+00, %.preheader596.lr.ph.new ], [ %i.abd, %.preheader596 ]
  %.0241672 = phi float [ 0.000000e+00, %.preheader596.lr.ph.new ], [ %i.abe, %.preheader596 ]
  %niter1327 = phi i64 [ 0, %.preheader596.lr.ph.new ], [ %niter1327.next.1, %.preheader596 ]
  %i.zd = getelementptr inbounds nuw [12 x i8], ptr %i.za, i64 %indvars.iv781 ; 2 uses
  %i.ze = getelementptr inbounds nuw [12 x i8], ptr %i.zb, i64 %indvars.iv781 ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv781
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !28 ; 4 uses
  %i.zh = fmul float %i.zg, %i.zg                 ; 3 uses
  %i.zi = fadd float %.0241672, %i.zh
  %i.zj = load <2 x float>, ptr %i.zd, align 4, !tbaa !28
  %i.zk = load <2 x float>, ptr %i.ze, align 4, !tbaa !28
  %i.zl = fsub <2 x float> %i.zj, %i.zk
  %i.zm = insertelement <2 x float> poison, float %i.zg, i64 0
  %i.zn = shufflevector <2 x float> %i.zm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zo = fmul <2 x float> %i.zl, %i.zn           ; 2 uses
  %i.zp = fmul <2 x float> %i.zo, %i.zo           ; 2 uses
  %i.zq = extractelement <2 x float> %i.zp, i64 0
  %i.zr = fadd float %.0239673, %i.zq
  %i.zs = extractelement <2 x float> %i.zp, i64 1
  %i.zt = fadd float %i.zr, %i.zs
  %i.zu = fadd float %i.zi, %i.zh
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !28
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !28
  %i.zz = fsub float %i.zw, %i.zy
  %i.aaa = fmul float %i.zz, %i.zg                ; 2 uses
  %i.aab = fmul float %i.aaa, %i.aaa
  %i.aac = fadd float %i.zt, %i.aab
  %i.aad = fadd float %i.zu, %i.zh
  %indvars.iv.next782 = or disjoint i64 %indvars.iv781, 1 ; 3 uses
  %i.aae = getelementptr inbounds nuw [12 x i8], ptr %i.za, i64 %indvars.iv.next782 ; 2 uses
  %i.aaf = getelementptr inbounds nuw [12 x i8], ptr %i.zb, i64 %indvars.iv.next782 ; 2 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.next782
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !28 ; 4 uses
  %i.aai = fmul float %i.aah, %i.aah              ; 3 uses
  %i.aaj = fadd float %i.aad, %i.aai
  %i.aak = load <2 x float>, ptr %i.aae, align 4, !tbaa !28
  %i.aal = load <2 x float>, ptr %i.aaf, align 4, !tbaa !28
  %i.aam = fsub <2 x float> %i.aak, %i.aal
  %i.aan = insertelement <2 x float> poison, float %i.aah, i64 0
  %i.aao = shufflevector <2 x float> %i.aan, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aap = fmul <2 x float> %i.aam, %i.aao        ; 2 uses
  %i.aaq = fmul <2 x float> %i.aap, %i.aap        ; 2 uses
  %i.aar = extractelement <2 x float> %i.aaq, i64 0
  %i.aas = fadd float %i.aac, %i.aar
  %i.aat = extractelement <2 x float> %i.aaq, i64 1
  %i.aau = fadd float %i.aas, %i.aat
  %i.aav = fadd float %i.aaj, %i.aai
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !28
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !28
  %i.aba = fsub float %i.aax, %i.aaz
  %i.abb = fmul float %i.aba, %i.aah              ; 2 uses
  %i.abc = fmul float %i.abb, %i.abb
  %i.abd = fadd float %i.aau, %i.abc              ; 3 uses
  %i.abe = fadd float %i.aav, %i.aai              ; 3 uses
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv781, 2 ; 2 uses
  %niter1327.next.1 = add i64 %niter1327, 2       ; 2 uses
  %niter1327.ncmp.1 = icmp eq i64 %niter1327.next.1, %unroll_iter1326
  br i1 %niter1327.ncmp.1, label %._crit_edge674.loopexit.unr-lcssa, label %.preheader596, !llvm.loop !58

._crit_edge674.loopexit.unr-lcssa:                ; preds = %.preheader596
  %lcmp.mod1322.not = icmp eq i64 %xtraiter1320, 0
  br i1 %lcmp.mod1322.not, label %._crit_edge674.loopexit, label %.preheader596.epil.preheader

.preheader596.epil.preheader:                     ; preds = %._crit_edge674.loopexit.unr-lcssa, %.preheader596.lr.ph
  %indvars.iv781.epil.init = phi i64 [ 0, %.preheader596.lr.ph ], [ %indvars.iv.next782.1, %._crit_edge674.loopexit.unr-lcssa ] ; 3 uses
  %.0239673.epil.init = phi float [ 0.000000e+00, %.preheader596.lr.ph ], [ %i.abd, %._crit_edge674.loopexit.unr-lcssa ]
  %.0241672.epil.init = phi float [ 0.000000e+00, %.preheader596.lr.ph ], [ %i.abe, %._crit_edge674.loopexit.unr-lcssa ]
  %lcmp.mod1325 = trunc i32 %i.yy to i1
  call void @llvm.assume(i1 %lcmp.mod1325)
  %i.abf = getelementptr inbounds nuw [12 x i8], ptr %i.za, i64 %indvars.iv781.epil.init ; 2 uses
  %i.abg = getelementptr inbounds nuw [12 x i8], ptr %i.zb, i64 %indvars.iv781.epil.init ; 2 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv781.epil.init
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !28 ; 4 uses
  %i.abj = fmul float %i.abi, %i.abi              ; 3 uses
  %i.abk = fadd float %.0241672.epil.init, %i.abj
  %i.abl = load <2 x float>, ptr %i.abf, align 4, !tbaa !28
  %i.abm = load <2 x float>, ptr %i.abg, align 4, !tbaa !28
  %i.abn = fsub <2 x float> %i.abl, %i.abm
  %i.abo = insertelement <2 x float> poison, float %i.abi, i64 0
  %i.abp = shufflevector <2 x float> %i.abo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abq = fmul <2 x float> %i.abn, %i.abp        ; 2 uses
  %i.abr = fmul <2 x float> %i.abq, %i.abq        ; 2 uses
  %i.abs = extractelement <2 x float> %i.abr, i64 0
  %i.abt = fadd float %.0239673.epil.init, %i.abs
  %i.abu = extractelement <2 x float> %i.abr, i64 1
  %i.abv = fadd float %i.abt, %i.abu
  %i.abw = fadd float %i.abk, %i.abj
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !28
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !28
  %i.acb = fsub float %i.aby, %i.aca
  %i.acc = fmul float %i.acb, %i.abi              ; 2 uses
  %i.acd = fmul float %i.acc, %i.acc
  %i.ace = fadd float %i.abv, %i.acd
  %i.acf = fadd float %i.abw, %i.abj
  br label %._crit_edge674.loopexit

._crit_edge674.loopexit:                          ; preds = %._crit_edge674.loopexit.unr-lcssa, %.preheader596.epil.preheader
  %.lcssa1295 = phi float [ %i.abd, %._crit_edge674.loopexit.unr-lcssa ], [ %i.ace, %.preheader596.epil.preheader ]
  %.lcssa1294 = phi float [ %i.abe, %._crit_edge674.loopexit.unr-lcssa ], [ %i.acf, %.preheader596.epil.preheader ]
  %i.acg = fdiv float %.lcssa1295, %.lcssa1294
  br label %._crit_edge674

._crit_edge674:                                   ; preds = %._crit_edge674.loopexit, %.preheader597
  %storemerge290.lcssa = phi i32 [ 0, %.preheader597 ], [ %i.yy, %._crit_edge674.loopexit ]
  %i.ach = phi float [ +qnan, %.preheader597 ], [ %i.acg, %._crit_edge674.loopexit ]
  store i32 %storemerge290.lcssa, ptr %i.ap, align 4, !tbaa !9
  %i.aci = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.acj = call noundef float @sqrtf(float noundef %i.ach) #23
  %i.ack = fpext float %i.acj to double
end_hunk_0
begin_hunk_1_@_Z10gmx_anaeigiPPc:bb.a

bb.es:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit353
  %i.adn = add nsw i32 %i.adk, 1
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  store i32 %i.adn, ptr %i.ado, align 4, !tbaa !9
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit353
  %i.adp = load i32, ptr @_ZZ10gmx_anaeigiPPcE4last, align 4, !tbaa !9
  %i.adq = add nsw i32 %i.adp, -1
  %i.adr = getelementptr [4 x i8], ptr %i.adh, i64 %i.adg
  %i.ads = getelementptr i8, ptr %i.adr, i64 -4
  store i32 %i.adq, ptr %i.ads, align 4, !tbaa !9
  br label %.loopexit593

bb.eu:                                            ; preds = %bb.eq
  %i.adt = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.111, i32 noundef 1504, i64 noundef 2, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355:       ; preds = %bb.eu
  %i.adu = load i32, ptr @_ZZ10gmx_anaeigiPPcE5first, align 4, !tbaa !9
  %i.adv = add nsw i32 %i.adu, -1
  store i32 %i.adv, ptr %i.adt, align 4, !tbaa !9
  %i.adw = load i32, ptr @_ZZ10gmx_anaeigiPPcE4last, align 4, !tbaa !9
  %i.adx = add nsw i32 %i.adw, -1
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adt, i64 4
  store i32 %i.adx, ptr %i.ady, align 4, !tbaa !9
  br label %.loopexit593

bb.ev:                                            ; preds = %bb.en
  %puts291 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fe, %bb.ev
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %bb.fe ], [ -1, %bb.ev ] ; 2 uses
  %.0550 = phi ptr [ %i.aea, %bb.fe ], [ null, %bb.ev ]
  %indvars.iv.next787 = add nsw i64 %indvars.iv786, 1 ; 3 uses
  %i.adz = add nsw i64 %indvars.iv786, 2
  %i.aea = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.111, i32 noundef 1518, ptr noundef %.0550, i64 noundef range(i64 -2147483646, 2147483648) %i.adz, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit:        ; preds = %bb.ew
  %i.aeb = getelementptr inbounds [4 x i8], ptr %i.aea, i64 %indvars.iv.next787 ; 3 uses
  %i.aec = invoke i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.137, ptr noundef %i.aeb)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ex:                                            ; preds = %_ZL15gmx_srenew_implIiEvPKcS1_iRPT_m.exit
  %.not292 = icmp eq i32 %i.aec, 1
  br i1 %.not292, label %bb.fe, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %bb.ez unwind label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %40, i32 noundef 1521, ptr noundef nonnull @.str.138) #26
          to label %bb.fa unwind label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  unreachable

bb.fb:                                            ; preds = %bb.ey
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.fc:                                            ; preds = %bb.ez
  %i.aee = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %40) #23
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.pn294 = phi { ptr, i32 } [ %i.aee, %bb.fc ], [ %i.aed, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %.body

bb.fe:                                            ; preds = %bb.ex
  %i.aef = load i32, ptr %i.aeb, align 4, !tbaa !9 ; 2 uses
  %i.aeg = add nsw i32 %i.aef, -1
  store i32 %i.aeg, ptr %i.aeb, align 4, !tbaa !9
  %i.aeh = icmp sgt i32 %i.aef, 0
  br i1 %i.aeh, label %bb.ew, label %bb.ff, !llvm.loop !60

bb.ff:                                            ; preds = %bb.fe
  %i.aei = trunc nuw nsw i64 %indvars.iv.next787 to i32
  %putchar293 = call i32 @putchar(i32 10)         ; 0 uses
  br label %.loopexit593

.loopexit593:                                     ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355, %bb.et, %bb.ff
  %.1551 = phi ptr [ %i.aea, %bb.ff ], [ %i.adh, %bb.et ], [ %i.adt, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 ], [ %i.acw, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader ], [ %i.acw, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ]
  %.1549 = phi i32 [ %i.aei, %bb.ff ], [ %.sroa.speculated, %bb.et ], [ 2, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 ], [ %i.acu, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader ], [ %i.acu, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ] ; 3 uses
  %i.aej = sext i32 %.1549 to i64
  %i.aek = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.111, i32 noundef 1529, i64 noundef range(i64 -2147483648, 2147483648) %i.aej, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 43 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358.preheader: ; preds = %.loopexit593
  store i32 0, ptr %i.ap, align 4, !tbaa !9
  %i.ael = icmp sgt i32 %.1549, 0
  br i1 %i.ael, label %.preheader.lr.ph, label %.thread

.thread:                                          ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358.preheader
  %i.aem = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.aen = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aem, ptr noundef nonnull @.str.140, i32 noundef 0) #24 ; 0 uses
  %i.aeo = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc962 = call i32 @fputc(i32 58, ptr %i.aeo) ; 0 uses
  br label %.loopexit592

.preheader.lr.ph:                                 ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358.preheader
  %i.aep = load ptr, ptr %i.ag, align 8
  %.pre807 = load i32, ptr %i.ae, align 4, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.aeq = phi i32 [ %.pre807, %.preheader.lr.ph ], [ %i.afc, %.critedge ] ; 4 uses
  %.0230684 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1231, %.critedge ] ; 4 uses
  %storemerge297683 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.afd, %.critedge ] ; 3 uses
  %i.aer = icmp sgt i32 %i.aeq, 0
  br i1 %i.aer, label %.lr.ph682, label %.critedge

.lr.ph682:                                        ; preds = %.preheader
  %i.aes = sext i32 %storemerge297683 to i64
  %i.aet = getelementptr inbounds [4 x i8], ptr %.1551, i64 %i.aes
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !9
  %wide.trip.count792 = zext nneg i32 %i.aeq to i64
  br label %bb.fg

bb.fg:                                            ; preds = %.lr.ph682, %bb.fh
  %indvars.iv789 = phi i64 [ 0, %.lr.ph682 ], [ %indvars.iv.next790, %bb.fh ] ; 3 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv789
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !9
  %.not301 = icmp eq i32 %i.aew, %i.aeu
  br i1 %.not301, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 1 ; 2 uses
  %exitcond793.not = icmp eq i64 %indvars.iv.next790, %wide.trip.count792
  br i1 %exitcond793.not, label %.critedge, label %bb.fg, !llvm.loop !61

bb.fi:                                            ; preds = %bb.fg
  %i.aex = trunc nuw nsw i64 %indvars.iv789 to i32
  %i.aey = sext i32 %.0230684 to i64
  %i.aez = getelementptr inbounds [4 x i8], ptr %i.aek, i64 %i.aey
  store i32 %i.aex, ptr %i.aez, align 4, !tbaa !9
  %i.afa = add nsw i32 %.0230684, 1
  %.pre806 = load i32, ptr %i.ae, align 4, !tbaa !9
  %.pre808 = load i32, ptr %i.ap, align 4, !tbaa !9
  br label %.critedge

.critedge:                                        ; preds = %bb.fh, %.preheader, %bb.fi
  %i.afb = phi i32 [ %.pre808, %bb.fi ], [ %storemerge297683, %.preheader ], [ %storemerge297683, %bb.fh ]
  %i.afc = phi i32 [ %.pre806, %bb.fi ], [ %i.aeq, %.preheader ], [ %i.aeq, %bb.fh ]
  %.1231 = phi i32 [ %i.afa, %bb.fi ], [ %.0230684, %.preheader ], [ %.0230684, %bb.fh ] ; 8 uses
  %i.afd = add nsw i32 %i.afb, 1                  ; 3 uses
  store i32 %i.afd, ptr %i.ap, align 4, !tbaa !9
  %i.afe = icmp slt i32 %i.afd, %.1549
  br i1 %i.afe, label %.preheader, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge, !llvm.loop !62

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge: ; preds = %.critedge
  %i.aff = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.afg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aff, ptr noundef nonnull @.str.140, i32 noundef %.1231) #24 ; 0 uses
  %i.afh = icmp slt i32 %.1231, 101
  br i1 %i.afh, label %bb.fj, label %.loopexit592

bb.fj:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge
  %i.afi = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = call i32 @fputc(i32 58, ptr %i.afi)    ; 0 uses
  %i.afj = icmp sgt i32 %.1231, 0
  br i1 %i.afj, label %.lr.ph688.preheader, label %.loopexit592

.lr.ph688.preheader:                              ; preds = %bb.fj
  %wide.trip.count797 = zext nneg i32 %.1231 to i64
  br label %.lr.ph688

.lr.ph688:                                        ; preds = %.lr.ph688.preheader, %.lr.ph688
  %indvars.iv794 = phi i64 [ 0, %.lr.ph688.preheader ], [ %indvars.iv.next795, %.lr.ph688 ] ; 2 uses
  %i.afk = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.afl = load ptr, ptr %i.ag, align 8, !tbaa !134
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv794
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !9
  %i.afo = sext i32 %i.afn to i64
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.afl, i64 %i.afo
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !9
  %i.afr = add nsw i32 %i.afq, 1
  %i.afs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afk, ptr noundef nonnull @.str.142, i32 noundef %i.afr) #24 ; 0 uses
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 1 ; 2 uses
  %exitcond798.not = icmp eq i64 %indvars.iv.next795, %wide.trip.count797
  br i1 %exitcond798.not, label %.loopexit592, label %.lr.ph688, !llvm.loop !63

.loopexit592:                                     ; preds = %.lr.ph688, %.thread, %bb.fj, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge
  %.0230.lcssa959 = phi i32 [ 0, %.thread ], [ %.1231, %bb.fj ], [ %.1231, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit358._crit_edge ], [ %.1231, %.lr.ph688 ] ; 34 uses
  %i.aft = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc298 = call i32 @fputc(i32 10, ptr %i.aft) ; 0 uses
  br i1 %i.fa, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.loopexit592
  %i.afu = load i32, ptr %i.an, align 4, !tbaa !9
  %i.afv = load ptr, ptr %i.ag, align 8, !tbaa !134
  %i.afw = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.afx = load ptr, ptr %i.ba, align 8, !tbaa !169
  invoke fastcc void @_ZL10componentsPKciPiPPA3_fiPKiPK16gmx_output_env_t(ptr noundef %i.ej, i32 noundef %i.afu, ptr noundef %i.afv, ptr noundef %i.afw, i32 noundef %.0230.lcssa959, ptr noundef %i.aek, ptr noundef %i.afx)
          to label %bb.fl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fl:                                            ; preds = %bb.fk, %.loopexit592
  br i1 %i.fb, label %bb.fm, label %bb.fv

bb.fm:                                            ; preds = %bb.fl
  %i.afy = load i32, ptr %i.an, align 4, !tbaa !9 ; 8 uses
  %i.afz = load ptr, ptr %i.ag, align 8, !tbaa !134 ; 3 uses
  %i.aga = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.agb = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 6 uses
  %i.agc = load ptr, ptr %i.ba, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #23
  %i.agd = icmp sgt i32 %.0226, 0
  br i1 %i.agd, label %iter.check1105, label %._crit_edge.i

iter.check1105:                                   ; preds = %bb.fm
  %wide.trip.count.i = zext nneg i32 %.0226 to i64 ; 6 uses
  %min.iters.check1090 = icmp ult i32 %.0226, 4
  br i1 %min.iters.check1090, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check1091

vector.main.loop.iter.check1091:                  ; preds = %iter.check1105
  %min.iters.check1092 = icmp ult i32 %.0226, 32
  br i1 %min.iters.check1092, label %vec.epilog.ph1109, label %vector.ph1093

vector.ph1093:                                    ; preds = %vector.main.loop.iter.check1091
  %i.age = and i64 %wide.trip.count.i, 28
  %n.vec1094 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.ph1093, %vector.body1095
  %index1096 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1101, %vector.body1095 ] ; 2 uses
  %i.agf = getelementptr [4 x i8], ptr %i.agb, i64 %index1096 ; 5 uses
  %i.agg = getelementptr i8, ptr %i.agf, i64 32   ; 2 uses
  %i.agh = getelementptr i8, ptr %i.agf, i64 64   ; 2 uses
  %i.agi = getelementptr i8, ptr %i.agf, i64 96   ; 2 uses
  %wide.load1097 = load <8 x float>, ptr %i.agf, align 4, !tbaa !28
  %wide.load1098 = load <8 x float>, ptr %i.agg, align 4, !tbaa !28
  %wide.load1099 = load <8 x float>, ptr %i.agh, align 4, !tbaa !28
  %wide.load1100 = load <8 x float>, ptr %i.agi, align 4, !tbaa !28
  %i.agj = fcmp olt <8 x float> %wide.load1097, zeroinitializer
  %i.agk = fcmp olt <8 x float> %wide.load1098, zeroinitializer
  %i.agl = fcmp olt <8 x float> %wide.load1099, zeroinitializer
  %i.agm = fcmp olt <8 x float> %wide.load1100, zeroinitializer
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.agf, <8 x i1> %i.agj), !tbaa !28
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.agg, <8 x i1> %i.agk), !tbaa !28
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.agh, <8 x i1> %i.agl), !tbaa !28
  call void @llvm.masked.store.v8f32.p0(<8 x float> zeroinitializer, ptr align 4 %i.agi, <8 x i1> %i.agm), !tbaa !28
  %index.next1101 = add nuw i64 %index1096, 32    ; 2 uses
  %i.agn = icmp eq i64 %index.next1101, %n.vec1094
  br i1 %i.agn, label %middle.block1102, label %vector.body1095, !llvm.loop !64

middle.block1102:                                 ; preds = %vector.body1095
  %cmp.n1103 = icmp eq i64 %n.vec1094, %wide.trip.count.i
  br i1 %cmp.n1103, label %._crit_edge.i, label %vec.epilog.iter.check1107

vec.epilog.iter.check1107:                        ; preds = %middle.block1102
  %min.epilog.iters.check1108 = icmp eq i64 %i.age, 0
  br i1 %min.epilog.iters.check1108, label %.lr.ph.i.preheader, label %vec.epilog.ph1109, !prof !35

vec.epilog.ph1109:                                ; preds = %vector.main.loop.iter.check1091, %vec.epilog.iter.check1107
  %vec.epilog.resume.val1104 = phi i64 [ %n.vec1094, %vec.epilog.iter.check1107 ], [ 0, %vector.main.loop.iter.check1091 ]
  %n.vec1110 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1111

vec.epilog.vector.body1111:                       ; preds = %vec.epilog.vector.body1111, %vec.epilog.ph1109
  %index1112 = phi i64 [ %vec.epilog.resume.val1104, %vec.epilog.ph1109 ], [ %index.next1114, %vec.epilog.vector.body1111 ] ; 2 uses
  %i.ago = getelementptr [4 x i8], ptr %i.agb, i64 %index1112 ; 2 uses
  %wide.load1113 = load <4 x float>, ptr %i.ago, align 4, !tbaa !28
  %i.agp = fcmp olt <4 x float> %wide.load1113, zeroinitializer
  call void @llvm.masked.store.v4f32.p0(<4 x float> zeroinitializer, ptr align 4 %i.ago, <4 x i1> %i.agp), !tbaa !28
  %index.next1114 = add nuw i64 %index1112, 4     ; 2 uses
  %i.agq = icmp eq i64 %index.next1114, %n.vec1110
  br i1 %i.agq, label %vec.epilog.middle.block1115, label %vec.epilog.vector.body1111, !llvm.loop !65

vec.epilog.middle.block1115:                      ; preds = %vec.epilog.vector.body1111
  %cmp.n1116 = icmp eq i64 %n.vec1110, %wide.trip.count.i
  br i1 %cmp.n1116, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check1105, %vec.epilog.iter.check1107, %vec.epilog.middle.block1115
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check1105 ], [ %n.vec1094, %vec.epilog.iter.check1107 ], [ %n.vec1110, %vec.epilog.middle.block1115 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.fo
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.fo ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %indvars.iv.i ; 2 uses
  %i.ags = load float, ptr %i.agr, align 4, !tbaa !28
  %i.agt = fcmp olt float %i.ags, 0.000000e+00
  br i1 %i.agt, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.lr.ph.i
  store float 0.000000e+00, ptr %i.agr, align 4, !tbaa !28
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !66

._crit_edge.i:                                    ; preds = %bb.fo, %middle.block1102, %vec.epilog.middle.block1115, %bb.fm
  %i.agu = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.agv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agu, ptr noundef nonnull @.str.185, ptr noundef nonnull %i.ek) #24 ; 0 uses
  %i.agw = sext i32 %.0230.lcssa959 to i64        ; 2 uses
  %i.agx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.111, i32 noundef 982, i64 noundef range(i64 -2147483648, 2147483648) %i.agw, i64 noundef 8)
          to label %.noexc362 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc362:                                        ; preds = %._crit_edge.i
  %i.agy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.111, i32 noundef 983, i64 noundef range(i64 -2147483648, 2147483648) %i.agw, i64 noundef 8)
          to label %.noexc363 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc363:                                        ; preds = %.noexc362
  %i.agz = sext i32 %i.afy to i64                 ; 3 uses
  %i.aha = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.111, i32 noundef 984, i64 noundef range(i64 -2147483648, 2147483648) %i.agz, i64 noundef 4)
          to label %.noexc364 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc364:                                        ; preds = %.noexc363
  %i.ahb = icmp sgt i32 %i.afy, 0
  br i1 %i.ahb, label %iter.check1130, label %.preheader.thread.i

iter.check1130:                                   ; preds = %.noexc364
  %wide.trip.count90.i = zext nneg i32 %i.afy to i64 ; 8 uses
  %min.iters.check1119 = icmp ult i32 %i.afy, 4
  br i1 %min.iters.check1119, label %.lr.ph74.i.preheader, label %vector.main.loop.iter.check1120

vector.main.loop.iter.check1120:                  ; preds = %iter.check1130
  %min.iters.check1121 = icmp ult i32 %i.afy, 32
  br i1 %min.iters.check1121, label %vec.epilog.ph1134, label %vector.ph1122

vector.ph1122:                                    ; preds = %vector.main.loop.iter.check1120
  %i.ahc = and i64 %wide.trip.count90.i, 28
  %n.vec1123 = and i64 %wide.trip.count90.i, 2147483616 ; 4 uses
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.ph1122, %vector.body1124
  %index1125 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1126, %vector.body1124 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1122 ], [ %vec.ind.next, %vector.body1124 ] ; 5 uses
  %41 = trunc <8 x i64> %vec.ind to <8 x i32>
  %42 = add <8 x i32> %41, splat (i32 1)
  %43 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.ahd = add <8 x i32> %43, splat (i32 9)
  %44 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.ahe = add <8 x i32> %44, splat (i32 17)
  %45 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.ahf = add <8 x i32> %45, splat (i32 25)
  %i.ahg = uitofp nneg <8 x i32> %42 to <8 x float>
  %i.ahh = uitofp nneg <8 x i32> %i.ahd to <8 x float>
  %i.ahi = uitofp nneg <8 x i32> %i.ahe to <8 x float>
  %i.ahj = uitofp nneg <8 x i32> %i.ahf to <8 x float>
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %index1125 ; 4 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 32
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahk, i64 64
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahk, i64 96
  store <8 x float> %i.ahg, ptr %i.ahk, align 4, !tbaa !28
  store <8 x float> %i.ahh, ptr %i.ahl, align 4, !tbaa !28
  store <8 x float> %i.ahi, ptr %i.ahm, align 4, !tbaa !28
  store <8 x float> %i.ahj, ptr %i.ahn, align 4, !tbaa !28
  %index.next1126 = add nuw i64 %index1125, 32    ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.aho = icmp eq i64 %index.next1126, %n.vec1123
  br i1 %i.aho, label %middle.block1127, label %vector.body1124, !llvm.loop !67

middle.block1127:                                 ; preds = %vector.body1124
  %cmp.n1128 = icmp eq i64 %n.vec1123, %wide.trip.count90.i
  br i1 %cmp.n1128, label %.preheader.i, label %vec.epilog.iter.check1132

vec.epilog.iter.check1132:                        ; preds = %middle.block1127
  %min.epilog.iters.check1133 = icmp eq i64 %i.ahc, 0
  br i1 %min.epilog.iters.check1133, label %.lr.ph74.i.preheader, label %vec.epilog.ph1134, !prof !35

vec.epilog.ph1134:                                ; preds = %vector.main.loop.iter.check1120, %vec.epilog.iter.check1132
  %vec.epilog.resume.val1129 = phi i64 [ %n.vec1123, %vec.epilog.iter.check1132 ], [ 0, %vector.main.loop.iter.check1120 ] ; 2 uses
  %n.vec1135 = and i64 %wide.trip.count90.i, 2147483644 ; 3 uses
  %broadcast.splatinsert1136 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1129, i64 0
  %broadcast.splat1137 = shufflevector <4 x i64> %broadcast.splatinsert1136, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat1137, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1138

vec.epilog.vector.body1138:                       ; preds = %vec.epilog.vector.body1138, %vec.epilog.ph1134
  %index1139 = phi i64 [ %vec.epilog.resume.val1129, %vec.epilog.ph1134 ], [ %index.next1141, %vec.epilog.vector.body1138 ] ; 2 uses
  %vec.ind1140 = phi <4 x i64> [ %induction, %vec.epilog.ph1134 ], [ %vec.ind.next1142, %vec.epilog.vector.body1138 ] ; 2 uses
  %46 = trunc <4 x i64> %vec.ind1140 to <4 x i32>
  %47 = add <4 x i32> %46, splat (i32 1)
  %48 = uitofp nneg <4 x i32> %47 to <4 x float>
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %index1139
  store <4 x float> %48, ptr %i.ahp, align 4, !tbaa !28
  %index.next1141 = add nuw i64 %index1139, 4     ; 2 uses
  %vec.ind.next1142 = add nuw nsw <4 x i64> %vec.ind1140, splat (i64 4)
  %i.ahq = icmp eq i64 %index.next1141, %n.vec1135
  br i1 %i.ahq, label %vec.epilog.middle.block1143, label %vec.epilog.vector.body1138, !llvm.loop !68

vec.epilog.middle.block1143:                      ; preds = %vec.epilog.vector.body1138
  %cmp.n1144 = icmp eq i64 %n.vec1135, %wide.trip.count90.i
  br i1 %cmp.n1144, label %.preheader.i, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %iter.check1130, %vec.epilog.iter.check1132, %vec.epilog.middle.block1143
  %indvars.iv87.i.ph = phi i64 [ 0, %iter.check1130 ], [ %n.vec1123, %vec.epilog.iter.check1132 ], [ %n.vec1135, %vec.epilog.middle.block1143 ]
  br label %.lr.ph74.i

.preheader.i:                                     ; preds = %.lr.ph74.i, %vec.epilog.middle.block1143, %middle.block1127
  %i.ahr = icmp sgt i32 %.0230.lcssa959, 0
  br i1 %i.ahr, label %.lr.ph80.i, label %._crit_edge.i.i.i

.preheader.thread.i:                              ; preds = %.noexc364
  %i.ahs = icmp sgt i32 %.0230.lcssa959, 0
  br i1 %i.ahs, label %.lr.ph80.split.preheader.i, label %._crit_edge.i.i.i

.lr.ph80.i:                                       ; preds = %.preheader.i
  %wide.trip.count105.i = zext nneg i32 %.0230.lcssa959 to i64
  %xtraiter1329 = and i64 %wide.trip.count90.i, 1
  %i.aht = icmp eq i32 %i.afy, 1
  %unroll_iter1333 = and i64 %wide.trip.count90.i, 2147483646
  %lcmp.mod1331.not = icmp eq i64 %xtraiter1329, 0
  %lcmp.mod1332 = trunc i32 %i.afy to i1
  br label %.lr.ph80.split.us.i

.lr.ph80.split.preheader.i:                       ; preds = %.preheader.thread.i
  %wide.trip.count95.i = zext nneg i32 %.0230.lcssa959 to i64
  br label %.lr.ph80.split.i

.lr.ph80.split.us.i:                              ; preds = %._crit_edge78.us.i, %.lr.ph80.i
  %indvars.iv102.i = phi i64 [ 0, %.lr.ph80.i ], [ %indvars.iv.next103.i, %._crit_edge78.us.i ] ; 4 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv102.i
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !9
  %i.ahw = sext i32 %i.ahv to i64                 ; 2 uses
  %i.ahx = getelementptr inbounds [4 x i8], ptr %i.afz, i64 %i.ahw ; 5 uses
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !9 ; 2 uses
  %.not.us.i = icmp slt i32 %i.ahy, %.0226
  br i1 %.not.us.i, label %.lr.ph77.us.i, label %.split.us.i

.lr.ph77.us.i:                                    ; preds = %.lr.ph80.split.us.i
  %i.ahz = add nsw i32 %i.ahy, 1
  %i.aia = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %i.ahz) #23 ; 0 uses
  %i.aib = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.u)
          to label %.noexc365 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc365:                                        ; preds = %.lr.ph77.us.i
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv102.i
  store ptr %i.aib, ptr %i.aic, align 8, !tbaa !18
  %i.aid = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.111, i32 noundef 1001, i64 noundef range(i64 -2147483648, 2147483648) %i.agz, i64 noundef 4)
          to label %.noexc366 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc366:                                        ; preds = %.noexc365
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv102.i
  store ptr %i.aid, ptr %i.aie, align 8, !tbaa !15
  %i.aif = getelementptr inbounds [8 x i8], ptr %i.aga, i64 %i.ahw
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !15 ; 3 uses
  br i1 %i.aht, label %.epil.preheader1328, label %.noexc366.new

.noexc366.new:                                    ; preds = %.noexc366, %.noexc366.new
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i.1, %.noexc366.new ], [ 0, %.noexc366 ] ; 5 uses
  %niter1334 = phi i64 [ %niter1334.next.1, %.noexc366.new ], [ 0, %.noexc366 ]
  %i.aih = load i32, ptr %i.ahx, align 4, !tbaa !9
  %i.aii = sext i32 %i.aih to i64
  %i.aij = getelementptr inbounds [4 x i8], ptr %i.agb, i64 %i.aii
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !28
  %i.ail = getelementptr inbounds nuw [12 x i8], ptr %i.aig, i64 %indvars.iv97.i ; 3 uses
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !28 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ail, i64 4
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !28 ; 2 uses
  %i.aip = fmul float %i.aio, %i.aio
  %i.aiq = call float @llvm.fmuladd.f32(float %i.aim, float %i.aim, float %i.aip)
  %i.air = getelementptr inbounds nuw i8, ptr %i.ail, i64 8
  %i.ais = load float, ptr %i.air, align 4, !tbaa !28 ; 2 uses
  %i.ait = call noundef float @llvm.fmuladd.f32(float %i.ais, float %i.ais, float %i.aiq)
  %i.aiu = fmul float %i.aik, %i.ait
  %i.aiv = call noundef float @sqrtf(float noundef %i.aiu) #23
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv97.i
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !28
  %i.aiy = fdiv float %i.aiv, %i.aix
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv97.i
  store float %i.aiy, ptr %i.aiz, align 4, !tbaa !28
  %indvars.iv.next98.i = or disjoint i64 %indvars.iv97.i, 1 ; 3 uses
  %i.aja = load i32, ptr %i.ahx, align 4, !tbaa !9
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.agb, i64 %i.ajb
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !28
  %i.aje = getelementptr inbounds nuw [12 x i8], ptr %i.aig, i64 %indvars.iv.next98.i ; 3 uses
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !28 ; 2 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aje, i64 4
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !28 ; 2 uses
  %i.aji = fmul float %i.ajh, %i.ajh
  %i.ajj = call float @llvm.fmuladd.f32(float %i.ajf, float %i.ajf, float %i.aji)
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aje, i64 8
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !28 ; 2 uses
  %i.ajm = call noundef float @llvm.fmuladd.f32(float %i.ajl, float %i.ajl, float %i.ajj)
  %i.ajn = fmul float %i.ajd, %i.ajm
  %i.ajo = call noundef float @sqrtf(float noundef %i.ajn) #23
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.next98.i
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !28
  %i.ajr = fdiv float %i.ajo, %i.ajq
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv.next98.i
  store float %i.ajr, ptr %i.ajs, align 4, !tbaa !28
  %indvars.iv.next98.i.1 = add nuw nsw i64 %indvars.iv97.i, 2 ; 2 uses
  %niter1334.next.1 = add i64 %niter1334, 2       ; 2 uses
  %niter1334.ncmp.1 = icmp eq i64 %niter1334.next.1, %unroll_iter1333
  br i1 %niter1334.ncmp.1, label %._crit_edge78.us.i.unr-lcssa, label %.noexc366.new, !llvm.loop !69

._crit_edge78.us.i.unr-lcssa:                     ; preds = %.noexc366.new
  br i1 %lcmp.mod1331.not, label %._crit_edge78.us.i, label %.epil.preheader1328

.epil.preheader1328:                              ; preds = %._crit_edge78.us.i.unr-lcssa, %.noexc366
  %indvars.iv97.i.epil.init = phi i64 [ 0, %.noexc366 ], [ %indvars.iv.next98.i.1, %._crit_edge78.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1332)
  %i.ajt = load i32, ptr %i.ahx, align 4, !tbaa !9
  %i.aju = sext i32 %i.ajt to i64
  %i.ajv = getelementptr inbounds [4 x i8], ptr %i.agb, i64 %i.aju
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !28
  %i.ajx = getelementptr inbounds nuw [12 x i8], ptr %i.aig, i64 %indvars.iv97.i.epil.init ; 3 uses
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !28 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajx, i64 4
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !28 ; 2 uses
  %i.akb = fmul float %i.aka, %i.aka
  %i.akc = call float @llvm.fmuladd.f32(float %i.ajy, float %i.ajy, float %i.akb)
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !28 ; 2 uses
  %i.akf = call noundef float @llvm.fmuladd.f32(float %i.ake, float %i.ake, float %i.akc)
  %i.akg = fmul float %i.ajw, %i.akf
  %i.akh = call noundef float @sqrtf(float noundef %i.akg) #23
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv97.i.epil.init
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !28
  %i.akk = fdiv float %i.akh, %i.akj
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %indvars.iv97.i.epil.init
  store float %i.akk, ptr %i.akl, align 4, !tbaa !28
  br label %._crit_edge78.us.i

._crit_edge78.us.i:                               ; preds = %._crit_edge78.us.i.unr-lcssa, %.epil.preheader1328
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next103.i, %wide.trip.count105.i
  br i1 %exitcond106.not.i, label %._crit_edge.i.i.i, label %.lr.ph80.split.us.i, !llvm.loop !70

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %.lr.ph74.i ], [ %indvars.iv87.i.ph, %.lr.ph74.i.preheader ] ; 2 uses
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 3 uses
  %i.akm = trunc nuw nsw i64 %indvars.iv.next88.i to i32
  %i.akn = uitofp nneg i32 %i.akm to float
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv87.i
  store float %i.akn, ptr %i.ako, align 4, !tbaa !28
  %exitcond91.not.i = icmp eq i64 %indvars.iv.next88.i, %wide.trip.count90.i
  br i1 %exitcond91.not.i, label %.preheader.i, label %.lr.ph74.i, !llvm.loop !71

.lr.ph80.split.i:                                 ; preds = %.noexc369, %.lr.ph80.split.preheader.i
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph80.split.preheader.i ], [ %indvars.iv.next93.i, %.noexc369 ] ; 4 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv92.i
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !9
  %i.akr = sext i32 %i.akq to i64                 ; 2 uses
  %i.aks = getelementptr inbounds [4 x i8], ptr %i.afz, i64 %i.akr
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !9 ; 2 uses
  %.not.i361 = icmp slt i32 %i.akt, %.0226
  br i1 %.not.i361, label %bb.fr, label %.split.us.i.loopexit973

.split.us.i.loopexit973:                          ; preds = %.lr.ph80.split.i
  %i.aku = getelementptr inbounds [4 x i8], ptr %i.afz, i64 %i.akr
  br label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph80.split.us.i, %.split.us.i.loopexit973
  %.us-phi.i = phi ptr [ %i.aku, %.split.us.i.loopexit973 ], [ %i.ahx, %.lr.ph80.split.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %.noexc367 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc367:                                        ; preds = %.split.us.i
  %i.akv = load i32, ptr %.us-phi.i, align 4, !tbaa !9
  %i.akw = add nsw i32 %i.akv, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef 994, ptr noundef nonnull @.str.186, i32 noundef %i.akw, i32 noundef %.0226) #26
          to label %bb.fp unwind label %bb.fq

bb.fp:                                            ; preds = %.noexc367
  unreachable

bb.fq:                                            ; preds = %.noexc367
  %i.akx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.fu

bb.fr:                                            ; preds = %.lr.ph80.split.i
  %i.aky = add nsw i32 %i.akt, 1
  %i.akz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %i.aky) #23 ; 0 uses
  %i.ala = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.u)
          to label %.noexc368 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc368:                                        ; preds = %bb.fr
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %indvars.iv92.i
  store ptr %i.ala, ptr %i.alb, align 8, !tbaa !18
  %i.alc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.111, i32 noundef 1001, i64 noundef range(i64 -2147483648, 2147483648) %i.agz, i64 noundef 4)
          to label %.noexc369 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc369:                                        ; preds = %.noexc368
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv92.i
  store ptr %i.alc, ptr %i.ald, align 8, !tbaa !15
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next93.i, %wide.trip.count95.i
  br i1 %exitcond96.not.i, label %._crit_edge.i.i.i, label %.lr.ph80.split.i, !llvm.loop !70

._crit_edge.i.i.i:                                ; preds = %.noexc369, %._crit_edge78.us.i, %.preheader.thread.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.ale = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.ale, ptr %26, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ale, ptr noundef nonnull align 1 dereferenceable(11) @.str.155, i64 11, i1 false)
  %i.alf = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 11, ptr %i.alf, align 8, !tbaa !34
  %i.alg = getelementptr inbounds nuw i8, ptr %26, i64 27
  store i8 0, ptr %i.alg, align 1, !tbaa !26
  invoke fastcc void @_ZL17write_xvgr_graphsPKciiS0_S0_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_iPfPSA_PSB_fbbPK16gmx_output_env_t(ptr noundef nonnull %i.ek, i32 noundef %.0230.lcssa959, i32 noundef 1, ptr noundef nonnull @.str.187, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %i.agx, i32 noundef %i.afy, ptr noundef %i.aha, ptr noundef %i.agy, ptr noundef null, float noundef 1.000000e+00, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.agc)
          to label %bb.fs unwind label %bb.ft

bb.fs:                                            ; preds = %._crit_edge.i.i.i
  %i.alh = load ptr, ptr %26, align 8, !tbaa !25  ; 2 uses
  %i.ali = icmp eq ptr %i.alh, %i.ale
  br i1 %i.ali, label %_ZL4rmsfPKciPKfPiPPA3_fiPKiPfiPK16gmx_output_env_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359: ; preds = %bb.fs
  %i.alj = load i64, ptr %i.ale, align 8, !tbaa !26
  %i.alk = add i64 %i.alj, 1
  call void @_ZdlPvm(ptr noundef %i.alh, i64 noundef %i.alk) #25
  br label %_ZL4rmsfPKciPKfPiPPA3_fiPKiPfiPK16gmx_output_env_t.exit

bb.ft:                                            ; preds = %._crit_edge.i.i.i
  %i.all = landingpad { ptr, i32 }
          cleanup
  %i.alm = load ptr, ptr %26, align 8, !tbaa !25  ; 2 uses
  %i.aln = icmp eq ptr %i.alm, %i.ale
  br i1 %i.aln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %bb.ft
  %i.alo = load i64, ptr %i.ale, align 8, !tbaa !26
  %i.alp = add i64 %i.alo, 1
  call void @_ZdlPvm(ptr noundef %i.alm, i64 noundef %i.alp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.fu

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %bb.fq
  %.pn60.i = phi { ptr, i32 } [ %i.akx, %bb.fq ], [ %i.all, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #23
  br label %.body

_ZL4rmsfPKciPKfPiPPA3_fiPKiPfiPK16gmx_output_env_t.exit: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.alq = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc.i = call i32 @fputc(i32 10, ptr %i.alq)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #23
  br label %bb.fv

bb.fv:                                            ; preds = %_ZL4rmsfPKciPKfPiPPA3_fiPKiPfiPK16gmx_output_env_t.exit, %bb.fl
  br i1 %spec.select, label %bb.fw, label %bb.kj

bb.fw:                                            ; preds = %bb.fv
  br i1 %i.fk, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.alr = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.85, i32 noundef 16, ptr noundef nonnull %29)
          to label %bb.fy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  %i.als = phi ptr [ %i.alr, %bb.fx ], [ null, %bb.fw ] ; 2 uses
  %i.alt = load i32, ptr %i.w, align 4, !tbaa !132 ; 2 uses
  %i.alu = load ptr, ptr %39, align 8, !tbaa !25  ; 3 uses
  %i.alv = load i32, ptr @_ZZ10gmx_anaeigiPPcE4skip, align 4, !tbaa !9
  %i.alw = load float, ptr @_ZZ10gmx_anaeigiPPcE3max, align 4, !tbaa !28 ; 3 uses
  %i.alx = load i32, ptr @_ZZ10gmx_anaeigiPPcE5nextr, align 4, !tbaa !9 ; 6 uses
  %i.aly = load i32, ptr %i.an, align 4, !tbaa !9 ; 11 uses
  %i.alz = load ptr, ptr %i.ar, align 8, !tbaa !134 ; 16 uses
  %i.ama = load i8, ptr %i.av, align 1, !tbaa !152, !range !153, !noundef !154
  %i.amb = trunc nuw i8 %i.ama to i1
  %i.amc = load i32, ptr %i.aq, align 4, !tbaa !9
  %i.amd = load ptr, ptr %i.as, align 8, !tbaa !134
  %i.ame = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 10 uses
  %i.amf = load ptr, ptr %i.ag, align 8, !tbaa !134 ; 12 uses
  %i.amg = load ptr, ptr %i.ak, align 8, !tbaa !13 ; 15 uses
  %i.amh = load i8, ptr @_ZZ10gmx_anaeigiPPcE6bSplit, align 1, !tbaa !152, !range !153, !noundef !154
  %i.ami = trunc nuw i8 %i.amh to i1              ; 4 uses
  %i.amj = load ptr, ptr %i.ba, align 8, !tbaa !169 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.als, ptr %i.g, align 8, !tbaa !18
  store ptr %i.em, ptr %i.h, align 8, !tbaa !18
  store ptr %i.en, ptr %i.i, align 8, !tbaa !18
  store ptr %i.eo, ptr %i.j, align 8, !tbaa !18
  store ptr %i.ep, ptr %i.k, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  %i.amk = sext i32 %i.aly to i64
  %i.aml = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.111, i32 noundef 524, i64 noundef range(i64 -2147483648, 2147483648) %i.amk, i64 noundef 12)
          to label %.noexc386 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc386:                                        ; preds = %bb.fy
  %..i370 = select i1 %i.ez, i32 %.0230.lcssa959, i32 1 ; 6 uses
  %.not.i371 = icmp eq ptr %i.als, null
  br i1 %.not.i371, label %bb.gz, label %bb.fz

bb.fz:                                            ; preds = %.noexc386
  %i.amm = add i32 %.0230.lcssa959, 1             ; 2 uses
  %i.amn = sext i32 %i.amm to i64
  %i.amo = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.111, i32 noundef 538, i64 noundef range(i64 -2147483648, 2147483648) %i.amn, i64 noundef 8)
          to label %.noexc387 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 21 uses

.noexc387:                                        ; preds = %bb.fz
  %.not384.i = icmp eq ptr %i.eo, null
  br i1 %.not384.i, label %bb.ge, label %bb.ga

bb.ga:                                            ; preds = %.noexc387
  %i.amp = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.amq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.amp, ptr noundef nonnull @.str.188, ptr noundef nonnull %i.eo) #24 ; 0 uses
  %i.amr = icmp sgt i32 %.0230.lcssa959, 0
  br i1 %i.amr, label %.lr.ph.preheader.i380, label %._crit_edge.i372

.lr.ph.preheader.i380:                            ; preds = %bb.ga
  %wide.trip.count.i381 = zext nneg i32 %.0230.lcssa959 to i64
  br label %.lr.ph.i382

.lr.ph.i382:                                      ; preds = %.lr.ph.i382, %.lr.ph.preheader.i380
  %indvars.iv.i383 = phi i64 [ 0, %.lr.ph.preheader.i380 ], [ %indvars.iv.next.i384, %.lr.ph.i382 ] ; 2 uses
  %i.ams = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv.i383
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !9
  %i.amv = add nsw i32 %i.amu, 1
  %i.amw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ams, ptr noundef nonnull @.str.189, i32 noundef %i.amv) #24 ; 0 uses
  %indvars.iv.next.i384 = add nuw nsw i64 %indvars.iv.i383, 1 ; 2 uses
  %exitcond.not.i385 = icmp eq i64 %indvars.iv.next.i384, %wide.trip.count.i381
  br i1 %exitcond.not.i385, label %._crit_edge.i372, label %.lr.ph.i382, !llvm.loop !72

._crit_edge.i372:                                 ; preds = %.lr.ph.i382, %bb.ga
  %i.amx = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc.i373 = call i32 @fputc(i32 10, ptr %i.amx) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i8 noundef zeroext 2)
          to label %.noexc388 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc388:                                        ; preds = %._crit_edge.i372
  %i.amy = invoke noundef ptr @_Z8open_trxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull @.str.156)
          to label %bb.gb unwind label %bb.gd

bb.gb:                                            ; preds = %.noexc388
  %i.amz = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i374 = icmp eq ptr %i.ana, null
  br i1 %.not.i.i.i.i374, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.amz, ptr noundef nonnull %i.ana) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.gc, %bb.gb
  %i.anb = load ptr, ptr %9, align 8, !tbaa !25   ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.and = icmp eq ptr %i.anb, %i.anc
  br i1 %i.and, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.ane = load i64, ptr %i.anc, align 8, !tbaa !26
  %i.anf = add i64 %i.ane, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.anf) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ge

bb.gd:                                            ; preds = %.noexc388
  %i.ang = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ki

bb.ge:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, %.noexc387
  %.0348.i = phi ptr [ %i.amy, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i ], [ null, %.noexc387 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext 2)
          to label %.noexc389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc389:                                        ; preds = %bb.ge
  %i.anh = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.amj, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m)
          to label %bb.gf unwind label %bb.gj     ; 11 uses

bb.gf:                                            ; preds = %.noexc389
  %i.ani = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i413.i = icmp eq ptr %i.anj, null
  br i1 %.not.i.i.i413.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ani, ptr noundef nonnull %i.anj) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i: ; preds = %bb.gg, %bb.gf
  %i.ank = load ptr, ptr %10, align 8, !tbaa !25  ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.anm = icmp eq ptr %i.ank, %i.anl
  br i1 %i.anm, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i
  %i.ann = load i64, ptr %i.anl, align 8, !tbaa !26
  %i.ano = add i64 %i.ann, 1
  call void @_ZdlPvm(ptr noundef %i.ank, i64 noundef %i.ano) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i414.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.anp = load i32, ptr %.0243, align 8, !tbaa !162
  %i.anq = icmp sgt i32 %i.anh, %i.anp
  br i1 %i.anq, label %bb.gh, label %bb.gl

bb.gh:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(66) @.str.111, i8 noundef zeroext 2)
          to label %.noexc390 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc390:                                        ; preds = %bb.gh
  %i.anr = load i32, ptr %.0243, align 8, !tbaa !162
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 556, ptr noundef nonnull @.str.190, i32 noundef %i.anh, i32 noundef %i.anr) #26
          to label %bb.gi unwind label %bb.gk

bb.gi:                                            ; preds = %.noexc390
  unreachable

bb.gj:                                            ; preds = %.noexc389
  %i.ans = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ki

bb.gk:                                            ; preds = %.noexc390
  %i.ant = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ki

bb.gl:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit417.i
  %i.anu = sext i32 %i.anh to i64
  %i.anv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.111, i32 noundef 562, i64 noundef range(i64 -2147483648, 2147483648) %i.anu, i64 noundef 4)
          to label %.noexc391 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc391:                                        ; preds = %bb.gl
  br i1 %.0227, label %bb.gm, label %.noexc392

bb.gm:                                            ; preds = %.noexc391
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.anw = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %.sroa.gep, i32 noundef %i.alt, i32 noundef %i.anh)
          to label %.noexc392 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc392:                                        ; preds = %bb.gm, %.noexc391
  %.0337.i = phi ptr [ null, %.noexc391 ], [ %i.anw, %bb.gm ] ; 3 uses
  %i.anx = icmp sgt i32 %i.anh, 0
  br i1 %i.anx, label %iter.check1163, label %.preheader545.i

iter.check1163:                                   ; preds = %.noexc392
  %wide.trip.count631.i = zext nneg i32 %i.anh to i64 ; 6 uses
  %min.iters.check1147 = icmp ult i32 %i.anh, 8
  br i1 %min.iters.check1147, label %.lr.ph555.i.preheader, label %vector.main.loop.iter.check1148

vector.main.loop.iter.check1148:                  ; preds = %iter.check1163
  %min.iters.check1149 = icmp ult i32 %i.anh, 32
  br i1 %min.iters.check1149, label %vec.epilog.ph1167, label %vector.ph1150

vector.ph1150:                                    ; preds = %vector.main.loop.iter.check1148
  %i.any = and i64 %wide.trip.count631.i, 24
  %n.vec1151 = and i64 %wide.trip.count631.i, 2147483616 ; 4 uses
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.ph1150, %vector.body1152
  %index1153 = phi i64 [ 0, %vector.ph1150 ], [ %index.next1158, %vector.body1152 ] ; 2 uses
  %vec.ind1154 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1150 ], [ %vec.ind.next1159, %vector.body1152 ] ; 5 uses
  %step.add1155 = add <8 x i32> %vec.ind1154, splat (i32 8)
  %step.add.21156 = add <8 x i32> %vec.ind1154, splat (i32 16)
  %step.add.31157 = add <8 x i32> %vec.ind1154, splat (i32 24)
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %index1153 ; 4 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 32
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anz, i64 64
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anz, i64 96
  store <8 x i32> %vec.ind1154, ptr %i.anz, align 4, !tbaa !9
  store <8 x i32> %step.add1155, ptr %i.aoa, align 4, !tbaa !9
  store <8 x i32> %step.add.21156, ptr %i.aob, align 4, !tbaa !9
  store <8 x i32> %step.add.31157, ptr %i.aoc, align 4, !tbaa !9
  %index.next1158 = add nuw i64 %index1153, 32    ; 2 uses
  %vec.ind.next1159 = add <8 x i32> %vec.ind1154, splat (i32 32)
  %i.aod = icmp eq i64 %index.next1158, %n.vec1151
  br i1 %i.aod, label %middle.block1160, label %vector.body1152, !llvm.loop !73

middle.block1160:                                 ; preds = %vector.body1152
  %cmp.n1161 = icmp eq i64 %n.vec1151, %wide.trip.count631.i
  br i1 %cmp.n1161, label %.preheader545.i, label %vec.epilog.iter.check1165

vec.epilog.iter.check1165:                        ; preds = %middle.block1160
  %min.epilog.iters.check1166 = icmp eq i64 %i.any, 0
  br i1 %min.epilog.iters.check1166, label %.lr.ph555.i.preheader, label %vec.epilog.ph1167, !prof !170

vec.epilog.ph1167:                                ; preds = %vector.main.loop.iter.check1148, %vec.epilog.iter.check1165
  %vec.epilog.resume.val1162 = phi i64 [ %n.vec1151, %vec.epilog.iter.check1165 ], [ 0, %vector.main.loop.iter.check1148 ] ; 2 uses
  %n.vec1168 = and i64 %wide.trip.count631.i, 2147483640 ; 3 uses
  %i.aoe = trunc nuw nsw i64 %vec.epilog.resume.val1162 to i32
  %broadcast.splatinsert1169 = insertelement <8 x i32> poison, i32 %i.aoe, i64 0
  %broadcast.splat1170 = shufflevector <8 x i32> %broadcast.splatinsert1169, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction1171 = or disjoint <8 x i32> %broadcast.splat1170, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body1172

vec.epilog.vector.body1172:                       ; preds = %vec.epilog.vector.body1172, %vec.epilog.ph1167
  %index1173 = phi i64 [ %vec.epilog.resume.val1162, %vec.epilog.ph1167 ], [ %index.next1175, %vec.epilog.vector.body1172 ] ; 2 uses
  %vec.ind1174 = phi <8 x i32> [ %induction1171, %vec.epilog.ph1167 ], [ %vec.ind.next1176, %vec.epilog.vector.body1172 ] ; 2 uses
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %index1173
  store <8 x i32> %vec.ind1174, ptr %i.aof, align 4, !tbaa !9
  %index.next1175 = add nuw i64 %index1173, 8     ; 2 uses
  %vec.ind.next1176 = add <8 x i32> %vec.ind1174, splat (i32 8)
  %i.aog = icmp eq i64 %index.next1175, %n.vec1168
  br i1 %i.aog, label %vec.epilog.middle.block1177, label %vec.epilog.vector.body1172, !llvm.loop !74

vec.epilog.middle.block1177:                      ; preds = %vec.epilog.vector.body1172
  %cmp.n1178 = icmp eq i64 %n.vec1168, %wide.trip.count631.i
  br i1 %cmp.n1178, label %.preheader545.i, label %.lr.ph555.i.preheader

.lr.ph555.i.preheader:                            ; preds = %iter.check1163, %vec.epilog.iter.check1165, %vec.epilog.middle.block1177
  %indvars.iv628.i.ph = phi i64 [ 0, %iter.check1163 ], [ %n.vec1151, %vec.epilog.iter.check1165 ], [ %n.vec1168, %vec.epilog.middle.block1177 ]
  br label %.lr.ph555.i

.preheader545.i:                                  ; preds = %.lr.ph555.i, %middle.block1160, %vec.epilog.middle.block1177, %.noexc392
  %.not387556.i = icmp slt i32 %.0230.lcssa959, 0
  %i.aoh = sext i32 %.0230.lcssa959 to i64
  %i.aoi = getelementptr inbounds [8 x i8], ptr %i.amo, i64 %i.aoh
  %i.aoj = icmp sgt i32 %i.aly, 0                 ; 2 uses
  %i.aok = icmp sgt i32 %.0230.lcssa959, 0        ; 3 uses
  %wide.trip.count636.i = zext i32 %i.amm to i64
  %wide.trip.count641.i = zext i32 %i.aly to i64  ; 8 uses
  %wide.trip.count646.i = zext i32 %.0230.lcssa959 to i64 ; 14 uses
  %i.aol = add nsw i64 %wide.trip.count641.i, -1  ; 2 uses
  %i.aom = add nsw i64 %wide.trip.count646.i, -1  ; 3 uses
  %min.iters.check1181 = icmp ult i32 %.0230.lcssa959, 4
  %min.iters.check1183 = icmp ult i32 %.0230.lcssa959, 16
  %i.aon = and i64 %wide.trip.count646.i, 12
  %n.vec1185 = and i64 %wide.trip.count646.i, 2147483632 ; 4 uses
  %cmp.n1197 = icmp eq i64 %n.vec1185, %wide.trip.count646.i
  %min.epilog.iters.check1202 = icmp eq i64 %i.aon, 0
  %n.vec1204 = and i64 %wide.trip.count646.i, 2147483644 ; 3 uses
  %cmp.n1211 = icmp eq i64 %n.vec1204, %wide.trip.count646.i
  %xtraiter1336 = and i64 %wide.trip.count641.i, 3 ; 3 uses
  %i.aoo = icmp ult i32 %i.aly, 4
  %unroll_iter1340 = and i64 %wide.trip.count641.i, 2147483644
  %lcmp.mod1338.not = icmp eq i64 %xtraiter1336, 0
  %lcmp.mod1339 = icmp ne i64 %xtraiter1336, 0
  %xtraiter1343 = and i64 %wide.trip.count641.i, 1
  %i.aop = icmp eq i64 %i.aol, 0
  %unroll_iter1348 = and i64 %wide.trip.count641.i, 2147483646
  %lcmp.mod1345.not = icmp eq i64 %xtraiter1343, 0
  %lcmp.mod1347 = trunc i32 %i.aly to i1
  %xtraiter1350 = and i64 %wide.trip.count641.i, 3 ; 3 uses
  %i.aoq = icmp ult i64 %i.aol, 3
  %unroll_iter1354 = and i64 %wide.trip.count641.i, 4294967292
  %lcmp.mod1352.not = icmp eq i64 %xtraiter1350, 0
  %lcmp.mod1353 = icmp ne i64 %xtraiter1350, 0
  %xtraiter1357 = and i64 %wide.trip.count646.i, 1
  %i.aor = icmp eq i64 %i.aom, 0
  %unroll_iter1361 = and i64 %wide.trip.count646.i, 2147483646
  %lcmp.mod1359.not = icmp eq i64 %xtraiter1357, 0
  %lcmp.mod1360 = trunc i32 %.0230.lcssa959 to i1
  %xtraiter1364 = and i64 %wide.trip.count646.i, 3 ; 3 uses
  %i.aos = icmp ult i64 %i.aom, 3
  %unroll_iter1370 = and i64 %wide.trip.count646.i, 2147483644
  %lcmp.mod1368.not = icmp eq i64 %xtraiter1364, 0
  %lcmp.mod1369 = icmp ne i64 %xtraiter1364, 0
  %xtraiter1373 = and i64 %wide.trip.count646.i, 3 ; 3 uses
  %i.aot = icmp ult i64 %i.aom, 3
  %unroll_iter1379 = and i64 %wide.trip.count646.i, 2147483644
  %lcmp.mod1377.not = icmp eq i64 %xtraiter1373, 0
  %lcmp.mod1378 = icmp ne i64 %xtraiter1373, 0
  br label %bb.gn

.lr.ph555.i:                                      ; preds = %.lr.ph555.i.preheader, %.lr.ph555.i
  %indvars.iv628.i = phi i64 [ %indvars.iv.next629.i, %.lr.ph555.i ], [ %indvars.iv628.i.ph, %.lr.ph555.i.preheader ] ; 3 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %indvars.iv628.i
  %i.aov = trunc nuw nsw i64 %indvars.iv628.i to i32
  store i32 %i.aov, ptr %i.aou, align 4, !tbaa !9
  %indvars.iv.next629.i = add nuw nsw i64 %indvars.iv628.i, 1 ; 2 uses
  %exitcond632.not.i = icmp eq i64 %indvars.iv.next629.i, %wide.trip.count631.i
  br i1 %exitcond632.not.i, label %.preheader545.i, label %.lr.ph555.i, !llvm.loop !75

bb.gn:                                            ; preds = %.noexc398, %.preheader545.i
  %.0356.i = phi i32 [ %i.bgk, %.noexc398 ], [ 0, %.preheader545.i ] ; 2 uses
  %.0353.i = phi i32 [ %.1354.i, %.noexc398 ], [ 0, %.preheader545.i ] ; 4 uses
  %.0350.i = phi i32 [ %.2352.i, %.noexc398 ], [ 0, %.preheader545.i ] ; 4 uses
  %i.aow = srem i32 %.0356.i, %i.alv
  %i.aox = icmp eq i32 %i.aow, 0
  br i1 %i.aox, label %bb.go, label %bb.gw

bb.go:                                            ; preds = %bb.gn
  br i1 %.0227, label %bb.gp, label %.noexc393

bb.gp:                                            ; preds = %bb.go
  %i.aoy = load ptr, ptr %i.n, align 8, !tbaa !15
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %.0337.i, i32 noundef %i.anh, ptr noundef nonnull %i.m, ptr noundef %i.aoy)
          to label %.noexc393 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc393:                                        ; preds = %bb.gp, %bb.go
  %.not386.i = icmp slt i32 %.0353.i, %.0350.i
  br i1 %.not386.i, label %.loopexit544.i, label %bb.gq

bb.gq:                                            ; preds = %.noexc393
  %i.aoz = add nsw i32 %.0350.i, 100              ; 3 uses
  br i1 %.not387556.i, label %.loopexit544.i, label %.lr.ph559.i

.lr.ph559.i:                                      ; preds = %bb.gq
  %i.apa = sext i32 %i.aoz to i64
  br label %bb.gr

bb.gr:                                            ; preds = %.noexc394, %.lr.ph559.i
  %indvars.iv633.i = phi i64 [ 0, %.lr.ph559.i ], [ %indvars.iv.next634.i, %.noexc394 ] ; 2 uses
  %i.apb = getelementptr inbounds nuw [8 x i8], ptr %i.amo, i64 %indvars.iv633.i ; 2 uses
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !15
  %i.apd = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.111, i32 noundef 586, ptr noundef %i.apc, i64 noundef range(i64 -2147483648, 2147483648) %i.apa, i64 noundef 4)
          to label %.noexc394 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc394:                                        ; preds = %bb.gr
  store ptr %i.apd, ptr %i.apb, align 8, !tbaa !15
  %indvars.iv.next634.i = add nuw nsw i64 %indvars.iv633.i, 1 ; 2 uses
  %exitcond637.not.i = icmp eq i64 %indvars.iv.next634.i, %wide.trip.count636.i
  br i1 %exitcond637.not.i, label %.loopexit544.i, label %bb.gr, !llvm.loop !76

.loopexit544.i:                                   ; preds = %.noexc394, %bb.gq, %.noexc393
  %.1351.i = phi i32 [ %.0350.i, %.noexc393 ], [ %i.aoz, %bb.gq ], [ %i.aoz, %.noexc394 ]
  %i.ape = load float, ptr %i.o, align 4, !tbaa !28
  %i.apf = load ptr, ptr %i.aoi, align 8, !tbaa !15
  %i.apg = sext i32 %.0353.i to i64               ; 21 uses
  %i.aph = getelementptr inbounds [4 x i8], ptr %i.apf, i64 %i.apg
  store float %i.ape, ptr %i.aph, align 4, !tbaa !28
  br i1 %i.amb, label %bb.gs, label %.noexc396

bb.gs:                                            ; preds = %.loopexit544.i
  %i.api = load ptr, ptr %i.n, align 8, !tbaa !15
  invoke void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef %i.amc, ptr noundef %i.amd, i32 noundef %i.anh, ptr noundef null, ptr noundef %i.api, ptr noundef %.1547)
          to label %.noexc395 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc395:                                        ; preds = %bb.gs
  %i.apj = load ptr, ptr %i.n, align 8, !tbaa !15
  invoke void @_Z6do_fitiPfPA3_KfPA3_f(i32 noundef %i.anh, ptr noundef %.1547, ptr noundef %.1, ptr noundef %i.apj)
          to label %.noexc396 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc396:                                        ; preds = %.noexc395, %.loopexit544.i
  br i1 %i.aoj, label %.lr.ph562.i, label %.preheader543.thread.i

.lr.ph562.i:                                      ; preds = %.noexc396
  %i.apk = load ptr, ptr %i.n, align 8, !tbaa !15 ; 6 uses
  br i1 %i.aoo, label %.epil.preheader1335, label %.lr.ph562.i.new

.preheader543.i.unr-lcssa:                        ; preds = %.lr.ph562.i.new
  br i1 %lcmp.mod1338.not, label %.preheader543.i, label %.epil.preheader1335

.epil.preheader1335:                              ; preds = %.preheader543.i.unr-lcssa, %.lr.ph562.i
  %indvars.iv638.i.epil.init = phi i64 [ 0, %.lr.ph562.i ], [ %indvars.iv.next639.i.3, %.preheader543.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1339)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gt, %.epil.preheader1335
  %indvars.iv638.i.epil = phi i64 [ %indvars.iv638.i.epil.init, %.epil.preheader1335 ], [ %indvars.iv.next639.i.epil, %bb.gt ] ; 3 uses
  %epil.iter1337 = phi i64 [ 0, %.epil.preheader1335 ], [ %epil.iter1337.next, %bb.gt ]
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %indvars.iv638.i.epil
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !9
  %i.apn = sext i32 %i.apm to i64
  %i.apo = getelementptr inbounds [12 x i8], ptr %i.apk, i64 %i.apn ; 3 uses
  %i.app = getelementptr inbounds nuw [12 x i8], ptr %i.aml, i64 %indvars.iv638.i.epil ; 3 uses
  %i.apq = load float, ptr %i.apo, align 4, !tbaa !28
  store float %i.apq, ptr %i.app, align 4, !tbaa !28
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apo, i64 4
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !28
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 4
  store float %i.aps, ptr %i.apt, align 4, !tbaa !28
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !28
  %i.apw = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  store float %i.apv, ptr %i.apw, align 4, !tbaa !28
  %indvars.iv.next639.i.epil = add nuw nsw i64 %indvars.iv638.i.epil, 1
  %epil.iter1337.next = add i64 %epil.iter1337, 1 ; 2 uses
  %epil.iter1337.cmp.not = icmp eq i64 %epil.iter1337.next, %xtraiter1336
  br i1 %epil.iter1337.cmp.not, label %.preheader543.i, label %bb.gt, !llvm.loop !77

.preheader543.i:                                  ; preds = %bb.gt, %.preheader543.i.unr-lcssa
  br i1 %i.aok, label %.lr.ph566.us.i, label %._crit_edge570.i.thread

.preheader543.thread.i:                           ; preds = %.noexc396
  br i1 %i.aok, label %iter.check1199, label %._crit_edge570.i

iter.check1199:                                   ; preds = %.preheader543.thread.i
  br i1 %min.iters.check1181, label %.lr.ph569.split.i.preheader, label %vector.main.loop.iter.check1182

vector.main.loop.iter.check1182:                  ; preds = %iter.check1199
  br i1 %min.iters.check1183, label %vec.epilog.ph1203, label %vector.body1186

vector.body1186:                                  ; preds = %vector.main.loop.iter.check1182, %vector.body1186
  %index1187 = phi i64 [ %index.next1195, %vector.body1186 ], [ 0, %vector.main.loop.iter.check1182 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_Z10gmx_anaeigiPPc:bb.a
.loopexit531.i:                                   ; preds = %.noexc.i.i.i.i
  %lpad.loopexit533.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ke

.loopexit.split-lp532.i:                          ; preds = %.noexc.i469.i
  %lpad.loopexit.split-lp534.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ke

bb.ke:                                            ; preds = %.loopexit.split-lp532.i, %.loopexit531.i
  %lpad.phi535.i = phi { ptr, i32 } [ %lpad.loopexit533.i, %.loopexit531.i ], [ %lpad.loopexit.split-lp534.i, %.loopexit.split-lp532.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.loopexit.split-lp.i

.loopexit530.i:                                   ; preds = %._crit_edge607.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %._crit_edge611.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474.i
  %lpad.loopexit536.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i, %._crit_edge615.i
  %lpad.loopexit.split-lp537.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %bb.kd
  %.pre744.i = load ptr, ptr %i.n, align 8, !tbaa !15 ; 2 uses
  br i1 %i.buo, label %.preheader.lr.ph.i, label %.loopexit.._crit_edge607_crit_edge.i

.loopexit.._crit_edge607_crit_edge.i:             ; preds = %.loopexit.i
  %.pre745.i = uitofp nneg i32 %.0349608.i to float
  br label %._crit_edge607.i

.preheader.lr.ph.i:                               ; preds = %.loopexit.i, %.loopexit.thread.i
  %.pre744807.i = phi ptr [ %.pre744806.i, %.loopexit.thread.i ], [ %.pre744.i, %.loopexit.i ] ; 2 uses
  %i.caa = xor i32 %.0349608.i, -1
  %i.cab = add nsw i32 %i.alx, %i.caa
  %i.cac = sitofp i32 %i.cab to float             ; 3 uses
  %i.cad = uitofp nneg i32 %.0349608.i to float   ; 4 uses
  %i.cae = load i32, ptr %i.bxn, align 4, !tbaa !9
  %i.caf = sext i32 %i.cae to i64
  %i.cag = getelementptr inbounds [8 x i8], ptr %i.amg, i64 %i.caf
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !15
  br label %.preheader.i377

.preheader.i377:                                  ; preds = %.preheader.i377, %.preheader.lr.ph.i
  %indvars.iv723.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next724.i, %.preheader.i377 ] ; 5 uses
  %i.cai = getelementptr inbounds nuw [12 x i8], ptr %i.ame, i64 %indvars.iv723.i ; 3 uses
  %i.caj = getelementptr inbounds nuw [12 x i8], ptr %i.cah, i64 %indvars.iv723.i ; 3 uses
  %i.cak = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv723.i ; 3 uses
  %i.cal = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %indvars.iv723.i
  %i.cam = load i32, ptr %i.cal, align 4, !tbaa !9
  %i.can = sext i32 %i.cam to i64
  %i.cao = getelementptr inbounds [12 x i8], ptr %.pre744807.i, i64 %i.can ; 3 uses
  %i.cap = load float, ptr %i.cai, align 4, !tbaa !28
  %i.caq = load float, ptr %i.byj, align 4, !tbaa !28
  %i.car = load float, ptr %i.byk, align 4, !tbaa !28
  %i.cas = fmul float %i.car, %i.cad
  %i.cat = call float @llvm.fmuladd.f32(float %i.caq, float %i.cac, float %i.cas)
  %i.cau = fdiv float %i.cat, %i.buq
  %i.cav = load float, ptr %i.caj, align 4, !tbaa !28
  %i.caw = fmul float %i.cav, %i.cau
  %i.cax = load float, ptr %i.cak, align 4, !tbaa !28
  %i.cay = fdiv float %i.caw, %i.cax
  %i.caz = fadd float %i.cap, %i.cay
  store float %i.caz, ptr %i.cao, align 4, !tbaa !28
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cai, i64 4
  %i.cbb = load float, ptr %i.cba, align 4, !tbaa !28
  %i.cbc = load float, ptr %i.byj, align 4, !tbaa !28
  %i.cbd = load float, ptr %i.byk, align 4, !tbaa !28
  %i.cbe = fmul float %i.cbd, %i.cad
  %i.cbf = call float @llvm.fmuladd.f32(float %i.cbc, float %i.cac, float %i.cbe)
  %i.cbg = fdiv float %i.cbf, %i.buq
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.caj, i64 4
  %i.cbi = load float, ptr %i.cbh, align 4, !tbaa !28
  %i.cbj = fmul float %i.cbi, %i.cbg
  %i.cbk = load float, ptr %i.cak, align 4, !tbaa !28
  %i.cbl = fdiv float %i.cbj, %i.cbk
  %i.cbm = fadd float %i.cbb, %i.cbl
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cao, i64 4
  store float %i.cbm, ptr %i.cbn, align 4, !tbaa !28
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cai, i64 8
  %i.cbp = load float, ptr %i.cbo, align 4, !tbaa !28
  %i.cbq = load float, ptr %i.byj, align 4, !tbaa !28
  %i.cbr = load float, ptr %i.byk, align 4, !tbaa !28
  %i.cbs = fmul float %i.cbr, %i.cad
  %i.cbt = call float @llvm.fmuladd.f32(float %i.cbq, float %i.cac, float %i.cbs)
  %i.cbu = fdiv float %i.cbt, %i.buq
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.caj, i64 8
  %i.cbw = load float, ptr %i.cbv, align 4, !tbaa !28
  %i.cbx = fmul float %i.cbw, %i.cbu
  %i.cby = load float, ptr %i.cak, align 4, !tbaa !28
  %i.cbz = fdiv float %i.cbx, %i.cby
  %i.cca = fadd float %i.cbp, %i.cbz
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cao, i64 8
  store float %i.cca, ptr %i.ccb, align 4, !tbaa !28
  %indvars.iv.next724.i = add nuw nsw i64 %indvars.iv723.i, 1 ; 2 uses
  %exitcond728.not.i = icmp eq i64 %indvars.iv.next724.i, %wide.trip.count716.i
  br i1 %exitcond728.not.i, label %._crit_edge607.i, label %.preheader.i377, !llvm.loop !107

._crit_edge607.i:                                 ; preds = %.preheader.i377, %.loopexit.._crit_edge607_crit_edge.i
  %.pre744808.i = phi ptr [ %.pre744.i, %.loopexit.._crit_edge607_crit_edge.i ], [ %.pre744807.i, %.preheader.i377 ]
  %.pre-phi.i = phi float [ %.pre745.i, %.loopexit.._crit_edge607_crit_edge.i ], [ %i.cad, %.preheader.i377 ]
  %i.ccc = invoke noundef i32 @_Z9write_trxP11t_trxstatusiPKiPK7t_atomsifPA3_fS7_S7_P12gmx_conect_t(ptr noundef %i.byi, i32 noundef %i.aly, ptr noundef %i.alz, ptr noundef %.0243, i32 noundef 0, float noundef %.pre-phi.i, ptr noundef nonnull %i.am, ptr noundef %.pre744808.i, ptr noundef null, ptr noundef null)
          to label %bb.kf unwind label %.loopexit530.i ; 0 uses

bb.kf:                                            ; preds = %._crit_edge607.i
  %i.ccd = add nuw nsw i32 %.0349608.i, 1         ; 2 uses
  %exitcond729.not.i = icmp eq i32 %i.ccd, %i.alx
  br i1 %exitcond729.not.i, label %._crit_edge611.i, label %bb.kd, !llvm.loop !108

._crit_edge611.i:                                 ; preds = %bb.kf, %.preheader529.i
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.byi)
          to label %bb.kg unwind label %.loopexit.split-lp.loopexit.i

bb.kg:                                            ; preds = %._crit_edge611.i
  %indvars.iv.next731.i = add nuw nsw i64 %indvars.iv730.i, 1 ; 2 uses
  %exitcond735.not.i = icmp eq i64 %indvars.iv.next731.i, %wide.trip.count734.i
  br i1 %exitcond735.not.i, label %._crit_edge615.i, label %bb.jg, !llvm.loop !109

._crit_edge615.i:                                 ; preds = %bb.kg, %.loopexit540.thread.i, %.noexc428
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.111, i32 noundef 891, ptr noundef %i.brh)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i:         ; preds = %._crit_edge615.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.111, i32 noundef 892, ptr noundef %i.bri)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit477.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit477.i:      ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i
  %i.cce = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.ccf = load ptr, ptr %i.cce, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i478.i = icmp eq ptr %i.ccf, null
  br i1 %.not.i.i.i478.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i, label %bb.kh

bb.kh:                                            ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit477.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cce, ptr noundef nonnull %i.ccf) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i: ; preds = %bb.kh, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit477.i
  %i.ccg = load ptr, ptr %20, align 8, !tbaa !25  ; 2 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cci = icmp eq ptr %i.ccg, %i.cch
  br i1 %i.cci, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit482.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i
  %i.ccj = load i64, ptr %i.cch, align 8, !tbaa !26
  %i.cck = add i64 %i.ccj, 1
  call void @_ZdlPvm(ptr noundef %i.ccg, i64 noundef %i.cck) #25
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit482.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit482.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i479.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i480.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %_ZL7projectPKcPK10t_topology7PbcTypePA3_fS0_S0_S0_S0_S0_iS0_bfiPK7t_atomsiPibS6_iSA_PfPKfS6_SA_PS6_iSA_bPK16gmx_output_env_t.exit

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit530.i, %bb.ke, %bb.jx
  %.pn406.i = phi { ptr, i32 } [ %.pn404.i, %bb.jx ], [ %lpad.phi535.i, %bb.ke ], [ %lpad.loopexit.i, %.loopexit530.i ], [ %lpad.loopexit536.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp537.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.ki

bb.ki:                                            ; preds = %.loopexit.split-lp.i, %bb.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.i, %bb.gk, %bb.gj, %bb.gd
  %.pn411.i = phi { ptr, i32 } [ %i.ant, %bb.gk ], [ %.pn409.i, %bb.iz ], [ %.pn406.i, %.loopexit.split-lp.i ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441.i ], [ %i.bhp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.i ], [ %i.ans, %bb.gj ], [ %i.ang, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  br label %.body

_ZL7projectPKcPK10t_topology7PbcTypePA3_fS0_S0_S0_S0_S0_iS0_bfiPK7t_atomsiPibS6_iSA_PfPKfS6_SA_PS6_iSA_bPK16gmx_output_env_t.exit: ; preds = %bb.ja, %_ZNSt10filesystem7__cxx114pathD2Ev.exit482.i
  %i.ccl = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc402.i = call i32 @fputc(i32 10, ptr %i.ccl) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.kj

bb.kj:                                            ; preds = %_ZL7projectPKcPK10t_topology7PbcTypePA3_fS0_S0_S0_S0_S0_iS0_bfiPK7t_atomsiPibS6_iSA_PfPKfS6_SA_PS6_iSA_bPK16gmx_output_env_t.exit, %bb.fv
  br i1 %i.fc, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.ccm = load i32, ptr %i.an, align 4, !tbaa !9
  %i.ccn = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.cco = load i32, ptr %i.af, align 4, !tbaa !9
  %i.ccp = load ptr, ptr %i.ah, align 8, !tbaa !134
  %i.ccq = load ptr, ptr %i.al, align 8, !tbaa !13
  %i.ccr = load ptr, ptr %i.ba, align 8, !tbaa !169
  invoke fastcc void @_ZL7overlapPKciPPA3_fiPiS3_iS4_PK16gmx_output_env_t(ptr noundef %i.eq, i32 noundef %i.ccm, ptr noundef %i.ccn, i32 noundef %i.cco, ptr noundef %i.ccp, ptr noundef %i.ccq, i32 noundef %.0230.lcssa959, ptr noundef %i.aek, ptr noundef %i.ccr)
          to label %bb.kl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  br i1 %i.fg, label %bb.km, label %bb.le

bb.km:                                            ; preds = %bb.kl
  %i.ccs = load i32, ptr %i.an, align 4, !tbaa !9 ; 4 uses
  %i.cct = load i32, ptr %i.ae, align 4, !tbaa !9 ; 4 uses
  %i.ccu = load ptr, ptr %i.ag, align 8, !tbaa !134 ; 3 uses
  %i.ccv = load ptr, ptr %i.ak, align 8, !tbaa !13
  %i.ccw = load i32, ptr %i.af, align 4, !tbaa !9 ; 17 uses
  %i.ccx = load ptr, ptr %i.ah, align 8, !tbaa !134 ; 8 uses
  %i.ccy = load ptr, ptr %i.al, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.er, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ccz = sext i32 %i.ccw to i64
  %i.cda = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.111, i32 noundef 352, i64 noundef range(i64 -2147483648, 2147483648) %i.ccz, i64 noundef 4)
          to label %.noexc448 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc448:                                        ; preds = %bb.km
  br i1 %i.ez, label %.preheader154.i, label %.preheader156.i

.preheader156.i:                                  ; preds = %.noexc448
  %i.cdb = icmp sgt i32 %i.ccw, 0
  br i1 %i.cdb, label %iter.check1242, label %.loopexit155.i

iter.check1242:                                   ; preds = %.preheader156.i
  %wide.trip.count.i443 = zext nneg i32 %i.ccw to i64 ; 6 uses
  %min.iters.check1227 = icmp ult i32 %i.ccw, 4
  br i1 %min.iters.check1227, label %.lr.ph.i444.preheader, label %vector.main.loop.iter.check1228

vector.main.loop.iter.check1228:                  ; preds = %iter.check1242
  %min.iters.check1229 = icmp ult i32 %i.ccw, 32
  br i1 %min.iters.check1229, label %vec.epilog.ph1246, label %vector.ph1230

vector.ph1230:                                    ; preds = %vector.main.loop.iter.check1228
  %i.cdc = and i64 %wide.trip.count.i443, 28
  %n.vec1231 = and i64 %wide.trip.count.i443, 2147483616 ; 4 uses
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.ph1230, %vector.body1232
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1238, %vector.body1232 ] ; 3 uses
  %i.cdd = getelementptr inbounds nuw [4 x i8], ptr %i.ccx, i64 %index1233 ; 4 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 32
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cdd, i64 64
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdd, i64 96
  %wide.load1234 = load <8 x i32>, ptr %i.cdd, align 4, !tbaa !9
  %wide.load1235 = load <8 x i32>, ptr %i.cde, align 4, !tbaa !9
  %wide.load1236 = load <8 x i32>, ptr %i.cdf, align 4, !tbaa !9
  %wide.load1237 = load <8 x i32>, ptr %i.cdg, align 4, !tbaa !9
  %i.cdh = add nsw <8 x i32> %wide.load1234, splat (i32 1)
  %i.cdi = add nsw <8 x i32> %wide.load1235, splat (i32 1)
  %i.cdj = add nsw <8 x i32> %wide.load1236, splat (i32 1)
  %i.cdk = add nsw <8 x i32> %wide.load1237, splat (i32 1)
  %i.cdl = sitofp <8 x i32> %i.cdh to <8 x float>
  %i.cdm = sitofp <8 x i32> %i.cdi to <8 x float>
  %i.cdn = sitofp <8 x i32> %i.cdj to <8 x float>
  %i.cdo = sitofp <8 x i32> %i.cdk to <8 x float>
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.cda, i64 %index1233 ; 4 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 32
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdp, i64 64
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdp, i64 96
  store <8 x float> %i.cdl, ptr %i.cdp, align 4, !tbaa !28
  store <8 x float> %i.cdm, ptr %i.cdq, align 4, !tbaa !28
  store <8 x float> %i.cdn, ptr %i.cdr, align 4, !tbaa !28
  store <8 x float> %i.cdo, ptr %i.cds, align 4, !tbaa !28
  %index.next1238 = add nuw i64 %index1233, 32    ; 2 uses
  %i.cdt = icmp eq i64 %index.next1238, %n.vec1231
  br i1 %i.cdt, label %middle.block1239, label %vector.body1232, !llvm.loop !110

middle.block1239:                                 ; preds = %vector.body1232
  %cmp.n1240 = icmp eq i64 %n.vec1231, %wide.trip.count.i443
  br i1 %cmp.n1240, label %.loopexit155.i, label %vec.epilog.iter.check1244

vec.epilog.iter.check1244:                        ; preds = %middle.block1239
  %min.epilog.iters.check1245 = icmp eq i64 %i.cdc, 0
  br i1 %min.epilog.iters.check1245, label %.lr.ph.i444.preheader, label %vec.epilog.ph1246, !prof !35

vec.epilog.ph1246:                                ; preds = %vector.main.loop.iter.check1228, %vec.epilog.iter.check1244
  %vec.epilog.resume.val1241 = phi i64 [ %n.vec1231, %vec.epilog.iter.check1244 ], [ 0, %vector.main.loop.iter.check1228 ]
  %n.vec1247 = and i64 %wide.trip.count.i443, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1248

vec.epilog.vector.body1248:                       ; preds = %vec.epilog.vector.body1248, %vec.epilog.ph1246
  %index1249 = phi i64 [ %vec.epilog.resume.val1241, %vec.epilog.ph1246 ], [ %index.next1251, %vec.epilog.vector.body1248 ] ; 3 uses
  %i.cdu = getelementptr inbounds nuw [4 x i8], ptr %i.ccx, i64 %index1249
  %wide.load1250 = load <4 x i32>, ptr %i.cdu, align 4, !tbaa !9
  %i.cdv = add nsw <4 x i32> %wide.load1250, splat (i32 1)
  %i.cdw = sitofp <4 x i32> %i.cdv to <4 x float>
  %i.cdx = getelementptr inbounds nuw [4 x i8], ptr %i.cda, i64 %index1249
  store <4 x float> %i.cdw, ptr %i.cdx, align 4, !tbaa !28
  %index.next1251 = add nuw i64 %index1249, 4     ; 2 uses
  %i.cdy = icmp eq i64 %index.next1251, %n.vec1247
  br i1 %i.cdy, label %vec.epilog.middle.block1252, label %vec.epilog.vector.body1248, !llvm.loop !111

vec.epilog.middle.block1252:                      ; preds = %vec.epilog.vector.body1248
  %cmp.n1253 = icmp eq i64 %n.vec1247, %wide.trip.count.i443
  br i1 %cmp.n1253, label %.loopexit155.i, label %.lr.ph.i444.preheader

.lr.ph.i444.preheader:                            ; preds = %iter.check1242, %vec.epilog.iter.check1244, %vec.epilog.middle.block1252
  %indvars.iv.i445.ph = phi i64 [ 0, %iter.check1242 ], [ %n.vec1231, %vec.epilog.iter.check1244 ], [ %n.vec1247, %vec.epilog.middle.block1252 ]
  br label %.lr.ph.i444

.preheader154.i:                                  ; preds = %.noexc448
  %i.cdz = icmp sgt i32 %.0230.lcssa959, 0
  br i1 %i.cdz, label %.lr.ph161.preheader.i, label %.loopexit155.i

.lr.ph161.preheader.i:                            ; preds = %.preheader154.i
  %wide.trip.count209.i = zext nneg i32 %.0230.lcssa959 to i64 ; 2 uses
  %xtraiter1394 = and i64 %wide.trip.count209.i, 3 ; 3 uses
  %i.cea = add nsw i32 %.0230.lcssa959, -1
  %i.ceb = icmp ult i32 %i.cea, 3
  br i1 %i.ceb, label %.lr.ph161.i.epil.preheader, label %.lr.ph161.preheader.i.new

.lr.ph161.preheader.i.new:                        ; preds = %.lr.ph161.preheader.i
  %unroll_iter1399 = and i64 %wide.trip.count209.i, 2147483644
  br label %.lr.ph161.i

.lr.ph161.i:                                      ; preds = %bb.kr, %.lr.ph161.preheader.i.new
  %indvars.iv206.i = phi i64 [ 0, %.lr.ph161.preheader.i.new ], [ %indvars.iv.next207.i.3, %bb.kr ] ; 5 uses
  %.084160.i = phi i32 [ 0, %.lr.ph161.preheader.i.new ], [ %.185.i.3, %bb.kr ] ; 3 uses
  %niter1400 = phi i64 [ 0, %.lr.ph161.preheader.i.new ], [ %niter1400.next.3, %bb.kr ]
  %i.cec = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv206.i
  %i.ced = load i32, ptr %i.cec, align 4, !tbaa !9 ; 2 uses
  %i.cee = icmp slt i32 %i.ced, %i.ccw
  br i1 %i.cee, label %bb.kn, label %.lr.ph161.i.1

bb.kn:                                            ; preds = %.lr.ph161.i
  %i.cef = sext i32 %i.ced to i64
  %i.ceg = getelementptr inbounds [4 x i8], ptr %i.ccx, i64 %i.cef
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !9
  %i.cei = add nsw i32 %i.ceh, 1
  %i.cej = sitofp i32 %i.cei to float
  %i.cek = sext i32 %.084160.i to i64
  %i.cel = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cek
  store float %i.cej, ptr %i.cel, align 4, !tbaa !28
  %i.cem = add i32 %.084160.i, 1
  br label %.lr.ph161.i.1

.lr.ph161.i.1:                                    ; preds = %bb.kn, %.lr.ph161.i
  %.185.i = phi i32 [ %i.cem, %bb.kn ], [ %.084160.i, %.lr.ph161.i ] ; 3 uses
  %i.cen = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv206.i
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 4
  %i.cep = load i32, ptr %i.ceo, align 4, !tbaa !9 ; 2 uses
  %i.ceq = icmp slt i32 %i.cep, %i.ccw
  br i1 %i.ceq, label %bb.ko, label %.lr.ph161.i.2

bb.ko:                                            ; preds = %.lr.ph161.i.1
  %i.cer = sext i32 %i.cep to i64
  %i.ces = getelementptr inbounds [4 x i8], ptr %i.ccx, i64 %i.cer
  %i.cet = load i32, ptr %i.ces, align 4, !tbaa !9
  %i.ceu = add nsw i32 %i.cet, 1
  %i.cev = sitofp i32 %i.ceu to float
  %i.cew = sext i32 %.185.i to i64
  %i.cex = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cew
  store float %i.cev, ptr %i.cex, align 4, !tbaa !28
  %i.cey = add i32 %.185.i, 1
  br label %.lr.ph161.i.2

.lr.ph161.i.2:                                    ; preds = %bb.ko, %.lr.ph161.i.1
  %.185.i.1 = phi i32 [ %i.cey, %bb.ko ], [ %.185.i, %.lr.ph161.i.1 ] ; 3 uses
  %i.cez = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv206.i
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cez, i64 8
  %i.cfb = load i32, ptr %i.cfa, align 4, !tbaa !9 ; 2 uses
  %i.cfc = icmp slt i32 %i.cfb, %i.ccw
  br i1 %i.cfc, label %bb.kp, label %.lr.ph161.i.3

bb.kp:                                            ; preds = %.lr.ph161.i.2
  %i.cfd = sext i32 %i.cfb to i64
  %i.cfe = getelementptr inbounds [4 x i8], ptr %i.ccx, i64 %i.cfd
  %i.cff = load i32, ptr %i.cfe, align 4, !tbaa !9
  %i.cfg = add nsw i32 %i.cff, 1
  %i.cfh = sitofp i32 %i.cfg to float
  %i.cfi = sext i32 %.185.i.1 to i64
  %i.cfj = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cfi
  store float %i.cfh, ptr %i.cfj, align 4, !tbaa !28
  %i.cfk = add i32 %.185.i.1, 1
  br label %.lr.ph161.i.3

.lr.ph161.i.3:                                    ; preds = %bb.kp, %.lr.ph161.i.2
  %.185.i.2 = phi i32 [ %i.cfk, %bb.kp ], [ %.185.i.1, %.lr.ph161.i.2 ] ; 3 uses
  %i.cfl = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv206.i
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.cfl, i64 12
  %i.cfn = load i32, ptr %i.cfm, align 4, !tbaa !9 ; 2 uses
  %i.cfo = icmp slt i32 %i.cfn, %i.ccw
  br i1 %i.cfo, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %.lr.ph161.i.3
  %i.cfp = sext i32 %i.cfn to i64
  %i.cfq = getelementptr inbounds [4 x i8], ptr %i.ccx, i64 %i.cfp
  %i.cfr = load i32, ptr %i.cfq, align 4, !tbaa !9
  %i.cfs = add nsw i32 %i.cfr, 1
  %i.cft = sitofp i32 %i.cfs to float
  %i.cfu = sext i32 %.185.i.2 to i64
  %i.cfv = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cfu
  store float %i.cft, ptr %i.cfv, align 4, !tbaa !28
  %i.cfw = add i32 %.185.i.2, 1
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %.lr.ph161.i.3
  %.185.i.3 = phi i32 [ %i.cfw, %bb.kq ], [ %.185.i.2, %.lr.ph161.i.3 ] ; 3 uses
  %indvars.iv.next207.i.3 = add nuw nsw i64 %indvars.iv206.i, 4 ; 2 uses
  %niter1400.next.3 = add i64 %niter1400, 4       ; 2 uses
  %niter1400.ncmp.3 = icmp eq i64 %niter1400.next.3, %unroll_iter1399
  br i1 %niter1400.ncmp.3, label %.loopexit155.i.loopexit.unr-lcssa, label %.lr.ph161.i, !llvm.loop !112

.lr.ph.i444:                                      ; preds = %.lr.ph.i444.preheader, %.lr.ph.i444
  %indvars.iv.i445 = phi i64 [ %indvars.iv.next.i446, %.lr.ph.i444 ], [ %indvars.iv.i445.ph, %.lr.ph.i444.preheader ] ; 3 uses
  %i.cfx = getelementptr inbounds nuw [4 x i8], ptr %i.ccx, i64 %indvars.iv.i445
  %i.cfy = load i32, ptr %i.cfx, align 4, !tbaa !9
  %i.cfz = add nsw i32 %i.cfy, 1
  %i.cga = sitofp i32 %i.cfz to float
  %i.cgb = getelementptr inbounds nuw [4 x i8], ptr %i.cda, i64 %indvars.iv.i445
  store float %i.cga, ptr %i.cgb, align 4, !tbaa !28
  %indvars.iv.next.i446 = add nuw nsw i64 %indvars.iv.i445, 1 ; 2 uses
  %exitcond.not.i447 = icmp eq i64 %indvars.iv.next.i446, %wide.trip.count.i443
  br i1 %exitcond.not.i447, label %.loopexit155.i, label %.lr.ph.i444, !llvm.loop !113

.loopexit155.i.loopexit.unr-lcssa:                ; preds = %bb.kr
  %lcmp.mod1396.not = icmp eq i64 %xtraiter1394, 0
  br i1 %lcmp.mod1396.not, label %.loopexit155.i, label %.lr.ph161.i.epil.preheader

.lr.ph161.i.epil.preheader:                       ; preds = %.loopexit155.i.loopexit.unr-lcssa, %.lr.ph161.preheader.i
  %indvars.iv206.i.epil.init = phi i64 [ 0, %.lr.ph161.preheader.i ], [ %indvars.iv.next207.i.3, %.loopexit155.i.loopexit.unr-lcssa ]
  %.084160.i.epil.init = phi i32 [ 0, %.lr.ph161.preheader.i ], [ %.185.i.3, %.loopexit155.i.loopexit.unr-lcssa ]
  %lcmp.mod1398 = icmp ne i64 %xtraiter1394, 0
  call void @llvm.assume(i1 %lcmp.mod1398)
  br label %.lr.ph161.i.epil

.lr.ph161.i.epil:                                 ; preds = %bb.kt, %.lr.ph161.i.epil.preheader
  %indvars.iv206.i.epil = phi i64 [ %indvars.iv206.i.epil.init, %.lr.ph161.i.epil.preheader ], [ %indvars.iv.next207.i.epil, %bb.kt ] ; 2 uses
  %.084160.i.epil = phi i32 [ %.084160.i.epil.init, %.lr.ph161.i.epil.preheader ], [ %.185.i.epil, %bb.kt ] ; 3 uses
  %epil.iter1395 = phi i64 [ 0, %.lr.ph161.i.epil.preheader ], [ %epil.iter1395.next, %bb.kt ]
  %i.cgc = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv206.i.epil
  %i.cgd = load i32, ptr %i.cgc, align 4, !tbaa !9 ; 2 uses
  %i.cge = icmp slt i32 %i.cgd, %i.ccw
  br i1 %i.cge, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %.lr.ph161.i.epil
  %i.cgf = sext i32 %i.cgd to i64
  %i.cgg = getelementptr inbounds [4 x i8], ptr %i.ccx, i64 %i.cgf
  %i.cgh = load i32, ptr %i.cgg, align 4, !tbaa !9
  %i.cgi = add nsw i32 %i.cgh, 1
  %i.cgj = sitofp i32 %i.cgi to float
  %i.cgk = sext i32 %.084160.i.epil to i64
  %i.cgl = getelementptr inbounds [4 x i8], ptr %i.cda, i64 %i.cgk
  store float %i.cgj, ptr %i.cgl, align 4, !tbaa !28
  %i.cgm = add i32 %.084160.i.epil, 1
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %.lr.ph161.i.epil
  %.185.i.epil = phi i32 [ %i.cgm, %bb.ks ], [ %.084160.i.epil, %.lr.ph161.i.epil ] ; 2 uses
  %indvars.iv.next207.i.epil = add nuw nsw i64 %indvars.iv206.i.epil, 1
  %epil.iter1395.next = add i64 %epil.iter1395, 1 ; 2 uses
  %epil.iter1395.cmp.not = icmp eq i64 %epil.iter1395.next, %xtraiter1394
  br i1 %epil.iter1395.cmp.not, label %.loopexit155.i, label %.lr.ph161.i.epil, !llvm.loop !114

.loopexit155.i:                                   ; preds = %.lr.ph.i444, %.loopexit155.i.loopexit.unr-lcssa, %bb.kt, %middle.block1239, %vec.epilog.middle.block1252, %.preheader154.i, %.preheader156.i
  %.087.i = phi i32 [ %.0230.lcssa959, %.preheader154.i ], [ %i.cct, %.preheader156.i ], [ %i.cct, %middle.block1239 ], [ %.0230.lcssa959, %.loopexit155.i.loopexit.unr-lcssa ], [ %i.cct, %vec.epilog.middle.block1252 ], [ %.0230.lcssa959, %bb.kt ], [ %i.cct, %.lr.ph.i444 ] ; 6 uses
  %.286.i = phi i32 [ 0, %.preheader154.i ], [ %i.ccw, %.preheader156.i ], [ %i.ccw, %middle.block1239 ], [ %.185.i.epil, %bb.kt ], [ %i.ccw, %vec.epilog.middle.block1252 ], [ %.185.i.3, %.loopexit155.i.loopexit.unr-lcssa ], [ %i.ccw, %.lr.ph.i444 ] ; 7 uses
  %i.cgn = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.cgo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cgn, ptr noundef nonnull @.str.233, i32 noundef %.087.i, i32 noundef %i.ccw) #24 ; 0 uses
  %i.cgp = sext i32 %.087.i to i64                ; 2 uses
  %i.cgq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.111, i32 noundef 378, i64 noundef range(i64 -2147483648, 2147483648) %i.cgp, i64 noundef 8)
          to label %.noexc449 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc449:                                        ; preds = %.loopexit155.i
  %i.cgr = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.111, i32 noundef 379, i64 noundef range(i64 -2147483648, 2147483648) %i.cgp, i64 noundef 4)
          to label %.noexc450 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc450:                                        ; preds = %.noexc449
  %i.cgs = icmp sgt i32 %.087.i, 0
  br i1 %i.cgs, label %.lr.ph185.i, label %._crit_edge.i431

.lr.ph185.i:                                      ; preds = %.noexc450
  %i.cgt = sext i32 %.286.i to i64                ; 3 uses
  %i.cgu = icmp sgt i32 %.286.i, 0
end_hunk_2
begin_hunk_3_@_Z10gmx_anaeigiPPc:bb.a
  %i.csx = load float, ptr %i.csv, align 4, !tbaa !28
  %i.csy = getelementptr inbounds nuw i8, ptr %i.csu, i64 4
  %i.csz = load float, ptr %i.csy, align 4, !tbaa !28
  %i.cta = getelementptr inbounds nuw i8, ptr %i.csv, i64 4
  %i.ctb = load float, ptr %i.cta, align 4, !tbaa !28
  %i.ctc = fmul float %i.csz, %i.ctb
  %i.ctd = call float @llvm.fmuladd.f32(float %i.csw, float %i.csx, float %i.ctc)
  %i.cte = getelementptr inbounds nuw i8, ptr %i.csu, i64 8
  %i.ctf = load float, ptr %i.cte, align 4, !tbaa !28
  %i.ctg = getelementptr inbounds nuw i8, ptr %i.csv, i64 8
  %i.cth = load float, ptr %i.ctg, align 4, !tbaa !28
  %i.cti = call noundef float @llvm.fmuladd.f32(float %i.ctf, float %i.cth, float %i.ctd)
  %i.ctj = fpext float %i.cti to double
  %i.ctk = fadd double %i.cst, %i.ctj             ; 3 uses
  %indvars.iv.next205.i.1 = add nuw nsw i64 %indvars.iv204.i, 2 ; 2 uses
  %niter1444.next.1 = add i64 %niter1444, 2       ; 2 uses
  %niter1444.ncmp.1 = icmp eq i64 %niter1444.next.1, %unroll_iter1443
  br i1 %niter1444.ncmp.1, label %._crit_edge150.us.us.us.i.unr-lcssa, label %.preheader.us.us.us.i.new, !llvm.loop !126

._crit_edge150.us.us.us.i.unr-lcssa:              ; preds = %.preheader.us.us.us.i.new
  br i1 %lcmp.mod1440.not, label %._crit_edge150.us.us.us.i, label %.epil.preheader1437

.epil.preheader1437:                              ; preds = %._crit_edge150.us.us.us.i.unr-lcssa, %.preheader.us.us.us.i
  %indvars.iv204.i.epil.init = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next205.i.1, %._crit_edge150.us.us.us.i.unr-lcssa ] ; 2 uses
  %.0148.us.us.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.us.i ], [ %i.ctk, %._crit_edge150.us.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1442)
  %i.ctl = getelementptr inbounds nuw [12 x i8], ptr %i.csa, i64 %indvars.iv204.i.epil.init ; 3 uses
  %i.ctm = getelementptr inbounds nuw [12 x i8], ptr %i.csc, i64 %indvars.iv204.i.epil.init ; 3 uses
  %i.ctn = load float, ptr %i.ctl, align 4, !tbaa !28
  %i.cto = load float, ptr %i.ctm, align 4, !tbaa !28
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.ctl, i64 4
  %i.ctq = load float, ptr %i.ctp, align 4, !tbaa !28
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.ctm, i64 4
  %i.cts = load float, ptr %i.ctr, align 4, !tbaa !28
  %i.ctt = fmul float %i.ctq, %i.cts
  %i.ctu = call float @llvm.fmuladd.f32(float %i.ctn, float %i.cto, float %i.ctt)
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.ctl, i64 8
  %i.ctw = load float, ptr %i.ctv, align 4, !tbaa !28
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.ctm, i64 8
  %i.cty = load float, ptr %i.ctx, align 4, !tbaa !28
  %i.ctz = call noundef float @llvm.fmuladd.f32(float %i.ctw, float %i.cty, float %i.ctu)
  %i.cua = fpext float %i.ctz to double
  %i.cub = fadd double %.0148.us.us.us.i.epil.init, %i.cua
  br label %._crit_edge150.us.us.us.i

._crit_edge150.us.us.us.i:                        ; preds = %._crit_edge150.us.us.us.i.unr-lcssa, %.epil.preheader1437
  %.lcssa = phi double [ %i.ctk, %._crit_edge150.us.us.us.i.unr-lcssa ], [ %i.cub, %.epil.preheader1437 ] ; 2 uses
  %i.cuc = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv209.i
  %i.cud = load float, ptr %i.cuc, align 4, !tbaa !28
  %i.cue = fpext float %i.cud to double
  %i.cuf = fmul double %.lcssa, %i.cue
  %i.cug = call double @llvm.fmuladd.f64(double %i.cuf, double %.lcssa, double %.082153.us.us.us.i) ; 2 uses
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next210.i, %wide.trip.count217.i
  br i1 %exitcond213.not.i, label %._crit_edge154.split.us.us.us.i, label %.preheader.us.us.us.i, !llvm.loop !127

._crit_edge154.split.us.us.us.i:                  ; preds = %._crit_edge150.us.us.us.i
  %i.cuh = getelementptr inbounds nuw [4 x i8], ptr %i.cnq, i64 %indvars.iv214.i
  %i.cui = load float, ptr %i.cuh, align 4, !tbaa !28
  %i.cuj = fpext float %i.cui to double
  %i.cuk = call double @llvm.fmuladd.f64(double %i.cuj, double %i.cug, double %.083157.us.us.i) ; 2 uses
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %exitcond218.not.i = icmp eq i64 %indvars.iv.next215.i, %wide.trip.count217.i
  br i1 %exitcond218.not.i, label %_ZL7compareiiPPA3_fiS1_PfiS2_i.exit, label %.preheader128.us.us.i, !llvm.loop !128

.preheader128.us.i:                               ; preds = %.preheader128.us.i.preheader, %._crit_edge154.split.us164.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %._crit_edge154.split.us164.i ], [ 0, %.preheader128.us.i.preheader ] ; 2 uses
  %.083157.us.i = phi double [ %i.cwo, %._crit_edge154.split.us164.i ], [ 0.000000e+00, %.preheader128.us.i.preheader ]
  br i1 %i.crx, label %.preheader.us161.i.epil.preheader, label %.preheader.us161.i

.preheader.us161.i:                               ; preds = %.preheader128.us.i, %.preheader.us161.i
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i.7, %.preheader.us161.i ], [ 0, %.preheader128.us.i ] ; 9 uses
  %.082153.us162.i = phi double [ %i.cwf, %.preheader.us161.i ], [ 0.000000e+00, %.preheader128.us.i ]
  %niter1436 = phi i64 [ %niter1436.next.7, %.preheader.us161.i ], [ 0, %.preheader128.us.i ]
  %i.cul = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv194.i
  %i.cum = load float, ptr %i.cul, align 4, !tbaa !28
  %i.cun = fpext float %i.cum to double
  %i.cuo = fmul double %i.cun, 0.000000e+00
  %i.cup = call double @llvm.fmuladd.f64(double %i.cuo, double 0.000000e+00, double %.082153.us162.i)
  %i.cuq = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv194.i
  %i.cur = getelementptr inbounds nuw i8, ptr %i.cuq, i64 4
  %i.cus = load float, ptr %i.cur, align 4, !tbaa !28
  %i.cut = fpext float %i.cus to double
  %i.cuu = fmul double %i.cut, 0.000000e+00
  %i.cuv = call double @llvm.fmuladd.f64(double %i.cuu, double 0.000000e+00, double %i.cup)
  %i.cuw = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv194.i
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cuw, i64 8
  %i.cuy = load float, ptr %i.cux, align 4, !tbaa !28
  %i.cuz = fpext float %i.cuy to double
  %i.cva = fmul double %i.cuz, 0.000000e+00
  %i.cvb = call double @llvm.fmuladd.f64(double %i.cva, double 0.000000e+00, double %i.cuv)
  %i.cvc = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv194.i
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.cvc, i64 12
  %i.cve = load float, ptr %i.cvd, align 4, !tbaa !28
  %i.cvf = fpext float %i.cve to double
  %i.cvg = fmul double %i.cvf, 0.000000e+00
  %i.cvh = call double @llvm.fmuladd.f64(double %i.cvg, double 0.000000e+00, double %i.cvb)
  %i.cvi = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv194.i
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cvi, i64 16
  %i.cvk = load float, ptr %i.cvj, align 4, !tbaa !28
  %i.cvl = fpext float %i.cvk to double
  %i.cvm = fmul double %i.cvl, 0.000000e+00
  %i.cvn = call double @llvm.fmuladd.f64(double %i.cvm, double 0.000000e+00, double %i.cvh)
  %i.cvo = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv194.i
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 20
  %i.cvq = load float, ptr %i.cvp, align 4, !tbaa !28
  %i.cvr = fpext float %i.cvq to double
  %i.cvs = fmul double %i.cvr, 0.000000e+00
  %i.cvt = call double @llvm.fmuladd.f64(double %i.cvs, double 0.000000e+00, double %i.cvn)
  %i.cvu = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv194.i
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cvu, i64 24
  %i.cvw = load float, ptr %i.cvv, align 4, !tbaa !28
  %i.cvx = fpext float %i.cvw to double
  %i.cvy = fmul double %i.cvx, 0.000000e+00
  %i.cvz = call double @llvm.fmuladd.f64(double %i.cvy, double 0.000000e+00, double %i.cvt)
  %i.cwa = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv194.i
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.cwa, i64 28
  %i.cwc = load float, ptr %i.cwb, align 4, !tbaa !28
  %i.cwd = fpext float %i.cwc to double
  %i.cwe = fmul double %i.cwd, 0.000000e+00
  %i.cwf = call double @llvm.fmuladd.f64(double %i.cwe, double 0.000000e+00, double %i.cvz) ; 3 uses
  %indvars.iv.next195.i.7 = add nuw nsw i64 %indvars.iv194.i, 8 ; 2 uses
  %niter1436.next.7 = add i64 %niter1436, 8       ; 2 uses
  %niter1436.ncmp.7 = icmp eq i64 %niter1436.next.7, %unroll_iter1435
  br i1 %niter1436.ncmp.7, label %._crit_edge154.split.us164.i.unr-lcssa, label %.preheader.us161.i, !llvm.loop !127

._crit_edge154.split.us164.i.unr-lcssa:           ; preds = %.preheader.us161.i
  br i1 %lcmp.mod1432.not, label %._crit_edge154.split.us164.i, label %.preheader.us161.i.epil.preheader

.preheader.us161.i.epil.preheader:                ; preds = %._crit_edge154.split.us164.i.unr-lcssa, %.preheader128.us.i
  %indvars.iv194.i.epil.init = phi i64 [ 0, %.preheader128.us.i ], [ %indvars.iv.next195.i.7, %._crit_edge154.split.us164.i.unr-lcssa ]
  %.082153.us162.i.epil.init = phi double [ 0.000000e+00, %.preheader128.us.i ], [ %i.cwf, %._crit_edge154.split.us164.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1434)
  br label %.preheader.us161.i.epil

.preheader.us161.i.epil:                          ; preds = %.preheader.us161.i.epil, %.preheader.us161.i.epil.preheader
  %indvars.iv194.i.epil = phi i64 [ %indvars.iv.next195.i.epil, %.preheader.us161.i.epil ], [ %indvars.iv194.i.epil.init, %.preheader.us161.i.epil.preheader ] ; 2 uses
  %.082153.us162.i.epil = phi double [ %i.cwk, %.preheader.us161.i.epil ], [ %.082153.us162.i.epil.init, %.preheader.us161.i.epil.preheader ]
  %epil.iter1431 = phi i64 [ %epil.iter1431.next, %.preheader.us161.i.epil ], [ 0, %.preheader.us161.i.epil.preheader ]
  %i.cwg = getelementptr inbounds nuw [4 x i8], ptr %i.cnr, i64 %indvars.iv194.i.epil
  %i.cwh = load float, ptr %i.cwg, align 4, !tbaa !28
  %i.cwi = fpext float %i.cwh to double
  %i.cwj = fmul double %i.cwi, 0.000000e+00
  %i.cwk = call double @llvm.fmuladd.f64(double %i.cwj, double 0.000000e+00, double %.082153.us162.i.epil) ; 2 uses
  %indvars.iv.next195.i.epil = add nuw nsw i64 %indvars.iv194.i.epil, 1
  %epil.iter1431.next = add i64 %epil.iter1431, 1 ; 2 uses
  %epil.iter1431.cmp.not = icmp eq i64 %epil.iter1431.next, %xtraiter1430
  br i1 %epil.iter1431.cmp.not, label %._crit_edge154.split.us164.i, label %.preheader.us161.i.epil, !llvm.loop !129

._crit_edge154.split.us164.i:                     ; preds = %.preheader.us161.i.epil, %._crit_edge154.split.us164.i.unr-lcssa
  %.lcssa1260 = phi double [ %i.cwf, %._crit_edge154.split.us164.i.unr-lcssa ], [ %i.cwk, %.preheader.us161.i.epil ]
  %i.cwl = getelementptr inbounds nuw [4 x i8], ptr %i.cnq, i64 %indvars.iv199.i
  %i.cwm = load float, ptr %i.cwl, align 4, !tbaa !28
  %i.cwn = fpext float %i.cwm to double
  %i.cwo = call double @llvm.fmuladd.f64(double %i.cwn, double %.lcssa1260, double %.083157.us.i) ; 2 uses
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %exitcond203.not.i = icmp eq i64 %indvars.iv.next200.i, %wide.trip.count217.i
  br i1 %exitcond203.not.i, label %_ZL7compareiiPPA3_fiS1_PfiS2_i.exit, label %.preheader128.us.i, !llvm.loop !128

_ZL7compareiiPPA3_fiS1_PfiS2_i.exit:              ; preds = %._crit_edge154.split.us164.i, %._crit_edge154.split.us.us.us.i, %bb.lh
  %.083.lcssa.i = phi double [ 0.000000e+00, %bb.lh ], [ %i.cuk, %._crit_edge154.split.us.us.us.i ], [ %i.cwo, %._crit_edge154.split.us164.i ] ; 2 uses
  %i.cwp = fadd double %.087.lcssa.i, %.086.lcssa226.i ; 2 uses
  %i.cwq = call double @llvm.fmuladd.f64(double %.083.lcssa.i, double -2.000000e+00, double %i.cwp) ; 2 uses
  %i.cwr = fcmp olt double %i.cwq, 0.000000e+00
  %spec.store.select.i = select i1 %i.cwr, double 0.000000e+00, double %i.cwq
  %i.cws = load ptr, ptr @stdout, align 8, !tbaa !20
  %fwrite.i460 = call i64 @fwrite(ptr nonnull @.str.245, i64 40, i64 1, ptr %i.cws) ; 0 uses
  %i.cwt = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cwu = fdiv double %spec.store.select.i, %i.cwp
  %i.cwv = call double @sqrt(double noundef %i.cwu) #23
  %i.cww = fsub double 1.000000e+00, %i.cwv
  %i.cwx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cwt, ptr noundef nonnull @.str.246, double noundef %i.cww) #23 ; 0 uses
  %i.cwy = fmul double %.087.lcssa.i, %.086.lcssa226.i
  %i.cwz = call double @sqrt(double noundef %i.cwy) #23
  %i.cxa = fdiv double %.083.lcssa.i, %i.cwz
  %i.cxb = fsub double 1.000000e+00, %i.cxa       ; 2 uses
  %i.cxc = fcmp olt double %i.cxb, 0.000000e+00
  %spec.store.select1.i = select i1 %i.cxc, double 0.000000e+00, double %i.cxb
  %i.cxd = load ptr, ptr @stdout, align 8, !tbaa !20
  %i.cxe = call double @sqrt(double noundef %spec.store.select1.i) #23
  %i.cxf = fsub double 1.000000e+00, %i.cxe
  %i.cxg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cxd, ptr noundef nonnull @.str.247, double noundef %i.cxf) #23 ; 0 uses
  br label %bb.li

bb.li:                                            ; preds = %_ZL7compareiiPPA3_fiS1_PfiS2_i.exit, %bb.le
  %or.cond43 = or i1 %i.fa, %spec.select
  %or.cond45 = or i1 %or.cond43, %i.fc
  %or.cond47 = or i1 %or.cond45, %i.fg
  %or.cond49 = select i1 %or.cond47, i1 true, i1 %i.fo
  %i.cxh = load i8, ptr @_ZZ10gmx_anaeigiPPcE8bEntropy, align 1, !range !153
  %i.cxi = trunc nuw i8 %i.cxh to i1
  %or.cond51 = select i1 %or.cond49, i1 true, i1 %i.cxi
  br i1 %or.cond51, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.cxj = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite = call i64 @fwrite(ptr nonnull @.str.143, i64 77, i64 1, ptr %i.cxj) #28 ; 0 uses
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %i.cxk = load ptr, ptr %i.ba, align 8, !tbaa !169
  invoke void @_Z8view_allPK16gmx_output_env_tiP8t_filenm(ptr noundef %i.cxk, i32 noundef 16, ptr noundef nonnull %29)
          to label %bb.ll unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ll:                                            ; preds = %bb.lk
  %i.cxl = load ptr, ptr %39, align 8, !tbaa !25  ; 2 uses
  %i.cxm = icmp eq ptr %i.cxl, %i.wn
  br i1 %i.cxm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ll
  %i.cxn = load i64, ptr %i.wn, align 8, !tbaa !26
  %i.cxo = add i64 %i.cxn, 1
  call void @_ZdlPvm(ptr noundef %i.cxl, i64 noundef %i.cxo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %bb.lm

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.fu, %bb.ld, %bb.ki, %bb.fd
  %.pn299 = phi { ptr, i32 } [ %.pn294, %bb.fd ], [ %.pn60.i, %bb.fu ], [ %.pn411.i, %bb.ki ], [ %.pn.pn.pn.pn.pn.i, %bb.ld ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit562, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit566, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit570, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit573, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit575, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit580, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit582, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit585, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit588, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit594, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cxp = load ptr, ptr %39, align 8, !tbaa !25  ; 2 uses
  %i.cxq = icmp eq ptr %i.cxp, %i.wn
  br i1 %i.cxq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %.body
  %i.cxr = load i64, ptr %i.wn, align 8, !tbaa !26
  %i.cxs = add i64 %i.cxr, 1
  call void @_ZdlPvm(ptr noundef %i.cxp, i64 noundef %i.cxs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit325

bb.lm:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cxt = getelementptr inbounds nuw i8, ptr %29, i64 896
  br label %bb.ln

bb.ln:                                            ; preds = %_ZN8t_filenmD2Ev.exit, %bb.lm
  %i.cxu = phi ptr [ %i.cxt, %bb.lm ], [ %i.cxv, %_ZN8t_filenmD2Ev.exit ] ; 4 uses
  %i.cxv = getelementptr inbounds i8, ptr %i.cxu, i64 -56 ; 2 uses
  %i.cxw = getelementptr inbounds i8, ptr %i.cxu, i64 -24 ; 2 uses
  %i.cxx = load ptr, ptr %i.cxw, align 8, !tbaa !187 ; 3 uses
  %i.cxy = getelementptr inbounds i8, ptr %i.cxu, i64 -16
  %i.cxz = load ptr, ptr %i.cxy, align 8, !tbaa !188 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cxx, %i.cxz
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ln, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cyf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.cxx, %bb.ln ] ; 3 uses
  %i.cya = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.cyb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cyc = icmp eq ptr %i.cya, %i.cyb
  br i1 %i.cyc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cyd = load i64, ptr %i.cyb, align 8, !tbaa !26
  %i.cye = add i64 %i.cyd, 1
  call void @_ZdlPvm(ptr noundef %i.cya, i64 noundef %i.cye) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cyf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i472 = icmp eq ptr %i.cyf, %i.cxz
  br i1 %.not.i.i.i.i472, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !130

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.cxw, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.ln
  %i.cyg = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cxx, %bb.ln ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cyg, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.lo

bb.lo:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cyh = getelementptr inbounds i8, ptr %i.cxu, i64 -8
  %i.cyi = load ptr, ptr %i.cyh, align 8, !tbaa !189
  %i.cyj = ptrtoint ptr %i.cyi to i64
  %i.cyk = ptrtoint ptr %i.cyg to i64
  %i.cyl = sub i64 %i.cyj, %i.cyk
  call void @_ZdlPvm(ptr noundef nonnull %i.cyg, i64 noundef %i.cyl) #25
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.lo
  %i.cym = icmp eq ptr %i.cxv, %29
  br i1 %i.cym, label %bb.lp, label %bb.ln

bb.lp:                                            ; preds = %_ZN8t_filenmD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  ret i32 0

_ZNSt6vectorIfSaIfEED2Ev.exit325:                 ; preds = %.loopexit610, %.loopexit.split-lp611, %.loopexit604, %.loopexit.split-lp605, %bb.at, %bb.bg, %bb.bh, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, %bb.eg, %bb.dt, %bb.dd, %bb.cq, %bb.ch
  %.pn313.pn = phi { ptr, i32 } [ %.pn277, %bb.cq ], [ %.pn, %bb.al ], [ %.pn306.pn, %bb.ch ], [ %.pn309.pn, %bb.bh ], [ %.pn304, %bb.dt ], [ %.pn302, %bb.eg ], [ %.pn299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471 ], [ %.pn281, %bb.dd ], [ %lpad.loopexit.split-lp607, %.loopexit.split-lp605 ], [ %i.jw, %bb.at ], [ %.pn309.pn, %bb.bg ], [ %lpad.loopexit606, %.loopexit604 ], [ %lpad.loopexit612, %.loopexit610 ], [ %lpad.loopexit.split-lp613, %.loopexit.split-lp611 ]
  %i.cyn = getelementptr inbounds nuw i8, ptr %29, i64 896
  br label %bb.lq

bb.lq:                                            ; preds = %_ZN8t_filenmD2Ev.exit484, %_ZNSt6vectorIfSaIfEED2Ev.exit325
  %i.cyo = phi ptr [ %i.cyn, %_ZNSt6vectorIfSaIfEED2Ev.exit325 ], [ %i.cyp, %_ZN8t_filenmD2Ev.exit484 ] ; 4 uses
  %i.cyp = getelementptr inbounds i8, ptr %i.cyo, i64 -56 ; 2 uses
  %i.cyq = getelementptr inbounds i8, ptr %i.cyo, i64 -24 ; 2 uses
  %i.cyr = load ptr, ptr %i.cyq, align 8, !tbaa !187 ; 3 uses
  %i.cys = getelementptr inbounds i8, ptr %i.cyo, i64 -16
  %i.cyt = load ptr, ptr %i.cys, align 8, !tbaa !188 ; 2 uses
  %.not4.i.i.i.i473 = icmp eq ptr %i.cyr, %i.cyt
  br i1 %.not4.i.i.i.i473, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481, label %.lr.ph.i.i.i.i474

.lr.ph.i.i.i.i474:                                ; preds = %bb.lq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477
  %.05.i.i.i.i475 = phi ptr [ %i.cyz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477 ], [ %i.cyr, %bb.lq ] ; 3 uses
  %i.cyu = load ptr, ptr %.05.i.i.i.i475, align 8, !tbaa !25 ; 2 uses
  %i.cyv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i475, i64 16 ; 2 uses
  %i.cyw = icmp eq ptr %i.cyu, %i.cyv
  br i1 %i.cyw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i476

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i476: ; preds = %.lr.ph.i.i.i.i474
  %i.cyx = load i64, ptr %i.cyv, align 8, !tbaa !26
  %i.cyy = add i64 %i.cyx, 1
  call void @_ZdlPvm(ptr noundef %i.cyu, i64 noundef %i.cyy) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477: ; preds = %.lr.ph.i.i.i.i474, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i476
  %i.cyz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i475, i64 32 ; 2 uses
  %.not.i.i.i.i478 = icmp eq ptr %i.cyz, %i.cyt
  br i1 %.not.i.i.i.i478, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i479, label %.lr.ph.i.i.i.i474, !llvm.loop !130

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i479: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i477
  %.pr.i.i480 = load ptr, ptr %i.cyq, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i479, %bb.lq
  %i.cza = phi ptr [ %.pr.i.i480, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i479 ], [ %i.cyr, %bb.lq ] ; 3 uses
  %.not.i.i1.i.i482 = icmp eq ptr %i.cza, null
  br i1 %.not.i.i1.i.i482, label %_ZN8t_filenmD2Ev.exit484, label %bb.lr

bb.lr:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481
  %i.czb = getelementptr inbounds i8, ptr %i.cyo, i64 -8
  %i.czc = load ptr, ptr %i.czb, align 8, !tbaa !189
  %i.czd = ptrtoint ptr %i.czc to i64
  %i.cze = ptrtoint ptr %i.cza to i64
  %i.czf = sub i64 %i.czd, %i.cze
  call void @_ZdlPvm(ptr noundef nonnull %i.cza, i64 noundef %i.czf) #25
  br label %_ZN8t_filenmD2Ev.exit484

_ZN8t_filenmD2Ev.exit484:                         ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i481, %bb.lr
  %i.czg = icmp eq ptr %i.cyp, %29
  br i1 %i.czg, label %bb.ls, label %bb.lq

bb.ls:                                            ; preds = %_ZN8t_filenmD2Ev.exit484
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #23
end_hunk_3
begin_hunk_4_@_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !26
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !26
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(66) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(66) %1) #23 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.b, ptr %i.a, align 8, !tbaa !36
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !25
  %i.f = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.f, ptr %i.c, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.h, ptr %i.g, align 1, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !34
  %i.k = load ptr, ptr %0, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !26
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare noundef double @_Z20calcSchlitterEntropyN3gmx8ArrayRefIKfEEfb(ptr, ptr, float noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef double @_Z24calcQuasiHarmonicEntropyN3gmx8ArrayRefIKfEEfbf(ptr, ptr, float noundef, i1 noundef zeroext, float noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7reset_xiPKiiS0_PA3_fPKf(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef) local_unnamed_addr #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL10componentsPKciPiPPA3_fiPKiPK16gmx_output_env_t(ptr noundef nonnull %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.146, ptr noundef nonnull %0) #24 ; 0 uses
  %i.d = sext i32 %4 to i64                       ; 2 uses
  %i.e = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.111, i32 noundef 912, i64 noundef range(i64 -2147483648, 2147483648) %i.d, i64 noundef 8) ; 3 uses
  %i.f = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.111, i32 noundef 913, i64 noundef range(i64 -2147483648, 2147483648) %i.d, i64 noundef 8) ; 3 uses
  %i.g = sext i32 %1 to i64                       ; 9 uses
  %i.h = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.111, i32 noundef 914, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4) ; 4 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %iter.check, label %.preheader64.thread

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 12 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i32 %1, 32
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %8 = trunc <8 x i64> %vec.ind to <8 x i32>
  %9 = add <8 x i32> %8, splat (i32 1)
  %10 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.k = add <8 x i32> %10, splat (i32 9)
  %11 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.l = add <8 x i32> %11, splat (i32 17)
  %12 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.m = add <8 x i32> %12, splat (i32 25)
  %i.n = uitofp nneg <8 x i32> %9 to <8 x float>
  %i.o = uitofp nneg <8 x i32> %i.k to <8 x float>
  %i.p = uitofp nneg <8 x i32> %i.l to <8 x float>
  %i.q = uitofp nneg <8 x i32> %i.m to <8 x float>
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store <8 x float> %i.n, ptr %i.r, align 4, !tbaa !28
  store <8 x float> %i.o, ptr %i.s, align 4, !tbaa !28
  store <8 x float> %i.p, ptr %i.t, align 4, !tbaa !28
  store <8 x float> %i.q, ptr %i.u, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader64, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec113 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index114 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind115 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next117, %vec.epilog.vector.body ] ; 2 uses
  %13 = trunc <4 x i64> %vec.ind115 to <4 x i32>
  %14 = add <4 x i32> %13, splat (i32 1)
  %15 = uitofp nneg <4 x i32> %14 to <4 x float>
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index114
  store <4 x float> %15, ptr %i.w, align 4, !tbaa !28
  %index.next116 = add nuw i64 %index114, 4       ; 2 uses
  %vec.ind.next117 = add nuw nsw <4 x i64> %vec.ind115, splat (i64 4)
  %i.x = icmp eq i64 %index.next116, %n.vec113
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !191

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %n.vec113, %wide.trip.count
  br i1 %cmp.n118, label %.preheader64, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec113, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader64:                                     ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.y = icmp sgt i32 %4, 0
  br i1 %i.y, label %.lr.ph71.split.us.preheader, label %._crit_edge.i.i

.preheader64.thread:                              ; preds = %bb.a
  %i.z = icmp sgt i32 %4, 0
  br i1 %i.z, label %.lr.ph71.split.preheader, label %._crit_edge.i.i

.lr.ph71.split.preheader:                         ; preds = %.preheader64.thread
  %wide.trip.count81 = zext nneg i32 %4 to i64
  br label %.lr.ph71.split

.lr.ph71.split.us.preheader:                      ; preds = %.preheader64
  %wide.trip.count99 = zext nneg i32 %4 to i64
  %wide.trip.count94 = zext nneg i32 %1 to i64
  %i.aa = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %i.ab = mul nuw nsw i64 %wide.trip.count, 12
  %min.iters.check158 = icmp ult i32 %1, 16
  %n.vec160 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n171 = icmp eq i64 %n.vec160, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ac = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph71.split.us

.lr.ph71.split.us:                                ; preds = %.lr.ph71.split.us.preheader, %._crit_edge.us
  %indvars.iv96 = phi i64 [ 0, %.lr.ph71.split.us.preheader ], [ %indvars.iv.next97, %._crit_edge.us ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv96
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !9
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  %i.ai = add nsw i32 %i.ah, 1
  %i.aj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %i.ai) #23 ; 0 uses
  %i.ak = call noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.a)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv96
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv96 ; 5 uses
  %i.an = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.111, i32 noundef 924, i64 noundef 4, i64 noundef 8) ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !13
  %i.ao = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.111, i32 noundef 927, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4)
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !15
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.111, i32 noundef 927, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4)
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !15
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.111, i32 noundef 927, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4)
  store ptr %i.au, ptr %i.at, align 8, !tbaa !15
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.111, i32 noundef 927, i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef 4)
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !15
  %i.ay = getelementptr inbounds [8 x i8], ptr %3, i64 %i.af
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15 ; 9 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !13 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 9 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 9 uses
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.pre102 = load ptr, ptr %.phi.trans.insert101, align 8, !tbaa !15 ; 9 uses
  %.phi.trans.insert103 = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.pre104 = load ptr, ptr %.phi.trans.insert103, align 8, !tbaa !15 ; 9 uses
  br i1 %min.iters.check158, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph71.split.us
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.aa ; 4 uses
  %scevgep119 = getelementptr i8, ptr %.pre, i64 %i.aa ; 4 uses
  %scevgep120 = getelementptr i8, ptr %.pre102, i64 %i.aa ; 4 uses
  %scevgep121 = getelementptr i8, ptr %.pre104, i64 %i.aa ; 4 uses
  %scevgep122 = getelementptr i8, ptr %i.az, i64 %i.ab ; 4 uses
  %bound0 = icmp ult ptr %i.bb, %scevgep119
  %bound1 = icmp ult ptr %.pre, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult ptr %i.bb, %scevgep120
  %bound1124 = icmp ult ptr %.pre102, %scevgep
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  %bound0126 = icmp ult ptr %i.bb, %scevgep121
  %bound1127 = icmp ult ptr %.pre104, %scevgep
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx, %found.conflict128
  %bound0130 = icmp ult ptr %i.bb, %scevgep122
  %bound1131 = icmp ult ptr %i.az, %scevgep
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  %bound0134 = icmp ult ptr %.pre, %scevgep120
  %bound1135 = icmp ult ptr %.pre102, %scevgep119
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %.pre, %scevgep121
  %bound1139 = icmp ult ptr %.pre104, %scevgep119
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %.pre, %scevgep122
  %bound1143 = icmp ult ptr %i.az, %scevgep119
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %.pre102, %scevgep121
  %bound1147 = icmp ult ptr %.pre104, %scevgep120
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  %bound0150 = icmp ult ptr %.pre102, %scevgep122
  %bound1151 = icmp ult ptr %i.az, %scevgep120
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  %bound0154 = icmp ult ptr %.pre104, %scevgep122
  %bound1155 = icmp ult ptr %i.az, %scevgep121
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %conflict.rdx153, %found.conflict156
  br i1 %conflict.rdx157, label %scalar.ph.preheader, label %vector.body161

vector.body161:                                   ; preds = %vector.memcheck, %vector.body161
  %index162 = phi i64 [ %index.next169, %vector.body161 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %index162 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.bc, align 4, !tbaa !28, !alias.scope !202 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec163 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec164 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.bd = fmul <8 x float> %strided.vec163, %strided.vec163
  %i.be = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec, <8 x float> %strided.vec, <8 x float> %i.bd)
  %i.bf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec164, <8 x float> %strided.vec164, <8 x float> %i.be)
  %i.bg = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.bf)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index162
  store <8 x float> %i.bg, ptr %i.bh, align 4, !tbaa !28, !alias.scope !203, !noalias !204
  %wide.vec165 = load <24 x float>, ptr %i.bc, align 4, !tbaa !28, !alias.scope !202 ; 3 uses
  %strided.vec166 = shufflevector <24 x float> %wide.vec165, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec167 = shufflevector <24 x float> %wide.vec165, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec168 = shufflevector <24 x float> %wide.vec165, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index162
  store <8 x float> %strided.vec166, ptr %i.bi, align 4, !tbaa !28, !alias.scope !205, !noalias !206
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %index162
  store <8 x float> %strided.vec167, ptr %i.bj, align 4, !tbaa !28, !alias.scope !207, !noalias !208
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pre104, i64 %index162
  store <8 x float> %strided.vec168, ptr %i.bk, align 4, !tbaa !28, !alias.scope !209, !noalias !202
  %index.next169 = add nuw i64 %index162, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next169, %n.vec160
  br i1 %i.bl, label %middle.block170, label %vector.body161, !llvm.loop !198

middle.block170:                                  ; preds = %vector.body161
  br i1 %cmp.n171, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph71.split.us, %middle.block170
  %indvars.iv91.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph71.split.us ], [ %n.vec160, %middle.block170 ] ; 8 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %indvars.iv91.ph ; 4 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !28 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !28 ; 2 uses
  %i.bq = fmul float %i.bp, %i.bp
  %i.br = call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !28 ; 2 uses
  %i.bu = call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.br)
  %sqrt.i.us.prol = call noundef float @llvm.sqrt.f32(float %i.bu)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv91.ph
  store float %sqrt.i.us.prol, ptr %i.bv, align 4, !tbaa !28
  %i.bw = load float, ptr %i.bm, align 4, !tbaa !28
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv91.ph
  store float %i.bw, ptr %i.bx, align 4, !tbaa !28
  %i.by = load float, ptr %i.bo, align 4, !tbaa !28
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %indvars.iv91.ph
  store float %i.by, ptr %i.bz, align 4, !tbaa !28
  %i.ca = load float, ptr %i.bs, align 4, !tbaa !28
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.pre104, i64 %indvars.iv91.ph
  store float %i.ca, ptr %i.cb, align 4, !tbaa !28
  %indvars.iv.next92.prol = or disjoint i64 %indvars.iv91.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph.preheader ], [ %indvars.iv.next92.prol, %scalar.ph.prol ]
  %i.cc = icmp eq i64 %indvars.iv91.ph, %i.ac
  br i1 %i.cc, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.1, %scalar.ph ], [ %indvars.iv91.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %indvars.iv91 ; 4 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !28 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !28 ; 2 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !28 ; 2 uses
  %i.cl = call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.ci)
  %sqrt.i.us = call noundef float @llvm.sqrt.f32(float %i.cl)
end_hunk_4
begin_hunk_5_@_ZNSt10filesystem7__cxx114pathaSEOS1_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34
  store i64 %i.r, ptr %i.p, align 8, !tbaa !34
  %i.s = load i64, ptr %i.f, align 8, !tbaa !26
  store i64 %i.s, ptr %i.c, align 8, !tbaa !26
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.c, align 8, !tbaa !26
  store ptr %i.e, ptr %0, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !34
  %i.x = load i64, ptr %i.f, align 8, !tbaa !26
  store i64 %i.x, ptr %i.c, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.b, ptr %1, align 8, !tbaa !25
  store i64 %i.t, ptr %i.f, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %1, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.y = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.b, %bb.f ], [ %i.f, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !34
  store i8 0, ptr %i.y, align 1, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !22
  store ptr null, ptr %i.aa, align 8, !tbaa !22
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !22
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.ad) #23
  br label %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit

_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.h
  store i64 0, ptr %i.z, align 8, !tbaa !34
  %i.ae = load ptr, ptr %1, align 8, !tbaa !25
  store i8 0, ptr %i.ae, align 1, !tbaa !26
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZNSt10filesystem7__cxx114path5clearEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZNSt10filesystem7__cxx114path5clearEv.exit:      ; preds = %_ZNSt10filesystem7__cxx114path5_ListaSEOS2_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare void @_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPKfSA_PKSA_ff5t_rgbSD_Pi(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.rint.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #23 = { nounwind }
attributes #24 = { cold nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { cold }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"p2 float", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 float", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !10, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!16, !16, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !17, i64 8, !5, i64 16}
!25 = !{!24, !16, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!"float", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!23, !16, i64 0}
!34 = !{!24, !17, i64 8}
!35 = !{!"branch_weights", i32 4, i32 28}
!36 = !{!17, !17, i64 0}
!37 = !{!"llvm.loop.peeled.count", i32 1}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29, !30, !31}
!41 = distinct !{!41, !32}
!42 = distinct !{!42, !29, !30}
!43 = distinct !{!43, !29, !30, !31}
!44 = distinct !{!44, !29, !30, !31}
!45 = distinct !{!45, !29, !31, !30}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = distinct !{!51, !32}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !29, !30, !31}
!55 = distinct !{!55, !29, !30, !31}
!56 = distinct !{!56, !29, !31, !30}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !29}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
!64 = distinct !{!64, !29, !30, !31}
!65 = distinct !{!65, !29, !30, !31}
!66 = distinct !{!66, !29, !31, !30}
!67 = distinct !{!67, !29, !30, !31}
!68 = distinct !{!68, !29, !30, !31}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !29}
!71 = distinct !{!71, !29, !31, !30}
!72 = distinct !{!72, !29}
!73 = distinct !{!73, !29, !30, !31}
!74 = distinct !{!74, !29, !30, !31}
!75 = distinct !{!75, !29, !31, !30}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !29, !30, !31}
!79 = distinct !{!79, !29, !30, !31}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29, !31, !30}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = distinct !{!87, !29}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29, !37}
!92 = distinct !{!92, !29}
!93 = distinct !{!93, !29}
!94 = distinct !{!94, !29}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !"_ZNSt7__cxx119to_stringEi"}
!98 = distinct !{!98, !97, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!99 = distinct !{!99, !29}
!100 = distinct !{!100, !29}
!101 = distinct !{!101, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!102 = distinct !{!102, !101, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!103 = distinct !{!103, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!104 = distinct !{!104, !103, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!105 = distinct !{!105, !29, !30, !31}
!106 = distinct !{!106, !29, !31, !30}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29, !30, !31}
!111 = distinct !{!111, !29, !30, !31}
!112 = distinct !{!112, !29}
!113 = distinct !{!113, !29, !31, !30}
!114 = distinct !{!114, !32}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !32}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !32}
!121 = distinct !{!121, !29}
!122 = distinct !{!122, !29}
!123 = distinct !{!123, !29}
!124 = distinct !{!124, !32}
!125 = distinct !{!125, !29}
!126 = distinct !{!126, !29}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !32}
!130 = distinct !{!130, !29}
!131 = !{!"_ZTS7PbcType", !5, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"p1 int", !10, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !135, i64 0, !135, i64 8, !135, i64 16}
!137 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !136, i64 0}
!138 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !137, i64 0}
!139 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !138, i64 0}
!140 = !{!"_ZTS8t_filenm", !6, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !139, i64 32}
!141 = !{!140, !6, i64 0}
!142 = !{!140, !16, i64 8}
!143 = !{!140, !16, i64 16}
!144 = !{!140, !17, i64 24}
!145 = !{!"p2 double", !11, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!"p1 double", !10, i64 0}
!148 = !{!147, !147, i64 0}
!149 = !{!"double", !5, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!"bool", !5, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{i8 0, i8 2}
!154 = !{}
!155 = !{!"branch_weights", i32 4, i32 12}
!156 = !{!"p1 _ZTS6t_atom", !10, i64 0}
!157 = !{!"any p3 pointer", !11, i64 0}
!158 = !{!"p3 omnipotent char", !157, i64 0}
!159 = !{!"p1 _ZTS9t_resinfo", !10, i64 0}
!160 = !{!"p1 _ZTS9t_pdbinfo", !10, i64 0}
!161 = !{!"_ZTS7t_atoms", !6, i64 0, !156, i64 8, !158, i64 16, !158, i64 24, !158, i64 32, !6, i64 40, !159, i64 48, !160, i64 56, !151, i64 64, !151, i64 65, !151, i64 66, !151, i64 67, !151, i64 68}
!162 = !{!161, !6, i64 0}
!163 = !{!"short", !5, i64 0}
!164 = !{!"_ZTS12ParticleType", !5, i64 0}
!165 = !{!"_ZTS6t_atom", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !163, i64 16, !163, i64 18, !164, i64 20, !6, i64 24, !6, i64 28, !5, i64 32}
!166 = !{!165, !27, i64 0}
!167 = !{!161, !156, i64 8}
!168 = !{!"p1 _ZTS16gmx_output_env_t", !10, i64 0}
!169 = !{!168, !168, i64 0}
!170 = !{!"branch_weights", i32 8, i32 24}
!171 = !{!"p1 _ZTS11t_trxstatus", !10, i64 0}
!172 = !{!171, !171, i64 0}
!173 = !{!161, !158, i64 16}
!174 = !{!161, !159, i64 48}
!175 = !{!"p2 omnipotent char", !11, i64 0}
!176 = !{!175, !175, i64 0}
!177 = !{!165, !6, i64 24}
!178 = !{!"_ZTS9t_resinfo", !175, i64 0, !6, i64 8, !5, i64 12, !6, i64 16, !5, i64 20, !175, i64 24}
!179 = !{!178, !175, i64 0}
!180 = !{!178, !6, i64 8}
!181 = !{!178, !5, i64 12}
!182 = !{!98}
!183 = !{!102}
!184 = !{!104}
!185 = !{!104, !102}
!186 = !{!178, !5, i64 20}
!187 = !{!136, !135, i64 0}
!188 = !{!136, !135, i64 8}
!189 = !{!136, !135, i64 16}
!190 = distinct !{!190, !29, !30, !31}
!191 = distinct !{!191, !29, !30, !31}
!192 = distinct !{!192, !"LVerDomain"}
!193 = distinct !{!193, !192}
!194 = distinct !{!194, !192}
!195 = distinct !{!195, !192}
!196 = distinct !{!196, !192}
!197 = distinct !{!197, !192}
!198 = distinct !{!198, !29, !30, !31}
!199 = distinct !{!199, !29, !30}
!200 = distinct !{!200, !29}
!201 = distinct !{!201, !29, !31, !30}
!202 = !{!193}
!203 = !{!194}
!204 = !{!197, !196, !195, !193}
!205 = !{!197}
!206 = !{!196, !195, !193}
!207 = !{!196}
!208 = !{!195, !193}
!209 = !{!195}
!210 = distinct !{!210, !29}
!211 = distinct !{!211, !29}
!212 = distinct !{!212, !29}
!213 = distinct !{!213, !29}
!214 = distinct !{!214, !29}
!215 = distinct !{!215, !29}
!216 = distinct !{!216, !32}
!217 = distinct !{!217, !32}
!218 = distinct !{!218, !29}
!219 = distinct !{!219, !29}
!220 = distinct !{!220, !29, !37}
!221 = distinct !{!221, !29}
!222 = distinct !{!222, !29}
!223 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_5
