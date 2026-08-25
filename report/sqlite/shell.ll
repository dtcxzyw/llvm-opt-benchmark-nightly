Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  br label %.lr.ph372.i

.lr.ph372.i:                                      ; preds = %.lr.ph372.i.preheader, %bb.ca
  %i.hg = phi i8 [ %spec.select80, %bb.ca ], [ %.promoted74, %.lr.ph372.i.preheader ]
  %i.hh = phi i64 [ %i.hz, %bb.ca ], [ %.promoted72, %.lr.ph372.i.preheader ] ; 4 uses
  %.1278370.i = phi i64 [ %i.if, %bb.ca ], [ 0, %.lr.ph372.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #45
  store i32 0, ptr %i.f, align 4, !tbaa !17
  %i.hi = load ptr, ptr %4, align 8, !tbaa !36
  %i.hj = trunc i64 %.1278370.i to i32            ; 2 uses
  %i.hk = call i32 @sqlite3_column_type(ptr noundef %i.hi, i32 noundef %i.hj) #45
  %i.hl = load ptr, ptr %i.gq, align 8, !tbaa !37
  %i.hm = call ptr @sqlite3_str_new(ptr noundef %i.hl) #45 ; 5 uses
  call fastcc void @qrfRenderValue(ptr noundef nonnull %4, ptr noundef %i.hm, i32 noundef %i.hj)
  %i.hn = call i32 @sqlite3_str_length(ptr noundef %i.hm) #45
  %.not.i319.i = icmp eq ptr %i.hm, null
  br i1 %.not.i319.i, label %qrfStrErr.exit321.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph372.i
  %i.ho = call i32 @sqlite3_str_errcode(ptr noundef nonnull %i.hm) #45 ; 3 uses
  %.not6.i320.i = icmp eq i32 %i.ho, 0
  br i1 %.not6.i320.i, label %qrfStrErr.exit321.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hp = call ptr @sqlite3_errstr(i32 noundef %i.ho) #45
  call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %4, i32 noundef %i.ho, ptr noundef %i.hp)
  br label %qrfStrErr.exit321.i

qrfStrErr.exit321.i:                              ; preds = %bb.by, %bb.bx, %.lr.ph372.i
  %i.hq = call ptr @sqlite3_str_finish(ptr noundef %i.hm) #45 ; 2 uses
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hh
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !66
  %i.hs = add i32 %i.hk, -1
  %i.ht = icmp ult i32 %i.hs, 2
  %i.hu = zext i1 %i.ht to i8
  %i.hv = getelementptr inbounds i8, ptr %i.hd, i64 %i.hh
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !16
  %i.hw = sext i32 %i.hn to i64
  %i.hx = call fastcc i32 @qrfDisplayWidth(ptr noundef %i.hq, i64 noundef %i.hw, ptr noundef nonnull %i.f) ; 3 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.hh
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !17
  %i.hz = add nsw i64 %i.hh, 1                    ; 2 uses
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %.1278370.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !68
  %i.id = icmp sgt i32 %i.hx, %i.ic
  br i1 %i.id, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %qrfStrErr.exit321.i
  store i32 %i.hx, ptr %i.ib, align 4, !tbaa !68
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %qrfStrErr.exit321.i
  %i.ie = load i32, ptr %i.f, align 4, !tbaa !17
  %.not306.i = icmp eq i32 %i.ie, 0
  %spec.select80 = select i1 %.not306.i, i8 %i.hg, i8 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #45
  %i.if = add nuw nsw i64 %.1278370.i, 1          ; 2 uses
  %exitcond398.not.i = icmp eq i64 %i.if, %i.el
  br i1 %exitcond398.not.i, label %._crit_edge373.i.loopexit, label %.lr.ph372.i, !llvm.loop !73

._crit_edge373.i.loopexit:                        ; preds = %bb.ca
  store i64 %i.hz, ptr %i.gn, align 8
  store i8 %spec.select80, ptr %i.gu, align 4
  br label %._crit_edge373.i

._crit_edge373.i:                                 ; preds = %._crit_edge373.i.loopexit, %bb.bw
  %i.ig = load i64, ptr %i.gv, align 8, !tbaa !41
  %i.ih = add nsw i64 %i.ig, 1
  store i64 %i.ih, ptr %i.gv, align 8, !tbaa !41
  %i.ii = load ptr, ptr %4, align 8, !tbaa !36
  %i.ij = call i32 @sqlite3_step(ptr noundef %i.ii) #45
  %i.ik = icmp eq i32 %i.ij, 100
  %.pre.i = load i32, ptr %i.gw, align 8, !tbaa !39
  %i.il = icmp eq i32 %.pre.i, 0                  ; 2 uses
  br i1 %i.ik, label %bb.cb, label %.critedge.i

bb.cb:                                            ; preds = %._crit_edge373.i
  br i1 %i.il, label %bb.bu, label %.critedge.thread.i, !llvm.loop !74

.critedge.i:                                      ; preds = %._crit_edge373.i
  br i1 %i.il, label %bb.cc, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.cb, %.critedge.i
  %i.im = load i64, ptr %i.gn, align 8, !tbaa !71 ; 2 uses
  %i.in = icmp sgt i64 %i.im, 0
  %.pre88 = load ptr, ptr %i.gr, align 8, !tbaa !75 ; 2 uses
  br i1 %i.in, label %.lr.ph.i.i, label %qrfColDataFree.exit.i

.lr.ph.i.i:                                       ; preds = %.critedge.thread.i, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.iq, %.lr.ph.i.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.pre88, i64 %.09.i.i
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !66
  call void @sqlite3_free(ptr noundef %i.ip) #45
  %i.iq = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond86.not = icmp eq i64 %i.iq, %i.im
  br i1 %exitcond86.not, label %qrfColDataFree.exit.i, label %.lr.ph.i.i, !llvm.loop !76

qrfColDataFree.exit.i:                            ; preds = %.lr.ph.i.i, %.critedge.thread.i
  call void @sqlite3_free(ptr noundef %.pre88) #45
  %i.ir = load ptr, ptr %i.gt, align 8, !tbaa !77
  call void @sqlite3_free(ptr noundef %i.ir) #45
  %i.is = load ptr, ptr %i.gs, align 8, !tbaa !65
  call void @sqlite3_free(ptr noundef %i.is) #45
  %i.it = load ptr, ptr %i.eo, align 8, !tbaa !64
  call void @sqlite3_free(ptr noundef %i.it) #45
  br label %qrfColumnar.exit

bb.cc:                                            ; preds = %.critedge.i
  %i.iu = load i8, ptr %i.er, align 2, !tbaa !56
  %i.iv = icmp eq i8 %i.iu, 1
  br i1 %i.iv, label %.loopexit363.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 106
  %i.ix = load i8, ptr %i.iw, align 2, !tbaa !78  ; 2 uses
  %i.iy = icmp eq i8 %i.ix, 0
  %..i = select i1 %i.iy, i8 2, i8 %i.ix          ; 9 uses
  br i1 %i.gp, label %.lr.ph376.i, label %._crit_edge380.thread.i

.lr.ph376.i:                                      ; preds = %bb.cd
  %i.iz = load ptr, ptr %i.eo, align 8, !tbaa !64 ; 11 uses
  %xtraiter = and i64 %i.el, 7
  %i.ja = icmp ult i32 %i.ef, 8
  br i1 %i.ja, label %.epil.preheader, label %.lr.ph376.i.new

.lr.ph376.i.new:                                  ; preds = %.lr.ph376.i
  %unroll_iter = and i64 %i.el, 2147483640
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.lr.ph376.i.new
  %.2279374.i = phi i64 [ 0, %.lr.ph376.i.new ], [ %i.jr, %bb.ce ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph376.i.new ], [ %niter.next.7, %bb.ce ]
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.2279374.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store i8 %..i, ptr %i.jc, align 8, !tbaa !79
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.2279374.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  store i8 %..i, ptr %i.je, align 8, !tbaa !79
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.2279374.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  store i8 %..i, ptr %i.jg, align 8, !tbaa !79
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.2279374.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 88
  store i8 %..i, ptr %i.ji, align 8, !tbaa !79
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.2279374.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 112
  store i8 %..i, ptr %i.jk, align 8, !tbaa !79
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.2279374.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 136
  store i8 %..i, ptr %i.jm, align 8, !tbaa !79
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.2279374.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 160
  store i8 %..i, ptr %i.jo, align 8, !tbaa !79
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.2279374.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 184
  store i8 %..i, ptr %i.jq, align 8, !tbaa !79
  %i.jr = add nuw nsw i64 %.2279374.i, 8          ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph379.i.loopexit.unr-lcssa, label %bb.ce, !llvm.loop !80

.loopexit363.i:                                   ; preds = %bb.cc
  %.val317.i = load i32, ptr %i.ek, align 8
  %.val318.i = load ptr, ptr %i.eo, align 8       ; 2 uses
  call fastcc void @qrfLoadAlignment(i32 %.val317.i, ptr %.val318.i, ptr noundef nonnull %4)
  br i1 %i.gp, label %.lr.ph379.i, label %._crit_edge380.thread.i

.lr.ph379.i.loopexit.unr-lcssa:                   ; preds = %bb.ce
  %i.js = and i32 %i.ef, 7
  %lcmp.mod.not = icmp eq i32 %i.js, 0
  br i1 %lcmp.mod.not, label %.lr.ph379.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph379.i.loopexit.unr-lcssa, %.lr.ph376.i
  %.2279374.i.epil.init = phi i64 [ 0, %.lr.ph376.i ], [ %i.jr, %.lr.ph379.i.loopexit.unr-lcssa ]
  %i.jt = and i32 %i.ef, 7
  %lcmp.mod201 = icmp ne i32 %i.jt, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %.epil.preheader
  %.2279374.i.epil = phi i64 [ %.2279374.i.epil.init, %.epil.preheader ], [ %i.jw, %bb.cf ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cf ]
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %.2279374.i.epil
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i8 %..i, ptr %i.jv, align 8, !tbaa !79
  %i.jw = add nuw nsw i64 %.2279374.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph379.i, label %bb.cf, !llvm.loop !81

.lr.ph379.i:                                      ; preds = %.lr.ph379.i.loopexit.unr-lcssa, %bb.cf, %.loopexit363.i
  %i.jx = phi ptr [ %.val318.i, %.loopexit363.i ], [ %i.iz, %bb.cf ], [ %i.iz, %.lr.ph379.i.loopexit.unr-lcssa ] ; 6 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !83
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 110
  %.promoted.i = load i8, ptr %i.gu, align 4      ; 2 uses
  %i.kf = load ptr, ptr %i.kb, align 8
  %i.kg = load i32, ptr %i.kc, align 4
  %i.kh = sext i32 %i.kg to i64                   ; 2 uses
  %i.ki = load ptr, ptr %i.kd, align 8            ; 2 uses
  %i.kj = load i16, ptr %i.ke, align 2            ; 2 uses
  %i.kk = sext i16 %i.kj to i32                   ; 2 uses
  %i.kl = icmp sgt i16 %i.kj, 0
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cr, %.lr.ph379.i
  %5 = phi i8 [ %.promoted.i, %.lr.ph379.i ], [ %8, %bb.cr ] ; 3 uses
  %i.km = phi i8 [ %.promoted.i, %.lr.ph379.i ], [ %9, %bb.cr ] ; 4 uses
  %.3280377.i = phi i64 [ 0, %.lr.ph379.i ], [ %i.lz, %bb.cr ] ; 12 uses
  %i.kn = icmp slt i64 %.3280377.i, %i.ka
  br i1 %i.kn, label %bb.ch, label %.thread.i12

bb.ch:                                            ; preds = %bb.cg
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %.3280377.i
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !84 ; 4 uses
  %i.kq = sext i16 %i.kp to i32                   ; 2 uses
  %i.kr = icmp eq i16 %i.kp, -32768
  br i1 %i.kr, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.ks = icmp slt i64 %.3280377.i, %i.kh
  br i1 %i.ks, label %bb.cj, label %.thread.i12

bb.cj:                                            ; preds = %bb.ci
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.3280377.i
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !16
  %i.kv = and i8 %i.ku, 3
  %i.kw = icmp eq i8 %i.kv, 0
  br i1 %i.kw, label %bb.ck, label %.thread.i12

bb.ck:                                            ; preds = %bb.cj
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 8, !tbaa !79
  %i.la = or i8 %i.kz, 3
  store i8 %i.la, ptr %i.ky, align 8, !tbaa !79
  br label %.thread.i12

bb.cl:                                            ; preds = %bb.ch
  %i.lb = icmp slt i16 %i.kp, 0
  br i1 %i.lb, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.lc = sub nsw i32 0, %i.kq                    ; 3 uses
  %i.ld = icmp slt i64 %.3280377.i, %i.kh
  br i1 %i.ld, label %bb.cn, label %.thread351.i

bb.cn:                                            ; preds = %bb.cm
  %i.le = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.3280377.i
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !16
  %i.lg = and i8 %i.lf, 3
  %i.lh = icmp eq i8 %i.lg, 0
  br i1 %i.lh, label %bb.co, label %.thread351.i

bb.co:                                            ; preds = %bb.cn
  %i.li = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 8, !tbaa !79
  %i.ll = or i8 %i.lk, 3
  store i8 %i.ll, ptr %i.lj, align 8, !tbaa !79
  br label %.thread351.i

bb.cp:                                            ; preds = %bb.cl
  %.not305.i = icmp eq i16 %i.kp, 0
  br i1 %.not305.i, label %.thread.i12, label %.thread351.i

.thread.i12:                                      ; preds = %bb.cp, %bb.ck, %bb.cj, %bb.ci, %bb.cg
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !68 ; 2 uses
  %i.lp = icmp sgt i32 %i.lo, %i.kk
  %or.cond310.i = select i1 %i.kl, i1 %i.lp, i1 false
  br i1 %or.cond310.i, label %6, label %bb.cr

6:                                                ; preds = %.thread.i12
  br label %bb.cr

.thread351.i:                                     ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm
  %.0258354.i = phi i32 [ %i.kq, %bb.cp ], [ %i.lc, %bb.cn ], [ %i.lc, %bb.cm ], [ %i.lc, %bb.co ] ; 5 uses
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 17
  store i8 1, ptr %i.lr, align 1, !tbaa !85
  %i.ls = icmp eq i8 %i.km, 0
  %i.lt = icmp eq i32 %.0258354.i, 1              ; 2 uses
  %or.cond3.i = or i1 %i.ls, %i.lt
  br i1 %or.cond3.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.thread351.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !68
  %i.lw = icmp sgt i32 %i.lv, %.0258354.i
  br i1 %i.lw, label %7, label %bb.cr

7:                                                ; preds = %bb.cq
  %spec.store.select.i = select i1 %i.lt, i32 2, i32 %.0258354.i
  br label %bb.cr

bb.cr:                                            ; preds = %7, %bb.cq, %.thread351.i, %6, %.thread.i12
  %8 = phi i8 [ 1, %6 ], [ %5, %.thread351.i ], [ %5, %.thread.i12 ], [ 1, %7 ], [ %5, %bb.cq ] ; 2 uses
  %9 = phi i8 [ 1, %6 ], [ %i.km, %.thread351.i ], [ %i.km, %.thread.i12 ], [ 1, %7 ], [ %i.km, %bb.cq ]
  %.2.i = phi i32 [ %i.kk, %6 ], [ %.0258354.i, %.thread351.i ], [ %i.lo, %.thread.i12 ], [ %spec.store.select.i, %7 ], [ %.0258354.i, %bb.cq ]
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i32 %.2.i, ptr %i.ly, align 8, !tbaa !86
  %i.lz = add nuw nsw i64 %.3280377.i, 1          ; 2 uses
  %exitcond400.not.i = icmp eq i64 %i.lz, %i.el
  br i1 %exitcond400.not.i, label %._crit_edge380.i, label %bb.cg, !llvm.loop !87

._crit_edge380.i:                                 ; preds = %bb.cr
  store i8 %8, ptr %i.gu, align 4
  %i.ma = icmp eq i32 %i.ef, 1
  %i.mb = load i64, ptr %i.gn, align 8
  %i.mc = icmp sgt i64 %i.mb, 1
  %or.cond6.i = select i1 %i.ma, i1 %i.mc, i1 false
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 107
  %i.me = load i8, ptr %i.md, align 1
  %i.mf = icmp eq i8 %i.me, 2
  %or.cond = select i1 %or.cond6.i, i1 %i.mf, i1 false
  %i.mg = load i8, ptr %i.dg, align 1
  %i.mh = icmp eq i8 %i.mg, 2
  %or.cond49 = select i1 %or.cond, i1 %i.mh, i1 false
  %i.mi = load i8, ptr %i.er, align 2
  %i.mj = icmp eq i8 %i.mi, 1
  %or.cond51 = select i1 %or.cond49, i1 %i.mj, i1 false
  br i1 %or.cond51, label %bb.cs, label %._crit_edge380.thread.i

bb.cs:                                            ; preds = %._crit_edge380.i
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ml = load i16, ptr %i.mk, align 8, !tbaa !43
  %i.mm = sext i16 %i.ml to i32
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !86
  %i.mp = add nsw i32 %i.mo, 3
  %i.mq = icmp slt i32 %i.mp, %i.mm
  br i1 %i.mq, label %bb.ct, label %._crit_edge380.thread.i

bb.ct:                                            ; preds = %bb.cs
  call fastcc void @qrfSplitColumn(ptr noundef %3, ptr noundef nonnull %4)
  %i.mr = load i32, ptr %i.ek, align 8, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 13
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !88
  br label %qrfRestrictScreenWidth.exit.i

._crit_edge380.thread.i:                          ; preds = %bb.cs, %._crit_edge380.i, %.loopexit363.i, %bb.cd
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  store i8 2, ptr %i.ms, align 1, !tbaa !88
  %i.mt = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.mu = load i16, ptr %i.mt, align 8, !tbaa !43 ; 2 uses
  %i.mv = icmp eq i16 %i.mu, 0
  br i1 %i.mv, label %qrfRestrictScreenWidth.exit.i, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge380.thread.i
  %i.mw = load i8, ptr %i.dg, align 1, !tbaa !47
  %i.mx = icmp eq i8 %i.mw, 2                     ; 2 uses
  %i.my = load i32, ptr %i.ek, align 8, !tbaa !59 ; 8 uses
  br i1 %i.mx, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.mz = shl nsw i32 %i.my, 1
  %i.na = add nsw i32 %i.mz, -2
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.nb = mul nsw i32 %i.my, 3
  %i.nc = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.nd = load i8, ptr %i.nc, align 4, !tbaa !89
  %i.ne = icmp eq i8 %i.nd, 1
  %spec.select.v.i.i = select i1 %i.ne, i32 -1, i32 1
  %spec.select.i.i = add nsw i32 %spec.select.v.i.i, %i.nb
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.067.i.i = phi i32 [ %i.na, %bb.cv ], [ %spec.select.i.i, %bb.cw ]
  %i.nf = icmp slt i32 %i.my, 1                   ; 2 uses
  br i1 %i.nf, label %._crit_edge.i.i, label %.lr.ph.i323.i

.lr.ph.i323.i:                                    ; preds = %bb.cx
  %i.ng = load ptr, ptr %i.eo, align 8, !tbaa !64 ; 9 uses
  %wide.trip.count.i.i = zext nneg i32 %i.my to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.my, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i323.i
  %i.nh = and i64 %wide.trip.count.i.i, 7         ; 2 uses
  %i.ni = icmp eq i64 %i.nh, 0
  %i.nj = select i1 %i.ni, i64 8, i64 %i.nh
  %n.vec = sub nsw i64 %wide.trip.count.i.i, %i.nj ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oq, %vector.body ]
  %vec.phi191 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.or, %vector.body ]
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %index
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %index
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %index
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %index
  %i.no = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %index
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %index
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %index
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %index
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nl, i64 32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nm, i64 56
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 80
  %i.nw = getelementptr inbounds nuw i8, ptr %i.no, i64 104
  %i.nx = getelementptr inbounds nuw i8, ptr %i.np, i64 128
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nq, i64 152
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nr, i64 176
  %i.oa = load i32, ptr %i.ns, align 8, !tbaa !86
  %i.ob = load i32, ptr %i.nt, align 8, !tbaa !86
  %i.oc = load i32, ptr %i.nu, align 8, !tbaa !86
  %i.od = load i32, ptr %i.nv, align 8, !tbaa !86
  %i.oe = insertelement <4 x i32> poison, i32 %i.oa, i64 0
  %i.of = insertelement <4 x i32> %i.oe, i32 %i.ob, i64 1
  %i.og = insertelement <4 x i32> %i.of, i32 %i.oc, i64 2
  %i.oh = insertelement <4 x i32> %i.og, i32 %i.od, i64 3
  %i.oi = load i32, ptr %i.nw, align 8, !tbaa !86
  %i.oj = load i32, ptr %i.nx, align 8, !tbaa !86
  %i.ok = load i32, ptr %i.ny, align 8, !tbaa !86
  %i.ol = load i32, ptr %i.nz, align 8, !tbaa !86
  %i.om = insertelement <4 x i32> poison, i32 %i.oi, i64 0
  %i.on = insertelement <4 x i32> %i.om, i32 %i.oj, i64 1
  %i.oo = insertelement <4 x i32> %i.on, i32 %i.ok, i64 2
  %i.op = insertelement <4 x i32> %i.oo, i32 %i.ol, i64 3
  %i.oq = add <4 x i32> %i.oh, %vec.phi           ; 2 uses
  %i.or = add <4 x i32> %i.op, %vec.phi191        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.os = icmp eq i64 %index.next, %n.vec
  br i1 %i.os, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.or, %i.oq
  %i.ot = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i323.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i323.i ], [ %n.vec, %middle.block ]
  %.06575.i.i.ph = phi i32 [ 0, %.lr.ph.i323.i ], [ %i.ot, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.06575.i.i = phi i32 [ %i.ox, %scalar.ph ], [ %.06575.i.i.ph, %scalar.ph.preheader ]
  %i.ou = getelementptr inbounds nuw [24 x i8], ptr %i.ng, i64 %indvars.iv.i.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !86
  %i.ox = add nsw i32 %i.ow, %.06575.i.i          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !93

._crit_edge.i.i:                                  ; preds = %scalar.ph, %bb.cx
  %.065.lcssa.i.i = phi i32 [ 0, %bb.cx ], [ %i.ox, %scalar.ph ] ; 3 uses
  %i.oy = sext i16 %i.mu to i32                   ; 2 uses
  %i.oz = add nsw i32 %.065.lcssa.i.i, %.067.i.i
  %.not.i322.i = icmp sgt i32 %i.oz, %i.oy
  br i1 %.not.i322.i, label %bb.cy, label %qrfRestrictScreenWidth.exit.i

bb.cy:                                            ; preds = %._crit_edge.i.i
  store i8 0, ptr %i.ms, align 1, !tbaa !88
  br i1 %i.mx, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.pa = add nsw i32 %i.my, -1
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.pb = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.pc = load i8, ptr %i.pb, align 4, !tbaa !89
  %i.pd = icmp eq i8 %i.pc, 1
  %spec.select72.v.i.i = select i1 %i.pd, i32 -1, i32 1
  %spec.select72.i.i = add nsw i32 %spec.select72.v.i.i, %i.my
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.168.i.i = phi i32 [ %i.pa, %bb.cz ], [ %spec.select72.i.i, %bb.da ]
  %i.pe = sub nsw i32 %i.oy, %.168.i.i            ; 4 uses
  %i.pf = icmp sle i32 %.065.lcssa.i.i, %i.pe
  %brmerge.i = or i1 %i.nf, %i.pf
  br i1 %brmerge.i, label %qrfRestrictScreenWidth.exit.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %bb.db
  %i.pg = load ptr, ptr %i.eo, align 8, !tbaa !64 ; 2 uses
  %wide.trip.count90.i.i = zext nneg i32 %i.my to i64
  %.promoted78 = load i8, ptr %i.gu, align 4
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.di, %.preheader.lr.ph.split.us.i.i
  %i.ph = phi i8 [ %.promoted78, %.preheader.lr.ph.split.us.i.i ], [ 1, %bb.di ]
  %.16684.us.i.i = phi i32 [ %.065.lcssa.i.i, %.preheader.lr.ph.split.us.i.i ], [ %i.qc, %bb.di ] ; 3 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dh, %.preheader.us.i.i
  %indvars.iv87.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next88.i.i, %bb.dh ] ; 3 uses
  %.079.us.i.i = phi i32 [ 0, %.preheader.us.i.i ], [ %.1.us.i.i, %bb.dh ] ; 4 uses
  %.05878.us.i.i = phi i32 [ -1, %.preheader.us.i.i ], [ %.159.us.i.i, %bb.dh ] ; 3 uses
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %i.pg, i64 %indvars.iv87.i.i ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 17
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !85
  %i.pl = icmp eq i8 %i.pk, 0
  br i1 %i.pl, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !86 ; 5 uses
  %i.po = icmp sgt i32 %i.pn, %.079.us.i.i
  %i.pp = icmp sgt i32 %i.pn, 8
  %or.cond.us.i.i = and i1 %i.po, %i.pp
  br i1 %or.cond.us.i.i, label %bb.de, label %bb.dh
end_hunk_0
