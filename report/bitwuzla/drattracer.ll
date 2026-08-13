inline.NumInlined: 51
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL4File3putEi:bb.a
  br label %bb.g

bb.g:                                             ; preds = %putc_unlocked.exit.thread.i.i.2, %putc_unlocked.exit.i.i.2
  %i.an = load i64, ptr %i.n, align 8, !tbaa !39
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !39
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35
  %.not.i.i.i.3 = icmp ult ptr %i.ar, %i.at
  br i1 %.not.i.i.i.3, label %putc_unlocked.exit.thread.i.i.3, label %putc_unlocked.exit.i.i.3, !prof !36

putc_unlocked.exit.i.i.3:                         ; preds = %bb.g
  %i.au = tail call i32 @__overflow(ptr noundef nonnull %i.ap, i32 noundef 52), !inline_history !38
  %.not.i.i15.3 = icmp eq i32 %i.au, -1
  br i1 %.not.i.i15.3, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.h

putc_unlocked.exit.thread.i.i.3:                  ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !29
  store i8 52, ptr %i.ar, align 1, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %putc_unlocked.exit.thread.i.i.3, %putc_unlocked.exit.i.i.3
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !39
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.n, align 8, !tbaa !39
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !35
  %.not.i.i.i.4 = icmp ult ptr %i.ba, %i.bc
  br i1 %.not.i.i.i.4, label %putc_unlocked.exit.thread.i.i.4, label %putc_unlocked.exit.i.i.4, !prof !36

putc_unlocked.exit.i.i.4:                         ; preds = %bb.h
  %i.bd = tail call i32 @__overflow(ptr noundef nonnull %i.ay, i32 noundef 55), !inline_history !38
  %.not.i.i15.4 = icmp eq i32 %i.bd, -1
  br i1 %.not.i.i15.4, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.i

putc_unlocked.exit.thread.i.i.4:                  ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.be, ptr %i.az, align 8, !tbaa !29
  store i8 55, ptr %i.ba, align 1, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %putc_unlocked.exit.thread.i.i.4, %putc_unlocked.exit.i.i.4
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !39
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.n, align 8, !tbaa !39
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35
  %.not.i.i.i.5 = icmp ult ptr %i.bj, %i.bl
  br i1 %.not.i.i.i.5, label %putc_unlocked.exit.thread.i.i.5, label %putc_unlocked.exit.i.i.5, !prof !36

putc_unlocked.exit.i.i.5:                         ; preds = %bb.i
  %i.bm = tail call i32 @__overflow(ptr noundef nonnull %i.bh, i32 noundef 52), !inline_history !38
  %.not.i.i15.5 = icmp eq i32 %i.bm, -1
  br i1 %.not.i.i15.5, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.j

putc_unlocked.exit.thread.i.i.5:                  ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !29
  store i8 52, ptr %i.bj, align 1, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %putc_unlocked.exit.thread.i.i.5, %putc_unlocked.exit.i.i.5
  %i.bo = load i64, ptr %i.n, align 8, !tbaa !39
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.n, align 8, !tbaa !39
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !29 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !35
  %.not.i.i.i.6 = icmp ult ptr %i.bs, %i.bu
  br i1 %.not.i.i.i.6, label %putc_unlocked.exit.thread.i.i.6, label %putc_unlocked.exit.i.i.6, !prof !36

putc_unlocked.exit.i.i.6:                         ; preds = %bb.j
  %i.bv = tail call i32 @__overflow(ptr noundef nonnull %i.bq, i32 noundef 56), !inline_history !38
  %.not.i.i15.6 = icmp eq i32 %i.bv, -1
  br i1 %.not.i.i15.6, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.k

putc_unlocked.exit.thread.i.i.6:                  ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !29
  store i8 56, ptr %i.bs, align 1, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %putc_unlocked.exit.thread.i.i.6, %putc_unlocked.exit.i.i.6
  %i.bx = load i64, ptr %i.n, align 8, !tbaa !39
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.n, align 8, !tbaa !39
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !35
  %.not.i.i.i.7 = icmp ult ptr %i.cb, %i.cd
  br i1 %.not.i.i.i.7, label %putc_unlocked.exit.thread.i.i.7, label %putc_unlocked.exit.i.i.7, !prof !36

putc_unlocked.exit.i.i.7:                         ; preds = %bb.k
  %i.ce = tail call i32 @__overflow(ptr noundef nonnull %i.bz, i32 noundef 51), !inline_history !38
  %.not.i.i15.7 = icmp eq i32 %i.ce, -1
  br i1 %.not.i.i15.7, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.l

putc_unlocked.exit.thread.i.i.7:                  ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !29
  store i8 51, ptr %i.cb, align 1, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %putc_unlocked.exit.thread.i.i.7, %putc_unlocked.exit.i.i.7
  %i.cg = load i64, ptr %i.n, align 8, !tbaa !39
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.n, align 8, !tbaa !39
  %i.ci = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !35
  %.not.i.i.i.8 = icmp ult ptr %i.ck, %i.cm
  br i1 %.not.i.i.i.8, label %putc_unlocked.exit.thread.i.i.8, label %putc_unlocked.exit.i.i.8, !prof !36

putc_unlocked.exit.i.i.8:                         ; preds = %bb.l
  %i.cn = tail call i32 @__overflow(ptr noundef nonnull %i.ci, i32 noundef 54), !inline_history !38
  %.not.i.i15.8 = icmp eq i32 %i.cn, -1
  br i1 %.not.i.i15.8, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.m

putc_unlocked.exit.thread.i.i.8:                  ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !29
  store i8 54, ptr %i.ck, align 1, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %putc_unlocked.exit.thread.i.i.8, %putc_unlocked.exit.i.i.8
  %i.cp = load i64, ptr %i.n, align 8, !tbaa !39
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.n, align 8, !tbaa !39
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !29 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !35
  %.not.i.i.i.9 = icmp ult ptr %i.ct, %i.cv
  br i1 %.not.i.i.i.9, label %putc_unlocked.exit.thread.i.i.9, label %putc_unlocked.exit.i.i.9, !prof !36

putc_unlocked.exit.i.i.9:                         ; preds = %bb.m
  %i.cw = tail call i32 @__overflow(ptr noundef nonnull %i.cr, i32 noundef 52), !inline_history !38
  %.not.i.i15.9 = icmp eq i32 %i.cw, -1
  br i1 %.not.i.i15.9, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.n

putc_unlocked.exit.thread.i.i.9:                  ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !29
  store i8 52, ptr %i.ct, align 1, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %putc_unlocked.exit.thread.i.i.9, %putc_unlocked.exit.i.i.9
  %i.cy = load i64, ptr %i.n, align 8, !tbaa !39
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.n, align 8, !tbaa !39
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !28  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !29 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !35
  %.not.i.i.i.10 = icmp ult ptr %i.dc, %i.de
  br i1 %.not.i.i.i.10, label %putc_unlocked.exit.thread.i.i.10, label %putc_unlocked.exit.i.i.10, !prof !36

putc_unlocked.exit.i.i.10:                        ; preds = %bb.n
  %i.df = tail call i32 @__overflow(ptr noundef nonnull %i.da, i32 noundef 56), !inline_history !38
  %.not.i.i15.10 = icmp eq i32 %i.df, -1
  br i1 %.not.i.i15.10, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.o

putc_unlocked.exit.thread.i.i.10:                 ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !29
  store i8 56, ptr %i.dc, align 1, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %putc_unlocked.exit.thread.i.i.10, %putc_unlocked.exit.i.i.10
  %i.dh = load i64, ptr %i.n, align 8, !tbaa !39
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.n, align 8, !tbaa !39
  br label %_ZN7CaDiCaL4File3putEc.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 0, ptr %i.dj, align 1, !tbaa !37
  %i.dk = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 10, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.032 = phi i32 [ %i.dk, %.lr.ph.preheader ], [ %i.dp, %.lr.ph ] ; 3 uses
  %i.dl = urem i32 %.032, 10
  %i.dm = trunc nuw nsw i32 %i.dl to i8
  %i.dn = or disjoint i8 %i.dm, 48                ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %2 = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.do = getelementptr i8, ptr %2, i64 -1
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !37
  %i.dp = udiv i32 %.032, 10
  %.not14 = icmp samesign ult i32 %.032, 10
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph
  %i.dq = icmp slt i32 %1, 0
  br i1 %i.dq, label %bb.p, label %.lr.ph.i

bb.p:                                             ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !28 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !29 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !35
  %.not.i.i17 = icmp ult ptr %i.du, %i.dw
  br i1 %.not.i.i17, label %putc_unlocked.exit.thread.i20, label %putc_unlocked.exit.i18, !prof !36

putc_unlocked.exit.thread.i20:                    ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dx, ptr %i.dt, align 8, !tbaa !29
  store i8 45, ptr %i.du, align 1, !tbaa !37
  br label %_ZN7CaDiCaL4File3putEc.exit21.thread

putc_unlocked.exit.i18:                           ; preds = %bb.p
  %i.dy = tail call i32 @__overflow(ptr noundef nonnull %i.ds, i32 noundef 45), !inline_history !38
  %.not.i19 = icmp eq i32 %i.dy, -1
  br i1 %.not.i19, label %_ZN7CaDiCaL4File3putEc.exit21, label %_ZN7CaDiCaL4File3putEc.exit21.thread

_ZN7CaDiCaL4File3putEc.exit21.thread:             ; preds = %putc_unlocked.exit.thread.i20, %putc_unlocked.exit.i18
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !39
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !39
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7CaDiCaL4File3putEc.exit21.thread, %._crit_edge
  %3 = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.ec = getelementptr i8, ptr %3, i64 -1
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i
  %i.ef = phi i8 [ %i.dn, %.lr.ph.i ], [ %i.er, %bb.r ] ; 2 uses
  %.0610.i22 = phi ptr [ %i.ec, %.lr.ph.i ], [ %i.eq, %bb.r ]
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !28 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !29 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !35
  %.not.i.i.i23 = icmp ult ptr %i.ei, %i.ek
  br i1 %.not.i.i.i23, label %putc_unlocked.exit.thread.i.i28, label %putc_unlocked.exit.i.i24, !prof !36

putc_unlocked.exit.thread.i.i28:                  ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store ptr %i.el, ptr %i.eh, align 8, !tbaa !29
  store i8 %i.ef, ptr %i.ei, align 1, !tbaa !37
  br label %bb.r

putc_unlocked.exit.i.i24:                         ; preds = %bb.q
  %i.em = zext i8 %i.ef to i32
  %i.en = tail call i32 @__overflow(ptr noundef nonnull %i.eg, i32 noundef %i.em), !inline_history !38
  %.not.i.i25 = icmp eq i32 %i.en, -1
  br i1 %.not.i.i25, label %_ZN7CaDiCaL4File3putEc.exit21, label %bb.r

bb.r:                                             ; preds = %putc_unlocked.exit.i.i24, %putc_unlocked.exit.thread.i.i28
  %i.eo = load i64, ptr %i.ee, align 8, !tbaa !39
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.ee, align 8, !tbaa !39
  %i.eq = getelementptr inbounds nuw i8, ptr %.0610.i22, i64 1 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !37  ; 2 uses
  %.not.i26 = icmp eq i8 %i.er, 0
  br i1 %.not.i26, label %_ZN7CaDiCaL4File3putEc.exit21, label %bb.q, !llvm.loop !46

_ZN7CaDiCaL4File3putEc.exit21:                    ; preds = %bb.r, %putc_unlocked.exit.i.i24, %putc_unlocked.exit.i18
  %.012 = phi i1 [ false, %putc_unlocked.exit.i18 ], [ true, %bb.r ], [ false, %putc_unlocked.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %putc_unlocked.exit.i.i, %putc_unlocked.exit.i.i.1, %putc_unlocked.exit.i.i.2, %putc_unlocked.exit.i.i.3, %putc_unlocked.exit.i.i.4, %putc_unlocked.exit.i.i.5, %putc_unlocked.exit.i.i.6, %putc_unlocked.exit.i.i.7, %putc_unlocked.exit.i.i.8, %putc_unlocked.exit.i.i.9, %putc_unlocked.exit.i.i.10, %bb.o, %bb.c, %putc_unlocked.exit.i, %_ZN7CaDiCaL4File3putEc.exit21
  %.1 = phi i1 [ true, %bb.c ], [ %.012, %_ZN7CaDiCaL4File3putEc.exit21 ], [ false, %putc_unlocked.exit.i ], [ true, %bb.o ], [ false, %putc_unlocked.exit.i.i ], [ false, %putc_unlocked.exit.i.i.1 ], [ false, %putc_unlocked.exit.i.i.10 ], [ false, %putc_unlocked.exit.i.i.2 ], [ false, %putc_unlocked.exit.i.i.6 ], [ false, %putc_unlocked.exit.i.i.3 ], [ false, %putc_unlocked.exit.i.i.9 ], [ false, %putc_unlocked.exit.i.i.4 ], [ false, %putc_unlocked.exit.i.i.7 ], [ false, %putc_unlocked.exit.i.i.5 ], [ false, %putc_unlocked.exit.i.i.8 ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL10DratTracer18drat_delete_clauseERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !21, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  %.not.i.i = icmp ult ptr %i.i, %i.k
  br i1 %.not.i.i, label %putc_unlocked.exit.thread.i, label %putc_unlocked.exit.i, !prof !36

putc_unlocked.exit.thread.i:                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.l, ptr %i.h, align 8, !tbaa !29
  store i8 100, ptr %i.i, align 1, !tbaa !37
  br label %bb.c

putc_unlocked.exit.i:                             ; preds = %bb.b
  %i.m = tail call i32 @__overflow(ptr noundef nonnull %i.g, i32 noundef 100), !inline_history !38
  %.not.i = icmp eq i32 %i.m, -1
  br i1 %.not.i, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.c

bb.c:                                             ; preds = %putc_unlocked.exit.i, %putc_unlocked.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !39
  br label %_ZN7CaDiCaL4File3putEc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  %.not.i.i.i = icmp ult ptr %i.t, %i.v
  br i1 %.not.i.i.i, label %putc_unlocked.exit.thread.i.i, label %putc_unlocked.exit.i.i, !prof !36

putc_unlocked.exit.thread.i.i:                    ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.w, ptr %i.s, align 8, !tbaa !29
  store i8 100, ptr %i.t, align 1, !tbaa !37
  br label %bb.e

putc_unlocked.exit.i.i:                           ; preds = %bb.d
  %i.x = tail call i32 @__overflow(ptr noundef nonnull %i.r, i32 noundef 100), !inline_history !38
  %.not.i.i6 = icmp eq i32 %i.x, -1
  br i1 %.not.i.i6, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.e

bb.e:                                             ; preds = %putc_unlocked.exit.i.i, %putc_unlocked.exit.thread.i.i
  %i.y = load i64, ptr %i.q, align 8, !tbaa !39
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.q, align 8, !tbaa !39
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !28  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %.not.i.i.i.1 = icmp ult ptr %i.ac, %i.ae
  br i1 %.not.i.i.i.1, label %putc_unlocked.exit.thread.i.i.1, label %putc_unlocked.exit.i.i.1, !prof !36

putc_unlocked.exit.i.i.1:                         ; preds = %bb.e
  %i.af = tail call i32 @__overflow(ptr noundef nonnull %i.aa, i32 noundef 32), !inline_history !38
  %.not.i.i6.1 = icmp eq i32 %i.af, -1
  br i1 %.not.i.i6.1, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.f

putc_unlocked.exit.thread.i.i.1:                  ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !29
  store i8 32, ptr %i.ac, align 1, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %putc_unlocked.exit.thread.i.i.1, %putc_unlocked.exit.i.i.1
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !39
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.q, align 8, !tbaa !39
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %putc_unlocked.exit.i.i, %putc_unlocked.exit.i.i.1, %bb.f, %bb.c, %putc_unlocked.exit.i
  %i.aj = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 2 uses
  %.not35 = icmp eq ptr %i.aj, %i.al
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL4File3putEc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN7CaDiCaL10DratTracer14put_binary_litEi.exit, %_ZN7CaDiCaL4File3putEc.exit
  %i.an = load i8, ptr %i.a, align 8, !tbaa !21, !range !26, !noundef !27
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  br i1 %i.ao, label %bb.k, label %bb.m

bb.g:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL10DratTracer14put_binary_litEi.exit
  %.sroa.032.036 = phi ptr [ %i.aj, %.lr.ph ], [ %i.cm, %_ZN7CaDiCaL10DratTracer14put_binary_litEi.exit ] ; 3 uses
  %i.as = load i8, ptr %i.a, align 8, !tbaa !21, !range !26, !noundef !27
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %.sroa.032.036, align 4, !tbaa !42 ; 2 uses
  %i.av = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.au, i32 1) ; 3 uses
  %.not14.i = icmp ult i32 %i.aw, 128
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZN7CaDiCaL4File3putEh.exit.i
  %.015.i = phi i32 [ %i.bm, %_ZN7CaDiCaL4File3putEh.exit.i ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ax = trunc i32 %.015.i to i8
  %i.ay = or i8 %i.ax, -128                       ; 2 uses
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !20 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35
  %.not.i.i.i8 = icmp ult ptr %i.bd, %i.bf
  br i1 %.not.i.i.i8, label %putc_unlocked.exit.thread.i.i12, label %putc_unlocked.exit.i.i9, !prof !36

putc_unlocked.exit.thread.i.i12:                  ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !29
  store i8 %i.ay, ptr %i.bd, align 1, !tbaa !37
  br label %bb.i

putc_unlocked.exit.i.i9:                          ; preds = %.lr.ph.i
  %i.bh = zext i8 %i.ay to i32
  %i.bi = tail call i32 @__overflow(ptr noundef nonnull %i.bb, i32 noundef %i.bh), !inline_history !38
  %.not.i.i10 = icmp eq i32 %i.bi, -1
  br i1 %.not.i.i10, label %_ZN7CaDiCaL4File3putEh.exit.i, label %bb.i

bb.i:                                             ; preds = %putc_unlocked.exit.i.i9, %putc_unlocked.exit.thread.i.i12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !39
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !39
end_hunk_0
