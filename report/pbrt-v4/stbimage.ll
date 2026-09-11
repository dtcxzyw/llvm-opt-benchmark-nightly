Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %.sink.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.d, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ai = phi ptr [ %i.e, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.aj = phi ptr [ %i.g, %bb.b ], [ %i.ah, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.c, %bb.c ] ; 4 uses
  %.0.i = phi i8 [ %i.h, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ] ; 3 uses
  %i.ak = zext i8 %.0.i to i32                    ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.ai
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !30
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit228

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !27
  %.not.i223 = icmp eq i32 %i.ap, 0
  br i1 %.not.i223, label %_ZL10stbi__get8P13stbi__context.exit228, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !26
  %i.ax = tail call noundef i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %i.au, i32 noundef %i.aw), !inline_history !6 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !28
  %i.bh = add nsw i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !28
  %i.bi = icmp eq i32 %i.ax, 0
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ao, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.au, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i225

bb.k:                                             ; preds = %bb.i
  %i.bk = sext i32 %i.ax to i64
  %i.bl = getelementptr inbounds i8, ptr %i.au, i64 %i.bk
  %.pre.i224 = load i8, ptr %i.au, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i225

_ZL19stbi__refill_bufferP13stbi__context.exit.i225: ; preds = %bb.k, %bb.j
  %i.bm = phi i8 [ 0, %bb.j ], [ %.pre.i224, %bb.k ]
  %.sink.i.i226 = phi ptr [ %i.bj, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  store ptr %.sink.i.i226, ptr %i.d, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit228

_ZL10stbi__get8P13stbi__context.exit228:          ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i225
  %i.bo = phi ptr [ %i.ai, %bb.g ], [ %.sink.i.i226, %_ZL19stbi__refill_bufferP13stbi__context.exit.i225 ], [ %i.ai, %bb.h ]
  %i.bp = phi ptr [ %i.am, %bb.g ], [ %i.bn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i225 ], [ %i.aj, %bb.h ] ; 3 uses
  %.0.i227 = phi i8 [ %i.an, %bb.g ], [ %i.bm, %_ZL19stbi__refill_bufferP13stbi__context.exit.i225 ], [ 0, %bb.h ]
  %i.bq = icmp ult ptr %i.bp, %i.bo
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit228
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.br, ptr %i.b, align 8, !tbaa !30
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit234

bb.m:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit228
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !27
  %.not.i229 = icmp eq i32 %i.bu, 0
  br i1 %.not.i229, label %_ZL10stbi__get8P13stbi__context.exit234, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !26
  %i.cc = tail call noundef i32 %i.bw(ptr noundef %i.by, ptr noundef nonnull %i.bz, i32 noundef %i.cb), !inline_history !6 ; 2 uses
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !28
  %i.cm = add nsw i32 %i.cl, %i.cj
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !28
  %i.cn = icmp eq i32 %i.cc, 0
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bt, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.bz, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i231

bb.p:                                             ; preds = %bb.n
  %i.cp = sext i32 %i.cc to i64
  %i.cq = getelementptr inbounds i8, ptr %i.bz, i64 %i.cp
  %.pre.i230 = load i8, ptr %i.bz, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i231

_ZL19stbi__refill_bufferP13stbi__context.exit.i231: ; preds = %bb.p, %bb.o
  %i.cr = phi i8 [ 0, %bb.o ], [ %.pre.i230, %bb.p ]
  %.sink.i.i232 = phi ptr [ %i.co, %bb.o ], [ %i.cq, %bb.p ]
  store ptr %.sink.i.i232, ptr %i.d, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit234

_ZL10stbi__get8P13stbi__context.exit234:          ; preds = %bb.l, %bb.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i231
  %.0.i233 = phi i8 [ %i.bs, %bb.l ], [ %i.cr, %_ZL19stbi__refill_bufferP13stbi__context.exit.i231 ], [ 0, %bb.m ] ; 2 uses
  %i.ct = zext i8 %.0.i233 to i32                 ; 2 uses
  %i.cu = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 4 uses
  %i.cv = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 4 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.cy = icmp ult ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit234
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cz, ptr %i.b, align 8, !tbaa !30
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit240

bb.r:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit234
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !27
  %.not.i235 = icmp eq i32 %i.dc, 0
  br i1 %.not.i235, label %_ZL10stbi__get8P13stbi__context.exit240, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !26
  %i.dk = tail call noundef i32 %i.de(ptr noundef %i.dg, ptr noundef nonnull %i.dh, i32 noundef %i.dj), !inline_history !6 ; 2 uses
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !28
  %i.du = add nsw i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !28
  %i.dv = icmp eq i32 %i.dk, 0
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.db, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.dh, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i237

bb.u:                                             ; preds = %bb.s
  %i.dx = sext i32 %i.dk to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dh, i64 %i.dx
  %.pre.i236 = load i8, ptr %i.dh, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i237

_ZL19stbi__refill_bufferP13stbi__context.exit.i237: ; preds = %bb.u, %bb.t
  %i.dz = phi i8 [ 0, %bb.t ], [ %.pre.i236, %bb.u ]
  %.sink.i.i238 = phi ptr [ %i.dw, %bb.t ], [ %i.dy, %bb.u ]
  store ptr %.sink.i.i238, ptr %i.d, align 8, !tbaa !33
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ea, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit240

_ZL10stbi__get8P13stbi__context.exit240:          ; preds = %bb.q, %bb.r, %_ZL19stbi__refill_bufferP13stbi__context.exit.i237
  %.0.i239 = phi i8 [ %i.da, %bb.q ], [ %i.dz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i237 ], [ 0, %bb.r ] ; 2 uses
  %i.eb = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ec = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ed = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 10 uses
  %i.ee = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 18 uses
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !30  ; 4 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  %i.eh = icmp ult ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit240
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !30
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit246

bb.w:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit240
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !27
  %.not.i241 = icmp eq i32 %i.el, 0
  br i1 %.not.i241, label %_ZL10stbi__get8P13stbi__context.exit246, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !31
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.es = load i32, ptr %i.er, align 4, !tbaa !26
  %i.et = tail call noundef i32 %i.en(ptr noundef %i.ep, ptr noundef nonnull %i.eq, i32 noundef %i.es), !inline_history !6 ; 2 uses
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !29
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !28
  %i.fd = add nsw i32 %i.fc, %i.fa
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !28
  %i.fe = icmp eq i32 %i.et, 0
  br i1 %i.fe, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ek, align 8, !tbaa !27
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.eq, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i243

bb.z:                                             ; preds = %bb.x
  %i.fg = sext i32 %i.et to i64
  %i.fh = getelementptr inbounds i8, ptr %i.eq, i64 %i.fg
  %.pre.i242 = load i8, ptr %i.eq, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i243

_ZL19stbi__refill_bufferP13stbi__context.exit.i243: ; preds = %bb.z, %bb.y
  %i.fi = phi i8 [ 0, %bb.y ], [ %.pre.i242, %bb.z ]
  %.sink.i.i244 = phi ptr [ %i.ff, %bb.y ], [ %i.fh, %bb.z ] ; 2 uses
  store ptr %.sink.i.i244, ptr %i.d, align 8, !tbaa !33
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.fj, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit246

_ZL10stbi__get8P13stbi__context.exit246:          ; preds = %bb.v, %bb.w, %_ZL19stbi__refill_bufferP13stbi__context.exit.i243
  %i.fk = phi ptr [ %i.eg, %bb.v ], [ %.sink.i.i244, %_ZL19stbi__refill_bufferP13stbi__context.exit.i243 ], [ %i.eg, %bb.w ] ; 3 uses
  %i.fl = phi ptr [ %i.ei, %bb.v ], [ %i.fj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i243 ], [ %i.ef, %bb.w ] ; 4 uses
  %.0.i245 = phi i8 [ %i.ej, %bb.v ], [ %i.fi, %_ZL19stbi__refill_bufferP13stbi__context.exit.i243 ], [ 0, %bb.w ] ; 3 uses
  %i.fm = icmp ult ptr %i.fl, %i.fk
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit246
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 2 uses
  store ptr %i.fn, ptr %i.b, align 8, !tbaa !30
  %i.fo = load i8, ptr %i.fl, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit252

bb.ab:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit246
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !27
  %.not.i247 = icmp eq i32 %i.fq, 0
  br i1 %.not.i247, label %_ZL10stbi__get8P13stbi__context.exit252, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !31
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !25
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !26
  %i.fy = tail call noundef i32 %i.fs(ptr noundef %i.fu, ptr noundef nonnull %i.fv, i32 noundef %i.fx), !inline_history !6 ; 2 uses
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !29
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !28
  %i.gi = add nsw i32 %i.gh, %i.gf
  store i32 %i.gi, ptr %i.gg, align 8, !tbaa !28
  %i.gj = icmp eq i32 %i.fy, 0
  br i1 %i.gj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.fp, align 8, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.fv, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i249

bb.ae:                                            ; preds = %bb.ac
  %i.gl = sext i32 %i.fy to i64
  %i.gm = getelementptr inbounds i8, ptr %i.fv, i64 %i.gl
  %.pre.i248 = load i8, ptr %i.fv, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i249

_ZL19stbi__refill_bufferP13stbi__context.exit.i249: ; preds = %bb.ae, %bb.ad
  %i.gn = phi i8 [ 0, %bb.ad ], [ %.pre.i248, %bb.ae ]
  %.sink.i.i250 = phi ptr [ %i.gk, %bb.ad ], [ %i.gm, %bb.ae ] ; 2 uses
  store ptr %.sink.i.i250, ptr %i.d, align 8, !tbaa !33
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.go, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit252

_ZL10stbi__get8P13stbi__context.exit252:          ; preds = %bb.aa, %bb.ab, %_ZL19stbi__refill_bufferP13stbi__context.exit.i249
  %.pre.i261 = phi ptr [ %i.fn, %bb.aa ], [ %i.go, %_ZL19stbi__refill_bufferP13stbi__context.exit.i249 ], [ %i.fl, %bb.ab ] ; 2 uses
  %i.gp = phi ptr [ %i.fk, %bb.aa ], [ %.sink.i.i250, %_ZL19stbi__refill_bufferP13stbi__context.exit.i249 ], [ %i.fk, %bb.ab ] ; 2 uses
  %.0.i251 = phi i8 [ %i.fo, %bb.aa ], [ %i.gn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i249 ], [ 0, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4
  %i.gq = icmp ugt i8 %.0.i233, 7                 ; 3 uses
  %.0.i251.fr = freeze i8 %.0.i251
  %i.gr = lshr i8 %.0.i251.fr, 5
  %i.gs = and i8 %i.gr, 1                         ; 2 uses
  %i.gt = icmp ne i8 %.0.i227, 0                  ; 4 uses
  br i1 %i.gt, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit252
  switch i8 %.0.i239, label %_ZL18stbi__tga_get_compiiPi.exit [
    i8 8, label %bb.al
    i8 16, label %bb.ag
    i8 15, label %bb.ag
    i8 24, label %bb.ah
    i8 32, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.aj, %bb.ai, %bb.af, %bb.af
  br label %bb.al

bb.ah:                                            ; preds = %bb.af, %bb.af
  %i.gu = lshr i8 %.0.i239, 3
  br label %bb.al

bb.ai:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit252
  switch i8 %.0.i245, label %_ZL18stbi__tga_get_compiiPi.exit [
    i8 8, label %bb.al
    i8 16, label %bb.aj
    i8 15, label %bb.ag
    i8 24, label %bb.ak
    i8 32, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gv = add nsw i32 %i.ct, -8
  %.0180 = select i1 %i.gq, i32 %i.gv, i32 %i.ct
  %i.gw = icmp eq i32 %.0180, 3
  br i1 %i.gw, label %bb.al, label %bb.ag

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %i.gx = lshr i8 %.0.i245, 3
  br label %bb.al

_ZL18stbi__tga_get_compiiPi.exit:                 ; preds = %bb.ai, %bb.af
  %i.gy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.83, ptr %i.gy, align 8, !tbaa !19
  br label %bb.cu

bb.al:                                            ; preds = %bb.ag, %bb.ah, %bb.af, %bb.ak, %bb.ai, %bb.aj
  %i.gz = phi i1 [ false, %bb.ak ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.ai ], [ true, %bb.ag ], [ false, %bb.af ] ; 2 uses
  %.not211 = phi i1 [ true, %bb.ak ], [ true, %bb.ah ], [ true, %bb.aj ], [ true, %bb.ai ], [ false, %bb.ag ], [ true, %bb.af ] ; 2 uses
  %.0195.ph.shrunk = phi i8 [ %i.gx, %bb.ak ], [ %i.gu, %bb.ah ], [ 2, %bb.aj ], [ 1, %bb.ai ], [ 3, %bb.ag ], [ 1, %bb.af ] ; 7 uses
  %.0195.ph = zext nneg i8 %.0195.ph.shrunk to i32 ; 11 uses
  store i32 %i.ed, ptr %1, align 4, !tbaa !20
  store i32 %i.ee, ptr %2, align 4, !tbaa !20
  %.not206 = icmp eq ptr %3, null
  br i1 %.not206, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %.0195.ph, ptr %3, align 4, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ha = icmp eq i32 %i.ee, 0                    ; 2 uses
  br i1 %i.ha, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.an
  %i.hb = udiv i32 2147483647, %i.ee
  %.not23.i = icmp samesign ugt i32 %i.ed, %i.hb
  br i1 %.not23.i, label %bb.ao, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %bb.an
  %i.hc = mul nuw nsw i32 %i.ee, %i.ed            ; 2 uses
  %i.hd = udiv i32 2147483647, %.0195.ph
  %.not.i258 = icmp samesign ugt i32 %i.hc, %i.hd
  br i1 %.not.i258, label %bb.ao, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i
  %i.he = mul nuw nsw i32 %i.ee, %i.ed            ; 2 uses
  %i.hf = udiv i32 2147483647, %.0195.ph
  %.not.i258159 = icmp samesign ugt i32 %i.he, %i.hf
  br i1 %.not.i258159, label %bb.ao, label %_ZL21stbi__mul2sizes_validii.exit.i.i

bb.ao:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread, %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %_ZL21stbi__mul2sizes_validii.exit.i
  %i.hg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.hg, align 8, !tbaa !19
  br label %bb.cu

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread
  %i.hh = udiv i32 2147483647, %i.ee
  %.not23.i.i = icmp samesign ugt i32 %i.ed, %i.hh
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.hi = phi i32 [ %i.he, %_ZL21stbi__mul2sizes_validii.exit.i.i ], [ %i.hc, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ] ; 7 uses
  %i.hj = mul nuw nsw i32 %i.hi, %.0195.ph
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.hk) #42 ; 28 uses
  %.not208 = icmp eq ptr %i.hl, null
  br i1 %.not208, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.ap

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  %i.hm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.hm, align 8, !tbaa !19
  br label %bb.cu

bb.ap:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.hn = icmp eq i8 %.0.i, 0
  br i1 %i.hn, label %_ZL10stbi__skipP13stbi__contexti.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !31
  %.not.i260 = icmp eq ptr %i.hp, null
  br i1 %.not.i260, label %.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hq = ptrtoint ptr %i.gp to i64
  %i.hr = ptrtoint ptr %.pre.i261 to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = trunc i64 %i.hs to i32                  ; 2 uses
  %i.hu = icmp sgt i32 %i.ak, %i.ht
  br i1 %i.hu, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !30
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !62
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !25
  %i.hz = sub nsw i32 %i.ak, %i.ht
  tail call void %i.hw(ptr noundef %i.hy, i32 noundef %i.hz), !inline_history !112
  br label %_ZL10stbi__skipP13stbi__contexti.exit

.thread.i:                                        ; preds = %bb.aq, %bb.ar
  %i.ia = zext i8 %.0.i to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %.pre.i261, i64 %i.ia
  store ptr %i.ib, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__skipP13stbi__contexti.exit

_ZL10stbi__skipP13stbi__contexti.exit:            ; preds = %bb.ap, %bb.as, %.thread.i
  %or.cond = or i1 %i.gt, %i.gq
  %or.cond3 = or i1 %or.cond, %i.gz
  br i1 %or.cond3, label %bb.bc, label %.preheader31

.preheader31:                                     ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.ha, label %.loopexit32, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader31
  %.not209.not = icmp eq i8 %i.gs, 0              ; 2 uses
  %i.ic = mul nuw nsw i32 %i.ed, %.0195.ph        ; 12 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.if = zext nneg i32 %i.ic to i64              ; 18 uses
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !31
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre35.i.us = load ptr, ptr %i.d, align 8, !tbaa !33 ; 8 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !30 ; 4 uses
  %wide.trip.count68 = zext nneg i32 %i.ee to i64 ; 4 uses
  br i1 %.not209.not, label %..thread_crit_edge.i264.us.us.preheader, label %..thread_crit_edge.i264.us.preheader

..thread_crit_edge.i264.us.preheader:             ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count68, 3       ; 3 uses
  %i.ii = icmp samesign ult i32 %i.ee, 4
  br i1 %i.ii, label %..thread_crit_edge.i264.us.epil.preheader, label %..thread_crit_edge.i264.us.preheader.new

..thread_crit_edge.i264.us.preheader.new:         ; preds = %..thread_crit_edge.i264.us.preheader
  %unroll_iter = and i64 %wide.trip.count68, 65532
  br label %..thread_crit_edge.i264.us

..thread_crit_edge.i264.us.us.preheader:          ; preds = %.lr.ph.split.us
  %xtraiter194 = and i64 %wide.trip.count68, 1
  %i.ij = icmp eq i32 %i.ee, 1
  br i1 %i.ij, label %..thread_crit_edge.i264.us.us.epil.preheader, label %..thread_crit_edge.i264.us.us.preheader.new

..thread_crit_edge.i264.us.us.preheader.new:      ; preds = %..thread_crit_edge.i264.us.us.preheader
  %unroll_iter200 = and i64 %wide.trip.count68, 65534
  br label %..thread_crit_edge.i264.us.us

..thread_crit_edge.i264.us.us:                    ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, %..thread_crit_edge.i264.us.us.preheader.new
  %indvars.iv65 = phi i64 [ 0, %..thread_crit_edge.i264.us.us.preheader.new ], [ %indvars.iv.next66.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %i.ik = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.us.preheader.new ], [ %i.ja, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %niter201 = phi i64 [ 0, %..thread_crit_edge.i264.us.us.preheader.new ], [ %niter201.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.if ; 3 uses
  %.not32.i.us.us = icmp ugt ptr %i.il, %.pre35.i.us
  br i1 %.not32.i.us.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us, label %bb.at

bb.at:                                            ; preds = %..thread_crit_edge.i264.us.us
  %i.im = trunc i64 %indvars.iv65 to i32
  %i.in = xor i32 %i.im, -1
  %i.io = add i32 %i.ee, %i.in
  %i.ip = mul i32 %i.ic, %i.io
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %i.hl, i64 %i.iq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ir, ptr align 1 %i.ik, i64 %i.if, i1 false)
  store ptr %i.il, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us:    ; preds = %..thread_crit_edge.i264.us.us, %bb.at
  %i.is = phi ptr [ %i.il, %bb.at ], [ %i.ik, %..thread_crit_edge.i264.us.us ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.if ; 3 uses
  %.not32.i.us.us.1 = icmp ugt ptr %i.it, %.pre35.i.us
  br i1 %.not32.i.us.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, label %bb.au

bb.au:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.iu = trunc i64 %indvars.iv65 to i32
  %i.iv = xor i32 %i.iu, -2
  %i.iw = add i32 %i.ee, %i.iv
  %i.ix = mul i32 %i.ic, %i.iw
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds i8, ptr %i.hl, i64 %i.iy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr align 1 %i.is, i64 %i.if, i1 false)
  store ptr %i.it, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1:  ; preds = %bb.au, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.ja = phi ptr [ %i.it, %bb.au ], [ %i.is, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us ] ; 2 uses
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter201.next.1 = add i64 %niter201, 2         ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %.loopexit32.loopexit.unr-lcssa, label %..thread_crit_edge.i264.us.us, !llvm.loop !292

..thread_crit_edge.i264.us:                       ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3, %..thread_crit_edge.i264.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i264.us.preheader.new ], [ %indvars.iv.next.3, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3 ] ; 5 uses
  %i.jb = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.preheader.new ], [ %i.kc, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i264.us.preheader.new ], [ %niter.next.3, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.if ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.jc, %.pre35.i.us
  br i1 %.not32.i.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us, label %bb.av

bb.av:                                            ; preds = %..thread_crit_edge.i264.us
  %i.jd = trunc nuw nsw i64 %indvars.iv to i32
  %i.je = mul i32 %i.ic, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.hl, i64 %i.jf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr align 1 %i.jb, i64 %i.if, i1 false)
  store ptr %i.jc, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us:       ; preds = %bb.av, %..thread_crit_edge.i264.us
  %i.jh = phi ptr [ %i.jc, %bb.av ], [ %i.jb, %..thread_crit_edge.i264.us ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.if ; 3 uses
  %.not32.i.us.1 = icmp ugt ptr %i.ji, %.pre35.i.us
  br i1 %.not32.i.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, label %bb.aw

bb.aw:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.jj = trunc i64 %indvars.iv to i32
  %i.jk = or disjoint i32 %i.jj, 1
  %i.jl = mul i32 %i.ic, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %i.hl, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jn, ptr align 1 %i.jh, i64 %i.if, i1 false)
  store ptr %i.ji, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.1:     ; preds = %bb.aw, %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.jo = phi ptr [ %i.ji, %bb.aw ], [ %i.jh, %_ZL10stbi__getnP13stbi__contextPhi.exit.us ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.if ; 3 uses
  %.not32.i.us.2 = icmp ugt ptr %i.jp, %.pre35.i.us
  br i1 %.not32.i.us.2, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2, label %bb.ax

bb.ax:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1
  %i.jq = trunc i64 %indvars.iv to i32
  %i.jr = or disjoint i32 %i.jq, 2
  %i.js = mul i32 %i.ic, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %i.hl, i64 %i.jt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.jo, i64 %i.if, i1 false)
  store ptr %i.jp, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2

_ZL10stbi__getnP13stbi__contextPhi.exit.us.2:     ; preds = %bb.ax, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1
  %i.jv = phi ptr [ %i.jp, %bb.ax ], [ %i.jo, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.if ; 3 uses
  %.not32.i.us.3 = icmp ugt ptr %i.jw, %.pre35.i.us
  br i1 %.not32.i.us.3, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3, label %bb.ay

bb.ay:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2
  %i.jx = trunc i64 %indvars.iv to i32
  %i.jy = or disjoint i32 %i.jx, 3
  %i.jz = mul i32 %i.ic, %i.jy
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds i8, ptr %i.hl, i64 %i.ka
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kb, ptr align 1 %i.jv, i64 %i.if, i1 false)
  store ptr %i.jw, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3

_ZL10stbi__getnP13stbi__contextPhi.exit.us.3:     ; preds = %bb.ay, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2
  %i.kc = phi ptr [ %i.jw, %bb.ay ], [ %i.jv, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.2 ] ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit32.loopexit191.unr-lcssa, label %..thread_crit_edge.i264.us, !llvm.loop !292

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %.018933 = phi i32 [ %i.la, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.kd = xor i32 %.018933, -1
  %i.ke = add nsw i32 %i.ee, %i.kd
  %i.kf = select i1 %.not209.not, i32 %i.ke, i32 %.018933
  %i.kg = mul i32 %i.ic, %i.kf
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %i.hl, i64 %i.kh ; 3 uses
  %i.kj = load ptr, ptr %i.id, align 8, !tbaa !31 ; 2 uses
  %.not.i262 = icmp eq ptr %i.kj, null
  br i1 %.not.i262, label %..thread_crit_edge.i264, label %bb.az

..thread_crit_edge.i264:                          ; preds = %.lr.ph.split
  %.pre.i266 = load ptr, ptr %i.b, align 8, !tbaa !30
  %.pre35.i = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %.thread.i263

bb.az:                                            ; preds = %.lr.ph.split
  %i.kk = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.kl = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn                    ; 2 uses
  %i.kp = trunc i64 %i.ko to i32                  ; 2 uses
  %i.kq = icmp sgt i32 %i.ic, %i.kp
  br i1 %i.kq, label %bb.ba, label %.thread.i263

bb.ba:                                            ; preds = %bb.az
  %sext.i = shl i64 %i.ko, 32
  %i.kr = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ki, ptr align 1 %i.kl, i64 %i.kr, i1 false)
  %i.ks = load ptr, ptr %i.ie, align 8, !tbaa !25
  %i.kt = getelementptr inbounds i8, ptr %i.ki, i64 %i.kr
  %i.ku = sub nsw i32 %i.ic, %i.kp
  %i.kv = tail call noundef i32 %i.kj(ptr noundef %i.ks, ptr noundef nonnull %i.kt, i32 noundef %i.ku), !inline_history !110 ; 0 uses
  %i.kw = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

.thread.i263:                                     ; preds = %bb.az, %..thread_crit_edge.i264
  %i.kx = phi ptr [ %.pre35.i, %..thread_crit_edge.i264 ], [ %i.kk, %bb.az ]
  %i.ky = phi ptr [ %.pre.i266, %..thread_crit_edge.i264 ], [ %i.kl, %bb.az ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.if ; 2 uses
  %.not32.i = icmp ugt ptr %i.kz, %i.kx
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.bb

bb.bb:                                            ; preds = %.thread.i263
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ki, ptr align 1 %i.ky, i64 %i.if, i1 false)
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split: ; preds = %bb.bb, %bb.ba
  %.sink = phi ptr [ %i.kw, %bb.ba ], [ %i.kz, %bb.bb ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split, %.thread.i263
  %i.la = add nuw nsw i32 %.018933, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.la, %i.ee
  br i1 %exitcond.not, label %.loopexit32, label %.lr.ph.split, !llvm.loop !293

bb.bc:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.gt, label %bb.bd, label %.loopexit30

bb.bd:                                            ; preds = %bb.bc
  %i.lb = icmp eq i32 %i.cv, 0
  br i1 %i.lb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call void @free(ptr noundef nonnull %i.hl) #40
  %i.lc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.84, ptr %i.lc, align 8, !tbaa !19
  br label %bb.cu

bb.bf:                                            ; preds = %bb.bd
  %i.ld = icmp eq i32 %i.cu, 0
  br i1 %i.ld, label %_ZL10stbi__skipP13stbi__contexti.exit272, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !31
  %.not.i267 = icmp eq ptr %i.lf, null
  br i1 %.not.i267, label %..thread_crit_edge.i269, label %bb.bh

..thread_crit_edge.i269:                          ; preds = %bb.bg
  %.pre.i271 = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %.thread.i268

bb.bh:                                            ; preds = %bb.bg
  %i.lg = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.lh = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = trunc i64 %i.lk to i32                  ; 2 uses
  %i.lm = icmp sgt i32 %i.cu, %i.ll
  br i1 %i.lm, label %bb.bi, label %.thread.i268

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !30
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !62
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !25
  %i.lr = sub nsw i32 %i.cu, %i.ll
  tail call void %i.lo(ptr noundef %i.lq, i32 noundef %i.lr), !inline_history !112
  br label %_ZL10stbi__skipP13stbi__contexti.exit272

.thread.i268:                                     ; preds = %bb.bh, %..thread_crit_edge.i269
  %i.ls = phi ptr [ %.pre.i271, %..thread_crit_edge.i269 ], [ %i.lh, %bb.bh ]
  %i.lt = zext nneg i32 %i.cu to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lt
  store ptr %i.lu, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__skipP13stbi__contexti.exit272

_ZL10stbi__skipP13stbi__contexti.exit272:         ; preds = %bb.bf, %bb.bi, %.thread.i268
  %i.lv = mul nuw nsw i32 %i.cv, %.0195.ph        ; 2 uses
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.lw) #42 ; 6 uses
  %.not210 = icmp eq ptr %i.lx, null
  br i1 %.not210, label %_ZL17stbi__malloc_mad2iii.exit.thread, label %bb.bj

_ZL17stbi__malloc_mad2iii.exit.thread:            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit272
  tail call void @free(ptr noundef nonnull %i.hl) #40
  %i.ly = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.ly, align 8, !tbaa !19
  br label %bb.cu

bb.bj:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit272
  br i1 %.not211, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lz = icmp eq i8 %.0195.ph.shrunk, 3
  br i1 %i.lz, label %.preheader29, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 5880, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(21) @.str.85) #41
  unreachable

.preheader29:                                     ; preds = %bb.bk, %.preheader29
  %.017935 = phi ptr [ %i.mr, %.preheader29 ], [ %i.lx, %bb.bk ] ; 4 uses
  %.119034 = phi i32 [ %i.ms, %.preheader29 ], [ 0, %bb.bk ]
  %i.ma = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.mb = getelementptr inbounds nuw i8, ptr %.017935, i64 1
  %i.mc = trunc nuw i32 %i.ma to i16              ; 2 uses
  %i.md = lshr i16 %i.mc, 10
  %i.me = and i16 %i.md, 31
  %.lhs.trunc.i = mul nuw nsw i16 %i.me, 255
  %i.mf = udiv i16 %.lhs.trunc.i, 31
  %i.mg = trunc nuw i16 %i.mf to i8
  store i8 %i.mg, ptr %.017935, align 1, !tbaa !32
  %i.mh = insertelement <2 x i16> poison, i16 %i.mc, i64 0
  %i.mi = shufflevector <2 x i16> %i.mh, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.mj = lshr <2 x i16> %i.mi, <i16 5, i16 0>
  %i.mk = and <2 x i16> %i.mj, splat (i16 31)
  %i.ml = mul nuw nsw <2 x i16> %i.mk, splat (i16 255)
  %i.mm = udiv <2 x i16> %i.ml, splat (i16 31)
  %i.mn = trunc <2 x i16> %i.mm to <2 x i8>       ; 2 uses
  %i.mo = extractelement <2 x i8> %i.mn, i64 0
  store i8 %i.mo, ptr %i.mb, align 1, !tbaa !32
  %i.mp = getelementptr inbounds nuw i8, ptr %.017935, i64 2
  %i.mq = extractelement <2 x i8> %i.mn, i64 1
  store i8 %i.mq, ptr %i.mp, align 1, !tbaa !32
  %i.mr = getelementptr inbounds nuw i8, ptr %.017935, i64 3
  %i.ms = add nuw nsw i32 %.119034, 1             ; 2 uses
  %exitcond70.not = icmp eq i32 %i.ms, %i.cv
  br i1 %exitcond70.not, label %.loopexit30, label %.preheader29, !llvm.loop !294

bb.bm:                                            ; preds = %bb.bj
  %i.mt = tail call fastcc noundef i32 @_ZL10stbi__getnP13stbi__contextPhi(ptr noundef %0, ptr noundef %i.lx, i32 noundef %i.lv)
  %.not212 = icmp eq i32 %i.mt, 0
  br i1 %.not212, label %bb.bn, label %.loopexit30

bb.bn:                                            ; preds = %bb.bm
  tail call void @free(ptr noundef nonnull %i.hl) #40
  tail call void @free(ptr noundef nonnull %i.lx) #40
  %i.mu = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.84, ptr %i.mu, align 8, !tbaa !19
  br label %bb.cu

.loopexit30:                                      ; preds = %.preheader29, %bb.bm, %bb.bc
  %.0193 = phi ptr [ null, %bb.bc ], [ %i.lx, %bb.bm ], [ %i.lx, %.preheader29 ] ; 3 uses
  %.not57 = icmp eq i32 %i.hi, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %.loopexit30
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 7 uses
  %i.nd = icmp eq i8 %.0195.ph.shrunk, 3
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ng = icmp eq i8 %.0.i245, 8
  %i.nh = zext nneg i8 %.0195.ph.shrunk to i64    ; 3 uses
  %wide.trip.count88 = zext nneg i32 %i.hi to i64
  %wide.trip.count75 = zext nneg i8 %.0195.ph.shrunk to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph43, %.loopexit26
  %indvars.iv86 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next87, %.loopexit26 ] ; 2 uses
  %.not218.not = phi i1 [ true, %.lr.ph43 ], [ false, %.loopexit26 ]
  %.018241 = phi i32 [ 0, %.lr.ph43 ], [ %.118323, %.loopexit26 ] ; 2 uses
  %.018440 = phi i32 [ 0, %.lr.ph43 ], [ %i.rb, %.loopexit26 ] ; 4 uses
  %i.ni = trunc nuw nsw i64 %indvars.iv86 to i32
  %i.nj = mul i32 %.0195.ph, %i.ni
  %i.nk = zext i32 %i.nj to i64
  %scevgep81 = getelementptr i8, ptr %i.hl, i64 %i.nk
  br i1 %i.gq, label %bb.bp, label %.thread

bb.bp:                                            ; preds = %bb.bo
  %i.nl = icmp eq i32 %.018440, 0
  br i1 %i.nl, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.nm = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.nn = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.no = icmp ult ptr %i.nm, %i.nn
  br i1 %i.no, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 1
  store ptr %i.np, ptr %i.b, align 8, !tbaa !30
  %i.nq = load i8, ptr %i.nm, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit280

bb.bs:                                            ; preds = %bb.bq
  %i.nr = load i32, ptr %i.mv, align 8, !tbaa !27
  %.not.i275 = icmp eq i32 %i.nr, 0
  br i1 %.not.i275, label %_ZL10stbi__get8P13stbi__context.exit280, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ns = load ptr, ptr %i.mw, align 8, !tbaa !31
  %i.nt = load ptr, ptr %i.mx, align 8, !tbaa !25
  %i.nu = load i32, ptr %i.mz, align 4, !tbaa !26
  %i.nv = tail call noundef i32 %i.ns(ptr noundef %i.nt, ptr noundef nonnull %i.my, i32 noundef %i.nu), !inline_history !6 ; 2 uses
  %i.nw = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.nx = load ptr, ptr %i.na, align 8, !tbaa !29
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = load i32, ptr %i.nb, align 8, !tbaa !28
  %i.od = add nsw i32 %i.oc, %i.ob
  store i32 %i.od, ptr %i.nb, align 8, !tbaa !28
  %i.oe = icmp eq i32 %i.nv, 0
  br i1 %i.oe, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.mv, align 8, !tbaa !27
  store i8 0, ptr %i.my, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i277

bb.bv:                                            ; preds = %bb.bt
  %i.of = sext i32 %i.nv to i64
  %i.og = getelementptr inbounds i8, ptr %i.my, i64 %i.of
  %.pre.i276 = load i8, ptr %i.my, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i277

_ZL19stbi__refill_bufferP13stbi__context.exit.i277: ; preds = %bb.bv, %bb.bu
  %i.oh = phi i8 [ 0, %bb.bu ], [ %.pre.i276, %bb.bv ]
  %.sink.i.i278 = phi ptr [ %i.nc, %bb.bu ], [ %i.og, %bb.bv ]
  store ptr %.sink.i.i278, ptr %i.d, align 8, !tbaa !33
  store ptr %i.nc, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit280

_ZL10stbi__get8P13stbi__context.exit280:          ; preds = %bb.br, %bb.bs, %_ZL19stbi__refill_bufferP13stbi__context.exit.i277
  %.0.i279 = phi i8 [ %i.nq, %bb.br ], [ %i.oh, %_ZL19stbi__refill_bufferP13stbi__context.exit.i277 ], [ 0, %bb.bs ]
  %i.oi = zext i8 %.0.i279 to i32                 ; 2 uses
  %i.oj = and i32 %i.oi, 127
  %i.ok = add nuw nsw i32 %i.oj, 1
  %i.ol = lshr i32 %i.oi, 7
  br label %.thread

bb.bw:                                            ; preds = %bb.bp
  %.not217 = icmp eq i32 %.018241, 0              ; 2 uses
  %brmerge = or i1 %.not217, %.not218.not
  %not..not217 = xor i1 %.not217, true
  %.mux = zext i1 %not..not217 to i32
  br i1 %brmerge, label %.thread, label %.loopexit26

.thread:                                          ; preds = %bb.bw, %bb.bo, %_ZL10stbi__get8P13stbi__context.exit280
  %.118322 = phi i32 [ %.mux, %bb.bw ], [ %i.ol, %_ZL10stbi__get8P13stbi__context.exit280 ], [ %.018241, %bb.bo ] ; 3 uses
  %.118520 = phi i32 [ %.018440, %bb.bw ], [ %i.ok, %_ZL10stbi__get8P13stbi__context.exit280 ], [ %.018440, %bb.bo ] ; 3 uses
  br i1 %i.gt, label %bb.bx, label %bb.cf

bb.bx:                                            ; preds = %.thread
  br i1 %i.ng, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.om = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.on = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.oo = icmp ult ptr %i.om, %i.on
  br i1 %i.oo, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 1
  store ptr %i.op, ptr %i.b, align 8, !tbaa !30
  %i.oq = load i8, ptr %i.om, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit286

bb.ca:                                            ; preds = %bb.by
  %i.or = load i32, ptr %i.mv, align 8, !tbaa !27
  %.not.i281 = icmp eq i32 %i.or, 0
  br i1 %.not.i281, label %_ZL10stbi__get8P13stbi__context.exit286, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.os = load ptr, ptr %i.mw, align 8, !tbaa !31
  %i.ot = load ptr, ptr %i.mx, align 8, !tbaa !25
  %i.ou = load i32, ptr %i.mz, align 4, !tbaa !26
  %i.ov = tail call noundef i32 %i.os(ptr noundef %i.ot, ptr noundef nonnull %i.my, i32 noundef %i.ou), !inline_history !6 ; 2 uses
  %i.ow = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ox = load ptr, ptr %i.na, align 8, !tbaa !29
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = trunc i64 %i.pa to i32
  %i.pc = load i32, ptr %i.nb, align 8, !tbaa !28
  %i.pd = add nsw i32 %i.pc, %i.pb
  store i32 %i.pd, ptr %i.nb, align 8, !tbaa !28
  %i.pe = icmp eq i32 %i.ov, 0
  br i1 %i.pe, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.mv, align 8, !tbaa !27
  store i8 0, ptr %i.my, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i283

bb.cd:                                            ; preds = %bb.cb
  %i.pf = sext i32 %i.ov to i64
  %i.pg = getelementptr inbounds i8, ptr %i.my, i64 %i.pf
  %.pre.i282 = load i8, ptr %i.my, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i283

_ZL19stbi__refill_bufferP13stbi__context.exit.i283: ; preds = %bb.cd, %bb.cc
  %i.ph = phi i8 [ 0, %bb.cc ], [ %.pre.i282, %bb.cd ]
  %.sink.i.i284 = phi ptr [ %i.nc, %bb.cc ], [ %i.pg, %bb.cd ]
  store ptr %.sink.i.i284, ptr %i.d, align 8, !tbaa !33
  store ptr %i.nc, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit286

_ZL10stbi__get8P13stbi__context.exit286:          ; preds = %bb.bz, %bb.ca, %_ZL19stbi__refill_bufferP13stbi__context.exit.i283
  %.0.i285 = phi i8 [ %i.oq, %bb.bz ], [ %i.ph, %_ZL19stbi__refill_bufferP13stbi__context.exit.i283 ], [ 0, %bb.ca ]
  %i.pi = zext i8 %.0.i285 to i32
  br label %.loopexit26.loopexit

bb.ce:                                            ; preds = %bb.bx
  %i.pj = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  br label %.loopexit26.loopexit

.loopexit26.loopexit:                             ; preds = %bb.ce, %_ZL10stbi__get8P13stbi__context.exit286
  %i.pk = phi i32 [ %i.pi, %_ZL10stbi__get8P13stbi__context.exit286 ], [ %i.pj, %bb.ce ] ; 2 uses
  %.not220 = icmp samesign ult i32 %i.pk, %i.cv
  %spec.store.select = select i1 %.not220, i32 %i.pk, i32 0
  %i.pl = zext nneg i32 %spec.store.select to i64
  %i.pm = mul nuw nsw i64 %i.nh, %i.pl
  %scevgep = getelementptr nuw i8, ptr %.0193, i64 %i.pm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.nh, i1 false), !tbaa !32
  br label %.loopexit26

bb.cf:                                            ; preds = %.thread
  br i1 %.not211, label %.preheader27.preheader, label %bb.cg

.preheader27.preheader:                           ; preds = %bb.cf
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !30
  %.pre105 = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %.preheader27

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.nd, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 5929, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(21) @.str.85) #41
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.pn = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.po = trunc nuw i32 %i.pn to i16              ; 2 uses
  %i.pp = lshr i16 %i.po, 10
  %i.pq = and i16 %i.pp, 31
  %.lhs.trunc.i287 = mul nuw nsw i16 %i.pq, 255
  %i.pr = udiv i16 %.lhs.trunc.i287, 31
  %i.ps = trunc nuw i16 %i.pr to i8
  store i8 %i.ps, ptr %i.a, align 4, !tbaa !32
  %i.pt = insertelement <2 x i16> poison, i16 %i.po, i64 0
  %i.pu = shufflevector <2 x i16> %i.pt, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.pv = lshr <2 x i16> %i.pu, <i16 5, i16 0>
  %i.pw = and <2 x i16> %i.pv, splat (i16 31)
  %i.px = mul nuw nsw <2 x i16> %i.pw, splat (i16 255)
  %i.py = udiv <2 x i16> %i.px, splat (i16 31)
  %i.pz = trunc <2 x i16> %i.py to <2 x i8>       ; 2 uses
  %i.qa = extractelement <2 x i8> %i.pz, i64 0
  store i8 %i.qa, ptr %i.ne, align 1, !tbaa !32
  %i.qb = extractelement <2 x i8> %i.pz, i64 1
  store i8 %i.qb, ptr %i.nf, align 2, !tbaa !32
  br label %.loopexit26

.preheader27:                                     ; preds = %.preheader27.preheader, %_ZL10stbi__get8P13stbi__context.exit295
  %i.qc = phi ptr [ %.pre105, %.preheader27.preheader ], [ %i.qy, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 3 uses
  %i.qd = phi ptr [ %.pre, %.preheader27.preheader ], [ %i.qz, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 4 uses
  %indvars.iv71 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next72, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 2 uses
  %i.qe = icmp ult ptr %i.qd, %i.qc
  br i1 %i.qe, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.preheader27
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 1 ; 2 uses
  store ptr %i.qf, ptr %i.b, align 8, !tbaa !30
  %i.qg = load i8, ptr %i.qd, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit295

bb.ck:                                            ; preds = %.preheader27
  %i.qh = load i32, ptr %i.mv, align 8, !tbaa !27
  %.not.i290 = icmp eq i32 %i.qh, 0
  br i1 %.not.i290, label %_ZL10stbi__get8P13stbi__context.exit295, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qi = load ptr, ptr %i.mw, align 8, !tbaa !31
  %i.qj = load ptr, ptr %i.mx, align 8, !tbaa !25
  %i.qk = load i32, ptr %i.mz, align 4, !tbaa !26
  %i.ql = tail call noundef i32 %i.qi(ptr noundef %i.qj, ptr noundef nonnull %i.my, i32 noundef %i.qk), !inline_history !6 ; 2 uses
  %i.qm = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.qn = load ptr, ptr %i.na, align 8, !tbaa !29
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = trunc i64 %i.qq to i32
  %i.qs = load i32, ptr %i.nb, align 8, !tbaa !28
  %i.qt = add nsw i32 %i.qs, %i.qr
  store i32 %i.qt, ptr %i.nb, align 8, !tbaa !28
  %i.qu = icmp eq i32 %i.ql, 0
  br i1 %i.qu, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.mv, align 8, !tbaa !27
  store i8 0, ptr %i.my, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i292

bb.cn:                                            ; preds = %bb.cl
  %i.qv = sext i32 %i.ql to i64
  %i.qw = getelementptr inbounds i8, ptr %i.my, i64 %i.qv
  %.pre.i291 = load i8, ptr %i.my, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i292

_ZL19stbi__refill_bufferP13stbi__context.exit.i292: ; preds = %bb.cn, %bb.cm
  %i.qx = phi i8 [ 0, %bb.cm ], [ %.pre.i291, %bb.cn ]
  %.sink.i.i293 = phi ptr [ %i.nc, %bb.cm ], [ %i.qw, %bb.cn ] ; 2 uses
  store ptr %.sink.i.i293, ptr %i.d, align 8, !tbaa !33
  store ptr %i.nc, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit295

_ZL10stbi__get8P13stbi__context.exit295:          ; preds = %bb.cj, %bb.ck, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292
  %i.qy = phi ptr [ %i.qc, %bb.cj ], [ %.sink.i.i293, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ %i.qc, %bb.ck ]
  %i.qz = phi ptr [ %i.qf, %bb.cj ], [ %i.nc, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ %i.qd, %bb.ck ]
  %.0.i294 = phi i8 [ %i.qg, %bb.cj ], [ %i.qx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ 0, %bb.ck ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv71
  store i8 %.0.i294, ptr %i.ra, align 1, !tbaa !32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit26, label %.preheader27, !llvm.loop !295

.loopexit26:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit295, %.loopexit26.loopexit, %bb.bw, %bb.ci
  %.118323 = phi i32 [ %.118322, %.loopexit26.loopexit ], [ %.118322, %bb.ci ], [ 1, %bb.bw ], [ %.118322, %_ZL10stbi__get8P13stbi__context.exit295 ]
  %.118521 = phi i32 [ %.118520, %.loopexit26.loopexit ], [ %.118520, %bb.ci ], [ %.018440, %bb.bw ], [ %.118520, %_ZL10stbi__get8P13stbi__context.exit295 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep81, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.nh, i1 false), !tbaa !32
  %i.rb = add nsw i32 %.118521, -1
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count88
  br i1 %exitcond89.not, label %._crit_edge, label %bb.bo, !llvm.loop !296

._crit_edge:                                      ; preds = %.loopexit26, %.loopexit30
  %.not213.not = icmp eq i8 %i.gs, 0
  %i.rc = icmp ne i32 %i.ee, 0
  %or.cond55 = and i1 %.not213.not, %i.rc
  br i1 %or.cond55, label %.lr.ph51, label %.loopexit25

.lr.ph51:                                         ; preds = %._crit_edge
  %i.rd = mul nuw nsw i32 %i.ed, %.0195.ph        ; 10 uses
  %.not58 = icmp eq i32 %i.ed, 0
  br i1 %.not58, label %.loopexit25, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %.lr.ph51
  %i.re = add nsw i32 %i.ee, -1                   ; 2 uses
  %5 = mul i32 %i.ed, %i.re
  %i.rf = mul i32 %5, %.0195.ph
  %i.rg = lshr i32 %i.re, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.rd, i32 1)
  %6 = sub nsw i32 %i.rd, %smin
  %narrow = add nuw nsw i32 %6, 1
  %i.rh = zext nneg i32 %narrow to i64            ; 2 uses
  %scevgep168.a = getelementptr i8, ptr %i.hl, i64 %i.rh
  %scevgep171.a = getelementptr i8, ptr %i.hl, i64 %i.rh
  %smin173 = tail call i32 @llvm.smin.i32(i32 %i.rd, i32 1)
  %7 = sub nsw i32 %i.rd, %smin173                ; 3 uses
  %narrow189 = add nuw nsw i32 %7, 1
  %i.ri = zext nneg i32 %narrow189 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %7, 7
  %min.iters.check174 = icmp ult i32 %7, 63
  %i.rj = and i64 %i.ri, 56
  %n.vec = and i64 %i.ri, 2147483584              ; 6 uses
  %i.rk = trunc nuw nsw i64 %n.vec to i32
  %i.rl = sub nsw i32 %i.rd, %i.rk
  %cmp.n = icmp eq i64 %n.vec, %i.ri
  %min.epilog.iters.check = icmp eq i64 %i.rj, 0
  %n.vec180 = and i64 %i.ri, 2147483640           ; 5 uses
  %i.rm = trunc nuw nsw i64 %n.vec180 to i32
  %i.rn = sub nsw i32 %i.rd, %i.rm
  %cmp.n185 = icmp eq i64 %n.vec180, %i.ri
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph48.preheader, %._crit_edge49
  %indvars.iv96 = phi i32 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next97, %._crit_edge49 ] ; 3 uses
  %indvars.iv92 = phi i32 [ %i.rf, %.lr.ph48.preheader ], [ %indvars.iv.next93, %._crit_edge49 ] ; 3 uses
  %.350 = phi i32 [ 0, %.lr.ph48.preheader ], [ %i.sg, %._crit_edge49 ] ; 2 uses
  %i.ro = sext i32 %indvars.iv92 to i64           ; 6 uses
  %i.rp = zext i32 %indvars.iv96 to i64           ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.rq = sext i32 %indvars.iv92 to i64           ; 2 uses
  %scevgep172 = getelementptr i8, ptr %scevgep171.a, i64 %i.rq
  %scevgep170 = getelementptr i8, ptr %i.hl, i64 %i.rq
  %i.rr = zext i32 %indvars.iv96 to i64           ; 2 uses
  %scevgep169 = getelementptr i8, ptr %scevgep168.a, i64 %i.rr
  %scevgep167 = getelementptr nuw i8, ptr %i.hl, i64 %i.rr
  %bound0 = icmp ult ptr %scevgep167, %scevgep172
  %bound1 = icmp ult ptr %scevgep170, %scevgep169
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rs = add nuw nsw i64 %n.vec, %i.rp
  %i.rt = add nsw i64 %n.vec, %i.ro
  %invariant.gep = getelementptr i8, ptr %i.hl, i64 %i.rp
  %invariant.gep210 = getelementptr i8, ptr %i.hl, i64 %i.ro
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %wide.load = load <32 x i8>, ptr %gep, align 1, !tbaa !32, !alias.scope !307, !noalias !308
  %wide.load175.a = load <32 x i8>, ptr %i.ru, align 1, !tbaa !32, !alias.scope !307, !noalias !308
  %gep211 = getelementptr i8, ptr %invariant.gep210, i64 %index ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %gep211, i64 32 ; 2 uses
  %wide.load176 = load <32 x i8>, ptr %gep211, align 1, !tbaa !32, !alias.scope !308
  %wide.load177 = load <32 x i8>, ptr %i.rv, align 1, !tbaa !32, !alias.scope !308
  store <32 x i8> %wide.load176, ptr %gep, align 1, !tbaa !32, !alias.scope !307, !noalias !308
  store <32 x i8> %wide.load177, ptr %i.ru, align 1, !tbaa !32, !alias.scope !307, !noalias !308
  store <32 x i8> %wide.load, ptr %gep211, align 1, !tbaa !32, !alias.scope !308
  store <32 x i8> %wide.load175.a, ptr %i.rv, align 1, !tbaa !32, !alias.scope !308
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.rw = icmp eq i64 %index.next, %n.vec
  br i1 %i.rw, label %middle.block, label %vector.body, !llvm.loop !300

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge49, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rx = add nuw nsw i64 %n.vec180, %i.rp
  %i.ry = add nsw i64 %n.vec180, %i.ro
  %invariant.gep212 = getelementptr i8, ptr %i.hl, i64 %i.rp
  %invariant.gep214 = getelementptr i8, ptr %i.hl, i64 %i.ro
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index181 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %gep213 = getelementptr i8, ptr %invariant.gep212, i64 %index181 ; 2 uses
  %wide.load182 = load <8 x i8>, ptr %gep213, align 1, !tbaa !32, !alias.scope !307, !noalias !308
  %gep215 = getelementptr i8, ptr %invariant.gep214, i64 %index181 ; 2 uses
  %wide.load183 = load <8 x i8>, ptr %gep215, align 1, !tbaa !32, !alias.scope !308
  store <8 x i8> %wide.load183, ptr %gep213, align 1, !tbaa !32, !alias.scope !307, !noalias !308
  store <8 x i8> %wide.load182, ptr %gep215, align 1, !tbaa !32, !alias.scope !308
  %index.next184 = add nuw i64 %index181, 8       ; 2 uses
  %i.rz = icmp eq i64 %index.next184, %n.vec180
  br i1 %i.rz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !301

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n185, label %._crit_edge49, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv98.ph = phi i64 [ %i.rp, %iter.check ], [ %i.rp, %vector.memcheck ], [ %i.rs, %vec.epilog.iter.check ], [ %i.rx, %vec.epilog.middle.block ]
  %indvars.iv94.ph = phi i64 [ %i.ro, %iter.check ], [ %i.ro, %vector.memcheck ], [ %i.rt, %vec.epilog.iter.check ], [ %i.ry, %vec.epilog.middle.block ]
  %.319244.ph = phi i32 [ %i.rd, %iter.check ], [ %i.rd, %vector.memcheck ], [ %i.rl, %vec.epilog.iter.check ], [ %i.rn, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %vec.epilog.scalar.ph ], [ %indvars.iv98.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %vec.epilog.scalar.ph ], [ %indvars.iv94.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.319244 = phi i32 [ %i.se, %vec.epilog.scalar.ph ], [ %.319244.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv98 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !32
  %i.sc = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv94 ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !32
  store i8 %i.sd, ptr %i.sa, align 1, !tbaa !32
  store i8 %i.sb, ptr %i.sc, align 1, !tbaa !32
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1
  %i.se = add nsw i32 %.319244, -1
  %i.sf = icmp sgt i32 %.319244, 1
  br i1 %i.sf, label %vec.epilog.scalar.ph, label %._crit_edge49, !llvm.loop !302

._crit_edge49:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.sg = add nuw nsw i32 %.350, 1
  %indvars.iv.next93 = sub i32 %indvars.iv92, %i.rd
  %indvars.iv.next97 = add i32 %indvars.iv96, %i.rd
  %exitcond103.not = icmp eq i32 %.350, %i.rg
  br i1 %exitcond103.not, label %.loopexit25, label %iter.check, !llvm.loop !303

.loopexit25:                                      ; preds = %._crit_edge49, %.lr.ph51, %._crit_edge
  %.not214 = icmp eq ptr %.0193, null
  br i1 %.not214, label %.loopexit32, label %bb.co

bb.co:                                            ; preds = %.loopexit25
  tail call void @free(ptr noundef nonnull %.0193) #40
  br label %.loopexit32

.loopexit32.loopexit.unr-lcssa:                   ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1
  %lcmp.mod198.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod198.not, label %.loopexit32, label %..thread_crit_edge.i264.us.us.epil.preheader

..thread_crit_edge.i264.us.us.epil.preheader:     ; preds = %.loopexit32.loopexit.unr-lcssa, %..thread_crit_edge.i264.us.us.preheader
  %indvars.iv65.epil.init = phi i64 [ 0, %..thread_crit_edge.i264.us.us.preheader ], [ %indvars.iv.next66.1, %.loopexit32.loopexit.unr-lcssa ]
  %.epil.init197 = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.us.preheader ], [ %i.ja, %.loopexit32.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod199 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.sh = getelementptr inbounds nuw i8, ptr %.epil.init197, i64 %i.if ; 2 uses
  %.not32.i.us.us.epil = icmp ugt ptr %i.sh, %.pre35.i.us
  br i1 %.not32.i.us.us.epil, label %.loopexit32, label %bb.cp

bb.cp:                                            ; preds = %..thread_crit_edge.i264.us.us.epil.preheader
  %i.si = trunc i64 %indvars.iv65.epil.init to i32
  %i.sj = xor i32 %i.si, -1
  %i.sk = add i32 %i.ee, %i.sj
  %i.sl = mul i32 %i.ic, %i.sk
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds i8, ptr %i.hl, i64 %i.sm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sn, ptr align 1 %.epil.init197, i64 %i.if, i1 false)
  store ptr %i.sh, ptr %i.b, align 8, !tbaa !30
  br label %.loopexit32

.loopexit32.loopexit191.unr-lcssa:                ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit32, label %..thread_crit_edge.i264.us.epil.preheader

..thread_crit_edge.i264.us.epil.preheader:        ; preds = %.loopexit32.loopexit191.unr-lcssa, %..thread_crit_edge.i264.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %..thread_crit_edge.i264.us.preheader ], [ %indvars.iv.next.3, %.loopexit32.loopexit191.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.preheader ], [ %i.kc, %.loopexit32.loopexit191.unr-lcssa ]
  %lcmp.mod193 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %..thread_crit_edge.i264.us.epil

..thread_crit_edge.i264.us.epil:                  ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil, %..thread_crit_edge.i264.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil ], [ %indvars.iv.epil.init, %..thread_crit_edge.i264.us.epil.preheader ] ; 2 uses
  %i.so = phi ptr [ %i.su, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil ], [ %.epil.init, %..thread_crit_edge.i264.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil ], [ 0, %..thread_crit_edge.i264.us.epil.preheader ]
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.if ; 3 uses
  %.not32.i.us.epil = icmp ugt ptr %i.sp, %.pre35.i.us
  br i1 %.not32.i.us.epil, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil, label %bb.cq

bb.cq:                                            ; preds = %..thread_crit_edge.i264.us.epil
  %i.sq = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.sr = mul i32 %i.ic, %i.sq
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds i8, ptr %i.hl, i64 %i.ss
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.st, ptr align 1 %i.so, i64 %i.if, i1 false)
  store ptr %i.sp, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil

_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil:  ; preds = %bb.cq, %..thread_crit_edge.i264.us.epil
  %i.su = phi ptr [ %i.sp, %bb.cq ], [ %i.so, %..thread_crit_edge.i264.us.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit32, label %..thread_crit_edge.i264.us.epil, !llvm.loop !304

.loopexit32:                                      ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit, %.loopexit32.loopexit191.unr-lcssa, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil, %.loopexit32.loopexit.unr-lcssa, %bb.cp, %..thread_crit_edge.i264.us.us.epil.preheader, %.preheader31, %.loopexit25, %bb.co
  %i.sv = icmp samesign ult i8 %.0195.ph.shrunk, 3
  %.not59 = icmp eq i32 %i.hi, 0
  %i.sw = or i1 %i.sv, %.not59
  %or.cond163 = or i1 %i.sw, %i.gz
  br i1 %or.cond163, label %.loopexit, label %.lr.ph54

.lr.ph54:                                         ; preds = %.loopexit32
  %i.sx = zext nneg i8 %.0195.ph.shrunk to i64    ; 9 uses
  %i.sy = add i32 %i.hi, -1
  %xtraiter202 = and i32 %i.hi, 7                 ; 3 uses
  %i.sz = icmp ult i32 %i.sy, 7
  br i1 %i.sz, label %.epil.preheader, label %.lr.ph54.new

.lr.ph54.new:                                     ; preds = %.lr.ph54
  %unroll_iter206 = and i32 %i.hi, -8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %.lr.ph54.new
  %.017653 = phi ptr [ %i.hl, %.lr.ph54.new ], [ %i.uf, %bb.cr ] ; 4 uses
  %niter207 = phi i32 [ 0, %.lr.ph54.new ], [ %niter207.next.7, %bb.cr ]
  %i.ta = load i8, ptr %.017653, align 1, !tbaa !32
  %i.tb = getelementptr inbounds nuw i8, ptr %.017653, i64 2 ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !32
  store i8 %i.tc, ptr %.017653, align 1, !tbaa !32
  store i8 %i.ta, ptr %i.tb, align 1, !tbaa !32
  %i.td = getelementptr inbounds nuw i8, ptr %.017653, i64 %i.sx ; 4 uses
  %i.te = load i8, ptr %i.td, align 1, !tbaa !32
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 2 ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !32
  store i8 %i.tg, ptr %i.td, align 1, !tbaa !32
  store i8 %i.te, ptr %i.tf, align 1, !tbaa !32
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.sx ; 4 uses
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !32
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 2 ; 2 uses
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !32
  store i8 %i.tk, ptr %i.th, align 1, !tbaa !32
  store i8 %i.ti, ptr %i.tj, align 1, !tbaa !32
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.sx ; 4 uses
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !32
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 2 ; 2 uses
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !32
  store i8 %i.to, ptr %i.tl, align 1, !tbaa !32
  store i8 %i.tm, ptr %i.tn, align 1, !tbaa !32
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.sx ; 4 uses
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !32
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 2 ; 2 uses
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !32
  store i8 %i.ts, ptr %i.tp, align 1, !tbaa !32
  store i8 %i.tq, ptr %i.tr, align 1, !tbaa !32
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 %i.sx ; 4 uses
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !32
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 2 ; 2 uses
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !32
  store i8 %i.tw, ptr %i.tt, align 1, !tbaa !32
  store i8 %i.tu, ptr %i.tv, align 1, !tbaa !32
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.sx ; 4 uses
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !32
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 2 ; 2 uses
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !32
  store i8 %i.ua, ptr %i.tx, align 1, !tbaa !32
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !32
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.sx ; 4 uses
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !32
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 2 ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !32
  store i8 %i.ue, ptr %i.ub, align 1, !tbaa !32
  store i8 %i.uc, ptr %i.ud, align 1, !tbaa !32
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.sx ; 2 uses
  %niter207.next.7 = add i32 %niter207, 8         ; 2 uses
  %niter207.ncmp.7 = icmp eq i32 %niter207.next.7, %unroll_iter206
  br i1 %niter207.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.cr, !llvm.loop !305

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cr
  %lcmp.mod204.not = icmp eq i32 %xtraiter202, 0
  br i1 %lcmp.mod204.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph54
  %.017653.epil.init = phi ptr [ %i.hl, %.lr.ph54 ], [ %i.uf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod205 = icmp ne i32 %xtraiter202, 0
  tail call void @llvm.assume(i1 %lcmp.mod205)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %.epil.preheader
  %.017653.epil = phi ptr [ %.017653.epil.init, %.epil.preheader ], [ %i.uj, %bb.cs ] ; 4 uses
  %epil.iter203 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter203.next, %bb.cs ]
  %i.ug = load i8, ptr %.017653.epil, align 1, !tbaa !32
  %i.uh = getelementptr inbounds nuw i8, ptr %.017653.epil, i64 2 ; 2 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !32
  store i8 %i.ui, ptr %.017653.epil, align 1, !tbaa !32
  store i8 %i.ug, ptr %i.uh, align 1, !tbaa !32
  %i.uj = getelementptr inbounds nuw i8, ptr %.017653.epil, i64 %i.sx
  %epil.iter203.next = add i32 %epil.iter203, 1   ; 2 uses
  %epil.iter203.cmp.not = icmp eq i32 %epil.iter203.next, %xtraiter202
  br i1 %epil.iter203.cmp.not, label %.loopexit, label %bb.cs, !llvm.loop !306

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.cs, %.loopexit32
  %.not215 = icmp eq i32 %4, 0
  %.not216 = icmp eq i32 %4, %.0195.ph
  %or.cond222 = or i1 %.not215, %.not216
  br i1 %or.cond222, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.loopexit
  %i.uk = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.hl, i32 noundef %.0195.ph, i32 noundef %4, i32 noundef %i.ed, i32 noundef %i.ee)
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit, %bb.ct, %bb.bn, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.be, %_ZL17stbi__malloc_mad3iiii.exit.thread, %bb.ao, %_ZL18stbi__tga_get_compiiPi.exit
  %.0 = phi ptr [ null, %_ZL18stbi__tga_get_compiiPi.exit ], [ null, %bb.ao ], [ null, %bb.be ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ null, %bb.bn ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ %i.uk, %bb.ct ], [ %i.hl, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !30
  %i.g = load i8, ptr %i.b, align 1, !tbaa !32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !309 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !28
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !28
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre = load i8, ptr %i.n, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit

_ZL19stbi__refill_bufferP13stbi__context.exit:    ; preds = %bb.e, %bb.f
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %.sink.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit, %bb.b
  %.0 = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %i.b = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %i.c = shl nuw i32 %i.b, 16
  %i.d = or disjoint i32 %i.c, %i.a
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !30
  %i.g = load i8, ptr %i.b, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZL14stbi__tga_infoP13stbi__contextPiS1_S1_:bb.a
  %i.fk = ptrtoint ptr %.pre.i111 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = trunc i64 %i.fl to i32                  ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 9
  br i1 %i.fn, label %bb.ai, label %.thread.i108

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.cu, ptr %i.a, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !62
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !25
  %i.fs = sub nsw i32 9, %i.fm
  tail call void %i.fp(ptr noundef %i.fr, i32 noundef %i.fs), !inline_history !112
  br label %_ZL10stbi__skipP13stbi__contexti.exit106

.thread.i108:                                     ; preds = %bb.ag, %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre.i111, i64 9
  store ptr %i.ft, ptr %i.a, align 8, !tbaa !30
  br label %_ZL10stbi__skipP13stbi__contexti.exit106

_ZL10stbi__skipP13stbi__contexti.exit106:         ; preds = %.thread.i108, %bb.ai, %.thread.i102, %bb.ad
  %.0.shrunk = phi i8 [ %.0.i99, %.thread.i102 ], [ %.0.i99, %bb.ad ], [ 0, %bb.ai ], [ 0, %.thread.i108 ] ; 2 uses
  %i.fu = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit106
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fx = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !19
  store <2 x ptr> %i.fx, ptr %i.a, align 8, !tbaa !19
  br label %bb.bj

bb.ak:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit106
  %i.fy = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gb = load <2 x ptr>, ptr %i.ga, align 8, !tbaa !19
  store <2 x ptr> %i.gb, ptr %i.a, align 8, !tbaa !19
  br label %bb.bj

bb.am:                                            ; preds = %bb.ak
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !30  ; 4 uses
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !33  ; 3 uses
  %i.ge = icmp ult ptr %i.gc, %i.gd
  br i1 %i.ge, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  store ptr %i.gf, ptr %i.a, align 8, !tbaa !30
  %i.gg = load i8, ptr %i.gc, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit118

bb.ao:                                            ; preds = %bb.am
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !27
  %.not.i113 = icmp eq i32 %i.gi, 0
  br i1 %.not.i113, label %_ZL10stbi__get8P13stbi__context.exit118, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !31
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !25
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !26
  %i.gq = tail call noundef i32 %i.gk(ptr noundef %i.gm, ptr noundef nonnull %i.gn, i32 noundef %i.gp), !inline_history !6 ; 2 uses
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !29
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !28
  %i.ha = add nsw i32 %i.gz, %i.gx
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !28
  %i.hb = icmp eq i32 %i.gq, 0
  br i1 %i.hb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gh, align 8, !tbaa !27
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.gn, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i115

bb.ar:                                            ; preds = %bb.ap
  %i.hd = sext i32 %i.gq to i64
  %i.he = getelementptr inbounds i8, ptr %i.gn, i64 %i.hd
  %.pre.i114 = load i8, ptr %i.gn, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i115

_ZL19stbi__refill_bufferP13stbi__context.exit.i115: ; preds = %bb.ar, %bb.aq
  %i.hf = phi i8 [ 0, %bb.aq ], [ %.pre.i114, %bb.ar ]
  %.sink.i.i116 = phi ptr [ %i.hc, %bb.aq ], [ %i.he, %bb.ar ] ; 2 uses
  store ptr %.sink.i.i116, ptr %i.c, align 8, !tbaa !33
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.hg, ptr %i.a, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit118

_ZL10stbi__get8P13stbi__context.exit118:          ; preds = %bb.an, %bb.ao, %_ZL19stbi__refill_bufferP13stbi__context.exit.i115
  %i.hh = phi ptr [ %i.gd, %bb.an ], [ %.sink.i.i116, %_ZL19stbi__refill_bufferP13stbi__context.exit.i115 ], [ %i.gd, %bb.ao ]
  %i.hi = phi ptr [ %i.gf, %bb.an ], [ %i.hg, %_ZL19stbi__refill_bufferP13stbi__context.exit.i115 ], [ %i.gc, %bb.ao ] ; 2 uses
  %.0.i117 = phi i8 [ %i.gg, %bb.an ], [ %i.hf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i115 ], [ 0, %bb.ao ] ; 3 uses
  %i.hj = icmp ult ptr %i.hi, %i.hh
  br i1 %i.hj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit118
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  br label %_ZL10stbi__get8P13stbi__context.exit124.sink.split

bb.at:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit118
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !27
  %.not.i119 = icmp eq i32 %i.hm, 0
  br i1 %.not.i119, label %_ZL10stbi__get8P13stbi__context.exit124, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !31
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !25
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !26
  %i.hu = tail call noundef i32 %i.ho(ptr noundef %i.hq, ptr noundef nonnull %i.hr, i32 noundef %i.ht), !inline_history !6 ; 2 uses
  %i.hv = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !29
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !28
  %i.ie = add nsw i32 %i.id, %i.ib
  store i32 %i.ie, ptr %i.ic, align 8, !tbaa !28
  %i.if = icmp eq i32 %i.hu, 0
  br i1 %i.if, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.hl, align 8, !tbaa !27
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.hr, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i121

bb.aw:                                            ; preds = %bb.au
  %i.ih = sext i32 %i.hu to i64
  %i.ii = getelementptr inbounds i8, ptr %i.hr, i64 %i.ih
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i121

_ZL19stbi__refill_bufferP13stbi__context.exit.i121: ; preds = %bb.aw, %bb.av
  %.sink.i.i122 = phi ptr [ %i.ig, %bb.av ], [ %i.ii, %bb.aw ]
  store ptr %.sink.i.i122, ptr %i.c, align 8, !tbaa !33
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %_ZL10stbi__get8P13stbi__context.exit124.sink.split

_ZL10stbi__get8P13stbi__context.exit124.sink.split: ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i121, %bb.as
  %.sink173 = phi ptr [ %i.hk, %bb.as ], [ %i.ij, %_ZL19stbi__refill_bufferP13stbi__context.exit.i121 ]
  store ptr %.sink173, ptr %i.a, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit124

_ZL10stbi__get8P13stbi__context.exit124:          ; preds = %_ZL10stbi__get8P13stbi__context.exit124.sink.split, %bb.at
  %.not = icmp eq i8 %.0.shrunk, 0
  br i1 %.not, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit124
  switch i8 %.0.i117, label %bb.ay [
    i8 16, label %bb.az
    i8 8, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.il = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !19
  store <2 x ptr> %i.il, ptr %i.a, align 8, !tbaa !19
  br label %bb.bj

bb.az:                                            ; preds = %bb.ax, %bb.ax
  %switch.tableidx = add i8 %.0.shrunk, -8        ; 3 uses
  %i.im = icmp ult i8 %switch.tableidx, 25
  br i1 %i.im, label %switch.hole_check, label %_ZL18stbi__tga_get_compiiPi.exit.thread136

bb.ba:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit124
  switch i8 %.0.i117, label %_ZL18stbi__tga_get_compiiPi.exit.thread136 [
    i8 8, label %_ZL18stbi__tga_get_compiiPi.exit.thread
    i8 16, label %bb.bb
    i8 15, label %bb.bc
    i8 24, label %bb.bd
    i8 32, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.in = and i8 %.0.i91, -9
  %i.io = icmp eq i8 %i.in, 3
  %.mux.i = select i1 %i.io, i32 2, i32 3
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

bb.bc:                                            ; preds = %bb.ba
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

bb.bd:                                            ; preds = %bb.ba, %bb.ba
  %i.ip = lshr i8 %.0.i117, 3
  %i.iq = zext nneg i8 %i.ip to i32
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

_ZL18stbi__tga_get_compiiPi.exit.thread136:       ; preds = %switch.hole_check, %bb.az, %bb.ba
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.is = load <2 x ptr>, ptr %i.ir, align 8, !tbaa !19
  store <2 x ptr> %i.is, ptr %i.a, align 8, !tbaa !19
  br label %bb.bj

switch.hole_check:                                ; preds = %bb.az
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 16843137, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZL18stbi__tga_get_compiiPi.exit.thread136

switch.lookup:                                    ; preds = %switch.hole_check
  %i.it = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL14stbi__tga_infoP13stbi__contextPiS1_S1_, i64 %i.it
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

_ZL18stbi__tga_get_compiiPi.exit.thread:          ; preds = %switch.lookup, %bb.bc, %bb.bb, %bb.ba, %bb.bd
  %.069134 = phi i32 [ %switch.ext, %switch.lookup ], [ 3, %bb.bc ], [ %.mux.i, %bb.bb ], [ 1, %bb.ba ], [ %i.iq, %bb.bd ]
  %.not78 = icmp eq ptr %1, null
  br i1 %.not78, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZL18stbi__tga_get_compiiPi.exit.thread
  store i32 %i.fu, ptr %1, align 4, !tbaa !20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZL18stbi__tga_get_compiiPi.exit.thread
  %.not79 = icmp eq ptr %2, null
  br i1 %.not79, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.fy, ptr %2, align 4, !tbaa !20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.not80 = icmp eq ptr %3, null
  br i1 %.not80, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %.069134, ptr %3, align 4, !tbaa !20
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %_ZL18stbi__tga_get_compiiPi.exit.thread136, %bb.ay, %bb.al, %bb.aj, %bb.af, %_ZL10stbi__get8P13stbi__context.exit100.thread, %bb.s, %bb.l
  %.070 = phi i32 [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %_ZL10stbi__get8P13stbi__context.exit100.thread ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ay ], [ 0, %bb.af ], [ 0, %_ZL18stbi__tga_get_compiiPi.exit.thread136 ], [ 1, %bb.bi ], [ 1, %bb.bh ]
  ret i32 %.070
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr>, <4 x ptr>, <4 x i1>) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #36

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #30 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #33 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #40 = { nounwind }
attributes #41 = { noreturn }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { builtin nounwind }
attributes #45 = { noreturn nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{null, null}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{ptr @_ZL10stbi__get8P13stbi__context, null}
!7 = distinct !{null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!14, !14, i64 0}
!21 = !{!17, !17, i64 0}
!22 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 8, !21}
!23 = !{!"_ZTS17stbi_io_callbacks", !17, i64 0, !17, i64 8, !17, i64 16}
!24 = !{!"_ZTS13stbi__context", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !23, i64 16, !17, i64 40, !14, i64 48, !14, i64 52, !13, i64 56, !14, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216}
!25 = !{!24, !17, i64 40}
!26 = !{!24, !14, i64 52}
!27 = !{!24, !14, i64 48}
!28 = !{!24, !14, i64 184}
!29 = !{!24, !18, i64 208}
!30 = !{!24, !18, i64 192}
!31 = !{!24, !17, i64 16}
!32 = !{!13, !13, i64 0}
!33 = !{!24, !18, i64 200}
!34 = !{!24, !18, i64 216}
!35 = !{!"_ZTS17stbi__result_info", !14, i64 0, !14, i64 4, !14, i64 8}
!36 = !{!35, !14, i64 0}
!37 = !{!"short", !13, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"branch_weights", i32 8, i32 56}
!43 = !{!"_ZTS9stbi__gif", !14, i64 0, !14, i64 4, !18, i64 8, !18, i64 16, !18, i64 24, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !13, i64 52, !13, i64 1076, !13, i64 2100, !18, i64 34872, !14, i64 34880, !14, i64 34884, !14, i64 34888, !14, i64 34892, !14, i64 34896, !14, i64 34900, !14, i64 34904, !14, i64 34908, !14, i64 34912, !14, i64 34916, !14, i64 34920}
!44 = !{!43, !14, i64 0}
!45 = !{!43, !14, i64 4}
!46 = !{!43, !14, i64 34920}
!47 = !{!"llvm.loop.peeled.count", i32 1}
!48 = !{!43, !18, i64 8}
!49 = !{!43, !18, i64 24}
!50 = !{!43, !18, i64 16}
!51 = !{!"float", !13, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!"_ZTS10stbi__jpeg", !17, i64 0, !13, i64 8, !13, i64 6728, !13, i64 13448, !13, i64 13960, !14, i64 18056, !14, i64 18060, !14, i64 18064, !14, i64 18068, !14, i64 18072, !14, i64 18076, !13, i64 18080, !14, i64 18464, !14, i64 18468, !13, i64 18472, !14, i64 18476, !14, i64 18480, !14, i64 18484, !14, i64 18488, !14, i64 18492, !14, i64 18496, !14, i64 18500, !14, i64 18504, !14, i64 18508, !14, i64 18512, !14, i64 18516, !13, i64 18520, !14, i64 18536, !14, i64 18540, !17, i64 18544, !17, i64 18552, !17, i64 18560}
!55 = !{!54, !17, i64 0}
!56 = !{!24, !14, i64 0}
!57 = !{!24, !14, i64 4}
!58 = !{!24, !14, i64 8}
!59 = !{!"_ZTS14stbi__bmp_data", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32}
!60 = !{!59, !14, i64 28}
!61 = !{!59, !14, i64 0}
!62 = !{!24, !17, i64 24}
!63 = !{!59, !14, i64 12}
!64 = !{!59, !14, i64 16}
!65 = !{!59, !14, i64 20}
!66 = !{!59, !14, i64 24}
!67 = !{!59, !14, i64 8}
!68 = !{!59, !14, i64 4}
!69 = !{!59, !14, i64 32}
!70 = !{!54, !14, i64 18504}
!71 = !{!54, !14, i64 18508}
!72 = !{!54, !13, i64 18472}
!73 = !{!54, !14, i64 18536}
!74 = !{!"p1 short", !17, i64 0}
!75 = !{!"_ZTSN10stbi__jpegUt_E", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !18, i64 48, !17, i64 56, !17, i64 64, !18, i64 72, !74, i64 80, !14, i64 88, !14, i64 92}
!76 = !{!75, !14, i64 0}
!77 = !{!54, !14, i64 18488}
!78 = !{!54, !14, i64 18492}
!79 = !{!54, !14, i64 18496}
!80 = !{!54, !14, i64 18480}
!81 = !{!54, !14, i64 18468}
!82 = !{!54, !14, i64 18464}
!83 = !{!54, !14, i64 18476}
!84 = !{!75, !14, i64 24}
!85 = !{!75, !14, i64 28}
!86 = !{!75, !14, i64 32}
!87 = !{!75, !14, i64 12}
!88 = !{!75, !18, i64 48}
!89 = !{!75, !14, i64 36}
!90 = !{!54, !14, i64 18068}
!91 = !{!54, !14, i64 18064}
!92 = !{!75, !14, i64 8}
!93 = !{!75, !14, i64 4}
!94 = !{!"llvm.loop.unswitch.partial.disable"}
!95 = !{!75, !74, i64 80}
!96 = !{!75, !14, i64 88}
!97 = !{!24, !17, i64 32}
!98 = !{!75, !17, i64 56}
!99 = !{!75, !17, i64 64}
!100 = !{!75, !18, i64 72}
!101 = !{!54, !14, i64 18512}
!102 = !{!54, !14, i64 18056}
!103 = !{!54, !14, i64 18060}
!104 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!105 = !{!104, !18, i64 0}
!106 = !{!"long", !13, i64 0}
!107 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !104, i64 0, !106, i64 8, !13, i64 16}
!108 = !{!107, !106, i64 8}
!109 = !{!107, !18, i64 0}
!110 = !{ptr @_ZL10stbi__getnP13stbi__contextPhi}
!111 = !{!"branch_weights", i32 8, i32 24}
!112 = !{ptr @_ZL10stbi__skipP13stbi__contexti}
!113 = !{!"branch_weights", i32 4, i32 12}
!114 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!115 = !{!"_ZTSSt6locale", !114, i64 0}
!116 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !115, i64 56}
!117 = !{!116, !18, i64 40}
!118 = !{!116, !18, i64 32}
!119 = !{!"vtable pointer", !12, i64 0}
!120 = !{!119, !119, i64 0}
!121 = !{!"_ZTSSi", !106, i64 8}
!122 = !{!121, !106, i64 8}
!123 = !{!43, !14, i64 34916}
!124 = !{!43, !14, i64 34892}
!125 = !{!43, !14, i64 34896}
!126 = !{!43, !14, i64 34900}
!127 = !{!43, !14, i64 34904}
!128 = !{!43, !14, i64 34908}
!129 = !{!43, !14, i64 34884}
!130 = !{!43, !14, i64 34880}
!131 = !{!43, !14, i64 44}
!132 = !{!43, !18, i64 34872}
!133 = !{!43, !14, i64 32}
!134 = !{!"_ZTS13stbi__gif_lzw", !37, i64 0, !13, i64 2, !13, i64 3}
!135 = !{!134, !37, i64 0}
!136 = !{!134, !13, i64 3}
end_hunk_1
