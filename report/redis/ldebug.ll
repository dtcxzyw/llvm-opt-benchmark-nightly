inline.NumInlined: 26
inline.NumDeleted: 14
begin_hunk_0_@symbexec:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = and i8 %i.k, 6
  %or.cond230 = icmp eq i8 %i.am, 2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph284, %bb.bf
  %.0162282 = phi i32 [ 0, %.lr.ph284 ], [ %i.fc, %bb.bf ] ; 31 uses
  %.0168281 = phi i32 [ %i.ag, %.lr.ph284 ], [ %.2170, %bb.bf ] ; 2 uses
  %i.an = sext i32 %.0162282 to i64               ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.an ; 5 uses
end_hunk_0
begin_hunk_1_@symbexec:bb.a

bb.u:                                             ; preds = %bb.g
  %i.by = lshr i32 %i.ap, 14
  %i.bz = add nsw i32 %i.by, -131071              ; 5 uses
  %i.ca = and i32 %i.ay, 48
  %i.cb = icmp eq i32 %i.ca, 32
  br i1 %i.cb, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.cc = add nsw i32 %.0162282, 1
  %i.cd = add nsw i32 %i.cc, %i.bz                ; 5 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  %i.cf = icmp slt i32 %i.cd, %i.b
  %or.cond259 = select i1 %i.ce, i1 %i.cf, i1 false
end_hunk_1
begin_hunk_2_@symbexec:bb.a
  br i1 %.not194, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.w
  %3 = add i32 %i.bz, %.0162282
  %wide.trip.count = zext nneg i32 %i.cd to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %4 = trunc nuw nsw i64 %indvars.iv to i32       ; 2 uses
  %5 = sub i32 %3, %4
  %6 = sext i32 %5 to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %6
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = and i32 %i.ch, 8372287
  %or.cond221 = icmp eq i32 %i.ci, 34
  br i1 %or.cond221, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.x, %.lr.ph
  %.0178.lcssa.ph = phi i32 [ %i.cd, %bb.x ], [ %4, %.lr.ph ]
  %i.cj = and i32 %.0178.lcssa.ph, 1
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.critedge, label %precheck.exit.thread
end_hunk_2
begin_hunk_3_@symbexec:bb.a

.critedge:                                        ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %checkArgMode.exit, %bb.w, %._crit_edge, %bb.u, %bb.s, %bb.t, %bb.g
  %.0180 = phi i32 [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.g ], [ 0, %bb.u ], [ 0, %._crit_edge ], [ %i.bk, %checkArgMode.exit ], [ 0, %bb.n ], [ %i.bk, %bb.o ], [ %i.bk, %bb.q ], [ %i.bk, %bb.r ] ; 7 uses
  %.0179 = phi i32 [ %i.bz, %bb.w ], [ %i.bt, %bb.t ], [ %i.bt, %bb.s ], [ 0, %bb.g ], [ %i.bz, %bb.u ], [ %i.bz, %._crit_edge ], [ %i.ba, %checkArgMode.exit ], [ %i.ba, %bb.n ], [ %i.ba, %bb.o ], [ %i.ba, %bb.q ], [ %i.ba, %bb.r ] ; 16 uses
  %i.cl = and i8 %i.ax, 64
  %.not197 = icmp ne i8 %i.cl, 0
  %i.cm = icmp eq i32 %i.as, %2
  %or.cond222 = and i1 %i.cm, %.not197
  %.1169 = select i1 %or.cond222, i32 %.0162282, i32 %.0168281 ; 17 uses
  %.not198 = icmp sgt i8 %i.ax, -1
  br i1 %.not198, label %bb.aa, label %bb.y

end_hunk_3
begin_hunk_4_@symbexec:bb.a
    i32 22, label %bb.ao
    i32 28, label %bb.ap
    i32 29, label %bb.ap
    i32 30, label %7
    i32 34, label %bb.av
    i32 36, label %bb.ay
    i32 37, label %bb.bb
end_hunk_4
begin_hunk_5_@symbexec:bb.a
  br i1 %i.do, label %bb.ao, label %precheck.exit.thread

bb.ao:                                            ; preds = %bb.an, %bb.aa
  %i.dp = add nsw i32 %.0162282, 1
  %i.dq = add nsw i32 %i.dp, %.0179               ; 2 uses
  %i.dr = icmp sge i32 %.0162282, %i.dq
  %.not213 = icmp sgt i32 %i.dq, %1
  %i.ds = or i1 %i.dr, %.not213
  %or.cond227 = select i1 %.not204, i1 true, i1 %i.ds
  %i.dt = select i1 %or.cond227, i32 0, i32 %.0179
  %.1163 = add nsw i32 %i.dt, %.0162282
  br label %bb.bf

bb.ap:                                            ; preds = %bb.aa, %bb.aa
end_hunk_5
begin_hunk_6_@symbexec:bb.a
  %spec.select228 = select i1 %.not211, i32 %.0168281, i32 %.0162282
  br label %bb.bf

7:                                                ; preds = %bb.aa
  %8 = icmp sgt i32 %.0179, 1
  br i1 %8, label %bb.au, label %bb.bf

bb.au:                                            ; preds = %7
  %9 = add nsw i32 %i.as, -1
  %i.ec = add nsw i32 %9, %.0179
  %.not205 = icmp sgt i32 %i.ec, %i.f
  br i1 %.not205, label %precheck.exit.thread, label %bb.bf

bb.av:                                            ; preds = %bb.aa
  %i.ed = icmp slt i32 %.0179, 1
end_hunk_6
begin_hunk_7_@symbexec:bb.a
  br i1 %i.fb, label %precheck.exit.thread, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %10 = add nsw i32 %.0179, -1
  %.old = add nsw i32 %10, %i.as
  %.not202.old = icmp sgt i32 %.old, %i.f
  br i1 %.not202.old, label %precheck.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %luaG_checkopenop.exit241, %._crit_edge280, %bb.ae, %bb.at, %bb.am, %bb.ai, %bb.aa, %bb.be, %bb.aw, %bb.ax, %7, %bb.au, %bb.aj, %bb.ag, %bb.af, %bb.ab, %bb.ad, %bb.ao
  %.2170 = phi i32 [ %.1169, %bb.aa ], [ %.1169, %bb.ad ], [ %.1169, %bb.be ], [ %.1169, %bb.ab ], [ %.1169, %7 ], [ %.1169, %._crit_edge280 ], [ %.1169, %bb.au ], [ %.1169, %bb.af ], [ %.1169, %bb.ag ], [ %.1169, %bb.aw ], [ %spec.select231, %bb.ae ], [ %.1169, %bb.aj ], [ %spec.select, %bb.ai ], [ %.1169, %bb.ax ], [ %.1169, %bb.ao ], [ %spec.select225, %bb.am ], [ %spec.select228, %bb.at ], [ %.1169, %luaG_checkopenop.exit241 ] ; 2 uses
  %.4166 = phi i32 [ %.0162282, %bb.aa ], [ %.0162282, %bb.ad ], [ %.0162282, %bb.be ], [ %.0162282, %bb.ab ], [ %.0162282, %7 ], [ %spec.select229, %._crit_edge280 ], [ %.0162282, %bb.au ], [ %.0162282, %bb.af ], [ %.0162282, %bb.ag ], [ %.0162282, %bb.aw ], [ %.0162282, %bb.ae ], [ %.0162282, %bb.aj ], [ %.0162282, %bb.ai ], [ %i.eh, %bb.ax ], [ %.1163, %bb.ao ], [ %.0162282, %bb.am ], [ %.0162282, %bb.at ], [ %.0162282, %luaG_checkopenop.exit241 ]
  %i.fc = add nsw i32 %.4166, 1                   ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %1
  br i1 %i.fd, label %bb.f, label %._crit_edge285, !llvm.loop !77
end_hunk_7
begin_hunk_8_@symbexec:bb.a
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !4
  br label %precheck.exit.thread

precheck.exit.thread:                             ; preds = %bb.av, %bb.as, %bb.ap, %bb.bd, %bb.az, %bb.ay, %bb.ar, %bb.q, %bb.r, %bb.o, %bb.n, %bb.l, %bb.m, %bb.j, %bb.i, %bb.be, %bb.v, %bb.f, %bb.t, %._crit_edge, %bb.y, %bb.bb, %luaG_checkopenop.exit241, %bb.ax, %bb.au, %bb.an, %luaG_checkopenop.exit, %bb.al, %bb.aj, %bb.ak, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.z, %bb.ac, %.lr.ph279, %bb.b, %bb.a, %bb.c, %bb.d, %precheck.exit, %._crit_edge285
  %.10 = phi i32 [ 0, %bb.b ], [ %i.fg, %._crit_edge285 ], [ 0, %precheck.exit ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %.lr.ph279 ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %luaG_checkopenop.exit ], [ 0, %bb.an ], [ 0, %bb.au ], [ 0, %bb.ax ], [ 0, %luaG_checkopenop.exit241 ], [ 0, %bb.bb ], [ 0, %bb.y ], [ 0, %._crit_edge ], [ 0, %bb.t ], [ 0, %bb.f ], [ 0, %bb.v ], [ 0, %bb.be ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.ar ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.bd ], [ 0, %bb.ap ], [ 0, %bb.as ], [ 0, %bb.av ]
  ret i32 %.10
}

end_hunk_8
