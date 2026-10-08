Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pathnode?download=true
inline.NumInlined: 88
inline.NumDeleted: 6
begin_hunk_0_@add_path:bb.a

bb.af:                                            ; preds = %bb.ac
  %i.cp = and i32 %i.ch, -3
  %or.cond3 = icmp eq i32 %i.cp, 0
  br i1 %or.cond3, label %bb.ag, label %compare_path_costs_fuzzily.exit.thread156

bb.ag:                                            ; preds = %bb.af
  %i.cq = load double, ptr %i.m, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.cs = load double, ptr %i.cr, align 8
  %i.ct = fcmp ult double %i.cq, %i.cs
  br i1 %i.ct, label %compare_path_costs_fuzzily.exit.thread156, label %compare_path_costs_fuzzily.exit.thread156.sink.split

bb.ah:                                            ; preds = %bb.ac
  switch i32 %i.ch, label %compare_path_costs_fuzzily.exit.thread156 [
    i32 0, label %bb.ai
    i32 1, label %bb.am
    i32 2, label %bb.ao
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cu = load i8, ptr %i.n, align 1, !range !6, !noundef !7 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.w, i64 33
  %i.cw = load i8, ptr %i.cv, align 1, !range !6, !noundef !7 ; 2 uses
  %i.cx = icmp samesign ugt i8 %i.cu, %i.cw
  br i1 %i.cx, label %compare_path_costs_fuzzily.exit.thread162, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = icmp samesign ult i8 %i.cu, %i.cw
  br i1 %i.cy, label %compare_path_costs_fuzzily.exit.thread156, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = load double, ptr %i.m, align 8          ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.db = load double, ptr %i.da, align 8         ; 2 uses
  %i.dc = fcmp olt double %i.cz, %i.db
  br i1 %i.dc, label %compare_path_costs_fuzzily.exit.thread162, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dd = fcmp ogt double %i.cz, %i.db
  br i1 %i.dd, label %compare_path_costs_fuzzily.exit.thread156, label %.split166

.split166:                                        ; preds = %bb.al
  %i.de = tail call fastcc i32 @compare_path_costs_fuzzily(ptr noundef nonnull %1, ptr noundef nonnull %i.w, double noundef f0x3FF000000006DF38)
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %compare_path_costs_fuzzily.exit.thread162, label %compare_path_costs_fuzzily.exit.thread156

bb.am:                                            ; preds = %bb.ah
  %i.dg = load double, ptr %i.m, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.di = load double, ptr %i.dh, align 8
  %i.dj = fcmp ugt double %i.dg, %i.di
  br i1 %i.dj, label %compare_path_costs_fuzzily.exit.thread156, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = load i8, ptr %i.n, align 1, !range !6, !noundef !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.w, i64 33
  %i.dm = load i8, ptr %i.dl, align 1, !range !6, !noundef !7
  %.not144 = icmp samesign ult i8 %i.dk, %i.dm
  br i1 %.not144, label %compare_path_costs_fuzzily.exit.thread156, label %compare_path_costs_fuzzily.exit.thread162

bb.ao:                                            ; preds = %bb.ah
  %i.dn = load double, ptr %i.m, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.dp = load double, ptr %i.do, align 8
  %i.dq = fcmp ult double %i.dn, %i.dp
  br i1 %i.dq, label %compare_path_costs_fuzzily.exit.thread156, label %compare_path_costs_fuzzily.exit.thread156.sink.split

bb.ap:                                            ; preds = %bb.x
  %.not138 = icmp eq i32 %i.by, 2
  br i1 %.not138, label %compare_path_costs_fuzzily.exit.thread156, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not139 = icmp eq ptr %i.dr, null
  br i1 %.not139, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.du = phi ptr [ %i.dt, %bb.ar ], [ null, %bb.aq ]
  %i.dv = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not140 = icmp eq ptr %i.dv, null
  br i1 %.not140, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.dy = phi ptr [ %i.dx, %bb.at ], [ null, %bb.as ]
  %i.dz = tail call i32 @bms_subset_compare(ptr noundef %i.du, ptr noundef %i.dy) #9
  %or.cond5 = icmp ult i32 %i.dz, 2
  br i1 %or.cond5, label %bb.av, label %compare_path_costs_fuzzily.exit.thread156

bb.av:                                            ; preds = %bb.au
  %i.ea = load double, ptr %i.m, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ec = load double, ptr %i.eb, align 8
  %i.ed = fcmp ugt double %i.ea, %i.ec
  br i1 %i.ed, label %compare_path_costs_fuzzily.exit.thread156, label %compare_path_costs_fuzzily.exit

bb.aw:                                            ; preds = %bb.x
  %.not134 = icmp eq i32 %i.by, 1
  br i1 %.not134, label %compare_path_costs_fuzzily.exit.thread156, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ee = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not135 = icmp eq ptr %i.ee, null
  br i1 %.not135, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.eh = phi ptr [ %i.eg, %bb.ay ], [ null, %bb.ax ]
  %i.ei = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not136 = icmp eq ptr %i.ei, null
  br i1 %.not136, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.el = phi ptr [ %i.ek, %bb.ba ], [ null, %bb.az ]
  %i.em = tail call i32 @bms_subset_compare(ptr noundef %i.eh, ptr noundef %i.el) #9
  %i.en = and i32 %i.em, -3
  %or.cond7 = icmp eq i32 %i.en, 0
  br i1 %or.cond7, label %bb.bc, label %compare_path_costs_fuzzily.exit.thread156

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load double, ptr %i.m, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.eq = load double, ptr %i.ep, align 8
  %i.er = fcmp ult double %i.eo, %i.eq
  br i1 %i.er, label %compare_path_costs_fuzzily.exit.thread156, label %compare_path_costs_fuzzily.exit.thread156.sink.split

default.unreachable195:                           ; preds = %bb.x
  unreachable

compare_path_costs_fuzzily.exit:                  ; preds = %bb.av
  %i.es = load i8, ptr %i.n, align 1, !range !6, !noundef !7
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 33
  %i.eu = load i8, ptr %i.et, align 1, !range !6, !noundef !7
  %.not141.not = icmp samesign ult i8 %i.es, %i.eu
  br i1 %.not141.not, label %compare_path_costs_fuzzily.exit.thread156, label %compare_path_costs_fuzzily.exit.thread162

compare_path_costs_fuzzily.exit.thread162:        ; preds = %bb.ak, %bb.ai, %bb.an, %.split166, %.split, %compare_path_costs_fuzzily.exit
  %i.ev = load ptr, ptr %i.g, align 8
  %i.ew = add i32 %.sroa.7.0174, -1               ; 2 uses
  %i.ex = tail call ptr @list_delete_nth_cell(ptr noundef %i.ev, i32 noundef %.sroa.7.0174) #9 ; 3 uses
  store ptr %i.ex, ptr %i.g, align 8
  %i.ey = load i32, ptr %i.w, align 8
  %i.ez = icmp eq i32 %i.ey, 297
  br i1 %i.ez, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %compare_path_costs_fuzzily.exit.thread162
  tail call void @pfree(ptr noundef nonnull %i.w) #9
  br label %.thread

compare_path_costs_fuzzily.exit.thread156.sink.split: ; preds = %bb.bc, %bb.ao, %bb.ag
  %i.fa = load i8, ptr %i.n, align 1, !range !6, !noundef !7
  %i.fb = getelementptr inbounds nuw i8, ptr %i.w, i64 33
  %i.fc = load i8, ptr %i.fb, align 1, !range !6, !noundef !7
  %.not137 = icmp samesign ugt i8 %i.fa, %i.fc
  br label %compare_path_costs_fuzzily.exit.thread156

compare_path_costs_fuzzily.exit.thread156:        ; preds = %compare_path_costs_fuzzily.exit.thread156.sink.split, %bb.am, %bb.an, %bb.r, %bb.m, %bb.au, %bb.av, %bb.ao, %bb.bc, %bb.ah, %bb.bb, %bb.al, %bb.aj, %bb.af, %bb.ag, %bb.ad, %bb.ae, %bb.aw, %bb.w, %bb.ap, %.split166, %.split, %compare_path_costs_fuzzily.exit
  %.2112160.shrunk = phi i1 [ false, %.split166 ], [ true, %compare_path_costs_fuzzily.exit ], [ true, %.split ], [ true, %bb.r ], [ true, %bb.m ], [ true, %bb.au ], [ true, %bb.av ], [ true, %bb.w ], [ true, %bb.an ], [ true, %bb.ap ], [ true, %bb.ao ], [ true, %bb.bc ], [ true, %bb.ah ], [ true, %bb.bb ], [ false, %bb.al ], [ false, %bb.aj ], [ true, %bb.am ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %bb.ad ], [ true, %bb.ae ], [ true, %bb.aw ], [ %.not137, %compare_path_costs_fuzzily.exit.thread156.sink.split ] ; 2 uses
  %i.fd = load i32, ptr %i.i, align 8             ; 2 uses
  %i.fe = load i32, ptr %i.y, align 8             ; 2 uses
  %i.ff = icmp sgt i32 %i.fd, %i.fe
  br i1 %i.ff, label %.split203, label %bb.be

bb.be:                                            ; preds = %compare_path_costs_fuzzily.exit.thread156
  %i.fg = icmp eq i32 %i.fd, %i.fe
  br i1 %i.fg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fh = load double, ptr %i.j, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.fj = load double, ptr %i.fi, align 8
  %i.fk = fcmp ult double %i.fh, %i.fj
  br i1 %i.fk, label %bb.bg, label %.split203

.split203:                                        ; preds = %bb.bf, %compare_path_costs_fuzzily.exit.thread156
  %i.fl = add nsw i32 %.sroa.7.0174, 1
  br i1 %.2112160.shrunk, label %.thread, label %.critedge

bb.bg:                                            ; preds = %bb.be, %bb.bf
  br i1 %.2112160.shrunk, label %.thread, label %.critedge

._crit_edge.loopexit:                             ; preds = %bb.f, %.thread
  %.0108.lcssa.ph = phi i32 [ %.1109200, %.thread ], [ %.0108173, %bb.f ]
  %.pre = load ptr, ptr %i.g, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.fm = phi ptr [ null, %bb.e ], [ %.pre, %._crit_edge.loopexit ]
  %.0108.lcssa = phi i32 [ 0, %bb.e ], [ %.0108.lcssa.ph, %._crit_edge.loopexit ]
  %i.fn = tail call ptr @list_insert_nth(ptr noundef %i.fm, i32 noundef %.0108.lcssa, ptr noundef nonnull %1) #9
  store ptr %i.fn, ptr %i.g, align 8
  br label %bb.bi

.critedge:                                        ; preds = %.split203, %bb.bg
  %i.fo = load i32, ptr %1, align 8
  %i.fp = icmp eq i32 %i.fo, 297
  br i1 %i.fp, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.critedge
  tail call void @pfree(ptr noundef nonnull %1) #9
  br label %bb.bi

bb.bi:                                            ; preds = %.critedge, %bb.bh, %._crit_edge
  ret void
}

declare void @ProcessInterrupts() local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 4) i32 @compare_path_costs_fuzzily(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, double noundef nofpclass(nan inf zero sub nnorm) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, %i.d
  %. = select i1 %i.e, i32 1, i32 2
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  %i.j = fmul double %2, %i.i
  %i.k = fcmp ogt double %i.g, %i.j
  br i1 %i.k, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !6, !noundef !7
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 25
  %i.u = load i8, ptr %i.t, align 1, !range !6, !noundef !7
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load double, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load double, ptr %i.y, align 8
  %i.aa = fmul double %2, %i.z
  %i.ab = fcmp ogt double %i.x, %i.aa
  br i1 %i.ab, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br label %bb.q

bb.i:                                             ; preds = %bb.c
  %i.ac = fmul double %2, %i.g
  %i.ad = fcmp ogt double %i.i, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !range !6, !noundef !7
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 25
  %i.an = load i8, ptr %i.am, align 1, !range !6, !noundef !7
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load double, ptr %i.ar, align 8
  %i.at = fmul double %2, %i.as
  %i.au = fcmp ogt double %i.aq, %i.at
  br i1 %i.au, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load double, ptr %i.av, align 8         ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = load double, ptr %i.ax, align 8         ; 2 uses
  %i.az = fmul double %2, %i.ay
  %i.ba = fcmp ogt double %i.aw, %i.az
  br i1 %i.ba, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = fmul double %2, %i.aw
  %i.bc = fcmp ogt double %i.ay, %i.bb
  %.32 = zext i1 %i.bc to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.g, %bb.b, %bb.n, %bb.h
  %.0 = phi i32 [ %., %bb.b ], [ 2, %bb.o ], [ %.32, %bb.p ], [ 2, %bb.h ], [ 3, %bb.g ], [ 1, %bb.n ], [ 3, %bb.m ]
  ret i32 %.0
}

declare ptr @list_delete_nth_cell(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @pfree(ptr noundef) local_unnamed_addr #5

declare ptr @list_insert_nth(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @add_path_precheck(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %5, null                    ; 2 uses
  %i.a = select i1 %.not, ptr %4, ptr null        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %.not45 = icmp eq ptr %i.c, null
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.in.in.v = select i1 %.not, i64 24, i64 25
  %.in.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.in.v
  %.in = load i8, ptr %.in.in, align 1, !range !6, !noundef !7
  %.not94 = icmp eq i8 %.in, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.d, align 4
  %i.g = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %.not94, label %.lr.ph.split.us.split, label %.lr.ph.split.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  br i1 %i.g, label %.lr.ph92, label %.critedge

.lr.ph92:                                         ; preds = %.lr.ph.split.us.split, %.critedge51.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.critedge51.us ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv98
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %.not47.us = icmp eq i32 %i.l, %1
  br i1 %.not47.us, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %.lr.ph92
  %i.m = icmp slt i32 %1, %i.l
  br i1 %i.m, label %.critedge, label %bb.d

bb.c:                                             ; preds = %.lr.ph92
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.o = load double, ptr %i.n, align 8
  %i.p = fmul double %i.o, 1.010000e+00
  %i.q = fcmp ugt double %3, %i.p
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not48.us = icmp eq ptr %i.s, null
  br i1 %.not48.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %i.u, %bb.e ], [ null, %bb.d ]
  %i.w = tail call i32 @compare_pathkeys(ptr noundef %i.a, ptr noundef %i.v) #9
  %i.x = and i32 %i.w, -3
  %or.cond5.us = icmp eq i32 %i.x, 0
  br i1 %or.cond5.us, label %bb.g, label %.critedge51.us

end_hunk_0
begin_hunk_1_@add_partial_path:bb.a
  %i.m = icmp slt i32 %.sroa.7.091, %i.l
  br i1 %i.m, label %bb.f, label %._crit_edge.loopexit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.092, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = sext i32 %.sroa.7.091 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8              ; 12 uses
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 @compare_pathkeys(ptr noundef %i.s, ptr noundef %i.u) #9 ; 5 uses
  %.not52 = icmp eq i32 %i.v, 3
  %.pre = load i32, ptr %i.e, align 8             ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.pre95.a = load i32, ptr %.phi.trans.insert, align 8 ; 4 uses
  br i1 %.not52, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %.pre, %.pre95.a
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %bb.g
  %i.w = icmp slt i32 %.pre, %.pre95.a
  br i1 %i.w, label %.split, label %compare_path_costs_fuzzily.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = load double, ptr %i.f, align 8           ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.z = load double, ptr %i.y, align 8           ; 4 uses
  %i.aa = fmul double %i.z, 1.010000e+00
  %i.ab = fcmp ogt double %i.x, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.h, align 8
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = load ptr, ptr %i.i, align 8             ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !range !6, !noundef !7
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %compare_path_costs_fuzzily.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 25
  %i.aj = load i8, ptr %i.ai, align 1, !range !6, !noundef !7
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.m, label %compare_path_costs_fuzzily.exit.thread

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.am = load double, ptr %i.al, align 8
  %i.an = load double, ptr %i.g, align 8
  %i.ao = fmul double %i.an, 1.010000e+00
  %i.ap = fcmp ogt double %i.am, %i.ao
  br i1 %i.ap, label %.thread107, label %compare_path_costs_fuzzily.exit.thread

bb.n:                                             ; preds = %bb.i
  %i.aq = fmul double %i.x, 1.010000e+00
  %i.ar = fcmp ogt double %i.z, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq ptr %i.at, null
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !range !6, !noundef !7
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.r, label %.split

bb.q:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 25
  %i.bb = load i8, ptr %i.ba, align 1, !range !6, !noundef !7
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.r, label %.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bd = load double, ptr %i.g, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = fmul double %i.bf, 1.010000e+00
  %i.bh = fcmp ule double %i.bd, %i.bg
  %.not54 = icmp ne i32 %i.v, 2
  %or.cond = and i1 %.not54, %i.bh
  br i1 %or.cond, label %.thread110, label %.thread107

bb.s:                                             ; preds = %bb.n
  %i.bi = load double, ptr %i.g, align 8          ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.bk = load double, ptr %i.bj, align 8         ; 5 uses
  %i.bl = fmul double %i.bk, 1.010000e+00
  %i.bm = fcmp ogt double %i.bi, %i.bl
  br i1 %i.bm, label %compare_path_costs_fuzzily.exit.thread, label %compare_path_costs_fuzzily.exit

compare_path_costs_fuzzily.exit:                  ; preds = %bb.s
  %i.bn = fmul double %i.bi, 1.010000e+00
  %i.bo = fcmp ogt double %i.bk, %i.bn
  br i1 %i.bo, label %.split, label %bb.t

.split:                                           ; preds = %compare_path_costs_fuzzily.exit, %bb.h, %bb.p, %bb.q
  %.not54.old.not = icmp eq i32 %i.v, 2
  br i1 %.not54.old.not, label %.thread, label %.thread110

compare_path_costs_fuzzily.exit.thread:           ; preds = %bb.k, %bb.l, %bb.m, %bb.s, %bb.h
  %.not53 = icmp eq i32 %i.v, 1
  br label %.thread

bb.t:                                             ; preds = %compare_path_costs_fuzzily.exit
  switch i32 %i.v, label %bb.u [
    i32 1, label %.thread110
    i32 2, label %.thread107
  ]

bb.u:                                             ; preds = %bb.t
  %i.bp = fmul double %i.z, f0x3FF000000006DF38
  %i.bq = fcmp ogt double %i.x, %i.bp
  br i1 %i.bq, label %.thread107, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = fmul double %i.x, f0x3FF000000006DF38
  %i.bs = fcmp ogt double %i.z, %i.br
  br i1 %i.bs, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bu, null
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i8, ptr %i.by, align 8, !range !6, !noundef !7
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.z, label %.thread110

bb.y:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 25
  %i.cc = load i8, ptr %i.cb, align 1, !range !6, !noundef !7
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.z, label %.thread110

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ce = fmul double %i.bk, f0x3FF000000006DF38
  %i.cf = fcmp ogt double %i.bi, %i.ce
  br i1 %i.cf, label %.thread107, label %.thread110

bb.aa:                                            ; preds = %bb.v
  %i.cg = fmul double %i.bk, f0x3FF000000006DF38
  %i.ch = fcmp ule double %i.bi, %i.cg
  %i.ci = fmul double %i.bi, f0x3FF000000006DF38
  %i.cj = fcmp ogt double %i.bk, %i.ci
  %or.cond87 = and i1 %i.cj, %i.ch
  br i1 %or.cond87, label %.thread110, label %.thread107

.thread110:                                       ; preds = %.split, %bb.t, %bb.x, %bb.y, %bb.z, %bb.r, %bb.aa
  %i.ck = load ptr, ptr %i.b, align 8
  %i.cl = add i32 %.sroa.7.091, -1
  %i.cm = tail call ptr @list_delete_nth_cell(ptr noundef %i.ck, i32 noundef %.sroa.7.091) #9 ; 2 uses
  store ptr %i.cm, ptr %i.b, align 8
  tail call void @pfree(ptr noundef nonnull %i.r) #9
  br label %bb.d

.thread:                                          ; preds = %bb.f, %compare_path_costs_fuzzily.exit.thread, %.split
  %.24571 = phi i1 [ true, %.split ], [ %.not53, %compare_path_costs_fuzzily.exit.thread ], [ true, %bb.f ] ; 3 uses
  %i.cn = icmp sgt i32 %.pre, %.pre95.a
  br i1 %i.cn, label %.split118, label %bb.ab

bb.ab:                                            ; preds = %.thread
  %i.co = icmp eq i32 %.pre, %.pre95.a
  br i1 %i.co, label %.thread107, label %bb.ac

.thread107:                                       ; preds = %bb.t, %bb.u, %bb.r, %bb.aa, %bb.m, %bb.z, %bb.ab
  %.24571105109 = phi i1 [ %.24571, %bb.ab ], [ false, %bb.z ], [ true, %bb.m ], [ false, %bb.aa ], [ true, %bb.r ], [ false, %bb.u ], [ false, %bb.t ] ; 2 uses
  %i.cp = load double, ptr %i.f, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.cr = load double, ptr %i.cq, align 8
  %i.cs = fcmp ult double %i.cp, %i.cr
  br i1 %i.cs, label %bb.ac, label %.split118

.split118:                                        ; preds = %.thread107, %.thread
  %.24571106 = phi i1 [ %.24571105109, %.thread107 ], [ %.24571, %.thread ]
  %i.ct = add nsw i32 %.sroa.7.091, 1
  br i1 %.24571106, label %bb.d, label %.critedge

bb.ac:                                            ; preds = %bb.ab, %.thread107
  %.24570 = phi i1 [ %.24571, %bb.ab ], [ %.24571105109, %.thread107 ]
  br i1 %.24570, label %bb.d, label %.critedge

._crit_edge.loopexit:                             ; preds = %bb.e, %bb.d
  %.041.lcssa.ph = phi i32 [ %.142115, %bb.d ], [ %.04190, %bb.e ]
  %.pre96 = load ptr, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.cu = phi ptr [ null, %bb.c ], [ %.pre96, %._crit_edge.loopexit ]
  %.041.lcssa = phi i32 [ 0, %bb.c ], [ %.041.lcssa.ph, %._crit_edge.loopexit ]
  %i.cv = tail call ptr @list_insert_nth(ptr noundef %i.cu, i32 noundef %.041.lcssa, ptr noundef %1) #9
  store ptr %i.cv, ptr %i.b, align 8
  br label %bb.ad

.critedge:                                        ; preds = %.split118, %bb.ac
  tail call void @pfree(ptr noundef nonnull %1) #9
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @add_partial_path_precheck(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !6, !noundef !7
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.h = fmul double %3, 1.010000e+00             ; 2 uses
  %i.i = fmul double %2, 1.010000e+00             ; 3 uses
  %i.j = load i32, ptr %i.f, align 4
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  br i1 %i.e, label %.lr.ph.split.us.split, label %.lr.ph.split.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  br i1 %i.k, label %.lr.ph82, label %.critedge

.lr.ph82:                                         ; preds = %.lr.ph.split.us.split, %bb.j
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %bb.j ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv96
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %.not54.us = icmp eq i32 %i.p, %1
  br i1 %.not54.us, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %.lr.ph82
  %i.q = icmp slt i32 %1, %i.p                    ; 2 uses
  %not..us = xor i1 %i.q, true
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph82
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.s = load double, ptr %i.r, align 8           ; 2 uses
  %i.t = fmul double %i.s, 1.010000e+00
  %i.u = fcmp ogt double %3, %i.t
  br i1 %i.u, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = fcmp ogt double %i.s, %i.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.x = load double, ptr %i.w, align 8           ; 2 uses
  %i.y = fmul double %i.x, 1.010000e+00
  %i.z = fcmp ogt double %2, %i.y                 ; 3 uses
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = fcmp ogt double %i.x, %i.i
  %not.91 = xor i1 %i.z, true
  %spec.select85 = select i1 %not.91, i1 %i.aa, i1 false
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %i.z, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = fcmp ogt double %i.ac, %i.i
  br i1 %i.ad, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.b
  %i.ae = phi i1 [ %not..us, %bb.b ], [ %i.z, %bb.e ], [ true, %bb.g ], [ false, %bb.f ]
  %i.af = phi i1 [ %i.q, %bb.b ], [ %spec.select85, %bb.e ], [ false, %bb.g ], [ true, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i32 @compare_pathkeys(ptr noundef %4, ptr noundef %i.ah) #9 ; 3 uses
  %i.aj = icmp eq i32 %i.ai, 3
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp ne i32 %i.ai, 1
  %or.cond.us = and i1 %i.ae, %i.ak               ; 2 uses
  %i.al = icmp ne i32 %i.ai, 2
  %or.cond3.us = and i1 %i.af, %i.al
  %or.cond108 = select i1 %or.cond.us, i1 true, i1 %or.cond3.us
  br i1 %or.cond108, label %.critedge.thread66.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.am = load i32, ptr %i.f, align 4
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next97, %i.an
  br i1 %i.ao, label %.lr.ph82, label %.critedge

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %i.k, label %.lr.ph79, label %.critedge

.lr.ph79:                                         ; preds = %.lr.ph.split.split, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %.not54 = icmp eq i32 %i.at, %1
  br i1 %.not54, label %bb.l, label %bb.k, !prof !4

bb.k:                                             ; preds = %.lr.ph79
  %i.au = icmp slt i32 %1, %i.at                  ; 2 uses
  %not. = xor i1 %i.au, true
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph79
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.aw = load double, ptr %i.av, align 8         ; 2 uses
  %i.ax = fmul double %i.aw, 1.010000e+00
  %i.ay = fcmp ogt double %3, %i.ax
  br i1 %i.ay, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = fcmp ogt double %i.aw, %i.h
  br i1 %i.az, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.bb = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bc = fmul double %i.bb, 1.010000e+00
  %i.bd = fcmp ogt double %2, %i.bc               ; 2 uses
  %i.be = fcmp ogt double %i.bb, %i.i
  %not.90 = xor i1 %i.bd, true
  %spec.select89 = select i1 %not.90, i1 %i.be, i1 false
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bf = phi i1 [ %not., %bb.k ], [ %i.bd, %bb.n ], [ false, %bb.m ], [ true, %bb.l ]
  %i.bg = phi i1 [ %i.au, %bb.k ], [ %spec.select89, %bb.n ], [ true, %bb.m ], [ false, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call i32 @compare_pathkeys(ptr noundef %4, ptr noundef %i.bi) #9 ; 3 uses
  %i.bk = icmp eq i32 %i.bj, 3
  br i1 %i.bk, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp ne i32 %i.bj, 1
  %or.cond = and i1 %i.bf, %i.bl                  ; 2 uses
  %i.bm = icmp ne i32 %i.bj, 2
  %or.cond3 = and i1 %i.bg, %i.bm
  %or.cond109 = select i1 %or.cond, i1 true, i1 %or.cond3
  br i1 %or.cond109, label %.critedge.thread66.loopexit92, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = load i32, ptr %i.f, align 4
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %.lr.ph79, label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.j, %.lr.ph.split.us.split, %.lr.ph.split.split, %bb.a
  %i.bq = tail call zeroext i1 @add_path_precheck(ptr noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr noundef null)
  br label %.critedge.thread66

.critedge.thread66.loopexit:                      ; preds = %bb.i
  %.3.ph = xor i1 %or.cond.us, true
  br label %.critedge.thread66

.critedge.thread66.loopexit92:                    ; preds = %bb.p
  %.3.ph93 = xor i1 %or.cond, true
  br label %.critedge.thread66

.critedge.thread66:                               ; preds = %.critedge.thread66.loopexit92, %.critedge.thread66.loopexit, %.critedge
  %.3 = phi i1 [ %i.bq, %.critedge ], [ %.3.ph, %.critedge.thread66.loopexit ], [ %.3.ph93, %.critedge.thread66.loopexit92 ]
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @create_seqscan_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef ptr @palloc0(i64 noundef 80) #9 ; 11 uses
  store i32 296, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 357, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_1
