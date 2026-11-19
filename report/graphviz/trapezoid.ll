Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/trapezoid?download=true
inline.NumInlined: 101
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@construct_trapezoids:bb.a
  %i.hr = getelementptr inbounds nuw [96 x i8], ptr %i.hp, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i32 %i.e, ptr %i.hs, align 4, !tbaa !32
  %i.ht = load ptr, ptr %0, align 8, !tbaa !8
  %i.hu = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.eu) #10
  %i.hv = getelementptr inbounds nuw [96 x i8], ptr %i.ht, i64 %i.hu
  store i32 %i.e, ptr %i.hv, align 8, !tbaa !33
  %i.hw = load ptr, ptr %0, align 8, !tbaa !8
  %i.hx = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.eq) #10
  %i.hy = getelementptr inbounds nuw [96 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  store i64 %i.fc, ptr %i.hz, align 8, !tbaa !34
  %i.ia = load ptr, ptr %0, align 8, !tbaa !8
  %i.ib = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.eu) #10
  %i.ic = getelementptr inbounds nuw [96 x i8], ptr %i.ia, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  store i64 %i.fc, ptr %i.id, align 8, !tbaa !34
  %i.ie = load ptr, ptr %0, align 8, !tbaa !8
  %i.if = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.eq) #10
  %i.ig = getelementptr inbounds nuw [96 x i8], ptr %i.ie, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  store i64 %i.ey, ptr %i.ih, align 8, !tbaa !35
  %i.ii = load ptr, ptr %0, align 8, !tbaa !8
  %i.ij = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.eu) #10
  %i.ik = getelementptr inbounds nuw [96 x i8], ptr %i.ii, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  store i64 %i.ey, ptr %i.il, align 8, !tbaa !35
  %i.im = load ptr, ptr %0, align 8, !tbaa !8
  %i.in = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.fc) #10
  %i.io = getelementptr inbounds nuw [96 x i8], ptr %i.im, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  store i64 %i.eq, ptr %i.ip, align 8, !tbaa !35
  %i.iq = load ptr, ptr %0, align 8, !tbaa !8
  %i.ir = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ey) #10
  %i.is = getelementptr inbounds nuw [96 x i8], ptr %i.iq, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  store i64 %i.eq, ptr %i.it, align 8, !tbaa !34
  %i.iu = load ptr, ptr %0, align 8, !tbaa !8
  %i.iv = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.fc) #10
  %i.iw = getelementptr inbounds nuw [96 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  store i64 %i.eu, ptr %i.ix, align 8, !tbaa !36
  %i.iy = load ptr, ptr %0, align 8, !tbaa !8
  %i.iz = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ey) #10
  %i.ja = getelementptr inbounds nuw [96 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  store i64 %i.eu, ptr %i.jb, align 8, !tbaa !37
  %i.jc = load ptr, ptr %0, align 8, !tbaa !8
  %i.jd = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.eq) #10
  %i.je = getelementptr inbounds nuw [96 x i8], ptr %i.jc, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  store i64 %i.dl, ptr %i.jf, align 8, !tbaa !38
  %i.jg = load ptr, ptr %0, align 8, !tbaa !8
  %i.jh = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.eu) #10
  %i.ji = getelementptr inbounds nuw [96 x i8], ptr %i.jg, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  store i64 %i.ea, ptr %i.jj, align 8, !tbaa !38
  %i.jk = load ptr, ptr %0, align 8, !tbaa !8
  %i.jl = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ey) #10
  %i.jm = getelementptr inbounds nuw [96 x i8], ptr %i.jk, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 72
  store i64 %i.cd, ptr %i.jn, align 8, !tbaa !38
  %i.jo = load ptr, ptr %0, align 8, !tbaa !8
  %i.jp = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.fc) #10
  %i.jq = getelementptr inbounds nuw [96 x i8], ptr %i.jo, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 72
  store i64 %i.al, ptr %i.jr, align 8, !tbaa !38
  %i.js = load ptr, ptr %0, align 8, !tbaa !8
  %i.jt = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.eq) #10
  %i.ju = getelementptr inbounds nuw [96 x i8], ptr %i.js, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 92
  store i8 1, ptr %i.jv, align 4, !tbaa !39
  %i.jw = load ptr, ptr %0, align 8, !tbaa !8
  %i.jx = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.eu) #10
  %i.jy = getelementptr inbounds nuw [96 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 92
  store i8 1, ptr %i.jz, align 4, !tbaa !39
  %i.ka = load ptr, ptr %0, align 8, !tbaa !8
  %i.kb = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.ey) #10
  %i.kc = getelementptr inbounds nuw [96 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 92
  store i8 1, ptr %i.kd, align 4, !tbaa !39
  %i.ke = load ptr, ptr %0, align 8, !tbaa !8
  %i.kf = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.fc) #10
  %i.kg = getelementptr inbounds nuw [96 x i8], ptr %i.ke, i64 %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 92
  store i8 1, ptr %i.kh, align 4, !tbaa !39
  %i.ki = load ptr, ptr %4, align 8, !tbaa !8
  %i.kj = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.al) #10
  %i.kk = getelementptr inbounds nuw [56 x i8], ptr %i.ki, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store i64 %i.fc, ptr %i.kl, align 8, !tbaa !40
  %i.km = load ptr, ptr %4, align 8, !tbaa !8
  %i.kn = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.cd) #10
  %i.ko = getelementptr inbounds nuw [56 x i8], ptr %i.km, i64 %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  store i64 %i.ey, ptr %i.kp, align 8, !tbaa !40
  %i.kq = load ptr, ptr %4, align 8, !tbaa !8
  %i.kr = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.dl) #10
  %i.ks = getelementptr inbounds nuw [56 x i8], ptr %i.kq, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  store i64 %i.eq, ptr %i.kt, align 8, !tbaa !40
  %i.ku = load ptr, ptr %4, align 8, !tbaa !8
  %i.kv = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %i.ea) #10
  %i.kw = getelementptr inbounds nuw [56 x i8], ptr %i.ku, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  store i64 %i.eu, ptr %i.kx, align 8, !tbaa !40
  %i.ky = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i8 1, ptr %i.ky, align 8, !tbaa !42
  %.not70 = icmp slt i32 %1, 1
  br i1 %.not70, label %._crit_edge80.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %init_query_structure.exit
  %i.kz = zext nneg i32 %1 to i64                 ; 2 uses
  %xtraiter = and i64 %i.kz, 3                    ; 3 uses
  %i.la = icmp ult i32 %1, 4
  br i1 %i.la, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.kz, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.lb = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  store i64 %i.m, ptr %i.lc, align 8, !tbaa !43
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  store i64 %i.m, ptr %i.ld, align 8, !tbaa !44
  %i.le = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 112
  store i64 %i.m, ptr %i.lf, align 8, !tbaa !43
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 104
  store i64 %i.m, ptr %i.lg, align 8, !tbaa !44
  %i.lh = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 176
  store i64 %i.m, ptr %i.li, align 8, !tbaa !43
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 168
  store i64 %i.m, ptr %i.lj, align 8, !tbaa !44
  %i.lk = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 240
  store i64 %i.m, ptr %i.ll, align 8, !tbaa !43
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 232
  store i64 %i.m, ptr %i.lm, align 8, !tbaa !44
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph, !llvm.loop !54

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ln = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %indvars.iv.epil ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  store i64 %i.m, ptr %i.lo, align 8, !tbaa !43
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  store i64 %i.m, ptr %i.lp, align 8, !tbaa !44
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.epil, !llvm.loop !55

.lr.ph.preheader.i:                               ; preds = %.lr.ph.epil, %.lr.ph.preheader.i.unr-lcssa
  %i.lq = uitofp nneg i32 %1 to double
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.06.i = phi double [ %i.lr, %.lr.ph.i ], [ %i.lq, %.lr.ph.preheader.i ]
  %.045.i = phi i32 [ %i.ls, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %i.lr = call double @llvm.log2.f64(double %.06.i) ; 2 uses
  %i.ls = add nuw nsw i32 %.045.i, 1
  %i.lt = fcmp ult double %i.lr, 1.000000e+00
  br i1 %i.lt, label %math_logstar_n.exit, label %.lr.ph.i, !llvm.loop !56

math_logstar_n.exit:                              ; preds = %.lr.ph.i
  %.not4976 = icmp eq i32 %.045.i, 0
  br i1 %.not4976, label %._crit_edge80.thread, label %.lr.ph79

._crit_edge80.thread:                             ; preds = %math_logstar_n.exit, %init_query_structure.exit
  %.pre = sitofp i32 %1 to double                 ; 2 uses
  br label %math_N.exit66

.lr.ph79:                                         ; preds = %math_logstar_n.exit
  %i.lu = uitofp nneg i32 %1 to double            ; 7 uses
  %i.lv = add nuw i32 %1, 1
  %wide.trip.count98 = zext i32 %i.lv to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph79, %._crit_edge75
  %.04278 = phi i64 [ 1, %.lr.ph79 ], [ %indvars.iv92, %._crit_edge75 ]
  %.04577 = phi i32 [ 1, %.lr.ph79 ], [ %i.nf, %._crit_edge75 ] ; 5 uses
  %i.lw = icmp samesign ugt i32 %.04577, 1
  br i1 %i.lw, label %.lr.ph.i54.preheader, label %math_N.exit

.lr.ph.i54.preheader:                             ; preds = %bb.f
  %i.lx = add nsw i32 %.04577, -2
  br label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %.lr.ph.i54.preheader, %.lr.ph.i54
  %.08.i = phi i32 [ %i.lz, %.lr.ph.i54 ], [ 0, %.lr.ph.i54.preheader ] ; 2 uses
  %.067.i = phi double [ %i.ly, %.lr.ph.i54 ], [ %i.lu, %.lr.ph.i54.preheader ]
  %i.ly = call double @log2(double noundef %.067.i) #10 ; 2 uses
  %i.lz = add nuw nsw i32 %.08.i, 1
  %exitcond.not.i = icmp eq i32 %.08.i, %i.lx
  br i1 %exitcond.not.i, label %math_N.exit, label %.lr.ph.i54, !llvm.loop !57

math_N.exit:                                      ; preds = %.lr.ph.i54, %bb.f
  %.06.lcssa.i = phi double [ %i.lu, %bb.f ], [ %i.ly, %.lr.ph.i54 ]
  %i.ma = fdiv double %i.lu, %.06.lcssa.i
  %i.mb = call double @llvm.ceil.f64(double %i.ma)
  %i.mc = fptosi double %i.mb to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %math_N.exit
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %bb.h ], [ %.04278, %math_N.exit ] ; 4 uses
  %.1.in = phi i32 [ %.1, %bb.h ], [ %i.mc, %math_N.exit ] ; 2 uses
  br label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.g, %.lr.ph.i56
  %.08.i57 = phi i32 [ %i.me, %.lr.ph.i56 ], [ 0, %bb.g ]
  %.067.i58 = phi double [ %i.md, %.lr.ph.i56 ], [ %i.lu, %bb.g ]
  %i.md = call double @log2(double noundef %.067.i58) #10 ; 2 uses
  %i.me = add nuw nsw i32 %.08.i57, 1             ; 2 uses
  %exitcond.not.i59 = icmp eq i32 %i.me, %.04577
  br i1 %exitcond.not.i59, label %math_N.exit60, label %.lr.ph.i56, !llvm.loop !57

math_N.exit60:                                    ; preds = %.lr.ph.i56
  %i.mf = fdiv double %i.lu, %i.md
  %i.mg = call double @llvm.ceil.f64(double %i.mf)
  %i.mh = fptosi double %i.mg to i32
  %.not52.not = icmp slt i32 %.1.in, %i.mh
  br i1 %.not52.not, label %bb.h, label %.lr.ph74

bb.h:                                             ; preds = %math_N.exit60
  %.1 = add nsw i32 %.1.in, 1
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1
  %i.mi = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv92
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !9
  call fastcc void @add_segment(i32 noundef %i.mj, ptr noundef %2, ptr noundef nonnull %0, ptr noundef %4)
  br label %bb.g, !llvm.loop !58

.lr.ph74:                                         ; preds = %math_N.exit60, %find_new_roots.exit
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %find_new_roots.exit ], [ 1, %math_N.exit60 ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %indvars.iv95 ; 6 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %i.mm = load i8, ptr %i.ml, align 8, !tbaa !42, !range !46, !noundef !47
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %find_new_roots.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph74
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 40 ; 3 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !44
  %i.mr = call fastcc i64 @locate_endpoint(ptr noundef nonnull %i.mk, ptr noundef nonnull %i.mo, i64 noundef %i.mq, ptr noundef nonnull %2, ptr noundef nonnull readonly %4) ; 2 uses
  store i64 %i.mr, ptr %i.mp, align 8, !tbaa !44
  %i.ms = load ptr, ptr %0, align 8, !tbaa !8
  %i.mt = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.mr) #10
  %i.mu = getelementptr inbounds nuw [96 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !38
  store i64 %i.mw, ptr %i.mp, align 8, !tbaa !44
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mk, i64 48 ; 3 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !43
  %i.mz = call fastcc i64 @locate_endpoint(ptr noundef nonnull %i.mo, ptr noundef nonnull %i.mk, i64 noundef %i.my, ptr noundef nonnull %2, ptr noundef nonnull readonly %4) ; 2 uses
  store i64 %i.mz, ptr %i.mx, align 8, !tbaa !43
  %i.na = load ptr, ptr %0, align 8, !tbaa !8
  %i.nb = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %0, i64 noundef %i.mz) #10
  %i.nc = getelementptr inbounds nuw [96 x i8], ptr %i.na, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 72
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !38
  store i64 %i.ne, ptr %i.mx, align 8, !tbaa !43
  br label %find_new_roots.exit

find_new_roots.exit:                              ; preds = %.lr.ph74, %bb.i
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %._crit_edge75, label %.lr.ph74, !llvm.loop !59

._crit_edge75:                                    ; preds = %find_new_roots.exit
  %i.nf = add nuw i32 %.04577, 1
  %exitcond100.not = icmp eq i32 %.04577, %.045.i
  br i1 %exitcond100.not, label %.lr.ph.i62, label %bb.f, !llvm.loop !60

.lr.ph.i62:                                       ; preds = %._crit_edge75, %.lr.ph.i62
  %.08.i63 = phi i32 [ %i.nh, %.lr.ph.i62 ], [ 0, %._crit_edge75 ]
  %.067.i64 = phi double [ %i.ng, %.lr.ph.i62 ], [ %i.lu, %._crit_edge75 ]
  %i.ng = call double @log2(double noundef %.067.i64) #10 ; 2 uses
  %i.nh = add nuw nsw i32 %.08.i63, 1             ; 2 uses
  %exitcond.not.i65 = icmp eq i32 %i.nh, %.045.i
  br i1 %exitcond.not.i65, label %math_N.exit66, label %.lr.ph.i62, !llvm.loop !57

math_N.exit66:                                    ; preds = %.lr.ph.i62, %._crit_edge80.thread
  %.042.lcssa121 = phi i64 [ 1, %._crit_edge80.thread ], [ %indvars.iv92, %.lr.ph.i62 ]
  %.pre-phi120 = phi double [ %.pre, %._crit_edge80.thread ], [ %i.lu, %.lr.ph.i62 ]
  %.06.lcssa.i61 = phi double [ %.pre, %._crit_edge80.thread ], [ %i.ng, %.lr.ph.i62 ]
  %i.ni = fdiv double %.pre-phi120, %.06.lcssa.i61
  %i.nj = call double @llvm.ceil.f64(double %i.ni)
  %i.nk = fptosi double %i.nj to i32              ; 2 uses
  %.not50.not81 = icmp sgt i32 %1, %i.nk
  br i1 %.not50.not81, label %.lr.ph84, label %.preheader

.preheader:                                       ; preds = %.lr.ph84, %math_N.exit66
  %.val85 = load i64, ptr %i.l, align 8, !tbaa !20
  %.not = icmp eq i64 %.val85, 0
  br i1 %.not, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.nl = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.j

.lr.ph84:                                         ; preds = %math_N.exit66, %.lr.ph84
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %.lr.ph84 ], [ %.042.lcssa121, %math_N.exit66 ] ; 2 uses
  %.3.in83 = phi i32 [ %.3, %.lr.ph84 ], [ %i.nk, %math_N.exit66 ]
  %.3 = add i32 %.3.in83, 1                       ; 2 uses
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1
  %i.nm = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv101
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !9
  call fastcc void @add_segment(i32 noundef %i.nn, ptr noundef %2, ptr noundef nonnull %0, ptr noundef %4)
  %exitcond104.not = icmp eq i32 %.3, %1
  br i1 %exitcond104.not, label %.preheader, label %.lr.ph84, !llvm.loop !61

._crit_edge88:                                    ; preds = %bb.m, %.preheader
  call void @gv_list_clear_(ptr noundef nonnull %4, i64 noundef 56) #10
  call void @gv_list_free_(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void

bb.j:                                             ; preds = %.lr.ph87, %bb.m
  %.086 = phi i64 [ 0, %.lr.ph87 ], [ %i.nt, %bb.m ] ; 2 uses
  %i.no = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.086) #10
  %i.np = load ptr, ptr %i.nl, align 8, !tbaa !67 ; 2 uses
  %magicptr = ptrtoint ptr %i.np to i64
  switch i64 %magicptr, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.nq = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr %i.nq) #11 ; 0 uses
  call void @abort() #12
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.nr = load ptr, ptr %4, align 8, !tbaa !8
  %i.ns = getelementptr inbounds nuw [56 x i8], ptr %i.nr, i64 %i.no
  call void %i.np(ptr noundef byval(%struct.qnode_t) align 8 %i.ns) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %i.nt = add nuw i64 %.086, 1                    ; 2 uses
  %.val = load i64, ptr %i.l, align 8, !tbaa !20
  %i.nu = icmp ult i64 %i.nt, %.val
  br i1 %i.nu, label %bb.j, label %._crit_edge88, !llvm.loop !62
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_segment(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.segment_t, align 8          ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [64 x i8], ptr %1, i64 %i.a ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !tbaa.struct !68
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.d = load double, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.f = load double, ptr %i.e, align 8           ; 2 uses
  %i.g = load double, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  %i.j = fadd double %i.i, f0x3E7AD7F29ABCAF48
  %i.k = fcmp ogt double %i.f, %i.j
  %i.l = fadd double %i.i, f0xBE7AD7F29ABCAF48
  %i.m = fcmp uge double %i.f, %i.l
  %i.n = fcmp ogt double %i.d, %i.g
  %narrow.i = select i1 %i.m, i1 %i.n, i1 false
  %i.o = select i1 %i.k, i1 true, i1 %narrow.i    ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.r = load <2 x i64>, ptr %i.q, align 8
  %i.s = shufflevector <2 x i64> %i.r, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.s, ptr %i.q, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = phi i64 [ 56, %bb.b ], [ 60, %bb.a ]
  %.pn7.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t
  %.pn7.in.i = load i32, ptr %.pn7.in.in.i, align 4, !tbaa !9
  %.pn7.i = sext i32 %.pn7.in.i to i64
  %.pn.i = getelementptr inbounds [64 x i8], ptr %1, i64 %.pn7.i
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.in.i = load i8, ptr %.0.in.in.i, align 8, !tbaa !42, !range !46, !noundef !47
  %.0.i = trunc nuw i8 %.0.in.i to i1
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = call fastcc i64 @locate_endpoint(ptr noundef nonnull %4, ptr noundef nonnull %i.c, i64 noundef %i.v, ptr noundef nonnull %1, ptr noundef %3) ; 13 uses
  br i1 %.0.i, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.x, i8 0, i64 96, i1 false)
  %i.y = tail call i64 @gv_list_append_slot_(ptr noundef %2, i64 noundef 96) #10
  %i.z = load ptr, ptr %2, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw [96 x i8], ptr %i.z, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(96) %i.x, i64 96, i1 false), !tbaa.struct !16
  %i.ab = getelementptr i8, ptr %2, i64 16
  %.val.i = load i64, ptr %i.ab, align 8, !tbaa !20
  %i.ac = add i64 %.val.i, -1                     ; 16 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !8
  %i.ae = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.w) #10
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull align 8 dereferenceable(96) %i.af, i64 96, i1 false), !tbaa.struct !16
  %i.ag = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ac) #10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 2 uses
  %magicptr = ptrtoint ptr %i.ai to i64
  switch i64 %magicptr, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr %i.aj) #11 ; 0 uses
  tail call void @abort() #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %2, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %i.ak, i64 %i.ag
  tail call void %i.ai(ptr noundef byval(%struct.trap_t) align 8 %i.al) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.am = load ptr, ptr %2, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw [96 x i8], ptr %i.am, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.an, ptr noundef nonnull align 8 dereferenceable(96) %i.x, i64 96, i1 false), !tbaa.struct !16
  %i.ao = load ptr, ptr %2, align 8, !tbaa !8
  %i.ap = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.w) #10
  %i.aq = getelementptr inbounds nuw [96 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !28
  %i.as = load ptr, ptr %2, align 8, !tbaa !8
  %i.at = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ac) #10
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !28
  %i.aw = load ptr, ptr %2, align 8, !tbaa !8
  %i.ax = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.w) #10
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store i64 %i.ac, ptr %i.az, align 8, !tbaa !35
  %i.ba = load ptr, ptr %2, align 8, !tbaa !8
  %i.bb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.w) #10
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  store i64 0, ptr %i.bd, align 8, !tbaa !36
  %i.be = load ptr, ptr %2, align 8, !tbaa !8
  %i.bf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ac) #10
  %i.bg = getelementptr inbounds nuw [96 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %i.w, ptr %i.bh, align 8, !tbaa !34
  %i.bi = load ptr, ptr %2, align 8, !tbaa !8
  %i.bj = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ac) #10
  %i.bk = getelementptr inbounds nuw [96 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i64 0, ptr %i.bl, align 8, !tbaa !37
  %i.bm = load ptr, ptr %2, align 8, !tbaa !8
  %i.bn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ac) #10
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !35 ; 3 uses
  %i.br = add i64 %i.bq, -1
end_hunk_0
