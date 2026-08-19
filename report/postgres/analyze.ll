inline.NumInlined: 97
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@compute_scalar_stats:bb.a
bb.bf:                                            ; preds = %bb.ba
  %i.pl = icmp sgt i32 %.1331, 0
  br i1 %i.pl, label %bb.bg, label %.thread506

bb.bg:                                            ; preds = %bb.bf
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.pm, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float 1.000000e+00, ptr %i.pn, align 4
  br i1 %i.l, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.po = load ptr, ptr %i.b, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 76
  %i.pq = load i16, ptr %i.pp, align 4
  %i.pr = sext i16 %i.pq to i32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %.sink479 = phi i32 [ %i.pr, %bb.bh ], [ 0, %bb.bg ]
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink479, ptr %i.ps, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 0.000000e+00, ptr %i.pt, align 4
  br label %.thread506

.thread506:                                       ; preds = %.thread, %bb.be, %bb.bi, %bb.bf, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_distinct_stats(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, double noundef %3) #0 {
bb.a:
  %4 = alloca %struct.FmgrInfo, align 8           ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 78
  %i.e = load i8, ptr %i.d, align 2, !range !5, !noundef !6
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.h = load i16, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp eq i16 %i.h, -1
  %i.j = icmp slt i16 %i.h, 0
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.k = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  %i.l = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.m = load i32, ptr %0, align 8                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = shl i32 %i.m, 1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.p, i32 10) ; 4 uses
  %i.q = zext nneg i32 %spec.store.select to i64
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = tail call ptr @palloc(i64 noundef %i.r) #13 ; 26 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.u = load i32, ptr %i.t, align 4
  call void @fmgr_info(i32 noundef %i.u, ptr noundef nonnull %4) #13
  %i.v = icmp sgt i32 %2, 0
  br i1 %i.v, label %.lr.ph278, label %analyze_mcv_list.exit.thread

.lr.ph278:                                        ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph278, %.critedge
  %.0216277 = phi i32 [ 0, %.lr.ph278 ], [ %i.dn, %.critedge ] ; 2 uses
  %.0219276 = phi i32 [ 0, %.lr.ph278 ], [ %.1220, %.critedge ] ; 7 uses
  %.0231275 = phi i32 [ 0, %.lr.ph278 ], [ %.3, %.critedge ] ; 11 uses
  %.0234274 = phi double [ 0.000000e+00, %.lr.ph278 ], [ %.2236, %.critedge ] ; 4 uses
  %.0237273 = phi i32 [ 0, %.lr.ph278 ], [ %.1238, %.critedge ] ; 7 uses
  %.0239272 = phi i32 [ 0, %.lr.ph278 ], [ %.1240, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @vacuum_delay_point(i1 noundef zeroext true) #13
  %i.x = call i64 %1(ptr noundef %0, i32 noundef %.0216277, ptr noundef nonnull %i.a) #13 ; 5 uses
  %i.y = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = add i32 %.0219276, 1
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.ab = add i32 %.0239272, 1                    ; 6 uses
  br i1 %i.k, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ac = inttoptr i64 %i.x to ptr                ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = icmp eq i8 %i.ad, 1
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.ac, i64 1
  %.val.i = load i8, ptr %i.ag, align 1           ; 2 uses
  %i.ah = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.ah, 3
  %i.ai = icmp eq i8 %.val.i, 18
  %i.aj = select i1 %i.ai, i64 18, i64 2
  %i.ak = select i1 %or.cond.i.i.i, i64 10, i64 %i.aj
  br label %VARSIZE_ANY.exit

bb.h:                                             ; preds = %bb.f
  %i.al = and i32 %i.ae, 1
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = lshr i32 %i.ae, 1
  %i.an = zext nneg i32 %i.am to i64
  br label %VARSIZE_ANY.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.ac, align 4
  %i.ap = lshr i32 %i.ao, 2
  %i.aq = zext nneg i32 %i.ap to i64
  br label %VARSIZE_ANY.exit

VARSIZE_ANY.exit:                                 ; preds = %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ak, %bb.g ], [ %i.an, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = uitofp nneg i64 %.0.i to double
  %i.as = fadd double %.0234274, %i.ar            ; 2 uses
  %i.at = call i64 @toast_raw_datum_size(i64 noundef %i.x) #13
  %i.au = icmp ugt i64 %i.at, 1024
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %VARSIZE_ANY.exit
  %i.av = add i32 %.0237273, 1
  br label %.critedge

bb.l:                                             ; preds = %VARSIZE_ANY.exit
  %i.aw = call ptr @pg_detoast_datum(ptr noundef nonnull %i.ac) #13
  %i.ax = ptrtoint ptr %i.aw to i64
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  br i1 %i.l, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = inttoptr i64 %i.x to ptr
  %i.az = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #15
  %i.ba = add i64 %i.az, 1
  %i.bb = uitofp i64 %i.ba to double
  %i.bc = fadd double %.0234274, %i.bb
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.1235 = phi double [ %i.as, %bb.l ], [ %i.bc, %bb.n ], [ %.0234274, %bb.m ] ; 5 uses
  %.0227 = phi i64 [ %i.ax, %bb.l ], [ %i.x, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.bd = icmp sgt i32 %.0231275, 0
  br i1 %i.bd, label %.lr.ph.preheader, label %.critedge249

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %.0231275 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.r ] ; 6 uses
  %.0224262 = phi i32 [ %.0231275, %.lr.ph.preheader ], [ %.1225, %bb.r ] ; 3 uses
  %i.be = load i32, ptr %i.w, align 8
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = call i64 @FunctionCall2Coll(ptr noundef nonnull %4, i32 noundef %i.be, i64 noundef %.0227, i64 noundef %i.bg) #13
  %.not257 = icmp eq i64 %i.bh, 0
  br i1 %.not257, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.lr.ph
  %i.bi = zext nneg i32 %.0224262 to i64
  %i.bj = icmp samesign ult i64 %indvars.iv, %i.bi
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp eq i32 %i.bl, 1
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.bm, i32 %i.bn, i32 %.0224262
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1225 = phi i32 [ %.0224262, %bb.p ], [ %spec.select, %bb.q ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge249, label %.lr.ph, !llvm.loop !57

bb.s:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8
  %.not334 = icmp eq i64 %indvars.iv, 0
  br i1 %.not334, label %.critedge, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.s, %bb.t
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %bb.t ], [ %indvars.iv, %bb.s ] ; 3 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv303 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 -8     ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp sgt i32 %i.bt, %i.bv
  br i1 %i.bw, label %bb.t, label %.critedge

bb.t:                                             ; preds = %.lr.ph270
  %i.bx = getelementptr i8, ptr %i.br, i64 -16    ; 2 uses
  %i.by = load i64, ptr %i.br, align 8
  %i.bz = load i64, ptr %i.bx, align 8
  store i64 %i.bz, ptr %i.br, align 8
  store i64 %i.by, ptr %i.bx, align 8
  store i32 %i.bv, ptr %i.bs, align 8
  store i32 %i.bt, ptr %i.bu, align 8
  %indvars.iv.next304 = add nsw i64 %indvars.iv303, -1
  %i.ca = icmp sgt i64 %indvars.iv303, 1
  br i1 %i.ca, label %.lr.ph270, label %.critedge, !llvm.loop !58

.critedge249:                                     ; preds = %bb.r, %bb.o
  %.0224.lcssa = phi i32 [ %.0231275, %bb.o ], [ %.1225, %bb.r ] ; 4 uses
  %i.cb = icmp slt i32 %.0231275, %spec.store.select
  %i.cc = zext i1 %i.cb to i32
  %spec.select250 = add i32 %.0231275, %i.cc      ; 6 uses
  %.2223264 = add i32 %spec.select250, -1         ; 3 uses
  %i.cd = icmp sgt i32 %.2223264, %.0224.lcssa
  br i1 %i.cd, label %.lr.ph267.preheader, label %._crit_edge

.lr.ph267.preheader:                              ; preds = %.critedge249
  %i.ce = sext i32 %.2223264 to i64               ; 5 uses
  %i.cf = sext i32 %.0224.lcssa to i64            ; 3 uses
  %i.cg = sub nsw i64 %i.ce, %i.cf
  %xtraiter = and i64 %i.cg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph267.prol.loopexit, label %.lr.ph267.prol

.lr.ph267.prol:                                   ; preds = %.lr.ph267.preheader
  %i.ch = add i32 %spec.select250, -2
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.ce ; 2 uses
  store i64 %i.ck, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.cn, ptr %i.co, align 8
  %indvars.iv.next303.prol = add nsw i64 %i.ce, -1
  br label %.lr.ph267.prol.loopexit

.lr.ph267.prol.loopexit:                          ; preds = %.lr.ph267.prol, %.lr.ph267.preheader
  %indvars.iv302.unr = phi i64 [ %i.ce, %.lr.ph267.preheader ], [ %indvars.iv.next303.prol, %.lr.ph267.prol ]
  %.2223.in265.unr = phi i32 [ %spec.select250, %.lr.ph267.preheader ], [ %.2223264, %.lr.ph267.prol ]
  %i.cp = add nsw i64 %i.ce, -1
  %i.cq = icmp eq i64 %i.cp, %i.cf
  br i1 %i.cq, label %._crit_edge, label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph267.prol.loopexit, %.lr.ph267
  %indvars.iv302 = phi i64 [ %indvars.iv.next303.1, %.lr.ph267 ], [ %indvars.iv302.unr, %.lr.ph267.prol.loopexit ] ; 4 uses
  %.2223.in265 = phi i32 [ %i.di, %.lr.ph267 ], [ %.2223.in265.unr, %.lr.ph267.prol.loopexit ]
  %i.cr = add i32 %.2223.in265, -2
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.cs ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds [16 x i8], ptr %i.s, i64 %indvars.iv302 ; 2 uses
  store i64 %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %i.cx, ptr %i.cy, align 8
  %indvars.iv.next303 = add nsw i64 %indvars.iv302, -1 ; 2 uses
  %i.cz = shl i64 %indvars.iv302, 32
  %sext = add i64 %i.cz, -8589934592
  %i.da = ashr exact i64 %sext, 28
  %i.db = getelementptr inbounds i8, ptr %i.s, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds [16 x i8], ptr %i.s, i64 %indvars.iv.next303 ; 2 uses
  store i64 %i.dc, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 %i.df, ptr %i.dg, align 8
  %indvars.iv.next303.1 = add nsw i64 %indvars.iv302, -2 ; 2 uses
  %i.dh = icmp sgt i64 %indvars.iv.next303.1, %i.cf
  %i.di = trunc nsw i64 %indvars.iv.next303 to i32
  br i1 %i.dh, label %.lr.ph267, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph267.prol.loopexit, %.lr.ph267, %.critedge249
  %i.dj = icmp slt i32 %.0224.lcssa, %spec.select250
  br i1 %i.dj, label %bb.u, label %.critedge

bb.u:                                             ; preds = %._crit_edge
  %i.dk = sext i32 %.0224.lcssa to i64
  %i.dl = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.dk ; 2 uses
  store i64 %.0227, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 1, ptr %i.dm, align 8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph270, %bb.t, %bb.s, %bb.u, %._crit_edge, %bb.k, %bb.d
  %.1240 = phi i32 [ %.0239272, %bb.d ], [ %i.ab, %bb.k ], [ %i.ab, %._crit_edge ], [ %i.ab, %bb.u ], [ %i.ab, %bb.s ], [ %i.ab, %bb.t ], [ %i.ab, %.lr.ph270 ] ; 4 uses
  %.1238 = phi i32 [ %.0237273, %bb.d ], [ %i.av, %bb.k ], [ %.0237273, %._crit_edge ], [ %.0237273, %bb.u ], [ %.0237273, %bb.s ], [ %.0237273, %bb.t ], [ %.0237273, %.lr.ph270 ] ; 2 uses
  %.2236 = phi double [ %.0234274, %bb.d ], [ %i.as, %bb.k ], [ %.1235, %._crit_edge ], [ %.1235, %bb.u ], [ %.1235, %bb.s ], [ %.1235, %bb.t ], [ %.1235, %.lr.ph270 ] ; 2 uses
  %.3 = phi i32 [ %.0231275, %bb.d ], [ %.0231275, %bb.k ], [ %spec.select250, %._crit_edge ], [ %spec.select250, %bb.u ], [ %.0231275, %bb.s ], [ %.0231275, %bb.t ], [ %.0231275, %.lr.ph270 ] ; 11 uses
  %.1220 = phi i32 [ %i.aa, %bb.d ], [ %.0219276, %bb.k ], [ %.0219276, %._crit_edge ], [ %.0219276, %bb.u ], [ %.0219276, %bb.s ], [ %.0219276, %bb.t ], [ %.0219276, %.lr.ph270 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.dn = add nuw nsw i32 %.0216277, 1            ; 2 uses
  %exitcond305.not = icmp eq i32 %i.dn, %2
  br i1 %exitcond305.not, label %._crit_edge279, label %bb.c, !llvm.loop !60

._crit_edge279:                                   ; preds = %.critedge
  %i.do = icmp eq i32 %.1238, 0                   ; 2 uses
  %i.dp = icmp sgt i32 %.1240, 0
  br i1 %i.dp, label %bb.v, label %bb.ar

bb.v:                                             ; preds = %._crit_edge279
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.dq, align 8
  %i.dr = sitofp i32 %.1220 to double
  %i.ds = sitofp i32 %2 to double                 ; 7 uses
  %i.dt = fdiv double %i.dr, %i.ds
  %i.du = fptrunc double %i.dt to float           ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store float %i.du, ptr %i.dv, align 4
  br i1 %i.l, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dw = uitofp nneg i32 %.1240 to double
  %i.dx = fdiv double %.2236, %i.dw
  %i.dy = fptosi double %i.dx to i32
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dz = load ptr, ptr %i.b, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 76
  %i.eb = load i16, ptr %i.ea, align 4
  %i.ec = sext i16 %i.eb to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink = phi i32 [ %i.dy, %bb.w ], [ %i.ec, %bb.x ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink, ptr %i.ed, align 8
  %i.ee = icmp sgt i32 %.3, 0
  br i1 %i.ee, label %.lr.ph288.preheader, label %._crit_edge289.thread

.lr.ph288.preheader:                              ; preds = %bb.y
  %wide.trip.count309 = zext nneg i32 %.3 to i64
  br label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %bb.z
  %indvars.iv306 = phi i64 [ 0, %.lr.ph288.preheader ], [ %indvars.iv.next307, %bb.z ] ; 3 uses
  %.0214286 = phi i32 [ 0, %.lr.ph288.preheader ], [ %i.ej, %bb.z ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv306
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 8            ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %._crit_edge289.split.loop.exit352, label %bb.z

bb.z:                                             ; preds = %.lr.ph288
  %i.ej = add i32 %i.eh, %.0214286                ; 2 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 1 ; 2 uses
  %exitcond310.not = icmp eq i64 %indvars.iv.next307, %wide.trip.count309
  br i1 %exitcond310.not, label %._crit_edge289, label %.lr.ph288, !llvm.loop !61

._crit_edge289.split.loop.exit352:                ; preds = %.lr.ph288
  %i.ek = trunc nuw nsw i64 %indvars.iv306 to i32
  br label %._crit_edge289

._crit_edge289:                                   ; preds = %bb.z, %._crit_edge289.split.loop.exit352
  %.0215.lcssa = phi i32 [ %i.ek, %._crit_edge289.split.loop.exit352 ], [ %.3, %bb.z ] ; 3 uses
  %.0214.lcssa = phi i32 [ %.0214286, %._crit_edge289.split.loop.exit352 ], [ %i.ej, %bb.z ]
  %i.el = icmp eq i32 %.0215.lcssa, 0
  br i1 %i.el, label %._crit_edge289.thread, label %bb.aa

._crit_edge289.thread:                            ; preds = %bb.y, %._crit_edge289
  %i.em = fsub float 1.000000e+00, %i.du
  %i.en = fneg float %i.em
  br label %bb.af

bb.aa:                                            ; preds = %._crit_edge289
  %i.eo = icmp slt i32 %.3, %spec.store.select
  %or.cond = select i1 %i.eo, i1 %i.do, i1 false
  %i.ep = icmp eq i32 %.0215.lcssa, %.3
  %or.cond251 = and i1 %or.cond, %i.ep
  br i1 %or.cond251, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = sitofp i32 %.3 to float
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.er = sub i32 %.1240, %.0214.lcssa            ; 2 uses
  %i.es = add i32 %i.er, %.0215.lcssa             ; 2 uses
  %i.et = fpext float %i.du to double
  %i.eu = fsub double 1.000000e+00, %i.et
  %i.ev = fmul double %3, %i.eu                   ; 4 uses
  %i.ew = fcmp ogt double %i.ev, 0.000000e+00
  br i1 %i.ew, label %bb.ad, label %._crit_edge322

._crit_edge322:                                   ; preds = %bb.ac
  %.pre = sitofp i32 %i.es to double
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ex = sub i32 %2, %.1220
  %i.ey = sitofp i32 %i.ex to double              ; 3 uses
  %i.ez = sitofp i32 %i.es to double              ; 2 uses
  %i.fa = fmul nnan double %i.ey, %i.ez
  %i.fb = sitofp i32 %i.er to double              ; 2 uses
  %i.fc = fsub double %i.ey, %i.fb
  %i.fd = fmul nnan double %i.ey, %i.fb
  %i.fe = fdiv double %i.fd, %i.ev
  %i.ff = fadd double %i.fc, %i.fe
  %i.fg = fdiv double %i.fa, %i.ff
  br label %bb.ae

end_hunk_0
