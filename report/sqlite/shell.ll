inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_format_query_result:bb.a
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !49
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !41
  %i.gm = add nsw i64 %i.gl, 1
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !41
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i, %bb.bj
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gp = icmp sgt i32 %i.ef, 0                   ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.bu

bb.bu:                                            ; preds = %bb.cb, %bb.bt
  %i.gx = load i64, ptr %i.gn, align 8, !tbaa !71
  %i.gy = add nsw i64 %i.gx, %i.el
  %i.gz = load i64, ptr %i.go, align 8, !tbaa !72
  %i.ha = icmp sgt i64 %i.gy, %i.gz
  br i1 %i.ha, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.hb = call fastcc i32 @qrfColDataEnlarge(ptr noundef %3)
  %.not293.i = icmp eq i32 %i.hb, 0
  br i1 %.not293.i, label %bb.bw, label %qrfColumnar.exit

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br i1 %i.gp, label %.lr.ph372.i.preheader, label %._crit_edge373.i

.lr.ph372.i.preheader:                            ; preds = %bb.bw
  %.promoted72 = load i64, ptr %i.gn, align 8
  %.promoted74 = load i8, ptr %i.gu, align 4
  %i.hc = load ptr, ptr %i.gr, align 8
  %i.hd = load ptr, ptr %i.gs, align 8
  %i.he = load ptr, ptr %i.gt, align 8
  %i.hf = load ptr, ptr %i.eo, align 8
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

bb.cg:                                            ; preds = %bb.ct, %.lr.ph379.i
  %i.km = phi i8 [ %.promoted.i, %.lr.ph379.i ], [ %i.ly, %bb.ct ] ; 3 uses
  %i.kn = phi i8 [ %.promoted.i, %.lr.ph379.i ], [ %i.lz, %bb.ct ] ; 4 uses
  %.3280377.i = phi i64 [ 0, %.lr.ph379.i ], [ %i.mc, %bb.ct ] ; 12 uses
  %i.ko = icmp slt i64 %.3280377.i, %i.ka
  br i1 %i.ko, label %bb.ch, label %.thread.i12

bb.ch:                                            ; preds = %bb.cg
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %.3280377.i
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !84 ; 4 uses
  %i.kr = sext i16 %i.kq to i32                   ; 2 uses
  %i.ks = icmp eq i16 %i.kq, -32768
  br i1 %i.ks, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.kt = icmp slt i64 %.3280377.i, %i.kh
  br i1 %i.kt, label %bb.cj, label %.thread.i12

bb.cj:                                            ; preds = %bb.ci
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.3280377.i
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !16
  %i.kw = and i8 %i.kv, 3
  %i.kx = icmp eq i8 %i.kw, 0
  br i1 %i.kx, label %bb.ck, label %.thread.i12

bb.ck:                                            ; preds = %bb.cj
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16 ; 2 uses
  %i.la = load i8, ptr %i.kz, align 8, !tbaa !79
  %i.lb = or i8 %i.la, 3
  store i8 %i.lb, ptr %i.kz, align 8, !tbaa !79
  br label %.thread.i12

bb.cl:                                            ; preds = %bb.ch
  %i.lc = icmp slt i16 %i.kq, 0
  br i1 %i.lc, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.ld = sub nsw i32 0, %i.kr                    ; 3 uses
  %i.le = icmp slt i64 %.3280377.i, %i.kh
  br i1 %i.le, label %bb.cn, label %.thread351.i

bb.cn:                                            ; preds = %bb.cm
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.3280377.i
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !16
  %i.lh = and i8 %i.lg, 3
  %i.li = icmp eq i8 %i.lh, 0
  br i1 %i.li, label %bb.co, label %.thread351.i

bb.co:                                            ; preds = %bb.cn
  %i.lj = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  %i.ll = load i8, ptr %i.lk, align 8, !tbaa !79
  %i.lm = or i8 %i.ll, 3
  store i8 %i.lm, ptr %i.lk, align 8, !tbaa !79
  br label %.thread351.i

bb.cp:                                            ; preds = %bb.cl
  %.not305.i = icmp eq i16 %i.kq, 0
  br i1 %.not305.i, label %.thread.i12, label %.thread351.i

.thread.i12:                                      ; preds = %bb.cp, %bb.ck, %bb.cj, %bb.ci, %bb.cg
  %i.ln = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !68 ; 2 uses
  %i.lq = icmp sgt i32 %i.lp, %i.kk
  %or.cond310.i = select i1 %i.kl, i1 %i.lq, i1 false
  br i1 %or.cond310.i, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %.thread.i12
  br label %bb.ct

.thread351.i:                                     ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm
  %.0258354.i = phi i32 [ %i.kr, %bb.cp ], [ %i.ld, %bb.cn ], [ %i.ld, %bb.cm ], [ %i.ld, %bb.co ] ; 5 uses
  %i.lr = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 17
  store i8 1, ptr %i.ls, align 1, !tbaa !85
  %i.lt = icmp eq i8 %i.kn, 0
  %i.lu = icmp eq i32 %.0258354.i, 1              ; 2 uses
  %or.cond3.i = or i1 %i.lt, %i.lu
  br i1 %or.cond3.i, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %.thread351.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 12
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !68
  %i.lx = icmp sgt i32 %i.lw, %.0258354.i
  br i1 %i.lx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %spec.store.select.i = select i1 %i.lu, i32 2, i32 %.0258354.i
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %.thread351.i, %bb.cq, %.thread.i12
  %i.ly = phi i8 [ 1, %bb.cq ], [ %i.km, %.thread351.i ], [ %i.km, %.thread.i12 ], [ 1, %bb.cs ], [ %i.km, %bb.cr ] ; 2 uses
  %i.lz = phi i8 [ 1, %bb.cq ], [ %i.kn, %.thread351.i ], [ %i.kn, %.thread.i12 ], [ 1, %bb.cs ], [ %i.kn, %bb.cr ]
  %.2.i = phi i32 [ %i.kk, %bb.cq ], [ %.0258354.i, %.thread351.i ], [ %i.lp, %.thread.i12 ], [ %spec.store.select.i, %bb.cs ], [ %.0258354.i, %bb.cr ]
  %i.ma = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.3280377.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i32 %.2.i, ptr %i.mb, align 8, !tbaa !86
  %i.mc = add nuw nsw i64 %.3280377.i, 1          ; 2 uses
  %exitcond400.not.i = icmp eq i64 %i.mc, %i.el
  br i1 %exitcond400.not.i, label %._crit_edge380.i, label %bb.cg, !llvm.loop !87

._crit_edge380.i:                                 ; preds = %bb.ct
  store i8 %i.ly, ptr %i.gu, align 4
  %i.md = icmp eq i32 %i.ef, 1
  %i.me = load i64, ptr %i.gn, align 8
  %i.mf = icmp sgt i64 %i.me, 1
  %or.cond6.i = select i1 %i.md, i1 %i.mf, i1 false
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 107
  %i.mh = load i8, ptr %i.mg, align 1
  %i.mi = icmp eq i8 %i.mh, 2
  %or.cond = select i1 %or.cond6.i, i1 %i.mi, i1 false
  %i.mj = load i8, ptr %i.dg, align 1
  %i.mk = icmp eq i8 %i.mj, 2
  %or.cond49 = select i1 %or.cond, i1 %i.mk, i1 false
  %i.ml = load i8, ptr %i.er, align 2
  %i.mm = icmp eq i8 %i.ml, 1
  %or.cond51 = select i1 %or.cond49, i1 %i.mm, i1 false
  br i1 %or.cond51, label %bb.cu, label %._crit_edge380.thread.i

bb.cu:                                            ; preds = %._crit_edge380.i
  %i.mn = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.mo = load i16, ptr %i.mn, align 8, !tbaa !43
  %i.mp = sext i16 %i.mo to i32
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !86
  %i.ms = add nsw i32 %i.mr, 3
  %i.mt = icmp slt i32 %i.ms, %i.mp
  br i1 %i.mt, label %bb.cv, label %._crit_edge380.thread.i

bb.cv:                                            ; preds = %bb.cu
  call fastcc void @qrfSplitColumn(ptr noundef %3, ptr noundef nonnull %4)
  %i.mu = load i32, ptr %i.ek, align 8, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 13
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !88
  br label %qrfRestrictScreenWidth.exit.i

._crit_edge380.thread.i:                          ; preds = %bb.cu, %._crit_edge380.i, %.loopexit363.i, %bb.cd
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  store i8 2, ptr %i.mv, align 1, !tbaa !88
  %i.mw = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.mx = load i16, ptr %i.mw, align 8, !tbaa !43 ; 2 uses
  %i.my = icmp eq i16 %i.mx, 0
  br i1 %i.my, label %qrfRestrictScreenWidth.exit.i, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge380.thread.i
  %i.mz = load i8, ptr %i.dg, align 1, !tbaa !47
  %i.na = icmp eq i8 %i.mz, 2                     ; 2 uses
end_hunk_0
begin_hunk_1_@sqlite3_format_query_result:bb.a
  %i.sm = load ptr, ptr %i.eo, align 8            ; 7 uses
  %i.sn = load ptr, ptr %i.gs, align 8            ; 3 uses
  %.val.i = load i32, ptr %i.ek, align 8          ; 2 uses
  %i.so = sext i32 %.val.i to i64
  %i.sp = icmp sgt i32 %.val.i, 0
  %.not300.i = icmp eq i8 %i.rp, 0                ; 2 uses
  %i.sq = icmp eq i32 %.0263.i, 1
  %unroll_iter206 = and i64 %i.sb, 2147483646
  %i.sr = and i32 %.0263.i, 1
  %lcmp.mod204.not = icmp eq i32 %i.sr, 0
  %lcmp.mod205 = trunc i32 %.0263.i to i1
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit.i9, %.lr.ph395.i
  %.4393.i = phi i64 [ 0, %.lr.ph395.i ], [ %i.wz, %.loopexit.i9 ] ; 5 uses
  %i.ss = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.st = call i32 @sqlite3_str_errcode(ptr noundef %i.ss) #45
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %.preheader362.i, label %.critedge8.i

.preheader362.i:                                  ; preds = %bb.dz
  br i1 %i.sc, label %.lr.ph382.i.preheader, label %.preheader360.i.split

.lr.ph382.i.preheader:                            ; preds = %.preheader362.i
  br i1 %i.sq, label %.lr.ph382.i.epil.preheader, label %.lr.ph382.i

.lr.ph386.i.preheader.us:                         ; preds = %.lr.ph386.i.preheader.us.preheader, %bb.ei
  %.0256.i.us = phi i32 [ %i.uk, %bb.ei ], [ 0, %.lr.ph386.i.preheader.us.preheader ]
  %i.sv = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.sv, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #45
  br label %.lr.ph386.i.us

.lr.ph386.i.us:                                   ; preds = %.lr.ph386.i.preheader.us, %bb.eh
  %.0257384.i.us = phi i32 [ %spec.select.i10.us, %bb.eh ], [ 0, %.lr.ph386.i.preheader.us ]
  %.1274383.i.us = phi i64 [ %i.ui, %bb.eh ], [ 0, %.lr.ph386.i.preheader.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #45
  store i32 0, ptr %i.g, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  store i32 0, ptr %i.h, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #45
  store i32 0, ptr %i.i, align 4, !tbaa !17
  %i.sw = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.1274383.i.us ; 9 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !95
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 8 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !86
  call fastcc void @qrfWrapLine(ptr noundef %i.sx, i32 noundef %i.sz, i32 noundef %i.rs, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i)
  %i.ta = load i32, ptr %i.sy, align 8, !tbaa !86
  %i.tb = load i32, ptr %i.h, align 4, !tbaa !17
  %i.tc = sub nsw i32 %i.ta, %i.tb                ; 4 uses
  %i.td = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 7 uses
  %i.te = load i32, ptr %i.g, align 4, !tbaa !17  ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.tg = load i8, ptr %i.tf, align 8, !tbaa !79
  %i.th = and i8 %i.tg, 3
  switch i8 %i.th, label %.lr.ph386.i.us.unreachabledefault [
    i8 0, label %bb.eb
    i8 2, label %bb.ea
    i8 3, label %.thread24.i.i.us
    i8 1, label %.thread.i.i.us
  ]

bb.ea:                                            ; preds = %.lr.ph386.i.us
  %i.ti = sdiv i32 %i.tc, 2                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.ti, i8 noundef signext 32) #45
  %i.tj = load ptr, ptr %i.sw, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.td, ptr noundef %i.tj, i32 noundef %i.te)
  %i.tk = sub nsw i32 %i.tc, %i.ti
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.tk, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit.i.us

bb.eb:                                            ; preds = %.lr.ph386.i.us
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sw, i64 18
  %i.tm = load i8, ptr %i.tl, align 2, !tbaa !96
  %.not.i324.i.us = icmp eq i8 %i.tm, 0
  br i1 %.not.i324.i.us, label %.thread.i.i.us, label %.thread24.i.i.us

.thread24.i.i.us:                                 ; preds = %bb.eb, %.lr.ph386.i.us
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.tc, i8 noundef signext 32) #45
  %i.tn = load ptr, ptr %i.sw, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.td, ptr noundef %i.tn, i32 noundef %i.te)
  br label %qrfPrintAligned.exit.i.us

.thread.i.i.us:                                   ; preds = %bb.eb, %.lr.ph386.i.us
  %i.to = load ptr, ptr %i.sw, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.td, ptr noundef %i.to, i32 noundef %i.te)
  call void @sqlite3_str_appendchar(ptr noundef %i.td, i32 noundef %i.tc, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit.i.us

qrfPrintAligned.exit.i.us:                        ; preds = %.thread.i.i.us, %.thread24.i.i.us, %bb.ea
  %i.tp = load i32, ptr %i.i, align 4, !tbaa !17
  %i.tq = load ptr, ptr %i.sw, align 8, !tbaa !95
  %i.tr = sext i32 %i.tp to i64
  %i.ts = getelementptr inbounds i8, ptr %i.tq, i64 %i.tr ; 2 uses
  store ptr %i.ts, ptr %i.sw, align 8, !tbaa !95
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !16
  %.not303.i.us = icmp eq i8 %i.tt, 0
  %spec.select.i10.us = select i1 %.not303.i.us, i32 %.0257384.i.us, i32 1 ; 2 uses
  %i.tu = icmp slt i64 %.1274383.i.us, %i.se
  br i1 %i.tu, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %qrfPrintAligned.exit.i.us
  br i1 %.not302.i, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.tv = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 3 uses
  %i.tw = call i32 @sqlite3_str_length(ptr noundef %i.tv) #45 ; 3 uses
  %i.tx = call ptr @sqlite3_str_value(ptr noundef %i.tv) #45
  %i.ty = icmp sgt i32 %i.tw, 0
  br i1 %i.ty, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us

.lr.ph.i325.i.us:                                 ; preds = %bb.ed, %bb.ee
  %.07.i.i.us = phi i32 [ %i.ue, %bb.ee ], [ %i.tw, %bb.ed ] ; 4 uses
  %i.tz = zext nneg i32 %.07.i.i.us to i64
  %i.ua = getelementptr i8, ptr %i.tx, i64 %i.tz
  %i.ub = getelementptr i8, ptr %i.ua, i64 -1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !16
  %i.ud = icmp eq i8 %i.uc, 32
  br i1 %i.ud, label %bb.ee, label %qrfRTrim.exit.i.us

bb.ee:                                            ; preds = %.lr.ph.i325.i.us
  %i.ue = add nsw i32 %.07.i.i.us, -1
  %i.uf = icmp sgt i32 %.07.i.i.us, 1
  br i1 %i.uf, label %.lr.ph.i325.i.us, label %qrfRTrim.exit.i.us, !llvm.loop !97

qrfRTrim.exit.i.us:                               ; preds = %.lr.ph.i325.i.us, %bb.ee, %bb.ed
  %.0.lcssa.i.i.us = phi i32 [ %i.tw, %bb.ed ], [ 0, %bb.ee ], [ %.07.i.i.us, %.lr.ph.i325.i.us ]
  call void @sqlite3_str_truncate(ptr noundef %i.tv, i32 noundef %.0.lcssa.i.i.us) #45
  br label %bb.ef

bb.ef:                                            ; preds = %qrfRTrim.exit.i.us, %bb.ec
  %i.ug = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ug, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #45
  br label %bb.eh

bb.eg:                                            ; preds = %qrfPrintAligned.exit.i.us
  %i.uh = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.uh, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #45
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #45
  %i.ui = add nuw nsw i64 %.1274383.i.us, 1       ; 2 uses
  %exitcond402.not.i.us = icmp eq i64 %i.ui, %i.sb
  br i1 %exitcond402.not.i.us, label %._crit_edge387.i.us, label %.lr.ph386.i.us, !llvm.loop !98

._crit_edge387.i.us:                              ; preds = %bb.eh
  %i.uj = icmp eq i32 %spec.select.i10.us, 0
  br i1 %i.uj, label %.critedge314.i, label %bb.ei

bb.ei:                                            ; preds = %._crit_edge387.i.us
  %i.uk = add nuw nsw i32 %.0256.i.us, 1          ; 2 uses
  %i.ul = load i32, ptr %i.sf, align 8, !tbaa !46
  %i.um = icmp slt i32 %i.uk, %i.ul
  br i1 %i.um, label %.lr.ph386.i.preheader.us, label %.critedge10.i.split.us, !llvm.loop !99

.lr.ph386.i.us.unreachabledefault:                ; preds = %.lr.ph386.i.us
  unreachable

default.unreachable:                              ; preds = %bb.ek
  unreachable

.critedge10.i.split.us:                           ; preds = %bb.ei
  %i.un = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.un, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #45
  br label %.lr.ph390.i

.preheader360.i.split:                            ; preds = %.preheader362.i
  %i.uo = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.uo, ptr noundef nonnull %.2266.i, i32 noundef %i.rh) #45
  br label %.critedge314.i

.lr.ph382.i:                                      ; preds = %.lr.ph382.i.preheader, %.lr.ph382.i
  %.0273381.i = phi i64 [ %i.vg, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ] ; 4 uses
  %niter207 = phi i64 [ %niter207.next.1, %.lr.ph382.i ], [ 0, %.lr.ph382.i.preheader ]
  %i.up = add nsw i64 %.0273381.i, %.4393.i       ; 2 uses
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.up
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !66 ; 2 uses
  %i.us = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.0273381.i ; 2 uses
  %i.ut = icmp eq ptr %i.ur, null
  %spec.store.select359.i = select i1 %i.ut, ptr @.str.48, ptr %i.ur
  store ptr %spec.store.select359.i, ptr %i.us, align 8
  %i.uu = getelementptr inbounds i8, ptr %i.sn, i64 %i.up
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !16
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 18
  store i8 %i.uv, ptr %i.uw, align 2, !tbaa !96
  %i.ux = or disjoint i64 %.0273381.i, 1          ; 2 uses
  %i.uy = add nsw i64 %i.ux, %.4393.i             ; 2 uses
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.uy
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !66 ; 2 uses
  %i.vb = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %i.ux ; 2 uses
  %i.vc = icmp eq ptr %i.va, null
  %spec.store.select359.i.1 = select i1 %i.vc, ptr @.str.48, ptr %i.va
  store ptr %spec.store.select359.i.1, ptr %i.vb, align 8
  %i.vd = getelementptr inbounds i8, ptr %i.sn, i64 %i.uy
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !16
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 18
  store i8 %i.ve, ptr %i.vf, align 2, !tbaa !96
  %i.vg = add nuw nsw i64 %.0273381.i, 2          ; 2 uses
  %niter207.next.1 = add i64 %niter207, 2         ; 2 uses
  %niter207.ncmp.1 = icmp eq i64 %niter207.next.1, %unroll_iter206
  br i1 %niter207.ncmp.1, label %.lr.ph386.i.preheader.us.preheader.unr-lcssa, label %.lr.ph382.i, !llvm.loop !100

.lr.ph386.i.preheader.us.preheader.unr-lcssa:     ; preds = %.lr.ph382.i
  br i1 %lcmp.mod204.not, label %.lr.ph386.i.preheader.us.preheader, label %.lr.ph382.i.epil.preheader

.lr.ph382.i.epil.preheader:                       ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.preheader
  %.0273381.i.epil.init = phi i64 [ 0, %.lr.ph382.i.preheader ], [ %i.vg, %.lr.ph386.i.preheader.us.preheader.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod205)
  %i.vh = add nsw i64 %.0273381.i.epil.init, %.4393.i ; 2 uses
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.vh
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !66 ; 2 uses
  %i.vk = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.0273381.i.epil.init ; 2 uses
  %i.vl = icmp eq ptr %i.vj, null
  %spec.store.select359.i.epil = select i1 %i.vl, ptr @.str.48, ptr %i.vj
  store ptr %spec.store.select359.i.epil, ptr %i.vk, align 8
  %i.vm = getelementptr inbounds i8, ptr %i.sn, i64 %i.vh
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !16
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 18
  store i8 %i.vn, ptr %i.vo, align 2, !tbaa !96
  br label %.lr.ph386.i.preheader.us.preheader

.lr.ph386.i.preheader.us.preheader:               ; preds = %.lr.ph386.i.preheader.us.preheader.unr-lcssa, %.lr.ph382.i.epil.preheader
  br label %.lr.ph386.i.preheader.us

.lr.ph390.i:                                      ; preds = %bb.es, %.critedge10.i.split.us
  %.2275389.i = phi i64 [ %i.wx, %bb.es ], [ 0, %.critedge10.i.split.us ] ; 3 uses
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.2275389.i ; 8 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !95
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !16
  %i.vs = icmp eq i8 %i.vr, 0
  br i1 %i.vs, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.lr.ph390.i
  %i.vt = load ptr, ptr %i.sa, align 8, !tbaa !38
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !86
  call void @sqlite3_str_appendchar(ptr noundef %i.vt, i32 noundef %i.vv, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

bb.ek:                                            ; preds = %.lr.ph390.i
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !86 ; 2 uses
  %spec.select315.i = call i32 @llvm.smin.i32(i32 %i.vx, i32 3) ; 4 uses
  store ptr @.str.178, ptr %i.vp, align 8, !tbaa !95
  %i.vy = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 7 uses
  %i.vz = sub nsw i32 %i.vx, %spec.select315.i    ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.wb = load i8, ptr %i.wa, align 8, !tbaa !79
  %i.wc = and i8 %i.wb, 3
  switch i8 %i.wc, label %default.unreachable [
    i8 0, label %bb.el
    i8 2, label %bb.em
    i8 3, label %.thread24.i327.i
    i8 1, label %.thread.i326.i
  ]

bb.el:                                            ; preds = %bb.ek
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vp, i64 18
  %i.we = load i8, ptr %i.wd, align 2, !tbaa !96
  %.not.i328.i = icmp eq i8 %i.we, 0
  br i1 %.not.i328.i, label %.thread.i326.i, label %.thread24.i327.i

bb.em:                                            ; preds = %bb.ek
  %i.wf = lshr i32 %i.vz, 1                       ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %i.vy, i32 noundef %i.wf, i8 noundef signext 32) #45
  %i.wg = load ptr, ptr %i.vp, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vy, ptr noundef %i.wg, i32 noundef %spec.select315.i)
  %i.wh = sub nsw i32 %i.vz, %i.wf
  call void @sqlite3_str_appendchar(ptr noundef %i.vy, i32 noundef %i.wh, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

.thread24.i327.i:                                 ; preds = %bb.el, %bb.ek
  call void @sqlite3_str_appendchar(ptr noundef %i.vy, i32 noundef %i.vz, i8 noundef signext 32) #45
  %i.wi = load ptr, ptr %i.vp, align 8, !tbaa !95
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vy, ptr noundef %i.wi, i32 noundef %spec.select315.i)
  br label %qrfPrintAligned.exit330.i

.thread.i326.i:                                   ; preds = %bb.el, %bb.ek
  call fastcc void @qrfAppendWithTabs(ptr noundef %i.vy, ptr noundef nonnull @.str.178, i32 noundef %spec.select315.i)
  call void @sqlite3_str_appendchar(ptr noundef %i.vy, i32 noundef %i.vz, i8 noundef signext 32) #45
  br label %qrfPrintAligned.exit330.i

qrfPrintAligned.exit330.i:                        ; preds = %.thread.i326.i, %.thread24.i327.i, %bb.em, %bb.ej
  %i.wj = icmp slt i64 %.2275389.i, %i.se
  br i1 %i.wj, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %qrfPrintAligned.exit330.i
  %i.wk = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.wk, ptr noundef nonnull %.3.i, i32 noundef %i.rl) #45
  br label %bb.es

bb.eo:                                            ; preds = %qrfPrintAligned.exit330.i
  br i1 %.not302.i, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wl = load ptr, ptr %i.sa, align 8, !tbaa !38 ; 3 uses
  %i.wm = call i32 @sqlite3_str_length(ptr noundef %i.wl) #45 ; 3 uses
  %i.wn = call ptr @sqlite3_str_value(ptr noundef %i.wl) #45
  %i.wo = icmp sgt i32 %i.wm, 0
  br i1 %i.wo, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i

.lr.ph.i332.i:                                    ; preds = %bb.ep, %bb.eq
  %.07.i333.i = phi i32 [ %i.wu, %bb.eq ], [ %i.wm, %bb.ep ] ; 4 uses
  %i.wp = zext nneg i32 %.07.i333.i to i64
  %i.wq = getelementptr i8, ptr %i.wn, i64 %i.wp
  %i.wr = getelementptr i8, ptr %i.wq, i64 -1
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !16
  %i.wt = icmp eq i8 %i.ws, 32
  br i1 %i.wt, label %bb.eq, label %qrfRTrim.exit334.i

bb.eq:                                            ; preds = %.lr.ph.i332.i
  %i.wu = add nsw i32 %.07.i333.i, -1
  %i.wv = icmp sgt i32 %.07.i333.i, 1
  br i1 %i.wv, label %.lr.ph.i332.i, label %qrfRTrim.exit334.i, !llvm.loop !97

qrfRTrim.exit334.i:                               ; preds = %bb.eq, %.lr.ph.i332.i, %bb.ep
  %.0.lcssa.i331.i = phi i32 [ %i.wm, %bb.ep ], [ 0, %bb.eq ], [ %.07.i333.i, %.lr.ph.i332.i ]
  call void @sqlite3_str_truncate(ptr noundef %i.wl, i32 noundef %.0.lcssa.i331.i) #45
  br label %bb.er

bb.er:                                            ; preds = %qrfRTrim.exit334.i, %bb.eo
  %i.ww = load ptr, ptr %i.sa, align 8, !tbaa !38
  call void @sqlite3_str_append(ptr noundef %i.ww, ptr noundef nonnull %.2269.i, i32 noundef %i.rj) #45
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.en
  %i.wx = add nuw nsw i64 %.2275389.i, 1          ; 2 uses
  %exitcond403.not.i = icmp eq i64 %i.wx, %i.sb
  br i1 %exitcond403.not.i, label %.critedge314.i, label %.lr.ph390.i, !llvm.loop !101

.critedge314.i:                                   ; preds = %._crit_edge387.i.us, %bb.es, %.preheader360.i.split
  %i.wy = icmp eq i64 %.4393.i, 0                 ; 2 uses
  %or.cond14.i = select i1 %i.wy, i1 true, i1 %i.rq
  %i.wz = add nsw i64 %.4393.i, %i.sb             ; 2 uses
  %i.xa = icmp slt i64 %i.wz, %i.ry               ; 2 uses
  %or.cond453.i = select i1 %or.cond14.i, i1 %i.xa, i1 false
  br i1 %or.cond453.i, label %bb.et, label %.loopexit.i9

bb.et:                                            ; preds = %.critedge314.i
  %i.xb = load i8, ptr %i.er, align 2
  %i.xc = icmp eq i8 %i.xb, 2
  %or.cond53 = select i1 %i.wy, i1 %i.xc, i1 false ; 5 uses
  %brmerge.not = select i1 %or.cond53, i1 %i.sp, i1 false
  br i1 %brmerge.not, label %.lr.ph.i336.i, label %qrfLoadAlignment.exit.i

.lr.ph.i336.i:                                    ; preds = %bb.et
  %i.xd = load i8, ptr %i.sg, align 1, !tbaa !102 ; 2 uses
  %i.xe = load i32, ptr %i.sh, align 4, !tbaa !103
  %i.xf = sext i32 %i.xe to i64
  %i.xg = and i8 %i.xd, 12                        ; 2 uses
  %i.xh = or disjoint i8 %i.xg, 3
  %i.xi = load i32, ptr %i.si, align 8
  %i.xj = sext i32 %i.xi to i64
  %i.xk = load ptr, ptr %i.sj, align 8
  %i.xl = load ptr, ptr %i.sk, align 8
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ez, %.lr.ph.i336.i
  %.01.i.i = phi i64 [ 0, %.lr.ph.i336.i ], [ %i.xx, %bb.ez ] ; 6 uses
  %i.xm = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.01.i.i
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16 ; 2 uses
  store i8 %i.xd, ptr %i.xn, align 8, !tbaa !79
  %i.xo = icmp slt i64 %.01.i.i, %i.xf
  br i1 %i.xo, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 %.01.i.i
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !16
  %i.xr = and i8 %i.xq, 3                         ; 2 uses
  %.not.i338.i = icmp eq i8 %i.xr, 0
  br i1 %.not.i338.i, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.xs = or disjoint i8 %i.xr, %i.xg
  br label %.sink.split.i.i

bb.ex:                                            ; preds = %bb.eu
  %i.xt = icmp slt i64 %.01.i.i, %i.xj
  br i1 %i.xt, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.xk, i64 %.01.i.i
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !84
  %i.xw = icmp slt i16 %i.xv, 0
  br i1 %i.xw, label %.sink.split.i.i, label %bb.ez

.sink.split.i.i:                                  ; preds = %bb.ey, %bb.ew
  %.sink.i.i = phi i8 [ %i.xs, %bb.ew ], [ %i.xh, %bb.ey ]
  store i8 %.sink.i.i, ptr %i.xn, align 8, !tbaa !79
  br label %bb.ez

bb.ez:                                            ; preds = %.sink.split.i.i, %bb.ey, %bb.ex, %bb.ev
  %i.xx = add nuw nsw i64 %.01.i.i, 1             ; 2 uses
  %exitcond.not.i337.i = icmp eq i64 %i.xx, %i.so
  br i1 %exitcond.not.i337.i, label %qrfLoadAlignment.exit.i, label %bb.eu, !llvm.loop !104

qrfLoadAlignment.exit.i:                          ; preds = %bb.ez, %bb.et
  %i.xy = load i8, ptr %i.dg, align 1, !tbaa !47
  switch i8 %i.xy, label %.loopexit.i9 [
end_hunk_1
begin_hunk_2_@base85:bb.a

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !154
  %i.p = tail call ptr @sqlite3_value_blob(ptr noundef %i.o) #45 ; 3 uses
  %.not50 = icmp eq ptr %i.p, null
  br i1 %.not50, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45
  %i.r = tail call i32 @sqlite3_errcode(ptr noundef %i.q) #45
  %i.s = icmp eq i32 %i.r, 7
  br i1 %i.s, label %bb.ar, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef -1, ptr noundef null) #45
  br label %bb.as

bb.g:                                             ; preds = %bb.d
  %i.t = tail call ptr @sqlite3_malloc64(i64 noundef %i.l) #45 ; 5 uses
  %.not51 = icmp eq ptr %i.t, null
  br i1 %.not51, label %bb.ar, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp sgt i32 %i.b, 3
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %putcs.exit.i
  %.0517.i = phi i32 [ %.152.i, %putcs.exit.i ], [ 0, %bb.h ] ; 2 uses
  %.0536.i = phi ptr [ %i.bv, %putcs.exit.i ], [ %i.p, %bb.h ] ; 2 uses
  %.0555.i = phi ptr [ %.156.i, %putcs.exit.i ], [ %i.t, %bb.h ] ; 7 uses
  %.0584.i = phi i32 [ %i.bu, %putcs.exit.i ], [ %i.b, %bb.h ] ; 2 uses
  %i.v = load i32, ptr %.0536.i, align 1
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)  ; 6 uses
  %i.x = udiv i32 %i.w, 85                        ; 2 uses
  %.neg.i = mul i32 %i.x, 171
  %i.y = add i32 %.neg.i, %i.w                    ; 3 uses
  %i.z = and i32 %i.y, 252
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = add nuw nsw i32 %i.y, 35
  %i.ac = and i32 %i.ab, 39
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.ad = shl i32 %i.y, 24
  %sext.i = add i32 %i.ad, 637534208
  %i.ae = ashr exact i32 %sext.i, 24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = phi i32 [ %i.ac, %bb.i ], [ %i.ae, %bb.j ]
  %i.ag = trunc nsw i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0555.i, i64 4
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !16
  %i.ai = udiv i32 %i.w, 7225                     ; 2 uses
  %.neg.1.i = mul nuw nsw i32 %i.ai, 171
  %i.aj = add nuw nsw i32 %.neg.1.i, %i.x         ; 3 uses
  %i.ak = and i32 %i.aj, 252
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = shl i32 %i.aj, 24
  %sext.1.i = add i32 %i.am, 637534208
  %i.an = ashr exact i32 %sext.1.i, 24
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ao = add nuw nsw i32 %i.aj, 35
  %i.ap = and i32 %i.ao, 39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = phi i32 [ %i.ap, %bb.m ], [ %i.an, %bb.l ]
  %i.ar = trunc nsw i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %.0555.i, i64 3
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !16
  %i.at = udiv i32 %i.w, 614125                   ; 2 uses
  %.neg.2.i = mul nuw nsw i32 %i.at, 171
  %i.au = add nuw nsw i32 %.neg.2.i, %i.ai        ; 3 uses
  %i.av = and i32 %i.au, 252
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = shl i32 %i.au, 24
  %sext.2.i = add i32 %i.ax, 637534208
  %i.ay = ashr exact i32 %sext.2.i, 24
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.az = add nuw nsw i32 %i.au, 35
  %i.ba = and i32 %i.az, 39
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bb = phi i32 [ %i.ba, %bb.p ], [ %i.ay, %bb.o ]
  %i.bc = trunc nsw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0555.i, i64 2
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !16
  %i.be = udiv i32 %i.w, 52200625                 ; 3 uses
  %.neg.3.i = mul nuw nsw i32 %i.be, 171
  %i.bf = add nuw nsw i32 %.neg.3.i, %i.at        ; 3 uses
  %i.bg = and i32 %i.bf, 252
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = shl i32 %i.bf, 24
  %sext.3.i = add i32 %i.bi, 637534208
  %i.bj = ashr exact i32 %sext.3.i, 24
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bk = add nuw nsw i32 %i.bf, 35
  %i.bl = and i32 %i.bk, 39
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bm = phi i32 [ %i.bl, %bb.s ], [ %i.bj, %bb.r ]
  %i.bn = trunc nsw i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0555.i, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !16
  %i.bp = icmp ult i32 %i.w, 208802500
  %i.bq = add nuw nsw i32 %i.be, 35
  %i.br = and i32 %i.bq, 39
  %sext.4.i = add nuw nsw i32 %i.be, 38
  %i.bs = select i1 %i.bp, i32 %i.br, i32 %sext.4.i
  %i.bt = trunc nuw nsw i32 %i.bs to i8
  store i8 %i.bt, ptr %.0555.i, align 1, !tbaa !16
  %i.bu = add nsw i32 %.0584.i, -4                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0536.i, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0555.i, i64 5 ; 2 uses
  %i.bx = add nsw i32 %.0517.i, 5
  %i.by = icmp sgt i32 %.0517.i, 74
  br i1 %i.by, label %.lr.ph.i.preheader.i, label %putcs.exit.i

.lr.ph.i.preheader.i:                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.0555.i, i64 6
  store i8 10, ptr %i.bw, align 1, !tbaa !16
  br label %putcs.exit.i

putcs.exit.i:                                     ; preds = %.lr.ph.i.preheader.i, %bb.t
  %.156.i = phi ptr [ %i.bw, %bb.t ], [ %i.bz, %.lr.ph.i.preheader.i ] ; 2 uses
  %.152.i = phi i32 [ %i.bx, %bb.t ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ca = icmp samesign ugt i32 %.0584.i, 7
  br i1 %i.ca, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !194

._crit_edge.i:                                    ; preds = %putcs.exit.i, %bb.h
  %.058.lcssa.i = phi i32 [ %i.b, %bb.h ], [ %i.bu, %putcs.exit.i ] ; 5 uses
  %.055.lcssa.i = phi ptr [ %i.t, %bb.h ], [ %.156.i, %putcs.exit.i ] ; 3 uses
  %.053.lcssa.i = phi ptr [ %i.p, %bb.h ], [ %i.bv, %putcs.exit.i ] ; 3 uses
  %.051.lcssa.i = phi i32 [ 0, %bb.h ], [ %.152.i, %putcs.exit.i ] ; 2 uses
  %i.cb = icmp sgt i32 %.058.lcssa.i, 0
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  %i.cc = add nuw nsw i32 %.058.lcssa.i, 1        ; 2 uses
  %i.cd = load i8, ptr %.053.lcssa.i, align 1, !tbaa !16
  %i.ce = zext i8 %i.cd to i64                    ; 3 uses
  %.not.i = icmp eq i32 %.058.lcssa.i, 1
  br i1 %.not.i, label %.lr.ph21.preheader.i, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %bb.u
  %i.cf = add nsw i32 %.058.lcssa.i, -1           ; 2 uses
  %i.cg = add nsw i32 %.058.lcssa.i, -2
  %xtraiter = and i32 %i.cf, 3                    ; 3 uses
  %i.ch = icmp ult i32 %i.cg, 3
  br i1 %i.ch, label %.lr.ph15.i.epil.preheader, label %.lr.ph15.i.preheader.new

.lr.ph15.i.preheader.new:                         ; preds = %.lr.ph15.i.preheader
  %unroll_iter = and i32 %i.cf, -4
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %.lr.ph15.i, %.lr.ph15.i.preheader.new
  %.04712.i = phi i64 [ %i.ce, %.lr.ph15.i.preheader.new ], [ %i.cx, %.lr.ph15.i ]
  %.053.pn11.i = phi ptr [ %.053.lcssa.i, %.lr.ph15.i.preheader.new ], [ %.154.i.3, %.lr.ph15.i ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph15.i.preheader.new ], [ %niter.next.3, %.lr.ph15.i ]
  %.154.i = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 1
  %i.ci = load i8, ptr %.154.i, align 1, !tbaa !16
  %i.cj = zext i8 %i.ci to i64
  %.154.i.1 = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 2
  %i.ck = shl i64 %.04712.i, 16
  %i.cl = shl nuw nsw i64 %i.cj, 8
  %i.cm = or disjoint i64 %i.ck, %i.cl
  %i.cn = load i8, ptr %.154.i.1, align 1, !tbaa !16
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.cm, %i.co
  %.154.i.2 = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 3
  %i.cq = load i8, ptr %.154.i.2, align 1, !tbaa !16
  %i.cr = zext i8 %i.cq to i64
  %.154.i.3 = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 4 ; 3 uses
  %i.cs = shl i64 %i.cp, 16
  %i.ct = shl nuw nsw i64 %i.cr, 8
  %i.cu = or disjoint i64 %i.cs, %i.ct
  %i.cv = load i8, ptr %.154.i.3, align 1, !tbaa !16
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or disjoint i64 %i.cu, %i.cw            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph21.preheader.i.loopexit.unr-lcssa, label %.lr.ph15.i, !llvm.loop !195

.lr.ph21.preheader.i.loopexit.unr-lcssa:          ; preds = %.lr.ph15.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph21.preheader.i, label %.lr.ph15.i.epil.preheader

.lr.ph15.i.epil.preheader:                        ; preds = %.lr.ph21.preheader.i.loopexit.unr-lcssa, %.lr.ph15.i.preheader
  %.04712.i.epil.init = phi i64 [ %i.ce, %.lr.ph15.i.preheader ], [ %i.cx, %.lr.ph21.preheader.i.loopexit.unr-lcssa ]
  %.053.pn11.i.epil.init = phi ptr [ %.053.lcssa.i, %.lr.ph15.i.preheader ], [ %.154.i.3, %.lr.ph21.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph15.i.epil

.lr.ph15.i.epil:                                  ; preds = %.lr.ph15.i.epil, %.lr.ph15.i.epil.preheader
  %.04712.i.epil = phi i64 [ %i.db, %.lr.ph15.i.epil ], [ %.04712.i.epil.init, %.lr.ph15.i.epil.preheader ]
  %.053.pn11.i.epil = phi ptr [ %.154.i.epil, %.lr.ph15.i.epil ], [ %.053.pn11.i.epil.init, %.lr.ph15.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.i.epil ], [ 0, %.lr.ph15.i.epil.preheader ]
  %.154.i.epil = getelementptr inbounds nuw i8, ptr %.053.pn11.i.epil, i64 1 ; 2 uses
  %i.cy = shl i64 %.04712.i.epil, 8
  %i.cz = load i8, ptr %.154.i.epil, align 1, !tbaa !16
  %i.da = zext i8 %i.cz to i64
  %i.db = or disjoint i64 %i.cy, %i.da            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph21.preheader.i, label %.lr.ph15.i.epil, !llvm.loop !196

.lr.ph21.preheader.i:                             ; preds = %.lr.ph21.preheader.i.loopexit.unr-lcssa, %.lr.ph15.i.epil, %bb.u
  %.047.lcssa.i = phi i64 [ %i.ce, %bb.u ], [ %i.cx, %.lr.ph21.preheader.i.loopexit.unr-lcssa ], [ %i.db, %.lr.ph15.i.epil ]
  %i.dc = zext nneg i32 %i.cc to i64              ; 2 uses
  br label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %.lr.ph21.i, %.lr.ph21.preheader.i
  %indvars.iv.i = phi i64 [ %i.dc, %.lr.ph21.preheader.i ], [ %indvars.iv.next.i, %.lr.ph21.i ] ; 2 uses
  %.119.i = phi i64 [ %.047.lcssa.i, %.lr.ph21.preheader.i ], [ %i.de, %.lr.ph21.i ] ; 2 uses
  %i.dd = urem i64 %.119.i, 85                    ; 2 uses
  %i.de = udiv i64 %.119.i, 85
  %i.df = icmp samesign ult i64 %i.dd, 4
  %i.dg = trunc nuw nsw i64 %i.dd to i8
  %.v.i = select i1 %i.df, i8 35, i8 38
  %i.dh = add nuw nsw i8 %.v.i, %i.dg
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.di = and i64 %indvars.iv.next.i, 4294967295
  %i.dj = getelementptr inbounds nuw i8, ptr %.055.lcssa.i, i64 %i.di
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !16
  %i.dk = trunc nuw i64 %indvars.iv.i to i32
  %i.dl = icmp sgt i32 %i.dk, 1
  br i1 %i.dl, label %.lr.ph21.i, label %._crit_edge22.i, !llvm.loop !197

._crit_edge22.i:                                  ; preds = %.lr.ph21.i
  %i.dm = add nsw i32 %.051.lcssa.i, %i.cc
  %i.dn = getelementptr inbounds nuw i8, ptr %.055.lcssa.i, i64 %i.dc
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge22.i, %._crit_edge.i
  %.257.i = phi ptr [ %i.dn, %._crit_edge22.i ], [ %.055.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.2.i = phi i32 [ %i.dm, %._crit_edge22.i ], [ %.051.lcssa.i, %._crit_edge.i ]
  %i.do = icmp sgt i32 %.2.i, 0
  br i1 %i.do, label %.lr.ph.i66.preheader.i, label %toBase85.exit

.lr.ph.i66.preheader.i:                           ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %.257.i, i64 1
  store i8 10, ptr %.257.i, align 1, !tbaa !16
  br label %toBase85.exit

toBase85.exit:                                    ; preds = %bb.v, %.lr.ph.i66.preheader.i
  %.3.i = phi ptr [ %.257.i, %bb.v ], [ %i.dp, %.lr.ph.i66.preheader.i ] ; 2 uses
  store i8 0, ptr %.3.i, align 1, !tbaa !16
  %i.dq = ptrtoint ptr %.3.i to i64
  %i.dr = ptrtoint ptr %i.t to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = trunc i64 %i.ds to i32
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.t, i32 noundef %i.dt, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.as

bb.w:                                             ; preds = %bb.a
  %i.du = sdiv i32 %i.b, 5
  %.sext61 = sext i32 %i.du to i64
  %i.dv = shl nsw i64 %.sext61, 2
  %i.dw = srem i32 %i.b, 5
  %.sext63 = sext i32 %i.dw to i64
  %i.dx = add nsw i64 %i.dv, %.sext63             ; 2 uses
  %i.dy = sext i32 %i.d to i64
  %i.dz = icmp sgt i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.312, i32 noundef -1) #45
  br label %bb.as

bb.y:                                             ; preds = %bb.w
  %i.ea = load ptr, ptr %2, align 8, !tbaa !154
  %i.eb = tail call ptr @sqlite3_value_text(ptr noundef %i.ea) #45 ; 3 uses
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ec = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45
  %i.ed = tail call i32 @sqlite3_errcode(ptr noundef %i.ec) #45
  %i.ee = icmp eq i32 %i.ed, 7
  br i1 %i.ee, label %bb.ar, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @sqlite3_result_zeroblob(ptr noundef %0, i32 noundef 0) #45
  br label %bb.as

bb.ab:                                            ; preds = %bb.y
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.dx, i64 1)
  %i.ef = tail call ptr @sqlite3_malloc64(i64 noundef %spec.store.select) #45 ; 6 uses
  %.not49 = icmp eq ptr %i.ef, null
  br i1 %.not49, label %bb.ar, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = icmp sgt i32 %i.b, 0
  br i1 %i.eg, label %bb.ad, label %fromBase85.exit

bb.ad:                                            ; preds = %bb.ac
  %i.eh = zext nneg i32 %i.b to i64
  %i.ei = getelementptr i8, ptr %i.eb, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !16
  %i.el = icmp eq i8 %i.ek, 10
  %i.em = sext i1 %i.el to i32
  %spec.select.i = add nsw i32 %i.b, %i.em        ; 2 uses
  %.not.i52 = icmp eq i32 %spec.select.i, 0
  br i1 %.not.i52, label %fromBase85.exit, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.ad, %bb.ap
  %.04583.i = phi ptr [ %.5.i, %bb.ap ], [ %i.ef, %bb.ad ] ; 7 uses
  %.14982.i = phi i32 [ %.351.i, %bb.ap ], [ %spec.select.i, %bb.ad ] ; 3 uses
  %.05381.i = phi ptr [ %.255.i, %bb.ap ], [ %i.eb, %bb.ad ] ; 3 uses
  %i.en = zext nneg i32 %.14982.i to i64
  %scevgep.i.i = getelementptr i8, ptr %.05381.i, i64 %i.en
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph84.i
  %.in.i.i = phi i32 [ %.14982.i, %.lr.ph84.i ], [ %i.eo, %bb.ag ] ; 2 uses
  %.079.i.i = phi ptr [ %.05381.i, %.lr.ph84.i ], [ %i.ev, %bb.ag ] ; 4 uses
  %i.eo = add nsw i32 %.in.i.i, -1
  %i.ep = load i8, ptr %.079.i.i, align 1, !tbaa !16 ; 4 uses
  %.not.i.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i, label %skipNonB85.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eq = add i8 %i.ep, -35
  %i.er = icmp ult i8 %i.eq, 4
  %i.es = icmp sgt i8 %i.ep, 41
  %.tr.i.i = xor i1 %i.es, %i.er
  %i.et = icmp slt i8 %i.ep, 123
  %i.eu = xor i1 %i.et, %.tr.i.i
  br i1 %i.eu, label %bb.ag, label %skipNonB85.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 1
  %i.ew = icmp samesign ugt i32 %.in.i.i, 1
  br i1 %i.ew, label %bb.ae, label %skipNonB85.exit.i, !llvm.loop !198

skipNonB85.exit.i:                                ; preds = %bb.ag, %bb.af, %bb.ae
  %.07.lcssa.i.i = phi ptr [ %.079.i.i, %bb.ae ], [ %scevgep.i.i, %bb.ag ], [ %.079.i.i, %bb.af ] ; 8 uses
  %i.ex = ptrtoint ptr %.07.lcssa.i.i to i64
  %i.ey = ptrtoint ptr %.05381.i to i64
  %.neg.i53 = sub i64 %i.ey, %i.ex
  %i.ez = trunc i64 %.neg.i53 to i32
  %i.fa = add i32 %.14982.i, %i.ez                ; 12 uses
  %i.fb = tail call i32 @llvm.smin.i32(i32 %i.fa, i32 5) ; 7 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr @fromBase85.nboi, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !16
  %i.ff = sext i8 %i.fe to i32
  %i.fg = icmp ult i32 %i.fa, 2
  br i1 %i.fg, label %fromBase85.exit, label %.preheader.i

.preheader.i:                                     ; preds = %skipNonB85.exit.i
  %i.fh = icmp sgt i32 %i.fa, 0
  br i1 %i.fh, label %.lr.ph.i55, label %.thread.i

.lr.ph.i55:                                       ; preds = %.preheader.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 1 ; 2 uses
  %i.fj = load i8, ptr %.07.lcssa.i.i, align 1, !tbaa !16 ; 5 uses
  %i.fk = icmp sgt i8 %i.fj, 34
  %i.fl = zext i1 %i.fk to i64
  %i.fm = icmp sgt i8 %i.fj, 38
  %i.fn = zext i1 %i.fm to i64
  %i.fo = icmp sgt i8 %i.fj, 41
  %i.fp = zext i1 %i.fo to i64
  %i.fq = icmp sgt i8 %i.fj, 122
  %i.fr = zext i1 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @b85_cOffset, i64 %i.fl
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fn
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fp
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fr
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !16  ; 2 uses
  %i.fx = add nsw i32 %i.fa, -1
  %i.fy = icmp eq i8 %i.fw, 0
  br i1 %i.fy, label %.thread.i, label %.lr.ph.i55.1

.lr.ph.i55.1:                                     ; preds = %.lr.ph.i55
  %i.fz = zext i8 %i.fw to i64
  %i.ga = sext i8 %i.fj to i64
  %i.gb = sub nsw i64 %i.ga, %i.fz                ; 2 uses
end_hunk_2
begin_hunk_3_@sqlite3_expert_analyze:bb.a
  %index.next296 = add nuw i64 %index295, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next296, %n.vec293
  br i1 %i.ir, label %middle.block297, label %vector.body294, !llvm.loop !330

middle.block297:                                  ; preds = %vector.body294
  %cmp.n298 = icmp eq i64 %n.vec293, %i.ij
  br i1 %cmp.n298, label %.preheader.i.i, label %.preheader115.i.i.preheader314

.preheader115.i.i.preheader314:                   ; preds = %.preheader115.i.i.preheader, %middle.block297
  %indvars.iv.i.i33.ph = phi i64 [ 0, %.preheader115.i.i.preheader ], [ %n.vec293, %middle.block297 ]
  br label %.preheader115.i.i

.preheader.i.i:                                   ; preds = %.preheader115.i.i, %middle.block297
  %i.is = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.it = call i32 @sqlite3_step(ptr noundef %i.is) #45
  %i.iu = icmp eq i32 %i.it, 100
  br i1 %i.iu, label %.lr.ph136.i.i, label %.critedge2.i.i

.lr.ph136.i.i:                                    ; preds = %.preheader.i.i
  %.not.i70.i = icmp eq i32 %.086119.i.i, 0
  %wide.trip.count159.i.i = zext i32 %.086119.i.i to i64 ; 2 uses
  br label %bb.ba

.preheader115.i.i:                                ; preds = %.preheader115.i.i.preheader314, %.preheader115.i.i
  %indvars.iv.i.i33 = phi i64 [ %indvars.iv.next.i.i34, %.preheader115.i.i ], [ %indvars.iv.i.i33.ph, %.preheader115.i.i.preheader314 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.i.i33
  store i64 1, ptr %i.iv, align 8, !tbaa !159
  %indvars.iv.next.i.i34 = add nuw nsw i64 %indvars.iv.i.i33, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i34, %i.ij
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.preheader115.i.i, !llvm.loop !331

.loopexit114.i.i:                                 ; preds = %bb.bb, %.lr.ph135.i.i, %middle.block, %._crit_edge.i.i38
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.ix = call i32 @sqlite3_step(ptr noundef %i.iw) #45
  %i.iy = icmp eq i32 %i.ix, 100
  br i1 %i.iy, label %bb.ba, label %.critedge2.i.i, !llvm.loop !332

bb.ba:                                            ; preds = %.loopexit114.i.i, %.lr.ph136.i.i
  %i.iz = load i64, ptr %i.il, align 8, !tbaa !159
  %i.ja = add nsw i64 %i.iz, 1
  store i64 %i.ja, ptr %i.il, align 8, !tbaa !159
  br i1 %.not.i70.i, label %._crit_edge.i.i38, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %bb.ba, %bb.bb
  %.185130.i.i = phi i32 [ %i.je, %bb.bb ], [ 0, %bb.ba ] ; 3 uses
  %i.jb = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.jc = call i32 @sqlite3_column_int(ptr noundef %i.jb, i32 noundef %.185130.i.i) #45
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %._crit_edge.i.i38, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i37
  %i.je = add nuw i32 %.185130.i.i, 1             ; 2 uses
  %exitcond155.not.i.i = icmp eq i32 %i.je, %.086119.i.i
  br i1 %exitcond155.not.i.i, label %.loopexit114.i.i, label %.lr.ph.i.i37, !llvm.loop !333

._crit_edge.i.i38:                                ; preds = %.lr.ph.i.i37, %bb.ba
  %.185.lcssa.i.i = phi i32 [ 0, %bb.ba ], [ %.185130.i.i, %.lr.ph.i.i37 ] ; 2 uses
  %i.jf = icmp samesign ult i32 %.185.lcssa.i.i, %.086119.i.i
  br i1 %i.jf, label %.lr.ph135.preheader.i.i, label %.loopexit114.i.i

.lr.ph135.preheader.i.i:                          ; preds = %._crit_edge.i.i38
  %i.jg = zext i32 %.185.lcssa.i.i to i64         ; 4 uses
  %i.jh = sub nsw i64 %wide.trip.count159.i.i, %i.jg ; 3 uses
  %min.iters.check = icmp ult i64 %i.jh, 4
  br i1 %min.iters.check, label %.lr.ph135.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph135.preheader.i.i
  %n.vec = and i64 %i.jh, -4                      ; 3 uses
  %i.ji = add nsw i64 %n.vec, %i.jg
  %invariant.gep = getelementptr [8 x i8], ptr %i.il, i64 %i.jg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %gep, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %gep, i64 24 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.jj, align 8, !tbaa !159
  %wide.load289 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !159
  %i.jl = add nsw <2 x i64> %wide.load, splat (i64 1)
  %i.jm = add nsw <2 x i64> %wide.load289, splat (i64 1)
  store <2 x i64> %i.jl, ptr %i.jj, align 8, !tbaa !159
  store <2 x i64> %i.jm, ptr %i.jk, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !334

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jh, %n.vec
  br i1 %cmp.n, label %.loopexit114.i.i, label %.lr.ph135.i.i.preheader

.lr.ph135.i.i.preheader:                          ; preds = %.lr.ph135.preheader.i.i, %middle.block
  %indvars.iv156.i.i.ph = phi i64 [ %i.jg, %.lr.ph135.preheader.i.i ], [ %i.ji, %middle.block ]
  br label %.lr.ph135.i.i

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %.lr.ph135.i.i
  %indvars.iv156.i.i = phi i64 [ %indvars.iv.next157.i.i, %.lr.ph135.i.i ], [ %indvars.iv156.i.i.ph, %.lr.ph135.i.i.preheader ]
  %indvars.iv.next157.i.i = add nuw nsw i64 %indvars.iv156.i.i, 1 ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next157.i.i ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !159
  %i.jq = add nsw i64 %i.jp, 1
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !159
  %exitcond160.not.i.i = icmp eq i64 %indvars.iv.next157.i.i, %wide.trip.count159.i.i
  br i1 %exitcond160.not.i.i, label %.loopexit114.i.i, label %.lr.ph135.i.i, !llvm.loop !335

.critedge2.i.i:                                   ; preds = %.loopexit114.i.i, %.preheader.i.i
  %i.jr = load i64, ptr %i.il, align 8, !tbaa !159 ; 2 uses
  %i.js = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.208, i64 noundef %i.jr) #45 ; 3 uses
  %.not192.i.i = icmp eq ptr %i.js, null
  br i1 %.not192.i.i, label %.sink.split.i.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge2.i.i
  %.not193.i.i = icmp eq i32 %.086119.i.i, 0
  br i1 %.not193.i.i, label %._crit_edge141.thread.i.i, label %.lr.ph140.preheader.i.i

.lr.ph140.preheader.i.i:                          ; preds = %bb.bc
  %i.jt = zext i32 %.086119.i.i to i64
  br label %.lr.ph140.i.i

.lr.ph140.i.i:                                    ; preds = %.lr.ph140.i.i, %.lr.ph140.preheader.i.i
  %indvars.iv161.i.i = phi i64 [ 1, %.lr.ph140.preheader.i.i ], [ %indvars.iv.next162.i.i, %.lr.ph140.i.i ] ; 3 uses
  %.0138.i.i = phi ptr [ %i.js, %.lr.ph140.preheader.i.i ], [ %i.jz, %.lr.ph140.i.i ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv161.i.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !159 ; 2 uses
  %i.jw = sdiv i64 %i.jv, 2
  %i.jx = add nsw i64 %i.jw, %i.jr
  %i.jy = sdiv i64 %i.jx, %i.jv
  %i.jz = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.d, ptr noundef %.0138.i.i, ptr noundef nonnull @.str.436, i64 noundef %i.jy) ; 3 uses
  %indvars.iv.next162.i.i = add nuw nsw i64 %indvars.iv161.i.i, 1
  %i.ka = load i32, ptr %i.d, align 4, !tbaa !17  ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 0                    ; 2 uses
  %i.kc = icmp samesign ult i64 %indvars.iv161.i.i, %i.jt
  %i.kd = and i1 %i.kc, %i.kb
  br i1 %i.kd, label %.lr.ph140.i.i, label %._crit_edge141.i.i, !llvm.loop !336

._crit_edge141.i.i:                               ; preds = %.lr.ph140.i.i
  br i1 %i.kb, label %._crit_edge141.thread.i.i, label %bb.bd

._crit_edge141.thread.i.i:                        ; preds = %._crit_edge141.i.i, %bb.bc
  %.0.lcssa174.i.i = phi ptr [ %i.jz, %._crit_edge141.i.i ], [ %i.js, %bb.bc ] ; 2 uses
  %i.ke = call i32 @sqlite3_bind_text(ptr noundef %i.hh, i32 noundef 1, ptr noundef nonnull %i.gr, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.kf = call i32 @sqlite3_bind_text(ptr noundef %i.hh, i32 noundef 2, ptr noundef nonnull %i.gt, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.kg = call i32 @sqlite3_bind_text(ptr noundef %i.hh, i32 noundef 3, ptr noundef %.0.lcssa174.i.i, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  %i.kh = call i32 @sqlite3_step(ptr noundef %i.hh) #45 ; 0 uses
  %i.ki = call i32 @sqlite3_reset(ptr noundef %i.hh) #45
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge141.thread.i.i, %.critedge2.i.i
  %.sink.i.i = phi i32 [ %i.ki, %._crit_edge141.thread.i.i ], [ 7, %.critedge2.i.i ] ; 2 uses
  %.0.lcssa175.ph.i.i = phi ptr [ %.0.lcssa174.i.i, %._crit_edge141.thread.i.i ], [ null, %.critedge2.i.i ]
  store i32 %.sink.i.i, ptr %i.d, align 4, !tbaa !17
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split.i.i, %._crit_edge141.i.i
  %.0.lcssa175.i.i = phi ptr [ %i.jz, %._crit_edge141.i.i ], [ %.0.lcssa175.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.pr113165.i.i = phi i32 [ %i.ka, %._crit_edge141.i.i ], [ %.sink.i.i, %.sink.split.i.i ] ; 2 uses
  %i.kj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gt) #46 ; 5 uses
  %i.kk = trunc i64 %i.kj to i32                  ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph.preheader.i.i.i.i, label %idxHashString.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bd
  %wide.trip.count.i.i.i.i = and i64 %i.kj, 2147483647
  %i.km = add nsw i64 %wide.trip.count.i.i.i.i, -1
  %xtraiter = and i64 %i.kj, 3                    ; 3 uses
  %i.kn = icmp ult i64 %i.km, 3
  br i1 %i.kn, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i64 %i.kj, 2147483644
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph.i.i.i.i ] ; 5 uses
  %.078.i.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %i.lk, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !16
  %i.kq = zext i8 %i.kp to i32
  %i.kr = mul i32 %.078.i.i.i.i, 9
  %i.ks = add i32 %i.kr, %i.kq
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !16
  %i.kw = zext i8 %i.kv to i32
  %i.kx = mul i32 %i.ks, 9
  %i.ky = add i32 %i.kx, %i.kw
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !16
  %i.lc = zext i8 %i.lb to i32
  %i.ld = mul i32 %i.ky, 9
  %i.le = add i32 %i.ld, %i.lc
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 3
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !16
  %i.li = zext i8 %i.lh to i32
  %i.lj = mul i32 %i.le, 9
  %i.lk = add i32 %i.lj, %i.li                    ; 3 uses
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !337

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.3, %._crit_edge.loopexit.i.i.i.i.unr-lcssa ]
  %.078.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %i.lk, %._crit_edge.loopexit.i.i.i.i.unr-lcssa ]
  %lcmp.mod342 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod342)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.078.i.i.i.i.epil = phi i32 [ %.078.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ], [ %i.lp, %.lr.ph.i.i.i.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i.epil
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !16
  %i.ln = zext i8 %i.lm to i32
  %i.lo = mul i32 %.078.i.i.i.i.epil, 9
  %i.lp = add i32 %i.lo, %i.ln                    ; 2 uses
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !338

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %.lcssa328 = phi i32 [ %i.lk, %._crit_edge.loopexit.i.i.i.i.unr-lcssa ], [ %i.lp, %.lr.ph.i.i.i.i.epil ]
  %i.lq = urem i32 %.lcssa328, 1023
  %i.lr = zext nneg i32 %i.lq to i64
  br label %idxHashString.exit.i.i.i

idxHashString.exit.i.i.i:                         ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.bd
  %.07.lcssa.i.i.i.i = phi i64 [ 0, %bb.bd ], [ %i.lr, %._crit_edge.loopexit.i.i.i.i ]
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.07.lcssa.i.i.i.i
  %sext.i.i = shl i64 %i.kj, 32
  %i.lt = ashr exact i64 %sext.i.i, 32
  %.017.i.i.i = load ptr, ptr %i.ls, align 8, !tbaa !299 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %.017.i.i.i, null
  br i1 %.not18.i.i.i, label %.loopexit.i.i36, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %idxHashString.exit.i.i.i, %bb.bf
  %.019.i.i.i = phi ptr [ %.0.i.i.i, %bb.bf ], [ %.017.i.i.i, %idxHashString.exit.i.i.i ] ; 3 uses
  %i.lu = load ptr, ptr %.019.i.i.i, align 8, !tbaa !339 ; 2 uses
  %i.lv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lu) #46
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = icmp eq i32 %i.kk, %i.lw
  br i1 %i.lx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i.i.i35
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.lu, ptr nonnull readonly %i.gt, i64 %i.lt)
  %i.ly = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ly, label %idxHashFind.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i.i.i35
  %i.lz = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24
  %.0.i.i.i = load ptr, ptr %i.lz, align 8, !tbaa !299 ; 2 uses
  %.not.i101.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i101.i.i, label %.loopexit.i.i36, label %.lr.ph.i.i.i35, !llvm.loop !340

idxHashFind.exit.i.i:                             ; preds = %bb.be
  %i.ma = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 16
  store ptr %.0.lcssa175.i.i, ptr %i.ma, align 8, !tbaa !302
  br label %idxMalloc.exit.threadthread-pre-split.i.i

.loopexit.i.i36:                                  ; preds = %bb.bf, %idxHashString.exit.i.i.i
  call void @sqlite3_free(ptr noundef %.0.lcssa175.i.i) #45
  br label %idxMalloc.exit.threadthread-pre-split.i.i

idxMalloc.exit.threadthread-pre-split.i.i:        ; preds = %.loopexit.i.i36, %idxHashFind.exit.i.i, %bb.az
  %.pr113.i.i = phi i32 [ 0, %bb.az ], [ %.pr113165.i.i, %.loopexit.i.i36 ], [ %.pr113165.i.i, %idxHashFind.exit.i.i ]
  %.pr113.i.fr.i = freeze i32 %.pr113.i.i         ; 2 uses
  %i.mb = icmp eq i32 %.pr113.i.fr.i, 0
  call void @sqlite3_free(ptr noundef nonnull %i.il) #45
  %i.mc = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.md = call i32 @sqlite3_finalize(ptr noundef %i.mc) #45
  %spec.select.i = select i1 %i.mb, i32 %i.md, i32 %.pr113.i.fr.i
  br label %idxPopulateOneStat1.exit.i

idxFinalize.exit.critedge.i.sink.split.i:         ; preds = %bb.ax, %bb.av
  %.ph.i = phi i32 [ %i.if, %bb.ax ], [ %i.ia, %bb.av ]
  call void @sqlite3_free(ptr noundef %.088.i.i) #45
  br label %idxFinalize.exit.critedge.i.i

idxFinalize.exit.critedge.i.i:                    ; preds = %idxFinalize.exit.critedge.i.sink.split.i, %bb.ay
  %i.me = phi i32 [ 7, %bb.ay ], [ %.ph.i, %idxFinalize.exit.critedge.i.sink.split.i ]
  call void @sqlite3_free(ptr noundef null) #45
  %i.mf = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.mg = call i32 @sqlite3_finalize(ptr noundef %i.mf) #45 ; 0 uses
  br label %idxPopulateOneStat1.exit.i

idxPopulateOneStat1.exit.i:                       ; preds = %idxFinalize.exit.critedge.i.i, %idxMalloc.exit.threadthread-pre-split.i.i, %.thread.i.i39
  %.295.i.i = phi i32 [ %i.ht, %.thread.i.i39 ], [ %i.me, %idxFinalize.exit.critedge.i.i ], [ %spec.select.i, %idxMalloc.exit.threadthread-pre-split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  br label %bb.bg

bb.bg:                                            ; preds = %idxPopulateOneStat1.exit.i, %bb.al
  %.7.i = phi i32 [ 0, %bb.al ], [ %.295.i.i, %idxPopulateOneStat1.exit.i ] ; 2 uses
  %.1.i32 = phi i64 [ %.053140.i, %bb.al ], [ %i.gp, %idxPopulateOneStat1.exit.i ]
  %i.mh = icmp eq i32 %.7.i, 0
  br i1 %i.mh, label %bb.ak, label %.thread120.i

.thread120.sink.split.i:                          ; preds = %idxPrepareStmt.exit64.i, %idxPrepareStmt.exit.i, %bb.aj
  %.sink208.i = phi ptr [ %i.g, %idxPrepareStmt.exit.i ], [ %i.f, %bb.aj ], [ %i.h, %idxPrepareStmt.exit64.i ]
  %.sink.i = phi ptr [ %i.gd, %idxPrepareStmt.exit.i ], [ %i.gb, %bb.aj ], [ %i.gf, %idxPrepareStmt.exit64.i ]
  %.8.ph.ph.i = phi i32 [ %i.ge, %idxPrepareStmt.exit.i ], [ %i.gc, %bb.aj ], [ %i.gg, %idxPrepareStmt.exit64.i ]
  store ptr null, ptr %.sink208.i, align 8, !tbaa !110
  %i.mi = call ptr @sqlite3_errmsg(ptr noundef %.sink.i) #45
  %i.mj = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.mi) #45
  store ptr %i.mj, ptr %1, align 8, !tbaa !66
  br label %.thread120.i

.thread120.i:                                     ; preds = %bb.bg, %idxBuildSampleTable.exit.i, %bb.ao, %bb.an, %.thread120.sink.split.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.0559699103106109191.i = phi ptr [ %i.fq, %bb.ai ], [ null, %bb.ag ], [ %i.fq, %bb.ah ], [ %i.fq, %.thread120.sink.split.i ], [ null, %bb.af ], [ %i.fq, %bb.an ], [ %i.fq, %bb.ao ], [ %i.fq, %idxBuildSampleTable.exit.i ], [ %i.fq, %bb.bg ]
  %.8.ph.i = phi i32 [ %i.fy, %bb.ai ], [ 7, %bb.ag ], [ %i.fu, %bb.ah ], [ %.8.ph.ph.i, %.thread120.sink.split.i ], [ %i.fl, %bb.af ], [ %.7.i, %bb.bg ], [ %i.hf, %idxBuildSampleTable.exit.i ], [ 7, %bb.ao ], [ %i.hb, %bb.an ]
  %i.mk = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.ml = call i32 @sqlite3_finalize(ptr noundef %i.mk) #45 ; 0 uses
  br label %idxFinalize.exit.thread.i

.critedge.i:                                      ; preds = %bb.ak
  %i.mm = load i32, ptr %0, align 8, !tbaa !253
  %i.mn = icmp slt i32 %i.mm, 100
  br i1 %i.mn, label %bb.bh, label %.thread118.i

.thread118.i:                                     ; preds = %.critedge.i
  %i.mo = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.mp = call i32 @sqlite3_finalize(ptr noundef %i.mo) #45
  br label %idxFinalize.exit.i

bb.bh:                                            ; preds = %.critedge.i
  %i.mq = load ptr, ptr %i.gj, align 8, !tbaa !255
  %i.mr = call i32 @sqlite3_exec(ptr noundef %i.mq, ptr noundef nonnull @.str.428, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %i.ms = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.mt = call i32 @sqlite3_finalize(ptr noundef %i.ms) #45
  %i.mu = icmp eq i32 %i.mr, 0
  br i1 %i.mu, label %idxFinalize.exit.i, label %idxFinalize.exit.thread.i

idxFinalize.exit.thread.i:                        ; preds = %bb.bh, %.thread120.i
  %.0559699103106109190.i = phi ptr [ %i.fq, %bb.bh ], [ %.0559699103106109191.i, %.thread120.i ]
  %.12.ph.i = phi i32 [ %i.mr, %bb.bh ], [ %.8.ph.i, %.thread120.i ]
  %i.mv = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.mw = call i32 @sqlite3_finalize(ptr noundef %i.mv) #45 ; 0 uses
  br label %idxFinalize.exit71.thread.i

idxFinalize.exit.i:                               ; preds = %bb.bh, %.thread118.i
  %.12.i = phi i32 [ %i.mp, %.thread118.i ], [ %i.mt, %bb.bh ] ; 2 uses
  %i.mx = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.my = call i32 @sqlite3_finalize(ptr noundef %i.mx) #45 ; 2 uses
  %i.mz = icmp eq i32 %.12.i, 0
  br i1 %i.mz, label %idxFinalize.exit71.i, label %idxFinalize.exit71.thread.i

idxFinalize.exit71.thread.i:                      ; preds = %idxFinalize.exit.i, %idxFinalize.exit.thread.i
  %.0559699103106109189.i = phi ptr [ %.0559699103106109190.i, %idxFinalize.exit.thread.i ], [ %i.fq, %idxFinalize.exit.i ]
  %.13.ph.i = phi i32 [ %.12.ph.i, %idxFinalize.exit.thread.i ], [ %.12.i, %idxFinalize.exit.i ]
  %i.na = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.nb = call i32 @sqlite3_finalize(ptr noundef %i.na) #45 ; 0 uses
  br label %idxFinalize.exit72.i

idxFinalize.exit71.i:                             ; preds = %idxFinalize.exit.i
  %i.nc = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.nd = call i32 @sqlite3_finalize(ptr noundef %i.nc) #45
  %i.ne = icmp eq i32 %i.my, 0
  %spec.select124.i = select i1 %i.ne, i32 %i.nd, i32 %i.my
  br label %idxFinalize.exit72.i

idxFinalize.exit72.i:                             ; preds = %idxFinalize.exit71.i, %idxFinalize.exit71.thread.i
  %.0559699103106109188.i = phi ptr [ %.0559699103106109189.i, %idxFinalize.exit71.thread.i ], [ %i.fq, %idxFinalize.exit71.i ] ; 5 uses
  %.14.i = phi i32 [ %.13.ph.i, %idxFinalize.exit71.thread.i ], [ %spec.select124.i, %idxFinalize.exit71.i ] ; 2 uses
  %.not60.i = icmp eq ptr %.0559699103106109188.i, null
  br i1 %.not60.i, label %bb.bi, label %.preheader.i28

.preheader.i28:                                   ; preds = %idxFinalize.exit72.i
  %i.nf = load i32, ptr %.0559699103106109188.i, align 8, !tbaa !323
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %.lr.ph147.i, label %._crit_edge.i

.lr.ph147.i:                                      ; preds = %.preheader.i28, %.lr.ph147.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph147.i ], [ 0, %.preheader.i28 ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [48 x i8], ptr %.0559699103106109188.i, i64 %indvars.iv.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 48
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !341
  call void @sqlite3_free(ptr noundef %i.nj) #45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.nk = load i32, ptr %.0559699103106109188.i, align 8, !tbaa !323
  %i.nl = sext i32 %i.nk to i64
  %i.nm = icmp slt i64 %indvars.iv.next.i, %i.nl
  br i1 %i.nm, label %.lr.ph147.i, label %._crit_edge.i, !llvm.loop !343

._crit_edge.i:                                    ; preds = %.lr.ph147.i, %.preheader.i28
  call void @sqlite3_free(ptr noundef nonnull %.0559699103106109188.i) #45
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i, %idxFinalize.exit72.i
  %i.nn = icmp eq i32 %.14.i, 0
  br i1 %i.nn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
end_hunk_3
begin_hunk_4_@sqlite3_expert_analyze:bb.a
  br i1 %i.oj, label %bb.bn, label %.thread

bb.bn:                                            ; preds = %._crit_edge
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %2, i8 0, i64 8192, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.057119.i = load ptr, ptr %i.om, align 8, !tbaa !346 ; 2 uses
  %.not123.i = icmp eq ptr %.057119.i, null
  br i1 %.not123.i, label %.loopexit.i47, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.bn
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.bo

bb.bo:                                            ; preds = %bb.ce, %.lr.ph122.i
  %.057120.i = phi ptr [ %.057119.i, %.lr.ph122.i ], [ %.057.i, %bb.ce ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !110
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge.i.i43, %bb.bo
  %indvars.iv.i.i40 = phi i64 [ 0, %bb.bo ], [ %indvars.iv.next.i.i44, %._crit_edge.i.i43 ] ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %indvars.iv.i.i40
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !299 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.oq, null
  br i1 %.not10.i.i, label %._crit_edge.i.i43, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %bb.bp, %.lr.ph.i.i41
  %.011.i.i = phi ptr [ %i.os, %.lr.ph.i.i41 ], [ %i.oq, %bb.bp ] ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !300 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !302
  call void @sqlite3_free(ptr noundef %i.ou) #45
  call void @sqlite3_free(ptr noundef nonnull %.011.i.i) #45
  %.not.i.i42 = icmp eq ptr %i.os, null
  br i1 %.not.i.i42, label %._crit_edge.i.i43, label %.lr.ph.i.i41, !llvm.loop !303

._crit_edge.i.i43:                                ; preds = %.lr.ph.i.i41, %bb.bp
  %indvars.iv.next.i.i44 = add nuw nsw i64 %indvars.iv.i.i40, 1 ; 2 uses
  %exitcond.not.i.i45 = icmp eq i64 %indvars.iv.next.i.i44, 1023
  br i1 %exitcond.not.i.i45, label %idxHashClear.exit.i, label %bb.bp, !llvm.loop !304

idxHashClear.exit.i:                              ; preds = %._crit_edge.i.i43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %2, i8 0, i64 8192, i1 false)
  %i.ov = getelementptr inbounds nuw i8, ptr %.057120.i, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !307
  %i.ox = call i32 (ptr, ptr, ptr, ptr, ...) @idxPrintfPrepareStmt(ptr noundef %i.ol, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull @.str.437, ptr noundef %i.ow) ; 3 uses
  store i32 %i.ox, ptr %i.a, align 4, !tbaa !17
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %.lr.ph112.i, label %.thread207

.thread207:                                       ; preds = %idxHashClear.exit.i
  %i.oz = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.pa = call i32 @sqlite3_finalize(ptr noundef %i.oz) #45 ; 0 uses
  br label %.loopexit.i47.sink.split

.lr.ph112.i:                                      ; preds = %idxHashClear.exit.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.057120.i, i64 24 ; 2 uses
  %i.pc = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.pd = call i32 @sqlite3_step(ptr noundef %i.pc) #45
  %i.pe = icmp eq i32 %i.pd, 100
  br i1 %i.pe, label %.lr.ph115, label %._crit_edge.i46.thread

._crit_edge.i46.thread:                           ; preds = %.lr.ph112.i
  store ptr null, ptr %2, align 8
  %i.pf = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.pg = call i32 @sqlite3_finalize(ptr noundef %i.pf) #45
  br label %bb.ce

.lr.ph115:                                        ; preds = %.lr.ph112.i, %.backedge.i
  %i.ph = phi ptr [ %.be.i, %.backedge.i ], [ null, %.lr.ph112.i ] ; 8 uses
  %i.pi = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.pj = call ptr @sqlite3_column_text(ptr noundef %i.pi, i32 noundef 3) #45 ; 7 uses
  %.not65.i = icmp eq ptr %i.pj, null
  br i1 %.not65.i, label %.backedge.i, label %bb.bq, !llvm.loop !347

bb.bq:                                            ; preds = %.lr.ph115
  %i.pk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pj) #46 ; 2 uses
  %i.pl = trunc i64 %i.pk to i32                  ; 2 uses
  %i.pm = icmp sgt i32 %i.pl, 0
  br i1 %i.pm, label %.lr.ph.preheader.i, label %idxHashSearch.exit.thread.i

.lr.ph.preheader.i:                               ; preds = %bb.bq
  %i.pn = and i64 %i.pk, 2147483647               ; 2 uses
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.cc, %.lr.ph.preheader.i
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i52, %bb.cc ] ; 6 uses
  %i.po = add nuw nsw i64 %indvars.iv.i51, 13     ; 2 uses
  %i.pp = icmp samesign ult i64 %i.po, %i.pn
  br i1 %i.pp, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph.i50
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pj, i64 %indvars.iv.i51 ; 2 uses
  %i.pr = load i64, ptr %i.pq, align 1
  %i.ps = xor i64 %i.pr, 5269289965586699552
  %i.pt = getelementptr i8, ptr %i.pq, i64 5
  %i.pu = load i64, ptr %i.pt, align 1
  %i.pv = xor i64 %i.pu, 2330688966837739591
  %i.pw = or i64 %i.ps, %i.pv
  %i.px = icmp ne i64 %i.pw, 0
  %i.py = zext i1 %i.px to i32
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %.split.loop.exit155.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph.i50
  %i.qa = trunc i64 %indvars.iv.i51 to i32
  %i.qb = add i32 %i.qa, 22
  %i.qc = icmp slt i32 %i.qb, %i.pl
  br i1 %i.qc, label %bb.bt, label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pj, i64 %indvars.iv.i51 ; 2 uses
  %i.qe = load i128, ptr %i.qd, align 1
  %i.qf = xor i128 %i.qe, 42905536779139823338688161445043197216
  %i.qg = getelementptr i8, ptr %i.qd, i64 6
  %i.qh = load i128, ptr %i.qg, align 1
  %i.qi = xor i128 %i.qh, 42993622886674310481450913145593742112
  %i.qj = or i128 %i.qf, %i.qi
  %i.qk = icmp ne i128 %i.qj, 0
  %i.ql = zext i1 %i.qk to i32
  %i.qm = icmp eq i32 %i.ql, 0
  br i1 %i.qm, label %.split.loop.exit.i, label %bb.cc

.split.loop.exit.i:                               ; preds = %bb.bt
  %i.qn = add nuw i64 %indvars.iv.i51, 22
  br label %.split.loop.exit155.i

.split.loop.exit155.i:                            ; preds = %bb.br, %.split.loop.exit.i
  %.pn.in.i = phi i64 [ %i.qn, %.split.loop.exit.i ], [ %i.po, %bb.br ]
  %.pn.i = and i64 %.pn.in.i, 4294967295
  %.053.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.pn.i ; 7 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge4.i, %.split.loop.exit155.i
  %indvars.iv133.i = phi i64 [ 0, %.split.loop.exit155.i ], [ %indvars.iv.next134.i, %.critedge4.i ] ; 8 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.053.i, i64 %indvars.iv133.i ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !16
  switch i8 %i.qp, label %.critedge4.i [
    i8 0, label %.critedge2.i
    i8 32, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !16
  %.not70.i = icmp eq i8 %i.qr, 40
  br i1 %.not70.i, label %.critedge2.i, label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.bv, %bb.bu
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 1
  br label %bb.bu, !llvm.loop !348

.critedge2.i:                                     ; preds = %bb.bv, %bb.bu
  %i.qs = trunc nuw nsw i64 %indvars.iv133.i to i32
  %.not103.i = icmp eq i64 %indvars.iv133.i, 0
  br i1 %.not103.i, label %idxHashString.exit.i.i.i59, label %.lr.ph.i.i.i.i53.preheader

.lr.ph.i.i.i.i53.preheader:                       ; preds = %.critedge2.i
  %xtraiter343 = and i64 %indvars.iv133.i, 3      ; 3 uses
  %i.qt = icmp samesign ult i64 %indvars.iv133.i, 4
  br i1 %i.qt, label %.lr.ph.i.i.i.i53.epil.preheader, label %.lr.ph.i.i.i.i53.preheader.new

.lr.ph.i.i.i.i53.preheader.new:                   ; preds = %.lr.ph.i.i.i.i53.preheader
  %unroll_iter348 = and i64 %indvars.iv133.i, 9223372036854775804
  br label %.lr.ph.i.i.i.i53

.lr.ph.i.i.i.i53:                                 ; preds = %.lr.ph.i.i.i.i53, %.lr.ph.i.i.i.i53.preheader.new
  %indvars.iv.i.i.i.i54 = phi i64 [ 0, %.lr.ph.i.i.i.i53.preheader.new ], [ %indvars.iv.next.i.i.i.i56.3, %.lr.ph.i.i.i.i53 ] ; 5 uses
  %.078.i.i.i.i55 = phi i32 [ 0, %.lr.ph.i.i.i.i53.preheader.new ], [ %i.rq, %.lr.ph.i.i.i.i53 ]
  %niter349 = phi i64 [ 0, %.lr.ph.i.i.i.i53.preheader.new ], [ %niter349.next.3, %.lr.ph.i.i.i.i53 ]
  %i.qu = getelementptr inbounds nuw i8, ptr %.053.i, i64 %indvars.iv.i.i.i.i54
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !16
  %i.qw = zext i8 %i.qv to i32
  %i.qx = mul i32 %.078.i.i.i.i55, 9
  %i.qy = add i32 %i.qx, %i.qw
  %i.qz = getelementptr inbounds nuw i8, ptr %.053.i, i64 %indvars.iv.i.i.i.i54
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 1
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !16
  %i.rc = zext i8 %i.rb to i32
  %i.rd = mul i32 %i.qy, 9
  %i.re = add i32 %i.rd, %i.rc
  %i.rf = getelementptr inbounds nuw i8, ptr %.053.i, i64 %indvars.iv.i.i.i.i54
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 2
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !16
  %i.ri = zext i8 %i.rh to i32
  %i.rj = mul i32 %i.re, 9
  %i.rk = add i32 %i.rj, %i.ri
  %i.rl = getelementptr inbounds nuw i8, ptr %.053.i, i64 %indvars.iv.i.i.i.i54
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 3
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !16
  %i.ro = zext i8 %i.rn to i32
  %i.rp = mul i32 %i.rk, 9
  %i.rq = add i32 %i.rp, %i.ro                    ; 3 uses
  %indvars.iv.next.i.i.i.i56.3 = add nuw nsw i64 %indvars.iv.i.i.i.i54, 4 ; 2 uses
  %niter349.next.3 = add i64 %niter349, 4         ; 2 uses
  %niter349.ncmp.3 = icmp eq i64 %niter349.next.3, %unroll_iter348
  br i1 %niter349.ncmp.3, label %._crit_edge.loopexit.i.i.i.i58.unr-lcssa, label %.lr.ph.i.i.i.i53, !llvm.loop !337

._crit_edge.loopexit.i.i.i.i58.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i53
  %lcmp.mod345.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod345.not, label %._crit_edge.loopexit.i.i.i.i58, label %.lr.ph.i.i.i.i53.epil.preheader

.lr.ph.i.i.i.i53.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i58.unr-lcssa, %.lr.ph.i.i.i.i53.preheader
  %indvars.iv.i.i.i.i54.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i53.preheader ], [ %indvars.iv.next.i.i.i.i56.3, %._crit_edge.loopexit.i.i.i.i58.unr-lcssa ]
  %.078.i.i.i.i55.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i53.preheader ], [ %i.rq, %._crit_edge.loopexit.i.i.i.i58.unr-lcssa ]
  %lcmp.mod347 = icmp ne i64 %xtraiter343, 0
  call void @llvm.assume(i1 %lcmp.mod347)
  br label %.lr.ph.i.i.i.i53.epil

.lr.ph.i.i.i.i53.epil:                            ; preds = %.lr.ph.i.i.i.i53.epil, %.lr.ph.i.i.i.i53.epil.preheader
  %indvars.iv.i.i.i.i54.epil = phi i64 [ %indvars.iv.next.i.i.i.i56.epil, %.lr.ph.i.i.i.i53.epil ], [ %indvars.iv.i.i.i.i54.epil.init, %.lr.ph.i.i.i.i53.epil.preheader ] ; 2 uses
  %.078.i.i.i.i55.epil = phi i32 [ %i.rv, %.lr.ph.i.i.i.i53.epil ], [ %.078.i.i.i.i55.epil.init, %.lr.ph.i.i.i.i53.epil.preheader ]
  %epil.iter344 = phi i64 [ %epil.iter344.next, %.lr.ph.i.i.i.i53.epil ], [ 0, %.lr.ph.i.i.i.i53.epil.preheader ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.053.i, i64 %indvars.iv.i.i.i.i54.epil
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !16
  %i.rt = zext i8 %i.rs to i32
  %i.ru = mul i32 %.078.i.i.i.i55.epil, 9
  %i.rv = add i32 %i.ru, %i.rt                    ; 2 uses
  %indvars.iv.next.i.i.i.i56.epil = add nuw nsw i64 %indvars.iv.i.i.i.i54.epil, 1
  %epil.iter344.next = add i64 %epil.iter344, 1   ; 2 uses
  %epil.iter344.cmp.not = icmp eq i64 %epil.iter344.next, %xtraiter343
  br i1 %epil.iter344.cmp.not, label %._crit_edge.loopexit.i.i.i.i58, label %.lr.ph.i.i.i.i53.epil, !llvm.loop !349

._crit_edge.loopexit.i.i.i.i58:                   ; preds = %.lr.ph.i.i.i.i53.epil, %._crit_edge.loopexit.i.i.i.i58.unr-lcssa
  %.lcssa306 = phi i32 [ %i.rq, %._crit_edge.loopexit.i.i.i.i58.unr-lcssa ], [ %i.rv, %.lr.ph.i.i.i.i53.epil ]
  %i.rw = urem i32 %.lcssa306, 1023
  %i.rx = zext nneg i32 %i.rw to i64
  br label %idxHashString.exit.i.i.i59

idxHashString.exit.i.i.i59:                       ; preds = %._crit_edge.loopexit.i.i.i.i58, %.critedge2.i
  %.07.lcssa.i.i.i.i60 = phi i64 [ 0, %.critedge2.i ], [ %i.rx, %._crit_edge.loopexit.i.i.i.i58 ]
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %.07.lcssa.i.i.i.i60
  %.017.i.i.i61 = load ptr, ptr %i.ry, align 8, !tbaa !299 ; 2 uses
  %.not18.i.i.i62 = icmp eq ptr %.017.i.i.i61, null
  br i1 %.not18.i.i.i62, label %idxHashSearch.exit.thread.i, label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %idxHashString.exit.i.i.i59, %bb.bx
  %.019.i.i.i64 = phi ptr [ %.0.i.i.i65, %bb.bx ], [ %.017.i.i.i61, %idxHashString.exit.i.i.i59 ] ; 3 uses
  %i.rz = load ptr, ptr %.019.i.i.i64, align 8, !tbaa !339 ; 2 uses
  %i.sa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rz) #46
  %i.sb = trunc i64 %i.sa to i32
  %i.sc = icmp eq i32 %i.qs, %i.sb
  br i1 %i.sc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.lr.ph.i.i.i63
  %bcmp.i.i.i67 = call i32 @bcmp(ptr nonnull %i.rz, ptr nonnull readonly %.053.i, i64 %indvars.iv133.i)
  %i.sd = icmp eq i32 %bcmp.i.i.i67, 0
  br i1 %i.sd, label %idxHashSearch.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph.i.i.i63
  %i.se = getelementptr inbounds nuw i8, ptr %.019.i.i.i64, i64 24
  %.0.i.i.i65 = load ptr, ptr %i.se, align 8, !tbaa !299 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.0.i.i.i65, null
  br i1 %.not.i.i.i66, label %idxHashSearch.exit.thread.i, label %.lr.ph.i.i.i63, !llvm.loop !340

idxHashSearch.exit.i:                             ; preds = %bb.bw
  %i.sf = getelementptr inbounds nuw i8, ptr %.019.i.i.i64, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !344 ; 9 uses
  %.not71.i = icmp eq ptr %i.sg, null
  br i1 %.not71.i, label %idxHashSearch.exit.thread.i, label %bb.by

bb.by:                                            ; preds = %idxHashSearch.exit.i
  %i.sh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.sg) #46 ; 5 uses
  %i.si = trunc i64 %i.sh to i32                  ; 2 uses
  %i.sj = icmp sgt i32 %i.si, 0
  br i1 %i.sj, label %.lr.ph.preheader.i.i.i, label %idxHashString.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.by
  %wide.trip.count.i.i.i = and i64 %i.sh, 2147483647
  %i.sk = add nsw i64 %wide.trip.count.i.i.i, -1
  %xtraiter350 = and i64 %i.sh, 3                 ; 3 uses
  %i.sl = icmp ult i64 %i.sk, 3
  br i1 %i.sl, label %.lr.ph.i.i78.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter355 = and i64 %i.sh, 2147483644
  br label %.lr.ph.i.i78.i

.lr.ph.i.i78.i:                                   ; preds = %.lr.ph.i.i78.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i78.i ] ; 5 uses
  %.078.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.ti, %.lr.ph.i.i78.i ]
  %niter356 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter356.next.3, %.lr.ph.i.i78.i ]
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !16
  %i.so = zext i8 %i.sn to i32
  %i.sp = mul i32 %.078.i.i.i, 9
  %i.sq = add i32 %i.sp, %i.so
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 1
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !16
  %i.su = zext i8 %i.st to i32
  %i.sv = mul i32 %i.sq, 9
  %i.sw = add i32 %i.sv, %i.su
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !16
  %i.ta = zext i8 %i.sz to i32
  %i.tb = mul i32 %i.sw, 9
  %i.tc = add i32 %i.tb, %i.ta
  %i.td = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 3
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !16
  %i.tg = zext i8 %i.tf to i32
  %i.th = mul i32 %i.tc, 9
  %i.ti = add i32 %i.th, %i.tg                    ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter356.next.3 = add i64 %niter356, 4         ; 2 uses
  %niter356.ncmp.3 = icmp eq i64 %niter356.next.3, %unroll_iter355
  br i1 %niter356.ncmp.3, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i78.i, !llvm.loop !337

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i78.i
  %lcmp.mod352.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod352.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i78.i.epil.preheader

.lr.ph.i.i78.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.3, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ti, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod354 = icmp ne i64 %xtraiter350, 0
  call void @llvm.assume(i1 %lcmp.mod354)
  br label %.lr.ph.i.i78.i.epil

.lr.ph.i.i78.i.epil:                              ; preds = %.lr.ph.i.i78.i.epil, %.lr.ph.i.i78.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i.i78.i.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i78.i.epil ] ; 2 uses
  %.078.i.i.i.epil = phi i32 [ %.078.i.i.i.epil.init, %.lr.ph.i.i78.i.epil.preheader ], [ %i.tn, %.lr.ph.i.i78.i.epil ]
  %epil.iter351 = phi i64 [ 0, %.lr.ph.i.i78.i.epil.preheader ], [ %epil.iter351.next, %.lr.ph.i.i78.i.epil ]
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sg, i64 %indvars.iv.i.i.i.epil
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !16
  %i.tl = zext i8 %i.tk to i32
  %i.tm = mul i32 %.078.i.i.i.epil, 9
  %i.tn = add i32 %i.tm, %i.tl                    ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter351.next = add i64 %epil.iter351, 1   ; 2 uses
  %epil.iter351.cmp.not = icmp eq i64 %epil.iter351.next, %xtraiter350
  br i1 %epil.iter351.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i78.i.epil, !llvm.loop !350

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i78.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %.lcssa308 = phi i32 [ %i.ti, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %i.tn, %.lr.ph.i.i78.i.epil ]
  %i.to = urem i32 %.lcssa308, 1023
  %i.tp = zext nneg i32 %i.to to i64
  br label %idxHashString.exit.i.i

idxHashString.exit.i.i:                           ; preds = %._crit_edge.loopexit.i.i.i, %bb.by
  %.07.lcssa.i.i.i = phi i64 [ 0, %bb.by ], [ %i.tp, %._crit_edge.loopexit.i.i.i ]
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %.07.lcssa.i.i.i ; 2 uses
  %.049.i.i = load ptr, ptr %i.tq, align 8, !tbaa !299 ; 3 uses
  %.not4450.i.i = icmp eq ptr %.049.i.i, null
  %.pre.i.i68 = shl i64 %i.sh, 32
  %.pre52.i.i = ashr exact i64 %.pre.i.i68, 32    ; 3 uses
  br i1 %.not4450.i.i, label %._crit_edge.i76.i, label %.lr.ph.i74.i

.lr.ph.i74.i:                                     ; preds = %idxHashString.exit.i.i, %bb.ca
  %.051.i.i = phi ptr [ %.0.i75.i, %bb.ca ], [ %.049.i.i, %idxHashString.exit.i.i ] ; 2 uses
  %i.tr = load ptr, ptr %.051.i.i, align 8, !tbaa !339 ; 2 uses
  %i.ts = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tr) #46
  %i.tt = trunc i64 %i.ts to i32
  %i.tu = icmp eq i32 %i.tt, %i.si
  br i1 %i.tu, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph.i74.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.tr, ptr nonnull readonly %i.sg, i64 %.pre52.i.i)
  %i.tv = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.tv, label %idxHashSearch.exit.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i74.i
  %i.tw = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 24
  %.0.i75.i = load ptr, ptr %i.tw, align 8, !tbaa !299 ; 2 uses
  %.not44.i.i = icmp eq ptr %.0.i75.i, null
  br i1 %.not44.i.i, label %._crit_edge.i76.i, label %.lr.ph.i74.i, !llvm.loop !351

._crit_edge.i76.i:                                ; preds = %bb.ca, %idxHashString.exit.i.i
  %i.tx = add nsw i64 %.pre52.i.i, 42             ; 2 uses
  %i.ty = call ptr @sqlite3_malloc64(i64 noundef %i.tx) #45 ; 8 uses
  %.not.i.i77.i = icmp eq ptr %i.ty, null
  br i1 %.not.i.i77.i, label %.loopexit.i47.sink.split, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i76.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ty, i8 0, i64 %i.tx, i1 false)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 40 ; 2 uses
  store ptr %i.tz, ptr %i.ty, align 8, !tbaa !339
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tz, ptr nonnull readonly align 1 %i.sg, i64 %.pre52.i.i, i1 false)
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  store ptr %.049.i.i, ptr %i.ua, align 8, !tbaa !300
  store ptr %i.ty, ptr %i.tq, align 8, !tbaa !299
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  store ptr %i.ph, ptr %i.ub, align 8, !tbaa !352
  br label %idxHashSearch.exit.thread.i

bb.cc:                                            ; preds = %bb.bt, %bb.bs
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i52, %i.pn
  br i1 %exitcond.not.i, label %idxHashSearch.exit.thread.i, label %.lr.ph.i50, !llvm.loop !353

idxHashSearch.exit.thread.i:                      ; preds = %bb.cc, %bb.bx, %bb.bz, %bb.cb, %idxHashSearch.exit.i, %idxHashString.exit.i.i.i59, %bb.bq
  %i.uc = phi ptr [ %i.ph, %bb.bq ], [ %i.ph, %idxHashSearch.exit.i ], [ %i.ph, %idxHashString.exit.i.i.i59 ], [ %i.ph, %bb.bx ], [ %i.ph, %bb.bz ], [ %i.ty, %bb.cb ], [ %i.ph, %bb.cc ] ; 3 uses
  %i.ud = load i8, ptr %i.pj, align 1, !tbaa !16
  %.not73.i = icmp eq i8 %i.ud, 45
  br i1 %.not73.i, label %.backedge.i, label %.split.i

.split.i:                                         ; preds = %idxHashSearch.exit.thread.i
  %i.ue = load ptr, ptr %i.pb, align 8, !tbaa !294
  %i.uf = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.a, ptr noundef %i.ue, ptr noundef nonnull @.str.253, ptr noundef nonnull %i.pj)
  store ptr %i.uf, ptr %i.pb, align 8, !tbaa !294
  %.pr.pre.i = load i32, ptr %i.a, align 4, !tbaa !17 ; 2 uses
  %i.ug = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.ug, label %.backedge.i, label %.critedge.i48

.backedge.i:                                      ; preds = %.split.i, %idxHashSearch.exit.thread.i, %.lr.ph115
  %.be.i = phi ptr [ %i.uc, %.split.i ], [ %i.ph, %.lr.ph115 ], [ %i.uc, %idxHashSearch.exit.thread.i ] ; 2 uses
  %i.uh = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ui = call i32 @sqlite3_step(ptr noundef %i.uh) #45
  %i.uj = icmp eq i32 %i.ui, 100
  br i1 %i.uj, label %.lr.ph115, label %.critedge.i48

.critedge.i48:                                    ; preds = %.backedge.i, %.split.i
  %i.uk = phi i32 [ %.pr.pre.i, %.split.i ], [ 0, %.backedge.i ]
  %.lcssa109.i = phi ptr [ %i.uc, %.split.i ], [ %.be.i, %.backedge.i ] ; 3 uses
  store ptr %.lcssa109.i, ptr %2, align 8
  %.not116.i = icmp eq ptr %.lcssa109.i, null
  br i1 %.not116.i, label %._crit_edge.i46, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.critedge.i48
  %i.ul = getelementptr inbounds nuw i8, ptr %.057120.i, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %i.ul, align 8, !tbaa !295
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.lr.ph118.i
  %i.um = phi ptr [ %.pre.i, %.lr.ph118.i ], [ %i.uo, %bb.cd ]
  %.056117.i = phi ptr [ %.lcssa109.i, %.lr.ph118.i ], [ %.056.i, %bb.cd ] ; 2 uses
  %i.un = load ptr, ptr %.056117.i, align 8, !tbaa !339
  %i.uo = call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %i.a, ptr noundef %i.um, ptr noundef nonnull @.str.440, ptr noundef %i.un) ; 2 uses
  store ptr %i.uo, ptr %i.ul, align 8, !tbaa !295
  %i.up = getelementptr inbounds nuw i8, ptr %.056117.i, i64 32
  %.056.i = load ptr, ptr %i.up, align 8, !tbaa !299 ; 2 uses
  %.not.i49 = icmp eq ptr %.056.i, null
  br i1 %.not.i49, label %._crit_edge.loopexit.i, label %bb.cd, !llvm.loop !354

._crit_edge.loopexit.i:                           ; preds = %bb.cd
  %.pre139.i = load i32, ptr %i.a, align 4, !tbaa !17
  br label %._crit_edge.i46

._crit_edge.i46:                                  ; preds = %._crit_edge.loopexit.i, %.critedge.i48
  %i.uq = phi i32 [ %.pre139.i, %._crit_edge.loopexit.i ], [ %i.uk, %.critedge.i48 ]
  %.fr = freeze i32 %i.uq                         ; 2 uses
  %i.ur = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.us = call i32 @sqlite3_finalize(ptr noundef %i.ur) #45
  %i.ut = icmp eq i32 %.fr, 0
  %spec.select = select i1 %i.ut, i32 %i.us, i32 %.fr
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i46, %._crit_edge.i46.thread
  %i.uu = phi i32 [ %i.pg, %._crit_edge.i46.thread ], [ %spec.select, %._crit_edge.i46 ] ; 3 uses
  store i32 %i.uu, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  %i.uv = getelementptr inbounds nuw i8, ptr %.057120.i, i64 32
  %.057.i = load ptr, ptr %i.uv, align 8, !tbaa !346 ; 2 uses
  %i.uw = icmp eq i32 %i.uu, 0
  %i.ux = icmp ne ptr %.057.i, null
  %i.uy = select i1 %i.uw, i1 %i.ux, i1 false
  br i1 %i.uy, label %bb.bo, label %.loopexit.i47, !llvm.loop !355

.loopexit.i47.sink.split:                         ; preds = %._crit_edge.i76.i, %.thread207
  %.ph = phi i32 [ %i.ox, %.thread207 ], [ 7, %._crit_edge.i76.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %.loopexit.i47

.loopexit.i47:                                    ; preds = %bb.ce, %.loopexit.i47.sink.split, %bb.bn
  %i.uz = phi i32 [ %.ph, %.loopexit.i47.sink.split ], [ 0, %bb.bn ], [ %i.uu, %bb.ce ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.i84.i, %.loopexit.i47
  %indvars.iv.i79.i = phi i64 [ 0, %.loopexit.i47 ], [ %indvars.iv.next.i85.i, %._crit_edge.i84.i ] ; 2 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %indvars.iv.i79.i
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !299 ; 2 uses
  %.not10.i80.i = icmp eq ptr %i.vc, null
  br i1 %.not10.i80.i, label %._crit_edge.i84.i, label %.lr.ph.i81.i

.lr.ph.i81.i:                                     ; preds = %bb.cf, %.lr.ph.i81.i
  %.011.i82.i = phi ptr [ %i.ve, %.lr.ph.i81.i ], [ %i.vc, %bb.cf ] ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.011.i82.i, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !300 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.011.i82.i, i64 16
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !302
  call void @sqlite3_free(ptr noundef %i.vg) #45
  call void @sqlite3_free(ptr noundef nonnull %.011.i82.i) #45
  %.not.i83.i = icmp eq ptr %i.ve, null
  br i1 %.not.i83.i, label %._crit_edge.i84.i, label %.lr.ph.i81.i, !llvm.loop !303

._crit_edge.i84.i:                                ; preds = %.lr.ph.i81.i, %bb.cf
  %indvars.iv.next.i85.i = add nuw nsw i64 %indvars.iv.i79.i, 1 ; 2 uses
  %exitcond.not.i86.i = icmp eq i64 %indvars.iv.next.i85.i, 1023
  br i1 %exitcond.not.i86.i, label %bb.cg, label %bb.cf, !llvm.loop !304

bb.cg:                                            ; preds = %._crit_edge.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.vh = icmp eq i32 %i.uz, 0
  br i1 %i.vh, label %bb.ch, label %.thread

bb.ch:                                            ; preds = %bb.cg
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.vi, align 8, !tbaa !306
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.cg, %bb.ch, %bb.y, %bb.z
  %.018 = phi i32 [ %i.oi, %._crit_edge ], [ %i.uz, %bb.cg ], [ 0, %bb.ch ], [ 773, %bb.y ], [ 773, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #45
end_hunk_4
begin_hunk_5_@qrfRenderValue:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.3, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.026.i.i.epil.init = phi i64 [ %i.ak, %.lr.ph.i.i.preheader ], [ %i.bl, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod287)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.026.i.i.epil = phi i64 [ %i.bq, %.lr.ph.i.i.epil ], [ %.026.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bm = shl i64 %.026.i.i.epil, 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.epil
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  %i.bp = zext i8 %i.bo to i64
  %i.bq = or disjoint i64 %i.bm, %i.bp            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !805

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.j
  %.0.lcssa.i.i = phi i64 [ %i.ak, %bb.j ], [ %i.bl, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph.i.i.epil ]
  %i.br = add nuw nsw i64 %wide.trip.count.i.i, 1
  %i.bs = add i64 %i.br, %.0.lcssa.i.i
  %i.bt = zext nneg i32 %i.v to i64
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.k, label %.thread

qrfJsonbQuickCheck.exit.i:                        ; preds = %bb.h
  %i.bv = add nuw nsw i32 %i.ab, 1
  %i.bw = icmp eq i32 %i.v, %i.bv
  br i1 %i.bw, label %bb.k, label %.thread

bb.k:                                             ; preds = %qrfJsonbQuickCheck.exit.i, %._crit_edge.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !137 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.ca = call i32 @sqlite3_open(ptr noundef nonnull @.str.43, ptr noundef nonnull %i.a) #45
  %.not.i = icmp eq i32 %i.ca, 0
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !322 ; 2 uses
  br i1 %.not.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.cc = call i32 @sqlite3_prepare_v2(ptr noundef %i.cb, ptr noundef nonnull @.str.214, i32 noundef -1, ptr noundef nonnull %i.bx, ptr noundef null) #45
  %.not22.i = icmp eq i32 %i.cc, 0
  br i1 %.not22.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !137
  %i.ce = call i32 @sqlite3_finalize(ptr noundef %i.cd) #45 ; 0 uses
  store ptr null, ptr %i.bx, align 8, !tbaa !137
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !322
  br label %.critedge.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.cg = tail call i32 @sqlite3_reset(ptr noundef nonnull %i.by) #45 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !137
  %i.ci = call i32 @sqlite3_bind_blob(ptr noundef %i.ch, i32 noundef 1, ptr noundef nonnull %i.x, i32 noundef %i.v, ptr noundef null) #45 ; 0 uses
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !137
  %i.ck = call i32 @sqlite3_step(ptr noundef %i.cj) #45
  %i.cl = icmp eq i32 %i.ck, 100
  br i1 %i.cl, label %qrfJsonbToJson.exit, label %.thread

.critedge.i:                                      ; preds = %bb.n, %bb.l
  %.sink.i = phi ptr [ %i.cf, %bb.n ], [ %i.cb, %bb.l ]
  %i.cm = call i32 @sqlite3_close(ptr noundef %.sink.i) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %.thread

qrfJsonbToJson.exit:                              ; preds = %bb.q
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !137
  %i.co = call ptr @sqlite3_column_text(ptr noundef %i.cn, i32 noundef 0) #45 ; 3 uses
  %.not194 = icmp eq ptr %i.co, null
  br i1 %.not194, label %.thread, label %bb.r

bb.r:                                             ; preds = %qrfJsonbToJson.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !49
  %i.cr = icmp eq i8 %i.cq, 2
  br i1 %i.cr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.209, i32 noundef 6) #45
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.co)
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.210, i32 noundef 1) #45
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.co)
  br label %.loopexit

.thread:                                          ; preds = %._crit_edge.i.i, %bb.i, %bb.g, %bb.q, %qrfJsonbQuickCheck.exit.i, %.critedge.i, %qrfJsonbToJson.exit, %bb.f
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 4 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !51
  %i.cu = load ptr, ptr %0, align 8, !tbaa !36    ; 4 uses
  switch i8 %i.ct, label %bb.af [
    i8 3, label %bb.u
    i8 2, label %bb.u
    i8 4, label %bb.aa
    i8 5, label %bb.aa
    i8 6, label %bb.ae
  ]

bb.u:                                             ; preds = %.thread, %.thread
  %i.cv = call i32 @sqlite3_column_bytes(ptr noundef %i.cu, i32 noundef %2) #45 ; 6 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !36
  %i.cx = call ptr @sqlite3_column_blob(ptr noundef %i.cw, i32 noundef %2) #45 ; 3 uses
  %i.cy = load i8, ptr %i.cs, align 1, !tbaa !51
  %i.cz = icmp eq i8 %i.cy, 2
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.211, i32 noundef 2) #45
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = call i32 @sqlite3_str_length(ptr noundef %1) #45
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.cv, i8 noundef signext 32) #45
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.cv, i8 noundef signext 32) #45
  %i.db = load i8, ptr %i.cs, align 1, !tbaa !51
  %i.dc = icmp eq i8 %i.db, 2
  br i1 %i.dc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef 1, i8 noundef signext 39) #45
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dd = call i32 @sqlite3_str_errcode(ptr noundef %1) #45
  %.not197 = icmp eq i32 %i.dd, 0
  br i1 %.not197, label %bb.z, label %.critedge200

bb.z:                                             ; preds = %bb.y
  %i.de = call ptr @sqlite3_str_value(ptr noundef %1) #45 ; 3 uses
  %i.df = icmp sgt i32 %i.cv, 0
  br i1 %i.df, label %.lr.ph228.preheader, label %.loopexit

.lr.ph228.preheader:                              ; preds = %bb.z
  %i.dg = sext i32 %i.da to i64                   ; 2 uses
  %wide.trip.count255 = zext nneg i32 %i.cv to i64 ; 2 uses
  %xtraiter294 = and i64 %wide.trip.count255, 1
  %i.dh = icmp eq i32 %i.cv, 1
  br i1 %i.dh, label %.lr.ph228.epil.preheader, label %.lr.ph228.preheader.new

.lr.ph228.preheader.new:                          ; preds = %.lr.ph228.preheader
  %unroll_iter298 = and i64 %wide.trip.count255, 2147483646
  br label %.lr.ph228

.lr.ph228:                                        ; preds = %.lr.ph228, %.lr.ph228.preheader.new
  %indvars.iv250 = phi i64 [ 0, %.lr.ph228.preheader.new ], [ %indvars.iv.next251.1, %.lr.ph228 ] ; 3 uses
  %indvars.iv248 = phi i64 [ %i.dg, %.lr.ph228.preheader.new ], [ %indvars.iv.next249.1, %.lr.ph228 ] ; 3 uses
  %niter299 = phi i64 [ 0, %.lr.ph228.preheader.new ], [ %niter299.next.1, %.lr.ph228 ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !16
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = lshr i32 %i.dk, 4
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16
  %i.dp = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv248 ; 2 uses
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !16
  %i.dq = and i32 %i.dk, 15
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = getelementptr i8, ptr %i.dp, i64 1
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16
  %i.dy = zext i8 %i.dx to i32                    ; 2 uses
  %i.dz = lshr i32 %i.dy, 4
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !16
  %i.ed = getelementptr i8, ptr %i.de, i64 %indvars.iv248 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 2
  store i8 %i.ec, ptr %i.ee, align 1, !tbaa !16
  %i.ef = and i32 %i.dy, 15
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16
  %i.ej = getelementptr i8, ptr %i.ed, i64 3
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !16
  %indvars.iv.next251.1 = add nuw nsw i64 %indvars.iv250, 2 ; 2 uses
  %indvars.iv.next249.1 = add nsw i64 %indvars.iv248, 4 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph228, !llvm.loop !806

bb.aa:                                            ; preds = %.thread, %.thread
  %i.ek = call i32 @sqlite3_column_bytes(ptr noundef %i.cu, i32 noundef %2) #45 ; 5 uses
  %i.el = load ptr, ptr %0, align 8, !tbaa !36
  %i.em = call ptr @sqlite3_column_blob(ptr noundef %i.el, i32 noundef %2) #45 ; 4 uses
  %i.en = load i8, ptr %i.cs, align 1, !tbaa !51
  %.not196 = icmp eq i8 %i.en, 5                  ; 2 uses
  %i.eo = select i1 %.not196, i32 6, i32 4
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.196, i32 noundef 1) #45
  %i.ep = call i32 @sqlite3_str_length(ptr noundef %1) #45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.ab
  %.0175223 = phi i32 [ %i.eo, %bb.aa ], [ %i.eq, %bb.ab ] ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.ek, i8 noundef signext 32) #45
  %i.eq = add nsw i32 %.0175223, -1
  %i.er = icmp samesign ugt i32 %.0175223, 1
  br i1 %i.er, label %bb.ab, label %bb.ac, !llvm.loop !807

bb.ac:                                            ; preds = %bb.ab
  call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef 1, i8 noundef signext 34) #45
  %i.es = call i32 @sqlite3_str_errcode(ptr noundef %1) #45
  %.not195 = icmp eq i32 %i.es, 0
  br i1 %.not195, label %bb.ad, label %.critedge200

bb.ad:                                            ; preds = %bb.ac
  %i.et = call ptr @sqlite3_str_value(ptr noundef %1) #45 ; 4 uses
  %i.eu = icmp sgt i32 %i.ek, 0
  br i1 %i.eu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ad
  %i.ev = sext i32 %i.ep to i64                   ; 3 uses
  %wide.trip.count246 = zext nneg i32 %i.ek to i64 ; 3 uses
  br i1 %.not196, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter288 = and i64 %wide.trip.count246, 1
  %i.ew = icmp eq i32 %i.ek, 1
  br i1 %i.ew, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter292 = and i64 %wide.trip.count246, 2147483646
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv241 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next242.1, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv239 = phi i64 [ %i.ev, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next240.1, %.lr.ph.split.us ] ; 3 uses
  %niter293 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter293.next.1, %.lr.ph.split.us ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !16
  %i.ez = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv239 ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.ez, align 1, !tbaa !16
  %i.fa = zext i8 %i.ey to i32                    ; 2 uses
  %i.fb = lshr i32 %i.fa, 4
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !16
  %i.ff = getelementptr i8, ptr %i.ez, i64 4
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !16
  %i.fg = and i32 %i.fa, 15
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !16
  %i.fk = getelementptr i8, ptr %i.ez, i64 5
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  %i.fo = getelementptr i8, ptr %i.et, i64 %indvars.iv239 ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 6
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.fp, align 1, !tbaa !16
  %i.fq = zext i8 %i.fn to i32                    ; 2 uses
  %i.fr = lshr i32 %i.fq, 4
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !16
  %i.fv = getelementptr i8, ptr %i.fo, i64 10
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !16
  %i.fw = and i32 %i.fq, 15
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !16
  %i.ga = getelementptr i8, ptr %i.fo, i64 11
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !16
  %indvars.iv.next242.1 = add nuw nsw i64 %indvars.iv241, 2 ; 2 uses
  %indvars.iv.next240.1 = add nsw i64 %indvars.iv239, 12 ; 2 uses
  %niter293.next.1 = add i64 %niter293, 2         ; 2 uses
  %niter293.ncmp.1 = icmp eq i64 %niter293.next.1, %unroll_iter292
  br i1 %niter293.ncmp.1, label %.loopexit.loopexit283.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !808

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %i.ev, %.lr.ph ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv234
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !16  ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv ; 4 uses
  store i8 92, ptr %i.gd, align 1, !tbaa !16
  %i.ge = lshr i8 %i.gc, 6
  %i.gf = or disjoint i8 %i.ge, 48
  %i.gg = getelementptr i8, ptr %i.gd, i64 1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !16
  %i.gh = lshr i8 %i.gc, 3
  %i.gi = and i8 %i.gh, 7
  %i.gj = or disjoint i8 %i.gi, 48
  %i.gk = getelementptr i8, ptr %i.gd, i64 2
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !16
  %i.gl = and i8 %i.gc, 7
  %i.gm = or disjoint i8 %i.gl, 48
  %i.gn = getelementptr i8, ptr %i.gd, i64 3
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !16
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count246
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !808

bb.ae:                                            ; preds = %.thread
  %i.go = call i32 @sqlite3_column_bytes(ptr noundef %i.cu, i32 noundef %2) #45
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %1, ptr noundef nonnull @.str.213, i32 noundef %i.go) #45
  br label %.loopexit

bb.af:                                            ; preds = %.thread
  %i.gp = call ptr @sqlite3_column_text(ptr noundef %i.cu, i32 noundef %2) #45
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef %i.gp)
  br label %.loopexit

bb.ag:                                            ; preds = %.critedge
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !42
  tail call void @sqlite3_str_appendall(ptr noundef %1, ptr noundef %i.gr) #45
  br label %.loopexit

bb.ah:                                            ; preds = %.critedge
  %i.gs = load ptr, ptr %0, align 8, !tbaa !36
  %i.gt = tail call ptr @sqlite3_column_text(ptr noundef %i.gs, i32 noundef %2) #45
  tail call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef %i.gt)
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph228
  %lcmp.mod296.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod296.not, label %.loopexit, label %.lr.ph228.epil.preheader

.lr.ph228.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph228.preheader
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next251.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv248.epil.init = phi i64 [ %i.dg, %.lr.ph228.preheader ], [ %indvars.iv.next249.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod297 = trunc i32 %i.cv to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250.epil.init
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !16
  %i.gw = zext i8 %i.gv to i32                    ; 2 uses
  %i.gx = lshr i32 %i.gw, 4
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !16
  %i.hb = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv248.epil.init ; 2 uses
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !16
  %i.hc = and i32 %i.gw, 15
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !16
  %i.hg = getelementptr i8, ptr %i.hb, i64 1
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !16
  br label %.loopexit

.loopexit.loopexit283.unr-lcssa:                  ; preds = %.lr.ph.split.us
  %lcmp.mod290.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod290.not, label %.loopexit, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.loopexit.loopexit283.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv241.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next242.1, %.loopexit.loopexit283.unr-lcssa ]
  %indvars.iv239.epil.init = phi i64 [ %i.ev, %.lr.ph.split.us.preheader ], [ %indvars.iv.next240.1, %.loopexit.loopexit283.unr-lcssa ]
  %lcmp.mod291 = trunc i32 %i.ek to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241.epil.init
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !16
  %i.hj = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv239.epil.init ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.hj, align 1, !tbaa !16
  %i.hk = zext i8 %i.hi to i32                    ; 2 uses
  %i.hl = lshr i32 %i.hk, 4
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !16
  %i.hp = getelementptr i8, ptr %i.hj, i64 4
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !16
  %i.hq = and i32 %i.hk, 15
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !16
  %i.hu = getelementptr i8, ptr %i.hj, i64 5
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.epil.preheader, %.loopexit.loopexit283.unr-lcssa, %.lr.ph228.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ad, %bb.z, %bb.t, %bb.s, %bb.ae, %bb.af, %bb.ah, %bb.ag, %bb.e, %bb.d, %.critedge
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !809
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %bb.ai, label %.critedge200

bb.ai:                                            ; preds = %.loopexit
  %i.hy = call i32 @sqlite3_str_length(ptr noundef %1) #45
  %i.hz = sub nsw i32 %i.hy, %i.b
  %i.ia = load i32, ptr %i.hv, align 4, !tbaa !809 ; 2 uses
  %i.ib = icmp sgt i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.aj, label %.critedge200

bb.aj:                                            ; preds = %bb.ai
  %i.ic = call ptr @sqlite3_str_value(ptr noundef %1) #45
  %i.id = sext i32 %i.b to i64
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 %i.id
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ia, i32 4) ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.thread213, %bb.aj
  %.0171 = phi i32 [ 0, %bb.aj ], [ %.4, %.thread213 ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.aj ], [ %.1, %.thread213 ] ; 7 uses
  %i.if = sext i32 %.0171 to i64
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 %i.if ; 10 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !16  ; 4 uses
  %i.ii = icmp ult i8 %i.ih, 32
  br i1 %i.ii, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.ih, label %.thread213 [
    i8 27, label %bb.am
    i8 0, label %bb.bh
  ]

bb.am:                                            ; preds = %bb.al
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !16
  %.not.i203 = icmp eq i8 %i.ik, 91
  br i1 %.not.i203, label %.preheader.i, label %.thread212

.preheader.i:                                     ; preds = %bb.am, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.am ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.i
  %i.im = load i8, ptr %i.il, align 1, !tbaa !16
  %i.in = and i8 %i.im, -16
  %or.cond.i = icmp eq i8 %i.in, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i204, !llvm.loop !18

.critedge.i204:                                   ; preds = %.preheader.i, %.critedge.i204
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i204 ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv25.i
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !16  ; 2 uses
  %i.iq = and i8 %i.ip, -16
  %or.cond22.i = icmp eq i8 %i.iq, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i204, label %.critedge2.i, !llvm.loop !19

.critedge2.i:                                     ; preds = %.critedge.i204
  %i.ir = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.is = add i8 %i.ip, -64
  %or.cond23.i = icmp ult i8 %i.is, 63
  %i.it = add nuw nsw i32 %i.ir, 1
  br i1 %or.cond23.i, label %.thread213, label %.thread212

.thread212:                                       ; preds = %bb.am, %.critedge2.i
  br label %.thread213

bb.an:                                            ; preds = %bb.ak
  %i.iu = icmp sgt i8 %i.ih, -1
  br i1 %i.iu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iv = add nsw i32 %.0, 1                      ; 2 uses
  %.not198 = icmp slt i32 %.0, %spec.store.select
  br i1 %.not198, label %.thread213, label %bb.bh

bb.ap:                                            ; preds = %bb.an
  %i.iw = zext i8 %i.ih to i32                    ; 6 uses
  %i.ix = and i32 %i.iw, 224
  %i.iy = icmp eq i32 %i.ix, 192
  br i1 %i.iy, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !16
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = and i32 %i.jb, 192
  %i.jd = icmp eq i32 %i.jc, 128
  br i1 %i.jd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.je = shl nuw nsw i32 %i.iw, 6
  %i.jf = and i32 %i.je, 1984
  %i.jg = and i32 %i.jb, 63
end_hunk_5
begin_hunk_6_@qrfSplitColumn:bb.a
  %i.au = shl nsw i32 %i.ah, 1
  %i.av = add nsw i32 %.0.lcssa.i, %i.au
  %i.aw = icmp sgt i32 %i.av, %i.n
  br i1 %i.aw, label %bb.g, label %qrfValidLayout.exit

bb.g:                                             ; preds = %._crit_edge52.i
  tail call void @sqlite3_free(ptr noundef nonnull %i.l) #45
  br label %qrfValidLayout.exit.thread

qrfValidLayout.exit:                              ; preds = %._crit_edge52.i
  tail call void @sqlite3_free(ptr noundef %.0135173) #45
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !71  ; 2 uses
  %i.ay = add i64 %i.p, %i.ax
  %i.az = sdiv i64 %i.ay, %i.m                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %qrfValidLayout.exit.thread, label %.preheader157

.preheader157:                                    ; preds = %qrfValidLayout.exit
  %i.bb = sext i32 %.0132174 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader157, %bb.h
  %indvars.iv = phi i64 [ %i.bb, %.preheader157 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.bc = add i64 %i.ax, %indvars.iv
  %i.bd = sdiv i64 %i.bc, %indvars.iv.next
  %i.be = icmp eq i64 %i.bd, %i.az
  br i1 %i.be, label %bb.h, label %.loopexit, !llvm.loop !812

qrfValidLayout.exit.thread:                       ; preds = %qrfValidLayout.exit, %bb.g, %._crit_edge
  %.1136.ph = phi ptr [ %.0135173, %bb.g ], [ %.0135.lcssa, %._crit_edge ], [ %i.l, %qrfValidLayout.exit ] ; 5 uses
  %.1130.ph = phi i64 [ %.0129175, %bb.g ], [ %.0129.lcssa, %._crit_edge ], [ 1, %qrfValidLayout.exit ] ; 5 uses
  %.1.ph = phi i32 [ %.0176, %bb.g ], [ %.0.lcssa, %._crit_edge ], [ %.0132174, %qrfValidLayout.exit ] ; 9 uses
  %i.bf = icmp eq i32 %.1.ph, 1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %qrfValidLayout.exit.thread
  tail call void @sqlite3_free(ptr noundef %.1136.ph) #45
  br label %bb.v

bb.j:                                             ; preds = %qrfValidLayout.exit.thread
  %i.bg = sext i32 %.1.ph to i64                  ; 8 uses
  %i.bh = mul nsw i64 %.1130.ph, %i.bg            ; 7 uses
  %i.bi = shl i64 %i.bh, 3
  %i.bj = tail call ptr @sqlite3_malloc64(i64 noundef %i.bi) #45 ; 7 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bl = shl i64 %i.bh, 2
  %i.bm = tail call ptr @sqlite3_malloc64(i64 noundef %i.bl) #45 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #45
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.bo = mul nsw i64 %i.bg, 24
  %i.bp = tail call ptr @sqlite3_malloc64(i64 noundef %i.bo) #45 ; 15 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.bm) #45
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.br = tail call ptr @sqlite3_malloc64(i64 noundef %i.bh) #45 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.q, label %.preheader156

.preheader156:                                    ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !71
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph180, label %.preheader155

.lr.ph180:                                        ; preds = %.preheader156
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %i.bw, align 8, !tbaa !75
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.bm) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.bp) #45
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.v

.preheader155:                                    ; preds = %bb.r, %.preheader156
  %.0127.lcssa = phi i64 [ 0, %.preheader156 ], [ %i.cs, %bb.r ] ; 2 uses
  %i.bz = icmp slt i64 %.0127.lcssa, %i.bh
  br i1 %i.bz, label %.lr.ph183, label %.preheader

bb.r:                                             ; preds = %.lr.ph180, %bb.r
  %i.ca = phi ptr [ %.pre, %.lr.ph180 ], [ %i.cm, %bb.r ]
  %.0127179 = phi i64 [ 0, %.lr.ph180 ], [ %i.cs, %bb.r ] ; 7 uses
  %i.cb = srem i64 %.0127179, %.1130.ph
  %i.cc = mul nsw i64 %i.cb, %i.bg
  %i.cd = sdiv i64 %.0127179, %.1130.ph
  %i.ce = add nsw i64 %i.cc, %i.cd                ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0127179
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !66
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ce
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !66
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0127179
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  %i.cl = getelementptr inbounds i8, ptr %i.br, i64 %i.ce
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !16
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !75 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.0127179
  store ptr null, ptr %i.cn, align 8, !tbaa !66
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0127179
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !17
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ce
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !17
  %i.cs = add nuw nsw i64 %.0127179, 1            ; 3 uses
  %i.ct = load i64, ptr %i.bt, align 8, !tbaa !71
  %i.cu = icmp slt i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.r, label %.preheader155, !llvm.loop !816

.preheader:                                       ; preds = %bb.t, %.preheader155
  %i.cv = icmp sgt i32 %.1.ph, 0                  ; 2 uses
  br i1 %i.cv, label %.lr.ph185, label %._crit_edge186

.lr.ph185:                                        ; preds = %.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.pre211 = load i8, ptr %i.cy, align 8, !tbaa !79 ; 3 uses
  %unroll_iter = and i64 %i.bg, 2147483646
  br label %bb.u

.lr.ph183:                                        ; preds = %.preheader155, %bb.t
  %.1128182 = phi i64 [ %i.di, %bb.t ], [ %.0127.lcssa, %.preheader155 ] ; 3 uses
  %i.cz = srem i64 %.1128182, %.1130.ph
  %i.da = mul nsw i64 %i.cz, %i.bg
  %i.db = sdiv i64 %.1128182, %.1130.ph
  %i.dc = add nsw i64 %i.da, %i.db                ; 3 uses
  %i.dd = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.48) #45 ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.dc
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !66
  %i.df = icmp eq ptr %i.dd, null
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph183
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph183
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.dc
  store i32 0, ptr %i.dg, align 4, !tbaa !17
  %i.dh = getelementptr inbounds i8, ptr %i.br, i64 %i.dc
  store i8 0, ptr %i.dh, align 1, !tbaa !16
  %i.di = add nuw i64 %.1128182, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %i.bh
  br i1 %exitcond.not, label %.preheader, label %.lr.ph183, !llvm.loop !817

bb.u:                                             ; preds = %bb.u, %.lr.ph185
  %.2184 = phi i64 [ 0, %.lr.ph185 ], [ %i.ea, %bb.u ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph185 ], [ %niter.next.1, %bb.u ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %.2184
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !17 ; 3 uses
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.2184 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %i.dk, ptr %i.dm, align 8, !tbaa !86
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !68
  %i.do = trunc i32 %i.dk to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 17
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !85
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i8 %.pre211, ptr %i.dq, align 8, !tbaa !79
  %i.dr = or disjoint i64 %.2184, 1               ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !17 ; 3 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.dr ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.dt, ptr %i.dv, align 8, !tbaa !86
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 %i.dt, ptr %i.dw, align 4, !tbaa !68
  %i.dx = trunc i32 %i.dt to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 17
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !85
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i8 %.pre211, ptr %i.dz, align 8, !tbaa !79
  %i.ea = add nuw nsw i64 %.2184, 2               ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge186.loopexit.unr-lcssa, label %bb.u, !llvm.loop !818

._crit_edge186.loopexit.unr-lcssa:                ; preds = %bb.u
  %i.eb = and i32 %.1.ph, 1
  %lcmp.mod.not = icmp eq i32 %i.eb, 0
  br i1 %lcmp.mod.not, label %._crit_edge186, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge186.loopexit.unr-lcssa
  %lcmp.mod287 = trunc i32 %.1.ph to i1
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.1136.ph, i64 %i.ea
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !17 ; 3 uses
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.ea ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %i.ed, ptr %i.ef, align 8, !tbaa !86
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 %i.ed, ptr %i.eg, align 4, !tbaa !68
  %i.eh = trunc i32 %i.ed to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 17
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !85
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i8 %.pre211, ptr %i.ej, align 8, !tbaa !79
  br label %._crit_edge186

._crit_edge186:                                   ; preds = %.epil.preheader, %._crit_edge186.loopexit.unr-lcssa, %.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !75
  tail call void @sqlite3_free(ptr noundef %i.el) #45
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !77
  tail call void @sqlite3_free(ptr noundef %i.en) #45
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !64
  tail call void @sqlite3_free(ptr noundef %i.ep) #45
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !65
  tail call void @sqlite3_free(ptr noundef %i.er) #45
  tail call void @sqlite3_free(ptr noundef %.1136.ph) #45
  store ptr %i.bj, ptr %i.ek, align 8, !tbaa !75
  store ptr %i.bm, ptr %i.em, align 8, !tbaa !77
  store ptr %i.bp, ptr %i.eo, align 8, !tbaa !64
  store ptr %i.br, ptr %i.eq, align 8, !tbaa !65
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.ph, ptr %i.es, align 8, !tbaa !59
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bh, ptr %i.et, align 8, !tbaa !72
  store i64 %i.bh, ptr %i.bt, align 8, !tbaa !71
  br i1 %i.cv, label %.lr.ph190.preheader, label %._crit_edge191

.lr.ph190.preheader:                              ; preds = %._crit_edge186
  %min.iters.check255 = icmp ult i32 %.1.ph, 9
  br i1 %min.iters.check255, label %.lr.ph190.preheader267, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph190.preheader
  %i.eu = and i64 %i.bg, 7
  %i.ev = and i32 %.1.ph, 7
  %i.ew = icmp eq i32 %i.ev, 0
  %i.ex = select i1 %i.ew, i64 8, i64 %i.eu
  %n.vec257 = sub nsw i64 %i.bg, %i.ex            ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next262, %vector.body258 ] ; 9 uses
  %vec.phi260 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.ge, %vector.body258 ]
  %vec.phi261 = phi <4 x i32> [ zeroinitializer, %vector.ph256 ], [ %i.gf, %vector.body258 ]
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %index259
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 104
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 128
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 152
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 176
  %i.fo = load i32, ptr %i.fg, align 8, !tbaa !86
  %i.fp = load i32, ptr %i.fh, align 8, !tbaa !86
  %i.fq = load i32, ptr %i.fi, align 8, !tbaa !86
  %i.fr = load i32, ptr %i.fj, align 8, !tbaa !86
  %i.fs = insertelement <4 x i32> poison, i32 %i.fo, i64 0
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 1
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 2
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fr, i64 3
  %i.fw = load i32, ptr %i.fk, align 8, !tbaa !86
  %i.fx = load i32, ptr %i.fl, align 8, !tbaa !86
  %i.fy = load i32, ptr %i.fm, align 8, !tbaa !86
  %i.fz = load i32, ptr %i.fn, align 8, !tbaa !86
  %i.ga = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %i.gb = insertelement <4 x i32> %i.ga, i32 %i.fx, i64 1
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.fy, i64 2
  %i.gd = insertelement <4 x i32> %i.gc, i32 %i.fz, i64 3
  %i.ge = add <4 x i32> %i.fv, %vec.phi260        ; 2 uses
  %i.gf = add <4 x i32> %i.gd, %vec.phi261        ; 2 uses
  %index.next262 = add nuw i64 %index259, 8       ; 2 uses
  %i.gg = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.gg, label %middle.block263, label %vector.body258, !llvm.loop !819

middle.block263:                                  ; preds = %vector.body258
  %bin.rdx264 = add <4 x i32> %i.gf, %i.ge
  %i.gh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264)
  br label %.lr.ph190.preheader267

.lr.ph190.preheader267:                           ; preds = %.lr.ph190.preheader, %middle.block263
  %.3188.ph = phi i64 [ 0, %.lr.ph190.preheader ], [ %n.vec257, %middle.block263 ]
  %.0131187.ph = phi i32 [ 0, %.lr.ph190.preheader ], [ %i.gh, %middle.block263 ]
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190.preheader267, %.lr.ph190
  %.3188 = phi i64 [ %i.gm, %.lr.ph190 ], [ %.3188.ph, %.lr.ph190.preheader267 ] ; 2 uses
  %.0131187 = phi i32 [ %i.gl, %.lr.ph190 ], [ %.0131187.ph, %.lr.ph190.preheader267 ]
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.3188
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !86
  %i.gl = add nsw i32 %i.gk, %.0131187            ; 2 uses
  %i.gm = add nuw nsw i64 %.3188, 1               ; 2 uses
  %exitcond210.not = icmp eq i64 %i.gm, %i.bg
  br i1 %exitcond210.not, label %._crit_edge191, label %.lr.ph190, !llvm.loop !820

._crit_edge191:                                   ; preds = %.lr.ph190, %._crit_edge186
  %.0131.lcssa = phi i32 [ 0, %._crit_edge186 ], [ %i.gl, %.lr.ph190 ]
  %i.gn = load i16, ptr %i.a, align 8, !tbaa !43
  %i.go = sext i16 %i.gn to i32
  %i.gp = sub nsw i32 %i.go, %.0131.lcssa
  %i.gq = add nsw i32 %.1.ph, -1
  %i.gr = sdiv i32 %i.gp, %i.gq                   ; 2 uses
  %i.gs = trunc i32 %i.gr to i8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.gu = and i32 %i.gr, 254
  %i.gv = icmp samesign ugt i32 %i.gu, 5
  %spec.select = select i1 %i.gv, i8 5, i8 %i.gs
  store i8 %spec.select, ptr %i.gt, align 1, !tbaa !88
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge191, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfBoxSeparator(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.f = load i8, ptr %i.e, align 4, !tbaa !89
  %.not = icmp eq i8 %i.f, 1                      ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %2) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !88
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.j, %i.m                   ; 2 uses
  %i.o = mul nsw i32 %i.n, 3                      ; 2 uses
  %i.p = icmp sgt i32 %i.n, 10
  %i.q = zext nneg i32 %5 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @__const.qrfBoxLine.azDash, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66   ; 4 uses
  br i1 %i.p, label %.lr.ph.i, label %qrfBoxLine.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.o, %bb.d ] ; 2 uses
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %i.s, i32 noundef 30) #45
  %i.t = add nsw i32 %.07.i, -30                  ; 2 uses
  %i.u = icmp sgt i32 %.07.i, 60
  br i1 %i.u, label %.lr.ph.i, label %qrfBoxLine.exit, !llvm.loop !821

qrfBoxLine.exit:                                  ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ %i.o, %bb.d ], [ %i.t, %.lr.ph.i ]
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %i.s, i32 noundef %.0.lcssa.i) #45
  %i.v = load i32, ptr %i.a, align 8, !tbaa !59
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %qrfBoxLine.exit, %qrfBoxLine.exit25
  %indvars.iv = phi i64 [ %indvars.iv.next, %qrfBoxLine.exit25 ], [ 1, %qrfBoxLine.exit ] ; 2 uses
  tail call void @sqlite3_str_appendall(ptr noundef %0, ptr noundef %3) #45
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !86
end_hunk_6
begin_hunk_7_@decimal_cmp:bb.a
  %i.aa = add nsw i32 %i.u, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !190
  %i.ab = icmp sgt i32 %i.u, 1
  br i1 %i.ab, label %bb.d, label %.critedge2, !llvm.loop !876

.critedge2:                                       ; preds = %bb.d, %bb.e, %.critedge
  %i.ac = load i8, ptr %0, align 8, !tbaa !188    ; 2 uses
  %i.ad = load i8, ptr %1, align 8, !tbaa !188
  %.not = icmp eq i8 %i.ac, %i.ad
  %.not48 = icmp eq i8 %i.ac, 0                   ; 3 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge2
  %i.ae = select i1 %.not48, i32 1, i32 -1
  br label %bb.j

bb.g:                                             ; preds = %.critedge2
  %spec.select = select i1 %.not48, ptr %0, ptr %1 ; 3 uses
  %spec.select51 = select i1 %.not48, ptr %1, ptr %0 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !180 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !190
  %i.aj = sub nsw i32 %i.ag, %i.ai                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select51, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !180 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select51, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !190
  %i.ao = sub nsw i32 %i.al, %i.an                ; 2 uses
  %.not49 = icmp eq i32 %i.aj, %i.ao
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = sub nsw i32 %i.aj, %i.ao
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %spec.select52 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.al)
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !182
  %i.as = getelementptr inbounds nuw i8, ptr %spec.select51, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !182
  %i.au = sext i32 %spec.select52 to i64
  %i.av = tail call i32 @memcmp(ptr noundef %i.ar, ptr noundef %i.at, i64 noundef %i.au) #46 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = sub nsw i32 %i.ag, %i.al
  %spec.select53 = select i1 %i.aw, i32 %i.ax, i32 %i.av
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ %i.ae, %bb.f ], [ %i.ap, %bb.h ], [ %spec.select53, %bb.i ]
  ret i32 %.0
}

declare void @sqlite3_result_int(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_add(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !185
  %i.d = icmp ne i8 %i.c, 0
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !185
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i8 1, ptr %i.b, align 1, !tbaa !185
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !187
  %.not95 = icmp eq i8 %i.i, 0
  br i1 %.not95, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !187
  %.not96 = icmp eq i8 %i.k, 0
  br i1 %.not96, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 1, ptr %i.h, align 2, !tbaa !187
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !180  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !190  ; 3 uses
  %.not97 = icmp eq i32 %i.m, %i.o
  br i1 %.not97, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = sub i32 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = icmp eq i8 %i.s, 0
  %i.u = sext i1 %i.t to i32
  %spec.select = add nsw i32 %i.p, %i.u
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.082 = phi i32 [ 0, %bb.h ], [ %spec.select, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !180
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !190  ; 2 uses
  %i.z = sub nsw i32 %i.w, %i.y
  %spec.select101 = tail call i32 @llvm.smax.i32(i32 %.082, i32 %i.z)
  %.081 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 %i.y) ; 3 uses
  %i.aa = add nsw i32 %spec.select101, %.081      ; 7 uses
  %i.ab = add nsw i32 %i.aa, 1                    ; 3 uses
  tail call fastcc void @decimal_expand(ptr noundef %0, i32 noundef %i.ab, i32 noundef %.081)
  tail call fastcc void @decimal_expand(ptr noundef %1, i32 noundef %i.ab, i32 noundef %.081)
  %i.ac = load i8, ptr %i.b, align 1, !tbaa !185
  %.not98 = icmp eq i8 %i.ac, 0
  br i1 %.not98, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %i.f, align 1, !tbaa !185
  %.not99 = icmp eq i8 %i.ad, 0
  br i1 %.not99, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i8 1, ptr %i.b, align 1, !tbaa !185
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ae = load i8, ptr %0, align 8, !tbaa !188    ; 2 uses
  %i.af = load i8, ptr %1, align 8, !tbaa !188
  %i.ag = icmp eq i8 %i.ae, %i.af
  br i1 %i.ag, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.m
  %i.ah = icmp sgt i32 %i.aa, -1
  br i1 %i.ah, label %.lr.ph109, label %.loopexit

.lr.ph109:                                        ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ak = zext nneg i32 %i.aa to i64              ; 4 uses
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %i.am = icmp eq i32 %i.aa, 0
  br i1 %i.am, label %.epil.preheader, label %.lr.ph109.new

.lr.ph109.new:                                    ; preds = %.lr.ph109
  %unroll_iter133 = and i64 %i.al, 4294967294
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph109.new
  %indvars.iv112 = phi i64 [ %i.ak, %.lr.ph109.new ], [ %indvars.iv.next113.1, %bb.n ] ; 4 uses
  %.077108 = phi i32 [ 0, %.lr.ph109.new ], [ %.178.1, %bb.n ]
  %niter134 = phi i64 [ 0, %.lr.ph109.new ], [ %niter134.next.1, %bb.n ]
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !182
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv112 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = sext i8 %i.ap to i32
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !182
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv112
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %.077108, %i.aq
  %i.aw = add nsw i32 %i.av, %i.au                ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 9                   ; 2 uses
  %i.ay = add nsw i32 %i.aw, 246
  %storemerge.in = select i1 %i.ax, i32 %i.ay, i32 %i.aw
  %.178 = zext i1 %i.ax to i32
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, ptr %i.ao, align 1, !tbaa !16
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, -1 ; 2 uses
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !182
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next113 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = sext i8 %i.bb to i32
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !182
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next113
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16
  %i.bg = sext i8 %i.bf to i32
  %i.bh = add nsw i32 %.178, %i.bc
  %i.bi = add nsw i32 %i.bh, %i.bg                ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 9                   ; 2 uses
  %i.bk = add nsw i32 %i.bi, 246
  %storemerge.in.1 = select i1 %i.bj, i32 %i.bk, i32 %i.bi
  %.178.1 = zext i1 %i.bj to i32                  ; 2 uses
  %storemerge.1 = trunc i32 %storemerge.in.1 to i8
  store i8 %storemerge.1, ptr %i.ba, align 1, !tbaa !16
  %indvars.iv.next113.1 = add nsw i64 %indvars.iv112, -2 ; 2 uses
  %niter134.next.1 = add i64 %niter134, 2         ; 2 uses
  %niter134.ncmp.1 = icmp eq i64 %niter134.next.1, %unroll_iter133
  br i1 %niter134.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n, !llvm.loop !877

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !182 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !182 ; 3 uses
  %i.bp = sext i32 %i.ab to i64
  %i.bq = tail call i32 @memcmp(ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.bp) #46
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.not100 = icmp eq i8 %i.ae, 0
  %i.bs = zext i1 %.not100 to i8
  store i8 %i.bs, ptr %0, align 8, !tbaa !188
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.076 = phi ptr [ %i.bo, %bb.p ], [ %i.bm, %bb.o ] ; 3 uses
  %.075 = phi ptr [ %i.bm, %bb.p ], [ %i.bo, %bb.o ] ; 3 uses
  %i.bt = icmp sgt i32 %i.aa, -1
  br i1 %i.bt, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bu = zext nneg i32 %i.aa to i64              ; 4 uses
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %i.bw = icmp eq i32 %i.aa, 0
  br i1 %i.bw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bv, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.bu, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.0106 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.lobit.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.076, i64 %indvars.iv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = sext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.075, i64 %indvars.iv
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cc = sext i8 %i.cb to i32
  %i.cd = add nsw i32 %.0106, %i.cc
  %i.ce = sub nsw i32 %i.bz, %i.cd                ; 3 uses
  %i.cf = icmp slt i32 %i.ce, 0
  %i.cg = trunc i32 %i.ce to i8                   ; 2 uses
  %i.ch = add i8 %i.cg, 10
  %.sink = select i1 %i.cf, i8 %i.ch, i8 %i.cg
  %.lobit = lshr i32 %i.ce, 31
  %i.ci = load ptr, ptr %i.bl, align 8, !tbaa !182
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv
  store i8 %.sink, ptr %i.cj, align 1, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.076, i64 %indvars.iv.next
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = sext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.075, i64 %indvars.iv.next
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !16
  %i.cp = sext i8 %i.co to i32
  %i.cq = add nsw i32 %.lobit, %i.cp
  %i.cr = sub nsw i32 %i.cm, %i.cq                ; 3 uses
  %i.cs = icmp slt i32 %i.cr, 0
  %i.ct = trunc i32 %i.cr to i8                   ; 2 uses
  %i.cu = add i8 %i.ct, 10
  %.sink.1 = select i1 %i.cs, i8 %i.cu, i8 %i.ct
  %.lobit.1 = lshr i32 %i.cr, 31                  ; 2 uses
  %i.cv = load ptr, ptr %i.bl, align 8, !tbaa !182
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv.next
  store i8 %.sink.1, ptr %i.cw, align 1, !tbaa !16
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit128.unr-lcssa, label %.lr.ph, !llvm.loop !878

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %i.cx = and i64 %i.ak, 1
  %lcmp.mod131.not.not = icmp eq i64 %i.cx, 0
  br i1 %lcmp.mod131.not.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph109
  %indvars.iv112.epil.init = phi i64 [ %i.ak, %.lr.ph109 ], [ %indvars.iv.next113.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.077108.epil.init = phi i32 [ 0, %.lr.ph109 ], [ %.178.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.cy = load ptr, ptr %i.ai, align 8, !tbaa !182
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv112.epil.init ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !16
  %i.db = sext i8 %i.da to i32
  %i.dc = load ptr, ptr %i.aj, align 8, !tbaa !182
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv112.epil.init
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !16
  %i.df = sext i8 %i.de to i32
  %i.dg = add nsw i32 %.077108.epil.init, %i.db
  %i.dh = add nsw i32 %i.dg, %i.df                ; 3 uses
  %i.di = icmp sgt i32 %i.dh, 9
  %i.dj = add nsw i32 %i.dh, 246
  %storemerge.in.epil = select i1 %i.di, i32 %i.dj, i32 %i.dh
  %storemerge.epil = trunc i32 %storemerge.in.epil to i8
  store i8 %storemerge.epil, ptr %i.cz, align 1, !tbaa !16
  br label %.loopexit

.loopexit.loopexit128.unr-lcssa:                  ; preds = %.lr.ph
  %i.dk = and i64 %i.bu, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit128.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ %i.bu, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit128.unr-lcssa ] ; 3 uses
  %.0106.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.lobit.1, %.loopexit.loopexit128.unr-lcssa ]
  %lcmp.mod129 = trunc i64 %i.bv to i1
  tail call void @llvm.assume(i1 %lcmp.mod129)
  %i.dl = getelementptr inbounds nuw i8, ptr %.076, i64 %indvars.iv.epil.init
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !16
  %i.dn = sext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %.075, i64 %indvars.iv.epil.init
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16
  %i.dq = sext i8 %i.dp to i32
  %i.dr = add nsw i32 %.0106.epil.init, %i.dq
  %i.ds = sub nsw i32 %i.dn, %i.dr                ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  %i.du = trunc i32 %i.ds to i8                   ; 2 uses
  %i.dv = add i8 %i.du, 10
  %.sink.epil = select i1 %i.dt, i8 %i.dv, i8 %i.du
  %i.dw = load ptr, ptr %i.bl, align 8, !tbaa !182
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv.epil.init
  store i8 %.sink.epil, ptr %i.dx, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit128.unr-lcssa, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.q, %.preheader, %bb.l, %bb.a, %bb.g, %bb.d
  ret void
}

declare i32 @sqlite3_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_errcode(ptr noundef) local_unnamed_addr #5

declare void @sqlite3_result_zeroblob(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_result_int64(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @sqlite3_result_double(ptr noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @seriesConnect(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree readnone captures(none) %5) #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull @.str.317) #45 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @sqlite3_malloc64(i64 noundef 24) #45 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !879
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.e = tail call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %0, i32 noundef 2) #45 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ 7, %bb.b ], [ 0, %bb.c ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 20) i32 @seriesBestIndex(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #4 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 -1, i64 28, i1 false)
  %i.h = load i32, ptr %1, align 8, !tbaa !881    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.aa

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !886
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %.0110 = phi ptr [ %i.bd, %bb.w ], [ %i.l, %.lr.ph.preheader ] ; 6 uses
  %.084109 = phi i32 [ %.185, %bb.w ], [ 0, %.lr.ph.preheader ] ; 18 uses
  %.086108 = phi i32 [ %.3, %bb.w ], [ 0, %.lr.ph.preheader ] ; 14 uses
  %.088107 = phi i32 [ %.4, %bb.w ], [ 0, %.lr.ph.preheader ] ; 22 uses
  %.092106 = phi i32 [ %i.bc, %bb.w ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0110, i64 4
  %i.n = load i8, ptr %i.m, align 4, !tbaa !887   ; 4 uses
  %i.o = zext i8 %i.n to i32
  %i.p = add i8 %i.n, -73
  %or.cond = icmp ult i8 %i.p, 2
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.0110, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !889
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = icmp eq i8 %i.n, 73
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %.092106, ptr %i.e, align 4, !tbaa !17
  %i.u = or i32 %.088107, 32
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  store i32 %.092106, ptr %i.d, align 16, !tbaa !17
  %i.v = or i32 %.088107, 64
  br label %bb.w

bb.f:                                             ; preds = %.lr.ph
  %i.w = load i32, ptr %.0110, align 4, !tbaa !890 ; 3 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.y = icmp slt i32 %i.w, -1
  br i1 %i.y, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.0110, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !889
  %.not101 = icmp eq i8 %i.aa, 0
  br i1 %.not101, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.o, -2                    ; 2 uses
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 31)
  switch i32 %i.ac, label %bb.w [
    i32 0, label %bb.j
    i32 35, label %bb.j
    i32 15, label %bb.k
    i32 1, label %bb.m
    i32 3, label %bb.o
    i32 7, label %bb.q
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ad = and i32 %.088107, -13185
  %i.ae = or disjoint i32 %i.ad, 128
  store i32 %.092106, ptr %i.c, align 4, !tbaa !17
  store i32 -1, ptr %i.b, align 8, !tbaa !17
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.af = and i32 %.088107, 128
  %.not105 = icmp eq i32 %i.af, 0
  br i1 %.not105, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ag = and i32 %.088107, -897
  %i.ah = or disjoint i32 %i.ag, 256
  store i32 %.092106, ptr %i.c, align 4, !tbaa !17
  br label %bb.w

bb.m:                                             ; preds = %bb.i
  %i.ai = and i32 %.088107, 128
  %.not104 = icmp eq i32 %i.ai, 0
end_hunk_7
begin_hunk_8_@zipfileConnect:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = tail call i32 @sqlite3_stricmp(ptr noundef %i.b, ptr noundef nonnull @.str.358) #45
  %i.d = icmp ne i32 %i.c, 0
  %i.e = icmp slt i32 %2, 4
  %or.cond = and i1 %i.e, %i.d
  %i.f = icmp sgt i32 %2, 4
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.360) #45
  store ptr %i.g, ptr %5, align 8, !tbaa !66
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %2, 3
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #46
  %i.l = trunc i64 %i.k to i32
  %i.m = add nsw i32 %i.l, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.034 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ]   ; 2 uses
  %.033 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.n = tail call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull @ZIPFILE_SCHEMA) #45 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %zipfileDequote.exit

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %.034 to i64                    ; 2 uses
  %i.q = add nsw i64 %i.p, 204904
  %i.r = tail call ptr @sqlite3_malloc64(i64 noundef %i.q) #45 ; 11 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %.034, 204904
  %i.u = sext i32 %i.t to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %0, ptr %i.v, align 8, !tbaa !982
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.w, ptr %i.x, align 8, !tbaa !986
  %.not = icmp eq ptr %.033, null
  br i1 %.not, label %zipfileDequote.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 204904 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !987
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %.033, i64 %i.p, i1 false)
  %i.aa = load i8, ptr %i.y, align 8, !tbaa !16   ; 3 uses
  switch i8 %i.aa, label %zipfileDequote.exit [
    i8 96, label %bb.i
    i8 91, label %bb.i
    i8 39, label %bb.i
    i8 34, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.ab = icmp eq i8 %i.aa, 91
  %spec.store.select.i = select i1 %i.ab, i8 93, i8 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 204905
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16  ; 2 uses
  %.not38.i = icmp eq i8 %i.ad, 0
  br i1 %.not38.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %i.ae = phi i8 [ %i.ap, %bb.k ], [ %i.ad, %bb.i ] ; 2 uses
  %.02840.i = phi i32 [ %i.al, %bb.k ], [ 0, %bb.i ]
  %.02939.i = phi i32 [ %.130.i, %bb.k ], [ 1, %bb.i ] ; 2 uses
  %i.af = add nsw i32 %.02939.i, 1                ; 2 uses
  %i.ag = icmp eq i8 %i.ae, %spec.store.select.i
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.ah = add nsw i32 %.02939.i, 2
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %.not34.i = icmp eq i8 %i.ak, %spec.store.select.i
  br i1 %.not34.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %.130.i = phi i32 [ %i.ah, %bb.j ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.al = add nuw nsw i32 %.02840.i, 1            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.i
  store i8 %i.ae, ptr %i.am, align 1, !tbaa !16
  %i.an = sext i32 %.130.i to i64
  %i.ao = getelementptr inbounds i8, ptr %i.y, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16  ; 2 uses
  %.not.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i, label %.thread.loopexit.i.loopexit, label %.lr.ph.i

.thread.loopexit.i.loopexit:                      ; preds = %bb.k
  %i.aq = zext nneg i32 %i.al to i64
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %.thread.loopexit.i.loopexit, %bb.i
  %.028.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.aq, %.thread.loopexit.i.loopexit ], [ %indvars.iv.i, %bb.j ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %.028.lcssa.i
  store i8 0, ptr %i.ar, align 1, !tbaa !16
  br label %zipfileDequote.exit

zipfileDequote.exit:                              ; preds = %.thread.i, %bb.h, %bb.g, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %i.r, %bb.g ], [ %i.r, %bb.h ], [ %i.r, %.thread.i ]
  %i.as = tail call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %0, i32 noundef 3) #45 ; 0 uses
  store ptr %.0, ptr %4, align 8, !tbaa !879
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %zipfileDequote.exit, %bb.b
  %.035 = phi i32 [ 1, %bb.b ], [ %i.n, %zipfileDequote.exit ], [ 7, %bb.f ]
  ret i32 %.035
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 20) i32 @zipfileBestIndex(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #29 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !881    ; 4 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 1.000000e+03, ptr %i.c, align 8, !tbaa !899
  br label %bb.m

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !886  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.a, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 4 uses
  %.025 = phi i32 [ 0, %.lr.ph.new ], [ %.2.1, %bb.h ] ; 2 uses
  %.01724 = phi i32 [ -1, %.lr.ph.new ], [ %.219.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !890
  %.not22 = icmp eq i32 %i.h, 7
  br i1 %.not22, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.j = load i8, ptr %i.i, align 1, !tbaa !889
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !887
  %i.n = icmp eq i8 %i.m, 2
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.n, i32 %i.o, i32 %.01724
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.219 = phi i32 [ %.01724, %bb.b ], [ %spec.select, %bb.d ], [ %.01724, %bb.c ] ; 3 uses
  %.2 = phi i32 [ %.025, %bb.b ], [ %.025, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !890
  %.not22.1 = icmp eq i32 %i.q, 7
  br i1 %.not22.1, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !889
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i8, ptr %i.u, align 4, !tbaa !887
  %i.w = icmp eq i8 %i.v, 2
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select.1 = select i1 %i.w, i32 %i.x, i32 %.219
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.219.1 = phi i32 [ %.219, %bb.e ], [ %spec.select.1, %bb.g ], [ %.219, %bb.f ] ; 3 uses
  %.2.1 = phi i32 [ %.2, %bb.e ], [ %.2, %bb.g ], [ 1, %bb.f ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !988

._crit_edge.unr-lcssa:                            ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.025.epil.init = phi i32 [ 0, %.lr.ph ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01724.epil.init = phi i32 [ -1, %.lr.ph ], [ %.219.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !890
  %.not22.epil = icmp eq i32 %i.z, 7
  br i1 %.not22.epil, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %.epil.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !889
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !887
  %i.af = icmp eq i8 %i.ae, 2
  %i.ag = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %spec.select.epil = select i1 %i.af, i32 %i.ag, i32 %.01724.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.i, %bb.j, %._crit_edge.unr-lcssa
  %.219.lcssa = phi i32 [ %.219.1, %._crit_edge.unr-lcssa ], [ %.01724.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.j ], [ %.01724.epil.init, %bb.i ] ; 2 uses
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge.unr-lcssa ], [ %.025.epil.init, %.epil.preheader ], [ %.025.epil.init, %bb.j ], [ 1, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 1.000000e+03, ptr %i.ah, align 8, !tbaa !899
  %i.ai = icmp sgt i32 %.219.lcssa, -1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !892
  %i.al = zext nneg i32 %.219.lcssa to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  store i32 1, ptr %i.am, align 4, !tbaa !893
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i8 1, ptr %i.an, align 4, !tbaa !895
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %i.ao, align 8, !tbaa !907
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ap = icmp eq i32 %.2.lcssa, 0
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread, %bb.l, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.021 = phi i32 [ 0, %bb.m ], [ 19, %bb.l ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zipfileDisconnect(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !989  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !989
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !990  ; 2 uses
  %.not1314.i = icmp eq ptr %i.e, null
  br i1 %.not1314.i, label %zipfileCleanupTransaction.exit, label %zipfileEntryFree.exit.i

zipfileEntryFree.exit.i:                          ; preds = %bb.c, %zipfileEntryFree.exit.i
  %.015.i = phi ptr [ %i.g, %zipfileEntryFree.exit.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.015.i, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !991  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !994
  tail call void @sqlite3_free(ptr noundef %i.i) #45
  tail call void @sqlite3_free(ptr noundef nonnull %.015.i) #45
  %.not13.i = icmp eq ptr %i.g, null
  br i1 %.not13.i, label %zipfileCleanupTransaction.exit, label %zipfileEntryFree.exit.i, !llvm.loop !995

zipfileCleanupTransaction.exit:                   ; preds = %zipfileEntryFree.exit.i, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  tail call void @sqlite3_free(ptr noundef nonnull %0) #45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @zipfileOpen(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_malloc64(i64 noundef 80) #45 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !909
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !996
  %i.e = add nsw i64 %i.d, 1                      ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !996
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !997
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1000
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.h, ptr %i.i, align 8, !tbaa !1001
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1000
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zipfileClose(ptr noundef initializes((16, 17)) %0) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1002
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !1003
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1004 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  store ptr null, ptr %i.c, align 8, !tbaa !1004
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1005 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %zipfileEntryFree.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !994
  tail call void @sqlite3_free(ptr noundef %i.i) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.g) #45
  br label %zipfileEntryFree.exit.i

zipfileEntryFree.exit.i:                          ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.f, align 8, !tbaa !1005
  br label %bb.d

bb.d:                                             ; preds = %zipfileEntryFree.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1006 ; 2 uses
  %.not1316.i = icmp eq ptr %i.k, null
  br i1 %.not1316.i, label %zipfileResetCursor.exit, label %zipfileEntryFree.exit15.i

zipfileEntryFree.exit15.i:                        ; preds = %bb.d, %zipfileEntryFree.exit15.i
  %.017.i = phi ptr [ %i.m, %zipfileEntryFree.exit15.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.017.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !991  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.017.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !994
  tail call void @sqlite3_free(ptr noundef %i.o) #45
  tail call void @sqlite3_free(ptr noundef nonnull %.017.i) #45
  %.not13.i = icmp eq ptr %i.m, null
  br i1 %.not13.i, label %zipfileResetCursor.exit, label %zipfileEntryFree.exit15.i, !llvm.loop !1007

zipfileResetCursor.exit:                          ; preds = %zipfileEntryFree.exit15.i, %bb.d
  store ptr null, ptr %i.j, align 8, !tbaa !1006
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %zipfileResetCursor.exit
  %.0 = phi ptr [ %i.p, %zipfileResetCursor.exit ], [ %i.r, %bb.e ] ; 2 uses
  %i.q = load ptr, ptr %.0, align 8, !tbaa !1008  ; 2 uses
  %.not = icmp eq ptr %i.q, %0
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  br i1 %.not, label %bb.f, label %bb.e, !llvm.loop !1009

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1001
  store ptr %i.t, ptr %.0, align 8, !tbaa !1008
  tail call void @sqlite3_free(ptr noundef nonnull %0) #45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 12) i32 @zipfileFilter(ptr nofree noundef captures(none) initializes((16, 17)) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #4 {
bb.a:
end_hunk_8
begin_hunk_9_@idxCreateFromCons:bb.a

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x
  call void @sqlite3_free(ptr noundef nonnull %i.cu) #45
  call void @sqlite3_free(ptr noundef %i.db) #45
  br label %bb.ac

bb.ac:                                            ; preds = %.thread84, %bb.ab, %bb.w, %._crit_edge
  call void @sqlite3_free(ptr noundef %.164.lcssa) #45
  %.pre = load i32, ptr %i.c, align 4, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %idxFindCompatible.exit, %bb.a, %bb.ac
  %i.dg = phi i32 [ 0, %idxFindCompatible.exit ], [ 0, %bb.a ], [ %.pre, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  ret i32 %i.dg
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @idxAppendColDefn(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr nofree readonly captures(none) %.16.val, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !316
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [24 x i8], ptr %.16.val, i64 %i.c ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.397)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !263  ; 3 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #46
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.f, i32 noundef %i.h) #45
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %.preheader.i, label %.loopexit5

.preheader.i:                                     ; preds = %bb.c, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 3 uses
  switch i8 %i.k, label %bb.d [
    i8 0, label %.loopexit5
    i8 95, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader.i
  %i.l = add i8 %i.k, -48
  %or.cond.i = icmp ult i8 %i.l, 10
  %i.m = and i8 %i.k, -33
  %i.n = add i8 %i.m, -65
  %i.o = icmp ult i8 %i.n, 26
  %or.cond29.i = or i1 %or.cond.i, %i.o
  br i1 %or.cond29.i, label %bb.e, label %.loopexit5

bb.e:                                             ; preds = %bb.d, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %.preheader.i, !llvm.loop !1108

.loopexit5:                                       ; preds = %.preheader.i, %bb.d, %bb.c
  %.str.51.sink = phi ptr [ @.str.188, %bb.c ], [ @.str.188, %bb.d ], [ @.str.51, %.preheader.i ]
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !263
  %i.q = tail call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %0, ptr noundef %.0, ptr noundef nonnull %.str.51.sink, ptr noundef %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !266
  %i.t = load ptr, ptr %2, align 8, !tbaa !1094
  %i.u = tail call i32 @sqlite3_stricmp(ptr noundef %i.s, ptr noundef %i.t) #45
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.loopexit5
  %i.v = load ptr, ptr %2, align 8, !tbaa !1094   ; 3 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #46
  %i.x = trunc i64 %i.w to i32
  %i.y = tail call i32 @sqlite3_keyword_check(ptr noundef nonnull %i.v, i32 noundef %i.x) #45
  %.not.i32 = icmp eq i32 %i.y, 0
  br i1 %.not.i32, label %.preheader.i34, label %.sink.split

.preheader.i34:                                   ; preds = %bb.f, %bb.h
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i36, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i35
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16   ; 3 uses
  switch i8 %i.aa, label %bb.g [
    i8 0, label %.sink.split
    i8 95, label %bb.h
  ]

bb.g:                                             ; preds = %.preheader.i34
  %i.ab = add i8 %i.aa, -48
  %or.cond.i37 = icmp ult i8 %i.ab, 10
  %i.ac = and i8 %i.aa, -33
  %i.ad = add i8 %i.ac, -65
  %i.ae = icmp ult i8 %i.ad, 26
  %or.cond29.i38 = or i1 %or.cond.i37, %i.ae
  br i1 %or.cond29.i38, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g, %.preheader.i34
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1
  br label %.preheader.i34, !llvm.loop !1108

.sink.split:                                      ; preds = %.preheader.i34, %bb.g, %bb.f
  %.str.419.sink = phi ptr [ @.str.419, %bb.f ], [ @.str.419, %bb.g ], [ @.str.420, %.preheader.i34 ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !1094
  %i.ag = tail call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %0, ptr noundef %i.q, ptr noundef nonnull %.str.419.sink, ptr noundef %i.af)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.loopexit5
  %.2 = phi ptr [ %i.q, %.loopexit5 ], [ %i.ag, %.sink.split ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1097
  %.not31 = icmp eq i32 %i.ai, 0
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call ptr (ptr, ptr, ptr, ...) @idxAppendText(ptr noundef %0, ptr noundef %.2, ptr noundef nonnull @.str.421)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi ptr [ %i.aj, %bb.j ], [ %.2, %bb.i ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @countNonzeros(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #33 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16
  %.not = icmp eq i8 %i.c, 48
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %.not3 = icmp eq i8 %i.e, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load i32, ptr %0, align 4, !tbaa !17
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %0, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @idxHashAdd(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #46 ; 5 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %idxHashString.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = and i64 %i.a, 2147483647
  %i.d = add nsw i64 %wide.trip.count.i, -1
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.a, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.078.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ab, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
  %i.i = mul i32 %.078.i, 9
  %i.j = add i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i32
  %i.o = mul i32 %i.j, 9
  %i.p = add i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i8 %i.s to i32
  %i.u = mul i32 %i.p, 9
  %i.v = add i32 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = zext i8 %i.y to i32
  %i.aa = mul i32 %i.v, 9
  %i.ab = add i32 %i.aa, %i.z                     ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !337

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.loopexit.i.unr-lcssa ]
  %.078.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ab, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.078.i.epil = phi i32 [ %.078.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ag, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i.epil
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul i32 %.078.i.epil, 9
  %i.ag = add i32 %i.af, %i.ae                    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil, !llvm.loop !1112

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.ab, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ag, %.lr.ph.i.epil ]
  %i.ah = urem i32 %.lcssa, 1023
  %i.ai = zext nneg i32 %i.ah to i64
  br label %idxHashString.exit

idxHashString.exit:                               ; preds = %bb.a, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ai, %._crit_edge.loopexit.i ]
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %idxHashString.exit
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #46
  %sext45 = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext45, 32
  br label %bb.c

bb.c:                                             ; preds = %idxHashString.exit, %bb.b
  %i.al = phi i64 [ %i.ak, %bb.b ], [ 0, %idxHashString.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.07.lcssa.i ; 3 uses
  %.049 = load ptr, ptr %i.an, align 8, !tbaa !299 ; 2 uses
  %.not4450 = icmp eq ptr %.049, null
  %.pre = shl i64 %i.a, 32                        ; 2 uses
  %.pre52 = ashr exact i64 %.pre, 32              ; 3 uses
  br i1 %.not4450, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.051 = phi ptr [ %.0, %bb.e ], [ %.049, %bb.c ] ; 2 uses
  %i.ao = load ptr, ptr %.051, align 8, !tbaa !339 ; 2 uses
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #46
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, %i.b
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %2, i64 %.pre52)
  %i.as = icmp eq i32 %bcmp, 0
  br i1 %i.as, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %.051, i64 24
  %.0 = load ptr, ptr %i.at, align 8, !tbaa !299  ; 2 uses
  %.not44 = icmp eq ptr %.0, null
  br i1 %.not44, label %._crit_edge, label %.lr.ph, !llvm.loop !351

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.au = add nsw i64 %.pre52, 42
  %i.av = add nsw i64 %i.au, %i.al                ; 2 uses
  %i.aw = tail call ptr @sqlite3_malloc64(i64 noundef %i.av) #45 ; 9 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %idxMalloc.exit.thread, label %bb.f

idxMalloc.exit.thread:                            ; preds = %._crit_edge
  store i32 7, ptr %0, align 4, !tbaa !17
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 0, i64 %i.av, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 3 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !339
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 1 %2, i64 %.pre52, i1 false)
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sext47 = add i64 %.pre, 4294967296
  %i.ay = ashr exact i64 %sext47, 32
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !344
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 1 %3, i64 %i.al, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !299
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !300
  store ptr %i.aw, ptr %i.an, align 8, !tbaa !299
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1113
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !352
  store ptr %i.aw, ptr %1, align 8, !tbaa !1113
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %idxMalloc.exit.thread, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @idxRemFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_user_data(ptr noundef %0) #45
  %i.b = load ptr, ptr %2, align 8, !tbaa !154
  %i.c = tail call i32 @sqlite3_value_int(ptr noundef %i.b) #45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.e ; 16 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1114
  switch i32 %i.g, label %bb.f [
    i32 3, label %bb.e
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1115
  tail call void @sqlite3_result_int64(ptr noundef %0, i64 noundef %i.i) #45
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !1116
  tail call void @sqlite3_result_double(ptr noundef %0, double noundef %i.k) #45
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !341
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1117
  %i.p = trunc i64 %i.o to i32
  tail call void @sqlite3_result_blob(ptr noundef %0, ptr noundef %i.m, i32 noundef %i.p, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !341
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1117
  %i.u = trunc i64 %i.t to i32
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef %i.r, i32 noundef %i.u, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.x = tail call i32 @sqlite3_value_type(ptr noundef %i.w) #45 ; 2 uses
  store i32 %i.x, ptr %i.f, align 8, !tbaa !1114
  switch i32 %i.x, label %.critedge [
    i32 3, label %bb.i
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 4, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.z = tail call i64 @sqlite3_value_int64(ptr noundef %i.y) #45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !1115
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.ac = tail call double @sqlite3_value_double(ptr noundef %i.ab) #45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !1116
  br label %.critedge

bb.i:                                             ; preds = %bb.f, %bb.f
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !154
  %i.af = tail call i32 @sqlite3_value_bytes(ptr noundef %i.ae) #45
  %i.ag = sext i32 %i.af to i64                   ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1118
  %i.aj = icmp slt i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
end_hunk_9
begin_hunk_10_@dotCmdMode:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4360 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4352
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4326
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4317 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4318 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4324
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4328
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4592 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4312 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4316 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4323 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4325 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 25 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4338 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4348 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4340 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4322
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4376 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4344
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4332
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph1169, %modeSetStr.exit
  %.05561166 = phi i32 [ 0, %.lr.ph1169 ], [ %.1557, %modeSetStr.exit ] ; 52 uses
  %.05591165 = phi i32 [ 0, %.lr.ph1169 ], [ %.8567, %modeSetStr.exit ] ; 4 uses
  %.05721164 = phi i32 [ 1, %.lr.ph1169 ], [ %i.op, %modeSetStr.exit ] ; 52 uses
  %.05831162 = phi i32 [ -1, %.lr.ph1169 ], [ %.1584, %modeSetStr.exit ] ; 53 uses
  %i.ap = sext i32 %.05721164 to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66 ; 6 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = icmp eq i8 %i.as, 45
  br i1 %i.at, label %optionMatch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = icmp slt i32 %.05831162, 0
  br i1 %i.au, label %bb.d, label %optionMatch.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.av = call fastcc i32 @modeFind(ptr noundef %0, ptr noundef nonnull %i.ar) ; 3 uses
  %i.aw = icmp sgt i32 %i.av, -1
  %i.ax = icmp ne i32 %i.av, 22
  %or.cond13 = and i1 %i.aw, %i.ax
  br i1 %or.cond13, label %bb.e, label %optionMatch.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ay = trunc i32 %i.av to i8
  call fastcc void @modeChange(ptr noundef %0, i8 noundef zeroext %i.ay)
  %i.az = add nsw i32 %.05721164, 1               ; 4 uses
  %i.ba = icmp slt i32 %i.az, %i.h
  br i1 %i.ba, label %bb.f, label %modeSetStr.exit

bb.f:                                             ; preds = %bb.e
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %.not706 = icmp eq i8 %i.be, 45
  br i1 %.not706, label %modeSetStr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load ptr, ptr %i.am, align 8, !tbaa !66
  call void @free(ptr noundef %i.bf) #45
  %i.bg = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bd) #46
  %i.bh = add i64 %i.bg, 1                        ; 2 uses
  %i.bi = call noalias ptr @malloc(i64 noundef %i.bh) #51 ; 3 uses
  store ptr %i.bi, ptr %i.am, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %modeSetStr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 1 %i.bd, i64 %i.bh, i1 false)
  br label %modeSetStr.exit

optionMatch.exit:                                 ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = icmp eq i8 %i.bk, 45
  %spec.select = select i1 %i.bl, ptr %i.bj, ptr %i.ar ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %spec.select, i64 1 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = icmp eq i8 %i.bn, 45
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %spec.select.i = select i1 %i.bo, ptr %i.bp, ptr %i.bm
  %i.bq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i, ptr noundef nonnull dereferenceable(6) @.str.1758) #46
  %.not976 = icmp eq i32 %i.bq, 0
  br i1 %.not976, label %bb.i, label %optionMatch.exit.thread

bb.i:                                             ; preds = %optionMatch.exit
  %i.br = add nsw i32 %.05721164, 1               ; 5 uses
  %.not704 = icmp slt i32 %i.br, %i.h
  br i1 %.not704, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.05721164, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.critedge709

bb.k:                                             ; preds = %bb.i
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !66 ; 4 uses
  %i.bv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #46 ; 6 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 16383                    ; 3 uses
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !1258
  call void @free(ptr noundef %i.by) #45
  %i.bz = and i64 %i.bv, 16383
  %i.ca = call noalias ptr @malloc(i64 noundef %i.bz) #51 ; 2 uses
  store ptr %i.ca, ptr %i.l, align 8, !tbaa !1258
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.l, label %shell_check_oom.exit.preheader

shell_check_oom.exit.preheader:                   ; preds = %bb.k
  %.not1182 = icmp eq i32 %i.bx, 0
  br i1 %.not1182, label %shell_check_oom.exit._crit_edge.thread, label %.lr.ph.preheader

shell_check_oom.exit._crit_edge.thread:           ; preds = %shell_check_oom.exit.preheader
  store i32 %i.bx, ptr %i.m, align 4, !tbaa !1259
  br label %modeSetStr.exit

.lr.ph.preheader:                                 ; preds = %shell_check_oom.exit.preheader
  %wide.trip.count = and i64 %i.bv, 16383
  %xtraiter = and i64 %i.bv, 1
  %i.cc = icmp eq i64 %wide.trip.count, 1
  br i1 %i.cc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bv, 16382
  br label %.lr.ph

bb.l:                                             ; preds = %bb.k
  call fastcc void @shell_out_of_memory()
  unreachable

.lr.ph:                                           ; preds = %shell_check_oom.exit.1, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %shell_check_oom.exit.1 ] ; 4 uses
  %.05531147 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1554.1, %shell_check_oom.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %shell_check_oom.exit.1 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  switch i8 %i.ce, label %bb.o [
    i8 108, label %shell_check_oom.exit
    i8 76, label %shell_check_oom.exit
    i8 99, label %bb.m
    i8 67, label %bb.m
    i8 114, label %bb.n
    i8 82, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph, %.lr.ph
  br label %shell_check_oom.exit

bb.n:                                             ; preds = %.lr.ph, %.lr.ph
  br label %shell_check_oom.exit

bb.o:                                             ; preds = %.lr.ph
  %i.cf = add nsw i32 %.05531147, 1
  br label %shell_check_oom.exit

shell_check_oom.exit:                             ; preds = %.lr.ph, %.lr.ph, %bb.o, %bb.n, %bb.m
  %.1554 = phi i32 [ %i.cf, %bb.o ], [ %.05531147, %bb.n ], [ %.05531147, %bb.m ], [ %.05531147, %.lr.ph ], [ %.05531147, %.lr.ph ] ; 5 uses
  %.0541 = phi i8 [ 0, %bb.o ], [ 3, %bb.n ], [ 2, %bb.m ], [ 1, %.lr.ph ], [ 1, %.lr.ph ]
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !1258
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv
  store i8 %.0541, ptr %i.ch, align 1, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.next
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  switch i8 %i.cj, label %bb.r [
    i8 108, label %shell_check_oom.exit.1
    i8 76, label %shell_check_oom.exit.1
    i8 99, label %bb.q
    i8 67, label %bb.q
    i8 114, label %bb.p
    i8 82, label %bb.p
  ]

bb.p:                                             ; preds = %shell_check_oom.exit, %shell_check_oom.exit
  br label %shell_check_oom.exit.1

bb.q:                                             ; preds = %shell_check_oom.exit, %shell_check_oom.exit
  br label %shell_check_oom.exit.1

bb.r:                                             ; preds = %shell_check_oom.exit
  %i.ck = add nsw i32 %.1554, 1
  br label %shell_check_oom.exit.1

shell_check_oom.exit.1:                           ; preds = %bb.r, %bb.q, %bb.p, %shell_check_oom.exit, %shell_check_oom.exit
  %.1554.1 = phi i32 [ %i.ck, %bb.r ], [ %.1554, %bb.p ], [ %.1554, %bb.q ], [ %.1554, %shell_check_oom.exit ], [ %.1554, %shell_check_oom.exit ] ; 3 uses
  %.0541.1 = phi i8 [ 0, %bb.r ], [ 3, %bb.p ], [ 2, %bb.q ], [ 1, %shell_check_oom.exit ], [ 1, %shell_check_oom.exit ]
  %i.cl = load ptr, ptr %i.l, align 8, !tbaa !1258
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.next
  store i8 %.0541.1, ptr %i.cm, align 1, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %shell_check_oom.exit._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1260

shell_check_oom.exit._crit_edge.unr-lcssa:        ; preds = %shell_check_oom.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %shell_check_oom.exit._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %shell_check_oom.exit._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %shell_check_oom.exit._crit_edge.unr-lcssa ] ; 2 uses
  %.05531147.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1554.1, %shell_check_oom.exit._crit_edge.unr-lcssa ] ; 5 uses
  %lcmp.mod1634 = trunc i64 %i.bv to i1
  call void @llvm.assume(i1 %lcmp.mod1634)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.epil.init
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !16
  switch i8 %i.co, label %bb.u [
    i8 108, label %shell_check_oom.exit.epil
    i8 76, label %shell_check_oom.exit.epil
    i8 99, label %bb.t
    i8 67, label %bb.t
    i8 114, label %bb.s
    i8 82, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph.epil.preheader, %.lr.ph.epil.preheader
  br label %shell_check_oom.exit.epil

bb.t:                                             ; preds = %.lr.ph.epil.preheader, %.lr.ph.epil.preheader
  br label %shell_check_oom.exit.epil

bb.u:                                             ; preds = %.lr.ph.epil.preheader
  %i.cp = add nsw i32 %.05531147.epil.init, 1
  br label %shell_check_oom.exit.epil

shell_check_oom.exit.epil:                        ; preds = %bb.u, %bb.t, %bb.s, %.lr.ph.epil.preheader, %.lr.ph.epil.preheader
  %.1554.epil = phi i32 [ %i.cp, %bb.u ], [ %.05531147.epil.init, %bb.s ], [ %.05531147.epil.init, %bb.t ], [ %.05531147.epil.init, %.lr.ph.epil.preheader ], [ %.05531147.epil.init, %.lr.ph.epil.preheader ]
  %.0541.epil = phi i8 [ 0, %bb.u ], [ 3, %bb.s ], [ 2, %bb.t ], [ 1, %.lr.ph.epil.preheader ], [ 1, %.lr.ph.epil.preheader ]
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !1258
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.epil.init
  store i8 %.0541.epil, ptr %i.cr, align 1, !tbaa !16
  br label %shell_check_oom.exit._crit_edge

shell_check_oom.exit._crit_edge:                  ; preds = %shell_check_oom.exit._crit_edge.unr-lcssa, %shell_check_oom.exit.epil
  %.1554.lcssa = phi i32 [ %.1554.1, %shell_check_oom.exit._crit_edge.unr-lcssa ], [ %.1554.epil, %shell_check_oom.exit.epil ]
  %i.cs = icmp eq i32 %.1554.lcssa, 0
  store i32 %i.bx, ptr %i.m, align 4, !tbaa !1259
  br i1 %i.cs, label %modeSetStr.exit, label %bb.v

bb.v:                                             ; preds = %shell_check_oom.exit._crit_edge
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %i.br, ptr noundef nonnull @.str.1759, ptr noundef nonnull @.str.1760)
  br label %.critedge709

optionMatch.exit.thread:                          ; preds = %bb.c, %bb.d, %optionMatch.exit
  %.05551372 = phi ptr [ %i.ar, %bb.d ], [ %spec.select, %optionMatch.exit ], [ %i.ar, %bb.c ] ; 9 uses
  %i.ct = call i32 (ptr, ptr, ...) @pickStr(ptr noundef nonnull %.05551372, ptr noundef null, ptr noundef nonnull @.str.1761, ptr noundef nonnull @.str.1762, ptr noundef nonnull @.str.48)
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %optionMatch.exit.thread
  %i.cv = add nsw i32 %.05721164, 1               ; 4 uses
  %.not703 = icmp slt i32 %i.cv, %i.h
  br i1 %.not703, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.05721164, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.critedge709

bb.y:                                             ; preds = %bb.w
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !66
  %i.cz = call i32 (ptr, ptr, ...) @pickStr(ptr noundef %i.cy, ptr noundef null, ptr noundef nonnull @.str.849, ptr noundef nonnull @.str.1763, ptr noundef nonnull @.str.1764, ptr noundef nonnull @.str.1765, ptr noundef nonnull @.str.1766, ptr noundef nonnull @.str.1767, ptr noundef nonnull @.str.1768, ptr noundef nonnull @.str.48) ; 2 uses
  %i.da = icmp sgt i32 %i.cz, -1
  br i1 %i.da, label %bb.z, label %modeSetStr.exit

bb.z:                                             ; preds = %bb.y
  %i.db = trunc i32 %i.cz to i8
  store i8 %i.db, ptr %i.ad, align 1, !tbaa !1261
  br label %modeSetStr.exit

bb.aa:                                            ; preds = %optionMatch.exit.thread
  %i.dc = load i8, ptr %.05551372, align 1, !tbaa !16
  %.not.i716 = icmp eq i8 %i.dc, 45
  br i1 %.not.i716, label %optionMatch.exit719, label %optionMatch.exit719.thread

optionMatch.exit719:                              ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %.05551372, i64 1 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !16
  %i.df = icmp eq i8 %i.de, 45
  %i.dg = getelementptr inbounds nuw i8, ptr %.05551372, i64 2
  %spec.select.i718 = select i1 %i.df, ptr %i.dg, ptr %i.dd
  %i.dh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i718, ptr noundef nonnull dereferenceable(7) @.str.1769) #46
  %.not977 = icmp eq i32 %i.dh, 0
  br i1 %.not977, label %bb.ab, label %optionMatch.exit719.thread

bb.ab:                                            ; preds = %optionMatch.exit719
  %i.di = add nsw i32 %.05721164, 1               ; 4 uses
  %.not702 = icmp slt i32 %i.di, %i.h
  br i1 %.not702, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.05721164, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.critedge709

bb.ad:                                            ; preds = %bb.ab
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !66
  %i.dm = call i32 (ptr, ptr, ...) @pickStr(ptr noundef %i.dl, ptr noundef null, ptr noundef nonnull @.str.849, ptr noundef nonnull @.str.850, ptr noundef nonnull @.str.926, ptr noundef nonnull @.str.48) ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, -1
  br i1 %i.dn, label %bb.ae, label %modeSetStr.exit

bb.ae:                                            ; preds = %bb.ad
  %i.do = trunc i32 %i.dm to i8
  %i.dp = and i8 %i.do, 3
  store i8 %i.dp, ptr %i.ao, align 4, !tbaa !1262
  br label %modeSetStr.exit

optionMatch.exit719.thread:                       ; preds = %bb.aa, %optionMatch.exit719
  %i.dq = call i32 (ptr, ptr, ...) @pickStr(ptr noundef nonnull %.05551372, ptr noundef null, ptr noundef nonnull @.str.1770, ptr noundef nonnull @.str.1771, ptr noundef nonnull @.str.1772, ptr noundef nonnull @.str.1773, ptr noundef nonnull @.str.48) ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %bb.af, label %bb.am

bb.af:                                            ; preds = %optionMatch.exit719.thread
  %i.ds = add nsw i32 %.05721164, 1               ; 6 uses
  %.not701 = icmp slt i32 %i.ds, %i.h
  br i1 %.not701, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !66
  %i.dw = call fastcc i64 @integerValue(ptr noundef %i.dv) ; 3 uses
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  switch i32 %i.dq, label %bb.ak [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.dx, ptr %i.ah, align 4, !tbaa !648
  br label %modeSetStr.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dy = trunc i64 %i.dw to i16
  store i16 %i.dy, ptr %i.ag, align 2, !tbaa !649
  br label %modeSetStr.exit

bb.aj:                                            ; preds = %bb.ag
  %i.dz = trunc i64 %i.dw to i16
  store i16 %i.dz, ptr %i.ai, align 4, !tbaa !651
  br label %modeSetStr.exit

bb.ak:                                            ; preds = %bb.ag
  store i32 %i.dx, ptr %i.an, align 8, !tbaa !652
  br label %modeSetStr.exit

bb.al:                                            ; preds = %bb.af
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.05721164, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.critedge709

bb.am:                                            ; preds = %optionMatch.exit719.thread
  %i.ea = call i32 (ptr, ptr, ...) @pickStr(ptr noundef nonnull %.05551372, ptr noundef null, ptr noundef nonnull @.str.1774, ptr noundef nonnull @.str.1709, ptr noundef nonnull @.str.1708, ptr noundef nonnull @.str.1775, ptr noundef nonnull @.str.48) ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, -1
  br i1 %i.eb, label %bb.an, label %bb.bg

bb.an:                                            ; preds = %bb.am
  %i.ec = add nsw i32 %.05721164, 1               ; 18 uses
  %.not700 = icmp slt i32 %i.ec, %i.h
  br i1 %.not700, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.05721164, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.critedge709

bb.ap:                                            ; preds = %bb.an
  switch i32 %i.ea, label %modeSetStr.exit [
    i32 0, label %bb.aq
    i32 1, label %bb.au
    i32 2, label %bb.ay
    i32 3, label %bb.bc
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !66 ; 3 uses
  %i.eg = load ptr, ptr %i.am, align 8, !tbaa !66
  call void @free(ptr noundef %i.eg) #45
  %i.eh = icmp eq ptr %i.ef, null
  br i1 %i.eh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store ptr null, ptr %i.am, align 8, !tbaa !66
  br label %modeSetStr.exit

bb.as:                                            ; preds = %bb.aq
  %i.ei = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ef) #46
  %i.ej = add i64 %i.ei, 1                        ; 2 uses
  %i.ek = call noalias ptr @malloc(i64 noundef %i.ej) #51 ; 3 uses
end_hunk_10
