Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/lrattracer?download=true
inline.NumInlined: 132
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7CaDiCaL10LratTracer15lrat_add_clauseEmRKSt6vectorIiSaIiEERKS1_ImSaImEE:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !42
  %.not.i.i.i17 = icmp ult ptr %i.bb, %i.bd
  br i1 %.not.i.i.i17, label %putc_unlocked.exit.thread.i.i21, label %putc_unlocked.exit.i.i18, !prof !43

putc_unlocked.exit.thread.i.i21:                  ; preds = %_ZN7CaDiCaL4File3putEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !41
  store i8 32, ptr %i.bb, align 1, !tbaa !44
  br label %bb.j

putc_unlocked.exit.i.i18:                         ; preds = %_ZN7CaDiCaL4File3putEm.exit
  %i.bf = tail call i32 @__overflow(ptr noundef nonnull %i.az, i32 noundef 32), !inline_history !0
  %.not.i.i19 = icmp eq i32 %i.bf, -1
  br i1 %.not.i.i19, label %_ZN7CaDiCaL4File3putEPKc.exit, label %bb.j

bb.j:                                             ; preds = %putc_unlocked.exit.i.i18, %putc_unlocked.exit.thread.i.i21
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !45
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.ay, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEPKc.exit

_ZN7CaDiCaL4File3putEPKc.exit:                    ; preds = %putc_unlocked.exit.i.i18, %bb.j
  %.pre = load i8, ptr %i.i, align 8, !tbaa !28, !range !56
  %i.bi = trunc nuw i8 %.pre to i1
  br i1 %i.bi, label %_ZN7CaDiCaL4File3putEPKc.exit.thread, label %bb.l

_ZN7CaDiCaL4File3putEPKc.exit.thread:             ; preds = %bb.b, %_ZN7CaDiCaL4File3putEPKc.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !41 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42
  %.not.i.i22 = icmp ult ptr %i.bo, %i.bq
  br i1 %.not.i.i22, label %putc_unlocked.exit.thread.i, label %putc_unlocked.exit.i, !prof !43

putc_unlocked.exit.thread.i:                      ; preds = %_ZN7CaDiCaL4File3putEPKc.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !41
  store i8 100, ptr %i.bo, align 1, !tbaa !44
  br label %bb.k

putc_unlocked.exit.i:                             ; preds = %_ZN7CaDiCaL4File3putEPKc.exit.thread
  %i.bs = tail call i32 @__overflow(ptr noundef nonnull %i.bm, i32 noundef 100), !inline_history !0
  %.not.i23 = icmp eq i32 %i.bs, -1
  br i1 %.not.i23, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.k

bb.k:                                             ; preds = %putc_unlocked.exit.i, %putc_unlocked.exit.thread.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !45
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEc.exit

bb.l:                                             ; preds = %_ZN7CaDiCaL4File3putEPKc.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !27 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 4 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !35 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !41 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !42
  %.not.i.i.i25 = icmp ult ptr %i.cc, %i.ce
  br i1 %.not.i.i.i25, label %putc_unlocked.exit.thread.i.i30, label %putc_unlocked.exit.i.i26, !prof !43

putc_unlocked.exit.thread.i.i30:                  ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !41
  store i8 100, ptr %i.cc, align 1, !tbaa !44
  br label %bb.m

putc_unlocked.exit.i.i26:                         ; preds = %bb.l
  %i.cg = tail call i32 @__overflow(ptr noundef nonnull %i.ca, i32 noundef 100), !inline_history !0
  %.not.i.i27 = icmp eq i32 %i.cg, -1
  br i1 %.not.i.i27, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.m

bb.m:                                             ; preds = %putc_unlocked.exit.i.i26, %putc_unlocked.exit.thread.i.i30
  %i.ch = load i64, ptr %i.bz, align 8, !tbaa !45
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.bz, align 8, !tbaa !45
  %i.cj = load ptr, ptr %i.by, align 8, !tbaa !35 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !41 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42
  %.not.i.i.i25.1 = icmp ult ptr %i.cl, %i.cn
  br i1 %.not.i.i.i25.1, label %putc_unlocked.exit.thread.i.i30.1, label %putc_unlocked.exit.i.i26.1, !prof !43

putc_unlocked.exit.i.i26.1:                       ; preds = %bb.m
  %i.co = tail call i32 @__overflow(ptr noundef nonnull %i.cj, i32 noundef 32), !inline_history !0
  %.not.i.i27.1 = icmp eq i32 %i.co, -1
  br i1 %.not.i.i27.1, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.n

putc_unlocked.exit.thread.i.i30.1:                ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.cp, ptr %i.ck, align 8, !tbaa !41
  store i8 32, ptr %i.cl, align 1, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %putc_unlocked.exit.thread.i.i30.1, %putc_unlocked.exit.i.i26.1
  %i.cq = load i64, ptr %i.bz, align 8, !tbaa !45
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.bz, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %putc_unlocked.exit.i.i26, %putc_unlocked.exit.i.i26.1, %bb.n, %bb.k, %putc_unlocked.exit.i
  %i.cs = load ptr, ptr %i.e, align 8, !tbaa !58  ; 2 uses
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !58  ; 2 uses
  %.not228242 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not228242, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL4File3putEc.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit, %_ZN7CaDiCaL4File3putEc.exit
  %i.cw = load i8, ptr %i.i, align 8, !tbaa !28, !range !56, !noundef !57
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !27 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 3 uses
  br i1 %i.cx, label %bb.aa, label %bb.ac

bb.o:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit
  %.sroa.0225.0243 = phi ptr [ %i.cs, %.lr.ph ], [ %i.ge, %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit ] ; 3 uses
  %i.db = load i8, ptr %i.i, align 8, !tbaa !28, !range !56, !noundef !57
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.dd = load i64, ptr %.sroa.0225.0243, align 8, !tbaa !47 ; 2 uses
  %i.de = tail call i64 @llvm.abs.i64(i64 %i.dd, i1 true)
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.dd, i64 1) ; 3 uses
  %.not16.i = icmp ult i64 %i.df, 128
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %_ZN7CaDiCaL4File3putEh.exit.i
  %.017.i = phi i64 [ %i.dv, %_ZN7CaDiCaL4File3putEh.exit.i ], [ %i.df, %bb.p ] ; 3 uses
  %i.dg = trunc i64 %.017.i to i8
  %i.dh = or i8 %i.dg, -128                       ; 2 uses
  %i.di = load ptr, ptr %i.cu, align 8, !tbaa !27 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !35 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !41 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !42
  %.not.i.i.i32 = icmp ult ptr %i.dm, %i.do
  br i1 %.not.i.i.i32, label %putc_unlocked.exit.thread.i.i37, label %putc_unlocked.exit.i.i33, !prof !43

putc_unlocked.exit.thread.i.i37:                  ; preds = %.lr.ph.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store ptr %i.dp, ptr %i.dl, align 8, !tbaa !41
  store i8 %i.dh, ptr %i.dm, align 1, !tbaa !44
  br label %bb.q

putc_unlocked.exit.i.i33:                         ; preds = %.lr.ph.i
  %i.dq = zext i8 %i.dh to i32
  %i.dr = tail call i32 @__overflow(ptr noundef nonnull %i.dk, i32 noundef %i.dq), !inline_history !0
  %.not.i.i34 = icmp eq i32 %i.dr, -1
  br i1 %.not.i.i34, label %_ZN7CaDiCaL4File3putEh.exit.i, label %bb.q

bb.q:                                             ; preds = %putc_unlocked.exit.i.i33, %putc_unlocked.exit.thread.i.i37
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 48 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !45
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEh.exit.i

_ZN7CaDiCaL4File3putEh.exit.i:                    ; preds = %bb.q, %putc_unlocked.exit.i.i33
  %i.dv = lshr i64 %.017.i, 7                     ; 2 uses
  %.not.i35 = icmp ult i64 %.017.i, 16384
  br i1 %.not.i35, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !54

._crit_edge.i:                                    ; preds = %_ZN7CaDiCaL4File3putEh.exit.i, %bb.p
  %.0.lcssa.i = phi i64 [ %i.df, %bb.p ], [ %i.dv, %_ZN7CaDiCaL4File3putEh.exit.i ] ; 2 uses
  %i.dw = load ptr, ptr %i.cu, align 8, !tbaa !27 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !35 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !41 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !42
  %.not.i.i11.i = icmp ult ptr %i.ea, %i.ec
  br i1 %.not.i.i11.i, label %putc_unlocked.exit.thread.i14.i, label %putc_unlocked.exit.i12.i, !prof !43

putc_unlocked.exit.thread.i14.i:                  ; preds = %._crit_edge.i
  %i.ed = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store ptr %i.ee, ptr %i.dz, align 8, !tbaa !41
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !44
  br label %bb.r

putc_unlocked.exit.i12.i:                         ; preds = %._crit_edge.i
  %i.ef = trunc nuw i64 %.0.lcssa.i to i32
  %i.eg = tail call i32 @__overflow(ptr noundef nonnull %i.dy, i32 noundef %i.ef), !inline_history !0
  %.not.i13.i36 = icmp eq i32 %i.eg, -1
  br i1 %.not.i13.i36, label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit, label %bb.r

bb.r:                                             ; preds = %putc_unlocked.exit.i12.i, %putc_unlocked.exit.thread.i14.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !45
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit

bb.s:                                             ; preds = %bb.o
  %i.ek = load ptr, ptr %i.cu, align 8, !tbaa !27 ; 4 uses
  %i.el = load i64, ptr %.sroa.0225.0243, align 8, !tbaa !47 ; 2 uses
  %.not.i38 = icmp eq i64 %i.el, 0
  br i1 %.not.i38, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !35 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !41 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !42
  %.not.i.i.i53 = icmp ult ptr %i.ep, %i.er
  br i1 %.not.i.i.i53, label %putc_unlocked.exit.thread.i.i56, label %putc_unlocked.exit.i.i54, !prof !43

putc_unlocked.exit.thread.i.i56:                  ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.es, ptr %i.eo, align 8, !tbaa !41
  store i8 48, ptr %i.ep, align 1, !tbaa !44
  br label %bb.u

putc_unlocked.exit.i.i54:                         ; preds = %bb.t
  %i.et = tail call i32 @__overflow(ptr noundef nonnull %i.en, i32 noundef 48), !inline_history !0
  %.not.i.i55 = icmp eq i32 %i.et, -1
  br i1 %.not.i.i55, label %_ZN7CaDiCaL4File3putEm.exit57, label %bb.u

bb.u:                                             ; preds = %putc_unlocked.exit.i.i54, %putc_unlocked.exit.thread.i.i56
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 48 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !45
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEm.exit57

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i8 0, ptr %i.cv, align 1, !tbaa !44
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.i39 = phi i64 [ 21, %bb.v ], [ %indvars.iv.next.i41, %bb.w ]
  %.0814.i40 = phi i64 [ %i.el, %bb.v ], [ %i.fb, %bb.w ] ; 3 uses
  %i.ex = urem i64 %.0814.i40, 10
  %i.ey = trunc nuw nsw i64 %i.ex to i8
  %i.ez = or disjoint i8 %i.ey, 48                ; 2 uses
  %indvars.iv.next.i41 = add nsw i64 %indvars.iv.i39, -1 ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next.i41
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !44
  %i.fb = udiv i64 %.0814.i40, 10
  %.not11.i42 = icmp ult i64 %.0814.i40, 10
  br i1 %.not11.i42, label %.lr.ph.i.i43, label %bb.w, !llvm.loop !53

.lr.ph.i.i43:                                     ; preds = %bb.w
  %i.fc = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next.i41
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ek, i64 48 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i43
  %i.ff = phi i8 [ %i.ez, %.lr.ph.i.i43 ], [ %i.fr, %bb.y ] ; 2 uses
  %.0610.i.i44 = phi ptr [ %i.fc, %.lr.ph.i.i43 ], [ %i.fq, %bb.y ]
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !35 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !41 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !42
  %.not.i.i.i.i45 = icmp ult ptr %i.fi, %i.fk
  br i1 %.not.i.i.i.i45, label %putc_unlocked.exit.thread.i.i.i52, label %putc_unlocked.exit.i.i.i46, !prof !43

putc_unlocked.exit.thread.i.i.i52:                ; preds = %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  store ptr %i.fl, ptr %i.fh, align 8, !tbaa !41
  store i8 %i.ff, ptr %i.fi, align 1, !tbaa !44
  br label %bb.y

putc_unlocked.exit.i.i.i46:                       ; preds = %bb.x
  %i.fm = zext i8 %i.ff to i32
  %i.fn = tail call i32 @__overflow(ptr noundef nonnull %i.fg, i32 noundef %i.fm), !inline_history !0
  %.not.i.i12.i47 = icmp eq i32 %i.fn, -1
  br i1 %.not.i.i12.i47, label %_ZN7CaDiCaL4File3putEPKc.exit.i49, label %bb.y

bb.y:                                             ; preds = %putc_unlocked.exit.i.i.i46, %putc_unlocked.exit.thread.i.i.i52
  %i.fo = load i64, ptr %i.fe, align 8, !tbaa !45
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %i.fe, align 8, !tbaa !45
  %i.fq = getelementptr inbounds nuw i8, ptr %.0610.i.i44, i64 1 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !44  ; 2 uses
  %.not.i13.i48 = icmp eq i8 %i.fr, 0
  br i1 %.not.i13.i48, label %_ZN7CaDiCaL4File3putEPKc.exit.i49, label %bb.x, !llvm.loop !1

_ZN7CaDiCaL4File3putEPKc.exit.i49:                ; preds = %bb.y, %putc_unlocked.exit.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %_ZN7CaDiCaL4File3putEm.exit57

_ZN7CaDiCaL4File3putEm.exit57:                    ; preds = %putc_unlocked.exit.i.i54, %bb.u, %_ZN7CaDiCaL4File3putEPKc.exit.i49
  %i.fs = load ptr, ptr %i.cu, align 8, !tbaa !27 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 48 ; 2 uses
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !35 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !41 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !42
  %.not.i.i.i60 = icmp ult ptr %i.fx, %i.fz
  br i1 %.not.i.i.i60, label %putc_unlocked.exit.thread.i.i65, label %putc_unlocked.exit.i.i61, !prof !43

putc_unlocked.exit.thread.i.i65:                  ; preds = %_ZN7CaDiCaL4File3putEm.exit57
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  store ptr %i.ga, ptr %i.fw, align 8, !tbaa !41
  store i8 32, ptr %i.fx, align 1, !tbaa !44
  br label %bb.z

putc_unlocked.exit.i.i61:                         ; preds = %_ZN7CaDiCaL4File3putEm.exit57
  %i.gb = tail call i32 @__overflow(ptr noundef nonnull %i.fv, i32 noundef 32), !inline_history !0
  %.not.i.i62 = icmp eq i32 %i.gb, -1
  br i1 %.not.i.i62, label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit, label %bb.z

bb.z:                                             ; preds = %putc_unlocked.exit.i.i61, %putc_unlocked.exit.thread.i.i65
  %i.gc = load i64, ptr %i.fu, align 8, !tbaa !45
  %i.gd = add i64 %i.gc, 1
  store i64 %i.gd, ptr %i.fu, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit

_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit:    ; preds = %putc_unlocked.exit.i.i61, %bb.z, %bb.r, %putc_unlocked.exit.i12.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0225.0243, i64 8 ; 2 uses
  %.not228 = icmp eq ptr %i.ge, %i.ct
  br i1 %.not228, label %._crit_edge, label %bb.o

bb.aa:                                            ; preds = %._crit_edge
  %i.gf = load ptr, ptr %i.da, align 8, !tbaa !35 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 40 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !41 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !42
  %.not.i.i.i67 = icmp ult ptr %i.gh, %i.gj
  br i1 %.not.i.i.i67, label %putc_unlocked.exit.thread.i.i71, label %putc_unlocked.exit.i.i68, !prof !43

putc_unlocked.exit.thread.i.i71:                  ; preds = %bb.aa
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store ptr %i.gk, ptr %i.gg, align 8, !tbaa !41
  store i8 0, ptr %i.gh, align 1, !tbaa !44
  br label %bb.ab

putc_unlocked.exit.i.i68:                         ; preds = %bb.aa
  %i.gl = tail call i32 @__overflow(ptr noundef nonnull %i.gf, i32 noundef 0), !inline_history !0
  %.not.i.i69 = icmp eq i32 %i.gl, -1
  br i1 %.not.i.i69, label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit, label %bb.ab

bb.ab:                                            ; preds = %putc_unlocked.exit.i.i68, %putc_unlocked.exit.thread.i.i71
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !45
  %i.go = add i64 %i.gn, 1
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit

bb.ac:                                            ; preds = %._crit_edge
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 4 uses
  %i.gq = load ptr, ptr %i.da, align 8, !tbaa !35 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !41 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !42
  %.not.i.i.i74 = icmp ult ptr %i.gs, %i.gu
  br i1 %.not.i.i.i74, label %putc_unlocked.exit.thread.i.i79, label %putc_unlocked.exit.i.i75, !prof !43

putc_unlocked.exit.thread.i.i79:                  ; preds = %bb.ac
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store ptr %i.gv, ptr %i.gr, align 8, !tbaa !41
  store i8 48, ptr %i.gs, align 1, !tbaa !44
  br label %bb.ad

putc_unlocked.exit.i.i75:                         ; preds = %bb.ac
  %i.gw = tail call i32 @__overflow(ptr noundef nonnull %i.gq, i32 noundef 48), !inline_history !0
  %.not.i.i76 = icmp eq i32 %i.gw, -1
  br i1 %.not.i.i76, label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit, label %bb.ad

bb.ad:                                            ; preds = %putc_unlocked.exit.i.i75, %putc_unlocked.exit.thread.i.i79
  %i.gx = load i64, ptr %i.gp, align 8, !tbaa !45
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.gp, align 8, !tbaa !45
  %i.gz = load ptr, ptr %i.da, align 8, !tbaa !35 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !41 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !42
  %.not.i.i.i74.1 = icmp ult ptr %i.hb, %i.hd
  br i1 %.not.i.i.i74.1, label %putc_unlocked.exit.thread.i.i79.1, label %putc_unlocked.exit.i.i75.1, !prof !43

putc_unlocked.exit.i.i75.1:                       ; preds = %bb.ad
  %i.he = tail call i32 @__overflow(ptr noundef nonnull %i.gz, i32 noundef 10), !inline_history !0
  %.not.i.i76.1 = icmp eq i32 %i.he, -1
  br i1 %.not.i.i76.1, label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit, label %bb.ae

putc_unlocked.exit.thread.i.i79.1:                ; preds = %bb.ad
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  store ptr %i.hf, ptr %i.ha, align 8, !tbaa !41
  store i8 10, ptr %i.hb, align 1, !tbaa !44
  br label %bb.ae

bb.ae:                                            ; preds = %putc_unlocked.exit.thread.i.i79.1, %putc_unlocked.exit.i.i75.1
  %i.hg = load i64, ptr %i.gp, align 8, !tbaa !45
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.gp, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit

_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit:  ; preds = %putc_unlocked.exit.i.i75, %putc_unlocked.exit.i.i75.1, %bb.ae, %bb.ab, %putc_unlocked.exit.i.i68
  %i.hi = load ptr, ptr %i.e, align 8, !tbaa !32  ; 2 uses
  %i.hj = load ptr, ptr %i.f, align 8, !tbaa !33
  %.not.i.i81 = icmp eq ptr %i.hj, %i.hi
  br i1 %.not.i.i81, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit
  store ptr %i.hi, ptr %i.f, align 8, !tbaa !33
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit, %bb.a
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %1, ptr %i.hk, align 8, !tbaa !34
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !28, !range !56, !noundef !57
  %i.hn = trunc nuw i8 %i.hm to i1
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !27 ; 6 uses
  br i1 %i.hn, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !35 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 40 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !41 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !42
  %.not.i.i82 = icmp ult ptr %i.ht, %i.hv
  br i1 %.not.i.i82, label %putc_unlocked.exit.thread.i85, label %putc_unlocked.exit.i83, !prof !43

putc_unlocked.exit.thread.i85:                    ; preds = %bb.af
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  store ptr %i.hw, ptr %i.hs, align 8, !tbaa !41
  store i8 97, ptr %i.ht, align 1, !tbaa !44
  br label %bb.ag

putc_unlocked.exit.i83:                           ; preds = %bb.af
  %i.hx = tail call i32 @__overflow(ptr noundef nonnull %i.hr, i32 noundef 97), !inline_history !0
  %.not.i84 = icmp eq i32 %i.hx, -1
  br i1 %.not.i84, label %_ZN7CaDiCaL4File3putEc.exit86, label %bb.ag

bb.ag:                                            ; preds = %putc_unlocked.exit.i83, %putc_unlocked.exit.thread.i85
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 48 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !45
  %i.ia = add i64 %i.hz, 1
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEc.exit86

_ZN7CaDiCaL4File3putEc.exit86:                    ; preds = %putc_unlocked.exit.i83, %bb.ag
  %i.ib = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  %i.ic = tail call i64 @llvm.fshl.i64(i64 %i.ib, i64 %1, i64 1) ; 3 uses
  %.not16.i87 = icmp ult i64 %i.ic, 128
  br i1 %.not16.i87, label %._crit_edge.i95, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %_ZN7CaDiCaL4File3putEc.exit86, %_ZN7CaDiCaL4File3putEh.exit.i93
  %.017.i89 = phi i64 [ %i.is, %_ZN7CaDiCaL4File3putEh.exit.i93 ], [ %i.ic, %_ZN7CaDiCaL4File3putEc.exit86 ] ; 3 uses
  %i.id = trunc i64 %.017.i89 to i8
  %i.ie = or i8 %i.id, -128                       ; 2 uses
  %i.if = load ptr, ptr %i.ho, align 8, !tbaa !27 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !35 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 40 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !41 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !42
  %.not.i.i.i90 = icmp ult ptr %i.ij, %i.il
  br i1 %.not.i.i.i90, label %putc_unlocked.exit.thread.i.i101, label %putc_unlocked.exit.i.i91, !prof !43

putc_unlocked.exit.thread.i.i101:                 ; preds = %.lr.ph.i88
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store ptr %i.im, ptr %i.ii, align 8, !tbaa !41
  store i8 %i.ie, ptr %i.ij, align 1, !tbaa !44
  br label %bb.ah

putc_unlocked.exit.i.i91:                         ; preds = %.lr.ph.i88
  %i.in = zext i8 %i.ie to i32
  %i.io = tail call i32 @__overflow(ptr noundef nonnull %i.ih, i32 noundef %i.in), !inline_history !0
  %.not.i.i92 = icmp eq i32 %i.io, -1
  br i1 %.not.i.i92, label %_ZN7CaDiCaL4File3putEh.exit.i93, label %bb.ah

bb.ah:                                            ; preds = %putc_unlocked.exit.i.i91, %putc_unlocked.exit.thread.i.i101
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 48 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !45
  %i.ir = add i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ip, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEh.exit.i93

_ZN7CaDiCaL4File3putEh.exit.i93:                  ; preds = %bb.ah, %putc_unlocked.exit.i.i91
  %i.is = lshr i64 %.017.i89, 7                   ; 2 uses
  %.not.i94 = icmp ult i64 %.017.i89, 16384
  br i1 %.not.i94, label %._crit_edge.i95, label %.lr.ph.i88, !llvm.loop !54

._crit_edge.i95:                                  ; preds = %_ZN7CaDiCaL4File3putEh.exit.i93, %_ZN7CaDiCaL4File3putEc.exit86
  %.0.lcssa.i96 = phi i64 [ %i.ic, %_ZN7CaDiCaL4File3putEc.exit86 ], [ %i.is, %_ZN7CaDiCaL4File3putEh.exit.i93 ] ; 2 uses
  %i.it = load ptr, ptr %i.ho, align 8, !tbaa !27 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !35 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 40 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !41 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !42
  %.not.i.i11.i97 = icmp ult ptr %i.ix, %i.iz
  br i1 %.not.i.i11.i97, label %putc_unlocked.exit.thread.i14.i100, label %putc_unlocked.exit.i12.i98, !prof !43

putc_unlocked.exit.thread.i14.i100:               ; preds = %._crit_edge.i95
  %i.ja = trunc nuw nsw i64 %.0.lcssa.i96 to i8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  store ptr %i.jb, ptr %i.iw, align 8, !tbaa !41
  store i8 %i.ja, ptr %i.ix, align 1, !tbaa !44
  br label %bb.ai

putc_unlocked.exit.i12.i98:                       ; preds = %._crit_edge.i95
  %i.jc = trunc nuw i64 %.0.lcssa.i96 to i32
  %i.jd = tail call i32 @__overflow(ptr noundef nonnull %i.iv, i32 noundef %i.jc), !inline_history !0
  %.not.i13.i99 = icmp eq i32 %i.jd, -1
  br i1 %.not.i13.i99, label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit102, label %bb.ai

bb.ai:                                            ; preds = %putc_unlocked.exit.i12.i98, %putc_unlocked.exit.thread.i14.i100
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 48 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !45
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit102

bb.aj:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %.not.i103 = icmp eq i64 %1, 0
  br i1 %.not.i103, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !35 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 40 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !41 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !42
  %.not.i.i.i118 = icmp ult ptr %i.jk, %i.jm
  br i1 %.not.i.i.i118, label %putc_unlocked.exit.thread.i.i121, label %putc_unlocked.exit.i.i119, !prof !43

putc_unlocked.exit.thread.i.i121:                 ; preds = %bb.ak
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store ptr %i.jn, ptr %i.jj, align 8, !tbaa !41
  store i8 48, ptr %i.jk, align 1, !tbaa !44
  br label %bb.al

putc_unlocked.exit.i.i119:                        ; preds = %bb.ak
  %i.jo = tail call i32 @__overflow(ptr noundef nonnull %i.ji, i32 noundef 48), !inline_history !0
  %.not.i.i120 = icmp eq i32 %i.jo, -1
  br i1 %.not.i.i120, label %_ZN7CaDiCaL4File3putEm.exit122, label %bb.al

bb.al:                                            ; preds = %putc_unlocked.exit.i.i119, %putc_unlocked.exit.thread.i.i121
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hp, i64 48 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !45
  %i.jr = add i64 %i.jq, 1
  store i64 %i.jr, ptr %i.jp, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEm.exit122

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 21
  store i8 0, ptr %i.js, align 1, !tbaa !44
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %indvars.iv.i104 = phi i64 [ 21, %bb.am ], [ %indvars.iv.next.i106, %bb.an ]
  %.0814.i105 = phi i64 [ %1, %bb.am ], [ %i.jx, %bb.an ] ; 3 uses
  %i.jt = urem i64 %.0814.i105, 10
  %i.ju = trunc nuw nsw i64 %i.jt to i8
  %i.jv = or disjoint i8 %i.ju, 48                ; 2 uses
  %indvars.iv.next.i106 = add nsw i64 %indvars.iv.i104, -1 ; 3 uses
  %i.jw = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i106
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !44
  %i.jx = udiv i64 %.0814.i105, 10
  %.not11.i107 = icmp ult i64 %.0814.i105, 10
  br i1 %.not11.i107, label %.lr.ph.i.i108, label %bb.an, !llvm.loop !53

.lr.ph.i.i108:                                    ; preds = %bb.an
  %i.jy = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i106
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hp, i64 48 ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph.i.i108
  %i.kb = phi i8 [ %i.jv, %.lr.ph.i.i108 ], [ %i.kn, %bb.ap ] ; 2 uses
  %.0610.i.i109 = phi ptr [ %i.jy, %.lr.ph.i.i108 ], [ %i.km, %bb.ap ]
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !35 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 40 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !41 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !42
  %.not.i.i.i.i110 = icmp ult ptr %i.ke, %i.kg
  br i1 %.not.i.i.i.i110, label %putc_unlocked.exit.thread.i.i.i117, label %putc_unlocked.exit.i.i.i111, !prof !43

putc_unlocked.exit.thread.i.i.i117:               ; preds = %bb.ao
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  store ptr %i.kh, ptr %i.kd, align 8, !tbaa !41
  store i8 %i.kb, ptr %i.ke, align 1, !tbaa !44
  br label %bb.ap

putc_unlocked.exit.i.i.i111:                      ; preds = %bb.ao
  %i.ki = zext i8 %i.kb to i32
  %i.kj = tail call i32 @__overflow(ptr noundef nonnull %i.kc, i32 noundef %i.ki), !inline_history !0
  %.not.i.i12.i112 = icmp eq i32 %i.kj, -1
  br i1 %.not.i.i12.i112, label %_ZN7CaDiCaL4File3putEPKc.exit.i114, label %bb.ap

bb.ap:                                            ; preds = %putc_unlocked.exit.i.i.i111, %putc_unlocked.exit.thread.i.i.i117
  %i.kk = load i64, ptr %i.ka, align 8, !tbaa !45
  %i.kl = add i64 %i.kk, 1
  store i64 %i.kl, ptr %i.ka, align 8, !tbaa !45
  %i.km = getelementptr inbounds nuw i8, ptr %.0610.i.i109, i64 1 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !44  ; 2 uses
  %.not.i13.i113 = icmp eq i8 %i.kn, 0
  br i1 %.not.i13.i113, label %_ZN7CaDiCaL4File3putEPKc.exit.i114, label %bb.ao, !llvm.loop !1

_ZN7CaDiCaL4File3putEPKc.exit.i114:               ; preds = %bb.ap, %putc_unlocked.exit.i.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZN7CaDiCaL4File3putEm.exit122

_ZN7CaDiCaL4File3putEm.exit122:                   ; preds = %putc_unlocked.exit.i.i119, %bb.al, %_ZN7CaDiCaL4File3putEPKc.exit.i114
  %i.ko = load ptr, ptr %i.ho, align 8, !tbaa !27 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 48 ; 2 uses
  %i.kr = load ptr, ptr %i.kp, align 8, !tbaa !35 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 40 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !41 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 48
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !42
  %.not.i.i.i125 = icmp ult ptr %i.kt, %i.kv
  br i1 %.not.i.i.i125, label %putc_unlocked.exit.thread.i.i130, label %putc_unlocked.exit.i.i126, !prof !43

putc_unlocked.exit.thread.i.i130:                 ; preds = %_ZN7CaDiCaL4File3putEm.exit122
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  store ptr %i.kw, ptr %i.ks, align 8, !tbaa !41
  store i8 32, ptr %i.kt, align 1, !tbaa !44
  br label %bb.aq

putc_unlocked.exit.i.i126:                        ; preds = %_ZN7CaDiCaL4File3putEm.exit122
  %i.kx = tail call i32 @__overflow(ptr noundef nonnull %i.kr, i32 noundef 32), !inline_history !0
  %.not.i.i127 = icmp eq i32 %i.kx, -1
  br i1 %.not.i.i127, label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit102, label %bb.aq

bb.aq:                                            ; preds = %putc_unlocked.exit.i.i126, %putc_unlocked.exit.thread.i.i130
  %i.ky = load i64, ptr %i.kq, align 8, !tbaa !45
  %i.kz = add i64 %i.ky, 1
  store i64 %i.kz, ptr %i.kq, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit102

_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit102: ; preds = %putc_unlocked.exit.i.i126, %bb.aq, %bb.ai, %putc_unlocked.exit.i12.i98
  %i.la = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !60 ; 2 uses
  %.not229244 = icmp eq ptr %i.la, %i.lc
  br i1 %.not229244, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit102
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.ar

._crit_edge247:                                   ; preds = %_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit, %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit102
  %i.le = load i8, ptr %i.hl, align 8, !tbaa !28, !range !56, !noundef !57
  %i.lf = trunc nuw i8 %i.le to i1
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !27 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24 ; 3 uses
  br i1 %i.lf, label %bb.av, label %bb.ax

bb.ar:                                            ; preds = %.lr.ph246, %_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit
  %.sroa.0221.0245 = phi ptr [ %i.la, %.lr.ph246 ], [ %i.nd, %_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit ] ; 3 uses
  %i.lj = load i8, ptr %i.hl, align 8, !tbaa !28, !range !56, !noundef !57
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.ll = load i32, ptr %.sroa.0221.0245, align 4, !tbaa !61 ; 2 uses
  %i.lm = tail call i32 @llvm.abs.i32(i32 %i.ll, i1 true)
  %i.ln = tail call i32 @llvm.fshl.i32(i32 %i.lm, i32 %i.ll, i32 1) ; 3 uses
  %.not14.i = icmp ult i32 %i.ln, 128
  br i1 %.not14.i, label %._crit_edge.i138, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %bb.as, %_ZN7CaDiCaL4File3putEh.exit.i136
  %.015.i = phi i32 [ %i.md, %_ZN7CaDiCaL4File3putEh.exit.i136 ], [ %i.ln, %bb.as ] ; 3 uses
  %i.lo = trunc i32 %.015.i to i8
  %i.lp = or i8 %i.lo, -128                       ; 2 uses
  %i.lq = load ptr, ptr %i.ld, align 8, !tbaa !27 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !35 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 40 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !41 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !42
  %.not.i.i.i133 = icmp ult ptr %i.lu, %i.lw
  br i1 %.not.i.i.i133, label %putc_unlocked.exit.thread.i.i140, label %putc_unlocked.exit.i.i134, !prof !43

putc_unlocked.exit.thread.i.i140:                 ; preds = %.lr.ph.i132
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 1
  store ptr %i.lx, ptr %i.lt, align 8, !tbaa !41
  store i8 %i.lp, ptr %i.lu, align 1, !tbaa !44
  br label %bb.at

putc_unlocked.exit.i.i134:                        ; preds = %.lr.ph.i132
  %i.ly = zext i8 %i.lp to i32
  %i.lz = tail call i32 @__overflow(ptr noundef nonnull %i.ls, i32 noundef %i.ly), !inline_history !0
  %.not.i.i135 = icmp eq i32 %i.lz, -1
  br i1 %.not.i.i135, label %_ZN7CaDiCaL4File3putEh.exit.i136, label %bb.at

bb.at:                                            ; preds = %putc_unlocked.exit.i.i134, %putc_unlocked.exit.thread.i.i140
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 48 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !45
  %i.mc = add i64 %i.mb, 1
  store i64 %i.mc, ptr %i.ma, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEh.exit.i136

_ZN7CaDiCaL4File3putEh.exit.i136:                 ; preds = %bb.at, %putc_unlocked.exit.i.i134
  %i.md = lshr i32 %.015.i, 7                     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL10LratTracer15lrat_add_clauseEmRKSt6vectorIiSaIiEERKS1_ImSaImEE:bb.a
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !35 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 40 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !41 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !42
  %.not.i.i141 = icmp ult ptr %i.mv, %i.mx
  br i1 %.not.i.i141, label %putc_unlocked.exit.thread.i144, label %putc_unlocked.exit.i142, !prof !43

putc_unlocked.exit.thread.i144:                   ; preds = %bb.au
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  store ptr %i.my, ptr %i.mu, align 8, !tbaa !41
  store i8 32, ptr %i.mv, align 1, !tbaa !44
  br label %_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit.sink.split

putc_unlocked.exit.i142:                          ; preds = %bb.au
  %i.mz = tail call i32 @__overflow(ptr noundef nonnull %i.mt, i32 noundef 32), !inline_history !0
  %.not.i143 = icmp eq i32 %i.mz, -1
  br i1 %.not.i143, label %_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit, label %_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit.sink.split

_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit.sink.split: ; preds = %putc_unlocked.exit.thread.i144, %putc_unlocked.exit.i142, %putc_unlocked.exit.thread.i12.i, %putc_unlocked.exit.i10.i
  %.sink330 = phi ptr [ %i.me, %putc_unlocked.exit.thread.i12.i ], [ %i.me, %putc_unlocked.exit.i10.i ], [ %i.mr, %putc_unlocked.exit.i142 ], [ %i.mr, %putc_unlocked.exit.thread.i144 ]
  %i.na = getelementptr inbounds nuw i8, ptr %.sink330, i64 48 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !45
  %i.nc = add i64 %i.nb, 1
  store i64 %i.nc, ptr %i.na, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit

_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit:   ; preds = %_ZN7CaDiCaL10LratTracer14put_binary_litEi.exit.sink.split, %putc_unlocked.exit.i142, %putc_unlocked.exit.i10.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0221.0245, i64 4 ; 2 uses
  %.not229 = icmp eq ptr %i.nd, %i.lc
  br i1 %.not229, label %._crit_edge247, label %bb.ar

bb.av:                                            ; preds = %._crit_edge247
  %i.ne = load ptr, ptr %i.li, align 8, !tbaa !35 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 40 ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !41 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 48
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !42
  %.not.i.i.i146 = icmp ult ptr %i.ng, %i.ni
  br i1 %.not.i.i.i146, label %putc_unlocked.exit.thread.i.i150, label %putc_unlocked.exit.i.i147, !prof !43

putc_unlocked.exit.thread.i.i150:                 ; preds = %bb.av
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  store ptr %i.nj, ptr %i.nf, align 8, !tbaa !41
  store i8 0, ptr %i.ng, align 1, !tbaa !44
  br label %bb.aw

putc_unlocked.exit.i.i147:                        ; preds = %bb.av
  %i.nk = tail call i32 @__overflow(ptr noundef nonnull %i.ne, i32 noundef 0), !inline_history !0
  %.not.i.i148 = icmp eq i32 %i.nk, -1
  br i1 %.not.i.i148, label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit151, label %bb.aw

bb.aw:                                            ; preds = %putc_unlocked.exit.i.i147, %putc_unlocked.exit.thread.i.i150
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lh, i64 48 ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !45
  %i.nn = add i64 %i.nm, 1
  store i64 %i.nn, ptr %i.nl, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit151

bb.ax:                                            ; preds = %._crit_edge247
  %i.no = getelementptr inbounds nuw i8, ptr %i.lh, i64 48 ; 4 uses
  %i.np = load ptr, ptr %i.li, align 8, !tbaa !35 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 40 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !41 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 48
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !42
  %.not.i.i.i154 = icmp ult ptr %i.nr, %i.nt
  br i1 %.not.i.i.i154, label %putc_unlocked.exit.thread.i.i159, label %putc_unlocked.exit.i.i155, !prof !43

putc_unlocked.exit.thread.i.i159:                 ; preds = %bb.ax
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 1
  store ptr %i.nu, ptr %i.nq, align 8, !tbaa !41
  store i8 48, ptr %i.nr, align 1, !tbaa !44
  br label %bb.ay

putc_unlocked.exit.i.i155:                        ; preds = %bb.ax
  %i.nv = tail call i32 @__overflow(ptr noundef nonnull %i.np, i32 noundef 48), !inline_history !0
  %.not.i.i156 = icmp eq i32 %i.nv, -1
  br i1 %.not.i.i156, label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit151, label %bb.ay

bb.ay:                                            ; preds = %putc_unlocked.exit.i.i155, %putc_unlocked.exit.thread.i.i159
  %i.nw = load i64, ptr %i.no, align 8, !tbaa !45
  %i.nx = add i64 %i.nw, 1
  store i64 %i.nx, ptr %i.no, align 8, !tbaa !45
  %i.ny = load ptr, ptr %i.li, align 8, !tbaa !35 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 40 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !41 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !42
  %.not.i.i.i154.1 = icmp ult ptr %i.oa, %i.oc
  br i1 %.not.i.i.i154.1, label %putc_unlocked.exit.thread.i.i159.1, label %putc_unlocked.exit.i.i155.1, !prof !43

putc_unlocked.exit.i.i155.1:                      ; preds = %bb.ay
  %i.od = tail call i32 @__overflow(ptr noundef nonnull %i.ny, i32 noundef 32), !inline_history !0
  %.not.i.i156.1 = icmp eq i32 %i.od, -1
  br i1 %.not.i.i156.1, label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit151, label %bb.az

putc_unlocked.exit.thread.i.i159.1:               ; preds = %bb.ay
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 1
  store ptr %i.oe, ptr %i.nz, align 8, !tbaa !41
  store i8 32, ptr %i.oa, align 1, !tbaa !44
  br label %bb.az

bb.az:                                            ; preds = %putc_unlocked.exit.thread.i.i159.1, %putc_unlocked.exit.i.i155.1
  %i.of = load i64, ptr %i.no, align 8, !tbaa !45
  %i.og = add i64 %i.of, 1
  store i64 %i.og, ptr %i.no, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit151

_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit151: ; preds = %putc_unlocked.exit.i.i155, %putc_unlocked.exit.i.i155.1, %bb.az, %bb.aw, %putc_unlocked.exit.i.i147
  %i.oh = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !58 ; 2 uses
  %.not230248 = icmp eq ptr %i.oh, %i.oj
  br i1 %.not230248, label %._crit_edge251, label %.lr.ph250

.lr.ph250:                                        ; preds = %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit151
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  br label %bb.ba

._crit_edge251:                                   ; preds = %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176, %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit151
  %i.om = load i8, ptr %i.hl, align 8, !tbaa !28, !range !56, !noundef !57
  %i.on = trunc nuw i8 %i.om to i1
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !27 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24 ; 3 uses
  br i1 %i.on, label %bb.bk, label %bb.bm

bb.ba:                                            ; preds = %.lr.ph250, %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176
  %.sroa.0217.0249 = phi ptr [ %i.oh, %.lr.ph250 ], [ %i.rr, %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176 ] ; 3 uses
  %i.or = load i8, ptr %i.hl, align 8, !tbaa !28, !range !56, !noundef !57
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ot = load i64, ptr %.sroa.0217.0249, align 8, !tbaa !47 ; 2 uses
  %i.ou = tail call i64 @llvm.abs.i64(i64 %i.ot, i1 true)
  %i.ov = tail call i64 @llvm.fshl.i64(i64 %i.ou, i64 %i.ot, i64 1) ; 3 uses
  %.not16.i161 = icmp ult i64 %i.ov, 128
  br i1 %.not16.i161, label %._crit_edge.i169, label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %bb.bb, %_ZN7CaDiCaL4File3putEh.exit.i167
  %.017.i163 = phi i64 [ %i.pl, %_ZN7CaDiCaL4File3putEh.exit.i167 ], [ %i.ov, %bb.bb ] ; 3 uses
  %i.ow = trunc i64 %.017.i163 to i8
  %i.ox = or i8 %i.ow, -128                       ; 2 uses
  %i.oy = load ptr, ptr %i.ok, align 8, !tbaa !27 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !35 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 40 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !41 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 48
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !42
  %.not.i.i.i164 = icmp ult ptr %i.pc, %i.pe
  br i1 %.not.i.i.i164, label %putc_unlocked.exit.thread.i.i175, label %putc_unlocked.exit.i.i165, !prof !43

putc_unlocked.exit.thread.i.i175:                 ; preds = %.lr.ph.i162
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 1
  store ptr %i.pf, ptr %i.pb, align 8, !tbaa !41
  store i8 %i.ox, ptr %i.pc, align 1, !tbaa !44
  br label %bb.bc

putc_unlocked.exit.i.i165:                        ; preds = %.lr.ph.i162
  %i.pg = zext i8 %i.ox to i32
  %i.ph = tail call i32 @__overflow(ptr noundef nonnull %i.pa, i32 noundef %i.pg), !inline_history !0
  %.not.i.i166 = icmp eq i32 %i.ph, -1
  br i1 %.not.i.i166, label %_ZN7CaDiCaL4File3putEh.exit.i167, label %bb.bc

bb.bc:                                            ; preds = %putc_unlocked.exit.i.i165, %putc_unlocked.exit.thread.i.i175
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 48 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !45
  %i.pk = add i64 %i.pj, 1
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEh.exit.i167

_ZN7CaDiCaL4File3putEh.exit.i167:                 ; preds = %bb.bc, %putc_unlocked.exit.i.i165
  %i.pl = lshr i64 %.017.i163, 7                  ; 2 uses
  %.not.i168 = icmp ult i64 %.017.i163, 16384
  br i1 %.not.i168, label %._crit_edge.i169, label %.lr.ph.i162, !llvm.loop !54

._crit_edge.i169:                                 ; preds = %_ZN7CaDiCaL4File3putEh.exit.i167, %bb.bb
  %.0.lcssa.i170 = phi i64 [ %i.ov, %bb.bb ], [ %i.pl, %_ZN7CaDiCaL4File3putEh.exit.i167 ] ; 2 uses
  %i.pm = load ptr, ptr %i.ok, align 8, !tbaa !27 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !35 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 40 ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !41 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !42
  %.not.i.i11.i171 = icmp ult ptr %i.pq, %i.ps
  br i1 %.not.i.i11.i171, label %putc_unlocked.exit.thread.i14.i174, label %putc_unlocked.exit.i12.i172, !prof !43

putc_unlocked.exit.thread.i14.i174:               ; preds = %._crit_edge.i169
  %i.pt = trunc nuw nsw i64 %.0.lcssa.i170 to i8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 1
  store ptr %i.pu, ptr %i.pp, align 8, !tbaa !41
  store i8 %i.pt, ptr %i.pq, align 1, !tbaa !44
  br label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176.sink.split

putc_unlocked.exit.i12.i172:                      ; preds = %._crit_edge.i169
  %i.pv = trunc nuw i64 %.0.lcssa.i170 to i32
  %i.pw = tail call i32 @__overflow(ptr noundef nonnull %i.po, i32 noundef %i.pv), !inline_history !0
  %.not.i13.i173 = icmp eq i32 %i.pw, -1
  br i1 %.not.i13.i173, label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176, label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176.sink.split

bb.bd:                                            ; preds = %bb.ba
  %i.px = load ptr, ptr %i.ok, align 8, !tbaa !27 ; 4 uses
  %i.py = load i64, ptr %.sroa.0217.0249, align 8, !tbaa !47 ; 2 uses
  %.not.i177 = icmp eq i64 %i.py, 0
  br i1 %.not.i177, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !35 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 40 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !41 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !42
  %.not.i.i.i192 = icmp ult ptr %i.qc, %i.qe
  br i1 %.not.i.i.i192, label %putc_unlocked.exit.thread.i.i195, label %putc_unlocked.exit.i.i193, !prof !43

putc_unlocked.exit.thread.i.i195:                 ; preds = %bb.be
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 1
  store ptr %i.qf, ptr %i.qb, align 8, !tbaa !41
  store i8 48, ptr %i.qc, align 1, !tbaa !44
  br label %bb.bf

putc_unlocked.exit.i.i193:                        ; preds = %bb.be
  %i.qg = tail call i32 @__overflow(ptr noundef nonnull %i.qa, i32 noundef 48), !inline_history !0
  %.not.i.i194 = icmp eq i32 %i.qg, -1
  br i1 %.not.i.i194, label %_ZN7CaDiCaL4File3putEm.exit196, label %bb.bf

bb.bf:                                            ; preds = %putc_unlocked.exit.i.i193, %putc_unlocked.exit.thread.i.i195
  %i.qh = getelementptr inbounds nuw i8, ptr %i.px, i64 48 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !45
  %i.qj = add i64 %i.qi, 1
  store i64 %i.qj, ptr %i.qh, align 8, !tbaa !45
  br label %_ZN7CaDiCaL4File3putEm.exit196

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.ol, align 1, !tbaa !44
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %indvars.iv.i178 = phi i64 [ 21, %bb.bg ], [ %indvars.iv.next.i180, %bb.bh ]
  %.0814.i179 = phi i64 [ %i.py, %bb.bg ], [ %i.qo, %bb.bh ] ; 3 uses
  %i.qk = urem i64 %.0814.i179, 10
  %i.ql = trunc nuw nsw i64 %i.qk to i8
  %i.qm = or disjoint i8 %i.ql, 48                ; 2 uses
  %indvars.iv.next.i180 = add nsw i64 %indvars.iv.i178, -1 ; 3 uses
  %i.qn = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next.i180
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !44
  %i.qo = udiv i64 %.0814.i179, 10
  %.not11.i181 = icmp ult i64 %.0814.i179, 10
  br i1 %.not11.i181, label %.lr.ph.i.i182, label %bb.bh, !llvm.loop !53

.lr.ph.i.i182:                                    ; preds = %bb.bh
  %i.qp = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next.i180
  %i.qq = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %i.qr = getelementptr inbounds nuw i8, ptr %i.px, i64 48 ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %.lr.ph.i.i182
  %i.qs = phi i8 [ %i.qm, %.lr.ph.i.i182 ], [ %i.re, %bb.bj ] ; 2 uses
  %.0610.i.i183 = phi ptr [ %i.qp, %.lr.ph.i.i182 ], [ %i.rd, %bb.bj ]
  %i.qt = load ptr, ptr %i.qq, align 8, !tbaa !35 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 40 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !41 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 48
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !42
  %.not.i.i.i.i184 = icmp ult ptr %i.qv, %i.qx
  br i1 %.not.i.i.i.i184, label %putc_unlocked.exit.thread.i.i.i191, label %putc_unlocked.exit.i.i.i185, !prof !43

putc_unlocked.exit.thread.i.i.i191:               ; preds = %bb.bi
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 1
  store ptr %i.qy, ptr %i.qu, align 8, !tbaa !41
  store i8 %i.qs, ptr %i.qv, align 1, !tbaa !44
  br label %bb.bj

putc_unlocked.exit.i.i.i185:                      ; preds = %bb.bi
  %i.qz = zext i8 %i.qs to i32
  %i.ra = tail call i32 @__overflow(ptr noundef nonnull %i.qt, i32 noundef %i.qz), !inline_history !0
  %.not.i.i12.i186 = icmp eq i32 %i.ra, -1
  br i1 %.not.i.i12.i186, label %_ZN7CaDiCaL4File3putEPKc.exit.i188, label %bb.bj

bb.bj:                                            ; preds = %putc_unlocked.exit.i.i.i185, %putc_unlocked.exit.thread.i.i.i191
  %i.rb = load i64, ptr %i.qr, align 8, !tbaa !45
  %i.rc = add i64 %i.rb, 1
  store i64 %i.rc, ptr %i.qr, align 8, !tbaa !45
  %i.rd = getelementptr inbounds nuw i8, ptr %.0610.i.i183, i64 1 ; 2 uses
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !44  ; 2 uses
  %.not.i13.i187 = icmp eq i8 %i.re, 0
  br i1 %.not.i13.i187, label %_ZN7CaDiCaL4File3putEPKc.exit.i188, label %bb.bi, !llvm.loop !1

_ZN7CaDiCaL4File3putEPKc.exit.i188:               ; preds = %bb.bj, %putc_unlocked.exit.i.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN7CaDiCaL4File3putEm.exit196

_ZN7CaDiCaL4File3putEm.exit196:                   ; preds = %putc_unlocked.exit.i.i193, %bb.bf, %_ZN7CaDiCaL4File3putEPKc.exit.i188
  %i.rf = load ptr, ptr %i.ok, align 8, !tbaa !27 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !35 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 40 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !41 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 48
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !42
  %.not.i.i197 = icmp ult ptr %i.rj, %i.rl
  br i1 %.not.i.i197, label %putc_unlocked.exit.thread.i200, label %putc_unlocked.exit.i198, !prof !43

putc_unlocked.exit.thread.i200:                   ; preds = %_ZN7CaDiCaL4File3putEm.exit196
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 1
  store ptr %i.rm, ptr %i.ri, align 8, !tbaa !41
  store i8 32, ptr %i.rj, align 1, !tbaa !44
  br label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176.sink.split

putc_unlocked.exit.i198:                          ; preds = %_ZN7CaDiCaL4File3putEm.exit196
  %i.rn = tail call i32 @__overflow(ptr noundef nonnull %i.rh, i32 noundef 32), !inline_history !0
  %.not.i199 = icmp eq i32 %i.rn, -1
  br i1 %.not.i199, label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176, label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176.sink.split

_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176.sink.split: ; preds = %putc_unlocked.exit.thread.i200, %putc_unlocked.exit.i198, %putc_unlocked.exit.thread.i14.i174, %putc_unlocked.exit.i12.i172
  %.sink333 = phi ptr [ %i.pm, %putc_unlocked.exit.thread.i14.i174 ], [ %i.pm, %putc_unlocked.exit.i12.i172 ], [ %i.rf, %putc_unlocked.exit.i198 ], [ %i.rf, %putc_unlocked.exit.thread.i200 ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.sink333, i64 48 ; 2 uses
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !45
  %i.rq = add i64 %i.rp, 1
  store i64 %i.rq, ptr %i.ro, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176

_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176: ; preds = %_ZN7CaDiCaL10LratTracer13put_binary_idEl.exit176.sink.split, %putc_unlocked.exit.i198, %putc_unlocked.exit.i12.i172
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0217.0249, i64 8 ; 2 uses
  %.not230 = icmp eq ptr %i.rr, %i.oj
  br i1 %.not230, label %._crit_edge251, label %bb.ba

bb.bk:                                            ; preds = %._crit_edge251
  %i.rs = load ptr, ptr %i.oq, align 8, !tbaa !35 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 40 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !41 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 48
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !42
  %.not.i.i.i202 = icmp ult ptr %i.ru, %i.rw
  br i1 %.not.i.i.i202, label %putc_unlocked.exit.thread.i.i206, label %putc_unlocked.exit.i.i203, !prof !43

putc_unlocked.exit.thread.i.i206:                 ; preds = %bb.bk
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  store ptr %i.rx, ptr %i.rt, align 8, !tbaa !41
  store i8 0, ptr %i.ru, align 1, !tbaa !44
  br label %bb.bl

putc_unlocked.exit.i.i203:                        ; preds = %bb.bk
  %i.ry = tail call i32 @__overflow(ptr noundef nonnull %i.rs, i32 noundef 0), !inline_history !0
  %.not.i.i204 = icmp eq i32 %i.ry, -1
  br i1 %.not.i.i204, label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit207, label %bb.bl

bb.bl:                                            ; preds = %putc_unlocked.exit.i.i203, %putc_unlocked.exit.thread.i.i206
  %i.rz = getelementptr inbounds nuw i8, ptr %i.op, i64 48 ; 2 uses
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !45
  %i.sb = add i64 %i.sa, 1
  store i64 %i.sb, ptr %i.rz, align 8, !tbaa !45
  br label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit207

bb.bm:                                            ; preds = %._crit_edge251
  %i.sc = getelementptr inbounds nuw i8, ptr %i.op, i64 48 ; 4 uses
  %i.sd = load ptr, ptr %i.oq, align 8, !tbaa !35 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 40 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !41 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 48
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !42
  %.not.i.i.i210 = icmp ult ptr %i.sf, %i.sh
  br i1 %.not.i.i.i210, label %putc_unlocked.exit.thread.i.i215, label %putc_unlocked.exit.i.i211, !prof !43

putc_unlocked.exit.thread.i.i215:                 ; preds = %bb.bm
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 1
  store ptr %i.si, ptr %i.se, align 8, !tbaa !41
  store i8 48, ptr %i.sf, align 1, !tbaa !44
  br label %bb.bn

putc_unlocked.exit.i.i211:                        ; preds = %bb.bm
  %i.sj = tail call i32 @__overflow(ptr noundef nonnull %i.sd, i32 noundef 48), !inline_history !0
  %.not.i.i212 = icmp eq i32 %i.sj, -1
  br i1 %.not.i.i212, label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit207, label %bb.bn

bb.bn:                                            ; preds = %putc_unlocked.exit.i.i211, %putc_unlocked.exit.thread.i.i215
  %i.sk = load i64, ptr %i.sc, align 8, !tbaa !45
  %i.sl = add i64 %i.sk, 1
  store i64 %i.sl, ptr %i.sc, align 8, !tbaa !45
  %i.sm = load ptr, ptr %i.oq, align 8, !tbaa !35 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 40 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !41 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 48
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !42
  %.not.i.i.i210.1 = icmp ult ptr %i.so, %i.sq
  br i1 %.not.i.i.i210.1, label %putc_unlocked.exit.thread.i.i215.1, label %putc_unlocked.exit.i.i211.1, !prof !43

putc_unlocked.exit.i.i211.1:                      ; preds = %bb.bn
  %i.sr = tail call i32 @__overflow(ptr noundef nonnull %i.sm, i32 noundef 10), !inline_history !0
  %.not.i.i212.1 = icmp eq i32 %i.sr, -1
  br i1 %.not.i.i212.1, label %_ZN7CaDiCaL10LratTracer15put_binary_zeroEv.exit207, label %bb.bo

putc_unlocked.exit.thread.i.i215.1:               ; preds = %bb.bn
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 1
end_hunk_1
