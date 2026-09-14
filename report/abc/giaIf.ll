Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIf?download=true
inline.NumInlined: 1199
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 85
begin_hunk_0_@Gia_ManFromIfLogicCofVars:bb.a
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i118
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !110 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i118
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !110
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i118
  store i64 %i.ig, ptr %gep.i, align 8, !tbaa !110
  %indvars.iv.next.i119 = or disjoint i64 %indvars.iv.i118, 1 ; 3 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i119
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !110 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i119
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !110
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i119
  store i64 %i.ij, ptr %gep.i.1, align 8, !tbaa !110
  %indvars.iv.next.i119.1 = or disjoint i64 %indvars.iv.i118, 2 ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i119.1
  %i.im = load i64, ptr %i.il, align 8, !tbaa !110 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i119.1
  store i64 %i.im, ptr %i.in, align 8, !tbaa !110
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i119.1
  store i64 %i.im, ptr %gep.i.2, align 8, !tbaa !110
  %indvars.iv.next.i119.2 = or disjoint i64 %indvars.iv.i118, 3 ; 3 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i119.2
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !110 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i119.2
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !110
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i119.2
  store i64 %i.ip, ptr %gep.i.3, align 8, !tbaa !110
  %indvars.iv.next.i119.3 = add nuw nsw i64 %indvars.iv.i118, 4 ; 2 uses
  %niter540.next.3 = add i64 %niter540, 4         ; 2 uses
  %niter540.ncmp.3 = icmp eq i64 %niter540.next.3, %unroll_iter539
  br i1 %niter540.ncmp.3, label %._crit_edge.us.i121.loopexit.unr-lcssa, label %scalar.ph450, !llvm.loop !332

._crit_edge.us.i121.loopexit.unr-lcssa:           ; preds = %scalar.ph450
  br i1 %lcmp.mod537.not, label %._crit_edge.us.i121, label %scalar.ph450.epil.preheader

scalar.ph450.epil.preheader:                      ; preds = %._crit_edge.us.i121.loopexit.unr-lcssa, %scalar.ph450.preheader
  %indvars.iv.i118.epil.init = phi i64 [ 0, %scalar.ph450.preheader ], [ %indvars.iv.next.i119.3, %._crit_edge.us.i121.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod538)
  br label %scalar.ph450.epil

scalar.ph450.epil:                                ; preds = %scalar.ph450.epil, %scalar.ph450.epil.preheader
  %indvars.iv.i118.epil = phi i64 [ %indvars.iv.next.i119.epil, %scalar.ph450.epil ], [ %indvars.iv.i118.epil.init, %scalar.ph450.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph450.epil ], [ 0, %scalar.ph450.epil.preheader ]
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i118.epil
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !110 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i118.epil
  store i64 %i.is, ptr %i.it, align 8, !tbaa !110
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i118.epil
  store i64 %i.is, ptr %gep.i.epil, align 8, !tbaa !110
  %indvars.iv.next.i119.epil = add nuw nsw i64 %indvars.iv.i118.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter536
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i121, label %scalar.ph450.epil, !llvm.loop !333

._crit_edge.us.i121:                              ; preds = %vector.body454, %._crit_edge.us.i121.loopexit.unr-lcssa, %scalar.ph450.epil
  %i.iu = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.dk ; 2 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.dk
  %i.iw = icmp ult ptr %i.iu, %i.df
  br i1 %i.iw, label %.preheader.us.i117, label %Abc_TtCofactor1p.exit, !llvm.loop !9

Abc_TtCofactor1p.exit.sink.split:                 ; preds = %bb.d, %bb.i
  %.sink = phi i64 [ %i.gz, %bb.i ], [ %i.ew, %bb.d ]
  store i64 %.sink, ptr %i.a, align 16, !tbaa !110
  br label %Abc_TtCofactor1p.exit

Abc_TtCofactor1p.exit.loopexit.unr-lcssa:         ; preds = %scalar.ph431
  br i1 %lcmp.mod543.not, label %Abc_TtCofactor1p.exit, label %scalar.ph431.epil.preheader

scalar.ph431.epil.preheader:                      ; preds = %Abc_TtCofactor1p.exit.loopexit.unr-lcssa, %scalar.ph431.preheader
  %indvars.iv56.i.epil.init = phi i64 [ 0, %scalar.ph431.preheader ], [ %indvars.iv.next57.i.1, %Abc_TtCofactor1p.exit.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod544)
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv56.i.epil.init
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !110
  %i.iz = and i64 %i.iy, %i.ha                    ; 2 uses
  %i.ja = shl i64 %i.iz, %i.dq
  %i.jb = or i64 %i.ja, %i.iz
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv56.i.epil.init
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !110
  br label %Abc_TtCofactor1p.exit

Abc_TtCofactor1p.exit.loopexit519.unr-lcssa:      ; preds = %scalar.ph464
  br i1 %lcmp.mod532.not, label %Abc_TtCofactor1p.exit, label %scalar.ph464.epil.preheader

scalar.ph464.epil.preheader:                      ; preds = %Abc_TtCofactor1p.exit.loopexit519.unr-lcssa, %scalar.ph464.preheader
  %indvars.iv58.i.epil.init = phi i64 [ 0, %scalar.ph464.preheader ], [ %indvars.iv.next59.i.1, %Abc_TtCofactor1p.exit.loopexit519.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod533)
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv58.i.epil.init
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !110
  %i.jf = and i64 %i.je, %i.ex                    ; 2 uses
  %i.jg = lshr i64 %i.jf, %i.dq
  %i.jh = or i64 %i.jg, %i.jf
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv58.i.epil.init
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !110
  br label %Abc_TtCofactor1p.exit

Abc_TtCofactor1p.exit:                            ; preds = %._crit_edge.us.i, %vector.body472, %scalar.ph464.epil.preheader, %Abc_TtCofactor1p.exit.loopexit519.unr-lcssa, %._crit_edge.us.i121, %vector.body437, %scalar.ph431.epil.preheader, %Abc_TtCofactor1p.exit.loopexit.unr-lcssa, %Abc_TtCofactor1p.exit.sink.split, %bb.l, %bb.g, %bb.k, %bb.f
  %i.jj = load i64, ptr %i.h, align 4
  %i.jk = trunc i64 %i.jj to i32                  ; 2 uses
  %i.jl = lshr i32 %i.jk, 24                      ; 4 uses
  %i.jm = call i32 @llvm.umax.i32(i32 %i.jl, i32 6) ; 3 uses
  %.not.i123 = icmp eq i32 %i.jl, 0
  br i1 %.not.i123, label %Abc_TtMinBase.exit.thread, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %Abc_TtCofactor1p.exit
  %i.jn = icmp ult i32 %i.jk, 117440512
  %i.jo = add nsw i32 %i.jm, -6                   ; 2 uses
  %i.jp = shl nuw i32 1, %i.jo                    ; 2 uses
  %i.jq = sext i32 %i.jp to i64
  %.idx.i.i = shl nsw i64 %i.jq, 3
  %i.jr = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i.i
  %smax56.i.i = call i32 @llvm.smax.i32(i32 %i.jp, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.jn, label %Abc_TtHasVar.exit.us.preheader.i, label %.lr.ph.split.i

Abc_TtHasVar.exit.us.preheader.i:                 ; preds = %.lr.ph.i124
  %wide.trip.count74.i = zext nneg i32 %i.jl to i64
  %.pre289 = load i64, ptr %i.a, align 16, !tbaa !110
  br label %Abc_TtHasVar.exit.us.i

Abc_TtHasVar.exit.us.i:                           ; preds = %Abc_TtHasVar.exit.thread.us.i, %Abc_TtHasVar.exit.us.preheader.i
  %i.js = phi i64 [ %.pre289, %Abc_TtHasVar.exit.us.preheader.i ], [ %i.ki, %Abc_TtHasVar.exit.thread.us.i ] ; 4 uses
  %indvars.iv71.i = phi i64 [ 0, %Abc_TtHasVar.exit.us.preheader.i ], [ %indvars.iv.next72.i, %Abc_TtHasVar.exit.thread.us.i ] ; 5 uses
  %.037.us.i = phi i32 [ 0, %Abc_TtHasVar.exit.us.preheader.i ], [ %.1.us.i, %Abc_TtHasVar.exit.thread.us.i ] ; 4 uses
  %i.jt = trunc nuw nsw i64 %indvars.iv71.i to i32 ; 2 uses
  %i.ju = shl nuw i32 1, %i.jt
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = lshr i64 %i.js, %i.jv
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv71.i
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !110
  %i.jz = xor i64 %i.jw, %i.js
  %i.ka = and i64 %i.jz, %i.jy
  %.not32.us.i = icmp eq i64 %i.ka, 0
  br i1 %.not32.us.i, label %Abc_TtHasVar.exit.thread.us.i, label %Abc_TtHasVar.exit.thread29.us.i

Abc_TtHasVar.exit.thread29.us.i:                  ; preds = %Abc_TtHasVar.exit.us.i
  %i.kb = sext i32 %.037.us.i to i64              ; 2 uses
  %i.kc = icmp sgt i64 %indvars.iv71.i, %i.kb
  br i1 %i.kc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %Abc_TtHasVar.exit.thread29.us.i
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv71.i
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !19
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.kb
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !19
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.a, i32 noundef %i.jm, i32 noundef %.037.us.i, i32 noundef %i.jt)
  %.pre = load i64, ptr %i.a, align 16, !tbaa !110
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %Abc_TtHasVar.exit.thread29.us.i
  %i.kg = phi i64 [ %.pre, %bb.m ], [ %i.js, %Abc_TtHasVar.exit.thread29.us.i ]
  %i.kh = add nsw i32 %.037.us.i, 1
  br label %Abc_TtHasVar.exit.thread.us.i

Abc_TtHasVar.exit.thread.us.i:                    ; preds = %bb.n, %Abc_TtHasVar.exit.us.i
  %i.ki = phi i64 [ %i.kg, %bb.n ], [ %i.js, %Abc_TtHasVar.exit.us.i ]
  %.1.us.i = phi i32 [ %i.kh, %bb.n ], [ %.037.us.i, %Abc_TtHasVar.exit.us.i ] ; 2 uses
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count74.i
  br i1 %exitcond75.not.i, label %Abc_TtMinBase.exit, label %Abc_TtHasVar.exit.us.i, !llvm.loop !334

.lr.ph.split.i:                                   ; preds = %.lr.ph.i124
  %.not48.i.i = icmp eq i32 %i.jo, 31
  br i1 %.not48.i.i, label %Abc_TtMinBase.exit.thread, label %.lr.ph.split.split.split.preheader.i

.lr.ph.split.split.split.preheader.i:             ; preds = %.lr.ph.split.i
  %wide.trip.count.i125 = zext nneg i32 %i.jl to i64
  br label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.split.split.preheader.i
  %indvars.iv.i126 = phi i64 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %indvars.iv.next.i129, %Abc_TtHasVar.exit.thread.i ] ; 8 uses
  %.037.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %.1.i, %Abc_TtHasVar.exit.thread.i ] ; 6 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.i126, 6
  br i1 %i.kj, label %.lr.ph.i.i133, label %.preheader.lr.ph.i.i

.lr.ph.i.i133:                                    ; preds = %.lr.ph.split.split.split.i
  %i.kk = trunc nuw nsw i64 %indvars.iv.i126 to i32
  %i.kl = shl nuw nsw i32 1, %i.kk
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i126
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !110
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.p, !llvm.loop !335

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i133
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i133 ], [ %indvars.iv.next54.i.i, %bb.o ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53.i.i
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !110 ; 2 uses
  %i.kr = lshr i64 %i.kq, %i.km
  %i.ks = xor i64 %i.kr, %i.kq
  %i.kt = and i64 %i.ks, %i.ko
  %.not39.i.i = icmp eq i64 %i.kt, 0
  br i1 %.not39.i.i, label %bb.o, label %Abc_TtHasVar.exit.thread29.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.ku = add nsw i64 %indvars.iv.i126, -6        ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 31
  %i.kw = trunc nuw nsw i64 %i.ku to i32          ; 2 uses
  %i.kx = shl i32 2, %i.kw
  %i.ky = sext i32 %i.kx to i64
  br i1 %i.kv, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.kz = shl nuw nsw i32 1, %i.kw                ; 2 uses
  %8 = zext nneg i32 %i.kz to i64
  %wide.trip.count.i.i127 = zext nneg i32 %i.kz to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.ld, %._crit_edge.us.i.i ], [ %i.a, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %8
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next.i.i131 = add nuw nsw i64 %indvars.iv.i.i128, 1 ; 2 uses
  %exitcond.not.i.i132 = icmp eq i64 %indvars.iv.next.i.i131, %wide.trip.count.i.i127
  br i1 %exitcond.not.i.i132, label %._crit_edge.us.i.i, label %bb.r, !llvm.loop !336

bb.r:                                             ; preds = %bb.q, %.preheader.us.i.i
  %indvars.iv.i.i128 = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i131, %bb.q ] ; 3 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i128
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !110
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i128
  %i.lc = load i64, ptr %gep.i.i, align 8, !tbaa !110
  %.not.us.i.i = icmp eq i64 %i.lb, %i.lc
  br i1 %.not.us.i.i, label %bb.q, label %Abc_TtHasVar.exit.thread29.i

._crit_edge.us.i.i:                               ; preds = %bb.q
  %i.ld = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.ky ; 2 uses
  %i.le = icmp ult ptr %i.ld, %i.jr
  br i1 %i.le, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !337

Abc_TtHasVar.exit.thread29.i:                     ; preds = %bb.p, %bb.r
  %i.lf = sext i32 %.037.i to i64                 ; 2 uses
  %i.lg = icmp sgt i64 %indvars.iv.i126, %i.lf
  br i1 %i.lg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %Abc_TtHasVar.exit.thread29.i
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i126
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !19
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.lf
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !19
  %i.lk = trunc nuw nsw i64 %indvars.iv.i126 to i32
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.a, i32 noundef %i.jm, i32 noundef %.037.i, i32 noundef %i.lk)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %Abc_TtHasVar.exit.thread29.i
  %i.ll = add nsw i32 %.037.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.o, %bb.t, %.preheader.lr.ph.i.i
  %.1.i = phi i32 [ %i.ll, %bb.t ], [ %.037.i, %bb.o ], [ %.037.i, %.preheader.lr.ph.i.i ], [ %.037.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i129 = add nuw nsw i64 %indvars.iv.i126, 1 ; 2 uses
  %exitcond.not.i130 = icmp eq i64 %indvars.iv.next.i129, %wide.trip.count.i125
  br i1 %exitcond.not.i130, label %Abc_TtMinBase.exit, label %.lr.ph.split.split.split.i, !llvm.loop !334

Abc_TtMinBase.exit.thread:                        ; preds = %Abc_TtCofactor1p.exit, %.lr.ph.split.i
  store i32 0, ptr %i.ds, align 4, !tbaa !56
  br label %._crit_edge250.thread

Abc_TtMinBase.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtHasVar.exit.thread.us.i
  %.0.lcssa.i = phi i32 [ %.1.us.i, %Abc_TtHasVar.exit.thread.us.i ], [ %.1.i, %Abc_TtHasVar.exit.thread.i ] ; 5 uses
  store i32 0, ptr %i.ds, align 4, !tbaa !56
  %i.lm = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.lm, label %.lr.ph249.preheader, label %._crit_edge250.thread

.lr.ph249.preheader:                              ; preds = %Abc_TtMinBase.exit
  %wide.trip.count274 = zext nneg i32 %.0.lcssa.i to i64
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %Vec_IntPush.exit
  %indvars.iv271 = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next272, %Vec_IntPush.exit ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv271
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !19
  %.val102 = load ptr, ptr %i.dt, align 8, !tbaa !51
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [4 x i8], ptr %.val102, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !19
  %i.ls = load i32, ptr %i.ds, align 4, !tbaa !56 ; 7 uses
  %i.lt = load i32, ptr %4, align 8, !tbaa !64
  %i.lu = icmp eq i32 %i.ls, %i.lt
  br i1 %i.lu, label %bb.u, label %.lr.ph249.Vec_IntPush.exit_crit_edge

.lr.ph249.Vec_IntPush.exit_crit_edge:             ; preds = %.lr.ph249
  %.pre290 = load ptr, ptr %i.du, align 8, !tbaa !51
  br label %Vec_IntPush.exit

bb.u:                                             ; preds = %.lr.ph249
  %i.lv = icmp slt i32 %i.ls, 16
  br i1 %i.lv, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.lw = load ptr, ptr %i.du, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.lw, null
  br i1 %.not9.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lx = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.lw, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.x:                                             ; preds = %bb.v
  %i.ly = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.y:                                             ; preds = %bb.u
  %i.lz = icmp samesign ult i32 %i.ls, 1073741823
  %i.ma = shl nuw nsw i32 %i.ls, 1
  %spec.select.i = select i1 %i.lz, i32 %i.ma, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ls, %spec.select.i
  %.pre291 = load ptr, ptr %i.du, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i, label %bb.z, label %Vec_IntPush.exit

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i = icmp eq ptr %.pre291, null
  %i.mb = zext nneg i32 %spec.select.i to i64
  %i.mc = shl nuw nsw i64 %i.mb, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.md = call ptr @realloc(ptr noundef nonnull %.pre291, i64 noundef %i.mc) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ab:                                            ; preds = %bb.z
  %i.me = call noalias ptr @malloc(i64 noundef %i.mc) #31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %i.mf = phi ptr [ %i.ly, %bb.x ], [ %i.lx, %bb.w ], [ %i.md, %bb.aa ], [ %i.me, %bb.ab ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i, %bb.aa ], [ %spec.select.i, %bb.ab ]
  store ptr %i.mf, ptr %i.du, align 8, !tbaa !51
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !64
  %.pre292 = load i32, ptr %i.ds, align 4, !tbaa !56
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph249.Vec_IntPush.exit_crit_edge, %bb.y, %Vec_IntGrow.exit11.sink.split.i
  %i.mg = phi i32 [ %i.ls, %.lr.ph249.Vec_IntPush.exit_crit_edge ], [ %i.ls, %bb.y ], [ %.pre292, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.mh = phi ptr [ %.pre290, %.lr.ph249.Vec_IntPush.exit_crit_edge ], [ %.pre291, %bb.y ], [ %i.mf, %Vec_IntGrow.exit11.sink.split.i ]
  %i.mi = add nsw i32 %i.mg, 1
  store i32 %i.mi, ptr %i.ds, align 4, !tbaa !56
  %i.mj = sext i32 %i.mg to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.mj
  store i32 %i.lr, ptr %i.mk, align 4, !tbaa !19
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %._crit_edge250, label %.lr.ph249, !llvm.loop !338

._crit_edge250.thread:                            ; preds = %Abc_TtMinBase.exit.thread, %Abc_TtMinBase.exit
  %.0.lcssa.i390.ph = phi i32 [ %.0.lcssa.i, %Abc_TtMinBase.exit ], [ 0, %Abc_TtMinBase.exit.thread ]
  %i.ml = call i32 @Kit_TruthToGia(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa.i390.ph, ptr noundef %5, ptr noundef nonnull %4, i32 noundef 0) #29
  store i32 %i.ml, ptr %indvars.iv279.sroa.phi548, align 4, !tbaa !19
  br label %bb.bb

._crit_edge250:                                   ; preds = %Vec_IntPush.exit
  %i.mm = call i32 @Kit_TruthToGia(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa.i, ptr noundef %5, ptr noundef nonnull %4, i32 noundef 0) #29 ; 2 uses
  store i32 %i.mm, ptr %indvars.iv279.sroa.phi548, align 4, !tbaa !19
  %i.mn = icmp eq i32 %.0.lcssa.i, 1
  br i1 %i.mn, label %bb.bb, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge250
  %i.mo = ashr i32 %i.mm, 1                       ; 7 uses
  %.val109 = load i32, ptr %i.dv, align 4, !tbaa !56
  %i.mp = add nsw i32 %i.mo, 1                    ; 5 uses
  %i.mq = load i32, ptr %i.dw, align 4, !tbaa !56 ; 4 uses
  %.not.i.not.i = icmp slt i32 %i.mo, %i.mq
  br i1 %.not.i.not.i, label %Vec_IntSetEntry.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mr = load i32, ptr %6, align 8, !tbaa !64    ; 4 uses
  %i.ms = shl nsw i32 %i.mr, 1                    ; 2 uses
  %.not.i134 = icmp slt i32 %i.mo, %i.ms
  %.not.i.i.not.i = icmp sgt i32 %i.mr, %i.mo     ; 2 uses
  br i1 %.not.i134, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mt = load ptr, ptr %i.dx, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.mt, null
  %i.mu = sext i32 %i.mp to i64
  %i.mv = shl nsw i64 %i.mu, 2                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.mw = call ptr @realloc(ptr noundef nonnull %i.mt, i64 noundef %i.mv) #30
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.ah:                                            ; preds = %bb.af
  %i.mx = call noalias ptr @malloc(i64 noundef %i.mv) #31
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.ai:                                            ; preds = %bb.ad
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.my = icmp slt i32 %i.mr, 1073741823
  %spec.select.i.i = select i1 %i.my, i32 %i.ms, i32 2147483647 ; 4 uses
  %.not.i22.i.i = icmp slt i32 %i.mr, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.ak, label %Vec_IntGrow.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.mz = load ptr, ptr %i.dx, align 8, !tbaa !51 ; 2 uses
  %.not9.i23.i.i = icmp eq ptr %i.mz, null
  %i.na = sext i32 %spec.select.i.i to i64
  %i.nb = shl nuw nsw i64 %i.na, 2                ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.am, label %bb.al
end_hunk_0
