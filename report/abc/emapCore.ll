Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/emapCore?download=true
inline.NumInlined: 489
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 46
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@Emap_ManTryExactRecoveries:bb.a
  %indvars.iv.next.i99.i = add nuw nsw i64 %indvars.iv.i98.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i99.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph.i97.i, !llvm.loop !196

.critedge.preheader.i.i:                          ; preds = %Emap_RequiredUpdate.exit.i.i, %.preheader.i.i
  br i1 %i.bs, label %.lr.ph46.preheader.i.i, label %.critedge.thread.i

.lr.ph46.preheader.i.i:                           ; preds = %.critedge.preheader.i.i
  %i.ca = zext nneg i32 %.val31.val.i.i to i64
  br label %.lr.ph46.i.i

bb.d:                                             ; preds = %Emap_RequiredUpdate.exit.i.i, %.lr.ph43.i.i
  %indvars.iv48.i.i = phi i64 [ 0, %.lr.ph43.i.i ], [ %indvars.iv.next49.i.i, %Emap_RequiredUpdate.exit.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val38.val.i.i, i64 %indvars.iv48.i.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 32
  %.val35.i.i = load ptr, ptr %i.cd, align 8, !tbaa !75
  %.val35.val.i.i = load i32, ptr %.val35.i.i, align 4, !tbaa !73
  %i.ce = getelementptr i8, ptr %i.cc, i64 20
  %.val36.i.i = load i32, ptr %i.ce, align 4
  %i.cf = lshr i32 %.val36.i.i, 10
  %i.cg = and i32 %i.cf, 1
  %i.ch = shl nsw i32 %.val35.val.i.i, 1
  %i.ci = or disjoint i32 %i.cg, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cj ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !106
  %i.cm = fcmp olt double %11, %i.cl
  br i1 %i.cm, label %bb.e, label %Emap_RequiredUpdate.exit.i.i

bb.e:                                             ; preds = %bb.d
  store double %11, ptr %i.ck, align 8, !tbaa !106
  br label %Emap_RequiredUpdate.exit.i.i

Emap_RequiredUpdate.exit.i.i:                     ; preds = %bb.e, %bb.d
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 2 uses
  %exitcond52.not.i.i = icmp eq i64 %indvars.iv.next49.i.i, %wide.trip.count51.i.i
  br i1 %exitcond52.not.i.i, label %.critedge.preheader.i.i, label %bb.d, !llvm.loop !8

.lr.ph46.i.i:                                     ; preds = %.critedge.i.i, %.lr.ph46.preheader.i.i
  %indvars.iv53.i.i = phi i64 [ %i.ca, %.lr.ph46.preheader.i.i ], [ %indvars.iv.next54.i.i, %.critedge.i.i ] ; 2 uses
  %indvars.iv.next54.i.i = add nsw i64 %indvars.iv53.i.i, -1 ; 2 uses
  %.val33.i.i = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.cn = getelementptr i8, ptr %.val33.i.i, i64 8
  %.val33.val.i.i = load ptr, ptr %i.cn, align 8, !tbaa !71
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.val33.val.i.i, i64 %indvars.iv.next54.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !72 ; 4 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.critedge.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph46.i.i
  %i.cr = getelementptr i8, ptr %i.cp, i64 20
  %.val39.i.i = load i32, ptr %i.cr, align 4
  %i.cs = and i32 %.val39.i.i, 15
  %.not.i.i = icmp eq i32 %i.cs, 7
  br i1 %.not.i.i, label %bb.g, label %.critedge.i.i

bb.g:                                             ; preds = %bb.f
  %i.ct = getelementptr i8, ptr %i.cp, i64 28
  %.val34.i.i = load i32, ptr %i.ct, align 4, !tbaa !74
  %.not40.i.i = icmp eq i32 %.val34.i.i, 2
  br i1 %.not40.i.i, label %bb.h, label %.critedge.i.i

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr i8, ptr %i.cp, i64 16
  %.val32.i.i = load i32, ptr %i.cu, align 8, !tbaa !59
  tail call fastcc void @Emap_RequiredPropagateUsedObj(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef nonnull readonly %2, ptr noundef %5, ptr noundef readonly %6, i32 noundef %.val32.i.i)
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph46.i.i
  %i.cv = icmp samesign ugt i64 %indvars.iv53.i.i, 1
  br i1 %i.cv, label %.lr.ph46.i.i, label %Emap_ManComputeRequiredTarget.exit.i, !llvm.loop !9

Emap_ManComputeRequiredTarget.exit.i:             ; preds = %.critedge.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !53
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 4
  %.val.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !56 ; 2 uses
  %i.cw = icmp sgt i32 %.val.pre.i, 0
  br i1 %i.cw, label %.lr.ph.preheader.i, label %.critedge.thread.i

.lr.ph.preheader.i:                               ; preds = %Emap_ManComputeRequiredTarget.exit.i
  %i.cx = zext nneg i32 %.val.pre.i to i64
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.eg, %.lr.ph.preheader.i
  %indvars.iv232.i = phi i64 [ %i.cx, %.lr.ph.preheader.i ], [ %indvars.iv.next233.i, %bb.eg ] ; 2 uses
  %.075211.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.4.i, %bb.eg ] ; 4 uses
  %indvars.iv.next233.i = add nsw i64 %indvars.iv232.i, -1 ; 2 uses
  %.val94.i = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.cy = getelementptr i8, ptr %.val94.i, i64 8
  %.val94.val.i = load ptr, ptr %i.cy, align 8, !tbaa !71
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val94.val.i, i64 %indvars.iv.next233.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !72 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.eg, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i59
  %i.dc = getelementptr i8, ptr %i.da, i64 20
  %.val96.i = load i32, ptr %i.dc, align 4
  %i.dd = and i32 %.val96.i, 15
  %.not.i = icmp eq i32 %i.dd, 7
  br i1 %.not.i, label %bb.j, label %bb.eg

bb.j:                                             ; preds = %bb.i
  %i.de = getelementptr i8, ptr %i.da, i64 28
  %.val95.i = load i32, ptr %i.de, align 4, !tbaa !74
  %.not192.i = icmp eq i32 %.val95.i, 2
  br i1 %.not192.i, label %.preheader.i, label %bb.eg

.preheader.i:                                     ; preds = %bb.j
  %i.df = getelementptr i8, ptr %i.da, i64 16     ; 7 uses
  br label %bb.k

bb.k:                                             ; preds = %Emap_NodeImproveExactPhase.exit.i, %.preheader.i
  %.not129.i.i = phi i1 [ true, %.preheader.i ], [ false, %Emap_NodeImproveExactPhase.exit.i ] ; 3 uses
  %.not128.i.1.i = phi i1 [ false, %.preheader.i ], [ true, %Emap_NodeImproveExactPhase.exit.i ]
  %indvars.iv.i60 = phi i64 [ 0, %.preheader.i ], [ 1, %Emap_NodeImproveExactPhase.exit.i ] ; 3 uses
  %.1208.i = phi i32 [ %.075211.i, %.preheader.i ], [ %i.rs, %Emap_NodeImproveExactPhase.exit.i ]
  %.val93.i = load i32, ptr %i.df, align 8, !tbaa !59 ; 4 uses
  %i.dg = sext i32 %.val93.i to i64
  %i.dh = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.dg ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 5128
  %i.dj = getelementptr inbounds nuw [96 x i8], ptr %i.di, i64 %indvars.iv.i60 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %20, ptr noundef nonnull align 8 dereferenceable(96) %i.dj, i64 96, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %21, ptr noundef nonnull align 8 dereferenceable(96) %i.dj, i64 96, i1 false)
  %i.dk = shl nsw i32 %.val93.i, 1
  %i.dl = trunc nuw nsw i64 %indvars.iv.i60 to i32 ; 2 uses
  %i.dm = sext i32 %i.dk to i64
  %i.dn = or disjoint i64 %indvars.iv.i60, %i.dm  ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %6, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !73
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %Emap_NodeImproveExactPhase.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dr = load ptr, ptr %20, align 8, !tbaa !77   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  %i.dt = load i32, ptr %i.c, align 8
  %i.du = icmp ne i32 %i.dt, 0
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.du
  %i.dv = load i32, ptr %i.d, align 8
  %i.dw = icmp sgt i32 %i.dv, -1
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.dw
  br i1 %or.cond5.i.i, label %Emap_NodeImproveExactPhase.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds [8 x i8], ptr %5, i64 %i.dn
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !106 ; 2 uses
  %i.dz = fcmp ult double %i.dy, 5.000000e+19
  br i1 %i.dz, label %bb.n, label %Emap_NodeImproveExactPhase.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ea = tail call fastcc float @Emap_CutDerefLeaves_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef %.val93.i, i32 noundef range(i32 0, 2) %i.dl)
  %i.eb = load i32, ptr %i.dh, align 8, !tbaa !61 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph167.i.i, label %.._crit_edge168.i_crit_edge.i

.._crit_edge168.i_crit_edge.i:                    ; preds = %bb.n
  %.pre238.i = load ptr, ptr %21, align 8, !tbaa !77
  br label %._crit_edge168.i.i

.lr.ph167.i.i:                                    ; preds = %bb.n
  %i.ed = load double, ptr %i.e, align 8, !tbaa !67 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.ef = fadd double %i.dy, 1.000000e-03         ; 3 uses
  %i.eg = fadd double %i.ed, 1.000000e-03         ; 3 uses
  %i.eh = fcmp olt double %i.ef, 0.000000e+00
  %i.ei = fcmp olt double %i.eg, 0.000000e+00
  %or.cond140194.i.i = select i1 %.not132.i.i, i1 %i.ei, i1 false
  %or.cond169195.i.i = select i1 %i.eh, i1 true, i1 %or.cond140194.i.i ; 2 uses
  %.promoted207.i.i = load ptr, ptr %21, align 8
  %.promoted210.i.i = load i32, ptr %i.g, align 8
  %.promoted.i.i = load i32, ptr %i.l, align 4
  br label %bb.o

bb.o:                                             ; preds = %.loopexit142.i.i, %.lr.ph167.i.i
  %.lcssa206214.i.i = phi i32 [ %.promoted.i.i, %.lr.ph167.i.i ], [ %.lcssa206213.i.i, %.loopexit142.i.i ] ; 6 uses
  %.lcssa204212.i.i = phi i32 [ %.promoted210.i.i, %.lr.ph167.i.i ], [ %.lcssa204211.i.i, %.loopexit142.i.i ] ; 6 uses
  %.lcssa203209.i.i = phi ptr [ %.promoted207.i.i, %.lr.ph167.i.i ], [ %.lcssa203208.i.i, %.loopexit142.i.i ] ; 6 uses
  %i.ej = phi i32 [ %i.eb, %.lr.ph167.i.i ], [ %i.qj, %.loopexit142.i.i ]
  %indvars.iv180.i.i = phi i64 [ 0, %.lr.ph167.i.i ], [ %indvars.iv.next181.i.i, %.loopexit142.i.i ] ; 3 uses
  %.0112164.i.i = phi double [ %i.ed, %.lr.ph167.i.i ], [ %.5.i.i, %.loopexit142.i.i ] ; 6 uses
  %.0114163.i.i = phi float [ %i.ea, %.lr.ph167.i.i ], [ %.5119.i.i, %.loopexit142.i.i ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [40 x i8], ptr %i.ee, i64 %indvars.iv180.i.i ; 6 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !64 ; 6 uses
  %i.em = icmp slt i32 %i.el, 2
  br i1 %i.em, label %.loopexit142.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.en = icmp eq i32 %i.el, 6
  %i.eo = shl nuw i32 1, %i.el
  %i.ep = zext nneg i32 %i.eo to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.ep
  %i.eq = xor i64 %notmask.i.i.i, -1
  %i.er = select i1 %i.en, i64 -1, i64 %i.eq      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 4 uses
  %i.eu = trunc nuw nsw i64 %indvars.iv180.i.i to i32 ; 6 uses
  %i.ev = select i1 %.not129.i.i, i64 0, i64 %i.er ; 2 uses
  br i1 %.not129.i.i, label %bb.q, label %Emap_LibFindFirst.exit.thread.i.i

bb.q:                                             ; preds = %bb.p
  %i.ew = load i64, ptr %i.es, align 8, !tbaa !65 ; 2 uses
  %i.ex = load i32, ptr %i.f, align 8, !tbaa !37  ; 4 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %i.ez = load ptr, ptr %2, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %.lr.ph.i.i.i
  %.031.i.i.i = phi i32 [ %i.ex, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.v ] ; 2 uses
  %.02430.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.125.i.i.i, %bb.v ] ; 3 uses
  %i.fa = add nuw nsw i32 %.02430.i.i.i, %.031.i.i.i
  %i.fb = lshr i32 %i.fa, 1                       ; 4 uses
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [104 x i8], ptr %i.ez, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !133 ; 2 uses
  %i.fg = icmp slt i32 %i.ff, %i.el
  br i1 %i.fg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fh = icmp eq i32 %i.ff, %i.el
  br i1 %i.fh, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !134
  %i.fk = icmp ult i64 %i.fj, %i.ew
  br i1 %i.fk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.fl = add nuw nsw i32 %i.fb, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.125.i.i.i = phi i32 [ %i.fl, %bb.u ], [ %.02430.i.i.i, %bb.t ], [ %.02430.i.i.i, %bb.s ] ; 3 uses
  %.1.i.i.i = phi i32 [ %.031.i.i.i, %bb.u ], [ %i.fb, %bb.t ], [ %i.fb, %bb.s ] ; 2 uses
  %i.fm = icmp slt i32 %.125.i.i.i, %.1.i.i.i
  br i1 %i.fm, label %bb.r, label %._crit_edge.i.i.i, !llvm.loop !11

._crit_edge.i.i.i:                                ; preds = %bb.v, %bb.q
  %.024.lcssa.i.i.i = phi i32 [ 0, %bb.q ], [ %.125.i.i.i, %bb.v ] ; 3 uses
  %i.fn = icmp eq i32 %.024.lcssa.i.i.i, %i.ex
  br i1 %i.fn, label %Emap_LibFindFirst.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.fo = load ptr, ptr %2, align 8, !tbaa !36
  %i.fp = zext nneg i32 %.024.lcssa.i.i.i to i64  ; 2 uses
  %i.fq = getelementptr inbounds nuw [104 x i8], ptr %i.fo, i64 %i.fp ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !133
  %.not.i.i.i = icmp eq i32 %i.fs, %i.el
  br i1 %.not.i.i.i, label %bb.x, label %Emap_LibFindFirst.exit.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !134
  %.not29.i.not.i.i = icmp eq i64 %i.fu, %i.ew
  %i.fv = icmp slt i32 %.024.lcssa.i.i.i, %i.ex
  %or.cond215.i.i = and i1 %i.fv, %.not29.i.not.i.i
  br i1 %or.cond215.i.i, label %.lr.ph151.i.i, label %Emap_LibFindFirst.exit.thread.i.i

.lr.ph151.i.i:                                    ; preds = %bb.x, %.loopexit.i.i
  %i.fw = phi i32 [ %i.kf, %.loopexit.i.i ], [ %.lcssa206214.i.i, %bb.x ] ; 5 uses
  %i.fx = phi i32 [ %i.kg, %.loopexit.i.i ], [ %.lcssa204212.i.i, %bb.x ] ; 5 uses
  %i.fy = phi ptr [ %i.kh, %.loopexit.i.i ], [ %.lcssa203209.i.i, %bb.x ] ; 5 uses
  %indvars.iv177.i.i = phi i64 [ %indvars.iv.next178.i.i, %.loopexit.i.i ], [ %i.fp, %bb.x ] ; 2 uses
  %.2149.i.i = phi double [ %.3.i.i, %.loopexit.i.i ], [ %.0112164.i.i, %bb.x ] ; 6 uses
  %.2116148.i.i = phi float [ %.3117.i.i, %.loopexit.i.i ], [ %.0114163.i.i, %bb.x ] ; 6 uses
  %i.fz = load ptr, ptr %2, align 8, !tbaa !36
  %i.ga = getelementptr inbounds nuw [104 x i8], ptr %i.fz, i64 %indvars.iv177.i.i ; 10 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !133 ; 3 uses
  %i.gd = load i32, ptr %i.ek, align 8, !tbaa !64
  %.not130.i.i = icmp eq i32 %i.gc, %i.gd
  br i1 %.not130.i.i, label %bb.y, label %Emap_LibFindFirst.exit.thread.i.i

bb.y:                                             ; preds = %.lr.ph151.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !134
  %i.gg = load i64, ptr %i.es, align 8, !tbaa !65
  %22 = xor i64 %i.gg, %i.ev
  %.not131.i.i = icmp eq i64 %i.gf, %22
  br i1 %.not131.i.i, label %.preheader.i101.i, label %Emap_LibFindFirst.exit.thread.i.i

.preheader.i101.i:                                ; preds = %bb.y
  %i.gh = icmp sgt i32 %i.gc, 0
  br i1 %i.gh, label %.lr.ph.i102.i, label %._crit_edge.thread.i.i

.lr.ph.i102.i:                                    ; preds = %.preheader.i101.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 12 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 36 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 76
  %wide.trip.count.i103.i = zext nneg i32 %i.gc to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i102.i
  %indvars.iv.i104.i = phi i64 [ 0, %.lr.ph.i102.i ], [ %indvars.iv.next.i105.i, %bb.z ] ; 4 uses
  %.0111143.i.i = phi double [ 0.000000e+00, %.lr.ph.i102.i ], [ %i.hd, %bb.z ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i104.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !73
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !73
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i104.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !73
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [96 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 5208
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !67
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i104.i
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !109
  %i.ha = fpext float %i.gz to double
  %i.hb = fadd double %i.gx, %i.ha                ; 2 uses
  %i.hc = fcmp ogt double %.0111143.i.i, %i.hb
  %i.hd = select i1 %i.hc, double %.0111143.i.i, double %i.hb ; 6 uses
  %indvars.iv.next.i105.i = add nuw nsw i64 %indvars.iv.i104.i, 1 ; 2 uses
  %exitcond.not.i106.i = icmp eq i64 %indvars.iv.next.i105.i, %wide.trip.count.i103.i
  br i1 %exitcond.not.i106.i, label %._crit_edge.i.i, label %bb.z, !llvm.loop !197

._crit_edge.i.i:                                  ; preds = %bb.z
  %i.he = fcmp ogt double %i.hd, %i.ef
  %i.hf = fcmp ogt double %i.hd, %i.eg
  %or.cond140.i.i = select i1 %.not132.i.i, i1 %i.hf, i1 false
  %or.cond169.i.i = select i1 %i.he, i1 true, i1 %or.cond140.i.i
  br i1 %or.cond169.i.i, label %.loopexit.i.i, label %bb.aa

._crit_edge.thread.i.i:                           ; preds = %.preheader.i101.i
  br i1 %or.cond169195.i.i, label %.loopexit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %._crit_edge.thread.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.hh = load float, ptr %i.hg, align 8, !tbaa !135
  store i32 0, ptr %i.ay, align 4, !tbaa !82
  br label %Emap_CutMeasureCandidate.exit.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.hj = load float, ptr %i.hi, align 8, !tbaa !135
  store i32 0, ptr %i.ay, align 4, !tbaa !82
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next.i.i.i, %bb.ab ] ; 3 uses
  %.02325.i.i.i = phi float [ %i.hj, %bb.aa ], [ %i.hs, %bb.ab ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i.i.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !73
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !73
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i.i.i
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !73
  %i.hr = tail call fastcc float @Emap_PhaseRefVisit_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.ax, i32 noundef %i.ho, i32 noundef %i.hq)
  %i.hs = fadd float %.02325.i.i.i, %i.hr         ; 4 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ht = load i32, ptr %i.gb, align 8, !tbaa !133
  %i.hu = sext i32 %i.ht to i64
  %i.hv = icmp slt i64 %indvars.iv.next.i.i.i, %i.hu
  br i1 %i.hv, label %bb.ab, label %._crit_edge.i136.i.i, !llvm.loop !198

._crit_edge.i136.i.i:                             ; preds = %bb.ab
  %.val.pre.i.i.i = load i32, ptr %i.ay, align 4, !tbaa !82 ; 3 uses
  %i.hw = icmp sgt i32 %.val.pre.i.i.i, 0
  br i1 %i.hw, label %.lr.ph29.i.i.i, label %Emap_CutMeasureCandidate.exit.i.i

.lr.ph29.i.i.i:                                   ; preds = %._crit_edge.i136.i.i
  %.val24.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !84 ; 5 uses
  %i.hx = zext nneg i32 %.val.pre.i.i.i to i64    ; 3 uses
  %xtraiter = and i64 %i.hx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph29.i.i.i, %.prol.preheader
  %indvars.iv31.i.i.i.prol = phi i64 [ %indvars.iv.next32.i.i.i.prol, %.prol.preheader ], [ %i.hx, %.lr.ph29.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph29.i.i.i ]
  %indvars.iv.next32.i.i.i.prol = add nsw i64 %indvars.iv31.i.i.i.prol, -1 ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.val24.i.i.i, i64 %indvars.iv.next32.i.i.i.prol
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !73
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ia ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !73
  %i.id = add nsw i32 %i.ic, -1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !73
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !199

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph29.i.i.i
  %indvars.iv31.i.i.i.unr = phi i64 [ %i.hx, %.lr.ph29.i.i.i ], [ %indvars.iv.next32.i.i.i.prol, %.prol.preheader ]
  %i.ie = icmp ult i32 %.val.pre.i.i.i, 4
  br i1 %i.ie, label %Emap_CutMeasureCandidate.exit.i.i, label %.lr.ph29.i.i.i.new

.lr.ph29.i.i.i.new:                               ; preds = %.prol.loopexit, %.lr.ph29.i.i.i.new
  %indvars.iv31.i.i.i = phi i64 [ %indvars.iv.next32.i.i.i.3, %.lr.ph29.i.i.i.new ], [ %indvars.iv31.i.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.if = getelementptr [4 x i8], ptr %.val24.i.i.i, i64 %indvars.iv31.i.i.i
  %i.ig = getelementptr i8, ptr %i.if, i64 -4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !73
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !73
  %i.il = add nsw i32 %i.ik, -1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !73
  %i.im = getelementptr [4 x i8], ptr %.val24.i.i.i, i64 %indvars.iv31.i.i.i
  %i.in = getelementptr i8, ptr %i.im, i64 -8
  %i.io = load i32, ptr %i.in, align 4, !tbaa !73
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !73
  %i.is = add nsw i32 %i.ir, -1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !73
  %i.it = getelementptr [4 x i8], ptr %.val24.i.i.i, i64 %indvars.iv31.i.i.i
  %i.iu = getelementptr i8, ptr %i.it, i64 -12
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !73
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %6, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !73
  %i.iz = add nsw i32 %i.iy, -1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !73
  %indvars.iv.next32.i.i.i.3 = add nsw i64 %indvars.iv31.i.i.i, -4 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.val24.i.i.i, i64 %indvars.iv.next32.i.i.i.3
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !73
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %6, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !73
  %i.jf = add nsw i32 %i.je, -1
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !73
  %i.jg = icmp sgt i64 %indvars.iv31.i.i.i, 4
  br i1 %i.jg, label %.lr.ph29.i.i.i.new, label %Emap_CutMeasureCandidate.exit.i.i, !llvm.loop !200

Emap_CutMeasureCandidate.exit.i.i:                ; preds = %.prol.loopexit, %.lr.ph29.i.i.i.new, %._crit_edge.i136.i.i, %.thread.i.i
  %.0111.lcssa196198.i.i = phi double [ 0.000000e+00, %.thread.i.i ], [ %i.hd, %._crit_edge.i136.i.i ], [ %i.hd, %.lr.ph29.i.i.i.new ], [ %i.hd, %.prol.loopexit ] ; 5 uses
  %.023.lcssa37.i.i.i = phi float [ %i.hh, %.thread.i.i ], [ %i.hs, %._crit_edge.i136.i.i ], [ %i.hs, %.lr.ph29.i.i.i.new ], [ %i.hs, %.prol.loopexit ] ; 5 uses
  %i.jh = fpext float %.023.lcssa37.i.i.i to double ; 2 uses
  %i.ji = fpext float %.2116148.i.i to double     ; 2 uses
  %i.jj = fadd double %i.ji, -1.000000e-03
  %i.jk = fcmp ogt double %i.jj, %i.jh
  br i1 %i.jk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %Emap_CutMeasureCandidate.exit.i.i
  %i.jl = fadd double %i.ji, 1.000000e-03
  %i.jm = fcmp ogt double %i.jl, %i.jh
  %i.jn = fadd double %.2149.i.i, -1.000000e-03
  %i.jo = fcmp olt double %.0111.lcssa196198.i.i, %i.jn
  %or.cond134.i.i = select i1 %i.jm, i1 %i.jo, i1 false
  br i1 %or.cond134.i.i, label %bb.ad, label %.loopexit.i.i

bb.ad:                                            ; preds = %bb.ac, %Emap_CutMeasureCandidate.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i8 0, i64 80, i1 false)
  store i32 -1, ptr %i.h, align 8, !tbaa !116
  store i32 -1, ptr %i.i, align 4, !tbaa !118
  %i.jp = load ptr, ptr %i.ga, align 8, !tbaa !137 ; 3 uses
  %i.jq = load i32, ptr %i.gb, align 8, !tbaa !133 ; 6 uses
  store double %.0111.lcssa196198.i.i, ptr %i.j, align 8, !tbaa !67
  store float %.023.lcssa37.i.i.i, ptr %i.k, align 8, !tbaa !68
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph147.i.i, label %.loopexit.i.i

.lr.ph147.i.i:                                    ; preds = %bb.ad
  %i.js = getelementptr inbounds nuw i8, ptr %i.ga, i64 12 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ga, i64 36 ; 2 uses
  %wide.trip.count175.i.i = zext nneg i32 %i.jq to i64 ; 3 uses
  %min.iters.check227 = icmp ult i32 %i.jq, 4
  br i1 %min.iters.check227, label %scalar.ph226.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %.lr.ph147.i.i
  %n.vec229 = and i64 %wide.trip.count175.i.i, 2147483644 ; 3 uses
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next234, %vector.body230 ] ; 5 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %index231
  %wide.load232 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !73
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index231
  store <4 x i32> %wide.load232, ptr %i.jv, align 8, !tbaa !73
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %index231
  %wide.load233 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !73
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index231
  store <4 x i32> %wide.load233, ptr %i.jx, align 8, !tbaa !73
  %index.next234 = add nuw i64 %index231, 4       ; 2 uses
  %i.jy = icmp eq i64 %index.next234, %n.vec229
  br i1 %i.jy, label %middle.block235, label %vector.body230, !llvm.loop !201
end_hunk_0
