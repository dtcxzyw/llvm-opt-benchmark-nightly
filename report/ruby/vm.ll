Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@setup_parameters_complex:bb.a
  %exitcond.not.i565 = icmp eq i32 %i.ty, %i.j
  br i1 %exitcond.not.i565, label %args_extend.exit, label %.lr.ph.i563, !llvm.loop !768

bb.eq:                                            ; preds = %bb.ek
  %i.tz = load i32, ptr %i.as, align 8, !tbaa !478 ; 3 uses
  %i.ua = icmp slt i32 %i.tz, %i.j
  br i1 %i.ua, label %.lr.ph16.i, label %args_extend.exit

.lr.ph16.i:                                       ; preds = %bb.eq
  %i.ub = load ptr, ptr %6, align 8, !tbaa !781   ; 2 uses
  %i.uc = sext i32 %i.tz to i64                   ; 3 uses
  %i.ud = add i32 %i.g, %i.i
  %i.ue = xor i32 %i.tz, -1
  %i.uf = add i32 %i.ud, %i.ue                    ; 2 uses
  %i.ug = zext i32 %i.uf to i64
  %i.uh = add nuw nsw i64 %i.ug, 1                ; 2 uses
  %min.iters.check888 = icmp ult i32 %i.uf, 3
  br i1 %min.iters.check888, label %scalar.ph887.preheader, label %vector.ph889

vector.ph889:                                     ; preds = %.lr.ph16.i
  %n.vec890 = and i64 %i.uh, 8589934588           ; 3 uses
  %i.ui = add nsw i64 %n.vec890, %i.uc
  %invariant.gep952 = getelementptr [8 x i8], ptr %i.ub, i64 %i.uc
  br label %vector.body891

vector.body891:                                   ; preds = %vector.body891, %vector.ph889
  %index892 = phi i64 [ 0, %vector.ph889 ], [ %index.next893, %vector.body891 ] ; 2 uses
  %gep953 = getelementptr [8 x i8], ptr %invariant.gep952, i64 %index892 ; 2 uses
  %i.uj = getelementptr i8, ptr %gep953, i64 16
  store <2 x i64> splat (i64 4), ptr %gep953, align 8, !tbaa !50
  store <2 x i64> splat (i64 4), ptr %i.uj, align 8, !tbaa !50
  %index.next893 = add nuw i64 %index892, 4       ; 2 uses
  %i.uk = icmp eq i64 %index.next893, %n.vec890
  br i1 %i.uk, label %middle.block894, label %vector.body891, !llvm.loop !769

middle.block894:                                  ; preds = %vector.body891
  %cmp.n895 = icmp eq i64 %i.uh, %n.vec890
  br i1 %cmp.n895, label %..loopexit_crit_edge.i, label %scalar.ph887.preheader

scalar.ph887.preheader:                           ; preds = %.lr.ph16.i, %middle.block894
  %indvars.iv775.ph = phi i64 [ %i.uc, %.lr.ph16.i ], [ %i.ui, %middle.block894 ]
  br label %scalar.ph887

scalar.ph887:                                     ; preds = %scalar.ph887.preheader, %scalar.ph887
  %indvars.iv775 = phi i64 [ %indvars.iv.next776, %scalar.ph887 ], [ %indvars.iv775.ph, %scalar.ph887.preheader ] ; 2 uses
  %indvars.iv.next776 = add nsw i64 %indvars.iv775, 1 ; 2 uses
  %indvars778 = trunc i64 %indvars.iv.next776 to i32
  %i.ul = getelementptr [8 x i8], ptr %i.ub, i64 %indvars.iv775
  store i64 4, ptr %i.ul, align 8, !tbaa !50
  %exitcond17.not.i = icmp eq i32 %i.j, %indvars778
  br i1 %exitcond17.not.i, label %..loopexit_crit_edge.i, label %scalar.ph887, !llvm.loop !770

..loopexit_crit_edge.i:                           ; preds = %scalar.ph887, %middle.block894
  store i32 %i.j, ptr %i.as, align 8, !tbaa !478
  br label %args_extend.exit

.thread715:                                       ; preds = %.thread712
  call fastcc void @argument_arity_error(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.af, i32 noundef %.5734, i32 noundef %i.j, i32 noundef %i.q) #58
  unreachable

args_extend.exit:                                 ; preds = %.lr.ph.i563, %..loopexit_crit_edge.i, %bb.eq, %RARRAY_LENINT.exit.i, %args_check_block_arg0.exit.thread
  %.7 = phi i32 [ %i.j, %..loopexit_crit_edge.i ], [ %.6, %args_check_block_arg0.exit.thread ], [ %i.j, %RARRAY_LENINT.exit.i ], [ %i.j, %bb.eq ], [ %i.j, %.lr.ph.i563 ] ; 2 uses
  %i.um = icmp sgt i32 %.7, %i.q
  %i.un = icmp ne i32 %i.q, -1
  %or.cond13 = and i1 %i.un, %i.um
  br i1 %or.cond13, label %bb.er, label %args_reduce.exit

args_extend.exit.thread:                          ; preds = %.thread712
  %i.uo = icmp sgt i32 %.5734, %i.q
  %i.up = icmp ne i32 %i.q, -1
  %or.cond13719 = and i1 %i.up, %i.uo
  br i1 %or.cond13719, label %.thread721, label %args_reduce.exit

bb.er:                                            ; preds = %args_extend.exit
  %i.uq = sub i32 %.7, %i.q                       ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !479 ; 4 uses
  %.not.i566 = icmp eq i64 %i.us, 0
  br i1 %.not.i566, label %bb.ey, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ut = inttoptr i64 %i.us to ptr               ; 2 uses
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !114 ; 2 uses
  %i.uv = and i64 %i.uu, 8192
  %.not.i.i567 = icmp eq i64 %i.uv, 0
  br i1 %.not.i.i567, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.uw = lshr i64 %i.uu, 15
  %i.ux = and i64 %i.uw, 127
  br label %rb_array_len.exit.i568

bb.eu:                                            ; preds = %bb.es
  %i.uy = getelementptr i8, ptr %i.ut, i64 16
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !64
  br label %rb_array_len.exit.i568

rb_array_len.exit.i568:                           ; preds = %bb.eu, %bb.et
  %.0.i.i569 = phi i64 [ %i.ux, %bb.et ], [ %i.uz, %bb.eu ] ; 3 uses
  %i.va = sext i32 %i.uq to i64                   ; 2 uses
  %i.vb = icmp sgt i64 %.0.i.i569, %i.va
  br i1 %i.vb, label %bb.ev, label %.thread.i570

bb.ev:                                            ; preds = %rb_array_len.exit.i568
  %i.vc = load i32, ptr %i.au, align 8, !tbaa !782
  %.not.i19.i = icmp eq i32 %i.vc, 0
  br i1 %.not.i19.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.vd = call i64 @rb_ary_dup(i64 noundef %i.us) #23 ; 2 uses
  store i64 %i.vd, ptr %i.ur, align 8, !tbaa !479
  store i32 1, ptr %i.au, align 8, !tbaa !782
  br label %bb.ex

.thread.i570:                                     ; preds = %rb_array_len.exit.i568
  store i64 0, ptr %i.ur, align 8, !tbaa !479
  %i.ve = trunc i64 %.0.i.i569 to i32
  %i.vf = sub i32 %i.uq, %i.ve
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.vg = phi i64 [ %i.vd, %bb.ew ], [ %i.us, %bb.ev ]
  %i.vh = sub i64 %.0.i.i569, %i.va
  %i.vi = call i64 @rb_ary_resize(i64 noundef %i.vg, i64 noundef %i.vh) #23 ; 0 uses
  br label %args_reduce.exit

bb.ey:                                            ; preds = %.thread.i570, %bb.er
  %.1.i571 = phi i32 [ %i.vf, %.thread.i570 ], [ %i.uq, %bb.er ]
  %i.vj = load i32, ptr %i.as, align 8, !tbaa !478
  %i.vk = sub i32 %i.vj, %.1.i571
  store i32 %i.vk, ptr %i.as, align 8, !tbaa !478
  br label %args_reduce.exit

.thread721:                                       ; preds = %args_extend.exit.thread
  call fastcc void @argument_arity_error(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.af, i32 noundef %.5734, i32 noundef %i.j, i32 noundef %i.q) #58
  unreachable

args_reduce.exit:                                 ; preds = %bb.ey, %bb.ex, %args_extend.exit.thread, %args_extend.exit
  %i.vl = load ptr, ptr %i.c, align 8, !tbaa !158 ; 2 uses
  %i.vm = getelementptr i8, ptr %i.vl, i64 16     ; 2 uses
  %i.vn = load i16, ptr %i.vm, align 8
  %i.vo = and i16 %i.vn, 1
  %.not427 = icmp eq i16 %i.vo, 0
  br i1 %.not427, label %args_setup_lead_parameters.exit, label %bb.ez

bb.ez:                                            ; preds = %args_reduce.exit
  %i.vp = getelementptr i8, ptr %i.vl, i64 24
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !198 ; 8 uses
  %i.vr = load i32, ptr %i.as, align 8, !tbaa !478 ; 8 uses
  %.not.i572 = icmp slt i32 %i.vr, %i.vq
  br i1 %.not.i572, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vs = sub i32 %i.vr, %i.vq
  store i32 %i.vs, ptr %i.as, align 8, !tbaa !478
  %i.vt = load ptr, ptr %6, align 8, !tbaa !781
  %i.vu = sext i32 %i.vq to i64
  %i.vv = getelementptr [8 x i8], ptr %i.vt, i64 %i.vu
  store ptr %i.vv, ptr %6, align 8, !tbaa !781
  br label %args_setup_lead_parameters.exit

bb.fb:                                            ; preds = %bb.ez
  %i.vw = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !479
  %i.vy = inttoptr i64 %i.vx to ptr               ; 3 uses
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !114
  %i.wa = and i64 %i.vz, 8192
  %.not.i.i.i573 = icmp eq i64 %i.wa, 0
  br i1 %.not.i.i.i573, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.wb = getelementptr i8, ptr %i.vy, i64 16
  br label %.lr.ph.preheader.i574

bb.fd:                                            ; preds = %bb.fb
  %i.wc = getelementptr i8, ptr %i.vy, i64 32
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !64
  br label %.lr.ph.preheader.i574

.lr.ph.preheader.i574:                            ; preds = %bb.fd, %bb.fc
  %.0.i.i.i575 = phi ptr [ %i.wb, %bb.fc ], [ %i.wd, %bb.fd ] ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !785 ; 2 uses
  %i.wg = sext i32 %i.wf to i64                   ; 2 uses
  %i.wh = getelementptr [8 x i8], ptr %.0.i.i.i575, i64 %i.wg ; 6 uses
  %i.wi = sext i32 %i.vr to i64                   ; 5 uses
  %i.wj = sub i32 %i.vq, %i.vr                    ; 2 uses
  %i.wk = xor i32 %i.vr, -1
  %i.wl = add i32 %i.vq, %i.wk                    ; 2 uses
  %i.wm = zext i32 %i.wl to i64
  %i.wn = add nuw nsw i64 %i.wm, 1                ; 2 uses
  %min.iters.check902 = icmp ult i32 %i.wl, 17
  %i.wo = sub i32 %i.vr, %i.vq
  %i.wp = icmp sgt i32 %i.wo, -1
  %or.cond940 = or i1 %min.iters.check902, %i.wp
  br i1 %or.cond940, label %.lr.ph.i576.preheader, label %vector.memcheck898

vector.memcheck898:                               ; preds = %.lr.ph.preheader.i574
  %.0.i.i.i575899 = ptrtoaddr ptr %.0.i.i.i575 to i64
  %i.wq = shl nsw i64 %i.wi, 3
  %7 = shl nsw i64 %i.wg, 3
  %8 = add i64 %i.wq, %i.a
  %i.wr = add i64 %7, %.0.i.i.i575899
  %i.ws = sub i64 %i.wr, %8
  %diff.check900 = icmp ugt i64 %i.ws, -32
  br i1 %diff.check900, label %.lr.ph.i576.preheader, label %vector.ph903

vector.ph903:                                     ; preds = %vector.memcheck898
  %n.vec904 = and i64 %i.wn, 8589934588           ; 4 uses
  %i.wt = add nsw i64 %n.vec904, %i.wi
  %i.wu = trunc i64 %n.vec904 to i32
  %invariant.gep954 = getelementptr [8 x i8], ptr %4, i64 %i.wi
  br label %vector.body905

vector.body905:                                   ; preds = %vector.body905, %vector.ph903
  %index906 = phi i64 [ 0, %vector.ph903 ], [ %index.next909, %vector.body905 ] ; 3 uses
  %i.wv = shl i64 %index906, 32
  %i.ww = ashr exact i64 %i.wv, 29
  %i.wx = getelementptr i8, ptr %i.wh, i64 %i.ww  ; 2 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 16
  %wide.load907 = load <2 x i64>, ptr %i.wx, align 8, !tbaa !50
  %wide.load908 = load <2 x i64>, ptr %i.wy, align 8, !tbaa !50
  %gep955 = getelementptr [8 x i8], ptr %invariant.gep954, i64 %index906 ; 2 uses
  %i.wz = getelementptr i8, ptr %gep955, i64 16
  store <2 x i64> %wide.load907, ptr %gep955, align 8, !tbaa !50
  store <2 x i64> %wide.load908, ptr %i.wz, align 8, !tbaa !50
  %index.next909 = add nuw i64 %index906, 4       ; 2 uses
  %i.xa = icmp eq i64 %index.next909, %n.vec904
  br i1 %i.xa, label %middle.block910, label %vector.body905, !llvm.loop !771

middle.block910:                                  ; preds = %vector.body905
  %cmp.n911 = icmp eq i64 %i.wn, %n.vec904
  br i1 %cmp.n911, label %._crit_edge.i, label %.lr.ph.i576.preheader

.lr.ph.i576.preheader:                            ; preds = %vector.memcheck898, %.lr.ph.preheader.i574, %middle.block910
  %indvars.iv.i577.ph = phi i64 [ %i.wi, %vector.memcheck898 ], [ %i.wi, %.lr.ph.preheader.i574 ], [ %i.wt, %middle.block910 ] ; 2 uses
  %.023.i.ph = phi i32 [ 0, %vector.memcheck898 ], [ 0, %.lr.ph.preheader.i574 ], [ %i.wu, %middle.block910 ] ; 4 uses
  %i.xb = add i32 %.023.i.ph, %i.vr
  %i.xc = sub i32 %i.vq, %i.xb
  %xtraiter945 = and i32 %i.xc, 3                 ; 2 uses
  %lcmp.mod946.not = icmp eq i32 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %.lr.ph.i576.prol.loopexit, label %.lr.ph.i576.prol

.lr.ph.i576.prol:                                 ; preds = %.lr.ph.i576.preheader, %.lr.ph.i576.prol
  %indvars.iv.i577.prol = phi i64 [ %indvars.iv.next.i578.prol, %.lr.ph.i576.prol ], [ %indvars.iv.i577.ph, %.lr.ph.i576.preheader ] ; 2 uses
  %.023.i.prol = phi i32 [ %i.xh, %.lr.ph.i576.prol ], [ %.023.i.ph, %.lr.ph.i576.preheader ] ; 2 uses
  %prol.iter947 = phi i32 [ %prol.iter947.next, %.lr.ph.i576.prol ], [ 0, %.lr.ph.i576.preheader ]
  %i.xd = sext i32 %.023.i.prol to i64
  %i.xe = getelementptr [8 x i8], ptr %i.wh, i64 %i.xd
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !50
  %i.xg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577.prol
  store i64 %i.xf, ptr %i.xg, align 8, !tbaa !50
  %indvars.iv.next.i578.prol = add nsw i64 %indvars.iv.i577.prol, 1 ; 2 uses
  %i.xh = add i32 %.023.i.prol, 1                 ; 2 uses
  %prol.iter947.next = add i32 %prol.iter947, 1   ; 2 uses
  %prol.iter947.cmp.not = icmp eq i32 %prol.iter947.next, %xtraiter945
  br i1 %prol.iter947.cmp.not, label %.lr.ph.i576.prol.loopexit, label %.lr.ph.i576.prol, !llvm.loop !772

.lr.ph.i576.prol.loopexit:                        ; preds = %.lr.ph.i576.prol, %.lr.ph.i576.preheader
  %indvars.iv.i577.unr = phi i64 [ %indvars.iv.i577.ph, %.lr.ph.i576.preheader ], [ %indvars.iv.next.i578.prol, %.lr.ph.i576.prol ]
  %.023.i.unr = phi i32 [ %.023.i.ph, %.lr.ph.i576.preheader ], [ %i.xh, %.lr.ph.i576.prol ]
  %i.xi = sub i32 %.023.i.ph, %i.vq
  %i.xj = add i32 %i.xi, %i.vr
  %i.xk = icmp ugt i32 %i.xj, -4
  br i1 %i.xk, label %._crit_edge.i, label %.lr.ph.i576

.lr.ph.i576:                                      ; preds = %.lr.ph.i576.prol.loopexit, %.lr.ph.i576
  %indvars.iv.i577 = phi i64 [ %indvars.iv.next.i578.3, %.lr.ph.i576 ], [ %indvars.iv.i577.unr, %.lr.ph.i576.prol.loopexit ] ; 5 uses
  %.023.i = phi i32 [ %i.yh, %.lr.ph.i576 ], [ %.023.i.unr, %.lr.ph.i576.prol.loopexit ] ; 5 uses
  %i.xl = sext i32 %.023.i to i64
  %i.xm = getelementptr [8 x i8], ptr %i.wh, i64 %i.xl
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !50
  %i.xo = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  store i64 %i.xn, ptr %i.xo, align 8, !tbaa !50
  %i.xp = add i32 %.023.i, 1
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr [8 x i8], ptr %i.wh, i64 %i.xq
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !50
  %i.xt = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  %i.xu = getelementptr i8, ptr %i.xt, i64 8
  store i64 %i.xs, ptr %i.xu, align 8, !tbaa !50
  %i.xv = add i32 %.023.i, 2
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr [8 x i8], ptr %i.wh, i64 %i.xw
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !50
  %i.xz = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  %i.ya = getelementptr i8, ptr %i.xz, i64 16
  store i64 %i.xy, ptr %i.ya, align 8, !tbaa !50
  %i.yb = add i32 %.023.i, 3
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr [8 x i8], ptr %i.wh, i64 %i.yc
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !50
  %i.yf = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  %i.yg = getelementptr i8, ptr %i.yf, i64 24
  store i64 %i.ye, ptr %i.yg, align 8, !tbaa !50
  %indvars.iv.next.i578.3 = add nsw i64 %indvars.iv.i577, 4
  %i.yh = add i32 %.023.i, 4                      ; 2 uses
  %exitcond.not.i579.3 = icmp eq i32 %i.yh, %i.wj
  br i1 %exitcond.not.i579.3, label %._crit_edge.i, label %.lr.ph.i576, !llvm.loop !773

._crit_edge.i:                                    ; preds = %.lr.ph.i576.prol.loopexit, %.lr.ph.i576, %middle.block910
  %i.yi = add i32 %i.wf, %i.wj
  store i32 %i.yi, ptr %i.we, align 4, !tbaa !785
  store i32 0, ptr %i.as, align 8, !tbaa !478
  br label %args_setup_lead_parameters.exit

args_setup_lead_parameters.exit:                  ; preds = %._crit_edge.i, %bb.fa, %args_reduce.exit
  %i.yj = load i16, ptr %i.vm, align 8
  %i.yk = and i16 %i.yj, 12
  %or.cond457 = icmp eq i16 %i.yk, 0
  br i1 %or.cond457, label %args_copy.exit, label %bb.fe

bb.fe:                                            ; preds = %args_setup_lead_parameters.exit
  %i.yl = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !479 ; 2 uses
  %.not.i580 = icmp eq i64 %i.ym, 0
  %i.yn = load i32, ptr %i.as, align 8, !tbaa !478 ; 5 uses
  br i1 %.not.i580, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %i.as, align 8, !tbaa !478
  %i.yo = load i32, ptr %i.au, align 8, !tbaa !782
  %.not.i.i581 = icmp eq i32 %i.yo, 0
  br i1 %.not.i.i581, label %bb.fg, label %arg_rest_dup.exit.i582

bb.fg:                                            ; preds = %bb.ff
  %i.yp = call i64 @rb_ary_dup(i64 noundef %i.ym) #23
  store i64 %i.yp, ptr %i.yl, align 8, !tbaa !479
  store i32 1, ptr %i.au, align 8, !tbaa !782
  br label %arg_rest_dup.exit.i582

arg_rest_dup.exit.i582:                           ; preds = %bb.fg, %bb.ff
  %i.yq = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !785 ; 2 uses
  %i.ys = icmp sgt i32 %i.yr, 0
  %i.yt = icmp sgt i32 %i.yn, 0
  %i.yu = select i1 %i.ys, i1 %i.yt, i1 false
  br i1 %i.yu, label %.lr.ph.preheader.i583, label %.preheader.i

.lr.ph.preheader.i583:                            ; preds = %arg_rest_dup.exit.i582
  %i.yv = zext nneg i32 %i.yn to i64
  br label %.lr.ph.i584

.preheader.loopexit.i:                            ; preds = %RARRAY_ASET.exit.i
  %i.yw = trunc nuw nsw i64 %indvars.iv.next.i586 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %arg_rest_dup.exit.i582
  %.0.lcssa.i = phi i32 [ %i.yn, %arg_rest_dup.exit.i582 ], [ %i.yw, %.preheader.loopexit.i ] ; 2 uses
  %i.yx = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.yx, label %.lr.ph24.preheader.i, label %args_copy.exit

.lr.ph24.preheader.i:                             ; preds = %.preheader.i
  %i.yy = zext nneg i32 %.0.lcssa.i to i64
  br label %.lr.ph24.i

.lr.ph.i584:                                      ; preds = %RARRAY_ASET.exit.i, %.lr.ph.preheader.i583
  %indvars.iv.i585 = phi i64 [ %i.yv, %.lr.ph.preheader.i583 ], [ %indvars.iv.next.i586, %RARRAY_ASET.exit.i ] ; 2 uses
  %i.yz = phi i32 [ %i.yr, %.lr.ph.preheader.i583 ], [ %i.zm, %RARRAY_ASET.exit.i ]
  %i.za = load i64, ptr %i.yl, align 8, !tbaa !479 ; 3 uses
  %i.zb = add nsw i32 %i.yz, -1                   ; 2 uses
  store i32 %i.zb, ptr %i.yq, align 4, !tbaa !785
  %i.zc = zext nneg i32 %i.zb to i64
  %i.zd = load ptr, ptr %6, align 8, !tbaa !781
  %indvars.iv.next.i586 = add nsw i64 %indvars.iv.i585, -1 ; 3 uses
  %i.ze = getelementptr [8 x i8], ptr %i.zd, i64 %indvars.iv.next.i586
  %i.zf = load i64, ptr %i.ze, align 8, !tbaa !50 ; 4 uses
  %i.zg = call ptr @rb_ary_ptr_use_start(i64 noundef %i.za) #23
  %i.zh = getelementptr [8 x i8], ptr %i.zg, i64 %i.zc
  store i64 %i.zf, ptr %i.zh, align 8, !tbaa !50
  %i.zi = icmp eq i64 %i.zf, 0
  %i.zj = and i64 %i.zf, 7
  %i.zk = icmp ne i64 %i.zj, 0
  %i.zl = or i1 %i.zi, %i.zk
  br i1 %i.zl, label %RARRAY_ASET.exit.i, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph.i584
  call void @rb_gc_writebarrier(i64 noundef %i.za, i64 noundef %i.zf) #23
  br label %RARRAY_ASET.exit.i

RARRAY_ASET.exit.i:                               ; preds = %bb.fh, %.lr.ph.i584
  call void @rb_ary_ptr_use_end(i64 noundef %i.za) #23
  %i.zm = load i32, ptr %i.yq, align 4, !tbaa !785 ; 2 uses
  %i.zn = icmp sgt i32 %i.zm, 0
  %i.zo = icmp samesign ugt i64 %indvars.iv.i585, 1
  %i.zp = and i1 %i.zo, %i.zn
  br i1 %i.zp, label %.lr.ph.i584, label %.preheader.loopexit.i, !llvm.loop !774

.lr.ph24.i:                                       ; preds = %.lr.ph24.i, %.lr.ph24.preheader.i
  %indvars.iv26.i = phi i64 [ %i.yy, %.lr.ph24.preheader.i ], [ %indvars.iv.next27.i, %.lr.ph24.i ] ; 2 uses
  %i.zq = load i64, ptr %i.yl, align 8, !tbaa !479
  %i.zr = load ptr, ptr %6, align 8, !tbaa !781
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1 ; 2 uses
  %i.zs = getelementptr [8 x i8], ptr %i.zr, i64 %indvars.iv.next27.i
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !50
  %i.zu = call i64 @rb_ary_unshift(i64 noundef %i.zq, i64 noundef %i.zt) #23 ; 0 uses
  %i.zv = icmp samesign ugt i64 %indvars.iv26.i, 1
  br i1 %i.zv, label %.lr.ph24.i, label %args_copy.exit, !llvm.loop !775

bb.fi:                                            ; preds = %bb.fe
  %i.zw = icmp sgt i32 %i.yn, 0
  br i1 %i.zw, label %bb.fj, label %args_copy.exit

bb.fj:                                            ; preds = %bb.fi
  %i.zx = zext nneg i32 %i.yn to i64
  %i.zy = load ptr, ptr %6, align 8, !tbaa !781
  %i.zz = call i64 @rb_ary_new_from_values(i64 noundef %i.zx, ptr noundef %i.zy) #23
  store i64 %i.zz, ptr %i.yl, align 8, !tbaa !479
  %i.aaa = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.aaa, align 4, !tbaa !785
  store i32 1, ptr %i.au, align 8, !tbaa !782
  store i32 0, ptr %i.as, align 8, !tbaa !478
  br label %args_copy.exit

args_copy.exit:                                   ; preds = %.lr.ph24.i, %bb.fj, %bb.fi, %.preheader.i, %args_setup_lead_parameters.exit
  %i.aab = load ptr, ptr %i.c, align 8, !tbaa !158 ; 4 uses
  %i.aac = getelementptr i8, ptr %i.aab, i64 16
  %i.aad = load i16, ptr %i.aac, align 8          ; 2 uses
  %i.aae = and i16 %i.aad, 8
  %.not430 = icmp eq i16 %i.aae, 0
  br i1 %.not430, label %bb.fp, label %bb.fk

bb.fk:                                            ; preds = %args_copy.exit
  %i.aaf = getelementptr i8, ptr %i.aab, i64 40
  %i.aag = load i32, ptr %i.aaf, align 8, !tbaa !780 ; 3 uses
  %i.aah = getelementptr i8, ptr %i.aab, i64 36
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !786
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr [8 x i8], ptr %4, i64 %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !479 ; 2 uses
  %i.aan = inttoptr i64 %i.aam to ptr             ; 4 uses
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !114 ; 2 uses
  %i.aap = and i64 %i.aao, 8192
  %.not.i.i587 = icmp eq i64 %i.aap, 0
  br i1 %.not.i.i587, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aaq = lshr i64 %i.aao, 15
  %i.aar = and i64 %i.aaq, 127
  %i.aas = getelementptr i8, ptr %i.aan, i64 16
  br label %rb_array_const_ptr.exit.i

bb.fm:                                            ; preds = %bb.fk
  %i.aat = getelementptr i8, ptr %i.aan, i64 16
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !64
  %i.aav = getelementptr i8, ptr %i.aan, i64 32
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !64
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.fm, %bb.fl
  %.0.i13.i = phi i64 [ %i.aar, %bb.fl ], [ %i.aau, %bb.fm ] ; 2 uses
  %.0.i9.i = phi ptr [ %i.aas, %bb.fl ], [ %i.aaw, %bb.fm ]
  %i.aax = getelementptr [8 x i8], ptr %.0.i9.i, i64 %.0.i13.i
  %i.aay = sext i32 %i.aag to i64                 ; 4 uses
  %i.aaz = sub nsw i64 0, %i.aay
  %i.aba = getelementptr [8 x i8], ptr %i.aax, i64 %i.aaz
  %i.abb = icmp slt i32 %i.aag, 0
  br i1 %i.abb, label %bb.fn, label %rbimpl_size_mul_or_raise.exit.i, !prof !200

bb.fn:                                            ; preds = %rb_array_const_ptr.exit.i
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.aay) #42
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %rb_array_const_ptr.exit.i
  %.not.i10.i = icmp eq i32 %i.aag, 0
  br i1 %.not.i10.i, label %args_setup_post_parameters.exit, label %bb.fo

bb.fo:                                            ; preds = %rbimpl_size_mul_or_raise.exit.i
  %i.abc = shl nuw nsw i64 %i.aay, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aak, ptr noundef nonnull readonly align 1 %i.aba, i64 noundef %i.abc, i1 noundef false) #23
  br label %args_setup_post_parameters.exit

args_setup_post_parameters.exit:                  ; preds = %rbimpl_size_mul_or_raise.exit.i, %bb.fo
  %i.abd = sub i64 %.0.i13.i, %i.aay
  %i.abe = call i64 @rb_ary_resize(i64 noundef %i.aam, i64 noundef %i.abd) #23 ; 0 uses
  %.pre807 = load ptr, ptr %i.c, align 8, !tbaa !158 ; 2 uses
  %.phi.trans.insert808 = getelementptr i8, ptr %.pre807, i64 16
  %.pre809 = load i16, ptr %.phi.trans.insert808, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %args_setup_post_parameters.exit, %args_copy.exit
  %i.abf = phi i16 [ %.pre809, %args_setup_post_parameters.exit ], [ %i.aad, %args_copy.exit ] ; 2 uses
  %i.abg = phi ptr [ %.pre807, %args_setup_post_parameters.exit ], [ %i.aab, %args_copy.exit ] ; 8 uses
  %i.abh = getelementptr i8, ptr %i.abg, i64 16
  %i.abi = and i16 %i.abf, 2
  %.not431 = icmp eq i16 %i.abi, 0
  br i1 %.not431, label %bb.fx, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.abj = getelementptr i8, ptr %i.abg, i64 28
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !468 ; 9 uses
  %i.abl = getelementptr i8, ptr %i.abg, i64 24
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !198
  %i.abn = sext i32 %i.abm to i64                 ; 2 uses
  %i.abo = getelementptr [8 x i8], ptr %4, i64 %i.abn ; 4 uses
  %i.abp = load i32, ptr %i.as, align 8, !tbaa !478 ; 5 uses
  %.not.i589 = icmp slt i32 %i.abp, %i.abk
  br i1 %.not.i589, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.abq = sub i32 %i.abp, %i.abk
  store i32 %i.abq, ptr %i.as, align 8, !tbaa !478
  %i.abr = load ptr, ptr %6, align 8, !tbaa !781
  %i.abs = sext i32 %i.abk to i64
  %i.abt = getelementptr [8 x i8], ptr %i.abr, i64 %i.abs
  store ptr %i.abt, ptr %6, align 8, !tbaa !781
  br label %args_setup_opt_parameters.exit

bb.fs:                                            ; preds = %bb.fq
  store i32 0, ptr %i.as, align 8, !tbaa !478
  %i.abu = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.abv = load i64, ptr %i.abu, align 8, !tbaa !479 ; 2 uses
  %.not35.i = icmp eq i64 %i.abv, 0
  br i1 %.not35.i, label %.critedge.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.abw = inttoptr i64 %i.abv to ptr             ; 4 uses
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !114 ; 2 uses
  %i.aby = and i64 %i.abx, 8192
  %.not.i.i.i590 = icmp eq i64 %i.aby, 0
  br i1 %.not.i.i.i590, label %rb_array_len.exit.i.i600, label %rb_array_len.exit.i.thread.i

rb_array_len.exit.i.i600:                         ; preds = %bb.ft
  %i.abz = getelementptr i8, ptr %i.abw, i64 16
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !64 ; 3 uses
  %i.acb = add i64 %i.aca, 2147483648
  %.not.i1.i.i601 = icmp ult i64 %i.acb, 4294967296
  br i1 %.not.i1.i.i601, label %bb.fv, label %bb.fu

rb_array_len.exit.i.thread.i:                     ; preds = %bb.ft
  %i.acc = trunc i64 %i.abx to i32
  %i.acd = lshr i32 %i.acc, 15
  %i.ace = and i32 %i.acd, 127
  %i.acf = getelementptr i8, ptr %i.abw, i64 16
  br label %.lr.ph.preheader.i591

bb.fu:                                            ; preds = %rb_array_len.exit.i.i600
  call void @rb_out_of_int(i64 noundef %i.aca) #57
  unreachable

bb.fv:                                            ; preds = %rb_array_len.exit.i.i600
  %i.acg = trunc nsw i64 %i.aca to i32
  %i.ach = getelementptr i8, ptr %i.abw, i64 32
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !64
  br label %.lr.ph.preheader.i591

.lr.ph.preheader.i591:                            ; preds = %bb.fv, %rb_array_len.exit.i.thread.i
  %i.acj = phi i32 [ %i.ace, %rb_array_len.exit.i.thread.i ], [ %i.acg, %bb.fv ]
  %.0.i.i592 = phi ptr [ %i.acf, %rb_array_len.exit.i.thread.i ], [ %i.aci, %bb.fv ] ; 3 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.acl = sext i32 %i.abp to i64                 ; 5 uses
  %.pre.i593 = load i32, ptr %i.ack, align 4, !tbaa !785 ; 2 uses
  %i.acm = sext i32 %.pre.i593 to i64             ; 7 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.acj, i32 %.pre.i593)
  %wide.trip.count783 = sext i32 %smax to i64     ; 2 uses
  %i.acn = sub nsw i64 %wide.trip.count783, %i.acm
  %i.aco = xor i32 %i.abp, -1
  %i.acp = add i32 %i.abk, %i.aco
  %i.acq = zext i32 %i.acp to i64
  %i.acr = call i64 @llvm.umin.i64(i64 %i.acn, i64 %i.acq) ; 2 uses
  %i.acs = add nuw nsw i64 %i.acr, 1              ; 2 uses
  %min.iters.check918 = icmp samesign ult i64 %i.acr, 14
  br i1 %min.iters.check918, label %.lr.ph.i594.preheader, label %vector.memcheck914

vector.memcheck914:                               ; preds = %.lr.ph.preheader.i591
  %.0.i.i592915 = ptrtoaddr ptr %.0.i.i592 to i64
  %9 = shl nsw i64 %i.acm, 3
  %i.act = add nsw i64 %i.abn, %i.acl
  %i.acu = shl nsw i64 %i.act, 3
  %i.acv = add i64 %i.acu, %i.a
  %i.acw = add i64 %9, %.0.i.i592915
  %i.acx = sub i64 %i.acw, %i.acv
  %diff.check916 = icmp ugt i64 %i.acx, -32
  br i1 %diff.check916, label %.lr.ph.i594.preheader, label %vector.ph919

vector.ph919:                                     ; preds = %vector.memcheck914
  %i.acy = and i64 %i.acs, 3                      ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 0
  %i.ada = select i1 %i.acz, i64 4, i64 %i.acy
  %n.vec920 = sub nsw i64 %i.acs, %i.ada          ; 3 uses
  %i.adb = add nsw i64 %n.vec920, %i.acm
  %i.adc = add nsw i64 %n.vec920, %i.acl
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.acm, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.gep956 = getelementptr [8 x i8], ptr %.0.i.i592, i64 %i.acm
  %invariant.gep958 = getelementptr [8 x i8], ptr %i.abo, i64 %i.acl
  br label %vector.body921

vector.body921:                                   ; preds = %vector.body921, %vector.ph919
  %index922 = phi i64 [ 0, %vector.ph919 ], [ %index.next925, %vector.body921 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph919 ], [ %vec.ind.next, %vector.body921 ] ; 2 uses
  %gep957 = getelementptr [8 x i8], ptr %invariant.gep956, i64 %index922 ; 2 uses
  %i.add = getelementptr i8, ptr %gep957, i64 16
  %wide.load923 = load <2 x i64>, ptr %gep957, align 8, !tbaa !50
  %wide.load924 = load <2 x i64>, ptr %i.add, align 8, !tbaa !50
  %gep959 = getelementptr [8 x i8], ptr %invariant.gep958, i64 %index922 ; 2 uses
  %i.ade = getelementptr i8, ptr %gep959, i64 16
  store <2 x i64> %wide.load923, ptr %gep959, align 8, !tbaa !50
  store <2 x i64> %wide.load924, ptr %i.ade, align 8, !tbaa !50
  %i.adf = bitcast <2 x i64> %vec.ind to <4 x i32>
  %i.adg = extractelement <4 x i32> %i.adf, i64 2
  %i.adh = add i32 %i.adg, 3
  %index.next925 = add nuw i64 %index922, 4       ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.adi = icmp eq i64 %index.next925, %n.vec920
  br i1 %i.adi, label %.lr.ph.i594.preheader.loopexit, label %vector.body921, !llvm.loop !776

.lr.ph.i594.preheader.loopexit:                   ; preds = %vector.body921
  store i32 %i.adh, ptr %i.ack, align 4, !tbaa !785
  br label %.lr.ph.i594.preheader

.lr.ph.i594.preheader:                            ; preds = %.lr.ph.i594.preheader.loopexit, %vector.memcheck914, %.lr.ph.preheader.i591
  %indvars.iv780.ph = phi i64 [ %i.acm, %vector.memcheck914 ], [ %i.acm, %.lr.ph.preheader.i591 ], [ %i.adb, %.lr.ph.i594.preheader.loopexit ]
  %indvars.iv.i595.ph = phi i64 [ %i.acl, %vector.memcheck914 ], [ %i.acl, %.lr.ph.preheader.i591 ], [ %i.adc, %.lr.ph.i594.preheader.loopexit ]
  br label %.lr.ph.i594

.lr.ph.i594:                                      ; preds = %.lr.ph.i594.preheader, %bb.fw
  %indvars.iv780 = phi i64 [ %indvars.iv.next781, %bb.fw ], [ %indvars.iv780.ph, %.lr.ph.i594.preheader ] ; 3 uses
  %indvars.iv.i595 = phi i64 [ %indvars.iv.next.i598, %bb.fw ], [ %indvars.iv.i595.ph, %.lr.ph.i594.preheader ] ; 3 uses
  %exitcond784.not = icmp eq i64 %indvars.iv780, %wide.trip.count783
  br i1 %exitcond784.not, label %.critedge.loopexit.i, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i594
  %i.adj = getelementptr [8 x i8], ptr %.0.i.i592, i64 %indvars.iv780
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !50
  %i.adl = getelementptr [8 x i8], ptr %i.abo, i64 %indvars.iv.i595
  store i64 %i.adk, ptr %i.adl, align 8, !tbaa !50
  %indvars.iv.next.i598 = add nsw i64 %indvars.iv.i595, 1 ; 2 uses
  %indvars.iv.next781 = add nsw i64 %indvars.iv780, 1 ; 2 uses
  %i.adm = trunc nsw i64 %indvars.iv.next781 to i32
  store i32 %i.adm, ptr %i.ack, align 4, !tbaa !785
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i598 to i32
  %exitcond.not.i599 = icmp eq i32 %i.abk, %lftr.wideiv.i
  br i1 %exitcond.not.i599, label %args_setup_opt_parameters.exit, label %.lr.ph.i594, !llvm.loop !777

.critedge.loopexit.i:                             ; preds = %.lr.ph.i594
  %i.adn = trunc nsw i64 %indvars.iv.i595 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.fs
  %.1.i596 = phi i32 [ %i.abp, %bb.fs ], [ %i.adn, %.critedge.loopexit.i ] ; 5 uses
  %i.ado = icmp slt i32 %.1.i596, %i.abk
  br i1 %i.ado, label %.lr.ph45.preheader.i, label %args_setup_opt_parameters.exit

.lr.ph45.preheader.i:                             ; preds = %.critedge.i
  %i.adp = sext i32 %.1.i596 to i64               ; 4 uses
  %wide.trip.count.i597 = sext i32 %i.abk to i64  ; 2 uses
  %i.adq = sub nsw i64 %wide.trip.count.i597, %i.adp ; 3 uses
  %min.iters.check930 = icmp ult i64 %i.adq, 4
  br i1 %min.iters.check930, label %.lr.ph45.i.preheader, label %vector.ph931

vector.ph931:                                     ; preds = %.lr.ph45.preheader.i
  %n.vec932 = and i64 %i.adq, -4                  ; 3 uses
  %i.adr = add nsw i64 %n.vec932, %i.adp
  %invariant.gep961 = getelementptr [8 x i8], ptr %i.abo, i64 %i.adp
  br label %vector.body933

vector.body933:                                   ; preds = %vector.body933, %vector.ph931
  %index934 = phi i64 [ 0, %vector.ph931 ], [ %index.next935, %vector.body933 ] ; 2 uses
  %gep962 = getelementptr [8 x i8], ptr %invariant.gep961, i64 %index934 ; 2 uses
  %i.ads = getelementptr i8, ptr %gep962, i64 16
  store <2 x i64> splat (i64 4), ptr %gep962, align 8, !tbaa !50
  store <2 x i64> splat (i64 4), ptr %i.ads, align 8, !tbaa !50
  %index.next935 = add nuw i64 %index934, 4       ; 2 uses
  %i.adt = icmp eq i64 %index.next935, %n.vec932
  br i1 %i.adt, label %middle.block936, label %vector.body933, !llvm.loop !778

middle.block936:                                  ; preds = %vector.body933
  %cmp.n937 = icmp eq i64 %i.adq, %n.vec932
  br i1 %cmp.n937, label %args_setup_opt_parameters.exit, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %.lr.ph45.preheader.i, %middle.block936
  %indvars.iv47.i.ph = phi i64 [ %i.adp, %.lr.ph45.preheader.i ], [ %i.adr, %middle.block936 ]
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.preheader, %.lr.ph45.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %.lr.ph45.i ], [ %indvars.iv47.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %i.adu = getelementptr [8 x i8], ptr %i.abo, i64 %indvars.iv47.i
  store i64 4, ptr %i.adu, align 8, !tbaa !50
  %indvars.iv.next48.i = add nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i597
  br i1 %exitcond50.not.i, label %args_setup_opt_parameters.exit, label %.lr.ph45.i, !llvm.loop !779

args_setup_opt_parameters.exit:                   ; preds = %bb.fw, %.lr.ph45.i, %middle.block936, %bb.fr, %.critedge.i
  %.2.i = phi i32 [ %i.abk, %bb.fr ], [ %.1.i596, %.critedge.i ], [ %.1.i596, %middle.block936 ], [ %.1.i596, %.lr.ph45.i ], [ %i.abk, %bb.fw ]
  %i.adv = getelementptr i8, ptr %i.abg, i64 48
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !469
  %i.adx = sext i32 %.2.i to i64
  %i.ady = getelementptr [8 x i8], ptr %i.adw, i64 %i.adx
  %i.adz = load i64, ptr %i.ady, align 8, !tbaa !50
  %i.aea = trunc i64 %i.adz to i32
  %.pre810 = load i16, ptr %i.abh, align 8
  br label %bb.fx

bb.fx:                                            ; preds = %args_setup_opt_parameters.exit, %bb.fp
  %i.aeb = phi i16 [ %.pre810, %args_setup_opt_parameters.exit ], [ %i.abf, %bb.fp ] ; 3 uses
  %.0360 = phi i32 [ %i.aea, %args_setup_opt_parameters.exit ], [ 0, %bb.fp ]
  %i.aec = and i16 %i.aeb, 4
  %.not432 = icmp eq i16 %i.aec, 0
  br i1 %.not432, label %bb.gk, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aed = and i16 %i.aeb, 1024
  %.not433 = icmp ne i16 %i.aed, 0
  %i.aee = load i32, ptr %i.as, align 8
  %i.aef = icmp eq i32 %i.aee, 0
  %or.cond459 = select i1 %.not433, i1 %i.aef, i1 false
  %i.aeg = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.aeh = load i64, ptr %i.aeg, align 8          ; 2 uses
  %.not434 = icmp eq i64 %i.aeh, 0                ; 2 uses
  %or.cond461 = select i1 %or.cond459, i1 %.not434, i1 false
  %i.aei = and i16 %i.aeb, 8
  %.not435 = icmp eq i16 %i.aei, 0
  %or.cond464 = and i1 %.not435, %or.cond461
  br i1 %or.cond464, label %bb.fz, label %.critedge, !prof !480

bb.fz:                                            ; preds = %bb.fy
  %i.aej = load i64, ptr @rb_cArray_empty_frozen, align 8, !tbaa !50 ; 2 uses
  store i64 %i.aej, ptr %i.aeg, align 8, !tbaa !479
  %i.aek = getelementptr i8, ptr %i.abg, i64 32
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !787
  %i.aem = sext i32 %i.ael to i64
  %i.aen = getelementptr [8 x i8], ptr %4, i64 %i.aem
  store i64 %i.aej, ptr %i.aen, align 8, !tbaa !50
  %i.aeo = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.aeo, align 4, !tbaa !785
  br label %bb.gk

.critedge:                                        ; preds = %bb.fy
  %i.aep = getelementptr i8, ptr %i.abg, i64 32
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !787
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = getelementptr [8 x i8], ptr %4, i64 %i.aer
  br i1 %.not434, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.critedge
  %i.aet = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !785
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = call i64 @rb_ary_behead(i64 noundef %i.aeh, i64 noundef %i.aev) #23
  store i32 0, ptr %i.aet, align 4, !tbaa !785
  store i64 0, ptr %i.aeg, align 8, !tbaa !479
  br label %args_setup_rest_parameter.exit

bb.gb:                                            ; preds = %.critedge
  %i.aex = call i64 @rb_ary_new() #23
  br label %args_setup_rest_parameter.exit

args_setup_rest_parameter.exit:                   ; preds = %bb.ga, %bb.gb
  %.0.i.i603 = phi i64 [ %i.aew, %bb.ga ], [ %i.aex, %bb.gb ]
  store i64 %.0.i.i603, ptr %i.aes, align 8, !tbaa !50
  %i.aey = load ptr, ptr %i.c, align 8, !tbaa !158 ; 5 uses
  %i.aez = getelementptr i8, ptr %i.aey, i64 32
  %i.afa = load i32, ptr %i.aez, align 8, !tbaa !787
  %i.afb = sext i32 %i.afa to i64
  %i.afc = getelementptr [8 x i8], ptr %4, i64 %i.afb
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !50 ; 4 uses
  %i.afe = inttoptr i64 %i.afd to ptr             ; 4 uses
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !114 ; 2 uses
  %i.afg = and i64 %i.aff, 8192
  %.not.i604 = icmp eq i64 %i.afg, 0              ; 2 uses
  br i1 %.not.i604, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %args_setup_rest_parameter.exit
  %i.afh = lshr i64 %i.aff, 15
  %i.afi = and i64 %i.afh, 127
  br label %rb_array_len.exit

bb.gd:                                            ; preds = %args_setup_rest_parameter.exit
end_hunk_0
