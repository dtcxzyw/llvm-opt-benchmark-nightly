inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 62
begin_hunk_0_@tdefl_optimize_huffman_table:bb.a
  %i.ip = add i16 %i.io, 1
  store i16 %i.ip, ptr %i.ik, align 2
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = add i16 %i.iu, 1
  store i16 %i.iv, ptr %i.iq, align 2
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.gb, %._crit_edge.thread.i ], [ %i.hj, %.lr.ph96.i ], [ %i.hj, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jy, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.jx, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
  %.2111.i = phi i32 [ %.3.lcssa.i, %._crit_edge108.i ], [ %i.fz, %.preheader.i81.preheader ] ; 2 uses
  %.385110.i = phi i32 [ %.4.lcssa.i, %._crit_edge108.i ], [ %.385110.i.ph, %.preheader.i81.preheader ] ; 5 uses
  %i.iw = icmp sgt i32 %.385110.i, -1
  br i1 %i.iw, label %.lr.ph99.preheader.i, label %.critedge.i

.lr.ph99.preheader.i:                             ; preds = %.preheader.i81
  %i.ix = add nuw i32 %.385110.i, 1
  br label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.t, %.lr.ph99.preheader.i
  %.198.i = phi i32 [ %i.jd, %bb.t ], [ 0, %.lr.ph99.preheader.i ] ; 3 uses
  %.497.i = phi i32 [ %i.je, %bb.t ], [ %.385110.i, %.lr.ph99.preheader.i ] ; 3 uses
  %i.iy = zext nneg i32 %.497.i to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2
  %i.jb = zext i16 %i.ja to i32
  %i.jc = icmp eq i32 %.0113.i, %i.jb
  br i1 %i.jc, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph99.i
  %i.jd = add nuw i32 %.198.i, 1
  %i.je = add nsw i32 %.497.i, -1
  %exitcond118.not.i = icmp eq i32 %.198.i, %.385110.i
  br i1 %exitcond118.not.i, label %.critedge.i, label %.lr.ph99.i

.critedge.i:                                      ; preds = %bb.t, %.lr.ph99.i, %.preheader.i81
  %.4.lcssa.i = phi i32 [ %.385110.i, %.preheader.i81 ], [ %.497.i, %.lr.ph99.i ], [ -1, %bb.t ]
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i81 ], [ %.198.i, %.lr.ph99.i ], [ %i.ix, %bb.t ] ; 6 uses
  %i.jf = icmp sgt i32 %.075112.i, %.1.lcssa.i
  br i1 %i.jf, label %.lr.ph107.i, label %._crit_edge108.i

.lr.ph107.i:                                      ; preds = %.critedge.i
  %i.jg = trunc i32 %.0113.i to i16               ; 5 uses
  %i.jh = sext i32 %.2111.i to i64                ; 2 uses
  %i.ji = sub i32 %.075112.i, %.1.lcssa.i
  %xtraiter211 = and i32 %i.ji, 3                 ; 2 uses
  %lcmp.mod212.not = icmp eq i32 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph107.i, %.prol.preheader
  %indvars.iv119.i.prol = phi i64 [ %indvars.iv.next120.i.prol, %.prol.preheader ], [ %i.jh, %.lr.ph107.i ] ; 2 uses
  %.176106.i.prol = phi i32 [ %i.jk, %.prol.preheader ], [ %.075112.i, %.lr.ph107.i ]
  %prol.iter213 = phi i32 [ %prol.iter213.next, %.prol.preheader ], [ 0, %.lr.ph107.i ]
  %indvars.iv.next120.i.prol = add nsw i64 %indvars.iv119.i.prol, -1 ; 3 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %indvars.iv119.i.prol
  store i16 %i.jg, ptr %i.jj, align 2
  %i.jk = add nsw i32 %.176106.i.prol, -1         ; 2 uses
  %prol.iter213.next = add i32 %prol.iter213, 1   ; 2 uses
  %prol.iter213.cmp.not = icmp eq i32 %prol.iter213.next, %xtraiter211
  br i1 %prol.iter213.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !38

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph107.i
  %indvars.iv119.i.unr = phi i64 [ %i.jh, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %.176106.i.unr = phi i32 [ %.075112.i, %.lr.ph107.i ], [ %i.jk, %.prol.preheader ]
  %indvars.iv.next120.i.lcssa.unr = phi i64 [ poison, %.lr.ph107.i ], [ %indvars.iv.next120.i.prol, %.prol.preheader ]
  %i.jl = sub i32 %.1.lcssa.i, %.075112.i
  %i.jm = icmp ugt i32 %i.jl, -4
  br i1 %i.jm, label %._crit_edge108.loopexit.i, label %.lr.ph107.i.new

.lr.ph107.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph107.i.new
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ], [ %indvars.iv119.i.unr, %.prol.loopexit ] ; 5 uses
  %.176106.i = phi i32 [ %i.ju, %.lr.ph107.i.new ], [ %.176106.i.unr, %.prol.loopexit ]
  %i.jn = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %indvars.iv119.i
  store i16 %i.jg, ptr %i.jn, align 2
  %i.jo = getelementptr [4 x i8], ptr %.04052.us.i, i64 %indvars.iv119.i
  %i.jp = getelementptr i8, ptr %i.jo, i64 -4
  store i16 %i.jg, ptr %i.jp, align 2
  %i.jq = getelementptr [4 x i8], ptr %.04052.us.i, i64 %indvars.iv119.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 -8
  store i16 %i.jg, ptr %i.jr, align 2
  %indvars.iv.next120.i.3 = add nsw i64 %indvars.iv119.i, -4 ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %.04052.us.i, i64 %indvars.iv119.i
  %i.jt = getelementptr i8, ptr %i.js, i64 -12
  store i16 %i.jg, ptr %i.jt, align 2
  %i.ju = add nsw i32 %.176106.i, -4              ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, %.1.lcssa.i
  br i1 %i.jv, label %.lr.ph107.i.new, label %._crit_edge108.loopexit.i

._crit_edge108.loopexit.i:                        ; preds = %.lr.ph107.i.new, %.prol.loopexit
  %indvars.iv.next120.i.lcssa = phi i64 [ %indvars.iv.next120.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next120.i.3, %.lr.ph107.i.new ]
  %i.jw = trunc nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %._crit_edge108.i

._crit_edge108.i:                                 ; preds = %._crit_edge108.loopexit.i, %.critedge.i
  %.3.lcssa.i = phi i32 [ %.2111.i, %.critedge.i ], [ %i.jw, %._crit_edge108.loopexit.i ]
  %i.jx = shl nuw nsw i32 %.1.lcssa.i, 1
  %i.jy = add nuw nsw i32 %.0113.i, 1
  %.not89.i = icmp eq i32 %.1.lcssa.i, 0
  br i1 %.not89.i, label %tdefl_calculate_minimum_redundancy.exit, label %.preheader.i81

tdefl_calculate_minimum_redundancy.exit:          ; preds = %._crit_edge108.i
  %i.jz = icmp sgt i32 %.173.lcssa, 0
  br i1 %i.jz, label %.lr.ph.preheader, label %tdefl_huffman_enforce_max_code_size.exit

.lr.ph.preheader:                                 ; preds = %tdefl_calculate_minimum_redundancy.exit.thread166, %tdefl_calculate_minimum_redundancy.exit
  %xtraiter214 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ka = icmp ult i32 %.173.lcssa, 4
  br i1 %i.ka, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter218 = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next129.3, %.lr.ph ] ; 5 uses
  %niter219 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter219.next.3, %.lr.ph ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = zext i16 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = add nsw i32 %i.kf, 1
  store i32 %i.kg, ptr %i.ke, align 4
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i16, ptr %i.ki, align 2
  %i.kk = zext i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kk ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 4
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i16, ptr %i.kp, align 2
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i16, ptr %i.kw, align 2
  %i.ky = zext i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter215 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter215.next, %.lr.ph.epil ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128.epil
  %i.ld = load i16, ptr %i.lc, align 2
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.li = icmp eq i32 %.173.lcssa, 1
  br i1 %i.li, label %tdefl_huffman_enforce_max_code_size.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lj = zext nneg i32 %3 to i64                 ; 11 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 5 uses
  %i.ll = sub nuw nsw i64 32, %i.lj               ; 2 uses
  %n.vec = and i64 %i.ll, 56                      ; 4 uses
  %i.lm = add nuw nsw i64 %n.vec, %i.lj
  %.promoted.i = load i32, ptr %i.lk, align 4
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  %wide.load = load <4 x i32>, ptr %i.lp, align 4
  %wide.load180 = load <4 x i32>, ptr %i.lq, align 4 ; 2 uses
  %i.lr = add <4 x i32> %wide.load, %i.ln         ; 2 uses
  %i.ls = icmp eq i64 %n.vec, 8
  br i1 %i.ls, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lj ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lv, align 4
  %wide.load180.1 = load <4 x i32>, ptr %i.lw, align 4
  %i.lx = add <4 x i32> %wide.load.1, %i.lr       ; 2 uses
  %i.ly = add <4 x i32> %wide.load180.1, %wide.load180 ; 2 uses
  %i.lz = icmp eq i64 %n.vec, 16
  br i1 %i.lz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lj ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.mc, align 4
  %wide.load180.2 = load <4 x i32>, ptr %i.md, align 4
  %i.me = add <4 x i32> %wide.load.2, %i.lx
  %i.mf = add <4 x i32> %wide.load180.2, %i.ly
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa187 = phi <4 x i32> [ %i.lr, %.preheader35.i ], [ %i.lx, %vector.body.1 ], [ %i.me, %vector.body.2 ]
  %.lcssa186 = phi <4 x i32> [ %wide.load180, %.preheader35.i ], [ %i.ly, %vector.body.1 ], [ %i.mf, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa186, %.lcssa187
  %i.mg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.mg, ptr %i.lk, align 4
  %cmp.n = icmp eq i64 %i.ll, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %xtraiter220 = and i64 %i.lj, 3                 ; 3 uses
  %unroll_iter225 = and i64 %i.lj, 12
  br label %.preheader34.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.lm, %middle.block ]
  %i.mh = phi i32 [ %i.mk, %scalar.ph ], [ %i.mg, %middle.block ]
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i90
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = add nsw i32 %i.mj, %i.mh                ; 2 uses
  store i32 %i.mk, ptr %i.lk, align 4
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, 32
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !40

.preheader.i92.unr-lcssa:                         ; preds = %.preheader34.i
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %.preheader.i92, label %.preheader34.i.epil.preheader

.preheader34.i.epil.preheader:                    ; preds = %.preheader.i92.unr-lcssa
  %lcmp.mod224 = icmp ne i64 %xtraiter220, 0
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %.preheader34.i.epil

.preheader34.i.epil:                              ; preds = %.preheader34.i.epil, %.preheader34.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader34.i.epil ], [ %indvars.iv.next49.i.3, %.preheader34.i.epil.preheader ] ; 3 uses
  %.040.i.epil = phi i32 [ %i.mq, %.preheader34.i.epil ], [ %i.nq, %.preheader34.i.epil.preheader ]
  %epil.iter221 = phi i64 [ %epil.iter221.next, %.preheader34.i.epil ], [ 0, %.preheader34.i.epil.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i.epil
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = trunc i64 %indvars.iv48.i.epil to i32
  %i.mo = sub i32 %3, %i.mn
  %i.mp = shl i32 %i.mm, %i.mo
  %i.mq = add i32 %i.mp, %.040.i.epil             ; 2 uses
  %indvars.iv.next49.i.epil = add nsw i64 %indvars.iv48.i.epil, -1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !43

.preheader.i92:                                   ; preds = %.preheader34.i.epil, %.preheader.i92.unr-lcssa
  %.lcssa185 = phi i32 [ %i.nq, %.preheader.i92.unr-lcssa ], [ %i.mq, %.preheader34.i.epil ] ; 2 uses
  %i.mr = shl nuw nsw i64 1, %i.lj                ; 2 uses
  %i.ms = zext i32 %.lcssa185 to i64
  %.not42.i = icmp eq i64 %i.mr, %i.ms
  br i1 %.not42.i, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

.preheader34.i:                                   ; preds = %.preheader34.i, %.preheader34.i.preheader
  %indvars.iv48.i = phi i64 [ %i.lj, %.preheader34.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader34.i ] ; 6 uses
  %.040.i = phi i32 [ 0, %.preheader34.i.preheader ], [ %i.nq, %.preheader34.i ]
  %niter226 = phi i64 [ 0, %.preheader34.i.preheader ], [ %niter226.next.3, %.preheader34.i ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i
  %i.mu = load i32, ptr %i.mt, align 4
  %i.mv = trunc i64 %indvars.iv48.i to i32
  %i.mw = sub nsw i32 %3, %i.mv
  %i.mx = shl i32 %i.mu, %i.mw
  %i.my = add i32 %i.mx, %.040.i
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, -1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i
  %i.na = load i32, ptr %i.mz, align 4
  %i.nb = trunc i64 %indvars.iv.next49.i to i32
  %i.nc = sub nsw i32 %3, %i.nb
  %i.nd = shl i32 %i.na, %i.nc
  %i.ne = add i32 %i.nd, %i.my
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, -2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.1
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = trunc i64 %indvars.iv.next49.i.1 to i32
  %i.ni = sub nsw i32 %3, %i.nh
  %i.nj = shl i32 %i.ng, %i.ni
  %i.nk = add i32 %i.nj, %i.ne
  %indvars.iv.next49.i.2 = add nsw i64 %indvars.iv48.i, -3 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.2
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = trunc i64 %indvars.iv.next49.i.2 to i32
  %i.no = sub nsw i32 %3, %i.nn
  %i.np = shl i32 %i.nm, %i.no
  %i.nq = add i32 %i.np, %i.nk                    ; 3 uses
  %indvars.iv.next49.i.3 = add nsw i64 %indvars.iv48.i, -4 ; 2 uses
  %niter226.next.3 = add nuw nsw i64 %niter226, 4 ; 2 uses
  %niter226.ncmp.3.not = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %.143.i = phi i32 [ %i.ob, %.loopexit.i ], [ %.lcssa185, %.preheader.i92 ]
  %i.nr = load i32, ptr %i.lk, align 4
  %i.ns = add nsw i32 %i.nr, -1
  store i32 %i.ns, ptr %i.lk, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nt = icmp sgt i64 %indvars.iv51.i178, 2
  br i1 %i.nt, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i178 = phi i64 [ %i.lj, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i178, -1 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nv = load i32, ptr %i.nu, align 4            ; 2 uses
  %.not32.i = icmp eq i32 %i.nv, 0
  br i1 %.not32.i, label %bb.u, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nx = add nsw i32 %i.nv, -1
  store i32 %i.nx, ptr %i.nw, align 4
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv51.i178 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = add nsw i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.w
  %i.ob = add i32 %.143.i, -1                     ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %.not.i94 = icmp eq i64 %i.mr, %i.oc
  br i1 %.not.i94, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

tdefl_huffman_enforce_max_code_size.exit:         ; preds = %.loopexit.i, %tdefl_radix_sort_syms.exit, %tdefl_radix_sort_syms.exit.thread, %tdefl_calculate_minimum_redundancy.exit, %._crit_edge, %.preheader.i92
  %.us-phi56.i163165170 = phi ptr [ %6, %tdefl_radix_sort_syms.exit.thread ], [ %.04052.us.i, %.preheader.i92 ], [ %.04052.us.i, %._crit_edge ], [ %.04052.us.i, %tdefl_calculate_minimum_redundancy.exit ], [ %.04052.us.i, %tdefl_radix_sort_syms.exit ], [ %.04052.us.i, %.loopexit.i ] ; 5 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.oe = getelementptr inbounds nuw [288 x i8], ptr %i.od, i64 %i.aj ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(288) %i.oe, i8 0, i64 288, i1 false)
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.og = getelementptr inbounds nuw [576 x i8], ptr %i.of, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(576) %i.og, i8 0, i64 576, i1 false)
  %i.oh = add nuw nsw i32 %3, 1
  %wide.trip.count140 = zext nneg i32 %i.oh to i64 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %tdefl_huffman_enforce_max_code_size.exit, %._crit_edge108
  %indvars.iv137 = phi i64 [ 1, %tdefl_huffman_enforce_max_code_size.exit ], [ %indvars.iv.next138, %._crit_edge108 ] ; 3 uses
  %.069109 = phi i32 [ %.173.lcssa, %tdefl_huffman_enforce_max_code_size.exit ], [ %.170.lcssa, %._crit_edge108 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv137
  %i.oj = load i32, ptr %i.oi, align 4            ; 5 uses
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.x
  %i.ol = trunc i64 %indvars.iv137 to i8          ; 5 uses
  %i.om = sext i32 %.069109 to i64                ; 2 uses
  %xtraiter229 = and i32 %i.oj, 3                 ; 2 uses
  %lcmp.mod230.not = icmp eq i32 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.prol.loopexit228, label %.prol.preheader227

.prol.preheader227:                               ; preds = %.lr.ph107, %.prol.preheader227
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.prol.preheader227 ], [ %i.om, %.lr.ph107 ]
  %.074104.prol = phi i32 [ %i.os, %.prol.preheader227 ], [ %i.oj, %.lr.ph107 ]
  %prol.iter231 = phi i32 [ %prol.iter231.next, %.prol.preheader227 ], [ 0, %.lr.ph107 ]
  %indvars.iv.next135.prol = add nsw i64 %indvars.iv134.prol, -1 ; 4 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv.next135.prol
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.op = load i16, ptr %i.oo, align 2
  %i.oq = zext i16 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oq
  store i8 %i.ol, ptr %i.or, align 1
  %i.os = add nsw i32 %.074104.prol, -1           ; 2 uses
  %prol.iter231.next = add i32 %prol.iter231, 1   ; 2 uses
  %prol.iter231.cmp.not = icmp eq i32 %prol.iter231.next, %xtraiter229
  br i1 %prol.iter231.cmp.not, label %.prol.loopexit228, label %.prol.preheader227, !llvm.loop !44

.prol.loopexit228:                                ; preds = %.prol.preheader227, %.lr.ph107
  %indvars.iv134.unr = phi i64 [ %i.om, %.lr.ph107 ], [ %indvars.iv.next135.prol, %.prol.preheader227 ]
  %.074104.unr = phi i32 [ %i.oj, %.lr.ph107 ], [ %i.os, %.prol.preheader227 ]
  %indvars.iv.next135.lcssa.unr = phi i64 [ poison, %.lr.ph107 ], [ %indvars.iv.next135.prol, %.prol.preheader227 ]
  %i.ot = icmp ult i32 %i.oj, 4
  br i1 %i.ot, label %._crit_edge108.loopexit, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.prol.loopexit228, %.lr.ph107.new
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.3, %.lr.ph107.new ], [ %indvars.iv134.unr, %.prol.loopexit228 ] ; 4 uses
  %.074104 = phi i32 [ %i.po, %.lr.ph107.new ], [ %.074104.unr, %.prol.loopexit228 ] ; 2 uses
  %i.ou = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.ov = getelementptr i8, ptr %i.ou, i64 -2
  %i.ow = load i16, ptr %i.ov, align 2
  %i.ox = zext i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ox
  store i8 %i.ol, ptr %i.oy, align 1
  %i.oz = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pa = getelementptr i8, ptr %i.oz, i64 -6
  %i.pb = load i16, ptr %i.pa, align 2
  %i.pc = zext i16 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pc
  store i8 %i.ol, ptr %i.pd, align 1
end_hunk_0
