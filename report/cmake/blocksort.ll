inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@fallbackSort:bb.a
  %i.es = load i32, ptr %i.er, align 4, !tbaa !20
  %i.et = and i32 %.1151, 31                      ; 2 uses
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = and i32 %i.eu, %i.es
  %i.ew = icmp ne i32 %i.ev, 0                    ; 2 uses
  %i.ex = icmp ne i32 %i.et, 0
  %i.ey = and i1 %i.ex, %i.ew
  %i.ez = add nsw i32 %.1151, 1
  br i1 %i.ey, label %bb.e, label %bb.f, !llvm.loop !76

bb.f:                                             ; preds = %bb.e
  br i1 %i.ew, label %.preheader190, label %.loopexit189

.preheader190:                                    ; preds = %bb.f, %.preheader190
  %.2 = phi i32 [ %i.ff, %.preheader190 ], [ %.1151, %bb.f ] ; 3 uses
  %i.fa = ashr i32 %.2, 5
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !20
  %i.fe = icmp eq i32 %i.fd, -1
  %i.ff = add nsw i32 %.2, 32
  br i1 %i.fe, label %.preheader190, label %.preheader188, !llvm.loop !77

.preheader188:                                    ; preds = %.preheader190, %.preheader188
  %.3 = phi i32 [ %i.fn, %.preheader188 ], [ %.2, %.preheader190 ] ; 4 uses
  %i.fg = ashr i32 %.3, 5
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !20
  %i.fk = and i32 %.3, 31
  %i.fl = shl nuw i32 1, %i.fk
  %i.fm = and i32 %i.fl, %i.fj
  %.not = icmp eq i32 %i.fm, 0
  %i.fn = add nsw i32 %.3, 1
  br i1 %.not, label %.loopexit189, label %.preheader188, !llvm.loop !78

.loopexit189:                                     ; preds = %.preheader188, %bb.f
  %.4 = phi i32 [ %.1151, %bb.f ], [ %.3, %.preheader188 ] ; 6 uses
  %.not174.not = icmp sgt i32 %.4, %3
  br i1 %.not174.not, label %bb.ai, label %.preheader187

.preheader187:                                    ; preds = %.loopexit189, %.preheader187
  %.5 = phi i32 [ %i.fx, %.preheader187 ], [ %.4, %.loopexit189 ] ; 5 uses
  %i.fo = ashr i32 %.5, 5
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !20
  %i.fs = and i32 %.5, 31                         ; 2 uses
  %i.ft = shl nuw i32 1, %i.fs
  %i.fu = and i32 %i.ft, %i.fr
  %.not175 = icmp eq i32 %i.fu, 0                 ; 2 uses
  %i.fv = icmp ne i32 %i.fs, 0
  %i.fw = and i1 %i.fv, %.not175
  %i.fx = add nsw i32 %.5, 1
  br i1 %i.fw, label %.preheader187, label %bb.g, !llvm.loop !79

bb.g:                                             ; preds = %.preheader187
  br i1 %.not175, label %.preheader186, label %.loopexit185

.preheader186:                                    ; preds = %bb.g, %.preheader186
  %.6 = phi i32 [ %i.gd, %.preheader186 ], [ %.5, %bb.g ] ; 3 uses
  %i.fy = ashr i32 %.6, 5
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !20
  %i.gc = icmp eq i32 %i.gb, 0
  %i.gd = add nsw i32 %.6, 32
  br i1 %i.gc, label %.preheader186, label %.preheader184, !llvm.loop !80

.preheader184:                                    ; preds = %.preheader186, %.preheader184
  %.7 = phi i32 [ %i.gl, %.preheader184 ], [ %.6, %.preheader186 ] ; 4 uses
  %i.ge = ashr i32 %.7, 5
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !20
  %i.gi = and i32 %.7, 31
  %i.gj = shl nuw i32 1, %i.gi
  %i.gk = and i32 %i.gj, %i.gh
  %.not176 = icmp eq i32 %i.gk, 0
  %i.gl = add nsw i32 %.7, 1
  br i1 %.not176, label %.preheader184, label %.loopexit185, !llvm.loop !81

.loopexit185:                                     ; preds = %.preheader184, %bb.g
  %.8 = phi i32 [ %.5, %bb.g ], [ %.7, %.preheader184 ] ; 8 uses
  %.not177.not = icmp sgt i32 %.8, %3
  br i1 %.not177.not, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %.loopexit185
  %i.gm = icmp sgt i32 %.8, %.4
  br i1 %i.gm, label %bb.i, label %.preheader191

bb.i:                                             ; preds = %bb.h
  %i.gn = add i32 %.4, -1                         ; 2 uses
  %i.go = add nsw i32 %.8, -1
  %i.gp = add i32 %.0.ph, 1
  %i.gq = sub i32 %i.gp, %.4
  %i.gr = add i32 %i.gq, %.8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.gn, ptr %i.a, align 16, !tbaa !20
  store i32 %i.go, ptr %i.b, align 16, !tbaa !20
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer191.backedge.i, %bb.i
  %.0178.ph260.i = phi i16 [ 0, %bb.i ], [ %i.iw, %.outer191.backedge.i ]
  %.0180.ph259.i = phi i32 [ 1, %bb.i ], [ %.0180.ph.be.i, %.outer191.backedge.i ]
  %i.gs = zext nneg i32 %.0180.ph259.i to i64
  br label %bb.j

bb.j:                                             ; preds = %fallbackSimpleSort.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.gs, %.lr.ph.i ], [ %indvars.iv.next.i, %fallbackSimpleSort.exit.i ] ; 6 uses
  %i.gt = icmp samesign ult i64 %indvars.iv.i, 99
  br i1 %i.gt, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @BZ2_bz__AssertH__fail(i32 noundef 1004) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 6 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !20 ; 15 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !20 ; 16 uses
  %i.gy = sub nsw i32 %i.gx, %i.gv                ; 2 uses
  %i.gz = icmp slt i32 %i.gy, 10
  br i1 %i.gz, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ha = icmp eq i32 %i.gv, %i.gx
  br i1 %i.ha, label %fallbackSimpleSort.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hb = icmp slt i32 %i.gy, 4
  %i.hc = add i32 %i.gx, -4                       ; 2 uses
  %.not65.i.i = icmp slt i32 %i.hc, %i.gv
  %or.cond.i.i = or i1 %i.hb, %.not65.i.i
  br i1 %or.cond.i.i, label %.loopexit58.i.i, label %.lr.ph67.preheader.i.i

.lr.ph67.preheader.i.i:                           ; preds = %bb.n
  %i.hd = sext i32 %i.gx to i64                   ; 3 uses
  %i.he = sext i32 %i.hc to i64
  %i.hf = sext i32 %i.gv to i64
  %invariant.op.i.i = add nsw i64 %i.hd, -4
  br label %.lr.ph67.i.i

.lr.ph67.i.i:                                     ; preds = %.critedge.i.i, %.lr.ph67.preheader.i.i
  %indvars.iv82.i.i = phi i64 [ %i.he, %.lr.ph67.preheader.i.i ], [ %indvars.iv.next83.i.i, %.critedge.i.i ] ; 6 uses
  %indvars.iv.i.i = phi i64 [ %i.hd, %.lr.ph67.preheader.i.i ], [ %indvars.iv.next.i.i, %.critedge.i.i ] ; 2 uses
  %i.hg = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv82.i.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !20 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !20
  %.not5760.i.i = icmp sgt i64 %indvars.iv82.i.i, %invariant.op.i.i
  br i1 %.not5760.i.i, label %.critedge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph67.i.i
  %i.hl = trunc nsw i64 %indvars.iv82.i.i to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.preheader.i.i
  %indvars.iv79.i.i = phi i64 [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ], [ %indvars.iv.next80.i.i, %bb.o ] ; 3 uses
  %.0.in61.i.i = phi i32 [ %i.hl, %.lr.ph.preheader.i.i ], [ %i.hu, %bb.o ] ; 2 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv79.i.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !20 ; 2 uses
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !20
  %i.hr = icmp ugt i32 %i.hk, %i.hq
  br i1 %i.hr, label %bb.o, label %.critedge.loopexit.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.hs = sext i32 %.0.in61.i.i to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hs
  store i32 %i.hn, ptr %i.ht, align 4, !tbaa !20
  %indvars.iv.next80.i.i = add nsw i64 %indvars.iv79.i.i, 4 ; 2 uses
  %.not57.i.i = icmp sgt i64 %indvars.iv.next80.i.i, %i.hd
  %i.hu = trunc nsw i64 %indvars.iv79.i.i to i32  ; 2 uses
  br i1 %.not57.i.i, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !82

.critedge.loopexit.i.i:                           ; preds = %bb.o, %.lr.ph.i.i
  %.0.in.lcssa.ph.i.i = phi i32 [ %.0.in61.i.i, %.lr.ph.i.i ], [ %i.hu, %bb.o ]
  %i.hv = sext i32 %.0.in.lcssa.ph.i.i to i64
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.loopexit.i.i, %.lr.ph67.i.i
  %.0.in.lcssa.i.i = phi i64 [ %indvars.iv82.i.i, %.lr.ph67.i.i ], [ %i.hv, %.critedge.loopexit.i.i ]
  %i.hw = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.in.lcssa.i.i
  store i32 %i.hh, ptr %i.hw, align 4, !tbaa !20
  %indvars.iv.next83.i.i = add nsw i64 %indvars.iv82.i.i, -1
  %.not.not.i.i = icmp sgt i64 %indvars.iv82.i.i, %i.hf
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %.not.not.i.i, label %.lr.ph67.i.i, label %.loopexit58.i.i, !llvm.loop !83

.loopexit58.i.i:                                  ; preds = %.critedge.i.i, %bb.n
  %.not55.not75.i.i = icmp sgt i32 %i.gx, %i.gv
  br i1 %.not55.not75.i.i, label %.lr.ph78.preheader.i.i, label %fallbackSimpleSort.exit.i

.lr.ph78.preheader.i.i:                           ; preds = %.loopexit58.i.i
  %i.hx = sext i32 %i.gx to i64                   ; 2 uses
  %i.hy = add i32 %i.gx, 1                        ; 2 uses
  %i.hz = sext i32 %i.gv to i64
  %i.ia = sext i32 %i.hy to i64
  br label %.lr.ph78.i.i.a

.lr.ph78.i.i.a:                                   ; preds = %.critedge2.i.i, %.lr.ph78.preheader.i.i
  %indvars.iv86.i.i.a = phi i64 [ %i.hx, %.lr.ph78.preheader.i.i ], [ %indvars.iv.next87.i.i.a, %.critedge2.i.i ] ; 4 uses
  %indvars.iv.next87.i.i.a = add nsw i64 %indvars.iv86.i.i.a, -1 ; 3 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next87.i.i.a
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !20 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %1, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !20
  %.not5668.i.i = icmp sgt i64 %indvars.iv86.i.i.a, %i.hx
  br i1 %.not5668.i.i, label %.critedge2.i.i, label %.lr.ph70.i.i.a

.lr.ph70.i.i.a:                                   ; preds = %.lr.ph78.i.i.a, %bb.p
  %indvars.iv88.i.i.a = phi i64 [ %indvars.iv.next89.i.i.a, %bb.p ], [ %indvars.iv86.i.i.a, %.lr.ph78.i.i.a ] ; 3 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv88.i.i.a ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !20 ; 2 uses
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !20
  %i.il = icmp ugt i32 %i.if, %i.ik
  br i1 %i.il, label %bb.p, label %.critedge2.i.i

bb.p:                                             ; preds = %.lr.ph70.i.i.a
  %i.im = getelementptr i8, ptr %i.ig, i64 -4
  store i32 %i.ih, ptr %i.im, align 4, !tbaa !20
  %indvars.iv.next89.i.i.a = add nsw i64 %indvars.iv88.i.i.a, 1 ; 2 uses
  %lftr.wideiv.i.i.a = trunc i64 %indvars.iv.next89.i.i.a to i32
  %exitcond.not.i.i.a = icmp eq i32 %i.hy, %lftr.wideiv.i.i.a
  br i1 %exitcond.not.i.i.a, label %.critedge2.i.i, label %.lr.ph70.i.i.a, !llvm.loop !84

.critedge2.i.i:                                   ; preds = %bb.p, %.lr.ph70.i.i.a, %.lr.ph78.i.i.a
  %.1.lcssa.i.i = phi i64 [ %indvars.iv86.i.i.a, %.lr.ph78.i.i.a ], [ %indvars.iv88.i.i.a, %.lr.ph70.i.i.a ], [ %i.ia, %bb.p ]
  %i.in = getelementptr [4 x i8], ptr %0, i64 %.1.lcssa.i.i
  %i.io = getelementptr i8, ptr %i.in, i64 -4
  store i32 %i.ic, ptr %i.io, align 4, !tbaa !20
  %.not55.not.i.i = icmp sgt i64 %indvars.iv.next87.i.i.a, %i.hz
  br i1 %.not55.not.i.i, label %.lr.ph78.i.i.a, label %fallbackSimpleSort.exit.i, !llvm.loop !85

fallbackSimpleSort.exit.i:                        ; preds = %.critedge2.i.i, %.loopexit58.i.i, %bb.m
  %i.ip = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.ip, label %bb.j, label %fallbackQSort3.exit, !llvm.loop !86

bb.q:                                             ; preds = %bb.l
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.is = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.it = trunc nsw i64 %indvars.iv.next.i to i32
  %i.iu = mul i16 %.0178.ph260.i, 7621
  %i.iv = add i16 %i.iu, 1
  %i.iw = and i16 %i.iv, 32767                    ; 2 uses
  %i.ix = urem i16 %i.iw, 3
  switch i16 %i.ix, label %bb.s [
    i16 0, label %bb.t
    i16 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.iy = add nsw i32 %i.gx, %i.gv
  %i.iz = ashr i32 %i.iy, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sink.i = phi i32 [ %i.iz, %bb.r ], [ %i.gx, %bb.s ], [ %i.gv, %bb.q ]
  %i.ja = sext i32 %.sink.i to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !20
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jd
  %.0179.i = load i32, ptr %i.je, align 4, !tbaa !20 ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.ab, %bb.t
  %.0176.i = phi i32 [ %i.gx, %bb.t ], [ %i.kr, %bb.ab ] ; 2 uses
  %.0174.i = phi i32 [ %i.gv, %bb.t ], [ %.1175.ph.lcssa.i, %bb.ab ] ; 2 uses
  %.0169.i = phi i32 [ %i.gx, %bb.t ], [ %i.kw, %bb.ab ] ; 6 uses
  %.0.i = phi i32 [ %i.gv, %bb.t ], [ %i.kv, %bb.ab ] ; 3 uses
  %i.jf = icmp sgt i32 %.0.i, %.0169.i
  br i1 %i.jf, label %.outer190._crit_edge.i, label %.lr.ph213.preheader.i

.lr.ph213.preheader.i:                            ; preds = %bb.u
  %i.jg = sext i32 %.0174.i to i64
  br label %.lr.ph213.i

.lr.ph213.i:                                      ; preds = %.outer190.i, %.lr.ph213.preheader.i
  %indvars.iv313.i = phi i64 [ %i.jg, %.lr.ph213.preheader.i ], [ %indvars.iv.next314.i, %.outer190.i ] ; 4 uses
  %.1.ph222.i = phi i32 [ %.0.i, %.lr.ph213.preheader.i ], [ %i.jt, %.outer190.i ] ; 2 uses
  %i.jh = sext i32 %.1.ph222.i to i64
  %i.ji = tail call i32 @llvm.smax.i32(i32 %.1.ph222.i, i32 %.0169.i) ; 2 uses
  %smax312.i = sext i32 %i.ji to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.lr.ph213.i
  %indvars.iv309.i = phi i64 [ %i.jh, %.lr.ph213.i ], [ %indvars.iv.next310.i, %bb.x ] ; 6 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv309.i
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !20 ; 2 uses
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !20 ; 2 uses
  %i.jo = icmp eq i32 %i.jn, %.0179.i
  br i1 %i.jo, label %.outer190.i, label %bb.w

.outer190.i:                                      ; preds = %bb.v
  %i.jp = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv309.i
  %i.jq = trunc nsw i64 %indvars.iv309.i to i32   ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv313.i ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !20
  store i32 %i.js, ptr %i.jp, align 4, !tbaa !20
  store i32 %i.jk, ptr %i.jr, align 4, !tbaa !20
  %indvars.iv.next314.i = add nsw i64 %indvars.iv313.i, 1 ; 2 uses
  %i.jt = add nsw i32 %i.jq, 1                    ; 2 uses
  %.not261.i = icmp sgt i32 %.0169.i, %i.jq
  br i1 %.not261.i, label %.lr.ph213.i, label %.outer190._crit_edge.loopexit265.i

bb.w:                                             ; preds = %bb.v
  %i.ju = icmp sgt i32 %i.jn, %.0179.i
  br i1 %i.ju, label %.outer190._crit_edge.loopexit.split.loop.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next310.i = add nsw i64 %indvars.iv309.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv309.i, %smax312.i
  br i1 %exitcond.not.i, label %.outer190._crit_edge.loopexit.split.loop.exit392.i, label %bb.v

.outer190._crit_edge.loopexit265.i:               ; preds = %.outer190.i
  %i.jv = trunc nsw i64 %indvars.iv.next314.i to i32
  br label %.outer190._crit_edge.i

.outer190._crit_edge.loopexit.split.loop.exit.i:  ; preds = %bb.w
  %i.jw = trunc nsw i64 %indvars.iv313.i to i32
  %i.jx = trunc nsw i64 %indvars.iv309.i to i32
  br label %.outer190._crit_edge.i

.outer190._crit_edge.loopexit.split.loop.exit392.i: ; preds = %bb.x
  %i.jy = add i32 %i.ji, 1
  %i.jz = trunc nsw i64 %indvars.iv313.i to i32
  br label %.outer190._crit_edge.i

.outer190._crit_edge.i:                           ; preds = %.outer190._crit_edge.loopexit.split.loop.exit392.i, %.outer190._crit_edge.loopexit.split.loop.exit.i, %.outer190._crit_edge.loopexit265.i, %bb.u
  %.1175.ph.lcssa.i = phi i32 [ %i.jv, %.outer190._crit_edge.loopexit265.i ], [ %.0174.i, %bb.u ], [ %i.jw, %.outer190._crit_edge.loopexit.split.loop.exit.i ], [ %i.jz, %.outer190._crit_edge.loopexit.split.loop.exit392.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %i.jt, %.outer190._crit_edge.loopexit265.i ], [ %.0.i, %bb.u ], [ %i.jx, %.outer190._crit_edge.loopexit.split.loop.exit.i ], [ %i.jy, %.outer190._crit_edge.loopexit.split.loop.exit392.i ] ; 9 uses
  %i.ka = icmp sgt i32 %.1.lcssa.i, %.0169.i
  br i1 %i.ka, label %.critedge.i, label %.lr.ph228.preheader.i

.lr.ph228.preheader.i:                            ; preds = %.outer190._crit_edge.i
  %i.kb = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.kc = sext i32 %.0176.i to i64
  br label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %.outer.i, %.lr.ph228.preheader.i
  %indvars.iv319.i = phi i64 [ %i.kc, %.lr.ph228.preheader.i ], [ %indvars.iv.next320.i, %.outer.i ] ; 4 uses
  %.1170.ph238.i = phi i32 [ %.0169.i, %.lr.ph228.preheader.i ], [ %i.ko, %.outer.i ] ; 2 uses
  %i.kd = sext i32 %.1170.ph238.i to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph228.i
  %indvars.iv316.i = phi i64 [ %i.kd, %.lr.ph228.i ], [ %indvars.iv.next317.i, %bb.aa ] ; 7 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv316.i
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !20 ; 3 uses
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !20 ; 2 uses
  %i.kj = icmp eq i32 %i.ki, %.0179.i
  br i1 %i.kj, label %.outer.i, label %bb.z

.outer.i:                                         ; preds = %bb.y
  %i.kk = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv316.i
  %i.kl = trunc nsw i64 %indvars.iv316.i to i32   ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv319.i ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !20
  store i32 %i.kn, ptr %i.kk, align 4, !tbaa !20
  store i32 %i.kf, ptr %i.km, align 4, !tbaa !20
  %indvars.iv.next320.i = add nsw i64 %indvars.iv319.i, -1 ; 2 uses
  %i.ko = add nsw i32 %i.kl, -1                   ; 2 uses
  %.not263.i = icmp slt i32 %.1.lcssa.i, %i.kl
  br i1 %.not263.i, label %.lr.ph228.i, label %.critedge.loopexit264.i

bb.z:                                             ; preds = %bb.y
  %i.kp = icmp slt i32 %i.ki, %.0179.i
  br i1 %i.kp, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next317.i = add nsw i64 %indvars.iv316.i, -1
  %.not262.i = icmp sgt i64 %indvars.iv316.i, %i.kb
  br i1 %.not262.i, label %bb.y, label %.critedge.loopexit.i

bb.ab:                                            ; preds = %bb.z
  %i.kq = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv316.i
  %i.kr = trunc nsw i64 %indvars.iv319.i to i32
  %i.ks = trunc nsw i64 %indvars.iv316.i to i32
  %i.kt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.kb ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !20
  store i32 %i.kf, ptr %i.kt, align 4, !tbaa !20
  store i32 %i.ku, ptr %i.kq, align 4, !tbaa !20
  %i.kv = add nsw i32 %.1.lcssa.i, 1
  %i.kw = add nsw i32 %i.ks, -1
  br label %bb.u

.critedge.loopexit.i:                             ; preds = %bb.aa
  %smin.le = tail call i32 @llvm.smin.i32(i32 %.1170.ph238.i, i32 %.1.lcssa.i)
  %i.kx = add i32 %smin.le, -1
  %i.ky = trunc nsw i64 %indvars.iv319.i to i32
  br label %.critedge.i

.critedge.loopexit264.i:                          ; preds = %.outer.i
  %i.kz = trunc nsw i64 %indvars.iv.next320.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.outer190._crit_edge.i, %.critedge.loopexit264.i, %.critedge.loopexit.i
  %.1177.ph.lcssa207.i = phi i32 [ %i.ky, %.critedge.loopexit.i ], [ %i.kz, %.critedge.loopexit264.i ], [ %.0176.i, %.outer190._crit_edge.i ] ; 3 uses
  %.1170.lcssa.i = phi i32 [ %i.kx, %.critedge.loopexit.i ], [ %i.ko, %.critedge.loopexit264.i ], [ %.0169.i, %.outer190._crit_edge.i ]
  %i.la = icmp slt i32 %.1177.ph.lcssa207.i, %.1175.ph.lcssa.i
  br i1 %i.la, label %.outer191.backedge.i, label %bb.ac

.outer191.backedge.i:                             ; preds = %bb.af, %.critedge.i
  %.0180.ph.be.i = phi i32 [ %.1181.i, %bb.af ], [ %i.it, %.critedge.i ] ; 2 uses
  %i.lb = icmp sgt i32 %.0180.ph.be.i, 0
  br i1 %i.lb, label %.lr.ph.i, label %fallbackQSort3.exit, !llvm.loop !86

bb.ac:                                            ; preds = %.critedge.i
  %i.lc = sub nsw i32 %.1175.ph.lcssa.i, %i.gv
  %i.ld = sub nsw i32 %.1.lcssa.i, %.1175.ph.lcssa.i
  %..i = tail call i32 @llvm.smin.i32(i32 %i.lc, i32 %i.ld) ; 8 uses
  %i.le = icmp sgt i32 %..i, 0
  br i1 %i.le, label %.lr.ph251.preheader.i, label %._crit_edge252.i

.lr.ph251.preheader.i:                            ; preds = %bb.ac
  %i.lf = sub i32 %.1.lcssa.i, %..i
  %i.lg = sext i32 %i.lf to i64                   ; 5 uses
  %i.lh = sext i32 %i.gv to i64                   ; 5 uses
  %i.li = zext nneg i32 %..i to i64               ; 2 uses
  %min.iters.check490 = icmp ult i32 %..i, 8
  br i1 %min.iters.check490, label %.lr.ph251.i.preheader, label %vector.memcheck479

vector.memcheck479:                               ; preds = %.lr.ph251.preheader.i
  %i.lj = shl nsw i64 %i.lh, 2                    ; 2 uses
  %scevgep480 = getelementptr i8, ptr %0, i64 %i.lj
  %i.lk = add nsw i32 %..i, -1
end_hunk_0
