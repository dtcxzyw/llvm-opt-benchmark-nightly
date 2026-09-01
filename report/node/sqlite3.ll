Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3ComputeGeneratedColumns:bb.a
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 14
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 30
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 78
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 94
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 110
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 126
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 142
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 158
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 174
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 190
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 206
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 222
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 238
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 254
  %i.ft = load i16, ptr %i.fd, align 2, !tbaa !885
  %i.fu = load i16, ptr %i.fe, align 2, !tbaa !885
  %i.fv = load i16, ptr %i.ff, align 2, !tbaa !885
  %i.fw = load i16, ptr %i.fg, align 2, !tbaa !885
  %i.fx = load i16, ptr %i.fh, align 2, !tbaa !885
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !885
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !885
  %i.ga = load i16, ptr %i.fk, align 2, !tbaa !885
  %i.gb = insertelement <8 x i16> poison, i16 %i.ft, i64 0
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 1
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 2
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 3
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 4
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 5
  %i.gh = insertelement <8 x i16> %i.gg, i16 %i.fz, i64 6
  %i.gi = insertelement <8 x i16> %i.gh, i16 %i.ga, i64 7
  %i.gj = load i16, ptr %i.fl, align 2, !tbaa !885
  %i.gk = load i16, ptr %i.fm, align 2, !tbaa !885
  %i.gl = load i16, ptr %i.fn, align 2, !tbaa !885
  %i.gm = load i16, ptr %i.fo, align 2, !tbaa !885
  %i.gn = load i16, ptr %i.fp, align 2, !tbaa !885
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !885
  %i.gp = load i16, ptr %i.fr, align 2, !tbaa !885
  %i.gq = load i16, ptr %i.fs, align 2, !tbaa !885
  %i.gr = insertelement <8 x i16> poison, i16 %i.gj, i64 0
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 1
  %i.gt = insertelement <8 x i16> %i.gs, i16 %i.gl, i64 2
  %i.gu = insertelement <8 x i16> %i.gt, i16 %i.gm, i64 3
  %i.gv = insertelement <8 x i16> %i.gu, i16 %i.gn, i64 4
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 5
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 6
  %i.gy = insertelement <8 x i16> %i.gx, i16 %i.gq, i64 7
  %i.gz = lshr <8 x i16> %i.gi, splat (i16 5)
  %i.ha = lshr <8 x i16> %i.gy, splat (i16 5)
  %i.hb = and <8 x i16> %i.gz, splat (i16 1)
  %i.hc = and <8 x i16> %i.ha, splat (i16 1)
  %i.hd = xor <8 x i16> %i.hb, splat (i16 1)
  %i.he = xor <8 x i16> %i.hc, splat (i16 1)
  %i.hf = add <8 x i16> %i.hd, %vec.phi           ; 2 uses
  %i.hg = add <8 x i16> %i.he, %vec.phi127        ; 2 uses
  %index.next128 = add nuw i64 %index126, 16      ; 2 uses
  %i.hh = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.hh, label %vec.epilog.iter.check, label %vector.body125, !llvm.loop !4831

vec.epilog.iter.check:                            ; preds = %vector.body125
  %bin.rdx = add <8 x i16> %i.hg, %i.hf
  %i.hi = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.em, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !888

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec124, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.hi, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hj = and i64 %indvars.iv91, 3                ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  %i.hl = select i1 %i.hk, i64 4, i64 %i.hj
  %n.vec130 = sub nsw i64 %indvars.iv91, %i.hl    ; 2 uses
  %i.hm = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi132 = phi <4 x i16> [ %i.hm, %vec.epilog.ph ], [ %i.ig, %vec.epilog.vector.body ]
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index131
  %i.ho = getelementptr [16 x i8], ptr %i.ej, i64 %index131
  %i.hp = getelementptr [16 x i8], ptr %i.ej, i64 %index131
  %i.hq = getelementptr [16 x i8], ptr %i.ej, i64 %index131
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 14
  %i.hs = getelementptr i8, ptr %i.ho, i64 30
  %i.ht = getelementptr i8, ptr %i.hp, i64 46
  %i.hu = getelementptr i8, ptr %i.hq, i64 62
  %i.hv = load i16, ptr %i.hr, align 2, !tbaa !885
  %i.hw = load i16, ptr %i.hs, align 2, !tbaa !885
  %i.hx = load i16, ptr %i.ht, align 2, !tbaa !885
  %i.hy = load i16, ptr %i.hu, align 2, !tbaa !885
  %i.hz = insertelement <4 x i16> poison, i16 %i.hv, i64 0
  %i.ia = insertelement <4 x i16> %i.hz, i16 %i.hw, i64 1
  %i.ib = insertelement <4 x i16> %i.ia, i16 %i.hx, i64 2
  %i.ic = insertelement <4 x i16> %i.ib, i16 %i.hy, i64 3
  %i.id = lshr <4 x i16> %i.ic, splat (i16 5)
  %i.ie = and <4 x i16> %i.id, splat (i16 1)
  %i.if = xor <4 x i16> %i.ie, splat (i16 1)
  %i.ig = add <4 x i16> %i.if, %vec.phi132        ; 2 uses
  %index.next133 = add nuw i64 %index131, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next133, %n.vec130
  br i1 %i.ih, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4832

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ii = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ig)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec124, %vec.epilog.iter.check ], [ %n.vec130, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.hi, %vec.epilog.iter.check ], [ %i.ii, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ]
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 14
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !885
  %i.im = lshr i16 %i.il, 5
  %i.in = and i16 %i.im, 1
  %i.io = xor i16 %i.in, 1
  %spec.select.i = add i16 %i.io, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv91
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4833

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv91
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 14
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !885
  %i.is = and i16 %i.ir, 32
  %.not.i71 = icmp eq i16 %i.is, 0
  br i1 %.not.i71, label %sqlite3TableColumnToStorage.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.it = load i16, ptr %i.dd, align 8, !tbaa !891
  %i.iu = sub i16 %i.ee, %.0.lcssa.i
  %i.iv = add i16 %i.iu, %i.it
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.r, %._crit_edge.i, %bb.s
  %.018.i = phi i16 [ %i.ee, %bb.r ], [ %i.iv, %bb.s ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.iw = sext i16 %.018.i to i32
  %i.ix = add nsw i32 %1, %i.iw
  call fastcc void @sqlite3ExprCodeGeneratedColumn(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %i.dh, i32 noundef %i.ix)
  %i.iy = load i16, ptr %i.di, align 2, !tbaa !885
  %i.iz = and i16 %i.iy, -129
  store i16 %i.iz, ptr %i.di, align 2, !tbaa !885
  br label %bb.t

bb.t:                                             ; preds = %sqlite3TableColumnToStorage.exit, %sqlite3WalkExpr.exit, %.lr.ph84
  %.361 = phi ptr [ %.05881, %.lr.ph84 ], [ %.05881, %sqlite3TableColumnToStorage.exit ], [ %i.dh, %sqlite3WalkExpr.exit ] ; 3 uses
  %.3 = phi i32 [ %.05682, %.lr.ph84 ], [ 1, %sqlite3TableColumnToStorage.exit ], [ %.05682, %sqlite3WalkExpr.exit ] ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.ja = load i16, ptr %i.ai, align 2, !tbaa !883 ; 2 uses
  %i.jb = sext i16 %i.ja to i64
  %i.jc = icmp slt i64 %indvars.iv.next92, %i.jb
  br i1 %i.jc, label %.lr.ph84, label %._crit_edge85, !llvm.loop !4834

._crit_edge85:                                    ; preds = %bb.t
  %i.jd = icmp ne i32 %.3, 0
  %i.je = icmp ne ptr %.361, null                 ; 2 uses
  %i.jf = select i1 %i.je, i1 %i.jd, i1 false
  br i1 %i.jf, label %bb.m, label %bb.u, !llvm.loop !4835

bb.u:                                             ; preds = %._crit_edge85
  br i1 %i.je, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.jg = load ptr, ptr %.361, align 8, !tbaa !931
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.669, ptr noundef %i.jg)
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.v, %bb.u
  store i32 0, ptr %i.cy, align 4, !tbaa !3888
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3GenerateConstraintChecks(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 -2147483647, -2147483648) %6, i8 noundef zeroext range(i8 0, 3) %7, i8 noundef zeroext %8, i32 noundef range(i32 -2147483648, 2147483647) %9, ptr nofree noundef nonnull writeonly captures(none) %10, ptr noundef %11, ptr noundef %12) unnamed_addr #0 {
bb.a:
  %13 = alloca %struct.Walker, align 8            ; 7 uses
  %.sroa.9 = alloca ptr, align 8                  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.a = icmp ne i32 %6, 0                        ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !653    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !978  ; 106 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.f = load i16, ptr %i.e, align 2, !tbaa !883  ; 2 uses
  %wide.trip.count = sext i16 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !790  ; 2 uses
  %i.i = and i32 %i.h, 128
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.b
  %.08.i.in = phi ptr [ %i.o, %.lr.ph.i ], [ %i.k, %bb.b ]
  %.08.i = load ptr, ptr %.08.i.in, align 8, !tbaa !937, !nonnull !1098, !noundef !1098 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.m = load i16, ptr %i.l, align 1
  %i.n = and i16 %i.m, 3
  %.not5.i = icmp eq i16 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i

sqlite3PrimaryKeyIndex.exit:                      ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i, i64 94
  %i.q = load i16, ptr %i.p, align 2, !tbaa !938
  %i.r = zext i16 %i.q to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %sqlite3PrimaryKeyIndex.exit
  %.0597 = phi ptr [ %.08.i, %sqlite3PrimaryKeyIndex.exit ], [ null, %bb.a ] ; 5 uses
  %.0575 = phi i32 [ %i.r, %sqlite3PrimaryKeyIndex.exit ], [ 1, %bb.a ] ; 8 uses
  %i.s = and i32 %i.h, 2048
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit1006, label %.preheader1005

.preheader1005:                                   ; preds = %bb.c
  %i.t = icmp sgt i16 %i.f, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.not669 = icmp eq ptr %11, null
  %.not670 = icmp eq i8 %8, 11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = add i32 %5, 1                            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 148 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.preheader1005
  %i.ae = phi i1 [ false, %.preheader1005 ], [ true, %.backedge ] ; 3 uses
  %i.af = phi i1 [ true, %.preheader1005 ], [ false, %.backedge ]
  %.0534 = phi i32 [ 0, %.preheader1005 ], [ %.1535.lcssa, %.backedge ] ; 2 uses
  %.0532 = phi i32 [ 0, %.preheader1005 ], [ %.1533.lcssa, %.backedge ] ; 2 uses
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %sqlite3VdbeChangeP5.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3VdbeChangeP5.exit ], [ 0, %bb.d ] ; 12 uses
  %.15331019 = phi i32 [ %.2, %sqlite3VdbeChangeP5.exit ], [ %.0532, %bb.d ] ; 10 uses
  %.15351018 = phi i32 [ %.3, %sqlite3VdbeChangeP5.exit ], [ %.0534, %bb.d ] ; 10 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !884 ; 22 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = and i8 %i.aj, 15                        ; 3 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %sqlite3VdbeChangeP5.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.am = load i16, ptr %i.v, align 4, !tbaa !893
  %i.an = sext i16 %i.am to i64
  %i.ao = icmp eq i64 %indvars.iv, %i.an
  br i1 %i.ao, label %sqlite3VdbeChangeP5.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !885 ; 2 uses
  %i.ar = and i16 %i.aq, 96                       ; 3 uses
  %i.as = icmp eq i16 %i.ar, 0
  %or.cond = or i1 %i.ae, %i.as
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nsw i32 %.15331019, 1
  br label %sqlite3VdbeChangeP5.exit

bb.h:                                             ; preds = %bb.f
  br i1 %.not669, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !24
  %i.aw = icmp sgt i32 %i.av, -1
  %i.ax = icmp ne i16 %i.ar, 0
  %or.cond3 = or i1 %i.ax, %i.aw
  br i1 %or.cond3, label %bb.j, label %sqlite3VdbeChangeP5.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = icmp eq i8 %i.ak, 11
  %narrow671 = select i1 %i.ay, i8 2, i8 %i.ak
  %.0581.in = select i1 %.not670, i8 %narrow671, i8 %8 ; 2 uses
  %i.az = icmp eq i8 %.0581.in, 5
  br i1 %i.az, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !902
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %.0581 = zext i8 %.0581.in to i32
  %i.bd = icmp ne i16 %i.ar, 0
  %or.cond5 = or i1 %i.af, %i.bd
  br i1 %or.cond5, label %bb.o, label %sqlite3VdbeChangeP5.exit

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1582 = phi i32 [ 2, %bb.m ], [ 5, %bb.l ], [ %.0581, %bb.n ] ; 3 uses
  %i.be = trunc i64 %indvars.iv to i16            ; 4 uses
  %i.bf = load i32, ptr %i.g, align 8, !tbaa !790
  %i.bg = and i32 %i.bf, 32
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = icmp slt i16 %i.be, 0
  %or.cond.i = or i1 %i.bi, %i.bh
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %.not23.i = icmp eq i16 %i.be, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 5
  br i1 %min.iters.check, label %.lr.ph.i688.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1257 = icmp samesign ult i64 %indvars.iv, 17
  br i1 %min.iters.check1257, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %indvars.iv, 15                 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = select i1 %i.bk, i64 16, i64 %i.bj      ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv, %i.bl         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi1258 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 46
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 78
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 94
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 110
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 126
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 142
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 158
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 174
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 190
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 206
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 222
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 238
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 254
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !885
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !885
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !885
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !885
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !885
end_hunk_0
begin_hunk_1_@sqlite3GenerateConstraintChecks:bb.a

sqlite3ExprDelete.exit:                           ; preds = %bb.ay, %bb.az
  %i.kr = icmp eq i32 %.25831022, 4
  br i1 %i.kr, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %sqlite3ExprDelete.exit
  %i.ks = load i32, ptr %i.kd, align 8, !tbaa !187 ; 3 uses
  %i.kt = load i32, ptr %i.ke, align 4, !tbaa !945
  %.not.i.i705 = icmp sgt i32 %i.kt, %i.ks
  br i1 %.not.i.i705, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ku = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef 0, i32 noundef %9, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeGoto.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kv = add nsw i32 %i.ks, 1
  store i32 %i.kv, ptr %i.kd, align 8, !tbaa !187
  %i.kw = load ptr, ptr %i.kf, align 8, !tbaa !186
  %i.kx = sext i32 %i.ks to i64
  %i.ky = getelementptr inbounds [24 x i8], ptr %i.kw, i64 %i.kx ; 7 uses
  store i8 9, ptr %i.ky, align 8, !tbaa !565
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  store i16 0, ptr %i.kz, align 2, !tbaa !589
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  store i32 0, ptr %i.la, align 4, !tbaa !586
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i32 %9, ptr %i.lb, align 8, !tbaa !587
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 0, ptr %i.lc, align 4, !tbaa !588
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store ptr null, ptr %i.ld, align 8, !tbaa !229
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  store i8 0, ptr %i.le, align 1, !tbaa !568
  br label %sqlite3VdbeGoto.exit

bb.bd:                                            ; preds = %sqlite3ExprDelete.exit
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !3485
  %i.lh = icmp eq i32 %.25831022, 5
  %spec.store.select8 = select i1 %i.lh, i32 2, i32 %.25831022 ; 5 uses
  %i.li = load ptr, ptr %i.c, align 8, !tbaa !978 ; 2 uses
  %.not.i.i707 = icmp eq ptr %i.li, null
  br i1 %.not.i.i707, label %bb.be, label %sqlite3GetVdbe.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.lj = load ptr, ptr %i.kb, align 8, !tbaa !3544
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ll = load ptr, ptr %0, align 8, !tbaa !653
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 96
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !1330
  %i.lo = and i32 %i.ln, 8
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lq = load i16, ptr %i.kc, align 1
  %i.lr = or i16 %i.lq, 128
  store i16 %i.lr, ptr %i.kc, align 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ls = call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0)
  br label %sqlite3GetVdbe.exit.i

sqlite3GetVdbe.exit.i:                            ; preds = %bb.bh, %bb.bd
  %.0.i.i708 = phi ptr [ %i.ls, %bb.bh ], [ %i.li, %bb.bd ] ; 8 uses
  %i.lt = icmp eq i32 %spec.store.select8, 2
  br i1 %i.lt, label %.split10.i, label %.split.i

.split10.i:                                       ; preds = %sqlite3GetVdbe.exit.i
  %i.lu = load ptr, ptr %i.kb, align 8, !tbaa !3544 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.lu, null
  %..i.i = select i1 %.not.i11.i, ptr %0, ptr %i.lu
  %i.lv = getelementptr inbounds nuw i8, ptr %..i.i, i64 39 ; 2 uses
  %i.lw = load i16, ptr %i.lv, align 1
  %i.lx = or i16 %i.lw, 2
  store i16 %i.lx, ptr %i.lv, align 1
  br label %.split.i

.split.i:                                         ; preds = %.split10.i, %sqlite3GetVdbe.exit.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i.i708, i64 144 ; 4 uses
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !187 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.0.i.i708, i64 148
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !945
  %.not.i.i945 = icmp sgt i32 %i.mb, %i.lz
  br i1 %.not.i.i945, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.split.i
  %i.mc = call fastcc i32 @growOp3(ptr noundef nonnull %.0.i.i708, i32 noundef 71, i32 noundef 275, i32 noundef %spec.store.select8, i32 noundef 0), !inline_history !979
  br label %sqlite3VdbeAddOp3.exit.i

bb.bj:                                            ; preds = %.split.i
  %i.md = add nsw i32 %i.lz, 1
  store i32 %i.md, ptr %i.ly, align 8, !tbaa !187
  %i.me = getelementptr inbounds nuw i8, ptr %.0.i.i708, i64 136
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !186
  %i.mg = sext i32 %i.lz to i64
  %i.mh = getelementptr inbounds [24 x i8], ptr %i.mf, i64 %i.mg ; 7 uses
  store i8 71, ptr %i.mh, align 8, !tbaa !565
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  store i16 0, ptr %i.mi, align 2, !tbaa !589
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  store i32 275, ptr %i.mj, align 4, !tbaa !586
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 %spec.store.select8, ptr %i.mk, align 8, !tbaa !587
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store i32 0, ptr %i.ml, align 4, !tbaa !588
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store ptr null, ptr %i.mm, align 8, !tbaa !229
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  store i8 0, ptr %i.mn, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.bj, %bb.bi
  %.0.i.i946 = phi i32 [ %i.mc, %bb.bi ], [ %i.lz, %bb.bj ] ; 2 uses
  %i.mo = load ptr, ptr %.0.i.i708, align 8, !tbaa !148
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 103
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !552
  %.not.i9.i947 = icmp eq i8 %i.mq, 0
  br i1 %.not.i9.i947, label %bb.bk, label %sqlite3VdbeAddOp4.exit

bb.bk:                                            ; preds = %sqlite3VdbeAddOp3.exit.i
  %i.mr = icmp slt i32 %.0.i.i946, 0
  br i1 %i.mr, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ms = load i32, ptr %i.ly, align 8, !tbaa !187
  %i.mt = add nsw i32 %i.ms, -1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0.i10.i = phi i32 [ %i.mt, %bb.bl ], [ %.0.i.i946, %bb.bk ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i.i708, i64 136
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !186
  %i.mw = sext i32 %.0.i10.i to i64
  %i.mx = getelementptr inbounds [24 x i8], ptr %i.mv, i64 %i.mw
  call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %.0.i.i708, ptr noundef %i.mx, ptr noundef %i.lg, i32 noundef 0), !inline_history !950
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %sqlite3VdbeAddOp3.exit.i, %bb.bm
  %i.my = load i32, ptr %i.ly, align 8, !tbaa !187 ; 2 uses
  %i.mz = icmp sgt i32 %i.my, 0
  br i1 %i.mz, label %bb.bn, label %sqlite3VdbeGoto.exit

bb.bn:                                            ; preds = %sqlite3VdbeAddOp4.exit
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i.i708, i64 136
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !186
  %i.nc = zext nneg i32 %i.my to i64
  %i.nd = getelementptr [24 x i8], ptr %i.nb, i64 %i.nc
  %i.ne = getelementptr i8, ptr %i.nd, i64 -22
  store i16 3, ptr %i.ne, align 2, !tbaa !589
  br label %sqlite3VdbeGoto.exit

sqlite3VdbeGoto.exit:                             ; preds = %bb.bn, %sqlite3VdbeAddOp4.exit, %bb.bc, %bb.bb
  %.3584 = phi i32 [ 4, %bb.bc ], [ 4, %bb.bb ], [ %spec.store.select8, %sqlite3VdbeAddOp4.exit ], [ %spec.store.select8, %bb.bn ] ; 2 uses
  %i.nf = load ptr, ptr %i.kg, align 8, !tbaa !977 ; 4 uses
  %i.ng = sub i32 0, %i.km                        ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 76
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !3876
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 72
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !3295
  %i.nl = add nsw i32 %i.nk, %i.ni
  %i.nm = icmp slt i32 %i.nl, 0
  br i1 %i.nm, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %sqlite3VdbeGoto.exit
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.nf, ptr noundef nonnull readonly %i.d, i32 noundef %i.ng)
  br label %sqlite3VdbeResolveLabel.exit

bb.bp:                                            ; preds = %sqlite3VdbeGoto.exit
  %i.nn = load i32, ptr %i.kd, align 8, !tbaa !187
  %i.no = getelementptr inbounds nuw i8, ptr %i.nf, i64 80
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !1009
  %i.nq = sext i32 %i.ng to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.nq
  store i32 %i.nn, ptr %i.nr, align 4, !tbaa !24
  br label %sqlite3VdbeResolveLabel.exit

sqlite3VdbeResolveLabel.exit:                     ; preds = %bb.bp, %bb.bo, %sqlite3ExprReferencesUpdatedColumn.exit
  %.4585 = phi i32 [ %.25831022, %sqlite3ExprReferencesUpdatedColumn.exit ], [ %.3584, %bb.bo ], [ %.3584, %bb.bp ]
  %.2565 = phi i8 [ %.05631023, %sqlite3ExprReferencesUpdatedColumn.exit ], [ 1, %bb.bo ], [ 1, %bb.bp ] ; 2 uses
  %indvars.iv.next1104 = add nuw nsw i64 %indvars.iv1103, 1 ; 2 uses
  %i.ns = load i32, ptr %i.jk, align 8, !tbaa !24
  %i.nt = sext i32 %i.ns to i64
  %i.nu = icmp slt i64 %indvars.iv.next1104, %i.nt
  br i1 %i.nu, label %bb.aq, label %._crit_edge1026, !llvm.loop !4842

._crit_edge1026:                                  ; preds = %sqlite3VdbeResolveLabel.exit, %bb.ap
  %.0563.lcssa = phi i8 [ 0, %bb.ap ], [ %.2565, %sqlite3VdbeResolveLabel.exit ]
  store i32 0, ptr %i.jr, align 4, !tbaa !3888
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge1026, %bb.ao, %.loopexit1006
  %.3566 = phi i8 [ %.0563.lcssa, %._crit_edge1026 ], [ 0, %bb.ao ], [ 0, %.loopexit1006 ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !1099 ; 3 uses
  store ptr %i.nw, ptr %.sroa.9, align 8, !tbaa !229
  %.not626 = icmp eq ptr %12, null
  br i1 %.not626, label %.loopexit1002, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nx = load ptr, ptr %12, align 8, !tbaa !3479
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nz = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.oa = load i8, ptr %i.nz, align 8, !tbaa !3841
  %i.ob = icmp eq i8 %i.oa, 0                     ; 2 uses
  %. = select i1 %i.ob, ptr null, ptr %12
  %.673 = select i1 %i.ob, i8 4, i8 6
  br label %.loopexit1002

bb.bt:                                            ; preds = %bb.br
  %.not627 = icmp eq ptr %i.nw, null
  br i1 %.not627, label %.loopexit1002, label %.preheader1004

.preheader1004:                                   ; preds = %bb.bt, %.preheader1004
  %.05281029 = phi i32 [ %i.oe, %.preheader1004 ], [ 0, %bb.bt ]
  %.05981028 = phi ptr [ %i.od, %.preheader1004 ], [ %i.nw, %bb.bt ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.05981028, i64 40
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !2795 ; 2 uses
  %i.oe = add nuw nsw i32 %.05281029, 1           ; 3 uses
  %.not628 = icmp eq ptr %i.od, null
  br i1 %.not628, label %bb.bu, label %.preheader1004, !llvm.loop !4843

bb.bu:                                            ; preds = %.preheader1004
  store i32 %i.oe, ptr %.sroa.9, align 8, !tbaa !229
  %i.of = zext nneg i32 %i.oe to i64              ; 2 uses
  %i.og = mul nuw nsw i64 %i.of, 18               ; 3 uses
  %.not.i.i709 = icmp eq ptr %i.b, null
  br i1 %.not.i.i709, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oh = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.b, i64 noundef %i.og), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.oi = call fastcc ptr @sqlite3Malloc(i64 noundef %i.og), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.bw, %bb.bv
  %.0.i.i710 = phi ptr [ %i.oh, %bb.bv ], [ %i.oi, %bb.bw ] ; 8 uses
  %.not.i711 = icmp eq ptr %.0.i.i710, null
  br i1 %.not.i711, label %.critedge675, label %bb.bx

bb.bx:                                            ; preds = %sqlite3DbMallocRaw.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i710, i8 0, i64 %i.og, i1 false)
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i710, i64 %i.of ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %.0.i.i710, ptr %i.ok, align 8, !tbaa !3483
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.cb
  %.05251040 = phi ptr [ %12, %bb.bx ], [ %i.pa, %bb.cb ] ; 3 uses
  %.25901039 = phi i32 [ 0, %bb.bx ], [ %.3591, %bb.cb ] ; 5 uses
  %i.ol = load ptr, ptr %.05251040, align 8, !tbaa !3479
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.on = getelementptr inbounds nuw i8, ptr %.05251040, i64 56
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !4844 ; 3 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.cb, label %.preheader1003

.preheader1003:                                   ; preds = %bb.bz
  %.15991030 = load ptr, ptr %i.nv, align 8, !tbaa !937 ; 4 uses
  %.not6301031 = icmp eq ptr %.15991030, null
  %.not6311032 = icmp eq ptr %.15991030, %i.oo
  %or.cond9921033 = or i1 %.not6301031, %.not6311032
  br i1 %or.cond9921033, label %.critedge, label %.lr.ph1036

.lr.ph1036:                                       ; preds = %.preheader1003, %.lr.ph1036
  %.15991035 = phi ptr [ %.1599, %.lr.ph1036 ], [ %.15991030, %.preheader1003 ]
  %.05261034 = phi i32 [ %i.or, %.lr.ph1036 ], [ 0, %.preheader1003 ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.15991035, i64 40
  %i.or = add nuw nsw i32 %.05261034, 1           ; 2 uses
  %.1599 = load ptr, ptr %i.oq, align 8, !tbaa !937 ; 4 uses
  %.not630 = icmp eq ptr %.1599, null
  %.not631 = icmp eq ptr %.1599, %i.oo
  %or.cond992 = or i1 %.not630, %.not631
  br i1 %or.cond992, label %.critedge, label %.lr.ph1036, !llvm.loop !4845

.critedge:                                        ; preds = %.lr.ph1036, %.preheader1003
  %.0526.lcssa = phi i32 [ 0, %.preheader1003 ], [ %i.or, %.lr.ph1036 ] ; 2 uses
  %.1599.lcssa = phi ptr [ %.15991030, %.preheader1003 ], [ %.1599, %.lr.ph1036 ]
  %i.os = zext nneg i32 %.0526.lcssa to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.os ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !229
  %.not632 = icmp eq i8 %i.ou, 0
  br i1 %.not632, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.critedge
  store i8 1, ptr %i.ot, align 1, !tbaa !229
  %i.ov = sext i32 %.25901039 to i64
  %i.ow = getelementptr inbounds [16 x i8], ptr %.0.i.i710, i64 %i.ov ; 2 uses
  store ptr %.1599.lcssa, ptr %i.ow, align 8, !tbaa !4846
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store i32 %.0526.lcssa, ptr %i.ox, align 8, !tbaa !4848
  %i.oy = add nsw i32 %.25901039, 1
  br label %bb.cb

bb.cb:                                            ; preds = %.critedge, %bb.bz, %bb.ca
  %.3591 = phi i32 [ %.25901039, %bb.bz ], [ %.25901039, %.critedge ], [ %i.oy, %bb.ca ] ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.05251040, i64 32
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !3477 ; 2 uses
  %.not629 = icmp eq ptr %i.pa, null
  br i1 %.not629, label %bb.cc, label %bb.by, !llvm.loop !4849

bb.cc:                                            ; preds = %bb.by, %bb.cb
  %.2590.lcssa = phi i32 [ %.25901039, %bb.by ], [ %.3591, %bb.cb ]
  %.26001041 = load ptr, ptr %i.nv, align 8, !tbaa !937 ; 2 uses
  %.not6331042 = icmp eq ptr %.26001041, null
  br i1 %.not6331042, label %.loopexit1002, label %.lr.ph1047

.lr.ph1047:                                       ; preds = %bb.cc, %bb.ce
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %bb.ce ], [ 0, %bb.cc ] ; 3 uses
  %.26001045 = phi ptr [ %.2600, %bb.ce ], [ %.26001041, %bb.cc ] ; 2 uses
  %.45921043 = phi i32 [ %.5593, %bb.ce ], [ %.2590.lcssa, %bb.cc ] ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oj, i64 %indvars.iv1105
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !229
  %.not634 = icmp eq i8 %i.pc, 0
  br i1 %.not634, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph1047
  %i.pd = sext i32 %.45921043 to i64
  %i.pe = getelementptr inbounds [16 x i8], ptr %.0.i.i710, i64 %i.pd ; 2 uses
  store ptr %.26001045, ptr %i.pe, align 8, !tbaa !4846
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = trunc nuw nsw i64 %indvars.iv1105 to i32
  store i32 %i.pg, ptr %i.pf, align 8, !tbaa !4848
  %i.ph = add nsw i32 %.45921043, 1
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph1047, %bb.cd
  %.5593 = phi i32 [ %.45921043, %.lr.ph1047 ], [ %i.ph, %bb.cd ]
  %i.pi = getelementptr inbounds nuw i8, ptr %.26001045, i64 40
  %indvars.iv.next1106 = add nuw nsw i64 %indvars.iv1105, 1
  %.2600 = load ptr, ptr %i.pi, align 8, !tbaa !937 ; 2 uses
  %.not633 = icmp eq ptr %.2600, null
  br i1 %.not633, label %.loopexit1002, label %.lr.ph1047, !llvm.loop !4850

.loopexit1002:                                    ; preds = %bb.ce, %bb.cc, %bb.bs, %bb.bt, %bb.bq
  %.sroa.15.0 = phi ptr [ null, %bb.bq ], [ null, %bb.bs ], [ null, %bb.bt ], [ %.0.i.i710, %bb.cc ], [ %.0.i.i710, %bb.ce ] ; 3 uses
  %.not.i793 = phi i1 [ true, %bb.bq ], [ true, %bb.bs ], [ true, %bb.bt ], [ false, %bb.cc ], [ false, %bb.ce ] ; 2 uses
  %.0530 = phi ptr [ null, %bb.bq ], [ %., %bb.bs ], [ %12, %bb.bt ], [ %12, %bb.cc ], [ %12, %bb.ce ] ; 9 uses
  %.0529 = phi i8 [ %8, %bb.bq ], [ %.673, %bb.bs ], [ %8, %bb.bt ], [ %8, %bb.cc ], [ %8, %bb.ce ] ; 5 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !547 ; 2 uses
  %i.pl = and i64 %i.pk, 24576
  %i.pm = icmp eq i64 %i.pl, 0
  br i1 %i.pm, label %sqlite3FkRequired.exit748.thread978, label %bb.cf

bb.cf:                                            ; preds = %.loopexit1002
  %i.pn = and i64 %i.pk, 8192
  %.not636 = icmp eq i64 %i.pn, 0
  br i1 %.not636, label %bb.cu, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !3791
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.pr = load ptr, ptr %0, align 8, !tbaa !653
  %i.ps = getelementptr i8, ptr %i.pr, i64 32
  %.val.i = load ptr, ptr %i.ps, align 8, !tbaa !63
  %i.pt = getelementptr i8, ptr %.val.i, i64 56
  %.val.val.i = load ptr, ptr %i.pt, align 8, !tbaa !103 ; 2 uses
  %i.pu = icmp eq ptr %.val.val.i, null
  br i1 %i.pu, label %sqlite3TriggersExist.exit.thread, label %tempTriggersExist.exit.i

tempTriggersExist.exit.i:                         ; preds = %bb.ch
  %i.pv = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 64
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !3792
  %.not15.i = icmp eq ptr %i.pw, null
  br i1 %.not15.i, label %sqlite3TriggersExist.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %tempTriggersExist.exit.i, %bb.cg
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.py = load i16, ptr %i.px, align 1
  %i.pz = and i16 %i.py, 1
  %.not11.i = icmp eq i16 %i.pz, 0
  br i1 %.not11.i, label %sqlite3TriggersExist.exit, label %sqlite3TriggersExist.exit.thread

sqlite3TriggersExist.exit:                        ; preds = %bb.ci
  %i.qa = call fastcc ptr @triggersReallyExist(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i32 noundef 129, ptr noundef null, ptr noundef null) ; 2 uses
  %.not637 = icmp eq ptr %i.qa, null
  br i1 %.not637, label %sqlite3TriggersExist.exit.thread, label %sqlite3FkRequired.exit748.thread

sqlite3TriggersExist.exit.thread:                 ; preds = %bb.ch, %tempTriggersExist.exit.i, %bb.ci, %sqlite3TriggersExist.exit
  %.val687 = load ptr, ptr %0, align 8, !tbaa !653
  %i.qb = getelementptr i8, ptr %.val687, i64 48
  %.val687.val = load i64, ptr %i.qb, align 8, !tbaa !547
  %.0.val.48.val.fr.i = freeze i64 %.val687.val
end_hunk_1
begin_hunk_2_@sqlite3GenerateConstraintChecks:bb.a
  %i.bcw = load ptr, ptr %i.abl, align 8, !tbaa !186
  %i.bcx = zext nneg i32 %i.bcu to i64
  %i.bcy = getelementptr [24 x i8], ptr %i.bcw, i64 %i.bcx
  %i.bcz = getelementptr i8, ptr %i.bcy, i64 -22
  store i16 %.sroa.8.0.copyload, ptr %i.bcz, align 2, !tbaa !589
  br label %sqlite3VdbeChangeP5.exit905

sqlite3VdbeChangeP5.exit905:                      ; preds = %bb.jd, %bb.jc, %sqlite3VdbeGetOp.exit
  %i.bda = add nsw i32 %.05201061, -1
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, 1
  %i.bdb = icmp sgt i32 %.05201061, 1
  br i1 %i.bdb, label %.lr.ph1062, label %._crit_edge1063, !llvm.loop !4863

._crit_edge1063:                                  ; preds = %sqlite3VdbeChangeP5.exit905, %sqlite3VdbeAddOp2.exit902
  call fastcc void @sqlite3UniqueConstraint(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %.36011067)
  %i.bdc = load i32, ptr %i.abk, align 8, !tbaa !187
  %i.bdd = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 103
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !552
  %.not.i.i.i906 = icmp eq i8 %i.bdf, 0
  br i1 %.not.i.i.i906, label %bb.je, label %sqlite3VdbeJumpHere.exit908

bb.je:                                            ; preds = %._crit_edge1063
  %i.bdg = load ptr, ptr %i.abl, align 8, !tbaa !186
  %i.bdh = sext i32 %.0.i.i897 to i64
  %i.bdi = getelementptr inbounds [24 x i8], ptr %i.bdg, i64 %i.bdh
  br label %sqlite3VdbeJumpHere.exit908

sqlite3VdbeJumpHere.exit908:                      ; preds = %._crit_edge1063, %bb.je
  %.0.i.i.i907 = phi ptr [ %i.bdi, %bb.je ], [ @sqlite3VdbeGetOp.dummy, %._crit_edge1063 ]
  %i.bdj = getelementptr inbounds nuw i8, ptr %.0.i.i.i907, i64 8
  store i32 %i.bdc, ptr %i.bdj, align 8, !tbaa !587
  br label %sqlite3VdbeGoto.exit884

sqlite3VdbeGoto.exit884:                          ; preds = %bb.ii, %bb.ih, %sqlite3VdbeAddOp1.exit892, %sqlite3VdbeJumpHere.exit908, %bb.ie
  %.3579 = phi i32 [ 1, %sqlite3VdbeAddOp1.exit892 ], [ %.25781070, %bb.ie ], [ 1, %sqlite3VdbeJumpHere.exit908 ], [ %.25781070, %bb.ih ], [ %.25781070, %bb.ii ] ; 3 uses
  %.3547 = phi i32 [ %.15451074, %sqlite3VdbeAddOp1.exit892 ], [ %.15451074, %bb.ie ], [ %i.bbm, %sqlite3VdbeJumpHere.exit908 ], [ %.15451074, %bb.ih ], [ %.15451074, %bb.ii ] ; 3 uses
  %.5 = phi i32 [ %.4, %sqlite3VdbeAddOp1.exit892 ], [ %.35411075, %bb.ie ], [ %.4, %sqlite3VdbeJumpHere.exit908 ], [ %.35411075, %bb.ih ], [ %.35411075, %bb.ii ] ; 3 uses
  %i.bdk = load ptr, ptr %i.acj, align 8, !tbaa !977 ; 4 uses
  %i.bdl = sub i32 0, %i.adc                      ; 2 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdk, i64 76
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !3876
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdk, i64 72
  %i.bdp = load i32, ptr %i.bdo, align 8, !tbaa !3295
  %i.bdq = add nsw i32 %i.bdp, %i.bdn
  %i.bdr = icmp slt i32 %i.bdq, 0
  br i1 %i.bdr, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %sqlite3VdbeGoto.exit884
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.bdk, ptr noundef nonnull readonly %i.d, i32 noundef %i.bdl)
  br label %sqlite3VdbeResolveLabel.exit909

bb.jg:                                            ; preds = %sqlite3VdbeGoto.exit884
  %i.bds = load i32, ptr %i.abk, align 8, !tbaa !187
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdk, i64 80
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !1009
  %i.bdv = sext i32 %i.bdl to i64
  %i.bdw = getelementptr inbounds [4 x i8], ptr %i.bdu, i64 %i.bdv
  store i32 %i.bds, ptr %i.bdw, align 4, !tbaa !24
  br label %sqlite3VdbeResolveLabel.exit909

sqlite3VdbeResolveLabel.exit909:                  ; preds = %bb.jf, %bb.jg
  %.not662 = icmp eq i32 %i.app, %i.aee
  br i1 %.not662, label %sqlite3ReleaseTempRange.exit, label %bb.jh

bb.jh:                                            ; preds = %sqlite3VdbeResolveLabel.exit909
  br i1 %i.abw, label %bb.ji, label %bb.jl

bb.ji:                                            ; preds = %bb.jh
  %.not.i.i910 = icmp eq i32 %i.app, 0
  br i1 %.not.i.i910, label %sqlite3ReleaseTempRange.exit, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.bdx = load i8, ptr %i.aca, align 1, !tbaa !3708 ; 3 uses
  %i.bdy = icmp ult i8 %i.bdx, 8
  br i1 %i.bdy, label %bb.jk, label %sqlite3ReleaseTempRange.exit

bb.jk:                                            ; preds = %bb.jj
  %i.bdz = add nuw nsw i8 %i.bdx, 1
  store i8 %i.bdz, ptr %i.aca, align 1, !tbaa !3708
  %i.bea = zext nneg i8 %i.bdx to i64
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.bea
  store i32 %i.app, ptr %i.beb, align 4, !tbaa !24
  br label %sqlite3ReleaseTempRange.exit

bb.jl:                                            ; preds = %bb.jh
  %i.bec = load i32, ptr %i.abx, align 4, !tbaa !3709
  %i.bed = icmp sgt i32 %.0575, %i.bec
  br i1 %i.bed, label %bb.jm, label %sqlite3ReleaseTempRange.exit

bb.jm:                                            ; preds = %bb.jl
  store i32 %.0575, ptr %i.abx, align 4, !tbaa !3709
  store i32 %i.app, ptr %i.aby, align 8, !tbaa !3764
  br label %sqlite3ReleaseTempRange.exit

sqlite3ReleaseTempRange.exit:                     ; preds = %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %sqlite3VdbeResolveLabel.exit909
  %i.bee = icmp ne i32 %.25601073, 0
  %or.cond27 = select i1 %i.aog, i1 %i.bee, i1 false
  br i1 %or.cond27, label %.preheader, label %sqlite3VdbeResolveLabel.exit840

.preheader:                                       ; preds = %sqlite3ReleaseTempRange.exit, %bb.jp
  %.pn.i = phi ptr [ %.0.i912, %bb.jp ], [ %.3573, %sqlite3ReleaseTempRange.exit ]
  %.0.in.i911 = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.0.i912 = load ptr, ptr %.0.in.i911, align 8, !tbaa !3477 ; 5 uses
  %i.bef = icmp eq ptr %.0.i912, null
  br i1 %i.bef, label %bb.jq, label %bb.jn

bb.jn:                                            ; preds = %.preheader
  %i.beg = load ptr, ptr %.0.i912, align 8, !tbaa !3479
  %i.beh = icmp eq ptr %i.beg, null
  br i1 %i.beh, label %bb.jq, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bei = getelementptr inbounds nuw i8, ptr %.0.i912, i64 56
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !4844
  %i.bek = icmp eq ptr %i.bej, null
  br i1 %i.bek, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.bel = getelementptr inbounds nuw i8, ptr %.0.i912, i64 41
  %i.bem = load i8, ptr %i.bel, align 1, !tbaa !4864
  %.not.i913 = icmp eq i8 %i.bem, 0
  br i1 %.not.i913, label %sqlite3VdbeResolveLabel.exit840, label %.preheader

bb.jq:                                            ; preds = %bb.jo, %bb.jn, %.preheader
  %i.ben = load i32, ptr %i.abk, align 8, !tbaa !187 ; 3 uses
  %i.beo = load i32, ptr %i.abp, align 4, !tbaa !945
  %.not.i.i914 = icmp sgt i32 %i.beo, %i.ben
  br i1 %.not.i.i914, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.bep = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef 0, i32 noundef %i.ack, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeGoto.exit916

bb.js:                                            ; preds = %bb.jq
  %i.beq = add nsw i32 %i.ben, 1
  store i32 %i.beq, ptr %i.abk, align 8, !tbaa !187
  %i.ber = load ptr, ptr %i.abl, align 8, !tbaa !186
  %i.bes = sext i32 %i.ben to i64
  %i.bet = getelementptr inbounds [24 x i8], ptr %i.ber, i64 %i.bes ; 7 uses
  store i8 9, ptr %i.bet, align 8, !tbaa !565
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 2
  store i16 0, ptr %i.beu, align 2, !tbaa !589
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bet, i64 4
  store i32 0, ptr %i.bev, align 4, !tbaa !586
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bet, i64 8
  store i32 %i.ack, ptr %i.bew, align 8, !tbaa !587
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bet, i64 12
  store i32 0, ptr %i.bex, align 4, !tbaa !588
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bet, i64 16
  store ptr null, ptr %i.bey, align 8, !tbaa !229
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bet, i64 1
  store i8 0, ptr %i.bez, align 1, !tbaa !568
  br label %sqlite3VdbeGoto.exit916

sqlite3VdbeGoto.exit916:                          ; preds = %bb.jr, %bb.js
  %i.bfa = load i32, ptr %i.abk, align 8, !tbaa !187
  %i.bfb = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 103
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !552
  %.not.i.i.i917 = icmp eq i8 %i.bfd, 0
  br i1 %.not.i.i.i917, label %bb.jt, label %sqlite3VdbeJumpHere.exit919

bb.jt:                                            ; preds = %sqlite3VdbeGoto.exit916
  %i.bfe = load ptr, ptr %i.abl, align 8, !tbaa !186
  %i.bff = sext i32 %.25601073 to i64
  %i.bfg = getelementptr inbounds [24 x i8], ptr %i.bfe, i64 %i.bff
  br label %sqlite3VdbeJumpHere.exit919

sqlite3VdbeJumpHere.exit919:                      ; preds = %sqlite3VdbeGoto.exit916, %bb.jt
  %.0.i.i.i918 = phi ptr [ %i.bfg, %bb.jt ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeGoto.exit916 ]
  %i.bfh = getelementptr inbounds nuw i8, ptr %.0.i.i.i918, i64 8
  store i32 %i.bfa, ptr %i.bfh, align 8, !tbaa !587
  br label %sqlite3VdbeResolveLabel.exit840

sqlite3VdbeResolveLabel.exit840:                  ; preds = %bb.jp, %bb.gy, %bb.gx, %bb.gu, %bb.gt, %sqlite3ReleaseTempRange.exit, %sqlite3VdbeJumpHere.exit919, %bb.fb
  %.4580 = phi i32 [ %.25781070, %bb.fb ], [ %.3579, %sqlite3ReleaseTempRange.exit ], [ %.25781070, %bb.gu ], [ %.3579, %sqlite3VdbeJumpHere.exit919 ], [ %.25781070, %bb.gy ], [ %.25781070, %bb.gt ], [ %.25781070, %bb.gx ], [ %.3579, %bb.jp ] ; 3 uses
  %.4574 = phi ptr [ %.25721071, %bb.fb ], [ %.3573, %sqlite3ReleaseTempRange.exit ], [ %.3573, %bb.gu ], [ %.3573, %sqlite3VdbeJumpHere.exit919 ], [ %.3573, %bb.gy ], [ %.3573, %bb.gt ], [ %.3573, %bb.gx ], [ %.3573, %bb.jp ]
  %.6569 = phi i8 [ %.45671072, %bb.fb ], [ %.5568, %sqlite3ReleaseTempRange.exit ], [ %.5568, %bb.gu ], [ %.5568, %sqlite3VdbeJumpHere.exit919 ], [ %.5568, %bb.gy ], [ %.5568, %bb.gt ], [ %.5568, %bb.gx ], [ %.5568, %bb.jp ] ; 3 uses
  %.4562 = phi i32 [ %.25601073, %bb.fb ], [ %.25601073, %sqlite3ReleaseTempRange.exit ], [ %.25601073, %bb.gu ], [ 0, %sqlite3VdbeJumpHere.exit919 ], [ %.25601073, %bb.gy ], [ %.25601073, %bb.gt ], [ %.25601073, %bb.gx ], [ %.25601073, %bb.jp ]
  %.4548 = phi i32 [ %.15451074, %bb.fb ], [ %.3547, %sqlite3ReleaseTempRange.exit ], [ %.15451074, %bb.gu ], [ %.3547, %sqlite3VdbeJumpHere.exit919 ], [ %.15451074, %bb.gy ], [ %.15451074, %bb.gt ], [ %.15451074, %bb.gx ], [ %.3547, %bb.jp ] ; 3 uses
  %.6 = phi i32 [ %.35411075, %bb.fb ], [ %.5, %sqlite3ReleaseTempRange.exit ], [ %.35411075, %bb.gu ], [ %.5, %sqlite3VdbeJumpHere.exit919 ], [ %.35411075, %bb.gy ], [ %.35411075, %bb.gt ], [ %.35411075, %bb.gx ], [ %.5, %bb.jp ] ; 3 uses
  br i1 %.not.i793, label %bb.jw, label %bb.ju

bb.ju:                                            ; preds = %sqlite3VdbeResolveLabel.exit840
  %i.bfi = add nsw i32 %.sroa.6.01066, 1          ; 4 uses
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.8.954 = load i32, ptr %.sroa.9, align 8, !tbaa !229
  %.not17.i921 = icmp slt i32 %i.bfi, %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.8.954
  br i1 %.not17.i921, label %bb.jv, label %._crit_edge1077

bb.jv:                                            ; preds = %bb.ju
  %i.bfj = sext i32 %i.bfi to i64
  %i.bfk = getelementptr inbounds [16 x i8], ptr %.sroa.15.0, i64 %i.bfj ; 2 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 8
  %i.bfm = load i32, ptr %i.bfl, align 8, !tbaa !4848
  %i.bfn = load ptr, ptr %i.bfk, align 8, !tbaa !4846
  br label %indexIteratorNext.exit

bb.jw:                                            ; preds = %sqlite3VdbeResolveLabel.exit840
  %i.bfo = add nsw i32 %.01065, 1
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.8. = load ptr, ptr %.sroa.9, align 8, !tbaa !229
  %i.bfp = getelementptr inbounds nuw i8, ptr %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.8., i64 40
  %i.bfq = load ptr, ptr %i.bfp, align 8, !tbaa !2795 ; 2 uses
  store ptr %i.bfq, ptr %.sroa.9, align 8, !tbaa !229
  br label %indexIteratorNext.exit

indexIteratorNext.exit:                           ; preds = %bb.jv, %bb.jw
  %.2968 = phi i32 [ %i.bfo, %bb.jw ], [ %i.bfm, %bb.jv ] ; 2 uses
  %.sroa.6.1 = phi i32 [ %.sroa.6.01066, %bb.jw ], [ %i.bfi, %bb.jv ]
  %.1.i = phi ptr [ %i.bfq, %bb.jw ], [ %i.bfn, %bb.jv ] ; 2 uses
  %.not649 = icmp eq ptr %.1.i, null
  br i1 %.not649, label %._crit_edge1077, label %bb.fb, !llvm.loop !4865

._crit_edge1077:                                  ; preds = %bb.ju, %indexIteratorNext.exit, %indexIteratorFirst.exit
  %.0.lcssa = phi i32 [ %.1, %indexIteratorFirst.exit ], [ %i.bfi, %bb.ju ], [ %.2968, %indexIteratorNext.exit ]
  %.2578.lcssa = phi i32 [ %.1577, %indexIteratorFirst.exit ], [ %.4580, %indexIteratorNext.exit ], [ %.4580, %bb.ju ]
  %.4567.lcssa = phi i8 [ %.3566, %indexIteratorFirst.exit ], [ %.6569, %indexIteratorNext.exit ], [ %.6569, %bb.ju ]
  %.1545.lcssa = phi i32 [ %.0544, %indexIteratorFirst.exit ], [ %.4548, %indexIteratorNext.exit ], [ %.4548, %bb.ju ] ; 3 uses
  %.3541.lcssa = phi i32 [ %.2540, %indexIteratorFirst.exit ], [ %.6, %indexIteratorNext.exit ], [ %.6, %bb.ju ]
  %.not650 = icmp eq i32 %.1555, 0
  br i1 %.not650, label %bb.kb, label %bb.jx

bb.jx:                                            ; preds = %._crit_edge1077
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 3 uses
  %i.bfs = load i32, ptr %i.bfr, align 8, !tbaa !187 ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.bfu = load i32, ptr %i.bft, align 4, !tbaa !945
  %.not.i.i922 = icmp sgt i32 %i.bfu, %i.bfs
  br i1 %.not.i.i922, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bfv = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 9, i32 noundef 0, i32 noundef %.1555, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeGoto.exit924

bb.jz:                                            ; preds = %bb.jx
  %i.bfw = add nsw i32 %i.bfs, 1
  store i32 %i.bfw, ptr %i.bfr, align 8, !tbaa !187
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bfy = load ptr, ptr %i.bfx, align 8, !tbaa !186
  %i.bfz = sext i32 %i.bfs to i64
  %i.bga = getelementptr inbounds [24 x i8], ptr %i.bfy, i64 %i.bfz ; 7 uses
  store i8 9, ptr %i.bga, align 8, !tbaa !565
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bga, i64 2
  store i16 0, ptr %i.bgb, align 2, !tbaa !589
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bga, i64 4
  store i32 0, ptr %i.bgc, align 4, !tbaa !586
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bga, i64 8
  store i32 %.1555, ptr %i.bgd, align 8, !tbaa !587
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bga, i64 12
  store i32 0, ptr %i.bge, align 4, !tbaa !588
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bga, i64 16
  store ptr null, ptr %i.bgf, align 8, !tbaa !229
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bga, i64 1
  store i8 0, ptr %i.bgg, align 1, !tbaa !568
  br label %sqlite3VdbeGoto.exit924

sqlite3VdbeGoto.exit924:                          ; preds = %bb.jy, %bb.jz
  %i.bgh = load i32, ptr %i.bfr, align 8, !tbaa !187
  %i.bgi = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 103
  %i.bgk = load i8, ptr %i.bgj, align 1, !tbaa !552
  %.not.i.i.i925 = icmp eq i8 %i.bgk, 0
  br i1 %.not.i.i.i925, label %bb.ka, label %sqlite3VdbeJumpHere.exit927

bb.ka:                                            ; preds = %sqlite3VdbeGoto.exit924
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !186
  %i.bgn = getelementptr inbounds [24 x i8], ptr %i.bgm, i64 %.1553
  br label %sqlite3VdbeJumpHere.exit927

sqlite3VdbeJumpHere.exit927:                      ; preds = %sqlite3VdbeGoto.exit924, %bb.ka
  %.0.i.i.i926 = phi ptr [ %i.bgn, %bb.ka ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeGoto.exit924 ]
  %i.bgo = getelementptr inbounds nuw i8, ptr %.0.i.i.i926, i64 8
  store i32 %i.bgh, ptr %i.bgo, align 8, !tbaa !587
  br label %bb.kb

bb.kb:                                            ; preds = %sqlite3VdbeJumpHere.exit927, %._crit_edge1077
  %.not651 = icmp eq i32 %.3541.lcssa, 0
  br i1 %.not651, label %sqlite3VdbeResolveLabel.exit941, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 8 uses
  %i.bgq = load i32, ptr %i.bgp, align 8, !tbaa !187 ; 3 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.d, i64 148 ; 4 uses
  %i.bgs = load i32, ptr %i.bgr, align 4, !tbaa !945
  %.not.i.i928 = icmp sgt i32 %i.bgs, %i.bgq
  br i1 %.not.i.i928, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bgt = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 17, i32 noundef %.1551, i32 noundef %.1545.lcssa, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit930

bb.ke:                                            ; preds = %bb.kc
  %i.bgu = add nsw i32 %i.bgq, 1
  store i32 %i.bgu, ptr %i.bgp, align 8, !tbaa !187
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !186
  %i.bgx = sext i32 %i.bgq to i64
  %i.bgy = getelementptr inbounds [24 x i8], ptr %i.bgw, i64 %i.bgx ; 7 uses
  store i8 17, ptr %i.bgy, align 8, !tbaa !565
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgy, i64 2
  store i16 0, ptr %i.bgz, align 2, !tbaa !589
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgy, i64 4
  store i32 %.1551, ptr %i.bha, align 4, !tbaa !586
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgy, i64 8
  store i32 %.1545.lcssa, ptr %i.bhb, align 8, !tbaa !587
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgy, i64 12
  store i32 0, ptr %i.bhc, align 4, !tbaa !588
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bgy, i64 16
  store ptr null, ptr %i.bhd, align 8, !tbaa !229
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgy, i64 1
  store i8 0, ptr %i.bhe, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp2.exit930

sqlite3VdbeAddOp2.exit930:                        ; preds = %bb.kd, %bb.ke
  %.pre1121 = load i32, ptr %i.bgp, align 8, !tbaa !187 ; 7 uses
  br i1 %i.ui, label %bb.kf, label %bb.km

bb.kf:                                            ; preds = %sqlite3VdbeAddOp2.exit930
  br i1 %i.a, label %bb.kg, label %sqlite3VdbeChangeP5.exit934

bb.kg:                                            ; preds = %bb.kf
  %i.bhf = load i32, ptr %i.bgr, align 4, !tbaa !945
  %.not.i931 = icmp sgt i32 %i.bhf, %.pre1121
  br i1 %.not.i931, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.bhg = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 54, i32 noundef %5, i32 noundef %.0544, i32 noundef %6), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit933

bb.ki:                                            ; preds = %bb.kg
  %i.bhh = add nsw i32 %.pre1121, 1
  store i32 %i.bhh, ptr %i.bgp, align 8, !tbaa !187
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bhj = load ptr, ptr %i.bhi, align 8, !tbaa !186
  %i.bhk = sext i32 %.pre1121 to i64
  %i.bhl = getelementptr inbounds [24 x i8], ptr %i.bhj, i64 %i.bhk ; 7 uses
  store i8 54, ptr %i.bhl, align 8, !tbaa !565
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 2
  store i16 0, ptr %i.bhm, align 2, !tbaa !589
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhl, i64 4
  store i32 %5, ptr %i.bhn, align 4, !tbaa !586
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  store i32 %.0544, ptr %i.bho, align 8, !tbaa !587
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhl, i64 12
  store i32 %6, ptr %i.bhp, align 4, !tbaa !588
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhl, i64 16
  store ptr null, ptr %i.bhq, align 8, !tbaa !229
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhl, i64 1
  store i8 0, ptr %i.bhr, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit933

sqlite3VdbeAddOp3.exit933:                        ; preds = %bb.kh, %bb.ki
  %i.bhs = load i32, ptr %i.bgp, align 8, !tbaa !187 ; 4 uses
  %i.bht = icmp sgt i32 %i.bhs, 0
  br i1 %i.bht, label %bb.kj, label %sqlite3VdbeChangeP5.exit934

bb.kj:                                            ; preds = %sqlite3VdbeAddOp3.exit933
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bhv = load ptr, ptr %i.bhu, align 8, !tbaa !186
  %i.bhw = zext nneg i32 %i.bhs to i64
  %i.bhx = getelementptr [24 x i8], ptr %i.bhv, i64 %i.bhw
  %i.bhy = getelementptr i8, ptr %i.bhx, i64 -22
  store i16 144, ptr %i.bhy, align 2, !tbaa !589
  br label %sqlite3VdbeChangeP5.exit934

sqlite3VdbeChangeP5.exit934:                      ; preds = %bb.kj, %sqlite3VdbeAddOp3.exit933, %bb.kf
  %i.bhz = phi i32 [ %i.bhs, %bb.kj ], [ %i.bhs, %sqlite3VdbeAddOp3.exit933 ], [ %.pre1121, %bb.kf ] ; 3 uses
  %i.bia = load i32, ptr %i.bgr, align 4, !tbaa !945
  %.not.i935 = icmp sgt i32 %i.bia, %i.bhz
  br i1 %.not.i935, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %sqlite3VdbeChangeP5.exit934
  %i.bib = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 31, i32 noundef %3, i32 noundef %.0544, i32 noundef %5), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit937

bb.kl:                                            ; preds = %sqlite3VdbeChangeP5.exit934
  %i.bic = add nsw i32 %i.bhz, 1
  store i32 %i.bic, ptr %i.bgp, align 8, !tbaa !187
  %i.bid = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.bie = load ptr, ptr %i.bid, align 8, !tbaa !186
  %i.bif = sext i32 %i.bhz to i64
  %i.big = getelementptr inbounds [24 x i8], ptr %i.bie, i64 %i.bif ; 7 uses
  store i8 31, ptr %i.big, align 8, !tbaa !565
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 2
  store i16 0, ptr %i.bih, align 2, !tbaa !589
  %i.bii = getelementptr inbounds nuw i8, ptr %i.big, i64 4
  store i32 %3, ptr %i.bii, align 4, !tbaa !586
  %i.bij = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  store i32 %.0544, ptr %i.bij, align 8, !tbaa !587
  %i.bik = getelementptr inbounds nuw i8, ptr %i.big, i64 12
  store i32 %5, ptr %i.bik, align 4, !tbaa !588
  %i.bil = getelementptr inbounds nuw i8, ptr %i.big, i64 16
  store ptr null, ptr %i.bil, align 8, !tbaa !229
  %i.bim = getelementptr inbounds nuw i8, ptr %i.big, i64 1
  store i8 0, ptr %i.bim, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit937

sqlite3VdbeAddOp3.exit937:                        ; preds = %bb.kk, %bb.kl
  call fastcc void @sqlite3RowidConstraint(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %1)
  br label %sqlite3VdbeGoto.exit940

bb.km:                                            ; preds = %sqlite3VdbeAddOp2.exit930
  %i.bin = load i32, ptr %i.bgr, align 4, !tbaa !945
end_hunk_2
