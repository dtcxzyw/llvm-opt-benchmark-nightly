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
  %i.ed = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 9 uses
  %i.ee = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 16 uses
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
  %.0195.ph = zext nneg i8 %.0195.ph.shrunk to i32 ; 10 uses
  store i32 %i.ed, ptr %1, align 4, !tbaa !20
  store i32 %i.ee, ptr %2, align 4, !tbaa !20
  %.not206 = icmp eq ptr %3, null
  br i1 %.not206, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %.0195.ph, ptr %3, align 4, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ha = icmp ne i32 %i.ee, 0                    ; 3 uses
  br i1 %i.ha, label %_ZL21stbi__mul2sizes_validii.exit.i, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.an
  %i.hb = udiv i32 2147483647, %i.ee
  %.not23.i = icmp samesign ugt i32 %i.ed, %i.hb
  br i1 %.not23.i, label %bb.ao, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i
  %i.hc = mul nuw nsw i32 %i.ee, %i.ed            ; 2 uses
  %i.hd = udiv i32 2147483647, %.0195.ph
  %.not.i258 = icmp samesign ugt i32 %i.hc, %i.hd
  br i1 %.not.i258, label %bb.ao, label %_ZL21stbi__mul2sizes_validii.exit.i.i

bb.ao:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %_ZL21stbi__mul2sizes_validii.exit.i
  %i.he = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.he, align 8, !tbaa !19
  br label %bb.cu

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.hf = udiv i32 2147483647, %i.ee
  %.not23.i.i = icmp samesign ugt i32 %i.ed, %i.hf
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.an, %_ZL21stbi__mul2sizes_validii.exit.i.i
  %i.hg = phi i32 [ %i.hc, %_ZL21stbi__mul2sizes_validii.exit.i.i ], [ 0, %bb.an ] ; 7 uses
  %i.hh = mul nuw nsw i32 %i.hg, %.0195.ph
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.hi) #42 ; 28 uses
  %.not208 = icmp eq ptr %i.hj, null
  br i1 %.not208, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.ap

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  %i.hk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.hk, align 8, !tbaa !19
  br label %bb.cu

bb.ap:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.hl = icmp eq i8 %.0.i, 0
  br i1 %i.hl, label %_ZL10stbi__skipP13stbi__contexti.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !31
  %.not.i260 = icmp eq ptr %i.hn, null
  br i1 %.not.i260, label %.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = ptrtoint ptr %i.gp to i64
  %i.hp = ptrtoint ptr %.pre.i261 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = trunc i64 %i.hq to i32                  ; 2 uses
  %i.hs = icmp sgt i32 %i.ak, %i.hr
  br i1 %i.hs, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !30
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !62
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !25
  %i.hx = sub nsw i32 %i.ak, %i.hr
  tail call void %i.hu(ptr noundef %i.hw, i32 noundef %i.hx), !inline_history !105
  br label %_ZL10stbi__skipP13stbi__contexti.exit

.thread.i:                                        ; preds = %bb.aq, %bb.ar
  %i.hy = zext i8 %.0.i to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre.i261, i64 %i.hy
  store ptr %i.hz, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__skipP13stbi__contexti.exit

_ZL10stbi__skipP13stbi__contexti.exit:            ; preds = %bb.ap, %bb.as, %.thread.i
  %or.cond = or i1 %i.gt, %i.gq
  %or.cond3 = or i1 %or.cond, %i.gz
  br i1 %or.cond3, label %bb.bc, label %.preheader31

.preheader31:                                     ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.ha, label %.lr.ph, label %.loopexit32

.lr.ph:                                           ; preds = %.preheader31
  %.not209.not = icmp eq i8 %i.gs, 0              ; 2 uses
  %i.ia = mul nuw nsw i32 %i.ed, %.0195.ph        ; 12 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.id = zext nneg i32 %i.ia to i64              ; 18 uses
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !31
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre35.i.us = load ptr, ptr %i.d, align 8, !tbaa !33 ; 8 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !30 ; 4 uses
  %wide.trip.count68 = zext nneg i32 %i.ee to i64 ; 4 uses
  br i1 %.not209.not, label %..thread_crit_edge.i264.us.us.preheader, label %..thread_crit_edge.i264.us.preheader

..thread_crit_edge.i264.us.preheader:             ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count68, 3       ; 3 uses
  %i.ig = icmp samesign ult i32 %i.ee, 4
  br i1 %i.ig, label %..thread_crit_edge.i264.us.epil.preheader, label %..thread_crit_edge.i264.us.preheader.new

..thread_crit_edge.i264.us.preheader.new:         ; preds = %..thread_crit_edge.i264.us.preheader
  %unroll_iter = and i64 %wide.trip.count68, 65532
  br label %..thread_crit_edge.i264.us

..thread_crit_edge.i264.us.us.preheader:          ; preds = %.lr.ph.split.us
  %xtraiter188 = and i64 %wide.trip.count68, 1
  %i.ih = icmp eq i32 %i.ee, 1
  br i1 %i.ih, label %..thread_crit_edge.i264.us.us.epil.preheader, label %..thread_crit_edge.i264.us.us.preheader.new

..thread_crit_edge.i264.us.us.preheader.new:      ; preds = %..thread_crit_edge.i264.us.us.preheader
  %unroll_iter194 = and i64 %wide.trip.count68, 65534
  br label %..thread_crit_edge.i264.us.us

..thread_crit_edge.i264.us.us:                    ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, %..thread_crit_edge.i264.us.us.preheader.new
  %indvars.iv65 = phi i64 [ 0, %..thread_crit_edge.i264.us.us.preheader.new ], [ %indvars.iv.next66.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %i.ii = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.us.preheader.new ], [ %i.iy, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %niter195 = phi i64 [ 0, %..thread_crit_edge.i264.us.us.preheader.new ], [ %niter195.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.id ; 3 uses
  %.not32.i.us.us = icmp ugt ptr %i.ij, %.pre35.i.us
  br i1 %.not32.i.us.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us, label %bb.at

bb.at:                                            ; preds = %..thread_crit_edge.i264.us.us
  %i.ik = trunc i64 %indvars.iv65 to i32
  %i.il = xor i32 %i.ik, -1
  %i.im = add i32 %i.ee, %i.il
  %i.in = mul i32 %i.ia, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %i.hj, i64 %i.io
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr align 1 %i.ii, i64 %i.id, i1 false)
  store ptr %i.ij, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us:    ; preds = %..thread_crit_edge.i264.us.us, %bb.at
  %i.iq = phi ptr [ %i.ij, %bb.at ], [ %i.ii, %..thread_crit_edge.i264.us.us ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.id ; 3 uses
  %.not32.i.us.us.1 = icmp ugt ptr %i.ir, %.pre35.i.us
  br i1 %.not32.i.us.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, label %bb.au

bb.au:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.is = trunc i64 %indvars.iv65 to i32
  %i.it = xor i32 %i.is, -2
  %i.iu = add i32 %i.ee, %i.it
  %i.iv = mul i32 %i.ia, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds i8, ptr %i.hj, i64 %i.iw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr align 1 %i.iq, i64 %i.id, i1 false)
  store ptr %i.ir, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1:  ; preds = %bb.au, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.iy = phi ptr [ %i.ir, %bb.au ], [ %i.iq, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us ] ; 2 uses
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %niter195.next.1 = add i64 %niter195, 2         ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %.loopexit32.loopexit.unr-lcssa, label %..thread_crit_edge.i264.us.us, !llvm.loop !291

..thread_crit_edge.i264.us:                       ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3, %..thread_crit_edge.i264.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i264.us.preheader.new ], [ %indvars.iv.next.3, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3 ] ; 5 uses
  %i.iz = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.preheader.new ], [ %i.ka, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i264.us.preheader.new ], [ %niter.next.3, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3 ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.id ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.ja, %.pre35.i.us
  br i1 %.not32.i.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us, label %bb.av

bb.av:                                            ; preds = %..thread_crit_edge.i264.us
  %i.jb = trunc nuw nsw i64 %indvars.iv to i32
  %i.jc = mul i32 %i.ia, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr %i.hj, i64 %i.jd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.je, ptr align 1 %i.iz, i64 %i.id, i1 false)
  store ptr %i.ja, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us:       ; preds = %bb.av, %..thread_crit_edge.i264.us
  %i.jf = phi ptr [ %i.ja, %bb.av ], [ %i.iz, %..thread_crit_edge.i264.us ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.id ; 3 uses
  %.not32.i.us.1 = icmp ugt ptr %i.jg, %.pre35.i.us
  br i1 %.not32.i.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, label %bb.aw

bb.aw:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.jh = trunc i64 %indvars.iv to i32
  %i.ji = or disjoint i32 %i.jh, 1
  %i.jj = mul i32 %i.ia, %i.ji
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds i8, ptr %i.hj, i64 %i.jk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jl, ptr align 1 %i.jf, i64 %i.id, i1 false)
  store ptr %i.jg, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.1:     ; preds = %bb.aw, %_ZL10stbi__getnP13stbi__contextPhi.exit.us
end_hunk_0
begin_hunk_1_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a

.thread:                                          ; preds = %bb.bw, %bb.bo, %_ZL10stbi__get8P13stbi__context.exit280
  %.118322 = phi i32 [ %.mux, %bb.bw ], [ %i.oj, %_ZL10stbi__get8P13stbi__context.exit280 ], [ %.018241, %bb.bo ] ; 3 uses
  %.118520 = phi i32 [ %.018440, %bb.bw ], [ %i.oi, %_ZL10stbi__get8P13stbi__context.exit280 ], [ %.018440, %bb.bo ] ; 3 uses
  br i1 %i.gt, label %bb.bx, label %bb.cf

bb.bx:                                            ; preds = %.thread
  br i1 %i.ne, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.ok = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.ol = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.om = icmp ult ptr %i.ok, %i.ol
  br i1 %i.om, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 1
  store ptr %i.on, ptr %i.b, align 8, !tbaa !30
  %i.oo = load i8, ptr %i.ok, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit286

bb.ca:                                            ; preds = %bb.by
  %i.op = load i32, ptr %i.mt, align 8, !tbaa !27
  %.not.i281 = icmp eq i32 %i.op, 0
  br i1 %.not.i281, label %_ZL10stbi__get8P13stbi__context.exit286, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.oq = load ptr, ptr %i.mu, align 8, !tbaa !31
  %i.or = load ptr, ptr %i.mv, align 8, !tbaa !25
  %i.os = load i32, ptr %i.mx, align 4, !tbaa !26
  %i.ot = tail call noundef i32 %i.oq(ptr noundef %i.or, ptr noundef nonnull %i.mw, i32 noundef %i.os), !inline_history !6 ; 2 uses
  %i.ou = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ov = load ptr, ptr %i.my, align 8, !tbaa !29
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = sub i64 %i.ow, %i.ox
  %i.oz = trunc i64 %i.oy to i32
  %i.pa = load i32, ptr %i.mz, align 8, !tbaa !28
  %i.pb = add nsw i32 %i.pa, %i.oz
  store i32 %i.pb, ptr %i.mz, align 8, !tbaa !28
  %i.pc = icmp eq i32 %i.ot, 0
  br i1 %i.pc, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.mt, align 8, !tbaa !27
  store i8 0, ptr %i.mw, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i283

bb.cd:                                            ; preds = %bb.cb
  %i.pd = sext i32 %i.ot to i64
  %i.pe = getelementptr inbounds i8, ptr %i.mw, i64 %i.pd
  %.pre.i282 = load i8, ptr %i.mw, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i283

_ZL19stbi__refill_bufferP13stbi__context.exit.i283: ; preds = %bb.cd, %bb.cc
  %i.pf = phi i8 [ 0, %bb.cc ], [ %.pre.i282, %bb.cd ]
  %.sink.i.i284 = phi ptr [ %i.na, %bb.cc ], [ %i.pe, %bb.cd ]
  store ptr %.sink.i.i284, ptr %i.d, align 8, !tbaa !33
  store ptr %i.na, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit286

_ZL10stbi__get8P13stbi__context.exit286:          ; preds = %bb.bz, %bb.ca, %_ZL19stbi__refill_bufferP13stbi__context.exit.i283
  %.0.i285 = phi i8 [ %i.oo, %bb.bz ], [ %i.pf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i283 ], [ 0, %bb.ca ]
  %i.pg = zext i8 %.0.i285 to i32
  br label %.loopexit26.loopexit

bb.ce:                                            ; preds = %bb.bx
  %i.ph = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  br label %.loopexit26.loopexit

.loopexit26.loopexit:                             ; preds = %bb.ce, %_ZL10stbi__get8P13stbi__context.exit286
  %i.pi = phi i32 [ %i.pg, %_ZL10stbi__get8P13stbi__context.exit286 ], [ %i.ph, %bb.ce ] ; 2 uses
  %.not220 = icmp samesign ult i32 %i.pi, %i.cv
  %spec.store.select = select i1 %.not220, i32 %i.pi, i32 0
  %i.pj = zext nneg i32 %spec.store.select to i64
  %i.pk = mul nuw nsw i64 %i.nf, %i.pj
  %scevgep = getelementptr nuw i8, ptr %.0193, i64 %i.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 range(i64 0, 32) %i.nf, i1 false), !tbaa !32
  br label %.loopexit26

bb.cf:                                            ; preds = %.thread
  br i1 %.not211, label %.preheader27.preheader, label %bb.cg

.preheader27.preheader:                           ; preds = %bb.cf
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !30
  %.pre104 = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %.preheader27

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.nb, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 5929, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(21) @.str.85) #41
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.pl = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.pm = trunc nuw i32 %i.pl to i16              ; 2 uses
  %i.pn = lshr i16 %i.pm, 10
  %i.po = and i16 %i.pn, 31
  %.lhs.trunc.i287 = mul nuw nsw i16 %i.po, 255
  %i.pp = udiv i16 %.lhs.trunc.i287, 31
  %i.pq = trunc nuw i16 %i.pp to i8
  store i8 %i.pq, ptr %i.a, align 4, !tbaa !32
  %i.pr = insertelement <2 x i16> poison, i16 %i.pm, i64 0
  %i.ps = shufflevector <2 x i16> %i.pr, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.pt = lshr <2 x i16> %i.ps, <i16 5, i16 0>
  %i.pu = and <2 x i16> %i.pt, splat (i16 31)
  %i.pv = mul nuw nsw <2 x i16> %i.pu, splat (i16 255)
  %i.pw = udiv <2 x i16> %i.pv, splat (i16 31)
  %i.px = trunc nuw <2 x i16> %i.pw to <2 x i8>   ; 2 uses
  %i.py = extractelement <2 x i8> %i.px, i64 0
  store i8 %i.py, ptr %i.nc, align 1, !tbaa !32
  %i.pz = extractelement <2 x i8> %i.px, i64 1
  store i8 %i.pz, ptr %i.nd, align 2, !tbaa !32
  br label %.loopexit26

.preheader27:                                     ; preds = %.preheader27.preheader, %_ZL10stbi__get8P13stbi__context.exit295
  %i.qa = phi ptr [ %.pre104, %.preheader27.preheader ], [ %i.qw, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 3 uses
  %i.qb = phi ptr [ %.pre, %.preheader27.preheader ], [ %i.qx, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 4 uses
  %indvars.iv71 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next72, %_ZL10stbi__get8P13stbi__context.exit295 ] ; 2 uses
  %i.qc = icmp ult ptr %i.qb, %i.qa
  br i1 %i.qc, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.preheader27
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 1 ; 2 uses
  store ptr %i.qd, ptr %i.b, align 8, !tbaa !30
  %i.qe = load i8, ptr %i.qb, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit295

bb.ck:                                            ; preds = %.preheader27
  %i.qf = load i32, ptr %i.mt, align 8, !tbaa !27
  %.not.i290 = icmp eq i32 %i.qf, 0
  br i1 %.not.i290, label %_ZL10stbi__get8P13stbi__context.exit295, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qg = load ptr, ptr %i.mu, align 8, !tbaa !31
  %i.qh = load ptr, ptr %i.mv, align 8, !tbaa !25
  %i.qi = load i32, ptr %i.mx, align 4, !tbaa !26
  %i.qj = tail call noundef i32 %i.qg(ptr noundef %i.qh, ptr noundef nonnull %i.mw, i32 noundef %i.qi), !inline_history !6 ; 2 uses
  %i.qk = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ql = load ptr, ptr %i.my, align 8, !tbaa !29
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = load i32, ptr %i.mz, align 8, !tbaa !28
  %i.qr = add nsw i32 %i.qq, %i.qp
  store i32 %i.qr, ptr %i.mz, align 8, !tbaa !28
  %i.qs = icmp eq i32 %i.qj, 0
  br i1 %i.qs, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.mt, align 8, !tbaa !27
  store i8 0, ptr %i.mw, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i292

bb.cn:                                            ; preds = %bb.cl
  %i.qt = sext i32 %i.qj to i64
  %i.qu = getelementptr inbounds i8, ptr %i.mw, i64 %i.qt
  %.pre.i291 = load i8, ptr %i.mw, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i292

_ZL19stbi__refill_bufferP13stbi__context.exit.i292: ; preds = %bb.cn, %bb.cm
  %i.qv = phi i8 [ 0, %bb.cm ], [ %.pre.i291, %bb.cn ]
  %.sink.i.i293 = phi ptr [ %i.na, %bb.cm ], [ %i.qu, %bb.cn ] ; 2 uses
  store ptr %.sink.i.i293, ptr %i.d, align 8, !tbaa !33
  store ptr %i.na, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit295

_ZL10stbi__get8P13stbi__context.exit295:          ; preds = %bb.cj, %bb.ck, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292
  %i.qw = phi ptr [ %i.qa, %bb.cj ], [ %.sink.i.i293, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ %i.qa, %bb.ck ]
  %i.qx = phi ptr [ %i.qd, %bb.cj ], [ %i.na, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ %i.qb, %bb.ck ]
  %.0.i294 = phi i8 [ %i.qe, %bb.cj ], [ %i.qv, %_ZL19stbi__refill_bufferP13stbi__context.exit.i292 ], [ 0, %bb.ck ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv71
  store i8 %.0.i294, ptr %i.qy, align 1, !tbaa !32
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %.loopexit26, label %.preheader27, !llvm.loop !294

.loopexit26:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit295, %.loopexit26.loopexit, %bb.bw, %bb.ci
  %.118323 = phi i32 [ %.118322, %.loopexit26.loopexit ], [ %.118322, %bb.ci ], [ 1, %bb.bw ], [ %.118322, %_ZL10stbi__get8P13stbi__context.exit295 ]
  %.118521 = phi i32 [ %.118520, %.loopexit26.loopexit ], [ %.118520, %bb.ci ], [ %.018440, %bb.bw ], [ %.118520, %_ZL10stbi__get8P13stbi__context.exit295 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep80, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 range(i64 0, 32) %i.nf, i1 false), !tbaa !32
  %i.qz = add nsw i32 %.118521, -1
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge, label %bb.bo, !llvm.loop !295

._crit_edge:                                      ; preds = %.loopexit26, %.loopexit30
  %.not213.not = icmp eq i8 %i.gs, 0
  %or.cond55 = and i1 %.not213.not, %i.ha
  br i1 %or.cond55, label %.lr.ph51, label %.loopexit25

.lr.ph51:                                         ; preds = %._crit_edge
  %i.ra = mul nuw nsw i32 %i.ed, %.0195.ph        ; 8 uses
  %.not58 = icmp eq i32 %i.ed, 0
  br i1 %.not58, label %.loopexit25, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %.lr.ph51
  %i.rb = add nsw i32 %i.ee, -1                   ; 2 uses
  %5 = mul i32 %i.ed, %i.rb
  %6 = mul i32 %5, %.0195.ph
  %7 = lshr i32 %i.rb, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ra, i32 1)
  %i.rc = sub nsw i32 %i.ra, %smin                ; 3 uses
  %i.rd = zext nneg i32 %i.rc to i64              ; 3 uses
  %i.re = add nuw nsw i64 %i.rd, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.rc, 7
  %invariant.gep210.a = getelementptr i8, ptr %i.hj, i64 %i.rd
  %invariant.gep212 = getelementptr i8, ptr %i.hj, i64 %i.rd
  %min.iters.check172 = icmp ult i32 %i.rc, 63
  %i.rf = and i64 %i.re, 56
  %n.vec = and i64 %i.re, 4294967232              ; 6 uses
  %i.rg = trunc nuw i64 %n.vec to i32
  %i.rh = sub i32 %i.ra, %i.rg
  %cmp.n = icmp eq i64 %i.re, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.rf, 0
  %n.vec176 = and i64 %i.re, 4294967288           ; 5 uses
  %i.ri = trunc nuw i64 %n.vec176 to i32
  %i.rj = sub i32 %i.ra, %i.ri
  %cmp.n181 = icmp eq i64 %i.re, %n.vec176
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph48.preheader, %._crit_edge49
  %indvars.iv95 = phi i32 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next96, %._crit_edge49 ] ; 2 uses
  %indvars.iv91 = phi i32 [ %6, %.lr.ph48.preheader ], [ %indvars.iv.next92, %._crit_edge49 ] ; 2 uses
  %.350 = phi i32 [ 0, %.lr.ph48.preheader ], [ %8, %._crit_edge49 ] ; 2 uses
  %i.rk = sext i32 %indvars.iv91 to i64           ; 8 uses
  %i.rl = zext i32 %indvars.iv95 to i64           ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.rm = getelementptr nuw i8, ptr %i.hj, i64 %i.rl
  %gep211.a = getelementptr i8, ptr %invariant.gep210.a, i64 %i.rl
  %i.rn = getelementptr i8, ptr %gep211.a, i64 1
  %i.ro = getelementptr i8, ptr %i.hj, i64 %i.rk
  %gep213 = getelementptr i8, ptr %invariant.gep212, i64 %i.rk
  %i.rp = getelementptr i8, ptr %gep213, i64 1
  %bound0 = icmp ult ptr %i.rm, %i.rp
  %bound1 = icmp ult ptr %i.ro, %i.rn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check172, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rq = add nuw nsw i64 %n.vec, %i.rl
  %i.rr = add nsw i64 %n.vec, %i.rk
  %invariant.gep = getelementptr i8, ptr %i.hj, i64 %i.rl
  %invariant.gep204.a = getelementptr i8, ptr %i.hj, i64 %i.rk
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %wide.load = load <32 x i8>, ptr %gep, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  %wide.load173.a = load <32 x i8>, ptr %i.rs, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  %gep205.a = getelementptr i8, ptr %invariant.gep204.a, i64 %index ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %gep205.a, i64 32 ; 2 uses
  %wide.load174 = load <32 x i8>, ptr %gep205.a, align 1, !tbaa !32, !alias.scope !307
  %wide.load175 = load <32 x i8>, ptr %i.rt, align 1, !tbaa !32, !alias.scope !307
  store <32 x i8> %wide.load174, ptr %gep, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  store <32 x i8> %wide.load175, ptr %i.rs, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  store <32 x i8> %wide.load, ptr %gep205.a, align 1, !tbaa !32, !alias.scope !307
  store <32 x i8> %wide.load173.a, ptr %i.rt, align 1, !tbaa !32, !alias.scope !307
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ru = icmp eq i64 %index.next, %n.vec
  br i1 %i.ru, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge49, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.rv = add nuw nsw i64 %n.vec176, %i.rl
  %i.rw = add nsw i64 %n.vec176, %i.rk
  %invariant.gep206.a = getelementptr i8, ptr %i.hj, i64 %i.rl
  %invariant.gep208 = getelementptr i8, ptr %i.hj, i64 %i.rk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next180, %vec.epilog.vector.body ] ; 3 uses
  %gep207.a = getelementptr i8, ptr %invariant.gep206.a, i64 %index177 ; 2 uses
  %wide.load178 = load <8 x i8>, ptr %gep207.a, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  %gep209 = getelementptr i8, ptr %invariant.gep208, i64 %index177 ; 2 uses
  %wide.load179 = load <8 x i8>, ptr %gep209, align 1, !tbaa !32, !alias.scope !307
  store <8 x i8> %wide.load179, ptr %gep207.a, align 1, !tbaa !32, !alias.scope !306, !noalias !307
  store <8 x i8> %wide.load178, ptr %gep209, align 1, !tbaa !32, !alias.scope !307
  %index.next180 = add nuw i64 %index177, 8       ; 2 uses
  %i.rx = icmp eq i64 %index.next180, %n.vec176
  br i1 %i.rx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !300

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n181, label %._crit_edge49, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv97.ph = phi i64 [ %i.rl, %iter.check ], [ %i.rl, %vector.memcheck ], [ %i.rq, %vec.epilog.iter.check ], [ %i.rv, %vec.epilog.middle.block ]
  %indvars.iv93.ph = phi i64 [ %i.rk, %iter.check ], [ %i.rk, %vector.memcheck ], [ %i.rr, %vec.epilog.iter.check ], [ %i.rw, %vec.epilog.middle.block ]
  %.319244.ph = phi i32 [ %i.ra, %iter.check ], [ %i.ra, %vector.memcheck ], [ %i.rh, %vec.epilog.iter.check ], [ %i.rj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %vec.epilog.scalar.ph ], [ %indvars.iv97.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %vec.epilog.scalar.ph ], [ %indvars.iv93.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.319244 = phi i32 [ %i.sc, %vec.epilog.scalar.ph ], [ %.319244.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv97 ; 2 uses
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !32
  %i.sa = getelementptr inbounds i8, ptr %i.hj, i64 %indvars.iv93 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !32
  store i8 %i.sb, ptr %i.ry, align 1, !tbaa !32
  store i8 %i.rz, ptr %i.sa, align 1, !tbaa !32
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1
  %i.sc = add nsw i32 %.319244, -1
  %i.sd = icmp sgt i32 %.319244, 1
  br i1 %i.sd, label %vec.epilog.scalar.ph, label %._crit_edge49, !llvm.loop !301

._crit_edge49:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %8 = add nuw nsw i32 %.350, 1
  %indvars.iv.next92 = sub i32 %indvars.iv91, %i.ra
  %indvars.iv.next96 = add i32 %indvars.iv95, %i.ra
  %exitcond102.not = icmp eq i32 %.350, %7
  br i1 %exitcond102.not, label %.loopexit25, label %iter.check, !llvm.loop !302

.loopexit25:                                      ; preds = %._crit_edge49, %.lr.ph51, %._crit_edge
  %.not214 = icmp eq ptr %.0193, null
  br i1 %.not214, label %.loopexit32, label %bb.co

bb.co:                                            ; preds = %.loopexit25
  tail call void @free(ptr noundef nonnull %.0193) #40
  br label %.loopexit32

.loopexit32.loopexit.unr-lcssa:                   ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1
  %lcmp.mod192.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod192.not, label %.loopexit32, label %..thread_crit_edge.i264.us.us.epil.preheader

..thread_crit_edge.i264.us.us.epil.preheader:     ; preds = %.loopexit32.loopexit.unr-lcssa, %..thread_crit_edge.i264.us.us.preheader
  %indvars.iv65.epil.init = phi i64 [ 0, %..thread_crit_edge.i264.us.us.preheader ], [ %indvars.iv.next66.1, %.loopexit32.loopexit.unr-lcssa ]
  %.epil.init191 = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.us.preheader ], [ %i.iy, %.loopexit32.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.se = getelementptr inbounds nuw i8, ptr %.epil.init191, i64 %i.id ; 2 uses
  %.not32.i.us.us.epil = icmp ugt ptr %i.se, %.pre35.i.us
  br i1 %.not32.i.us.us.epil, label %.loopexit32, label %bb.cp

bb.cp:                                            ; preds = %..thread_crit_edge.i264.us.us.epil.preheader
  %i.sf = trunc i64 %indvars.iv65.epil.init to i32
  %i.sg = xor i32 %i.sf, -1
  %i.sh = add i32 %i.ee, %i.sg
  %i.si = mul i32 %i.ia, %i.sh
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds i8, ptr %i.hj, i64 %i.sj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sk, ptr align 1 %.epil.init191, i64 %i.id, i1 false)
  store ptr %i.se, ptr %i.b, align 8, !tbaa !30
  br label %.loopexit32

.loopexit32.loopexit185.unr-lcssa:                ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit32, label %..thread_crit_edge.i264.us.epil.preheader

..thread_crit_edge.i264.us.epil.preheader:        ; preds = %.loopexit32.loopexit185.unr-lcssa, %..thread_crit_edge.i264.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %..thread_crit_edge.i264.us.preheader ], [ %indvars.iv.next.3, %.loopexit32.loopexit185.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted, %..thread_crit_edge.i264.us.preheader ], [ %i.ka, %.loopexit32.loopexit185.unr-lcssa ]
  %lcmp.mod187 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod187)
  br label %..thread_crit_edge.i264.us.epil

..thread_crit_edge.i264.us.epil:                  ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil, %..thread_crit_edge.i264.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil ], [ %indvars.iv.epil.init, %..thread_crit_edge.i264.us.epil.preheader ] ; 2 uses
  %i.sl = phi ptr [ %i.sr, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil ], [ %.epil.init, %..thread_crit_edge.i264.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil ], [ 0, %..thread_crit_edge.i264.us.epil.preheader ]
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.id ; 3 uses
  %.not32.i.us.epil = icmp ugt ptr %i.sm, %.pre35.i.us
  br i1 %.not32.i.us.epil, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil, label %bb.cq

bb.cq:                                            ; preds = %..thread_crit_edge.i264.us.epil
  %i.sn = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.so = mul i32 %i.ia, %i.sn
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds i8, ptr %i.hj, i64 %i.sp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sq, ptr align 1 %i.sl, i64 %i.id, i1 false)
  store ptr %i.sm, ptr %i.b, align 8, !tbaa !30
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil

_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil:  ; preds = %bb.cq, %..thread_crit_edge.i264.us.epil
  %i.sr = phi ptr [ %i.sm, %bb.cq ], [ %i.sl, %..thread_crit_edge.i264.us.epil ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit32, label %..thread_crit_edge.i264.us.epil, !llvm.loop !303

.loopexit32:                                      ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit, %.loopexit32.loopexit185.unr-lcssa, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.epil, %.loopexit32.loopexit.unr-lcssa, %bb.cp, %..thread_crit_edge.i264.us.us.epil.preheader, %.preheader31, %.loopexit25, %bb.co
  %i.ss = icmp samesign ult i8 %.0195.ph.shrunk, 3
  %.not59 = icmp eq i32 %i.hg, 0
  %i.st = or i1 %i.ss, %.not59
  %or.cond162 = or i1 %i.st, %i.gz
  br i1 %or.cond162, label %.loopexit, label %.lr.ph54

.lr.ph54:                                         ; preds = %.loopexit32
  %i.su = zext nneg i8 %.0195.ph.shrunk to i64    ; 9 uses
  %i.sv = add i32 %i.hg, -1
  %xtraiter196 = and i32 %i.hg, 7                 ; 3 uses
  %i.sw = icmp ult i32 %i.sv, 7
  br i1 %i.sw, label %.epil.preheader, label %.lr.ph54.new

.lr.ph54.new:                                     ; preds = %.lr.ph54
  %unroll_iter200 = and i32 %i.hg, -8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %.lr.ph54.new
  %.017653 = phi ptr [ %i.hj, %.lr.ph54.new ], [ %i.uc, %bb.cr ] ; 4 uses
  %niter201 = phi i32 [ 0, %.lr.ph54.new ], [ %niter201.next.7, %bb.cr ]
  %i.sx = load i8, ptr %.017653, align 1, !tbaa !32
  %i.sy = getelementptr inbounds nuw i8, ptr %.017653, i64 2 ; 2 uses
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !32
  store i8 %i.sz, ptr %.017653, align 1, !tbaa !32
  store i8 %i.sx, ptr %i.sy, align 1, !tbaa !32
  %i.ta = getelementptr inbounds nuw i8, ptr %.017653, i64 %i.su ; 4 uses
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !32
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 2 ; 2 uses
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !32
  store i8 %i.td, ptr %i.ta, align 1, !tbaa !32
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !32
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.su ; 4 uses
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !32
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 2 ; 2 uses
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !32
  store i8 %i.th, ptr %i.te, align 1, !tbaa !32
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !32
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.su ; 4 uses
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !32
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 2 ; 2 uses
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !32
  store i8 %i.tl, ptr %i.ti, align 1, !tbaa !32
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !32
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.su ; 4 uses
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !32
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 2 ; 2 uses
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !32
  store i8 %i.tp, ptr %i.tm, align 1, !tbaa !32
  store i8 %i.tn, ptr %i.to, align 1, !tbaa !32
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.su ; 4 uses
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !32
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 2 ; 2 uses
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !32
  store i8 %i.tt, ptr %i.tq, align 1, !tbaa !32
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !32
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.su ; 4 uses
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !32
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 2 ; 2 uses
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !32
  store i8 %i.tx, ptr %i.tu, align 1, !tbaa !32
  store i8 %i.tv, ptr %i.tw, align 1, !tbaa !32
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.su ; 4 uses
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !32
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 2 ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !32
  store i8 %i.ub, ptr %i.ty, align 1, !tbaa !32
  store i8 %i.tz, ptr %i.ua, align 1, !tbaa !32
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.su ; 2 uses
  %niter201.next.7 = add nuw i32 %niter201, 8     ; 2 uses
  %niter201.ncmp.7 = icmp eq i32 %niter201.next.7, %unroll_iter200
  br i1 %niter201.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.cr, !llvm.loop !304

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cr
  %lcmp.mod198.not = icmp eq i32 %xtraiter196, 0
  br i1 %lcmp.mod198.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph54
  %.017653.epil.init = phi ptr [ %i.hj, %.lr.ph54 ], [ %i.uc, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod199 = icmp ne i32 %xtraiter196, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %.epil.preheader
  %.017653.epil = phi ptr [ %.017653.epil.init, %.epil.preheader ], [ %i.ug, %bb.cs ] ; 4 uses
  %epil.iter197 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter197.next, %bb.cs ]
  %i.ud = load i8, ptr %.017653.epil, align 1, !tbaa !32
  %i.ue = getelementptr inbounds nuw i8, ptr %.017653.epil, i64 2 ; 2 uses
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !32
  store i8 %i.uf, ptr %.017653.epil, align 1, !tbaa !32
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !32
  %i.ug = getelementptr inbounds nuw i8, ptr %.017653.epil, i64 %i.su
  %epil.iter197.next = add i32 %epil.iter197, 1   ; 2 uses
  %epil.iter197.cmp.not = icmp eq i32 %epil.iter197.next, %xtraiter196
  br i1 %epil.iter197.cmp.not, label %.loopexit, label %bb.cs, !llvm.loop !305

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.cs, %.loopexit32
  %.not215 = icmp eq i32 %4, 0
  %.not216 = icmp eq i32 %4, %.0195.ph
  %or.cond222 = or i1 %.not215, %.not216
  br i1 %or.cond222, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.loopexit
  %i.uh = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.hj, i32 noundef %.0195.ph, i32 noundef %4, i32 noundef %i.ed, i32 noundef %i.ee)
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit, %bb.ct, %bb.bn, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.be, %_ZL17stbi__malloc_mad3iiii.exit.thread, %bb.ao, %_ZL18stbi__tga_get_compiiPi.exit
  %.0 = phi ptr [ null, %_ZL18stbi__tga_get_compiiPi.exit ], [ null, %bb.ao ], [ null, %bb.be ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ null, %bb.bn ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ %i.uh, %bb.ct ], [ %i.hj, %.loopexit ]
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
end_hunk_1
