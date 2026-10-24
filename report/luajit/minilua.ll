Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@close_func:bb.a
  %i.cq = shl nsw i64 %i.cp, 2                    ; 2 uses
  %i.cr = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !78
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !79
  %i.cw = tail call ptr %i.ct(ptr noundef %i.cv, ptr noundef %i.ck, i64 noundef %i.co, i64 noundef %i.cq) #33, !inline_history !8 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  %i.cy = icmp ne i32 %i.ch, 0
  %or.cond.i64 = and i1 %i.cy, %i.cx
  br i1 %or.cond.i64, label %bb.j, label %luaM_realloc_.exit67

bb.j:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !71 ; 3 uses
  %.not.i.i65 = icmp eq ptr %i.da, null
  br i1 %.not.i.i65, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 208
  store volatile i32 4, ptr %i.db, align 8, !tbaa !136
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.dc, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 4, ptr %i.dd, align 2, !tbaa !74
  %i.de = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !84
  %.not10.i.i66 = icmp eq ptr %i.dg, null
  br i1 %.not10.i.i66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @resetstack(ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !7
  %i.dh = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 152
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !84
  %i.dk = tail call i32 %i.dj(ptr noundef nonnull %i.b) #33, !inline_history !7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaM_realloc_.exit67:                             ; preds = %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 120 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !89
  %i.dn = sub nsw i64 %i.cq, %i.co
  %i.do = add i64 %i.dn, %i.dm
  store i64 %i.do, ptr %i.dl, align 8, !tbaa !89
  store ptr %i.cw, ptr %i.cj, align 8, !tbaa !161
  %i.dp = load i32, ptr %i.ax, align 8, !tbaa !238
  store i32 %i.dp, ptr %i.cl, align 4, !tbaa !202
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !261 ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, -2
  br i1 %i.ds, label %bb.p, label %bb.v

bb.o:                                             ; preds = %luaM_realloc_.exit
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5), !inline_history !9
  unreachable

bb.p:                                             ; preds = %luaM_realloc_.exit67
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !171
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !193
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 4                    ; 2 uses
  %i.dz = sext i32 %i.dr to i64
  %i.ea = shl nsw i64 %i.dz, 4                    ; 2 uses
  %i.eb = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !78
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !79
  %i.eg = tail call ptr %i.ed(ptr noundef %i.ef, ptr noundef %i.du, i64 noundef %i.dy, i64 noundef %i.ea) #33, !inline_history !8 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  %i.ei = icmp ne i32 %i.dr, 0
  %or.cond.i69 = and i1 %i.ei, %i.eh
  br i1 %or.cond.i69, label %bb.q, label %luaM_realloc_.exit72

bb.q:                                             ; preds = %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !71 ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i70, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 208
  store volatile i32 4, ptr %i.el, align 8, !tbaa !136
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.em, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 4, ptr %i.en, align 2, !tbaa !74
  %i.eo = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 152
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !84
  %.not10.i.i71 = icmp eq ptr %i.eq, null
  br i1 %.not10.i.i71, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @resetstack(ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !7
  %i.er = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 152
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !84
  %i.eu = tail call i32 %i.et(ptr noundef nonnull %i.b) #33, !inline_history !7 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaM_realloc_.exit72:                             ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 120 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !89
  %i.ex = sub nsw i64 %i.ea, %i.dy
  %i.ey = add i64 %i.ex, %i.ew
  store i64 %i.ey, ptr %i.ev, align 8, !tbaa !89
  store ptr %i.eg, ptr %i.dt, align 8, !tbaa !171
  %i.ez = load i32, ptr %i.dq, align 8, !tbaa !261
  store i32 %i.ez, ptr %i.dv, align 4, !tbaa !193
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !262 ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, -2
  br i1 %i.fc, label %bb.w, label %bb.ac

bb.v:                                             ; preds = %luaM_realloc_.exit67
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5), !inline_history !9
  unreachable

bb.w:                                             ; preds = %luaM_realloc_.exit72
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !178
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !196
  %i.fh = sext i32 %i.fg to i64
  %i.fi = shl nsw i64 %i.fh, 3                    ; 2 uses
  %i.fj = sext i32 %i.fb to i64
  %i.fk = shl nsw i64 %i.fj, 3                    ; 2 uses
  %i.fl = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !78
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !79
  %i.fq = tail call ptr %i.fn(ptr noundef %i.fp, ptr noundef %i.fe, i64 noundef %i.fi, i64 noundef %i.fk) #33, !inline_history !8 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  %i.fs = icmp ne i32 %i.fb, 0
  %or.cond.i74 = and i1 %i.fs, %i.fr
  br i1 %or.cond.i74, label %bb.x, label %luaM_realloc_.exit77

bb.x:                                             ; preds = %bb.w
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !71 ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i75, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 208
  store volatile i32 4, ptr %i.fv, align 8, !tbaa !136
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.fw, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 4, ptr %i.fx, align 2, !tbaa !74
  %i.fy = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 152
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !84
  %.not10.i.i76 = icmp eq ptr %i.ga, null
  br i1 %.not10.i.i76, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @resetstack(ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !7
  %i.gb = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 152
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !84
  %i.ge = tail call i32 %i.gd(ptr noundef nonnull %i.b) #33, !inline_history !7 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaM_realloc_.exit77:                             ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fl, i64 120 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !89
  %i.gh = sub nsw i64 %i.fk, %i.fi
  %i.gi = add i64 %i.gh, %i.gg
  store i64 %i.gi, ptr %i.gf, align 8, !tbaa !89
  store ptr %i.fq, ptr %i.fd, align 8, !tbaa !178
  %i.gj = load i32, ptr %i.fa, align 4, !tbaa !262
  store i32 %i.gj, ptr %i.ff, align 8, !tbaa !196
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 8, !tbaa !263 ; 3 uses
  %1 = icmp sgt i16 %i.gl, -2
  br i1 %1, label %bb.ad, label %bb.aj

bb.ac:                                            ; preds = %luaM_realloc_.exit72
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5), !inline_history !9
  unreachable

bb.ad:                                            ; preds = %luaM_realloc_.exit77
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !198
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 92 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !197
  %i.gq = sext i32 %i.gp to i64
  %i.gr = shl nsw i64 %i.gq, 4                    ; 2 uses
  %2 = sext i16 %i.gl to i64
  %i.gs = shl nsw i64 %2, 4                       ; 2 uses
  %i.gt = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !78
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !79
  %i.gy = tail call ptr %i.gv(ptr noundef %i.gx, ptr noundef %i.gn, i64 noundef %i.gr, i64 noundef %i.gs) #33, !inline_history !8 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, null
  %i.ha = icmp ne i16 %i.gl, 0
  %or.cond.i79 = and i1 %i.ha, %i.gz
  br i1 %or.cond.i79, label %bb.ae, label %luaM_realloc_.exit82

bb.ae:                                            ; preds = %bb.ad
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !71 ; 3 uses
  %.not.i.i80 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i80, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 208
  store volatile i32 4, ptr %i.hd, align 8, !tbaa !136
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.he, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 4, ptr %i.hf, align 2, !tbaa !74
  %i.hg = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 152
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !84
  %.not10.i.i81 = icmp eq ptr %i.hi, null
  br i1 %.not10.i.i81, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @resetstack(ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !7
  %i.hj = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 152
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !84
  %i.hm = tail call i32 %i.hl(ptr noundef nonnull %i.b) #33, !inline_history !7 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaM_realloc_.exit82:                             ; preds = %bb.ad
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gt, i64 120 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !89
  %i.hp = sub nsw i64 %i.gs, %i.gr
  %i.hq = add i64 %i.hp, %i.ho
  store i64 %i.hq, ptr %i.hn, align 8, !tbaa !89
  store ptr %i.gy, ptr %i.gm, align 8, !tbaa !198
  %i.hr = load i16, ptr %i.gk, align 8, !tbaa !263
  %i.hs = sext i16 %i.hr to i32
  store i32 %i.hs, ptr %i.go, align 4, !tbaa !197
  %i.ht = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !180 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !195
  %i.hx = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !194
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i64 %i.hz, 3                    ; 2 uses
  %i.ib = zext i8 %i.hu to i64
  %i.ic = shl nuw nsw i64 %i.ib, 3                ; 2 uses
  %i.id = load ptr, ptr %i.bi, align 8, !tbaa !68 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !78
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !79
  %i.ii = tail call ptr %i.if(ptr noundef %i.ih, ptr noundef %i.hw, i64 noundef %i.ia, i64 noundef %i.ic) #33, !inline_history !8 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  %i.ik = icmp ne i8 %i.hu, 0
  %or.cond.i84 = and i1 %i.ik, %i.ij
  br i1 %or.cond.i84, label %bb.ak, label %luaM_realloc_.exit87

bb.aj:                                            ; preds = %luaM_realloc_.exit77
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.5), !inline_history !9
  unreachable

bb.ak:                                            ; preds = %luaM_realloc_.exit82
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !71 ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.im, null
  br i1 %.not.i.i85, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 208
  store volatile i32 4, ptr %i.in, align 8, !tbaa !136
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.io, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 4, ptr %i.ip, align 2, !tbaa !74
  %i.iq = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 152
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !84
  %.not10.i.i86 = icmp eq ptr %i.is, null
  br i1 %.not10.i.i86, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @resetstack(ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !7
  %i.it = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 152
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !84
  %i.iw = tail call i32 %i.iv(ptr noundef nonnull %i.b) #33, !inline_history !7 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaM_realloc_.exit87:                             ; preds = %luaM_realloc_.exit82
  %i.ix = getelementptr inbounds nuw i8, ptr %i.id, i64 120 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !89
  %i.iz = sub nsw i64 %i.ic, %i.ia
  %i.ja = add i64 %i.iz, %i.iy
  store i64 %i.ja, ptr %i.ix, align 8, !tbaa !89
  store ptr %i.ii, ptr %i.hv, align 8, !tbaa !195
  %i.jb = load i8, ptr %i.ht, align 8, !tbaa !180
  %i.jc = zext i8 %i.jb to i32
  store i32 %i.jc, ptr %i.hx, align 8, !tbaa !194
  %i.jd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !235
  store ptr %i.je, ptr %i.c, align 8, !tbaa !222
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !234
  %.off.i = add i32 %i.jg, -285
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.ap, label %anchor_token.exit

bb.ap:                                            ; preds = %luaM_realloc_.exit87
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !81 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !81
  %i.jm = tail call fastcc ptr @luaX_newstring(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.jj, i64 noundef %i.jl) ; 0 uses
  br label %anchor_token.exit

anchor_token.exit:                                ; preds = %luaM_realloc_.exit87, %bb.ap
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !95
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -32
  store ptr %i.jp, ptr %i.jn, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 256) i32 @luaZ_fill(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127
  %i.h = call ptr %i.e(ptr noundef %i.c, ptr noundef %i.g, ptr noundef nonnull %i.a) #33 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i64 %i.j, -1
  store i64 %i.l, ptr %0, align 8, !tbaa !226
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.n, ptr %i.m, align 8, !tbaa !227
  %i.o = load i8, ptr %i.h, align 1, !tbaa !81
  %i.p = zext i8 %i.o to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 96, 95) i32 @llex(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 12 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
end_hunk_0
