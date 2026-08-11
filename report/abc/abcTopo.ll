inline.NumInlined: 125
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Abc_NtkTopoExact:bb.a
  %.val344.val = load i32, ptr %i.bx, align 4, !tbaa !26 ; 3 uses
  %i.by = add i32 %.val344.val, -1
  %or.cond.i.i = icmp ult i32 %i.by, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val344.val ; 2 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntStart.exit, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %Vec_WrdStartTruthTables.exit
  %i.bz = sext i32 %spec.store.select.i.i to i64
  %i.ca = shl nsw i64 %i.bz, 2
  %i.cb = call noalias ptr @malloc(i64 noundef %i.ca) #15 ; 3 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.h

bb.h:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.cc = sext i32 %.val344.val to i64
  %i.cd = shl nsw i64 %i.cc, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cb, i8 0, i64 %i.cd, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_WrdStartTruthTables.exit, %Vec_IntAlloc.exit.i, %bb.h
  %i.ce = phi ptr [ %i.cb, %bb.h ], [ null, %Vec_IntAlloc.exit.i ], [ null, %Vec_WrdStartTruthTables.exit ] ; 17 uses
  %i.cf = getelementptr i8, ptr %1, i64 56        ; 6 uses
  %.val352 = load ptr, ptr %i.cf, align 8, !tbaa !70 ; 2 uses
  %i.cg = getelementptr i8, ptr %.val352, i64 4   ; 2 uses
  %.val352.val415 = load i32, ptr %i.cg, align 4, !tbaa !26
  %i.ch = icmp sgt i32 %.val352.val415, 0
  br i1 %i.ch, label %.lr.ph418, label %.critedge2.preheader

.lr.ph418:                                        ; preds = %Vec_IntStart.exit
  %i.ci = getelementptr i8, ptr %.val352, i64 8
  %.val354.val = load ptr, ptr %i.ci, align 8, !tbaa !29 ; 5 uses
  %.val352.val = load i32, ptr %i.cg, align 4, !tbaa !26 ; 2 uses
  %i.cj = call i32 @llvm.smax.i32(i32 %.val352.val, i32 1)
  %smax628 = zext nneg i32 %i.cj to i64           ; 2 uses
  %xtraiter = and i64 %smax628, 3                 ; 3 uses
  %i.ck = icmp slt i32 %.val352.val, 4
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph418.new

.lr.ph418.new:                                    ; preds = %.lr.ph418
  %unroll_iter = and i64 %smax628, 2147483644
  br label %bb.j

.critedge2.preheader.loopexit.unr-lcssa:          ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2.preheader.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.preheader.loopexit.unr-lcssa, %.lr.ph418
  %indvars.iv476.epil.init = phi i64 [ 0, %.lr.ph418 ], [ %indvars.iv.next477.3, %.critedge2.preheader.loopexit.unr-lcssa ]
  %lcmp.mod630 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod630)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv476.epil = phi i64 [ %indvars.iv476.epil.init, %.epil.preheader ], [ %indvars.iv.next477.epil, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %indvars480.epil = trunc i64 %indvars.iv476.epil to i32
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val354.val, i64 %indvars.iv476.epil
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !30
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %.val360.epil = load i32, ptr %i.cn, align 8, !tbaa !71
  %indvars.iv.next477.epil = add nuw nsw i64 %indvars.iv476.epil, 1 ; 2 uses
  %i.co = sext i32 %.val360.epil to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.co
  store i32 %indvars480.epil, ptr %i.cp, align 4, !tbaa !62
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge2.preheader.loopexit, label %bb.i, !llvm.loop !72

.critedge2.preheader.loopexit:                    ; preds = %bb.i, %.critedge2.preheader.loopexit.unr-lcssa
  %indvars.iv.next477.lcssa = phi i64 [ %indvars.iv.next477.3, %.critedge2.preheader.loopexit.unr-lcssa ], [ %indvars.iv.next477.epil, %bb.i ]
  %indvars479 = trunc nsw i64 %indvars.iv.next477.lcssa to i32
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %.critedge2.preheader.loopexit, %Vec_IntStart.exit
  %.0273.lcssa = phi i32 [ 0, %Vec_IntStart.exit ], [ %indvars479, %.critedge2.preheader.loopexit ]
  %.val317420 = load i32, ptr %i.bx, align 4, !tbaa !26 ; 2 uses
  %i.cq = icmp sgt i32 %.val317420, 0
  br i1 %i.cq, label %.lr.ph423, label %.critedge4

.lr.ph423:                                        ; preds = %.critedge2.preheader
  %i.cr = getelementptr i8, ptr %.val344, i64 8
  %.val322.val = load ptr, ptr %i.cr, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph418.new
  %indvars.iv476 = phi i64 [ 0, %.lr.ph418.new ], [ %indvars.iv.next477.3, %bb.j ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph418.new ], [ %niter.next.3, %bb.j ]
  %indvars480 = trunc i64 %indvars.iv476 to i32
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val354.val, i64 %indvars.iv476
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !30
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %.val360 = load i32, ptr %i.cu, align 8, !tbaa !71
  %indvars.iv.next477 = or disjoint i64 %indvars.iv476, 1 ; 2 uses
  %i.cv = sext i32 %.val360 to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cv
  store i32 %indvars480, ptr %i.cw, align 4, !tbaa !62
  %indvars480.1 = trunc i64 %indvars.iv.next477 to i32
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.val354.val, i64 %indvars.iv.next477
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !30
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  %.val360.1 = load i32, ptr %i.cz, align 8, !tbaa !71
  %indvars.iv.next477.1 = or disjoint i64 %indvars.iv476, 2 ; 2 uses
  %i.da = sext i32 %.val360.1 to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.da
  store i32 %indvars480.1, ptr %i.db, align 4, !tbaa !62
  %indvars480.2 = trunc i64 %indvars.iv.next477.1 to i32
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val354.val, i64 %indvars.iv.next477.1
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !30
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %.val360.2 = load i32, ptr %i.de, align 8, !tbaa !71
  %indvars.iv.next477.2 = or disjoint i64 %indvars.iv476, 3 ; 2 uses
  %i.df = sext i32 %.val360.2 to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.df
  store i32 %indvars480.2, ptr %i.dg, align 4, !tbaa !62
  %indvars480.3 = trunc i64 %indvars.iv.next477.2 to i32
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.val354.val, i64 %indvars.iv.next477.2
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !30
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %.val360.3 = load i32, ptr %i.dj, align 8, !tbaa !71
  %indvars.iv.next477.3 = add nuw nsw i64 %indvars.iv476, 4 ; 3 uses
  %i.dk = sext i32 %.val360.3 to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.dk
  store i32 %indvars480.3, ptr %i.dl, align 4, !tbaa !62
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.critedge2.preheader.loopexit.unr-lcssa, label %bb.j, !llvm.loop !74

bb.k:                                             ; preds = %.lr.ph423, %.critedge2
  %.val317532 = phi i32 [ %.val317420, %.lr.ph423 ], [ %.val317, %.critedge2 ] ; 2 uses
  %indvars.iv481 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next482, %.critedge2 ] ; 2 uses
  %.1274421 = phi i32 [ %.0273.lcssa, %.lr.ph423 ], [ %.2275, %.critedge2 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.val322.val, i64 %indvars.iv481
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !30 ; 3 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dp = getelementptr i8, ptr %i.dn, i64 20
  %.val327 = load i32, ptr %i.dp, align 4
  %i.dq = and i32 %.val327, 15
  %.not401 = icmp eq i32 %i.dq, 7
  br i1 %.not401, label %bb.m, label %.critedge2

bb.m:                                             ; preds = %bb.l
  %i.dr = getelementptr i8, ptr %i.dn, i64 16
  %.val359 = load i32, ptr %i.dr, align 8, !tbaa !71
  %i.ds = add nsw i32 %.1274421, 1
  %i.dt = sext i32 %.val359 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.dt
  store i32 %.1274421, ptr %i.du, align 4, !tbaa !62
  %.val317.pre = load i32, ptr %i.bx, align 4, !tbaa !26
  br label %.critedge2

.critedge2:                                       ; preds = %bb.m, %bb.l, %bb.k
  %.val317 = phi i32 [ %.val317532, %bb.k ], [ %.val317.pre, %bb.m ], [ %.val317532, %bb.l ] ; 2 uses
  %.2275 = phi i32 [ %.1274421, %bb.k ], [ %i.ds, %bb.m ], [ %.1274421, %bb.l ]
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1 ; 2 uses
  %i.dv = sext i32 %.val317 to i64
  %i.dw = icmp slt i64 %indvars.iv.next482, %i.dv
  br i1 %i.dw, label %bb.k, label %.critedge4, !llvm.loop !75

.critedge4:                                       ; preds = %.critedge2, %.critedge2.preheader
  %i.dx = call ptr @kissat_init() #14             ; 25 uses
  %.val351 = load ptr, ptr %i.cf, align 8, !tbaa !70
  %i.dy = getelementptr i8, ptr %.val351, i64 4
  %.val351.val = load i32, ptr %i.dy, align 4, !tbaa !26 ; 2 uses
  %i.dz = getelementptr i8, ptr %1, i64 124       ; 3 uses
  %.val365 = load i32, ptr %i.dz, align 4, !tbaa !62
  %i.ea = add nsw i32 %.val365, %.val351.val
  %i.eb = shl i32 %i.ea, %.val351.val             ; 2 uses
  %i.ec = add nsw i32 %i.eb, %.0267.lcssa
  call void @kissat_reserve(ptr noundef %i.dx, i32 noundef %i.ec) #14
  %i.ed = icmp sgt i32 %3, 0
  br i1 %i.ed, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge4
  %i.ee = call i32 @kissat_set_option(ptr noundef %i.dx, ptr noundef nonnull @.str, i32 noundef %3) #14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge4
  %i.ef = icmp ne i32 %5, 0                       ; 7 uses
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val349 = load ptr, ptr %i.cf, align 8, !tbaa !70
  %i.eg = getelementptr i8, ptr %.val349, i64 4
  %.val349.val = load i32, ptr %i.eg, align 4, !tbaa !26
  %.val364 = load i32, ptr %i.dz, align 4, !tbaa !62
  %i.eh = getelementptr i8, ptr %1, i64 48
  %.val368 = load ptr, ptr %i.eh, align 8, !tbaa !76
  %i.ei = getelementptr i8, ptr %.val368, i64 4
  %.val368.val = load i32, ptr %i.ei, align 4, !tbaa !26
  %i.ej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.val349.val, i32 noundef %.val364, i32 noundef %.val368.val) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.val348 = load ptr, ptr %i.cf, align 8, !tbaa !70
  %i.ek = getelementptr i8, ptr %.val348, i64 4
  %.val348.val = load i32, ptr %i.ek, align 4, !tbaa !26 ; 4 uses
  %i.el = shl nuw nsw i32 1, %.val348.val
  %i.em = getelementptr i8, ptr %1, i64 48        ; 3 uses
  %.val367 = load ptr, ptr %i.em, align 8, !tbaa !76
  %i.en = getelementptr i8, ptr %.val367, i64 4
  %.val367.val = load i32, ptr %i.en, align 4, !tbaa !26
  %i.eo = add i32 %.val348.val, %.0269.lcssa
  %i.ep = add i32 %i.eo, %.val367.val
  %i.eq = shl i32 %i.ep, %.val348.val
  %i.er = icmp ne i32 %4, 0                       ; 2 uses
  %i.es = shl nsw i32 %.0271.lcssa, 1
  %i.et = select i1 %i.er, i32 %i.es, i32 0
  %i.eu = add nsw i32 %i.eq, %i.et
  %i.ev = icmp ne i32 %.0271.lcssa, 0
  %or.cond = select i1 %i.er, i1 %i.ev, i1 false
  br i1 %or.cond, label %.preheader404, label %.critedge7

.preheader404:                                    ; preds = %bb.q
  %i.ew = load ptr, ptr %i.h, align 8, !tbaa !8   ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %.val316426 = load i32, ptr %i.ex, align 4, !tbaa !26
  %i.ey = icmp sgt i32 %.val316426, 0
  br i1 %i.ey, label %.lr.ph429, label %.critedge7

.lr.ph429:                                        ; preds = %.preheader404, %bb.v
  %.pre542 = phi ptr [ %.pre543, %bb.v ], [ %i.ew, %.preheader404 ] ; 3 uses
  %i.ez = phi ptr [ %i.ge, %bb.v ], [ %i.ew, %.preheader404 ] ; 3 uses
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %bb.v ], [ 0, %.preheader404 ] ; 2 uses
  %.0284427 = phi i32 [ %.1285, %bb.v ], [ 0, %.preheader404 ] ; 4 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %.val321.val = load ptr, ptr %i.fa, align 8, !tbaa !29
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.val321.val, i64 %indvars.iv492
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !30 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.lr.ph429
  %i.fe = getelementptr i8, ptr %i.fc, i64 20
  %.val326 = load i32, ptr %i.fe, align 4
  %i.ff = and i32 %.val326, 15
  %.not400 = icmp eq i32 %i.ff, 7
  br i1 %.not400, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.fg = getelementptr i8, ptr %i.fc, i64 28
  %.val336 = load i32, ptr %i.fg, align 4, !tbaa !34 ; 2 uses
  %i.fh = icmp eq i32 %.val336, 2
  br i1 %i.fh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fi = shl i32 %.0284427, 1                    ; 5 uses
  %i.fj = add i32 %i.fi, 2                        ; 2 uses
  %i.fk = add i32 %i.fi, 4                        ; 2 uses
  %i.fl = add i32 %i.fi, 6                        ; 2 uses
  %i.fm = ashr exact i32 %i.fi, 1
  %i.fn = add nsw i32 %i.fm, 1
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.fn) #14
  %i.fo = ashr exact i32 %i.fj, 1
  %i.fp = xor i32 %i.fo, -1
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.fp) #14
  %i.fq = ashr exact i32 %i.fk, 1
  %i.fr = xor i32 %i.fq, -1
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.fr) #14
  %i.fs = ashr exact i32 %i.fl, 1
  %i.ft = add nsw i32 %i.fs, 1
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.ft) #14
  call void @kissat_add(ptr noundef %i.dx, i32 noundef 0) #14
  %i.fu = ashr exact i32 %i.fi, 1
  %i.fv = xor i32 %i.fu, -1
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.fv) #14
  %i.fw = ashr exact i32 %i.fj, 1
  %i.fx = add nsw i32 %i.fw, 1
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.fx) #14
  %i.fy = ashr exact i32 %i.fk, 1
  %i.fz = add nsw i32 %i.fy, 1
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.fz) #14
  %i.ga = ashr exact i32 %i.fl, 1
  %i.gb = xor i32 %i.ga, -1
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.gb) #14
  call void @kissat_add(ptr noundef %i.dx, i32 noundef 0) #14
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pre = phi ptr [ %.pre.pre, %bb.t ], [ %.pre542, %bb.s ] ; 2 uses
  %i.gc = shl nuw i32 1, %.val336
  %i.gd = add nsw i32 %i.gc, %.0284427
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r, %.lr.ph429
  %.pre543 = phi ptr [ %.pre542, %.lr.ph429 ], [ %.pre, %bb.u ], [ %.pre542, %bb.r ]
  %i.ge = phi ptr [ %i.ez, %.lr.ph429 ], [ %.pre, %bb.u ], [ %i.ez, %bb.r ] ; 2 uses
  %.1285 = phi i32 [ %.0284427, %.lr.ph429 ], [ %i.gd, %bb.u ], [ %.0284427, %bb.r ]
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 4
  %.val316 = load i32, ptr %i.gf, align 4, !tbaa !26
  %i.gg = sext i32 %.val316 to i64
  %i.gh = icmp slt i64 %indvars.iv.next493, %i.gg
  br i1 %i.gh, label %.lr.ph429, label %.critedge7, !llvm.loop !77

.critedge7:                                       ; preds = %bb.v, %.preheader404, %bb.q
  %.not467 = icmp eq i32 %.val348.val, 31
  br i1 %.not467, label %._crit_edge454, label %.lr.ph453

.lr.ph453:                                        ; preds = %.critedge7
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.bu, i64 8
  %i.gk = sext i32 %i.bw to i64                   ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph453, %.critedge15
  %.0276452 = phi i32 [ 0, %.lr.ph453 ], [ %i.oo, %.critedge15 ] ; 6 uses
  %.val346 = load ptr, ptr %i.cf, align 8, !tbaa !70 ; 2 uses
  %i.gl = getelementptr i8, ptr %.val346, i64 4
  %.val346.val = load i32, ptr %i.gl, align 4, !tbaa !26 ; 2 uses
  %.val363 = load i32, ptr %i.dz, align 4, !tbaa !62
  %i.gm = add nsw i32 %.val363, %.val346.val
  %i.gn = mul nsw i32 %i.gm, %.0276452
  %i.go = add nsw i32 %i.gn, %.0267.lcssa         ; 9 uses
  %i.gp = icmp sgt i32 %.val346.val, 0
  br i1 %i.gp, label %.lr.ph434, label %.critedge9.preheader

.lr.ph434:                                        ; preds = %bb.w
  %i.gq = lshr i32 %.0276452, 6
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = and i32 %.0276452, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl nuw i64 1, %i.gt
  br label %bb.x

.critedge9.preheader:                             ; preds = %bb.x, %bb.w
  %i.gv = load ptr, ptr %i.h, align 8, !tbaa !8   ; 3 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 4
  %.val315443 = load i32, ptr %i.gw, align 4, !tbaa !26
  %i.gx = icmp sgt i32 %.val315443, 0
  br i1 %i.gx, label %.lr.ph446, label %.critedge11.preheader

bb.x:                                             ; preds = %.lr.ph434, %bb.x
  %indvars.iv495 = phi i64 [ 0, %.lr.ph434 ], [ %indvars.iv.next496, %bb.x ] ; 3 uses
  %.val345433 = phi ptr [ %.val346, %.lr.ph434 ], [ %.val345, %bb.x ]
  %i.gy = getelementptr i8, ptr %.val345433, i64 8
  %.val353.val = load ptr, ptr %i.gy, align 8, !tbaa !29
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.val353.val, i64 %indvars.iv495
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !30
  %.val370 = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.hb = mul nsw i64 %indvars.iv495, %i.gk
  %i.hc = getelementptr inbounds [8 x i8], ptr %.val370, i64 %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gr
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !78
  %i.hf = getelementptr i8, ptr %i.ha, i64 16
  %.val358 = load i32, ptr %i.hf, align 8, !tbaa !71
  %i.hg = sext i32 %.val358 to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !62
  %i.hj = add nsw i32 %i.hi, %i.go                ; 2 uses
  %i.hk = and i64 %i.he, %i.gu
  %.not309.not = icmp eq i64 %i.hk, 0
  %i.hl = xor i32 %i.hj, -1
  %i.hm = add nsw i32 %i.hj, 1
  %i.hn = select i1 %.not309.not, i32 %i.hl, i32 %i.hm
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.hn) #14
  call void @kissat_add(ptr noundef %i.dx, i32 noundef 0) #14
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1 ; 2 uses
  %.val345 = load ptr, ptr %i.cf, align 8, !tbaa !70 ; 2 uses
  %i.ho = getelementptr i8, ptr %.val345, i64 4
  %.val345.val = load i32, ptr %i.ho, align 4, !tbaa !26
  %i.hp = sext i32 %.val345.val to i64
  %i.hq = icmp slt i64 %indvars.iv.next496, %i.hp
  br i1 %i.hq, label %bb.x, label %.critedge9.preheader, !llvm.loop !79

.critedge11.preheader:                            ; preds = %.critedge9, %.critedge9.preheader
  %.val366447 = load ptr, ptr %i.em, align 8, !tbaa !76 ; 2 uses
  %i.hr = getelementptr i8, ptr %.val366447, i64 4
  %.val366.val448 = load i32, ptr %i.hr, align 4, !tbaa !26
  %i.hs = icmp sgt i32 %.val366.val448, 0
  br i1 %i.hs, label %.lr.ph451, label %.critedge15

.lr.ph451:                                        ; preds = %.critedge11.preheader
  %i.ht = lshr i32 %.0276452, 6
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = and i32 %.0276452, 63
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = shl nuw i64 1, %i.hw
  br label %.critedge11

.lr.ph446:                                        ; preds = %.critedge9.preheader, %.critedge9
  %.pre541545 = phi ptr [ %.pre541546, %.critedge9 ], [ %i.gv, %.critedge9.preheader ] ; 3 uses
  %i.hy = phi ptr [ %i.nl, %.critedge9 ], [ %i.gv, %.critedge9.preheader ] ; 3 uses
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %.critedge9 ], [ 0, %.critedge9.preheader ] ; 2 uses
  %.0288444 = phi i32 [ %.1289, %.critedge9 ], [ 0, %.critedge9.preheader ] ; 4 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  %.val320.val = load ptr, ptr %i.hz, align 8, !tbaa !29
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.val320.val, i64 %indvars.iv513
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !30 ; 7 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %.critedge9, label %bb.y

bb.y:                                             ; preds = %.lr.ph446
  %i.id = getelementptr i8, ptr %i.ib, i64 20
  %.val325 = load i32, ptr %i.id, align 4
  %i.ie = and i32 %.val325, 15
  %.not399 = icmp eq i32 %i.ie, 7
  br i1 %.not399, label %bb.z, label %.critedge9

bb.z:                                             ; preds = %bb.y
  %i.if = getelementptr i8, ptr %i.ib, i64 28     ; 3 uses
  %.val335 = load i32, ptr %i.if, align 4, !tbaa !34 ; 2 uses
  %i.ig = shl nuw i32 1, %.val335                 ; 2 uses
  %.not468 = icmp eq i32 %.val335, 31
  br i1 %.not468, label %._crit_edge, label %.preheader403.lr.ph

.preheader403.lr.ph:                              ; preds = %bb.z
  %i.ih = getelementptr i8, ptr %i.ib, i64 16
  %.val357 = load i32, ptr %i.ih, align 8, !tbaa !71
  %i.ii = sext i32 %.val357 to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !62
  %i.il = add nsw i32 %i.ik, %i.go
  %i.im = shl nsw i32 %i.il, 1                    ; 2 uses
  %i.in = getelementptr i8, ptr %i.ib, i64 32     ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.ig, i32 1)
  %i.io = or disjoint i32 %i.im, 1
  br label %.preheader403

.preheader403:                                    ; preds = %.preheader403.lr.ph, %bb.ad
  %.1280441 = phi i32 [ 0, %.preheader403.lr.ph ], [ %i.nj, %bb.ad ] ; 3 uses
  %i.ip = add nsw i32 %.1280441, %.0288444
  %i.iq = shl nsw i32 %i.ip, 1                    ; 2 uses
  %i.ir = xor i32 %.1280441, -1                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 %i.iq, ptr %i.a, align 16, !tbaa !62
  store i32 %i.io, ptr %i.gi, align 4, !tbaa !62
  %.val334 = load i32, ptr %i.if, align 4, !tbaa !34 ; 4 uses
  %i.is = icmp sgt i32 %.val334, 0
  br i1 %i.is, label %.lr.ph437, label %.critedge13.preheader

.lr.ph437:                                        ; preds = %.preheader403
  %.val375 = load ptr, ptr %i.ib, align 8, !tbaa !80
  %.val376 = load ptr, ptr %i.in, align 8, !tbaa !81 ; 3 uses
  %i.it = getelementptr i8, ptr %.val375, i64 32
  %.val375.val = load ptr, ptr %i.it, align 8, !tbaa !8
  %i.iu = getelementptr i8, ptr %.val375.val, i64 8
  %.val375.val.val = load ptr, ptr %i.iu, align 8, !tbaa !29 ; 3 uses
  %wide.trip.count505 = zext nneg i32 %.val334 to i64 ; 2 uses
  %xtraiter632 = and i64 %wide.trip.count505, 1
  %i.iv = icmp eq i32 %.val334, 1
  br i1 %i.iv, label %.epil.preheader631, label %.lr.ph437.new

.lr.ph437.new:                                    ; preds = %.lr.ph437
  %unroll_iter637 = and i64 %wide.trip.count505, 2147483646
  br label %bb.aa

.critedge13.preheader.loopexit.unr-lcssa:         ; preds = %bb.aa
  %lcmp.mod634.not = icmp eq i64 %xtraiter632, 0
  br i1 %lcmp.mod634.not, label %.critedge13.preheader, label %.epil.preheader631

.epil.preheader631:                               ; preds = %.critedge13.preheader.loopexit.unr-lcssa, %.lr.ph437
  %indvars.iv500.epil.init = phi i64 [ 0, %.lr.ph437 ], [ %indvars.iv.next501.1643, %.critedge13.preheader.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv498.epil.init = phi i64 [ 2, %.lr.ph437 ], [ %indvars.iv.next499.1642, %.critedge13.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod636 = trunc i32 %.val334 to i1
  call void @llvm.assume(i1 %lcmp.mod636)
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.val376, i64 %indvars.iv500.epil.init
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !62
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %.val375.val.val, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !30
  %i.jb = getelementptr i8, ptr %i.ja, i64 16
  %.val356.epil = load i32, ptr %i.jb, align 8, !tbaa !71
  %i.jc = sext i32 %.val356.epil to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !62
  %i.jf = add nsw i32 %i.je, %i.go
  %i.jg = trunc nuw nsw i64 %indvars.iv500.epil.init to i32
  %i.jh = lshr i32 %i.ir, %i.jg
  %i.ji = and i32 %i.jh, 1
  %i.jj = shl nsw i32 %i.jf, 1
  %i.jk = or disjoint i32 %i.jj, %i.ji
  %indvars.iv.next499.epil = add nuw nsw i64 %indvars.iv498.epil.init, 1
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv498.epil.init
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !62
  br label %.critedge13.preheader

.critedge13.preheader:                            ; preds = %.epil.preheader631, %.critedge13.preheader.loopexit.unr-lcssa, %.preheader403
  %.0281.lcssa = phi i64 [ 2, %.preheader403 ], [ %indvars.iv.next499.1642, %.critedge13.preheader.loopexit.unr-lcssa ], [ %indvars.iv.next499.epil, %.epil.preheader631 ]
  br label %.critedge13

bb.aa:                                            ; preds = %bb.aa, %.lr.ph437.new
  %indvars.iv500 = phi i64 [ 0, %.lr.ph437.new ], [ %indvars.iv.next501.1643, %bb.aa ] ; 4 uses
  %indvars.iv498 = phi i64 [ 2, %.lr.ph437.new ], [ %indvars.iv.next499.1642, %bb.aa ] ; 3 uses
  %niter638 = phi i64 [ 0, %.lr.ph437.new ], [ %niter638.next.1, %bb.aa ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.val376, i64 %indvars.iv500
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !62
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %.val375.val.val, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.jr = getelementptr i8, ptr %i.jq, i64 16
  %.val356 = load i32, ptr %i.jr, align 8, !tbaa !71
  %i.js = sext i32 %.val356 to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !62
  %i.jv = add nsw i32 %i.ju, %i.go
  %i.jw = trunc nuw nsw i64 %indvars.iv500 to i32
  %i.jx = lshr i32 %i.ir, %i.jw
  %i.jy = and i32 %i.jx, 1
  %i.jz = shl nsw i32 %i.jv, 1
  %i.ka = or disjoint i32 %i.jz, %i.jy
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv498
  store i32 %i.ka, ptr %i.kb, align 8, !tbaa !62
end_hunk_0
begin_hunk_1_@Abc_NtkTopoExact:bb.a
  %exitcond511.not = icmp eq i64 %indvars.iv.next508, %.0281.lcssa
  br i1 %exitcond511.not, label %bb.ab, label %.critedge13, !llvm.loop !83

bb.ab:                                            ; preds = %.critedge13
  call void @kissat_add(ptr noundef %i.dx, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.la = or disjoint i32 %i.iq, 1
  store i32 %i.la, ptr %i.a, align 16, !tbaa !62
  store i32 %i.im, ptr %i.gi, align 4, !tbaa !62
  %.val334.1 = load i32, ptr %i.if, align 4, !tbaa !34 ; 4 uses
  %i.lb = icmp sgt i32 %.val334.1, 0
  br i1 %i.lb, label %.lr.ph437.1, label %.critedge13.preheader.1

.lr.ph437.1:                                      ; preds = %bb.ab
  %.val375.1 = load ptr, ptr %i.ib, align 8, !tbaa !80
  %.val376.1 = load ptr, ptr %i.in, align 8, !tbaa !81 ; 3 uses
  %i.lc = getelementptr i8, ptr %.val375.1, i64 32
  %.val375.val.1 = load ptr, ptr %i.lc, align 8, !tbaa !8
  %i.ld = getelementptr i8, ptr %.val375.val.1, i64 8
  %.val375.val.val.1 = load ptr, ptr %i.ld, align 8, !tbaa !29 ; 3 uses
  %wide.trip.count505.1 = zext nneg i32 %.val334.1 to i64 ; 2 uses
  %xtraiter645 = and i64 %wide.trip.count505.1, 1
  %i.le = icmp eq i32 %.val334.1, 1
  br i1 %i.le, label %.epil.preheader644, label %.lr.ph437.1.new

.lr.ph437.1.new:                                  ; preds = %.lr.ph437.1
  %unroll_iter650 = and i64 %wide.trip.count505.1, 2147483646
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph437.1.new
  %indvars.iv500.1 = phi i64 [ 0, %.lr.ph437.1.new ], [ %indvars.iv.next501.1.1, %bb.ac ] ; 4 uses
  %indvars.iv498.1 = phi i64 [ 2, %.lr.ph437.1.new ], [ %indvars.iv.next499.1.1, %bb.ac ] ; 3 uses
  %niter651 = phi i64 [ 0, %.lr.ph437.1.new ], [ %niter651.next.1, %bb.ac ]
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.val376.1, i64 %indvars.iv500.1
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !62
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %.val375.val.val.1, i64 %i.lh
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !30
  %i.lk = getelementptr i8, ptr %i.lj, i64 16
  %.val356.1 = load i32, ptr %i.lk, align 8, !tbaa !71
  %i.ll = sext i32 %.val356.1 to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !62
  %i.lo = add nsw i32 %i.ln, %i.go
  %i.lp = trunc nuw nsw i64 %indvars.iv500.1 to i32
  %i.lq = lshr i32 %i.ir, %i.lp
  %i.lr = and i32 %i.lq, 1
  %i.ls = shl nsw i32 %i.lo, 1
  %i.lt = or disjoint i32 %i.ls, %i.lr
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv498.1
  store i32 %i.lt, ptr %i.lu, align 8, !tbaa !62
  %indvars.iv.next501.1 = or disjoint i64 %indvars.iv500.1, 1 ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val376.1, i64 %indvars.iv.next501.1
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !62
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [8 x i8], ptr %.val375.val.val.1, i64 %i.lx
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !30
  %i.ma = getelementptr i8, ptr %i.lz, i64 16
  %.val356.1.1 = load i32, ptr %i.ma, align 8, !tbaa !71
  %i.mb = sext i32 %.val356.1.1 to i64
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !62
  %i.me = add nsw i32 %i.md, %i.go
  %i.mf = trunc nuw nsw i64 %indvars.iv.next501.1 to i32
  %i.mg = lshr i32 %i.ir, %i.mf
  %i.mh = and i32 %i.mg, 1
  %i.mi = shl nsw i32 %i.me, 1
  %i.mj = or disjoint i32 %i.mi, %i.mh
  %indvars.iv.next499.1.1 = add nuw nsw i64 %indvars.iv498.1, 2 ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv498.1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i32 %i.mj, ptr %i.ml, align 4, !tbaa !62
  %indvars.iv.next501.1.1 = add nuw nsw i64 %indvars.iv500.1, 2 ; 2 uses
  %niter651.next.1 = add i64 %niter651, 2         ; 2 uses
  %niter651.ncmp.1 = icmp eq i64 %niter651.next.1, %unroll_iter650
  br i1 %niter651.ncmp.1, label %.critedge13.preheader.1.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !82

.critedge13.preheader.1.loopexit.unr-lcssa:       ; preds = %bb.ac
  %lcmp.mod647.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod647.not, label %.critedge13.preheader.1, label %.epil.preheader644

.epil.preheader644:                               ; preds = %.critedge13.preheader.1.loopexit.unr-lcssa, %.lr.ph437.1
  %indvars.iv500.1.epil.init = phi i64 [ 0, %.lr.ph437.1 ], [ %indvars.iv.next501.1.1, %.critedge13.preheader.1.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv498.1.epil.init = phi i64 [ 2, %.lr.ph437.1 ], [ %indvars.iv.next499.1.1, %.critedge13.preheader.1.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod649 = trunc i32 %.val334.1 to i1
  call void @llvm.assume(i1 %lcmp.mod649)
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.val376.1, i64 %indvars.iv500.1.epil.init
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !62
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [8 x i8], ptr %.val375.val.val.1, i64 %i.mo
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !30
  %i.mr = getelementptr i8, ptr %i.mq, i64 16
  %.val356.1.epil = load i32, ptr %i.mr, align 8, !tbaa !71
  %i.ms = sext i32 %.val356.1.epil to i64
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !62
  %i.mv = add nsw i32 %i.mu, %i.go
  %i.mw = trunc nuw nsw i64 %indvars.iv500.1.epil.init to i32
  %i.mx = lshr i32 %i.ir, %i.mw
  %i.my = and i32 %i.mx, 1
  %i.mz = shl nsw i32 %i.mv, 1
  %i.na = or disjoint i32 %i.mz, %i.my
  %indvars.iv.next499.1.epil = add nuw nsw i64 %indvars.iv498.1.epil.init, 1
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv498.1.epil.init
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !62
  br label %.critedge13.preheader.1

.critedge13.preheader.1:                          ; preds = %.epil.preheader644, %.critedge13.preheader.1.loopexit.unr-lcssa, %bb.ab
  %.0281.lcssa.1 = phi i64 [ 2, %bb.ab ], [ %indvars.iv.next499.1.1, %.critedge13.preheader.1.loopexit.unr-lcssa ], [ %indvars.iv.next499.1.epil, %.epil.preheader644 ]
  br label %.critedge13.1

.critedge13.1:                                    ; preds = %.critedge13.1, %.critedge13.preheader.1
  %indvars.iv507.1 = phi i64 [ 0, %.critedge13.preheader.1 ], [ %indvars.iv.next508.1, %.critedge13.1 ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv507.1
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !62 ; 2 uses
  %i.ne = and i32 %i.nd, 1
  %.not306.1 = icmp eq i32 %i.ne, 0
  %i.nf = ashr i32 %i.nd, 1                       ; 2 uses
  %i.ng = xor i32 %i.nf, -1
  %i.nh = add nsw i32 %i.nf, 1
  %i.ni = select i1 %.not306.1, i32 %i.nh, i32 %i.ng
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.ni) #14
  %indvars.iv.next508.1 = add nuw nsw i64 %indvars.iv507.1, 1 ; 2 uses
  %exitcond511.1.not = icmp eq i64 %indvars.iv.next508.1, %.0281.lcssa.1
  br i1 %exitcond511.1.not, label %bb.ad, label %.critedge13.1, !llvm.loop !83

bb.ad:                                            ; preds = %.critedge13.1
  call void @kissat_add(ptr noundef %i.dx, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.nj = add nuw nsw i32 %.1280441, 1            ; 2 uses
  %exitcond512.not = icmp eq i32 %i.nj, %smax
  br i1 %exitcond512.not, label %._crit_edge.loopexit, label %.preheader403, !llvm.loop !84

._crit_edge.loopexit:                             ; preds = %bb.ad
  %.pre541.pre = load ptr, ptr %i.h, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.z
  %.pre541 = phi ptr [ %.pre541.pre, %._crit_edge.loopexit ], [ %.pre541545, %bb.z ] ; 2 uses
  %i.nk = add nsw i32 %i.ig, %.0288444
  br label %.critedge9

.critedge9:                                       ; preds = %._crit_edge, %bb.y, %.lr.ph446
  %.pre541546 = phi ptr [ %.pre541545, %.lr.ph446 ], [ %.pre541, %._crit_edge ], [ %.pre541545, %bb.y ]
  %i.nl = phi ptr [ %i.hy, %.lr.ph446 ], [ %.pre541, %._crit_edge ], [ %i.hy, %bb.y ] ; 2 uses
  %.1289 = phi i32 [ %.0288444, %.lr.ph446 ], [ %i.nk, %._crit_edge ], [ %.0288444, %bb.y ]
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 4
  %.val315 = load i32, ptr %i.nm, align 4, !tbaa !26
  %i.nn = sext i32 %.val315 to i64
  %i.no = icmp slt i64 %indvars.iv.next514, %i.nn
  br i1 %i.no, label %.lr.ph446, label %.critedge11.preheader, !llvm.loop !85

.critedge11:                                      ; preds = %.lr.ph451, %.critedge11
  %indvars.iv516 = phi i64 [ 0, %.lr.ph451 ], [ %indvars.iv.next517, %.critedge11 ] ; 3 uses
  %.val366450 = phi ptr [ %.val366447, %.lr.ph451 ], [ %.val366, %.critedge11 ]
  %i.np = getelementptr i8, ptr %.val366450, i64 8
  %.val377.val = load ptr, ptr %i.np, align 8, !tbaa !29
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.val377.val, i64 %indvars.iv516
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !30 ; 2 uses
  %.val378 = load ptr, ptr %i.nr, align 8, !tbaa !80
  %i.ns = getelementptr i8, ptr %i.nr, i64 32
  %.val379 = load ptr, ptr %i.ns, align 8, !tbaa !81
  %i.nt = getelementptr i8, ptr %.val378, i64 32
  %.val378.val = load ptr, ptr %i.nt, align 8, !tbaa !8
  %.val379.val = load i32, ptr %.val379, align 4, !tbaa !62
  %i.nu = getelementptr i8, ptr %.val378.val, i64 8
  %.val378.val.val = load ptr, ptr %i.nu, align 8, !tbaa !29
  %i.nv = sext i32 %.val379.val to i64
  %i.nw = getelementptr inbounds [8 x i8], ptr %.val378.val.val, i64 %i.nv
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !30
  %i.ny = getelementptr i8, ptr %i.nx, i64 16
  %.val355 = load i32, ptr %i.ny, align 8, !tbaa !71
  %i.nz = sext i32 %.val355 to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !62
  %i.oc = add nsw i32 %i.ob, %i.go                ; 2 uses
  %.val369 = load ptr, ptr %i.gj, align 8, !tbaa !31
  %i.od = mul nsw i64 %indvars.iv516, %i.gk
  %i.oe = getelementptr inbounds [8 x i8], ptr %.val369, i64 %i.od
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.hu
  %i.og = load i64, ptr %i.of, align 8, !tbaa !78
  %i.oh = and i64 %i.og, %i.hx
  %.not303.not = icmp eq i64 %i.oh, 0
  %i.oi = xor i32 %i.oc, -1
  %i.oj = add nsw i32 %i.oc, 1
  %i.ok = select i1 %.not303.not, i32 %i.oi, i32 %i.oj
  call void @kissat_add(ptr noundef %i.dx, i32 noundef %i.ok) #14
  call void @kissat_add(ptr noundef %i.dx, i32 noundef 0) #14
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %.val366 = load ptr, ptr %i.em, align 8, !tbaa !76 ; 2 uses
  %i.ol = getelementptr i8, ptr %.val366, i64 4
  %.val366.val = load i32, ptr %i.ol, align 4, !tbaa !26
  %i.om = sext i32 %.val366.val to i64
  %i.on = icmp slt i64 %indvars.iv.next517, %i.om
  br i1 %i.on, label %.critedge11, label %.critedge15, !llvm.loop !86

.critedge15:                                      ; preds = %.critedge11, %.critedge11.preheader
  %i.oo = add nuw nsw i32 %.0276452, 1            ; 2 uses
  %exitcond520.not = icmp eq i32 %i.oo, %i.el
  br i1 %exitcond520.not, label %._crit_edge454, label %bb.w, !llvm.loop !87

._crit_edge454:                                   ; preds = %.critedge15, %.critedge7
  br i1 %i.ef, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge454
  %i.op = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.0267.lcssa, i32 noundef %i.eb, i32 noundef %i.eu) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !78
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.oq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #14
  %i.or = icmp slt i32 %i.oq, 0
  br i1 %i.or, label %Abc_Clock.exit382, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.os = load i64, ptr %7, align 8, !tbaa !41
  %i.ot = mul nsw i64 %i.os, 1000000
  %i.ou = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !44
  %i.ow = sdiv i64 %i.ov, 1000
  %i.ox = add nsw i64 %i.ow, %i.ot
  br label %Abc_Clock.exit382

Abc_Clock.exit382:                                ; preds = %bb.ag, %bb.ah
  %.0.i381 = phi i64 [ %i.ox, %bb.ah ], [ -1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.oy = sext i32 %2 to i64
  %i.oz = mul nsw i64 %i.oy, 1000000
  %i.pa = add nsw i64 %.0.i381, %i.oz
  store i64 %i.pa, ptr %i.b, align 8, !tbaa !78
  call void @kissat_set_terminate(ptr noundef %i.dx, ptr noundef nonnull %i.b, ptr noundef nonnull @AbcTopo_KissatTerminate) #14
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  call void @kissat_set_terminate(ptr noundef %i.dx, ptr noundef null, ptr noundef null) #14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %Abc_Clock.exit382
  %i.pb = call i32 @kissat_solve(ptr noundef %i.dx) #14 ; 3 uses
  %i.pc = icmp eq i32 %i.pb, 10
  br i1 %i.pc, label %bb.ak, label %bb.ay

bb.ak:                                            ; preds = %bb.aj
  %.val343 = load ptr, ptr %i.h, align 8, !tbaa !8 ; 2 uses
  %i.pd = getelementptr i8, ptr %.val343, i64 4
  %.val343.val = load i32, ptr %i.pd, align 4, !tbaa !26 ; 4 uses
  %i.pe = add i32 %.val343.val, -1
  %or.cond.i.i383 = icmp ult i32 %i.pe, 15
  %spec.store.select.i.i384 = select i1 %or.cond.i.i383, i32 16, i32 %.val343.val ; 2 uses
  %.not.i.i385 = icmp eq i32 %spec.store.select.i.i384, 0
  br i1 %.not.i.i385, label %Vec_WrdStart.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pf = sext i32 %spec.store.select.i.i384 to i64
  %i.pg = shl nsw i64 %i.pf, 3
  %i.ph = call noalias ptr @malloc(i64 noundef %i.pg) #15
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.ak, %bb.al
  %i.pi = phi ptr [ %i.ph, %bb.al ], [ null, %bb.ak ] ; 5 uses
  %i.pj = sext i32 %.val343.val to i64
  %i.pk = shl nsw i64 %i.pj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.pi, i8 0, i64 %i.pk, i1 false)
  %i.pl = icmp sgt i32 %.val343.val, 0
  br i1 %i.pl, label %.lr.ph466, label %.critedge17

.lr.ph466:                                        ; preds = %Vec_WrdStart.exit, %bb.ar
  %indvars.iv524 = phi i64 [ %indvars.iv.next525, %bb.ar ], [ 0, %Vec_WrdStart.exit ] ; 4 uses
  %i.pm = phi ptr [ %i.rg, %bb.ar ], [ %.val343, %Vec_WrdStart.exit ]
  %.0263465 = phi i32 [ %.1264, %bb.ar ], [ 0, %Vec_WrdStart.exit ] ; 4 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 8
  %.val319.val = load ptr, ptr %i.pn, align 8, !tbaa !29
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %.val319.val, i64 %indvars.iv524
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !30 ; 3 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %.lr.ph466
  %i.pr = getelementptr i8, ptr %i.pp, i64 20
  %.val324 = load i32, ptr %i.pr, align 4
  %i.ps = and i32 %.val324, 15
  %.not398 = icmp eq i32 %i.ps, 7
  br i1 %.not398, label %.preheader, label %bb.ar

.preheader:                                       ; preds = %bb.am
  %i.pt = getelementptr i8, ptr %i.pp, i64 28     ; 2 uses
  %.val333455 = load i32, ptr %i.pt, align 4, !tbaa !34
  %.not469 = icmp eq i32 %.val333455, 31
  br i1 %.not469, label %.thread605, label %.lr.ph458

.lr.ph458:                                        ; preds = %.preheader
  %i.pu = add i32 %.0263465, 1
  br label %bb.ap

._crit_edge459:                                   ; preds = %bb.ap
  %i.pv = icmp eq i32 %.val333.fr, 0
  br i1 %i.pv, label %.split, label %bb.an

.split:                                           ; preds = %._crit_edge459
  %i.pw = trunc i64 %.1 to i1
  %i.px = select i1 %i.pw, i64 15, i64 0
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge459
  %i.py = icmp eq i32 %.val333.fr, 1
  %i.pz = and i64 %.1, 3
  %i.qa = mul nuw nsw i64 %i.pz, 5
  %spec.select626 = select i1 %i.py, i64 %i.qa, i64 %.1
  %i.qb = and i64 %spec.select626, 15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.split
  %i.qc = phi i64 [ %i.qb, %bb.an ], [ %i.px, %.split ]
  %i.qd = icmp ult i32 %.val333.fr, 3
  %i.qe = mul nuw nsw i64 %i.qc, 17
  %spec.select = select i1 %i.qd, i64 %i.qe, i64 %.1
  %i.qf = icmp ult i32 %.val333.fr, 4
  %i.qg = and i64 %spec.select, 255
  %i.qh = mul nuw nsw i64 %i.qg, 257
  %i.qi = select i1 %i.qf, i64 %i.qh, i64 %.1
  %i.qj = icmp ult i32 %.val333.fr, 5
  %i.qk = and i64 %i.qi, 65535
  %i.ql = mul nuw nsw i64 %i.qk, 65537
  %i.qm = select i1 %i.qj, i64 %i.ql, i64 %.1
  %i.qn = icmp ult i32 %.val333.fr, 6
  %i.qo = and i64 %i.qm, 4294967295
  %i.qp = mul nuw i64 %i.qo, 4294967297
  %spec.select612 = select i1 %i.qn, i64 %i.qp, i64 %.1
  br label %.thread605

.thread605:                                       ; preds = %.preheader, %bb.ao
  %.0262.lcssa575581591598603610 = phi i64 [ %.1, %bb.ao ], [ 0, %.preheader ]
  %.val333.lcssa576580592597604609 = phi i32 [ %.val333.fr, %bb.ao ], [ 31, %.preheader ] ; 2 uses
  %.pn = phi i32 [ %i.qz, %bb.ao ], [ -2147483648, %.preheader ]
  %i.qq = phi i64 [ %spec.select612, %bb.ao ], [ 0, %.preheader ]
  %i.qr = add nsw i32 %.pn, %.0263465             ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv524
  store i64 %i.qq, ptr %i.qs, align 8, !tbaa !78
  br i1 %i.ef, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph458, %bb.ap
  %indvars.iv521 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next522, %bb.ap ] ; 3 uses
  %.0262456 = phi i64 [ 0, %.lr.ph458 ], [ %.1, %bb.ap ]
  %i.qt = trunc nuw nsw i64 %indvars.iv521 to i32
  %i.qu = add i32 %i.pu, %i.qt
  %i.qv = call i32 @kissat_value(ptr noundef %i.dx, i32 noundef %i.qu) #14
  %i.qw = icmp sgt i32 %i.qv, 0
  %i.qx = shl nuw i64 1, %indvars.iv521
  %i.qy = select i1 %i.qw, i64 %i.qx, i64 0
  %.1 = or i64 %i.qy, %.0262456                   ; 9 uses
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %.val333 = load i32, ptr %i.pt, align 4, !tbaa !34
  %.val333.fr = freeze i32 %.val333               ; 8 uses
  %i.qz = shl nuw i32 1, %.val333.fr              ; 2 uses
  %i.ra = sext i32 %i.qz to i64
  %i.rb = icmp slt i64 %indvars.iv.next522, %i.ra
  br i1 %i.rb, label %bb.ap, label %._crit_edge459, !llvm.loop !88

bb.aq:                                            ; preds = %.thread605
  %i.rc = add nsw i32 %.val333.lcssa576580592597604609, -2
  %i.rd = shl nuw i32 1, %i.rc
  %i.re = trunc nuw nsw i64 %indvars.iv524 to i32
  %i.rf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.re, i32 noundef %.val333.lcssa576580592597604609, i32 noundef %i.rd, i64 noundef %.0262.lcssa575581591598603610) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.thread605, %bb.aq, %bb.am, %.lr.ph466
  %.1264 = phi i32 [ %.0263465, %.lr.ph466 ], [ %.0263465, %bb.am ], [ %i.qr, %bb.aq ], [ %i.qr, %.thread605 ]
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %i.rg = load ptr, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %i.rh = getelementptr i8, ptr %i.rg, i64 4
  %.val = load i32, ptr %i.rh, align 4, !tbaa !26
  %i.ri = sext i32 %.val to i64
  %i.rj = icmp slt i64 %indvars.iv.next525, %i.ri
  br i1 %i.rj, label %.lr.ph466, label %.critedge17, !llvm.loop !89

.critedge17:                                      ; preds = %bb.ar, %Vec_WrdStart.exit
  %i.rk = call ptr @Abc_NtkDup(ptr noundef nonnull %1) #14 ; 3 uses
  %i.rl = load ptr, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %i.rm = getelementptr i8, ptr %i.rl, i64 4
  %.val23.i = load i32, ptr %i.rm, align 4, !tbaa !26
  %i.rn = icmp sgt i32 %.val23.i, 0
  br i1 %i.rn, label %.lr.ph.i, label %Abc_NtkTopoDup.exit

.lr.ph.i:                                         ; preds = %.critedge17
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 256
  br label %bb.as

bb.as:                                            ; preds = %bb.aw, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aw ] ; 3 uses
  %i.rp = phi ptr [ %i.rl, %.lr.ph.i ], [ %i.sc, %bb.aw ]
  %i.rq = getelementptr i8, ptr %i.rp, i64 8
  %.val19.val.i = load ptr, ptr %i.rq, align 8, !tbaa !29
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %.val19.val.i, i64 %indvars.iv.i
end_hunk_1
