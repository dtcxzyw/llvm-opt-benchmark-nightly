Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_tables?download=true
inline.NumInlined: 682
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5ImGui27TableSetColumnSortDirectionEi18ImGuiSortDirectionb:bb.a
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec61, %vec.epilog.middle.block ]
  %.03740.ph = phi i16 [ 0, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.cu, %vec.epilog.middle.block ], [ %i.cb, %middle.block ], [ %i.cz, %vec.epilog.scalar.ph ]
  %i.cv = add nuw i16 %.lcssa, 1
  br label %._crit_edge

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03740 = phi i16 [ %i.cz, %vec.epilog.scalar.ph ], [ %.03740.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [116 x i8], ptr %i.k, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 94
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !316
  %i.cz = tail call noundef i16 @llvm.smax.i16(i16 %.03740, i16 %i.cy) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !609

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.a
  %i.da = phi i16 [ 0, %bb.a ], [ 1, %.preheader ], [ %i.cv, %._crit_edge.loopexit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !262
  %i.dd = sext i32 %0 to i64
  %i.de = getelementptr inbounds [116 x i8], ptr %i.dc, i64 %i.dd ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 113 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = and i8 %1, 3                            ; 2 uses
  %i.di = and i8 %i.dg, -4
  %i.dj = or disjoint i8 %i.di, %i.dh
  store i8 %i.dj, ptr %i.df, align 1
  %i.dk = icmp eq i8 %i.dh, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 94 ; 2 uses
  br i1 %i.dk, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !316
  %i.dn = icmp ne i16 %i.dm, -1
  %or.cond = and i1 %spec.select, %i.dn
  br i1 %or.cond, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %._crit_edge
  %.sink = phi i16 [ -1, %._crit_edge ], [ %i.da, %bb.b ]
  store i16 %.sink, ptr %i.dl, align 2, !tbaa !316
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !214 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.c
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 570 ; 2 uses
  br i1 %spec.select, label %.lr.ph44.split.us, label %.lr.ph44.split

.lr.ph44.split.us:                                ; preds = %.lr.ph44, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us
  %i.ds = phi i32 [ %i.ek, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us ], [ %i.dp, %.lr.ph44 ] ; 2 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.dt = load ptr, ptr %i.db, align 8, !tbaa !262
  %i.du = getelementptr inbounds nuw [116 x i8], ptr %i.dt, i64 %indvars.iv50 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 94
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !316
  %i.dx = icmp eq i16 %i.dw, -1
  br i1 %i.dx, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph44.split.us
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 113 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1             ; 3 uses
  %i.ea = lshr i8 %i.dz, 4
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = and i8 %i.dz, 3
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 1, %i.ed
  %i.ef = and i32 %i.ee, %i.eb
  %.not.i.us = icmp eq i32 %i.ef, 0
  br i1 %.not.i.us, label %bb.e, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us

bb.e:                                             ; preds = %bb.d
  %i.eg = getelementptr i8, ptr %i.du, i64 114
  %.val.i.us = load i8, ptr %i.eg, align 2, !tbaa !393
  %i.eh = and i8 %.val.i.us, 3
  %i.ei = and i8 %i.dz, -4
  %i.ej = or disjoint i8 %i.eh, %i.ei
  store i8 %i.ej, ptr %i.dy, align 1
  store i8 1, ptr %i.dr, align 2, !tbaa !276
  %.pre54 = load i32, ptr %i.do, align 4, !tbaa !214
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us: ; preds = %bb.e, %bb.d, %.lr.ph44.split.us
  %i.ek = phi i32 [ %.pre54, %bb.e ], [ %i.ds, %bb.d ], [ %i.ds, %.lr.ph44.split.us ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next51, %i.el
  br i1 %i.em, label %.lr.ph44.split.us, label %._crit_edge45, !llvm.loop !610

._crit_edge45:                                    ; preds = %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us, %bb.c
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 575
  store i8 1, ptr %i.en, align 1, !tbaa !277
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 570
  store i8 1, ptr %i.eo, align 2, !tbaa !276
  ret void

.lr.ph44.split:                                   ; preds = %.lr.ph44, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit
  %i.ep = phi i32 [ %i.fg, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ %i.dp, %.lr.ph44 ] ; 3 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.eq = load ptr, ptr %i.db, align 8, !tbaa !262
  %i.er = getelementptr inbounds nuw [116 x i8], ptr %i.eq, i64 %indvars.iv47 ; 4 uses
  %i.es = icmp eq ptr %i.er, %i.de
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.er, i64 94 ; 2 uses
  br i1 %i.es, label %bb.f, label %.thread

.thread:                                          ; preds = %.lr.ph44.split
  store i16 -1, ptr %.phi.trans.insert, align 2, !tbaa !316
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.f:                                             ; preds = %.lr.ph44.split
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !316
  %i.et = icmp eq i16 %.pre, -1
  br i1 %i.et, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 113 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1             ; 3 uses
  %i.ew = lshr i8 %i.ev, 4
  %i.ex = zext nneg i8 %i.ew to i32
  %i.ey = and i8 %i.ev, 3
  %i.ez = zext nneg i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 1, %i.ez
  %i.fb = and i32 %i.fa, %i.ex
  %.not.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i, label %bb.h, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.h:                                             ; preds = %bb.g
  %i.fc = getelementptr i8, ptr %i.er, i64 114
  %.val.i = load i8, ptr %i.fc, align 2, !tbaa !393
  %i.fd = and i8 %.val.i, 3
  %i.fe = and i8 %i.ev, -4
  %i.ff = or disjoint i8 %i.fd, %i.fe
  store i8 %i.ff, ptr %i.eu, align 1
  store i8 1, ptr %i.dr, align 2, !tbaa !276
  %.pre53 = load i32, ptr %i.do, align 4, !tbaa !214
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit: ; preds = %.thread, %bb.f, %bb.g, %bb.h
  %i.fg = phi i32 [ %i.ep, %bb.f ], [ %i.ep, %bb.g ], [ %.pre53, %bb.h ], [ %i.ep, %.thread ] ; 2 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next48, %i.fh
  br i1 %i.fi, label %.lr.ph44.split, label %._crit_edge45, !llvm.loop !610
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5ImGui22TableSortSpecsSanitizeEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !214  ; 7 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread87

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262
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
  %i.k = getelementptr inbounds nuw [116 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 94 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !316  ; 2 uses
  %.not81 = icmp eq i16 %i.m, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 102
  %i.o = load i8, ptr %i.n, align 2, !range !174
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond84 = select i1 %.not81, i1 true, i1 %i.p
  br i1 %or.cond84, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 -1, ptr %i.l, align 2, !tbaa !316
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i16 [ -1, %bb.c ], [ %i.m, %bb.b ]   ; 2 uses
  %i.r = icmp ne i16 %i.q, -1                     ; 2 uses
  %i.s = sext i16 %i.q to i64
  %i.t = and i64 %i.s, 4294967295
  %i.u = shl nuw i64 1, %i.t
  %i.v = zext i1 %i.r to i32
  %.175 = add nuw nsw i32 %.074100, %i.v          ; 8 uses
  %i.w = select i1 %i.r, i64 %i.u, i64 0
  %.173 = or i64 %i.w, %.072101                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !612

bb.e:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !210
  %i.z = and i32 %i.y, 67108864
  %.not = icmp eq i32 %i.z, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.aa = phi i1 [ false, %._crit_edge ], [ %.not, %bb.e ] ; 2 uses
  %or.cond = select i1 %i.i, i1 true, i1 %i.aa
  %i.ab = icmp ne i32 %.175, 0
  %or.cond129 = and i1 %or.cond, %i.ab
  br i1 %or.cond129, label %.preheader95.lr.ph, label %.loopexit

.preheader95.lr.ph:                               ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !262 ; 15 uses
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
  %i.af = getelementptr inbounds nuw [116 x i8], ptr %i.ad, i64 %indvars.iv144
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 94
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !316 ; 2 uses
  %.not80.us.us = icmp eq i16 %i.ah, -1
  br i1 %.not80.us.us, label %.preheader95.us.us.1, label %bb.g

bb.g:                                             ; preds = %.preheader95.us.us
  %i.ai = icmp eq i32 %.066105.us.us, -1
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = sext i32 %.066105.us.us to i64
  %i.ak = getelementptr inbounds [116 x i8], ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 94
  %i.am = load i16, ptr %i.al, align 2, !tbaa !316
  %i.an = icmp slt i16 %i.ah, %i.am
  br i1 %i.an, label %bb.i, label %.preheader95.us.us.1

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = trunc nuw nsw i64 %indvars.iv144 to i32
  br label %.preheader95.us.us.1

.preheader95.us.us.1:                             ; preds = %bb.i, %bb.h, %.preheader95.us.us
  %.1.us.us = phi i32 [ %i.ao, %bb.i ], [ %.066105.us.us, %bb.h ], [ %.066105.us.us, %.preheader95.us.us ] ; 4 uses
  %indvars.iv.next145 = or disjoint i64 %indvars.iv144, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [116 x i8], ptr %i.ad, i64 %indvars.iv.next145
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 94
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !316 ; 2 uses
  %.not80.us.us.1 = icmp eq i16 %i.ar, -1
  br i1 %.not80.us.us.1, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.preheader95.us.us.1
  %i.as = icmp eq i32 %.1.us.us, -1
  br i1 %i.as, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = sext i32 %.1.us.us to i64
  %i.au = getelementptr inbounds [116 x i8], ptr %i.ad, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 94
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !316
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
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %.preheader95.us.us, !llvm.loop !613

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
  %i.bc = getelementptr inbounds nuw [116 x i8], ptr %i.ad, i64 %indvars.iv133
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 94
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !316 ; 2 uses
  %.not80.us = icmp eq i16 %i.be, -1
  br i1 %.not80.us, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp eq i32 %.066105.us, -1
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = sext i32 %.066105.us to i64
  %i.bh = getelementptr inbounds [116 x i8], ptr %i.ad, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 94
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !316
  %i.bk = icmp slt i16 %i.be, %i.bj
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = trunc nuw nsw i64 %indvars.iv133 to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %.1.us = phi i32 [ %i.bl, %bb.r ], [ %.066105.us, %bb.q ], [ %.066105.us, %bb.o ], [ %.066105.us, %bb.n ] ; 3 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count147
  br i1 %exitcond137.not, label %._crit_edge108.us, label %bb.n, !llvm.loop !613

._crit_edge108.us:                                ; preds = %bb.s
  %i.bm = zext nneg i32 %.1.us to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = or i64 %i.bn, %.068110.us
  %i.bp = trunc i32 %.067111.us to i16
  %i.bq = sext i32 %.1.us to i64
  %i.br = getelementptr inbounds [116 x i8], ptr %i.ad, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 94
  store i16 %i.bp, ptr %i.bs, align 2, !tbaa !316
  %i.bt = add nuw nsw i32 %.067111.us, 1          ; 2 uses
  %exitcond138.not = icmp eq i32 %i.bt, %.175
  br i1 %exitcond138.not, label %.thread87, label %.preheader95.us, !llvm.loop !614

.preheader.unr-lcssa:                             ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.preheader95.us.us.epil.preheader

.preheader95.us.us.epil.preheader:                ; preds = %.preheader.unr-lcssa, %.preheader95.us.us.preheader
  %indvars.iv144.epil.init = phi i64 [ 0, %.preheader95.us.us.preheader ], [ %indvars.iv.next145.1, %.preheader.unr-lcssa ] ; 2 uses
  %.066105.us.us.epil.init = phi i32 [ -1, %.preheader95.us.us.preheader ], [ %.1.us.us.1, %.preheader.unr-lcssa ] ; 4 uses
  %lcmp.mod182 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.bu = getelementptr inbounds nuw [116 x i8], ptr %i.ad, i64 %indvars.iv144.epil.init
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 94
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !316 ; 2 uses
  %.not80.us.us.epil = icmp eq i16 %i.bw, -1
  br i1 %.not80.us.us.epil, label %.preheader, label %bb.t

bb.t:                                             ; preds = %.preheader95.us.us.epil.preheader
  %i.bx = icmp eq i32 %.066105.us.us.epil.init, -1
  br i1 %i.bx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = sext i32 %.066105.us.us.epil.init to i64
  %i.bz = getelementptr inbounds [116 x i8], ptr %i.ad, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 94
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !316
  %i.cc = icmp slt i16 %i.bw, %i.cb
  br i1 %i.cc, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cd = trunc nuw nsw i64 %indvars.iv144.epil.init to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader95.us.us.epil.preheader, %bb.u, %bb.v, %.preheader.unr-lcssa
  %.1.us.us.lcssa = phi i32 [ %.1.us.us.1, %.preheader.unr-lcssa ], [ %i.cd, %bb.v ], [ %.066105.us.us.epil.init, %bb.u ], [ %.066105.us.us.epil.init, %.preheader95.us.us.epil.preheader ] ; 2 uses
  %i.ce = sext i32 %.1.us.us.lcssa to i64
  %i.cf = getelementptr inbounds [116 x i8], ptr %i.ad, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 94
  store i16 0, ptr %i.cg, align 2, !tbaa !316
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
  %i.cj = getelementptr inbounds nuw [116 x i8], ptr %i.ad, i64 %indvars.iv149
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 94
  store i16 -1, ptr %i.ck, align 2, !tbaa !316
  br label %.lr.ph128.1

.lr.ph128.1:                                      ; preds = %.lr.ph128, %bb.w
  %indvars.iv.next150 = or disjoint i64 %indvars.iv149, 1 ; 2 uses
  %.not79.1 = icmp eq i64 %indvars.iv.next150, %i.ch
  br i1 %.not79.1, label %.lr.ph128.2, label %bb.x

bb.x:                                             ; preds = %.lr.ph128.1
  %i.cl = getelementptr inbounds nuw [116 x i8], ptr %i.ad, i64 %indvars.iv.next150
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 94
  store i16 -1, ptr %i.cm, align 2, !tbaa !316
  br label %.lr.ph128.2

.lr.ph128.2:                                      ; preds = %bb.x, %.lr.ph128.1
  %indvars.iv.next150.1 = or disjoint i64 %indvars.iv149, 2 ; 2 uses
  %.not79.2 = icmp eq i64 %indvars.iv.next150.1, %i.ch
  br i1 %.not79.2, label %.lr.ph128.3, label %bb.y

bb.y:                                             ; preds = %.lr.ph128.2
  %i.cn = getelementptr inbounds nuw [116 x i8], ptr %i.ad, i64 %indvars.iv.next150.1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 94
  store i16 -1, ptr %i.co, align 2, !tbaa !316
  br label %.lr.ph128.3

.lr.ph128.3:                                      ; preds = %bb.y, %.lr.ph128.2
  %indvars.iv.next150.2 = or disjoint i64 %indvars.iv149, 3 ; 2 uses
  %.not79.3 = icmp eq i64 %indvars.iv.next150.2, %i.ch
  br i1 %.not79.3, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph128.3
  %i.cp = getelementptr inbounds nuw [116 x i8], ptr %i.ad, i64 %indvars.iv.next150.2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 94
  store i16 -1, ptr %i.cq, align 2, !tbaa !316
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph128.3
  %indvars.iv.next150.3 = add nuw nsw i64 %indvars.iv149, 4 ; 2 uses
  %niter187.next.3 = add i64 %niter187, 4         ; 2 uses
  %niter187.ncmp.3 = icmp eq i64 %niter187.next.3, %unroll_iter186
  br i1 %niter187.ncmp.3, label %.thread87.loopexit.unr-lcssa, label %.lr.ph128, !llvm.loop !615

.loopexit:                                        ; preds = %bb.f
  %1 = icmp eq i32 %.175, 0
  br i1 %1, label %bb.ab, label %.thread87

bb.ab:                                            ; preds = %.loopexit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !210
  %i.ct = and i32 %i.cs, 134217728
  %.not77.not = icmp eq i32 %i.ct, 0
  br i1 %.not77.not, label %.lr.ph126, label %.thread87

.lr.ph126:                                        ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !262
  %wide.trip.count142 = zext nneg i32 %i.b to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph126, %bb.af
  %indvars.iv139 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next140, %bb.af ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [116 x i8], ptr %i.cv, i64 %indvars.iv139 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 102
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !295, !range !174, !noundef !175
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.da = load i32, ptr %i.cw, align 4, !tbaa !313
  %i.db = and i32 %i.da, 512
  %.not78 = icmp eq i32 %i.db, 0
  br i1 %.not78, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 94
  store i16 0, ptr %i.dc, align 2, !tbaa !316
  %i.dd = getelementptr i8, ptr %i.cw, i64 114
  %.val = load i8, ptr %i.dd, align 2, !tbaa !393
  %i.de = and i8 %.val, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 113 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = and i8 %i.dg, -4
  %i.di = or disjoint i8 %i.dh, %i.de
  store i8 %i.di, ptr %i.df, align 1
  br label %.thread87

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %.thread87, label %bb.ac, !llvm.loop !616

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
  %i.dj = getelementptr inbounds nuw [116 x i8], ptr %i.ad, i64 %indvars.iv149.epil
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 94
  store i16 -1, ptr %i.dk, align 2, !tbaa !316
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph128.epil
  %indvars.iv.next150.epil = add nuw nsw i64 %indvars.iv149.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter183
  br i1 %epil.iter.cmp.not, label %.thread87, label %.lr.ph128.epil, !llvm.loop !617

.thread87:                                        ; preds = %bb.af, %._crit_edge108.us, %.thread87.loopexit.unr-lcssa, %bb.ah, %bb.ab, %bb.a, %bb.ae, %.loopexit
  %.9 = phi i32 [ 0, %bb.ab ], [ %.175, %.loopexit ], [ 1, %bb.ae ], [ 1, %.thread87.loopexit.unr-lcssa ], [ 0, %bb.a ], [ %.175, %._crit_edge108.us ], [ 1, %bb.ah ], [ 0, %bb.af ]
  %i.dl = trunc i32 %.9 to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i16 %i.dl, ptr %i.dm, align 8, !tbaa !343
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef float @_ZN5ImGui23TableGetHeaderRowHeightEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8816
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !254  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.e = load float, ptr %i.d, align 8, !tbaa !297 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !214  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 567
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.014.lcssa = phi float [ %i.e, %bb.a ], [ %.1, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3248
  %i.o = load float, ptr %i.n, align 8, !tbaa !383
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 2.000000e+00, float %.014.lcssa)
  ret float %i.p

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.q = phi i32 [ %i.g, %.lr.ph ], [ %i.as, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.01415 = phi float [ %i.e, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !269
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = lshr i64 %indvars.iv, 5
  %i.u = and i64 %i.t, 134217727
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !286
  %i.x = and i32 %i.s, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.w, %i.y
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !262
  %i.ab = getelementptr inbounds nuw [116 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !313
  %i.ad = and i32 %i.ac, 4096
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.af = load i8, ptr %i.k, align 1, !tbaa !215, !range !174, !noundef !175
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load i16, ptr %i.l, align 2, !tbaa !248
  %i.ai = sext i16 %i.ah to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.ai
  br i1 %.not.i, label %bb.f, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 84
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !335 ; 2 uses
  %i.al = icmp eq i16 %i.ak, -1
  br i1 %i.al, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !301
  %i.an = sext i16 %i.ak to i64
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.1.i = phi ptr [ @.str.6, %bb.e ], [ %i.ao, %bb.g ], [ @.str.6, %bb.f ]
  %i.ap = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.1.i, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #4
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.ap, i64 1 ; 2 uses
  %i.aq = fcmp oge float %.01415, %.sroa.0.4.vec.extract
  %i.ar = select i1 %i.aq, float %.01415, float %.sroa.0.4.vec.extract
  %.pre = load i32, ptr %i.f, align 4, !tbaa !214
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, %bb.c
  %i.as = phi i32 [ %.pre, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %i.q, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.1 = phi float [ %i.ar, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %.01415, %bb.c ], [ %.01415, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !3
}

declare <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef, ptr noundef, i1 noundef zeroext, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef float @_ZN5ImGui33TableGetHeaderAngledMaxLabelWidthEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8816
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !254  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !214  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 567
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.013.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3248
  %i.m = load float, ptr %i.l, align 8, !tbaa !383
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 2.000000e+00, float %.013.lcssa)
  ret float %i.n

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.o = phi i32 [ %i.e, %.lr.ph ], [ %i.ap, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.01315 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !269
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = lshr i64 %indvars.iv, 5
  %i.s = and i64 %i.r, 134217727
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !286
  %i.v = and i32 %i.q, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.u, %i.w
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !262
  %i.z = getelementptr inbounds nuw [116 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !313
  %i.ab = and i32 %i.aa, 262144
  %.not14 = icmp eq i32 %i.ab, 0
  br i1 %.not14, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i8, ptr %i.i, align 1, !tbaa !215, !range !174, !noundef !175
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load i16, ptr %i.j, align 2, !tbaa !248
  %i.af = sext i16 %i.ae to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.af
  br i1 %.not.i, label %bb.f, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !335 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, -1
  br i1 %i.ai, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !301
  %i.ak = sext i16 %i.ah to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  br label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit

_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.1.i = phi ptr [ @.str.6, %bb.e ], [ %i.al, %bb.g ], [ @.str.6, %bb.f ]
  %i.am = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.1.i, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) #4
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.an = fcmp oge float %.01315, %.sroa.0.0.vec.extract
  %i.ao = select i1 %i.an, float %.01315, float %.sroa.0.0.vec.extract
  %.pre = load i32, ptr %i.d, align 4, !tbaa !214
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, %bb.c
  %i.ap = phi i32 [ %.pre, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %i.o, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.1 = phi float [ %i.ao, %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit ], [ %.01315, %bb.c ], [ %.01315, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui15TableHeadersRowEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8816
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !254  ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c
end_hunk_0
