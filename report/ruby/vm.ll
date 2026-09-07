Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@setup_parameters_complex:bb.a
  br i1 %.not.i559, label %bb.eq, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.tk = load i32, ptr %i.au, align 8, !tbaa !782
  %.not.i.i560 = icmp eq i32 %i.tk, 0
  br i1 %.not.i.i560, label %bb.em, label %arg_rest_dup.exit.i

bb.em:                                            ; preds = %bb.el
  %i.tl = call i64 @rb_ary_dup(i64 noundef %i.tj) #23 ; 2 uses
  store i64 %i.tl, ptr %i.ti, align 8, !tbaa !479
  store i32 1, ptr %i.au, align 8, !tbaa !782
  br label %arg_rest_dup.exit.i

arg_rest_dup.exit.i:                              ; preds = %bb.em, %bb.el
  %i.tm = phi i64 [ %i.tj, %bb.el ], [ %i.tl, %bb.em ]
  %i.tn = load i32, ptr %i.as, align 8, !tbaa !478
  %i.to = inttoptr i64 %i.tm to ptr               ; 2 uses
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !114 ; 2 uses
  %i.tq = and i64 %i.tp, 8192
  %.not.i.i.i561 = icmp eq i64 %i.tq, 0
  br i1 %.not.i.i.i561, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %arg_rest_dup.exit.i
  %i.tr = lshr i64 %i.tp, 15
  %i.ts = and i64 %i.tr, 127
  br label %rb_array_len.exit.i.i

bb.eo:                                            ; preds = %arg_rest_dup.exit.i
  %i.tt = getelementptr i8, ptr %i.to, i64 16
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !64
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.eo, %bb.en
  %.0.i.i.i562 = phi i64 [ %i.ts, %bb.en ], [ %i.tu, %bb.eo ] ; 3 uses
  %i.tv = add i64 %.0.i.i.i562, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.tv, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.ep

bb.ep:                                            ; preds = %rb_array_len.exit.i.i
  call void @rb_out_of_int(i64 noundef %.0.i.i.i562) #57
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.tw = trunc nsw i64 %.0.i.i.i562 to i32
  %i.tx = add i32 %i.tn, %i.tw                    ; 2 uses
  %i.ty = icmp slt i32 %i.tx, %i.j
  br i1 %i.ty, label %.lr.ph.i563, label %args_extend.exit

.lr.ph.i563:                                      ; preds = %RARRAY_LENINT.exit.i, %.lr.ph.i563
  %.014.i564 = phi i32 [ %i.ub, %.lr.ph.i563 ], [ %i.tx, %RARRAY_LENINT.exit.i ]
  %i.tz = load i64, ptr %i.ti, align 8, !tbaa !479
  %i.ua = call i64 @rb_ary_push(i64 noundef %i.tz, i64 noundef 4) #23 ; 0 uses
  %i.ub = add nsw i32 %.014.i564, 1               ; 2 uses
  %exitcond.not.i565 = icmp eq i32 %i.ub, %i.j
  br i1 %exitcond.not.i565, label %args_extend.exit, label %.lr.ph.i563, !llvm.loop !768

bb.eq:                                            ; preds = %bb.ek
  %i.uc = load i32, ptr %i.as, align 8, !tbaa !478 ; 3 uses
  %i.ud = icmp slt i32 %i.uc, %i.j
  br i1 %i.ud, label %.lr.ph16.i, label %args_extend.exit

.lr.ph16.i:                                       ; preds = %bb.eq
  %i.ue = load ptr, ptr %6, align 8, !tbaa !781   ; 2 uses
  %i.uf = sext i32 %i.uc to i64                   ; 3 uses
  %i.ug = add i32 %i.i, %i.g
  %i.uh = xor i32 %i.uc, -1
  %i.ui = add i32 %i.ug, %i.uh                    ; 2 uses
  %i.uj = zext i32 %i.ui to i64
  %i.uk = add nuw nsw i64 %i.uj, 1                ; 2 uses
  %min.iters.check888 = icmp ult i32 %i.ui, 3
  br i1 %min.iters.check888, label %scalar.ph887.preheader, label %vector.ph889

vector.ph889:                                     ; preds = %.lr.ph16.i
  %n.vec890 = and i64 %i.uk, 8589934588           ; 3 uses
  %i.ul = add nsw i64 %n.vec890, %i.uf
  %invariant.gep953 = getelementptr [8 x i8], ptr %i.ue, i64 %i.uf
  br label %vector.body891

vector.body891:                                   ; preds = %vector.body891, %vector.ph889
  %index892 = phi i64 [ 0, %vector.ph889 ], [ %index.next893, %vector.body891 ] ; 2 uses
  %gep954 = getelementptr [8 x i8], ptr %invariant.gep953, i64 %index892 ; 2 uses
  %i.um = getelementptr i8, ptr %gep954, i64 16
  store <2 x i64> splat (i64 4), ptr %gep954, align 8, !tbaa !50
  store <2 x i64> splat (i64 4), ptr %i.um, align 8, !tbaa !50
  %index.next893 = add nuw i64 %index892, 4       ; 2 uses
  %i.un = icmp eq i64 %index.next893, %n.vec890
  br i1 %i.un, label %middle.block894, label %vector.body891, !llvm.loop !769

middle.block894:                                  ; preds = %vector.body891
  %cmp.n895 = icmp eq i64 %i.uk, %n.vec890
  br i1 %cmp.n895, label %..loopexit_crit_edge.i, label %scalar.ph887.preheader

scalar.ph887.preheader:                           ; preds = %.lr.ph16.i, %middle.block894
  %indvars.iv775.ph = phi i64 [ %i.uf, %.lr.ph16.i ], [ %i.ul, %middle.block894 ]
  br label %scalar.ph887

scalar.ph887:                                     ; preds = %scalar.ph887.preheader, %scalar.ph887
  %indvars.iv775 = phi i64 [ %indvars.iv.next776, %scalar.ph887 ], [ %indvars.iv775.ph, %scalar.ph887.preheader ] ; 2 uses
  %indvars.iv.next776 = add nsw i64 %indvars.iv775, 1 ; 2 uses
  %indvars778 = trunc i64 %indvars.iv.next776 to i32
  %i.uo = getelementptr [8 x i8], ptr %i.ue, i64 %indvars.iv775
  store i64 4, ptr %i.uo, align 8, !tbaa !50
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
  %i.up = icmp sgt i32 %.7, %i.q
  %i.uq = icmp ne i32 %i.q, -1
  %or.cond13 = and i1 %i.uq, %i.up
  br i1 %or.cond13, label %bb.er, label %args_reduce.exit

args_extend.exit.thread:                          ; preds = %.thread712
  %i.ur = icmp sgt i32 %.5734, %i.q
  %i.us = icmp ne i32 %i.q, -1
  %or.cond13719 = and i1 %i.us, %i.ur
  br i1 %or.cond13719, label %.thread721, label %args_reduce.exit

bb.er:                                            ; preds = %args_extend.exit
  %i.ut = sub i32 %.7, %i.q                       ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !479 ; 4 uses
  %.not.i566 = icmp eq i64 %i.uv, 0
  br i1 %.not.i566, label %bb.ey, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.uw = inttoptr i64 %i.uv to ptr               ; 2 uses
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !114 ; 2 uses
  %i.uy = and i64 %i.ux, 8192
  %.not.i.i567 = icmp eq i64 %i.uy, 0
  br i1 %.not.i.i567, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.uz = lshr i64 %i.ux, 15
  %i.va = and i64 %i.uz, 127
  br label %rb_array_len.exit.i568

bb.eu:                                            ; preds = %bb.es
  %i.vb = getelementptr i8, ptr %i.uw, i64 16
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !64
  br label %rb_array_len.exit.i568

rb_array_len.exit.i568:                           ; preds = %bb.eu, %bb.et
  %.0.i.i569 = phi i64 [ %i.va, %bb.et ], [ %i.vc, %bb.eu ] ; 3 uses
  %i.vd = sext i32 %i.ut to i64                   ; 2 uses
  %i.ve = icmp sgt i64 %.0.i.i569, %i.vd
  br i1 %i.ve, label %bb.ev, label %.thread.i570

bb.ev:                                            ; preds = %rb_array_len.exit.i568
  %i.vf = load i32, ptr %i.au, align 8, !tbaa !782
  %.not.i19.i = icmp eq i32 %i.vf, 0
  br i1 %.not.i19.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.vg = call i64 @rb_ary_dup(i64 noundef %i.uv) #23 ; 2 uses
  store i64 %i.vg, ptr %i.uu, align 8, !tbaa !479
  store i32 1, ptr %i.au, align 8, !tbaa !782
  br label %bb.ex

.thread.i570:                                     ; preds = %rb_array_len.exit.i568
  store i64 0, ptr %i.uu, align 8, !tbaa !479
  %i.vh = trunc i64 %.0.i.i569 to i32
  %i.vi = sub i32 %i.ut, %i.vh
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.vj = phi i64 [ %i.vg, %bb.ew ], [ %i.uv, %bb.ev ]
  %i.vk = sub i64 %.0.i.i569, %i.vd
  %i.vl = call i64 @rb_ary_resize(i64 noundef %i.vj, i64 noundef %i.vk) #23 ; 0 uses
  br label %args_reduce.exit

bb.ey:                                            ; preds = %.thread.i570, %bb.er
  %.1.i571 = phi i32 [ %i.vi, %.thread.i570 ], [ %i.ut, %bb.er ]
  %i.vm = load i32, ptr %i.as, align 8, !tbaa !478
  %i.vn = sub i32 %i.vm, %.1.i571
  store i32 %i.vn, ptr %i.as, align 8, !tbaa !478
  br label %args_reduce.exit

.thread721:                                       ; preds = %args_extend.exit.thread
  call fastcc void @argument_arity_error(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.af, i32 noundef %.5734, i32 noundef %i.j, i32 noundef %i.q) #58
  unreachable

args_reduce.exit:                                 ; preds = %bb.ey, %bb.ex, %args_extend.exit.thread, %args_extend.exit
  %i.vo = load ptr, ptr %i.c, align 8, !tbaa !158 ; 2 uses
  %i.vp = getelementptr i8, ptr %i.vo, i64 16     ; 2 uses
  %i.vq = load i16, ptr %i.vp, align 8
  %i.vr = and i16 %i.vq, 1
  %.not427 = icmp eq i16 %i.vr, 0
  br i1 %.not427, label %args_setup_lead_parameters.exit, label %bb.ez

bb.ez:                                            ; preds = %args_reduce.exit
  %i.vs = getelementptr i8, ptr %i.vo, i64 24
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !198 ; 8 uses
  %i.vu = load i32, ptr %i.as, align 8, !tbaa !478 ; 8 uses
  %.not.i572 = icmp slt i32 %i.vu, %i.vt
  br i1 %.not.i572, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vv = sub i32 %i.vu, %i.vt
  store i32 %i.vv, ptr %i.as, align 8, !tbaa !478
  %i.vw = load ptr, ptr %6, align 8, !tbaa !781
  %i.vx = sext i32 %i.vt to i64
  %i.vy = getelementptr [8 x i8], ptr %i.vw, i64 %i.vx
  store ptr %i.vy, ptr %6, align 8, !tbaa !781
  br label %args_setup_lead_parameters.exit

bb.fb:                                            ; preds = %bb.ez
  %i.vz = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !479
  %i.wb = inttoptr i64 %i.wa to ptr               ; 3 uses
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !114
  %i.wd = and i64 %i.wc, 8192
  %.not.i.i.i573 = icmp eq i64 %i.wd, 0
  br i1 %.not.i.i.i573, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.we = getelementptr i8, ptr %i.wb, i64 16
  br label %.lr.ph.preheader.i574

bb.fd:                                            ; preds = %bb.fb
  %i.wf = getelementptr i8, ptr %i.wb, i64 32
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !64
  br label %.lr.ph.preheader.i574

.lr.ph.preheader.i574:                            ; preds = %bb.fd, %bb.fc
  %.0.i.i.i575 = phi ptr [ %i.we, %bb.fc ], [ %i.wg, %bb.fd ] ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !785 ; 2 uses
  %i.wj = sext i32 %i.wi to i64                   ; 2 uses
  %i.wk = getelementptr [8 x i8], ptr %.0.i.i.i575, i64 %i.wj ; 6 uses
  %i.wl = sext i32 %i.vu to i64                   ; 5 uses
  %i.wm = sub i32 %i.vt, %i.vu                    ; 2 uses
  %i.wn = xor i32 %i.vu, -1
  %i.wo = add i32 %i.vt, %i.wn                    ; 2 uses
  %i.wp = zext i32 %i.wo to i64
  %i.wq = add nuw nsw i64 %i.wp, 1                ; 2 uses
  %min.iters.check902 = icmp ult i32 %i.wo, 17
  %7 = sub i32 %i.vu, %i.vt
  %8 = icmp sgt i32 %7, -1
  %or.cond941 = or i1 %min.iters.check902, %8
  br i1 %or.cond941, label %.lr.ph.i576.preheader, label %vector.memcheck898

vector.memcheck898:                               ; preds = %.lr.ph.preheader.i574
  %.0.i.i.i575899 = ptrtoaddr ptr %.0.i.i.i575 to i64
  %i.wr = shl nsw i64 %i.wl, 3
  %i.ws = add i64 %i.wr, %i.a
  %i.wt = shl nsw i64 %i.wj, 3
  %i.wu = add i64 %i.wt, %.0.i.i.i575899
  %i.wv = sub i64 %i.wu, %i.ws
  %diff.check900 = icmp ugt i64 %i.wv, -32
  br i1 %diff.check900, label %.lr.ph.i576.preheader, label %vector.ph903

vector.ph903:                                     ; preds = %vector.memcheck898
  %n.vec904 = and i64 %i.wq, 8589934588           ; 4 uses
  %i.ww = add nsw i64 %n.vec904, %i.wl
  %i.wx = trunc i64 %n.vec904 to i32
  %invariant.gep955 = getelementptr [8 x i8], ptr %4, i64 %i.wl
  br label %vector.body905

vector.body905:                                   ; preds = %vector.body905, %vector.ph903
  %index906 = phi i64 [ 0, %vector.ph903 ], [ %index.next909, %vector.body905 ] ; 3 uses
  %sext939 = shl i64 %index906, 32
  %i.wy = ashr exact i64 %sext939, 29
  %i.wz = getelementptr i8, ptr %i.wk, i64 %i.wy  ; 2 uses
  %i.xa = getelementptr i8, ptr %i.wz, i64 16
  %wide.load907 = load <2 x i64>, ptr %i.wz, align 8, !tbaa !50
  %wide.load908 = load <2 x i64>, ptr %i.xa, align 8, !tbaa !50
  %gep956 = getelementptr [8 x i8], ptr %invariant.gep955, i64 %index906 ; 2 uses
  %i.xb = getelementptr i8, ptr %gep956, i64 16
  store <2 x i64> %wide.load907, ptr %gep956, align 8, !tbaa !50
  store <2 x i64> %wide.load908, ptr %i.xb, align 8, !tbaa !50
  %index.next909 = add nuw i64 %index906, 4       ; 2 uses
  %i.xc = icmp eq i64 %index.next909, %n.vec904
  br i1 %i.xc, label %middle.block910, label %vector.body905, !llvm.loop !771

middle.block910:                                  ; preds = %vector.body905
  %cmp.n911 = icmp eq i64 %i.wq, %n.vec904
  br i1 %cmp.n911, label %._crit_edge.i, label %.lr.ph.i576.preheader

.lr.ph.i576.preheader:                            ; preds = %vector.memcheck898, %.lr.ph.preheader.i574, %middle.block910
  %indvars.iv.i577.ph = phi i64 [ %i.wl, %vector.memcheck898 ], [ %i.wl, %.lr.ph.preheader.i574 ], [ %i.ww, %middle.block910 ] ; 2 uses
  %.023.i.ph = phi i32 [ 0, %vector.memcheck898 ], [ 0, %.lr.ph.preheader.i574 ], [ %i.wx, %middle.block910 ] ; 4 uses
  %9 = add i32 %.023.i.ph, %i.vu
  %i.xd = sub i32 %i.vt, %9
  %xtraiter946 = and i32 %i.xd, 3                 ; 2 uses
  %lcmp.mod947.not = icmp eq i32 %xtraiter946, 0
  br i1 %lcmp.mod947.not, label %.lr.ph.i576.prol.loopexit, label %.lr.ph.i576.prol

.lr.ph.i576.prol:                                 ; preds = %.lr.ph.i576.preheader, %.lr.ph.i576.prol
  %indvars.iv.i577.prol = phi i64 [ %indvars.iv.next.i578.prol, %.lr.ph.i576.prol ], [ %indvars.iv.i577.ph, %.lr.ph.i576.preheader ] ; 2 uses
  %.023.i.prol = phi i32 [ %i.xi, %.lr.ph.i576.prol ], [ %.023.i.ph, %.lr.ph.i576.preheader ] ; 2 uses
  %prol.iter948 = phi i32 [ %prol.iter948.next, %.lr.ph.i576.prol ], [ 0, %.lr.ph.i576.preheader ]
  %i.xe = sext i32 %.023.i.prol to i64
  %i.xf = getelementptr [8 x i8], ptr %i.wk, i64 %i.xe
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !50
  %i.xh = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577.prol
  store i64 %i.xg, ptr %i.xh, align 8, !tbaa !50
  %indvars.iv.next.i578.prol = add nsw i64 %indvars.iv.i577.prol, 1 ; 2 uses
  %i.xi = add i32 %.023.i.prol, 1                 ; 2 uses
  %prol.iter948.next = add i32 %prol.iter948, 1   ; 2 uses
  %prol.iter948.cmp.not = icmp eq i32 %prol.iter948.next, %xtraiter946
  br i1 %prol.iter948.cmp.not, label %.lr.ph.i576.prol.loopexit, label %.lr.ph.i576.prol, !llvm.loop !772

.lr.ph.i576.prol.loopexit:                        ; preds = %.lr.ph.i576.prol, %.lr.ph.i576.preheader
  %indvars.iv.i577.unr = phi i64 [ %indvars.iv.i577.ph, %.lr.ph.i576.preheader ], [ %indvars.iv.next.i578.prol, %.lr.ph.i576.prol ]
  %.023.i.unr = phi i32 [ %.023.i.ph, %.lr.ph.i576.preheader ], [ %i.xi, %.lr.ph.i576.prol ]
  %10 = sub i32 %.023.i.ph, %i.vt
  %11 = add i32 %10, %i.vu
  %12 = icmp ugt i32 %11, -4
  br i1 %12, label %._crit_edge.i, label %.lr.ph.i576

.lr.ph.i576:                                      ; preds = %.lr.ph.i576.prol.loopexit, %.lr.ph.i576
  %indvars.iv.i577 = phi i64 [ %indvars.iv.next.i578.3, %.lr.ph.i576 ], [ %indvars.iv.i577.unr, %.lr.ph.i576.prol.loopexit ] ; 5 uses
  %.023.i = phi i32 [ %i.yf, %.lr.ph.i576 ], [ %.023.i.unr, %.lr.ph.i576.prol.loopexit ] ; 5 uses
  %i.xj = sext i32 %.023.i to i64
  %i.xk = getelementptr [8 x i8], ptr %i.wk, i64 %i.xj
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !50
  %i.xm = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  store i64 %i.xl, ptr %i.xm, align 8, !tbaa !50
  %i.xn = add i32 %.023.i, 1
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr [8 x i8], ptr %i.wk, i64 %i.xo
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !50
  %i.xr = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  %i.xs = getelementptr i8, ptr %i.xr, i64 8
  store i64 %i.xq, ptr %i.xs, align 8, !tbaa !50
  %i.xt = add i32 %.023.i, 2
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr [8 x i8], ptr %i.wk, i64 %i.xu
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !50
  %i.xx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  %i.xy = getelementptr i8, ptr %i.xx, i64 16
  store i64 %i.xw, ptr %i.xy, align 8, !tbaa !50
  %i.xz = add i32 %.023.i, 3
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr [8 x i8], ptr %i.wk, i64 %i.ya
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !50
  %i.yd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  %i.ye = getelementptr i8, ptr %i.yd, i64 24
  store i64 %i.yc, ptr %i.ye, align 8, !tbaa !50
  %indvars.iv.next.i578.3 = add nsw i64 %indvars.iv.i577, 4
  %i.yf = add i32 %.023.i, 4                      ; 2 uses
  %exitcond.not.i579.3 = icmp eq i32 %i.yf, %i.wm
  br i1 %exitcond.not.i579.3, label %._crit_edge.i, label %.lr.ph.i576, !llvm.loop !773

._crit_edge.i:                                    ; preds = %.lr.ph.i576.prol.loopexit, %.lr.ph.i576, %middle.block910
  %i.yg = add i32 %i.wi, %i.wm
  store i32 %i.yg, ptr %i.wh, align 4, !tbaa !785
  store i32 0, ptr %i.as, align 8, !tbaa !478
  br label %args_setup_lead_parameters.exit

args_setup_lead_parameters.exit:                  ; preds = %._crit_edge.i, %bb.fa, %args_reduce.exit
  %i.yh = load i16, ptr %i.vp, align 8
  %i.yi = and i16 %i.yh, 12
  %or.cond457 = icmp eq i16 %i.yi, 0
  br i1 %or.cond457, label %args_copy.exit, label %bb.fe

bb.fe:                                            ; preds = %args_setup_lead_parameters.exit
  %i.yj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !479 ; 2 uses
  %.not.i580 = icmp eq i64 %i.yk, 0
  %i.yl = load i32, ptr %i.as, align 8, !tbaa !478 ; 5 uses
  br i1 %.not.i580, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %i.as, align 8, !tbaa !478
  %i.ym = load i32, ptr %i.au, align 8, !tbaa !782
  %.not.i.i581 = icmp eq i32 %i.ym, 0
  br i1 %.not.i.i581, label %bb.fg, label %arg_rest_dup.exit.i582

bb.fg:                                            ; preds = %bb.ff
  %i.yn = call i64 @rb_ary_dup(i64 noundef %i.yk) #23
  store i64 %i.yn, ptr %i.yj, align 8, !tbaa !479
  store i32 1, ptr %i.au, align 8, !tbaa !782
  br label %arg_rest_dup.exit.i582

arg_rest_dup.exit.i582:                           ; preds = %bb.fg, %bb.ff
  %i.yo = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !785 ; 2 uses
  %i.yq = icmp sgt i32 %i.yp, 0
  %i.yr = icmp sgt i32 %i.yl, 0
  %i.ys = select i1 %i.yq, i1 %i.yr, i1 false
  br i1 %i.ys, label %.lr.ph.preheader.i583, label %.preheader.i

.lr.ph.preheader.i583:                            ; preds = %arg_rest_dup.exit.i582
  %i.yt = zext nneg i32 %i.yl to i64
  br label %.lr.ph.i584

.preheader.loopexit.i:                            ; preds = %RARRAY_ASET.exit.i
  %i.yu = trunc nuw nsw i64 %indvars.iv.next.i586 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %arg_rest_dup.exit.i582
  %.0.lcssa.i = phi i32 [ %i.yl, %arg_rest_dup.exit.i582 ], [ %i.yu, %.preheader.loopexit.i ] ; 2 uses
  %i.yv = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.yv, label %.lr.ph24.preheader.i, label %args_copy.exit

.lr.ph24.preheader.i:                             ; preds = %.preheader.i
  %i.yw = zext nneg i32 %.0.lcssa.i to i64
  br label %.lr.ph24.i

.lr.ph.i584:                                      ; preds = %RARRAY_ASET.exit.i, %.lr.ph.preheader.i583
  %indvars.iv.i585 = phi i64 [ %i.yt, %.lr.ph.preheader.i583 ], [ %indvars.iv.next.i586, %RARRAY_ASET.exit.i ] ; 2 uses
  %i.yx = phi i32 [ %i.yp, %.lr.ph.preheader.i583 ], [ %i.zk, %RARRAY_ASET.exit.i ]
  %i.yy = load i64, ptr %i.yj, align 8, !tbaa !479 ; 3 uses
  %i.yz = add nsw i32 %i.yx, -1                   ; 2 uses
  store i32 %i.yz, ptr %i.yo, align 4, !tbaa !785
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = load ptr, ptr %6, align 8, !tbaa !781
  %indvars.iv.next.i586 = add nsw i64 %indvars.iv.i585, -1 ; 3 uses
  %i.zc = getelementptr [8 x i8], ptr %i.zb, i64 %indvars.iv.next.i586
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !50 ; 4 uses
  %i.ze = call ptr @rb_ary_ptr_use_start(i64 noundef %i.yy) #23
  %i.zf = getelementptr [8 x i8], ptr %i.ze, i64 %i.za
  store i64 %i.zd, ptr %i.zf, align 8, !tbaa !50
  %i.zg = icmp eq i64 %i.zd, 0
  %i.zh = and i64 %i.zd, 7
  %i.zi = icmp ne i64 %i.zh, 0
  %i.zj = or i1 %i.zg, %i.zi
  br i1 %i.zj, label %RARRAY_ASET.exit.i, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph.i584
  call void @rb_gc_writebarrier(i64 noundef %i.yy, i64 noundef %i.zd) #23
  br label %RARRAY_ASET.exit.i

RARRAY_ASET.exit.i:                               ; preds = %bb.fh, %.lr.ph.i584
  call void @rb_ary_ptr_use_end(i64 noundef %i.yy) #23
  %i.zk = load i32, ptr %i.yo, align 4, !tbaa !785 ; 2 uses
  %i.zl = icmp sgt i32 %i.zk, 0
  %i.zm = icmp samesign ugt i64 %indvars.iv.i585, 1
  %i.zn = and i1 %i.zm, %i.zl
  br i1 %i.zn, label %.lr.ph.i584, label %.preheader.loopexit.i, !llvm.loop !774

.lr.ph24.i:                                       ; preds = %.lr.ph24.i, %.lr.ph24.preheader.i
  %indvars.iv26.i = phi i64 [ %i.yw, %.lr.ph24.preheader.i ], [ %indvars.iv.next27.i, %.lr.ph24.i ] ; 2 uses
  %i.zo = load i64, ptr %i.yj, align 8, !tbaa !479
  %i.zp = load ptr, ptr %6, align 8, !tbaa !781
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1 ; 2 uses
  %i.zq = getelementptr [8 x i8], ptr %i.zp, i64 %indvars.iv.next27.i
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !50
  %i.zs = call i64 @rb_ary_unshift(i64 noundef %i.zo, i64 noundef %i.zr) #23 ; 0 uses
  %i.zt = icmp samesign ugt i64 %indvars.iv26.i, 1
  br i1 %i.zt, label %.lr.ph24.i, label %args_copy.exit, !llvm.loop !775

bb.fi:                                            ; preds = %bb.fe
  %i.zu = icmp sgt i32 %i.yl, 0
  br i1 %i.zu, label %bb.fj, label %args_copy.exit

bb.fj:                                            ; preds = %bb.fi
  %i.zv = zext nneg i32 %i.yl to i64
  %i.zw = load ptr, ptr %6, align 8, !tbaa !781
  %i.zx = call i64 @rb_ary_new_from_values(i64 noundef %i.zv, ptr noundef %i.zw) #23
  store i64 %i.zx, ptr %i.yj, align 8, !tbaa !479
  %i.zy = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.zy, align 4, !tbaa !785
  store i32 1, ptr %i.au, align 8, !tbaa !782
  store i32 0, ptr %i.as, align 8, !tbaa !478
  br label %args_copy.exit

args_copy.exit:                                   ; preds = %.lr.ph24.i, %bb.fj, %bb.fi, %.preheader.i, %args_setup_lead_parameters.exit
  %i.zz = load ptr, ptr %i.c, align 8, !tbaa !158 ; 4 uses
  %i.aaa = getelementptr i8, ptr %i.zz, i64 16
  %i.aab = load i16, ptr %i.aaa, align 8          ; 2 uses
  %i.aac = and i16 %i.aab, 8
  %.not430 = icmp eq i16 %i.aac, 0
  br i1 %.not430, label %bb.fp, label %bb.fk

bb.fk:                                            ; preds = %args_copy.exit
  %i.aad = getelementptr i8, ptr %i.zz, i64 40
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !780 ; 3 uses
  %i.aaf = getelementptr i8, ptr %i.zz, i64 36
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !786
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr [8 x i8], ptr %4, i64 %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !479 ; 2 uses
  %i.aal = inttoptr i64 %i.aak to ptr             ; 4 uses
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !114 ; 2 uses
  %i.aan = and i64 %i.aam, 8192
  %.not.i.i587 = icmp eq i64 %i.aan, 0
  br i1 %.not.i.i587, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aao = lshr i64 %i.aam, 15
  %i.aap = and i64 %i.aao, 127
  %i.aaq = getelementptr i8, ptr %i.aal, i64 16
  br label %rb_array_const_ptr.exit.i

bb.fm:                                            ; preds = %bb.fk
  %i.aar = getelementptr i8, ptr %i.aal, i64 16
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !64
  %i.aat = getelementptr i8, ptr %i.aal, i64 32
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !64
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.fm, %bb.fl
  %.0.i13.i = phi i64 [ %i.aap, %bb.fl ], [ %i.aas, %bb.fm ] ; 2 uses
  %.0.i9.i = phi ptr [ %i.aaq, %bb.fl ], [ %i.aau, %bb.fm ]
  %i.aav = getelementptr [8 x i8], ptr %.0.i9.i, i64 %.0.i13.i
  %i.aaw = sext i32 %i.aae to i64                 ; 4 uses
  %i.aax = sub nsw i64 0, %i.aaw
  %i.aay = getelementptr [8 x i8], ptr %i.aav, i64 %i.aax
  %i.aaz = icmp slt i32 %i.aae, 0
  br i1 %i.aaz, label %bb.fn, label %rbimpl_size_mul_or_raise.exit.i, !prof !200

bb.fn:                                            ; preds = %rb_array_const_ptr.exit.i
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.aaw) #42
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %rb_array_const_ptr.exit.i
end_hunk_0
