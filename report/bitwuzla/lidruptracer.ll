Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/lidruptracer?download=true
inline.NumInlined: 393
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN7CaDiCaL4File3putEi:bb.a
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.n, align 8, !tbaa !77
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !67  ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74
  %.not.i.i.i.3 = icmp ult ptr %i.ar, %i.at
  br i1 %.not.i.i.i.3, label %putc_unlocked.exit.thread.i.i.3, label %putc_unlocked.exit.i.i.3, !prof !75

putc_unlocked.exit.i.i.3:                         ; preds = %bb.g
  %i.au = tail call i32 @__overflow(ptr noundef nonnull %i.ap, i32 noundef 52), !inline_history !1
  %.not.i.i15.3 = icmp eq i32 %i.au, -1
  br i1 %.not.i.i15.3, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.h

putc_unlocked.exit.thread.i.i.3:                  ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !73
  store i8 52, ptr %i.ar, align 1, !tbaa !76
  br label %bb.h

bb.h:                                             ; preds = %putc_unlocked.exit.thread.i.i.3, %putc_unlocked.exit.i.i.3
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !77
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.n, align 8, !tbaa !77
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !67  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !73 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !74
  %.not.i.i.i.4 = icmp ult ptr %i.ba, %i.bc
  br i1 %.not.i.i.i.4, label %putc_unlocked.exit.thread.i.i.4, label %putc_unlocked.exit.i.i.4, !prof !75

putc_unlocked.exit.i.i.4:                         ; preds = %bb.h
  %i.bd = tail call i32 @__overflow(ptr noundef nonnull %i.ay, i32 noundef 55), !inline_history !1
  %.not.i.i15.4 = icmp eq i32 %i.bd, -1
  br i1 %.not.i.i15.4, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.i

putc_unlocked.exit.thread.i.i.4:                  ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.be, ptr %i.az, align 8, !tbaa !73
  store i8 55, ptr %i.ba, align 1, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %putc_unlocked.exit.thread.i.i.4, %putc_unlocked.exit.i.i.4
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !77
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.n, align 8, !tbaa !77
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !67  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !73 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74
  %.not.i.i.i.5 = icmp ult ptr %i.bj, %i.bl
  br i1 %.not.i.i.i.5, label %putc_unlocked.exit.thread.i.i.5, label %putc_unlocked.exit.i.i.5, !prof !75

putc_unlocked.exit.i.i.5:                         ; preds = %bb.i
  %i.bm = tail call i32 @__overflow(ptr noundef nonnull %i.bh, i32 noundef 52), !inline_history !1
  %.not.i.i15.5 = icmp eq i32 %i.bm, -1
  br i1 %.not.i.i15.5, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.j

putc_unlocked.exit.thread.i.i.5:                  ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !73
  store i8 52, ptr %i.bj, align 1, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %putc_unlocked.exit.thread.i.i.5, %putc_unlocked.exit.i.i.5
  %i.bo = load i64, ptr %i.n, align 8, !tbaa !77
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.n, align 8, !tbaa !77
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !67  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !73 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !74
  %.not.i.i.i.6 = icmp ult ptr %i.bs, %i.bu
  br i1 %.not.i.i.i.6, label %putc_unlocked.exit.thread.i.i.6, label %putc_unlocked.exit.i.i.6, !prof !75

putc_unlocked.exit.i.i.6:                         ; preds = %bb.j
  %i.bv = tail call i32 @__overflow(ptr noundef nonnull %i.bq, i32 noundef 56), !inline_history !1
  %.not.i.i15.6 = icmp eq i32 %i.bv, -1
  br i1 %.not.i.i15.6, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.k

putc_unlocked.exit.thread.i.i.6:                  ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !73
  store i8 56, ptr %i.bs, align 1, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %putc_unlocked.exit.thread.i.i.6, %putc_unlocked.exit.i.i.6
  %i.bx = load i64, ptr %i.n, align 8, !tbaa !77
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.n, align 8, !tbaa !77
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !67  ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !73 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !74
  %.not.i.i.i.7 = icmp ult ptr %i.cb, %i.cd
  br i1 %.not.i.i.i.7, label %putc_unlocked.exit.thread.i.i.7, label %putc_unlocked.exit.i.i.7, !prof !75

putc_unlocked.exit.i.i.7:                         ; preds = %bb.k
  %i.ce = tail call i32 @__overflow(ptr noundef nonnull %i.bz, i32 noundef 51), !inline_history !1
  %.not.i.i15.7 = icmp eq i32 %i.ce, -1
  br i1 %.not.i.i15.7, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.l

putc_unlocked.exit.thread.i.i.7:                  ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !73
  store i8 51, ptr %i.cb, align 1, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %putc_unlocked.exit.thread.i.i.7, %putc_unlocked.exit.i.i.7
  %i.cg = load i64, ptr %i.n, align 8, !tbaa !77
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.n, align 8, !tbaa !77
  %i.ci = load ptr, ptr %i.m, align 8, !tbaa !67  ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !73 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74
  %.not.i.i.i.8 = icmp ult ptr %i.ck, %i.cm
  br i1 %.not.i.i.i.8, label %putc_unlocked.exit.thread.i.i.8, label %putc_unlocked.exit.i.i.8, !prof !75

putc_unlocked.exit.i.i.8:                         ; preds = %bb.l
  %i.cn = tail call i32 @__overflow(ptr noundef nonnull %i.ci, i32 noundef 54), !inline_history !1
  %.not.i.i15.8 = icmp eq i32 %i.cn, -1
  br i1 %.not.i.i15.8, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.m

putc_unlocked.exit.thread.i.i.8:                  ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !73
  store i8 54, ptr %i.ck, align 1, !tbaa !76
  br label %bb.m

bb.m:                                             ; preds = %putc_unlocked.exit.thread.i.i.8, %putc_unlocked.exit.i.i.8
  %i.cp = load i64, ptr %i.n, align 8, !tbaa !77
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.n, align 8, !tbaa !77
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !67  ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !73 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !74
  %.not.i.i.i.9 = icmp ult ptr %i.ct, %i.cv
  br i1 %.not.i.i.i.9, label %putc_unlocked.exit.thread.i.i.9, label %putc_unlocked.exit.i.i.9, !prof !75

putc_unlocked.exit.i.i.9:                         ; preds = %bb.m
  %i.cw = tail call i32 @__overflow(ptr noundef nonnull %i.cr, i32 noundef 52), !inline_history !1
  %.not.i.i15.9 = icmp eq i32 %i.cw, -1
  br i1 %.not.i.i15.9, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.n

putc_unlocked.exit.thread.i.i.9:                  ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !73
  store i8 52, ptr %i.ct, align 1, !tbaa !76
  br label %bb.n

bb.n:                                             ; preds = %putc_unlocked.exit.thread.i.i.9, %putc_unlocked.exit.i.i.9
  %i.cy = load i64, ptr %i.n, align 8, !tbaa !77
  %i.cz = add i64 %i.cy, 1
  store i64 %i.cz, ptr %i.n, align 8, !tbaa !77
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !67  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !73 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !74
  %.not.i.i.i.10 = icmp ult ptr %i.dc, %i.de
  br i1 %.not.i.i.i.10, label %putc_unlocked.exit.thread.i.i.10, label %putc_unlocked.exit.i.i.10, !prof !75

putc_unlocked.exit.i.i.10:                        ; preds = %bb.n
  %i.df = tail call i32 @__overflow(ptr noundef nonnull %i.da, i32 noundef 56), !inline_history !1
  %.not.i.i15.10 = icmp eq i32 %i.df, -1
  br i1 %.not.i.i15.10, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.o

putc_unlocked.exit.thread.i.i.10:                 ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !73
  store i8 56, ptr %i.dc, align 1, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %putc_unlocked.exit.thread.i.i.10, %putc_unlocked.exit.i.i.10
  %i.dh = load i64, ptr %i.n, align 8, !tbaa !77
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.n, align 8, !tbaa !77
  br label %_ZN7CaDiCaL4File3putEc.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 0, ptr %i.dj, align 1, !tbaa !76
  %i.dk = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 10, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %.032 = phi i32 [ %i.dk, %.lr.ph.preheader ], [ %i.dp, %.lr.ph ] ; 3 uses
  %i.dl = urem i32 %.032, 10
  %i.dm = trunc nuw nsw i32 %i.dl to i8
  %i.dn = or disjoint i8 %i.dm, 48                ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !76
  %i.dp = udiv i32 %.032, 10
  %.not14 = icmp samesign ult i32 %.032, 10
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph
  %i.dq = icmp slt i32 %1, 0
  br i1 %i.dq, label %bb.p, label %.lr.ph.i

bb.p:                                             ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !67 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !73 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !74
  %.not.i.i17 = icmp ult ptr %i.du, %i.dw
  br i1 %.not.i.i17, label %putc_unlocked.exit.thread.i20, label %putc_unlocked.exit.i18, !prof !75

putc_unlocked.exit.thread.i20:                    ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dx, ptr %i.dt, align 8, !tbaa !73
  store i8 45, ptr %i.du, align 1, !tbaa !76
  br label %_ZN7CaDiCaL4File3putEc.exit21.thread

putc_unlocked.exit.i18:                           ; preds = %bb.p
  %i.dy = tail call i32 @__overflow(ptr noundef nonnull %i.ds, i32 noundef 45), !inline_history !1
  %.not.i19 = icmp eq i32 %i.dy, -1
  br i1 %.not.i19, label %_ZN7CaDiCaL4File3putEc.exit21, label %_ZN7CaDiCaL4File3putEc.exit21.thread

_ZN7CaDiCaL4File3putEc.exit21.thread:             ; preds = %putc_unlocked.exit.thread.i20, %putc_unlocked.exit.i18
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !77
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !77
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7CaDiCaL4File3putEc.exit21.thread, %._crit_edge
  %2 = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i
  %i.ee = phi i8 [ %i.dn, %.lr.ph.i ], [ %i.eq, %bb.r ] ; 2 uses
  %.0610.i22 = phi ptr [ %2, %.lr.ph.i ], [ %i.ep, %bb.r ]
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !67 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !73 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !74
  %.not.i.i.i23 = icmp ult ptr %i.eh, %i.ej
  br i1 %.not.i.i.i23, label %putc_unlocked.exit.thread.i.i28, label %putc_unlocked.exit.i.i24, !prof !75

putc_unlocked.exit.thread.i.i28:                  ; preds = %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !73
  store i8 %i.ee, ptr %i.eh, align 1, !tbaa !76
  br label %bb.r

putc_unlocked.exit.i.i24:                         ; preds = %bb.q
  %i.el = zext i8 %i.ee to i32
  %i.em = tail call i32 @__overflow(ptr noundef nonnull %i.ef, i32 noundef %i.el), !inline_history !1
  %.not.i.i25 = icmp eq i32 %i.em, -1
  br i1 %.not.i.i25, label %_ZN7CaDiCaL4File3putEc.exit21, label %bb.r

bb.r:                                             ; preds = %putc_unlocked.exit.i.i24, %putc_unlocked.exit.thread.i.i28
  %i.en = load i64, ptr %i.ed, align 8, !tbaa !77
  %i.eo = add i64 %i.en, 1
  store i64 %i.eo, ptr %i.ed, align 8, !tbaa !77
  %i.ep = getelementptr inbounds nuw i8, ptr %.0610.i22, i64 1 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !76  ; 2 uses
  %.not.i26 = icmp eq i8 %i.eq, 0
  br i1 %.not.i26, label %_ZN7CaDiCaL4File3putEc.exit21, label %bb.q, !llvm.loop !4

_ZN7CaDiCaL4File3putEc.exit21:                    ; preds = %bb.r, %putc_unlocked.exit.i.i24, %putc_unlocked.exit.i18
  %.012 = phi i1 [ false, %putc_unlocked.exit.i18 ], [ true, %bb.r ], [ false, %putc_unlocked.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %putc_unlocked.exit.i.i, %putc_unlocked.exit.i.i.1, %putc_unlocked.exit.i.i.2, %putc_unlocked.exit.i.i.3, %putc_unlocked.exit.i.i.4, %putc_unlocked.exit.i.i.5, %putc_unlocked.exit.i.i.6, %putc_unlocked.exit.i.i.7, %putc_unlocked.exit.i.i.8, %putc_unlocked.exit.i.i.9, %putc_unlocked.exit.i.i.10, %bb.o, %bb.c, %putc_unlocked.exit.i, %_ZN7CaDiCaL4File3putEc.exit21
  %.1 = phi i1 [ true, %bb.c ], [ %.012, %_ZN7CaDiCaL4File3putEc.exit21 ], [ false, %putc_unlocked.exit.i ], [ true, %bb.o ], [ false, %putc_unlocked.exit.i.i ], [ false, %putc_unlocked.exit.i.i.1 ], [ false, %putc_unlocked.exit.i.i.10 ], [ false, %putc_unlocked.exit.i.i.2 ], [ false, %putc_unlocked.exit.i.i.6 ], [ false, %putc_unlocked.exit.i.i.3 ], [ false, %putc_unlocked.exit.i.i.9 ], [ false, %putc_unlocked.exit.i.i.4 ], [ false, %putc_unlocked.exit.i.i.7 ], [ false, %putc_unlocked.exit.i.i.5 ], [ false, %putc_unlocked.exit.i.i.8 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL12LidrupTracer26lidrup_add_original_clauseEmRKSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [22 x i8], align 16               ; 5 uses
  tail call void @_ZN7CaDiCaL12LidrupTracer38lidrup_batch_weaken_restore_and_deleteEv(ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !40, !range !65, !noundef !66
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  %.not.i.i = icmp ult ptr %i.j, %i.l
  br i1 %.not.i.i, label %putc_unlocked.exit.thread.i, label %putc_unlocked.exit.i, !prof !75

putc_unlocked.exit.thread.i:                      ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.m, ptr %i.i, align 8, !tbaa !73
  store i8 105, ptr %i.j, align 1, !tbaa !76
  br label %bb.c

putc_unlocked.exit.i:                             ; preds = %bb.b
  %i.n = tail call i32 @__overflow(ptr noundef nonnull %i.h, i32 noundef 105), !inline_history !1
  %.not.i = icmp eq i32 %i.n, -1
  br i1 %.not.i, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.c

bb.c:                                             ; preds = %putc_unlocked.exit.i, %putc_unlocked.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !77
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !77
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %putc_unlocked.exit.i, %bb.c
  %.not12.i = icmp ult i64 %1, 128
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7CaDiCaL4File3putEc.exit, %_ZN7CaDiCaL4File3putEh.exit.i
  %.013.i = phi i64 [ %i.ag, %_ZN7CaDiCaL4File3putEh.exit.i ], [ %1, %_ZN7CaDiCaL4File3putEc.exit ] ; 3 uses
  %i.r = trunc i64 %.013.i to i8
  %i.s = or i8 %i.r, -128                         ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74
  %.not.i.i.i = icmp ult ptr %i.x, %i.z
  br i1 %.not.i.i.i, label %putc_unlocked.exit.thread.i.i, label %putc_unlocked.exit.i.i, !prof !75

putc_unlocked.exit.thread.i.i:                    ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !73
  store i8 %i.s, ptr %i.x, align 1, !tbaa !76
  br label %bb.d

putc_unlocked.exit.i.i:                           ; preds = %.lr.ph.i
  %i.ab = zext i8 %i.s to i32
  %i.ac = tail call i32 @__overflow(ptr noundef nonnull %i.v, i32 noundef %i.ab), !inline_history !1
  %.not.i.i7 = icmp eq i32 %i.ac, -1
  br i1 %.not.i.i7, label %_ZN7CaDiCaL4File3putEh.exit.i, label %bb.d

bb.d:                                             ; preds = %putc_unlocked.exit.i.i, %putc_unlocked.exit.thread.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !77
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !77
  br label %_ZN7CaDiCaL4File3putEh.exit.i

_ZN7CaDiCaL4File3putEh.exit.i:                    ; preds = %bb.d, %putc_unlocked.exit.i.i
  %i.ag = lshr i64 %.013.i, 7                     ; 2 uses
  %.not.i8 = icmp ult i64 %.013.i, 16384
  br i1 %.not.i8, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %_ZN7CaDiCaL4File3putEh.exit.i, %_ZN7CaDiCaL4File3putEc.exit
  %.0.lcssa.i = phi i64 [ %1, %_ZN7CaDiCaL4File3putEc.exit ], [ %i.ag, %_ZN7CaDiCaL4File3putEh.exit.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74
  %.not.i.i7.i = icmp ult ptr %i.al, %i.an
  br i1 %.not.i.i7.i, label %putc_unlocked.exit.thread.i10.i, label %putc_unlocked.exit.i8.i, !prof !75

putc_unlocked.exit.thread.i10.i:                  ; preds = %._crit_edge.i
  %i.ao = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !73
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !76
  br label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit.sink.split

putc_unlocked.exit.i8.i:                          ; preds = %._crit_edge.i
  %i.aq = trunc nuw i64 %.0.lcssa.i to i32
  %i.ar = tail call i32 @__overflow(ptr noundef nonnull %i.aj, i32 noundef %i.aq), !inline_history !1
  %.not.i9.i = icmp eq i32 %i.ar, -1
  br i1 %.not.i9.i, label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit, label %_ZN7CaDiCaL12LidrupTracer13put_binary_idEm.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 4 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !67  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !73 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74
  %.not.i.i.i10 = icmp ult ptr %i.av, %i.ax
  br i1 %.not.i.i.i10, label %putc_unlocked.exit.thread.i.i14, label %putc_unlocked.exit.i.i11, !prof !75

putc_unlocked.exit.thread.i.i14:                  ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !73
  store i8 105, ptr %i.av, align 1, !tbaa !76
  br label %bb.f

putc_unlocked.exit.i.i11:                         ; preds = %bb.e
  %i.az = tail call i32 @__overflow(ptr noundef nonnull %i.at, i32 noundef 105), !inline_history !1
  %.not.i.i12 = icmp eq i32 %i.az, -1
  br i1 %.not.i.i12, label %_ZN7CaDiCaL4File3putEPKc.exit, label %bb.f

bb.f:                                             ; preds = %putc_unlocked.exit.i.i11, %putc_unlocked.exit.thread.i.i14
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !77
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.as, align 8, !tbaa !77
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !67  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !73 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !74
  %.not.i.i.i10.1 = icmp ult ptr %i.be, %i.bg
  br i1 %.not.i.i.i10.1, label %putc_unlocked.exit.thread.i.i14.1, label %putc_unlocked.exit.i.i11.1, !prof !75

putc_unlocked.exit.i.i11.1:                       ; preds = %bb.f
  %i.bh = tail call i32 @__overflow(ptr noundef nonnull %i.bc, i32 noundef 32), !inline_history !1
  %.not.i.i12.1 = icmp eq i32 %i.bh, -1
  br i1 %.not.i.i12.1, label %_ZN7CaDiCaL4File3putEPKc.exit, label %bb.g

putc_unlocked.exit.thread.i.i14.1:                ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !73
  store i8 32, ptr %i.be, align 1, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %putc_unlocked.exit.thread.i.i14.1, %putc_unlocked.exit.i.i11.1
  %i.bj = load i64, ptr %i.as, align 8, !tbaa !77
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.as, align 8, !tbaa !77
  br label %_ZN7CaDiCaL4File3putEPKc.exit

_ZN7CaDiCaL4File3putEPKc.exit:                    ; preds = %bb.g, %putc_unlocked.exit.i.i11.1, %putc_unlocked.exit.i.i11
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !39  ; 4 uses
  %.not.i15 = icmp eq i64 %1, 0
  br i1 %.not.i15, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN7CaDiCaL4File3putEPKc.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !67 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !73 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  %.not.i.i.i16 = icmp ult ptr %i.bp, %i.br
  br i1 %.not.i.i.i16, label %putc_unlocked.exit.thread.i.i19, label %putc_unlocked.exit.i.i17, !prof !75

putc_unlocked.exit.thread.i.i19:                  ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !73
  store i8 48, ptr %i.bp, align 1, !tbaa !76
  br label %bb.i

putc_unlocked.exit.i.i17:                         ; preds = %bb.h
  %i.bt = tail call i32 @__overflow(ptr noundef nonnull %i.bn, i32 noundef 48), !inline_history !1
  %.not.i.i18 = icmp eq i32 %i.bt, -1
  br i1 %.not.i.i18, label %_ZN7CaDiCaL4File3putEm.exit, label %bb.i

bb.i:                                             ; preds = %putc_unlocked.exit.i.i17, %putc_unlocked.exit.thread.i.i19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !77
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !77
  br label %_ZN7CaDiCaL4File3putEm.exit

bb.j:                                             ; preds = %_ZN7CaDiCaL4File3putEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
end_hunk_0
