Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui27TableSetColumnSortDirectionEi18ImGuiSortDirectionb:bb.a

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03740 = phi i16 [ %i.cz, %vec.epilog.scalar.ph ], [ %.03740.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 98
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !339
  %i.cz = tail call noundef i16 @llvm.smax.i16(i16 %.03740, i16 %i.cy) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !650

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.a
  %i.da = phi i16 [ 0, %bb.a ], [ 1, %.preheader ], [ %i.cv, %._crit_edge.loopexit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !271
  %i.dd = sext i32 %0 to i64
  %i.de = getelementptr inbounds [120 x i8], ptr %i.dc, i64 %i.dd ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 115 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 1
  %i.dh = and i8 %1, 3                            ; 2 uses
  %i.di = zext nneg i8 %i.dh to i16
  %i.dj = shl nuw nsw i16 %i.di, 8
  %i.dk = and i16 %i.dg, -769
  %i.dl = or disjoint i16 %i.dk, %i.dj
  store i16 %i.dl, ptr %i.df, align 1
  %i.dm = icmp eq i8 %i.dh, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 98 ; 2 uses
  br i1 %i.dm, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !339
  %i.dp = icmp ne i16 %i.do, -1
  %or.cond = and i1 %spec.select, %i.dp
  br i1 %or.cond, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %._crit_edge
  %.sink = phi i16 [ -1, %._crit_edge ], [ %i.da, %bb.b ]
  store i16 %.sink, ptr %i.dn, align 2, !tbaa !339
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !221 ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.c
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 573 ; 2 uses
  br i1 %spec.select, label %.lr.ph44.split.us, label %.lr.ph44.split

.lr.ph44.split.us:                                ; preds = %.lr.ph44, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us
  %i.du = phi i32 [ %i.ep, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us ], [ %i.dr, %.lr.ph44 ] ; 2 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.dv = load ptr, ptr %i.db, align 8, !tbaa !271
  %i.dw = getelementptr inbounds nuw [120 x i8], ptr %i.dv, i64 %indvars.iv50 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 98
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !339
  %i.dz = icmp eq i16 %i.dy, -1
  br i1 %i.dz, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph44.split.us
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 115 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 1            ; 3 uses
  %i.ec = lshr i16 %i.eb, 12
  %i.ed = zext nneg i16 %i.ec to i32
  %i.ee = lshr i16 %i.eb, 8
  %i.ef = and i16 %i.ee, 3
  %i.eg = zext nneg i16 %i.ef to i32
  %i.eh = shl nuw nsw i32 1, %i.eg
  %i.ei = and i32 %i.eh, %i.ed
  %.not.i.us = icmp eq i32 %i.ei, 0
  br i1 %.not.i.us, label %bb.e, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ej = getelementptr i8, ptr %i.dw, i64 117
  %.val.i.us = load i8, ptr %i.ej, align 1, !tbaa !418
  %i.ek = and i8 %.val.i.us, 3
  %i.el = zext nneg i8 %i.ek to i16
  %i.em = shl nuw nsw i16 %i.el, 8
  %i.en = and i16 %i.eb, -769
  %i.eo = or disjoint i16 %i.em, %i.en
  store i16 %i.eo, ptr %i.ea, align 1
  store i8 1, ptr %i.dt, align 1, !tbaa !288
  %.pre54 = load i32, ptr %i.dq, align 4, !tbaa !221
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us: ; preds = %bb.e, %bb.d, %.lr.ph44.split.us
  %i.ep = phi i32 [ %.pre54, %bb.e ], [ %i.du, %bb.d ], [ %i.du, %.lr.ph44.split.us ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next51, %i.eq
  br i1 %i.er, label %.lr.ph44.split.us, label %._crit_edge45, !llvm.loop !651

._crit_edge45:                                    ; preds = %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us, %bb.c
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 578
  store i8 1, ptr %i.es, align 2, !tbaa !284
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 573
  store i8 1, ptr %i.et, align 1, !tbaa !288
  ret void

.lr.ph44.split:                                   ; preds = %.lr.ph44, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit
  %i.eu = phi i32 [ %i.fo, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ %i.dr, %.lr.ph44 ] ; 3 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.ev = load ptr, ptr %i.db, align 8, !tbaa !271
  %i.ew = getelementptr inbounds nuw [120 x i8], ptr %i.ev, i64 %indvars.iv47 ; 4 uses
  %i.ex = icmp eq ptr %i.ew, %i.de
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ew, i64 98 ; 2 uses
  br i1 %i.ex, label %bb.f, label %.thread

.thread:                                          ; preds = %.lr.ph44.split
  store i16 -1, ptr %.phi.trans.insert, align 2, !tbaa !339
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.f:                                             ; preds = %.lr.ph44.split
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !339
  %i.ey = icmp eq i16 %.pre, -1
  br i1 %i.ey, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 115 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 1            ; 3 uses
  %i.fb = lshr i16 %i.fa, 12
  %i.fc = zext nneg i16 %i.fb to i32
  %i.fd = lshr i16 %i.fa, 8
  %i.fe = and i16 %i.fd, 3
  %i.ff = zext nneg i16 %i.fe to i32
  %i.fg = shl nuw nsw i32 1, %i.ff
  %i.fh = and i32 %i.fg, %i.fc
  %.not.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i, label %bb.h, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.h:                                             ; preds = %bb.g
  %i.fi = getelementptr i8, ptr %i.ew, i64 117
  %.val.i = load i8, ptr %i.fi, align 1, !tbaa !418
  %i.fj = and i8 %.val.i, 3
  %i.fk = zext nneg i8 %i.fj to i16
  %i.fl = shl nuw nsw i16 %i.fk, 8
  %i.fm = and i16 %i.fa, -769
  %i.fn = or disjoint i16 %i.fl, %i.fm
  store i16 %i.fn, ptr %i.ez, align 1
  store i8 1, ptr %i.dt, align 1, !tbaa !288
  %.pre53 = load i32, ptr %i.dq, align 4, !tbaa !221
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit: ; preds = %.thread, %bb.f, %bb.g, %bb.h
  %i.fo = phi i32 [ %i.eu, %bb.f ], [ %i.eu, %bb.g ], [ %.pre53, %bb.h ], [ %i.eu, %.thread ] ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next48, %i.fp
  br i1 %i.fq, label %.lr.ph44.split, label %._crit_edge45, !llvm.loop !651
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui22TableSortSpecsSanitizeEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !221  ; 7 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread87

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !271
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.f = add i64 %.173, 1
  %i.g = zext nneg i32 %.175 to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = icmp ne i64 %i.h, %i.f
  %i.j = icmp samesign ugt i32 %.175, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.072101 = phi i64 [ 0, %.lr.ph ], [ %.173, %bb.d ]
  %.074100 = phi i32 [ 0, %.lr.ph ], [ %.175, %bb.d ]
  %i.k = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 98 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !339  ; 2 uses
  %.not81 = icmp eq i16 %i.m, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 106
  %i.o = load i8, ptr %i.n, align 2, !range !175
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond84 = select i1 %.not81, i1 true, i1 %i.p
  br i1 %or.cond84, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 -1, ptr %i.l, align 2, !tbaa !339
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i16 [ -1, %bb.c ], [ %i.m, %bb.b ]   ; 2 uses
  %i.r = icmp ne i16 %i.q, -1                     ; 2 uses
  %i.s = sext i16 %i.q to i64
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  %i.v = zext i1 %i.r to i32
  %.175 = add nuw nsw i32 %.074100, %i.v          ; 6 uses
  %i.w = select i1 %i.r, i64 %i.u, i64 0
  %.173 = or i64 %i.w, %.072101                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !653

bb.e:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !217
  %i.z = and i32 %i.y, 67108864
  %.not = icmp eq i32 %i.z, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.aa = phi i1 [ false, %._crit_edge ], [ %.not, %bb.e ] ; 2 uses
  %or.cond = select i1 %i.i, i1 true, i1 %i.aa
  %i.ab = icmp ne i32 %.175, 0                    ; 2 uses
  %or.cond129 = and i1 %or.cond, %i.ab
  br i1 %or.cond129, label %.preheader95.lr.ph, label %.loopexit

.preheader95.lr.ph:                               ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !271 ; 15 uses
  %wide.trip.count147 = zext nneg i32 %i.b to i64
  br i1 %i.aa, label %.preheader95.us.us.preheader, label %.preheader95.us

.preheader95.us.us.preheader:                     ; preds = %.preheader95.lr.ph
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i32 %i.b, 1
  br i1 %i.ae, label %.preheader95.us.us.epil.preheader, label %.preheader95.us.us.preheader.new

.preheader95.us.us.preheader.new:                 ; preds = %.preheader95.us.us.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.preheader95.us.us

.preheader95.us.us:                               ; preds = %bb.m, %.preheader95.us.us.preheader.new
  %indvars.iv144 = phi i64 [ 0, %.preheader95.us.us.preheader.new ], [ %indvars.iv.next145.1, %bb.m ] ; 4 uses
  %.066105.us.us = phi i32 [ -1, %.preheader95.us.us.preheader.new ], [ %.1.us.us.1, %bb.m ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader95.us.us.preheader.new ], [ %niter.next.1, %bb.m ]
  %i.af = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv144
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 98
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !339 ; 2 uses
  %.not80.us.us = icmp eq i16 %i.ah, -1
  br i1 %.not80.us.us, label %.preheader95.us.us.1, label %bb.g

bb.g:                                             ; preds = %.preheader95.us.us
  %i.ai = icmp eq i32 %.066105.us.us, -1
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = sext i32 %.066105.us.us to i64
  %i.ak = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 98
  %i.am = load i16, ptr %i.al, align 2, !tbaa !339
  %i.an = icmp slt i16 %i.ah, %i.am
  br i1 %i.an, label %bb.i, label %.preheader95.us.us.1

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = trunc nuw nsw i64 %indvars.iv144 to i32
  br label %.preheader95.us.us.1

.preheader95.us.us.1:                             ; preds = %bb.i, %bb.h, %.preheader95.us.us
  %.1.us.us = phi i32 [ %i.ao, %bb.i ], [ %.066105.us.us, %bb.h ], [ %.066105.us.us, %.preheader95.us.us ] ; 4 uses
  %indvars.iv.next145 = or disjoint i64 %indvars.iv144, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv.next145
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 98
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !339 ; 2 uses
  %.not80.us.us.1 = icmp eq i16 %i.ar, -1
  br i1 %.not80.us.us.1, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.preheader95.us.us.1
  %i.as = icmp eq i32 %.1.us.us, -1
  br i1 %i.as, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = sext i32 %.1.us.us to i64
  %i.au = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 98
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !339
  %i.ax = icmp slt i16 %i.ar, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ay = trunc nuw nsw i64 %indvars.iv.next145 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.preheader95.us.us.1
  %.1.us.us.1 = phi i32 [ %i.ay, %bb.l ], [ %.1.us.us, %bb.k ], [ %.1.us.us, %.preheader95.us.us.1 ] ; 3 uses
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %.preheader95.us.us, !llvm.loop !654

.preheader95.us:                                  ; preds = %.preheader95.lr.ph, %._crit_edge108.us
  %.067111.us = phi i32 [ %i.bt, %._crit_edge108.us ], [ 0, %.preheader95.lr.ph ] ; 2 uses
  %.068110.us = phi i64 [ %i.bo, %._crit_edge108.us ], [ 0, %.preheader95.lr.ph ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader95.us, %bb.s
  %indvars.iv133 = phi i64 [ 0, %.preheader95.us ], [ %indvars.iv.next134, %bb.s ] ; 4 uses
  %.066105.us = phi i32 [ -1, %.preheader95.us ], [ %.1.us, %bb.s ] ; 5 uses
  %i.az = shl nuw i64 1, %indvars.iv133
  %i.ba = and i64 %i.az, %.068110.us
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv133
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 98
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !339 ; 2 uses
  %.not80.us = icmp eq i16 %i.be, -1
  br i1 %.not80.us, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp eq i32 %.066105.us, -1
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = sext i32 %.066105.us to i64
  %i.bh = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 98
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !339
  %i.bk = icmp slt i16 %i.be, %i.bj
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = trunc nuw nsw i64 %indvars.iv133 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %.1.us = phi i32 [ %i.bl, %bb.r ], [ %.066105.us, %bb.q ], [ %.066105.us, %bb.o ], [ %.066105.us, %bb.n ] ; 3 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count147
  br i1 %exitcond137.not, label %._crit_edge108.us, label %bb.n, !llvm.loop !654

._crit_edge108.us:                                ; preds = %bb.s
  %i.bm = zext nneg i32 %.1.us to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = or i64 %i.bn, %.068110.us
  %i.bp = trunc i32 %.067111.us to i16
  %i.bq = sext i32 %.1.us to i64
  %i.br = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 98
  store i16 %i.bp, ptr %i.bs, align 2, !tbaa !339
  %i.bt = add nuw nsw i32 %.067111.us, 1          ; 2 uses
  %exitcond138.not = icmp eq i32 %i.bt, %.175
  br i1 %exitcond138.not, label %.loopexit, label %.preheader95.us, !llvm.loop !655

.preheader.unr-lcssa:                             ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.preheader95.us.us.epil.preheader

.preheader95.us.us.epil.preheader:                ; preds = %.preheader.unr-lcssa, %.preheader95.us.us.preheader
  %indvars.iv144.epil.init = phi i64 [ 0, %.preheader95.us.us.preheader ], [ %indvars.iv.next145.1, %.preheader.unr-lcssa ] ; 2 uses
  %.066105.us.us.epil.init = phi i32 [ -1, %.preheader95.us.us.preheader ], [ %.1.us.us.1, %.preheader.unr-lcssa ] ; 4 uses
  %lcmp.mod182 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.bu = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv144.epil.init
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 98
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !339 ; 2 uses
  %.not80.us.us.epil = icmp eq i16 %i.bw, -1
  br i1 %.not80.us.us.epil, label %.preheader, label %bb.t

bb.t:                                             ; preds = %.preheader95.us.us.epil.preheader
  %i.bx = icmp eq i32 %.066105.us.us.epil.init, -1
  br i1 %i.bx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = sext i32 %.066105.us.us.epil.init to i64
  %i.bz = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 98
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !339
  %i.cc = icmp slt i16 %i.bw, %i.cb
  br i1 %i.cc, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cd = trunc nuw nsw i64 %indvars.iv144.epil.init to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader95.us.us.epil.preheader, %bb.u, %bb.v, %.preheader.unr-lcssa
  %.1.us.us.lcssa = phi i32 [ %.1.us.us.1, %.preheader.unr-lcssa ], [ %i.cd, %bb.v ], [ %.066105.us.us.epil.init, %bb.u ], [ %.066105.us.us.epil.init, %.preheader95.us.us.epil.preheader ] ; 2 uses
  %i.ce = sext i32 %.1.us.us.lcssa to i64
  %i.cf = getelementptr inbounds [120 x i8], ptr %i.ad, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 98
  store i16 0, ptr %i.cg, align 2, !tbaa !339
  %i.ch = zext i32 %.1.us.us.lcssa to i64         ; 5 uses
  %xtraiter183 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ci = icmp ult i32 %i.b, 4
  br i1 %i.ci, label %.lr.ph128.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter186 = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.aa, %.preheader.new
  %indvars.iv149 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next150.3, %bb.aa ] ; 6 uses
  %niter187 = phi i64 [ 0, %.preheader.new ], [ %niter187.next.3, %bb.aa ]
  %.not79 = icmp eq i64 %indvars.iv149, %i.ch
  br i1 %.not79, label %.lr.ph128.1, label %bb.w

bb.w:                                             ; preds = %.lr.ph128
  %i.cj = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv149
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 98
  store i16 -1, ptr %i.ck, align 2, !tbaa !339
  br label %.lr.ph128.1

.lr.ph128.1:                                      ; preds = %.lr.ph128, %bb.w
  %indvars.iv.next150 = or disjoint i64 %indvars.iv149, 1 ; 2 uses
  %.not79.1 = icmp eq i64 %indvars.iv.next150, %i.ch
  br i1 %.not79.1, label %.lr.ph128.2, label %bb.x

bb.x:                                             ; preds = %.lr.ph128.1
  %i.cl = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv.next150
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 98
  store i16 -1, ptr %i.cm, align 2, !tbaa !339
  br label %.lr.ph128.2

.lr.ph128.2:                                      ; preds = %bb.x, %.lr.ph128.1
  %indvars.iv.next150.1 = or disjoint i64 %indvars.iv149, 2 ; 2 uses
  %.not79.2 = icmp eq i64 %indvars.iv.next150.1, %i.ch
  br i1 %.not79.2, label %.lr.ph128.3, label %bb.y

bb.y:                                             ; preds = %.lr.ph128.2
  %i.cn = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv.next150.1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 98
  store i16 -1, ptr %i.co, align 2, !tbaa !339
  br label %.lr.ph128.3

.lr.ph128.3:                                      ; preds = %bb.y, %.lr.ph128.2
  %indvars.iv.next150.2 = or disjoint i64 %indvars.iv149, 3 ; 2 uses
  %.not79.3 = icmp eq i64 %indvars.iv.next150.2, %i.ch
  br i1 %.not79.3, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph128.3
  %i.cp = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv.next150.2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 98
  store i16 -1, ptr %i.cq, align 2, !tbaa !339
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph128.3
  %indvars.iv.next150.3 = add nuw nsw i64 %indvars.iv149, 4 ; 2 uses
  %niter187.next.3 = add i64 %niter187, 4         ; 2 uses
  %niter187.ncmp.3 = icmp eq i64 %niter187.next.3, %unroll_iter186
  br i1 %niter187.ncmp.3, label %.thread87.loopexit.unr-lcssa, label %.lr.ph128, !llvm.loop !656

.loopexit:                                        ; preds = %._crit_edge108.us, %bb.f
  br i1 %i.ab, label %.thread87, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !217
  %i.ct = and i32 %i.cs, 134217728
  %.not77.not = icmp eq i32 %i.ct, 0
  br i1 %.not77.not, label %.lr.ph126, label %.thread87

.lr.ph126:                                        ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !271
  %wide.trip.count142 = zext nneg i32 %i.b to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph126, %bb.af
  %indvars.iv139 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next140, %bb.af ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [120 x i8], ptr %i.cv, i64 %indvars.iv139 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 106
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !309, !range !175, !noundef !176
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.da = load i32, ptr %i.cw, align 4, !tbaa !328
  %i.db = and i32 %i.da, 512
  %.not78 = icmp eq i32 %i.db, 0
  br i1 %.not78, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 98
  store i16 0, ptr %i.dc, align 2, !tbaa !339
  %i.dd = getelementptr i8, ptr %i.cw, i64 117
  %.val = load i8, ptr %i.dd, align 1, !tbaa !418
  %i.de = and i8 %.val, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 115 ; 2 uses
  %i.dg = zext nneg i8 %i.de to i16
  %i.dh = load i16, ptr %i.df, align 1
  %i.di = shl nuw nsw i16 %i.dg, 8
  %i.dj = and i16 %i.dh, -769
  %i.dk = or disjoint i16 %i.di, %i.dj
  store i16 %i.dk, ptr %i.df, align 1
  br label %.thread87

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %.thread87, label %bb.ac, !llvm.loop !657

.thread87.loopexit.unr-lcssa:                     ; preds = %bb.aa
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.thread87, label %.lr.ph128.epil.preheader

.lr.ph128.epil.preheader:                         ; preds = %.thread87.loopexit.unr-lcssa, %.preheader
  %indvars.iv149.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next150.3, %.thread87.loopexit.unr-lcssa ]
  %lcmp.mod185 = icmp ne i64 %xtraiter183, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %.lr.ph128.epil

.lr.ph128.epil:                                   ; preds = %bb.ah, %.lr.ph128.epil.preheader
  %indvars.iv149.epil = phi i64 [ %indvars.iv149.epil.init, %.lr.ph128.epil.preheader ], [ %indvars.iv.next150.epil, %bb.ah ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph128.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %.not79.epil = icmp eq i64 %indvars.iv149.epil, %i.ch
  br i1 %.not79.epil, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph128.epil
  %i.dl = getelementptr inbounds nuw [120 x i8], ptr %i.ad, i64 %indvars.iv149.epil
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 98
  store i16 -1, ptr %i.dm, align 2, !tbaa !339
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph128.epil
  %indvars.iv.next150.epil = add nuw nsw i64 %indvars.iv149.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter183
  br i1 %epil.iter.cmp.not, label %.thread87, label %.lr.ph128.epil, !llvm.loop !658

.thread87:                                        ; preds = %bb.af, %.thread87.loopexit.unr-lcssa, %bb.ah, %bb.ab, %bb.a, %bb.ae, %.loopexit
  %.9 = phi i32 [ 0, %bb.ab ], [ %.175, %.loopexit ], [ 1, %bb.ae ], [ 1, %.thread87.loopexit.unr-lcssa ], [ 0, %bb.a ], [ 1, %bb.ah ], [ 0, %bb.af ]
  %i.dn = trunc i32 %.9 to i16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i16 %i.dn, ptr %i.do, align 8, !tbaa !353
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN5ImGui23TableGetHeaderRowHeightEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.e = load float, ptr %i.d, align 8, !tbaa !340 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !221  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.014.lcssa = phi float [ %i.e, %bb.a ], [ %.1, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %i.o = load float, ptr %i.n, align 8, !tbaa !391
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 2.000000e+00, float %.014.lcssa)
  ret float %i.p

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.q = phi i32 [ %i.g, %.lr.ph ], [ %i.as, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.01415 = phi float [ %i.e, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !280
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = lshr i64 %indvars.iv, 5
  %i.u = and i64 %i.t, 134217727
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !299
  %i.x = and i32 %i.s, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.w, %i.y
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !328
  %i.ad = and i32 %i.ac, 4096
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.af = load i8, ptr %i.k, align 1, !tbaa !222, !range !175, !noundef !176
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i16, ptr %i.l, align 2, !tbaa !257
  %i.ai = sext i16 %i.ah to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.ai
  br i1 %.not.i, label %bb.f, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !345 ; 2 uses
  %i.al = icmp eq i16 %i.ak, -1
  br i1 %i.al, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !319
  %i.an = sext i16 %i.ak to i64
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.1.i = phi ptr [ @.str.11, %bb.e ], [ %i.ao, %bb.g ], [ @.str.11, %bb.f ]
  %i.ap = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.1.i, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.aq = fcmp oge float %.01415, %.sroa.0.4.vec.extract
  %i.ar = select i1 %i.aq, float %.01415, float %.sroa.0.4.vec.extract
  %.pre = load i32, ptr %i.f, align 4, !tbaa !221
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, %bb.c
  %i.as = phi i32 [ %.pre, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %i.q, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.1 = phi float [ %i.ar, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %.01415, %bb.c ], [ %.01415, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !7
}

declare <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef, ptr noundef, i1 noundef zeroext, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef float @_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !221  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.013.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3320
  %i.m = load float, ptr %i.l, align 8, !tbaa !391
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 2.000000e+00, float %.013.lcssa)
  ret float %i.n

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.o = phi i32 [ %i.e, %.lr.ph ], [ %i.ap, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.01315 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !280
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = lshr i64 %indvars.iv, 5
  %i.s = and i64 %i.r, 134217727
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !299
  %i.v = and i32 %i.q, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.u, %i.w
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !271
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !328
  %i.ab = and i32 %i.aa, 262144
  %.not14 = icmp eq i32 %i.ab, 0
  br i1 %.not14, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i8, ptr %i.i, align 1, !tbaa !222, !range !175, !noundef !176
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load i16, ptr %i.j, align 2, !tbaa !257
  %i.af = sext i16 %i.ae to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.af
  br i1 %.not.i, label %bb.f, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !345 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, -1
  br i1 %i.ai, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !319
  %i.ak = sext i16 %i.ah to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.1.i = phi ptr [ @.str.11, %bb.e ], [ %i.al, %bb.g ], [ @.str.11, %bb.f ]
  %i.am = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.1.i, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.an = fcmp oge float %.01315, %.sroa.0.0.vec.extract
  %i.ao = select i1 %i.an, float %.01315, float %.sroa.0.0.vec.extract
  %.pre = load i32, ptr %i.d, align 4, !tbaa !221
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, %bb.c
  %i.ap = phi i32 [ %.pre, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %i.o, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.1 = phi float [ %i.ao, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %.01315, %bb.c ], [ %.01315, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15TableHeadersRowEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@_ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler:bb.a
.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, 4294967294
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !302  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not910.epil = icmp eq ptr %i.l, null
  %.not9.epil = select i1 %i.k, i1 true, i1 %.not910.epil
  br i1 %.not9.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [592 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  store i32 -1, ptr %i.o, align 4, !tbaa !287
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10128 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !319  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN13ImChunkStreamI18ImGuiTableSettingsE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10120
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 10124
  store i32 0, ptr %i.s, align 4, !tbaa !318
  store i32 0, ptr %i.r, align 8, !tbaa !320
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.q)
  store ptr null, ptr %i.p, align 8, !tbaa !319
  br label %_ZN13ImChunkStreamI18ImGuiTableSettingsE5clearEv.exit

_ZN13ImChunkStreamI18ImGuiTableSettingsE5clearEv.exit: ; preds = %._crit_edge, %bb.c
  ret void

bb.d:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !302  ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  %i.x = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not910 = icmp eq ptr %i.x, null
  %.not9 = select i1 %i.w, i1 true, i1 %.not910
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [592 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 100
  store i32 -1, ptr %i.aa, align 4, !tbaa !287
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !302 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  %i.af = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not910.1 = icmp eq ptr %i.af, null
  %.not9.1 = select i1 %i.ae, i1 true, i1 %.not910.1
  br i1 %.not9.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [592 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 100
  store i32 -1, ptr %i.ai, align 4, !tbaa !287
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !691
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL28TableSettingsHandler_CleanupP12ImGuiContextP20ImGuiSettingsHandlerP24ImGuiSettingsCleanupArgs(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9032
  %i.b = load i32, ptr %i.a, align 8, !tbaa !475  ; 4 uses
  %.not3040 = icmp eq i32 %i.b, 0
  br i1 %.not3040, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9040
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !476  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9024 ; 3 uses
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %i.g = icmp eq i32 %i.b, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.f, 4294967294
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod53 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !302  ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not3339.epil = icmp eq ptr %i.l, null
  %.not33.epil = select i1 %i.k, i1 true, i1 %.not3339.epil
  br i1 %.not33.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [592 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 100
  store i32 -1, ptr %i.o, align 4, !tbaa !287
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !310  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %select.unfold._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10064
  br label %bb.h

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !302 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  %i.ac = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not3339 = icmp eq ptr %i.ac, null
  %.not33 = select i1 %i.ab, i1 true, i1 %.not3339
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [592 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 100
  store i32 -1, ptr %i.af, align 4, !tbaa !287
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !302 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, -1
  %i.ak = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not3339.1 = icmp eq ptr %i.ak, null
  %.not33.1 = select i1 %i.aj, i1 true, i1 %.not3339.1
  br i1 %.not33.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [592 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 100
  store i32 -1, ptr %i.an, align 4, !tbaa !287
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !692

select.unfold._crit_edge:                         ; preds = %select.unfold, %._crit_edge
  ret void

bb.h:                                             ; preds = %.lr.ph44, %select.unfold
  %i.ao = phi ptr [ %i.r, %.lr.ph44 ], [ %i.bk, %select.unfold ] ; 3 uses
  %.042 = phi ptr [ %i.s, %.lr.ph44 ], [ %i.bo, %select.unfold ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.042, i64 16 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2            ; 5 uses
  %i.ar = and i16 %i.aq, 127                      ; 2 uses
  %.not.i35 = icmp ne i16 %i.ar, 0                ; 2 uses
  %i.as = and i16 %i.aq, 1920
  %.not1.i = icmp ne i16 %i.as, 0
  %3 = icmp ugt i16 %i.aq, 2047
  %4 = and i1 %.not1.i, %3
  %spec.select.i = and i1 %4, %.not.i35           ; 2 uses
  %i.at = load i32, ptr %i.t, align 4, !tbaa !694 ; 2 uses
  %.not32 = icmp eq i32 %i.at, 0
  br i1 %.not32, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i35, label %bb.j, label %_ZNK15ImGuiPackedDate6UnpackEv.exit

bb.j:                                             ; preds = %bb.i
  %i.au = lshr i16 %i.aq, 7
  %i.av = and i16 %i.au, 15                       ; 2 uses
  %.not3.i = icmp eq i16 %i.av, 0
  br i1 %.not3.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = lshr i16 %i.aq, 11                      ; 2 uses
  %.not4.i = icmp eq i16 %i.aw, 0
  br i1 %.not4.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %narrow.i = add nuw nsw i16 %i.ar, 2000
  %i.ax = zext nneg i16 %narrow.i to i32
  %i.ay = mul nuw nsw i32 %i.ax, 10000
  %narrow5.i = mul nuw nsw i16 %i.av, 100
  %narrow6.i = add nuw nsw i16 %narrow5.i, %i.aw
  %i.az = zext nneg i16 %narrow6.i to i32
  %i.ba = add nuw nsw i32 %i.ay, %i.az
  br label %_ZNK15ImGuiPackedDate6UnpackEv.exit

_ZNK15ImGuiPackedDate6UnpackEv.exit:              ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.bb = phi i32 [ %i.ba, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  %i.bc = icmp slt i32 %i.bb, %i.at
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit
  store i32 0, ptr %.042, align 4, !tbaa !312
  br label %select.unfold

bb.n:                                             ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit, %bb.h
  %i.bd = load i8, ptr %i.u, align 4, !tbaa !695, !range !175, !noundef !176
  %i.be = trunc nuw i8 %i.bd to i1
  %.not = xor i1 %i.be, true
  %or.cond = or i1 %spec.select.i, %.not
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %.042, align 4, !tbaa !312
  br label %select.unfold

bb.p:                                             ; preds = %bb.n
  %i.bf = load i8, ptr %i.v, align 2, !tbaa !696, !range !175, !noundef !176
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = load i8, ptr %i.w, align 1, !tbaa !697, !range !175, !noundef !176
  %i.bi = trunc nuw i8 %i.bh to i1
  %.not2 = xor i1 %i.bi, true
  %or.cond4 = or i1 %spec.select.i, %.not2
  br i1 %or.cond4, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = load i16, ptr %i.x, align 8, !tbaa !302
  store i16 %i.bj, ptr %i.ap, align 4, !tbaa !302
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !310
  br label %select.unfold

select.unfold:                                    ; preds = %bb.o, %bb.r, %bb.q, %bb.m
  %i.bk = phi ptr [ %i.ao, %bb.o ], [ %.pre, %bb.r ], [ %i.ao, %bb.q ], [ %i.ao, %bb.m ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.042, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !299
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.042, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.p, align 8, !tbaa !313
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.bk, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = icmp eq ptr %i.bo, %i.bs
  br i1 %i.bt, label %select.unfold._crit_edge, label %bb.h
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4, !tbaa !299
  %i.c = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %2, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %i.d = icmp slt i32 %i.c, 2
  %i.e = load i32, ptr %i.b, align 4              ; 2 uses
  %i.f = add i32 %i.e, -512
  %i.g = icmp ult i32 %i.f, -511
  %or.cond3 = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !299
  %i.i = call noundef ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %i.h, i32 noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 19 uses
  %i.d = alloca i32, align 4                      ; 16 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 0, ptr %i.c, align 4, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !299
  %i.f = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.a) #4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load float, ptr %i.a, align 4, !tbaa !177
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.h, ptr %i.i, align 4, !tbaa !316
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.j = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.d) #4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.d, align 4, !tbaa !299  ; 3 uses
  %i.m = sdiv i32 %i.l, 10000
  %i.n = trunc i32 %i.m to i16
  %i.o = add i16 %i.n, 48
  %i.p = and i16 %i.o, 127
  %i.q = sdiv i32 %i.l, 100
  %i.r = srem i32 %i.q, 100
  %i.s = trunc nsw i32 %i.r to i16
  %i.t = shl nsw i16 %i.s, 7
  %i.u = srem i32 %i.l, 100
  %i.v = trunc nsw i32 %i.u to i16
  %i.w = shl i16 %i.v, 11
  %.masked.i = and i16 %i.t, 1920
  %i.x = or disjoint i16 %i.p, %.masked.i
  %i.y = or disjoint i16 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 %i.y, ptr %i.z, align 4, !tbaa !302
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.aa = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !299 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !314
  %i.ag = sext i16 %i.af to i32
  %.not = icmp slt i32 %i.ac, %i.ag
  br i1 %.not, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !299
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %i.ak = call noundef ptr @_Z14ImStrSkipBlankPKc(ptr noundef %i.aj) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i8 0, ptr %i.e, align 1, !tbaa !302
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.am = load i32, ptr %i.b, align 4, !tbaa !299 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.an ; 10 uses
  %i.ap = trunc i32 %i.am to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i16 %i.ap, ptr %i.aq, align 4, !tbaa !462
  %i.ar = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.ak, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #4
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.c, align 4, !tbaa !299
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ak, i64 %i.au
  %i.aw = call noundef ptr @_Z14ImStrSkipBlankPKc(ptr noundef %i.av)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.aw, %bb.i ], [ %i.ak, %bb.h ] ; 3 uses
  %i.ax = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %.0, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #4
  %i.ay = icmp eq i32 %i.ax, 1
end_hunk_1
