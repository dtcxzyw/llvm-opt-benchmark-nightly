Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver?download=true
inline.NumInlined: 548
inline.NumDeleted: 94
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@sat_solver_reducedb:bb.a
  %i.fr = or i32 %i.fq, 2
  %i.fs = icmp eq i32 %i.fp, %i.fr
  %.not110150.i = icmp slt i32 %i.fg, 1
  %or.cond = or i1 %.not110150.i, %i.fs
  br i1 %or.cond, label %Sat_MemCompactLearned.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.critedge.i
  %i.ft = phi i32 [ %i.hu, %.critedge.i ], [ %i.fg, %bb.k ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ 1, %bb.k ] ; 2 uses
  %.086154.i = phi i32 [ %.187.lcssa.i, %.critedge.i ], [ 2, %bb.k ] ; 4 uses
  %.090153.i = phi i32 [ %.191.lcssa.i, %.critedge.i ], [ 1, %bb.k ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !53 ; 4 uses
  %.val132.i = load i32, ptr %i.fv, align 4, !tbaa !40 ; 3 uses
  %i.fw = icmp sgt i32 %.val132.i, 2
  br i1 %i.fw, label %.lr.ph.preheader.i.preheader, label %.critedge.i

.lr.ph.preheader.i.preheader:                     ; preds = %.preheader.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = load i32, ptr %i.fx, align 4            ; 5 uses
  %i.fz = and i32 %i.fy, 2
  %.not114.i.peel = icmp eq i32 %i.fz, 0
  br i1 %.not114.i.peel, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.preheader.i.preheader
  %i.ga = lshr i32 %i.fy, 11                      ; 2 uses
  %i.gb = and i32 %i.fy, 1
  %i.gc = add nuw nsw i32 %i.ga, 2
  %i.gd = add nuw nsw i32 %i.gc, %i.gb
  %i.ge = and i32 %i.gd, 8388606                  ; 2 uses
  %i.gf = add nsw i32 %i.ge, %.086154.i
  %i.gg = load i32, ptr %i.fh, align 8, !tbaa !50 ; 2 uses
  %i.gh = shl nuw i32 1, %i.gg
  %.not116.i.peel = icmp slt i32 %i.gf, %i.gh     ; 2 uses
  %i.gi = add nsw i32 %.090153.i, 2
  %spec.select.peel = select i1 %.not116.i.peel, i32 %.090153.i, i32 %i.gi ; 2 uses
  %spec.select237.peel = select i1 %.not116.i.peel, i32 %.086154.i, i32 2 ; 2 uses
  %i.gj = shl i32 %spec.select.peel, %i.gg
  %i.gk = or i32 %i.gj, %spec.select237.peel
  %.sink171.i.peel = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.gl = zext nneg i32 %i.ga to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sink171.i.peel, i64 %i.gl
  store i32 %i.gk, ptr %i.gm, align 4, !tbaa !40
  %i.gn = add nsw i32 %spec.select237.peel, %i.ge
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.preheader.i.preheader, %bb.l
  %.393.i.peel = phi i32 [ %spec.select.peel, %bb.l ], [ %.090153.i, %.lr.ph.preheader.i.preheader ] ; 2 uses
  %.389.i.peel = phi i32 [ %i.gn, %bb.l ], [ %.086154.i, %.lr.ph.preheader.i.preheader ] ; 2 uses
  %i.go = lshr i32 %i.fy, 11
  %i.gp = and i32 %i.fy, 1
  %i.gq = add nuw nsw i32 %i.go, 2
  %i.gr = add nuw nsw i32 %i.gq, %i.gp
  %i.gs = and i32 %i.gr, 8388606
  %i.gt = add nuw nsw i32 %i.gs, 2                ; 2 uses
  %i.gu = icmp samesign ult i32 %i.gt, %.val132.i
  br i1 %i.gu, label %.lr.ph.preheader.i, label %.critedge.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.m, %bb.o
  %.187137.i = phi i32 [ %.389.i, %bb.o ], [ %.389.i.peel, %bb.m ] ; 3 uses
  %.191136.i = phi i32 [ %.393.i, %bb.o ], [ %.393.i.peel, %bb.m ] ; 3 uses
  %.094134.i = phi i32 [ %i.hs, %bb.o ], [ %i.gt, %bb.m ] ; 2 uses
  %i.gv = zext nneg i32 %.094134.i to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4            ; 5 uses
  %i.gy = and i32 %i.gx, 2
  %.not114.i = icmp eq i32 %i.gy, 0
  br i1 %.not114.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.preheader.i
  %i.gz = lshr i32 %i.gx, 11                      ; 2 uses
  %i.ha = and i32 %i.gx, 1
  %i.hb = add nuw nsw i32 %i.gz, 2
  %i.hc = add nuw nsw i32 %i.hb, %i.ha
  %i.hd = and i32 %i.hc, 8388606                  ; 2 uses
  %i.he = add nsw i32 %i.hd, %.187137.i
  %i.hf = load i32, ptr %i.fh, align 8, !tbaa !50 ; 2 uses
  %i.hg = shl nuw i32 1, %i.hf
  %.not116.i = icmp slt i32 %i.he, %i.hg          ; 2 uses
  %i.hh = add nsw i32 %.191136.i, 2
  %spec.select = select i1 %.not116.i, i32 %.191136.i, i32 %i.hh ; 2 uses
  %spec.select237 = select i1 %.not116.i, i32 %.187137.i, i32 2 ; 2 uses
  %i.hi = shl i32 %spec.select, %i.hf
  %i.hj = or i32 %i.hi, %spec.select237
  %.sink171.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.hk = zext nneg i32 %i.gz to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sink171.i, i64 %i.hk
  store i32 %i.hj, ptr %i.hl, align 4, !tbaa !40
  %i.hm = add nsw i32 %spec.select237, %i.hd
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.preheader.i, %bb.n
  %.393.i = phi i32 [ %spec.select, %bb.n ], [ %.191136.i, %.lr.ph.preheader.i ] ; 2 uses
  %.389.i = phi i32 [ %i.hm, %bb.n ], [ %.187137.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.hn = lshr i32 %i.gx, 11
  %i.ho = and i32 %i.gx, 1
  %i.hp = add nuw nsw i32 %i.hn, 2
  %i.hq = add nuw nsw i32 %i.hp, %i.ho
  %i.hr = and i32 %i.hq, 8388606
  %i.hs = add nuw nsw i32 %i.hr, %.094134.i       ; 2 uses
  %i.ht = icmp slt i32 %i.hs, %.val132.i
  br i1 %i.ht, label %.lr.ph.preheader.i, label %.critedge.loopexit.i, !llvm.loop !135

.critedge.loopexit.i:                             ; preds = %bb.o, %bb.m
  %.393.i.lcssa = phi i32 [ %.393.i.peel, %bb.m ], [ %.393.i, %bb.o ]
  %.389.i.lcssa = phi i32 [ %.389.i.peel, %bb.m ], [ %.389.i, %bb.o ]
  %.pre.i = load i32, ptr %i.u, align 4, !tbaa !40
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.hu = phi i32 [ %i.ft, %.preheader.i ], [ %.pre.i, %.critedge.loopexit.i ] ; 2 uses
  %.191.lcssa.i = phi i32 [ %.090153.i, %.preheader.i ], [ %.393.i.lcssa, %.critedge.loopexit.i ]
  %.187.lcssa.i = phi i32 [ %.086154.i, %.preheader.i ], [ %.389.i.lcssa, %.critedge.loopexit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %.not110.i = icmp sgt i64 %indvars.iv.next.i, %i.hv
  br i1 %.not110.i, label %Sat_MemCompactLearned.exit, label %.preheader.i, !llvm.loop !136

Sat_MemCompactLearned.exit:                       ; preds = %.critedge.i, %bb.k
  %i.hw = load i32, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %.lr.ph271, label %._crit_edge281

.lr.ph271:                                        ; preds = %Sat_MemCompactLearned.exit
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !66
  %i.ia = getelementptr i8, ptr %0, i64 56
  %i.ib = getelementptr i8, ptr %0, i64 52
  br label %bb.p

.preheader:                                       ; preds = %bb.r
  %i.ic = icmp sgt i32 %i.iz, 0
  br i1 %i.ic, label %.lr.ph280, label %._crit_edge281

.lr.ph280:                                        ; preds = %.preheader
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !43
  %i.if = getelementptr i8, ptr %0, i64 56
  %i.ig = getelementptr i8, ptr %0, i64 52
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph271, %bb.r
  %i.ih = phi i32 [ %i.hw, %.lr.ph271 ], [ %i.iz, %bb.r ] ; 2 uses
  %indvars.iv289 = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next290, %bb.r ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv289 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !40 ; 5 uses
  %.not155 = icmp ne i32 %i.ij, 0
  %i.ik = and i32 %i.ij, 1
  %.not156 = icmp eq i32 %i.ik, 0
  %or.cond238 = and i1 %.not155, %.not156
  br i1 %or.cond238, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.val173 = load i32, ptr %i.ia, align 8, !tbaa !94
  %i.il = and i32 %.val173, %i.ij
  %.not243 = icmp eq i32 %i.il, 0
  br i1 %.not243, label %bb.r, label %clause_read.exit

clause_read.exit:                                 ; preds = %bb.q
  %.val.i.i174 = load i32, ptr %i.fh, align 8, !tbaa !50
  %i.im = ashr i32 %i.ij, %.val.i.i174
  %.val5.i.i = load i32, ptr %i.ib, align 4, !tbaa !51
  %i.in = and i32 %.val5.i.i, %i.ij
  %i.io = sext i32 %i.im to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.io
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !53
  %i.ir = sext i32 %i.in to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iu = load i32, ptr %i.is, align 4
  %i.iv = lshr i32 %i.iu, 11
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !40
  store i32 %i.iy, ptr %i.ii, align 4, !tbaa !40
  %.pre309 = load i32, ptr %0, align 8, !tbaa !33
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %clause_read.exit
  %i.iz = phi i32 [ %i.ih, %bb.q ], [ %i.ih, %bb.p ], [ %.pre309, %clause_read.exit ] ; 4 uses
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = icmp slt i64 %indvars.iv.next290, %i.ja
  br i1 %i.jb, label %bb.p, label %.preheader, !llvm.loop !137

bb.s:                                             ; preds = %.lr.ph280, %._crit_edge277
  %i.jc = phi i32 [ %i.iz, %.lr.ph280 ], [ %i.ke, %._crit_edge277 ]
  %indvars.iv295 = phi i64 [ 0, %.lr.ph280 ], [ %indvars.iv.next296, %._crit_edge277 ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv295 ; 2 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %.val = load ptr, ptr %i.je, align 8, !tbaa !41 ; 2 uses
  %i.jf = getelementptr i8, ptr %i.jd, i64 4      ; 3 uses
  %.val165272 = load i32, ptr %i.jf, align 4, !tbaa !44
  %i.jg = icmp sgt i32 %.val165272, 0
  br i1 %i.jg, label %.lr.ph276, label %._crit_edge277

.lr.ph276:                                        ; preds = %bb.s, %bb.v
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %.3274 = phi i32 [ %.4, %bb.v ], [ 0, %bb.s ]   ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv292
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !40 ; 7 uses
  %i.jj = and i32 %i.ji, 1
  %.not152 = icmp eq i32 %i.jj, 0
  br i1 %.not152, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %.lr.ph276
  %.val172 = load i32, ptr %i.if, align 8, !tbaa !94
  %i.jk = and i32 %.val172, %i.ji
  %.not242 = icmp eq i32 %i.jk, 0
  br i1 %.not242, label %.sink.split, label %clause_read.exit179

clause_read.exit179:                              ; preds = %bb.t
  %.not.i.i175 = icmp ne i32 %i.ji, 0
  call void @llvm.assume(i1 %.not.i.i175)
  %.val.i.i176 = load i32, ptr %i.fh, align 8, !tbaa !50
  %i.jl = ashr i32 %i.ji, %.val.i.i176
  %.val5.i.i177 = load i32, ptr %i.ig, align 4, !tbaa !51
  %i.jm = and i32 %.val5.i.i177, %i.ji
  %i.jn = sext i32 %i.jl to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.jn
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !53
  %i.jq = sext i32 %i.jm to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4            ; 2 uses
  %i.jt = and i32 %i.js, 2
  %.not154 = icmp eq i32 %i.jt, 0
  br i1 %.not154, label %bb.u, label %bb.v

bb.u:                                             ; preds = %clause_read.exit179
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jv = lshr i32 %i.js, 11
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %.lr.ph276, %bb.u
  %.sink = phi i32 [ %i.ji, %.lr.ph276 ], [ %i.jy, %bb.u ], [ %i.ji, %bb.t ]
  %i.jz = add nsw i32 %.3274, 1
  %i.ka = sext i32 %.3274 to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ka
  store i32 %.sink, ptr %i.kb, align 4, !tbaa !40
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %clause_read.exit179
  %.4 = phi i32 [ %.3274, %clause_read.exit179 ], [ %i.jz, %.sink.split ] ; 2 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %.val165 = load i32, ptr %i.jf, align 4, !tbaa !44
  %i.kc = sext i32 %.val165 to i64
  %i.kd = icmp slt i64 %indvars.iv.next293, %i.kc
  br i1 %i.kd, label %.lr.ph276, label %._crit_edge277.loopexit, !llvm.loop !138

._crit_edge277.loopexit:                          ; preds = %bb.v
  %.pre310 = load i32, ptr %0, align 8, !tbaa !33
  br label %._crit_edge277

._crit_edge277:                                   ; preds = %._crit_edge277.loopexit, %bb.s
  %i.ke = phi i32 [ %i.jc, %bb.s ], [ %.pre310, %._crit_edge277.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ 0, %bb.s ], [ %.4, %._crit_edge277.loopexit ]
  store i32 %.3.lcssa, ptr %i.jf, align 4, !tbaa !44
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.kf = shl nsw i32 %i.ke, 1
  %i.kg = sext i32 %i.kf to i64
  %i.kh = icmp slt i64 %indvars.iv.next296, %i.kg
  br i1 %i.kh, label %bb.s, label %._crit_edge281, !llvm.loop !139

._crit_edge281:                                   ; preds = %._crit_edge277, %Sat_MemCompactLearned.exit, %.preheader
  %i.ki = load i32, ptr %i.u, align 4, !tbaa !40  ; 4 uses
  %i.kj = load i32, ptr %i.fh, align 8, !tbaa !50 ; 3 uses
  %i.kk = shl i32 %i.ki, %i.kj
  %i.kl = sext i32 %i.ki to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !53
  %.val.i.i180 = load i32, ptr %i.kn, align 4, !tbaa !40
  %i.ko = or i32 %.val.i.i180, %i.kk              ; 2 uses
  %i.kp = shl nuw i32 1, %i.kj
  %i.kq = or i32 %i.kp, 2
  %i.kr = icmp eq i32 %i.ko, %i.kq
  br i1 %i.kr, label %Sat_MemCompactLearned.exit234, label %bb.w

bb.w:                                             ; preds = %._crit_edge281
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !40 ; 4 uses
  %.not108.i = icmp eq i32 %i.kt, 0
  br i1 %.not108.i, label %bb.z, label %Sat_MemClauseHand.exit.i

Sat_MemClauseHand.exit.i:                         ; preds = %bb.w
  %i.ku = ashr i32 %i.kt, %i.kj
  %i.kv = getelementptr i8, ptr %0, i64 52
  %.val5.i.i181 = load i32, ptr %i.kv, align 4, !tbaa !51
  %i.kw = and i32 %.val5.i.i181, %i.kt
  %i.kx = sext i32 %i.ku to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !53
  %i.la = sext i32 %i.kw to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.la ; 4 uses
  %i.lc = icmp slt i32 %i.kt, %i.ko
  br i1 %i.lc, label %bb.x, label %bb.z

bb.x:                                             ; preds = %Sat_MemClauseHand.exit.i
  %i.ld = load i32, ptr %i.lb, align 4            ; 2 uses
  %i.le = and i32 %i.ld, 2
  %.not109.i = icmp eq i32 %i.le, 0
  br i1 %.not109.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.lg = lshr i32 %i.ld, 11
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !40
  store i32 %i.lj, ptr %i.ks, align 4, !tbaa !40
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %Sat_MemClauseHand.exit.i, %bb.w
  %.096.i = phi ptr [ %i.lb, %bb.x ], [ null, %bb.y ], [ %i.lb, %Sat_MemClauseHand.exit.i ], [ null, %bb.w ] ; 2 uses
  %.not110150.i182 = icmp slt i32 %i.ki, 1
  br i1 %.not110150.i182, label %._crit_edge.i200, label %.preheader.i184

.preheader.i184:                                  ; preds = %bb.z, %.critedge.i192
  %i.lk = phi i32 [ %i.nr, %.critedge.i192 ], [ %i.ki, %bb.z ]
  %i.ll = phi ptr [ %i.ns, %.critedge.i192 ], [ %i.fl, %bb.z ] ; 2 uses
  %i.lm = phi ptr [ %i.nt, %.critedge.i192 ], [ %i.fl, %bb.z ] ; 3 uses
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i198, %.critedge.i192 ], [ 1, %bb.z ] ; 4 uses
  %.0156.i186 = phi i32 [ %.1.lcssa.i197, %.critedge.i192 ], [ 0, %bb.z ] ; 2 uses
  %.083155.i187 = phi i32 [ %.184.lcssa.i196, %.critedge.i192 ], [ 0, %bb.z ] ; 2 uses
  %.086154.i188 = phi i32 [ %.187.lcssa.i195, %.critedge.i192 ], [ 2, %bb.z ] ; 2 uses
  %.090153.i189 = phi i32 [ %.191.lcssa.i194, %.critedge.i192 ], [ 1, %bb.z ] ; 2 uses
  %.197151.i190 = phi ptr [ %.298.lcssa.i193, %.critedge.i192 ], [ %.096.i, %bb.z ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.i185
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !53 ; 2 uses
  %.val132.i191 = load i32, ptr %i.lo, align 4, !tbaa !40
  %i.lp = icmp sgt i32 %.val132.i191, 2
  br i1 %i.lp, label %.lr.ph.preheader.i206, label %.critedge.i192

.lr.ph.preheader.i206:                            ; preds = %.preheader.i184, %bb.aj
  %i.lq = phi ptr [ %i.nh, %bb.aj ], [ %i.ll, %.preheader.i184 ] ; 3 uses
  %i.lr = phi ptr [ %i.np, %bb.aj ], [ %i.lo, %.preheader.i184 ]
  %i.ls = phi ptr [ %i.nh, %bb.aj ], [ %i.lm, %.preheader.i184 ] ; 2 uses
  %.1139.i207 = phi i32 [ %.2.i222, %bb.aj ], [ %.0156.i186, %.preheader.i184 ] ; 4 uses
  %.184138.i208 = phi i32 [ %.3.i221, %bb.aj ], [ %.083155.i187, %.preheader.i184 ] ; 3 uses
  %.187137.i209 = phi i32 [ %.389.i220, %bb.aj ], [ %.086154.i188, %.preheader.i184 ] ; 5 uses
  %.191136.i210 = phi i32 [ %.393.i219, %bb.aj ], [ %.090153.i189, %.preheader.i184 ] ; 5 uses
  %.094134.i211 = phi i32 [ %i.nn, %bb.aj ], [ 2, %.preheader.i184 ] ; 3 uses
  %.298133.i212 = phi ptr [ %.399.i218, %bb.aj ], [ %.197151.i190, %.preheader.i184 ] ; 4 uses
  %i.lt = zext nneg i32 %.094134.i211 to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lt ; 6 uses
  %i.lv = load i32, ptr %i.lu, align 4            ; 5 uses
  %i.lw = and i32 %i.lv, 2
  %.not114.i213 = icmp eq i32 %i.lw, 0
  br i1 %.not114.i213, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.preheader.i206
  %.not119.i214 = icmp eq ptr %.298133.i212, null
  br i1 %.not119.i214, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.lx = icmp eq ptr %.298133.i212, %i.lu        ; 2 uses
  %spec.select.i215 = select i1 %i.lx, ptr null, ptr %.298133.i212
  %spec.select120.i216 = select i1 %i.lx, i32 1, i32 %.184138.i208
  br label %bb.aj

bb.ac:                                            ; preds = %.lr.ph.preheader.i206
  %.not115.i226 = icmp eq i32 %.184138.i208, 0
  br i1 %.not115.i226, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lz = lshr i32 %i.lv, 11
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !40
  store i32 %i.mc, ptr %i.ks, align 4, !tbaa !40
  %.val122.pre.i227 = load i32, ptr %i.lu, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.val122.i228 = phi i32 [ %.val122.pre.i227, %bb.ad ], [ %i.lv, %bb.ac ] ; 2 uses
  %i.md = lshr i32 %.val122.i228, 11
  %i.me = and i32 %.val122.i228, 1
  %i.mf = add nuw nsw i32 %i.md, 2
  %i.mg = add nuw nsw i32 %i.mf, %i.me
  %i.mh = and i32 %i.mg, 8388606                  ; 3 uses
  %i.mi = add nsw i32 %i.mh, %.187137.i209
  %i.mj = load i32, ptr %i.fh, align 8, !tbaa !50
  %i.mk = shl nuw i32 1, %i.mj
  %.not116.i229 = icmp slt i32 %i.mi, %i.mk
  br i1 %.not116.i229, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ml = sext i32 %.191136.i210 to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !53
  store i32 %.187137.i209, ptr %i.mn, align 4, !tbaa !40
  %i.mo = add nsw i32 %.191136.i210, 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.292.i230 = phi i32 [ %i.mo, %bb.af ], [ %.191136.i210, %bb.ae ] ; 3 uses
  %.288.i231 = phi i32 [ 2, %bb.af ], [ %.187137.i209, %bb.ae ] ; 3 uses
  %i.mp = zext i32 %.292.i230 to i64
  %.not117.i = icmp eq i64 %indvars.iv.i185, %i.mp
  %.not118.i = icmp eq i32 %.094134.i211, %.288.i231
  %or.cond.i = select i1 %.not117.i, i1 %.not118.i, i1 false
  br i1 %or.cond.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mq = sext i32 %.292.i230 to i64              ; 2 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.mq
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !53
  %i.mt = sext i32 %.288.i231 to i64              ; 2 uses
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = shl nuw nsw i32 %i.mh, 2
  %i.mw = zext nneg i32 %i.mv to i64
end_hunk_0
