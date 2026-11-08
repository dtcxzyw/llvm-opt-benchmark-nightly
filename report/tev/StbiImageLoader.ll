Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %.sink.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.d, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !82
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
  store ptr %i.am, ptr %i.b, align 8, !tbaa !82
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit226

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !79
  %.not.i221 = icmp eq i32 %i.ap, 0
  br i1 %.not.i221, label %_ZL10stbi__get8P13stbi__context.exit226, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !78
  %i.ax = tail call noundef i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %i.au, i32 noundef %i.aw), !inline_history !12 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !81
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !80
  %i.bh = add nsw i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !80
  %i.bi = icmp eq i32 %i.ax, 0
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ao, align 8, !tbaa !79
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.au, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i223

bb.k:                                             ; preds = %bb.i
  %i.bk = sext i32 %i.ax to i64
  %i.bl = getelementptr inbounds i8, ptr %i.au, i64 %i.bk
  %.pre.i222 = load i8, ptr %i.au, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i223

_ZL19stbi__refill_bufferP13stbi__context.exit.i223: ; preds = %bb.k, %bb.j
  %i.bm = phi i8 [ 0, %bb.j ], [ %.pre.i222, %bb.k ]
  %.sink.i.i224 = phi ptr [ %i.bj, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  store ptr %.sink.i.i224, ptr %i.d, align 8, !tbaa !85
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit226

_ZL10stbi__get8P13stbi__context.exit226:          ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i223
  %i.bo = phi ptr [ %i.ai, %bb.g ], [ %.sink.i.i224, %_ZL19stbi__refill_bufferP13stbi__context.exit.i223 ], [ %i.ai, %bb.h ]
  %i.bp = phi ptr [ %i.am, %bb.g ], [ %i.bn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i223 ], [ %i.aj, %bb.h ] ; 3 uses
  %.0.i225 = phi i8 [ %i.an, %bb.g ], [ %i.bm, %_ZL19stbi__refill_bufferP13stbi__context.exit.i223 ], [ 0, %bb.h ]
  %i.bq = icmp ult ptr %i.bp, %i.bo
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit226
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.br, ptr %i.b, align 8, !tbaa !82
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit232

bb.m:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit226
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !79
  %.not.i227 = icmp eq i32 %i.bu, 0
  br i1 %.not.i227, label %_ZL10stbi__get8P13stbi__context.exit232, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !83
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !77
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !78
  %i.cc = tail call noundef i32 %i.bw(ptr noundef %i.by, ptr noundef nonnull %i.bz, i32 noundef %i.cb), !inline_history !12 ; 2 uses
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !81
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !80
  %i.cm = add nsw i32 %i.cl, %i.cj
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !80
  %i.cn = icmp eq i32 %i.cc, 0
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bt, align 8, !tbaa !79
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.bz, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i229

bb.p:                                             ; preds = %bb.n
  %i.cp = sext i32 %i.cc to i64
  %i.cq = getelementptr inbounds i8, ptr %i.bz, i64 %i.cp
  %.pre.i228 = load i8, ptr %i.bz, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i229

_ZL19stbi__refill_bufferP13stbi__context.exit.i229: ; preds = %bb.p, %bb.o
  %i.cr = phi i8 [ 0, %bb.o ], [ %.pre.i228, %bb.p ]
  %.sink.i.i230 = phi ptr [ %i.co, %bb.o ], [ %i.cq, %bb.p ]
  store ptr %.sink.i.i230, ptr %i.d, align 8, !tbaa !85
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit232

_ZL10stbi__get8P13stbi__context.exit232:          ; preds = %bb.l, %bb.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i229
  %.0.i231 = phi i8 [ %i.bs, %bb.l ], [ %i.cr, %_ZL19stbi__refill_bufferP13stbi__context.exit.i229 ], [ 0, %bb.m ] ; 2 uses
  %i.ct = zext i8 %.0.i231 to i32                 ; 2 uses
  %i.cu = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 4 uses
  %i.cv = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 4 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !82  ; 3 uses
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.cy = icmp ult ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit232
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cz, ptr %i.b, align 8, !tbaa !82
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit238

bb.r:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit232
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !79
  %.not.i233 = icmp eq i32 %i.dc, 0
  br i1 %.not.i233, label %_ZL10stbi__get8P13stbi__context.exit238, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !83
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !77
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !78
  %i.dk = tail call noundef i32 %i.de(ptr noundef %i.dg, ptr noundef nonnull %i.dh, i32 noundef %i.dj), !inline_history !12 ; 2 uses
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !81
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !80
  %i.du = add nsw i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !80
  %i.dv = icmp eq i32 %i.dk, 0
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.db, align 8, !tbaa !79
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.dh, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i235

bb.u:                                             ; preds = %bb.s
  %i.dx = sext i32 %i.dk to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dh, i64 %i.dx
  %.pre.i234 = load i8, ptr %i.dh, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i235

_ZL19stbi__refill_bufferP13stbi__context.exit.i235: ; preds = %bb.u, %bb.t
  %i.dz = phi i8 [ 0, %bb.t ], [ %.pre.i234, %bb.u ]
  %.sink.i.i236 = phi ptr [ %i.dw, %bb.t ], [ %i.dy, %bb.u ]
  store ptr %.sink.i.i236, ptr %i.d, align 8, !tbaa !85
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ea, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit238

_ZL10stbi__get8P13stbi__context.exit238:          ; preds = %bb.q, %bb.r, %_ZL19stbi__refill_bufferP13stbi__context.exit.i235
  %.0.i237 = phi i8 [ %i.da, %bb.q ], [ %i.dz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i235 ], [ 0, %bb.r ] ; 2 uses
  %i.eb = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ec = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ed = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 9 uses
  %i.ee = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 17 uses
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !82  ; 4 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.eh = icmp ult ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit238
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !82
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit244

bb.w:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit238
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !79
  %.not.i239 = icmp eq i32 %i.el, 0
  br i1 %.not.i239, label %_ZL10stbi__get8P13stbi__context.exit244, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !83
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !77
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.es = load i32, ptr %i.er, align 4, !tbaa !78
  %i.et = tail call noundef i32 %i.en(ptr noundef %i.ep, ptr noundef nonnull %i.eq, i32 noundef %i.es), !inline_history !12 ; 2 uses
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !81
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !80
  %i.fd = add nsw i32 %i.fc, %i.fa
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !80
  %i.fe = icmp eq i32 %i.et, 0
  br i1 %i.fe, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ek, align 8, !tbaa !79
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.eq, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i241

bb.z:                                             ; preds = %bb.x
  %i.fg = sext i32 %i.et to i64
  %i.fh = getelementptr inbounds i8, ptr %i.eq, i64 %i.fg
  %.pre.i240 = load i8, ptr %i.eq, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i241

_ZL19stbi__refill_bufferP13stbi__context.exit.i241: ; preds = %bb.z, %bb.y
  %i.fi = phi i8 [ 0, %bb.y ], [ %.pre.i240, %bb.z ]
  %.sink.i.i242 = phi ptr [ %i.ff, %bb.y ], [ %i.fh, %bb.z ] ; 2 uses
  store ptr %.sink.i.i242, ptr %i.d, align 8, !tbaa !85
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.fj, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit244

_ZL10stbi__get8P13stbi__context.exit244:          ; preds = %bb.v, %bb.w, %_ZL19stbi__refill_bufferP13stbi__context.exit.i241
  %i.fk = phi ptr [ %i.eg, %bb.v ], [ %.sink.i.i242, %_ZL19stbi__refill_bufferP13stbi__context.exit.i241 ], [ %i.eg, %bb.w ] ; 3 uses
  %i.fl = phi ptr [ %i.ei, %bb.v ], [ %i.fj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i241 ], [ %i.ef, %bb.w ] ; 4 uses
  %.0.i243 = phi i8 [ %i.ej, %bb.v ], [ %i.fi, %_ZL19stbi__refill_bufferP13stbi__context.exit.i241 ], [ 0, %bb.w ] ; 3 uses
  %i.fm = icmp ult ptr %i.fl, %i.fk
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit244
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 2 uses
  store ptr %i.fn, ptr %i.b, align 8, !tbaa !82
  %i.fo = load i8, ptr %i.fl, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit250

bb.ab:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit244
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !79
  %.not.i245 = icmp eq i32 %i.fq, 0
  br i1 %.not.i245, label %_ZL10stbi__get8P13stbi__context.exit250, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !83
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !77
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !78
  %i.fy = tail call noundef i32 %i.fs(ptr noundef %i.fu, ptr noundef nonnull %i.fv, i32 noundef %i.fx), !inline_history !12 ; 2 uses
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !81
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !80
  %i.gi = add nsw i32 %i.gh, %i.gf
  store i32 %i.gi, ptr %i.gg, align 8, !tbaa !80
  %i.gj = icmp eq i32 %i.fy, 0
  br i1 %i.gj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.fp, align 8, !tbaa !79
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.fv, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i247

bb.ae:                                            ; preds = %bb.ac
  %i.gl = sext i32 %i.fy to i64
  %i.gm = getelementptr inbounds i8, ptr %i.fv, i64 %i.gl
  %.pre.i246 = load i8, ptr %i.fv, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i247

_ZL19stbi__refill_bufferP13stbi__context.exit.i247: ; preds = %bb.ae, %bb.ad
  %i.gn = phi i8 [ 0, %bb.ad ], [ %.pre.i246, %bb.ae ]
  %.sink.i.i248 = phi ptr [ %i.gk, %bb.ad ], [ %i.gm, %bb.ae ] ; 2 uses
  store ptr %.sink.i.i248, ptr %i.d, align 8, !tbaa !85
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.go, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit250

_ZL10stbi__get8P13stbi__context.exit250:          ; preds = %bb.aa, %bb.ab, %_ZL19stbi__refill_bufferP13stbi__context.exit.i247
  %.pre.i259 = phi ptr [ %i.fn, %bb.aa ], [ %i.go, %_ZL19stbi__refill_bufferP13stbi__context.exit.i247 ], [ %i.fl, %bb.ab ] ; 2 uses
  %i.gp = phi ptr [ %i.fk, %bb.aa ], [ %.sink.i.i248, %_ZL19stbi__refill_bufferP13stbi__context.exit.i247 ], [ %i.fk, %bb.ab ] ; 2 uses
  %.0.i249 = phi i8 [ %i.fo, %bb.aa ], [ %i.gn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i247 ], [ 0, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i32 0, ptr %i.a, align 4
  %i.gq = icmp ugt i8 %.0.i231, 7                 ; 3 uses
  %.0.i249.fr = freeze i8 %.0.i249
  %i.gr = lshr i8 %.0.i249.fr, 5
  %i.gs = and i8 %i.gr, 1                         ; 2 uses
  %i.gt = icmp ne i8 %.0.i225, 0                  ; 4 uses
  br i1 %i.gt, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit250
  switch i8 %.0.i237, label %_ZL18stbi__tga_get_compiiPi.exit [
    i8 8, label %bb.al
    i8 16, label %bb.ag
    i8 15, label %bb.ag
    i8 24, label %bb.ah
    i8 32, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.aj, %bb.ai, %bb.af, %bb.af
  br label %bb.al

bb.ah:                                            ; preds = %bb.af, %bb.af
  %i.gu = lshr i8 %.0.i237, 3
  br label %bb.al

bb.ai:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit250
  switch i8 %.0.i243, label %_ZL18stbi__tga_get_compiiPi.exit [
    i8 8, label %bb.al
    i8 16, label %bb.aj
    i8 15, label %bb.ag
    i8 24, label %bb.ak
    i8 32, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gv = add nsw i32 %i.ct, -8
  %.0178 = select i1 %i.gq, i32 %i.gv, i32 %i.ct
  %i.gw = icmp eq i32 %.0178, 3
  br i1 %i.gw, label %bb.al, label %bb.ag

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %i.gx = lshr i8 %.0.i243, 3
  br label %bb.al

_ZL18stbi__tga_get_compiiPi.exit:                 ; preds = %bb.ai, %bb.af
  %i.gy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.63, ptr %i.gy, align 8, !tbaa !71
  br label %bb.cp

bb.al:                                            ; preds = %bb.ag, %bb.ah, %bb.af, %bb.ak, %bb.ai, %bb.aj
  %i.gz = phi i1 [ false, %bb.ak ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.ai ], [ true, %bb.ag ], [ false, %bb.af ] ; 2 uses
  %.not209 = phi i1 [ true, %bb.ak ], [ true, %bb.ah ], [ true, %bb.aj ], [ true, %bb.ai ], [ false, %bb.ag ], [ true, %bb.af ] ; 2 uses
  %.0193.ph.shrunk = phi i8 [ %i.gx, %bb.ak ], [ %i.gu, %bb.ah ], [ 2, %bb.aj ], [ 1, %bb.ai ], [ 3, %bb.ag ], [ 1, %bb.af ] ; 6 uses
  %.0193.ph = zext nneg i8 %.0193.ph.shrunk to i32 ; 10 uses
  store i32 %i.ed, ptr %1, align 4, !tbaa !72
  store i32 %i.ee, ptr %2, align 4, !tbaa !72
  %.not204 = icmp eq ptr %3, null
  br i1 %.not204, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %.0193.ph, ptr %3, align 4, !tbaa !72
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
  %i.hd = udiv i32 2147483647, %.0193.ph
  %.not.i256 = icmp samesign ugt i32 %i.hc, %i.hd
  br i1 %.not.i256, label %bb.ao, label %_ZL21stbi__mul2sizes_validii.exit.i.i

bb.ao:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %_ZL21stbi__mul2sizes_validii.exit.i
  %i.he = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.he, align 8, !tbaa !71
  br label %bb.cp

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.hf = udiv i32 2147483647, %i.ee
  %.not23.i.i = icmp samesign ugt i32 %i.ed, %i.hf
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.an, %_ZL21stbi__mul2sizes_validii.exit.i.i
  %i.hg = phi i32 [ %i.hc, %_ZL21stbi__mul2sizes_validii.exit.i.i ], [ 0, %bb.an ] ; 7 uses
  %i.hh = mul nuw nsw i32 %i.hg, %.0193.ph
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.hi) #54 ; 26 uses
  %.not206 = icmp eq ptr %i.hj, null
  br i1 %.not206, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.ap

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  %i.hk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.hk, align 8, !tbaa !71
  br label %bb.cp

bb.ap:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.hl = icmp eq i8 %.0.i, 0
  br i1 %i.hl, label %_ZL10stbi__skipP13stbi__contexti.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !83
  %.not.i258 = icmp eq ptr %i.hn, null
  br i1 %.not.i258, label %.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ho = ptrtoint ptr %i.gp to i64
  %i.hp = ptrtoint ptr %.pre.i259 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = trunc i64 %i.hq to i32                  ; 2 uses
  %i.hs = icmp sgt i32 %i.ak, %i.hr
  br i1 %i.hs, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !82
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !123
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !77
  %i.hx = sub nsw i32 %i.ak, %i.hr
  tail call void %i.hu(ptr noundef %i.hw, i32 noundef %i.hx), !inline_history !324
  br label %_ZL10stbi__skipP13stbi__contexti.exit

.thread.i:                                        ; preds = %bb.aq, %bb.ar
  %i.hy = zext i8 %.0.i to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre.i259, i64 %i.hy
  store ptr %i.hz, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__skipP13stbi__contexti.exit

_ZL10stbi__skipP13stbi__contexti.exit:            ; preds = %bb.ap, %bb.as, %.thread.i
  %or.cond = or i1 %i.gt, %i.gq
  %or.cond3 = or i1 %or.cond, %i.gz
  br i1 %or.cond3, label %bb.ba, label %.preheader32

.preheader32:                                     ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.ha, label %.lr.ph, label %.loopexit33

.lr.ph:                                           ; preds = %.preheader32
  %.not207.not = icmp eq i8 %i.gs, 0              ; 2 uses
  %i.ia = mul nuw nsw i32 %i.ed, %.0193.ph        ; 10 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.id = zext nneg i32 %i.ia to i64              ; 14 uses
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !83
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre35.i.us = load ptr, ptr %i.d, align 8, !tbaa !85 ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !82 ; 4 uses
  %wide.trip.count69 = zext nneg i32 %i.ee to i64 ; 4 uses
  br i1 %.not207.not, label %..thread_crit_edge.i262.us.us.preheader, label %..thread_crit_edge.i262.us.preheader

..thread_crit_edge.i262.us.preheader:             ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count69, 1
  %i.ig = icmp eq i32 %i.ee, 1
  br i1 %i.ig, label %..thread_crit_edge.i262.us.epil.preheader, label %..thread_crit_edge.i262.us.preheader.new

..thread_crit_edge.i262.us.preheader.new:         ; preds = %..thread_crit_edge.i262.us.preheader
  %unroll_iter = and i64 %wide.trip.count69, 65534
  br label %..thread_crit_edge.i262.us

..thread_crit_edge.i262.us.us.preheader:          ; preds = %.lr.ph.split.us
  %xtraiter189 = and i64 %wide.trip.count69, 1
  %i.ih = icmp eq i32 %i.ee, 1
  br i1 %i.ih, label %..thread_crit_edge.i262.us.us.epil.preheader, label %..thread_crit_edge.i262.us.us.preheader.new

..thread_crit_edge.i262.us.us.preheader.new:      ; preds = %..thread_crit_edge.i262.us.us.preheader
  %unroll_iter194 = and i64 %wide.trip.count69, 65534
  br label %..thread_crit_edge.i262.us.us

..thread_crit_edge.i262.us.us:                    ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, %..thread_crit_edge.i262.us.us.preheader.new
  %indvars.iv66 = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader.new ], [ %indvars.iv.next67.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %i.ii = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.us.preheader.new ], [ %i.iy, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %niter195 = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader.new ], [ %niter195.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.id ; 3 uses
  %.not32.i.us.us = icmp ugt ptr %i.ij, %.pre35.i.us
  br i1 %.not32.i.us.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us, label %bb.at

bb.at:                                            ; preds = %..thread_crit_edge.i262.us.us
  %i.ik = trunc i64 %indvars.iv66 to i32
  %i.il = xor i32 %i.ik, -1
  %i.im = add i32 %i.ee, %i.il
  %i.in = mul i32 %i.ia, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %i.hj, i64 %i.io
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr align 1 %i.ii, i64 %i.id, i1 false)
  store ptr %i.ij, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us:    ; preds = %..thread_crit_edge.i262.us.us, %bb.at
  %i.iq = phi ptr [ %i.ij, %bb.at ], [ %i.ii, %..thread_crit_edge.i262.us.us ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.id ; 3 uses
  %.not32.i.us.us.1 = icmp ugt ptr %i.ir, %.pre35.i.us
  br i1 %.not32.i.us.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, label %bb.au

bb.au:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.is = trunc i64 %indvars.iv66 to i32
  %i.it = xor i32 %i.is, -2
  %i.iu = add i32 %i.ee, %i.it
  %i.iv = mul i32 %i.ia, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds i8, ptr %i.hj, i64 %i.iw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr align 1 %i.iq, i64 %i.id, i1 false)
  store ptr %i.ir, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1:  ; preds = %bb.au, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.iy = phi ptr [ %i.ir, %bb.au ], [ %i.iq, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us ] ; 2 uses
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter195.next.1 = add i64 %niter195, 2         ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %.loopexit33.loopexit.unr-lcssa, label %..thread_crit_edge.i262.us.us, !llvm.loop !829

..thread_crit_edge.i262.us:                       ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, %..thread_crit_edge.i262.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %indvars.iv.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %i.iz = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader.new ], [ %i.jm, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %niter.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.id ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.ja, %.pre35.i.us
  br i1 %.not32.i.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us, label %bb.av

bb.av:                                            ; preds = %..thread_crit_edge.i262.us
  %i.jb = trunc nuw nsw i64 %indvars.iv to i32
  %i.jc = mul i32 %i.ia, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr %i.hj, i64 %i.jd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.je, ptr align 1 %i.iz, i64 %i.id, i1 false)
  store ptr %i.ja, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us:       ; preds = %bb.av, %..thread_crit_edge.i262.us
  %i.jf = phi ptr [ %i.ja, %bb.av ], [ %i.iz, %..thread_crit_edge.i262.us ] ; 3 uses
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
  store ptr %i.jg, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.1:     ; preds = %bb.aw, %_ZL10stbi__getnP13stbi__contextPhi.exit.us
end_hunk_0
begin_hunk_1_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
bb.bt:                                            ; preds = %bb.bm
  %.not215 = icmp eq i32 %.018042, 0              ; 2 uses
  %brmerge = or i1 %.not215, %.not216.not
  %not..not215 = xor i1 %.not215, true
  %.mux = zext i1 %not..not215 to i32
  br i1 %brmerge, label %.thread, label %.loopexit27

.thread:                                          ; preds = %bb.bt, %bb.bl, %_ZL10stbi__get8P13stbi__context.exit278
  %.118123 = phi i32 [ %.mux, %bb.bt ], [ %i.nv, %_ZL10stbi__get8P13stbi__context.exit278 ], [ %.018042, %bb.bl ] ; 3 uses
  %.118321 = phi i32 [ %.018241, %bb.bt ], [ %i.nu, %_ZL10stbi__get8P13stbi__context.exit278 ], [ %.018241, %bb.bl ] ; 3 uses
  br i1 %i.gt, label %bb.bu, label %bb.cc

bb.bu:                                            ; preds = %.thread
  br i1 %i.mq, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.nw = load ptr, ptr %i.b, align 8, !tbaa !82  ; 3 uses
  %i.nx = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.ny = icmp ult ptr %i.nw, %i.nx
  br i1 %i.ny, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  store ptr %i.nz, ptr %i.b, align 8, !tbaa !82
  %i.oa = load i8, ptr %i.nw, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit284

bb.bx:                                            ; preds = %bb.bv
  %i.ob = load i32, ptr %i.mg, align 8, !tbaa !79
  %.not.i279 = icmp eq i32 %i.ob, 0
  br i1 %.not.i279, label %_ZL10stbi__get8P13stbi__context.exit284, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.oc = load ptr, ptr %i.mh, align 8, !tbaa !83
  %i.od = load ptr, ptr %i.mi, align 8, !tbaa !77
  %i.oe = load i32, ptr %i.mk, align 4, !tbaa !78
  %i.of = tail call noundef i32 %i.oc(ptr noundef %i.od, ptr noundef nonnull %i.mj, i32 noundef %i.oe), !inline_history !12 ; 2 uses
  %i.og = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.oh = load ptr, ptr %i.ml, align 8, !tbaa !81
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = trunc i64 %i.ok to i32
  %i.om = load i32, ptr %i.mm, align 8, !tbaa !80
  %i.on = add nsw i32 %i.om, %i.ol
  store i32 %i.on, ptr %i.mm, align 8, !tbaa !80
  %i.oo = icmp eq i32 %i.of, 0
  br i1 %i.oo, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.mg, align 8, !tbaa !79
  store i8 0, ptr %i.mj, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i281

bb.ca:                                            ; preds = %bb.by
  %i.op = sext i32 %i.of to i64
  %i.oq = getelementptr inbounds i8, ptr %i.mj, i64 %i.op
  %.pre.i280 = load i8, ptr %i.mj, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i281

_ZL19stbi__refill_bufferP13stbi__context.exit.i281: ; preds = %bb.ca, %bb.bz
  %i.or = phi i8 [ 0, %bb.bz ], [ %.pre.i280, %bb.ca ]
  %.sink.i.i282 = phi ptr [ %i.mn, %bb.bz ], [ %i.oq, %bb.ca ]
  store ptr %.sink.i.i282, ptr %i.d, align 8, !tbaa !85
  store ptr %i.mn, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit284

_ZL10stbi__get8P13stbi__context.exit284:          ; preds = %bb.bw, %bb.bx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i281
  %.0.i283 = phi i8 [ %i.oa, %bb.bw ], [ %i.or, %_ZL19stbi__refill_bufferP13stbi__context.exit.i281 ], [ 0, %bb.bx ]
  %i.os = zext i8 %.0.i283 to i32
  br label %.loopexit27.loopexit

bb.cb:                                            ; preds = %bb.bu
  %i.ot = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  br label %.loopexit27.loopexit

.loopexit27.loopexit:                             ; preds = %bb.cb, %_ZL10stbi__get8P13stbi__context.exit284
  %i.ou = phi i32 [ %i.os, %_ZL10stbi__get8P13stbi__context.exit284 ], [ %i.ot, %bb.cb ] ; 2 uses
  %.not218 = icmp samesign ult i32 %i.ou, %i.cv
  %spec.store.select = select i1 %.not218, i32 %i.ou, i32 0
  %i.ov = zext nneg i32 %spec.store.select to i64
  %i.ow = mul nuw nsw i64 %i.mr, %i.ov
  %scevgep = getelementptr nuw i8, ptr %.0191, i64 %i.ow
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 range(i64 0, 32) %i.mr, i1 false), !tbaa !84
  br label %.loopexit27

bb.cc:                                            ; preds = %.thread
  br i1 %.not209, label %.preheader28.preheader, label %bb.cd

.preheader28.preheader:                           ; preds = %bb.cc
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !82
  %.pre105 = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %.preheader28

bb.cd:                                            ; preds = %bb.cc
  %i.ox = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.oy = trunc nuw i32 %i.ox to i16              ; 3 uses
  %i.oz = lshr i16 %i.oy, 10
  %i.pa = and i16 %i.oz, 31
  %.lhs.trunc.i285 = mul nuw nsw i16 %i.pa, 255
  %i.pb = udiv i16 %.lhs.trunc.i285, 31
  %i.pc = trunc nuw i16 %i.pb to i8
  store i8 %i.pc, ptr %i.a, align 4, !tbaa !84
  %i.pd = lshr i16 %i.oy, 5
  %i.pe = insertelement <2 x i16> poison, i16 %i.pd, i64 0
  %i.pf = insertelement <2 x i16> %i.pe, i16 %i.oy, i64 1
  %i.pg = and <2 x i16> %i.pf, splat (i16 31)
  %i.ph = mul nuw nsw <2 x i16> %i.pg, splat (i16 255)
  %i.pi = udiv <2 x i16> %i.ph, splat (i16 31)    ; 2 uses
  %i.pj = bitcast <2 x i16> %i.pi to <4 x i8>
  %i.pk = extractelement <4 x i8> %i.pj, i64 0
  store i8 %i.pk, ptr %i.mo, align 1, !tbaa !84
  %i.pl = bitcast <2 x i16> %i.pi to <4 x i8>
  %i.pm = extractelement <4 x i8> %i.pl, i64 2
  store i8 %i.pm, ptr %i.mp, align 2, !tbaa !84
  br label %.loopexit27

.preheader28:                                     ; preds = %.preheader28.preheader, %_ZL10stbi__get8P13stbi__context.exit293
  %i.pn = phi ptr [ %.pre105, %.preheader28.preheader ], [ %i.qj, %_ZL10stbi__get8P13stbi__context.exit293 ] ; 3 uses
  %i.po = phi ptr [ %.pre, %.preheader28.preheader ], [ %i.qk, %_ZL10stbi__get8P13stbi__context.exit293 ] ; 4 uses
  %indvars.iv72 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next73, %_ZL10stbi__get8P13stbi__context.exit293 ] ; 2 uses
  %i.pp = icmp ult ptr %i.po, %i.pn
  br i1 %i.pp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.preheader28
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 1 ; 2 uses
  store ptr %i.pq, ptr %i.b, align 8, !tbaa !82
  %i.pr = load i8, ptr %i.po, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit293

bb.cf:                                            ; preds = %.preheader28
  %i.ps = load i32, ptr %i.mg, align 8, !tbaa !79
  %.not.i288 = icmp eq i32 %i.ps, 0
  br i1 %.not.i288, label %_ZL10stbi__get8P13stbi__context.exit293, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pt = load ptr, ptr %i.mh, align 8, !tbaa !83
  %i.pu = load ptr, ptr %i.mi, align 8, !tbaa !77
  %i.pv = load i32, ptr %i.mk, align 4, !tbaa !78
  %i.pw = tail call noundef i32 %i.pt(ptr noundef %i.pu, ptr noundef nonnull %i.mj, i32 noundef %i.pv), !inline_history !12 ; 2 uses
  %i.px = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.py = load ptr, ptr %i.ml, align 8, !tbaa !81
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = load i32, ptr %i.mm, align 8, !tbaa !80
  %i.qe = add nsw i32 %i.qd, %i.qc
  store i32 %i.qe, ptr %i.mm, align 8, !tbaa !80
  %i.qf = icmp eq i32 %i.pw, 0
  br i1 %i.qf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.mg, align 8, !tbaa !79
  store i8 0, ptr %i.mj, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i290

bb.ci:                                            ; preds = %bb.cg
  %i.qg = sext i32 %i.pw to i64
  %i.qh = getelementptr inbounds i8, ptr %i.mj, i64 %i.qg
  %.pre.i289 = load i8, ptr %i.mj, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i290

_ZL19stbi__refill_bufferP13stbi__context.exit.i290: ; preds = %bb.ci, %bb.ch
  %i.qi = phi i8 [ 0, %bb.ch ], [ %.pre.i289, %bb.ci ]
  %.sink.i.i291 = phi ptr [ %i.mn, %bb.ch ], [ %i.qh, %bb.ci ] ; 2 uses
  store ptr %.sink.i.i291, ptr %i.d, align 8, !tbaa !85
  store ptr %i.mn, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit293

_ZL10stbi__get8P13stbi__context.exit293:          ; preds = %bb.ce, %bb.cf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290
  %i.qj = phi ptr [ %i.pn, %bb.ce ], [ %.sink.i.i291, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290 ], [ %i.pn, %bb.cf ]
  %i.qk = phi ptr [ %i.pq, %bb.ce ], [ %i.mn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290 ], [ %i.po, %bb.cf ]
  %.0.i292 = phi i8 [ %i.pr, %bb.ce ], [ %i.qi, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290 ], [ 0, %bb.cf ]
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv72
  store i8 %.0.i292, ptr %i.ql, align 1, !tbaa !84
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.loopexit27, label %.preheader28, !llvm.loop !832

.loopexit27:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit293, %.loopexit27.loopexit, %bb.bt, %bb.cd
  %.118124 = phi i32 [ %.118123, %.loopexit27.loopexit ], [ %.118123, %bb.cd ], [ 1, %bb.bt ], [ %.118123, %_ZL10stbi__get8P13stbi__context.exit293 ]
  %.118322 = phi i32 [ %.118321, %.loopexit27.loopexit ], [ %.118321, %bb.cd ], [ %.018241, %bb.bt ], [ %.118321, %_ZL10stbi__get8P13stbi__context.exit293 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep81, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 range(i64 0, 32) %i.mr, i1 false), !tbaa !84
  %i.qm = add nsw i32 %.118322, -1
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count88
  br i1 %exitcond89.not, label %._crit_edge, label %bb.bl, !llvm.loop !833

._crit_edge:                                      ; preds = %.loopexit27, %.loopexit31
  %.not211.not = icmp eq i8 %i.gs, 0
  %or.cond56 = and i1 %.not211.not, %i.ha
  br i1 %or.cond56, label %.lr.ph52, label %.loopexit26

.lr.ph52:                                         ; preds = %._crit_edge
  %i.qn = mul nuw nsw i32 %i.ed, %.0193.ph        ; 8 uses
  %.not59 = icmp eq i32 %i.ed, 0
  br i1 %.not59, label %.loopexit26, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.lr.ph52
  %i.qo = add nsw i32 %i.ee, -1                   ; 2 uses
  %5 = mul i32 %i.ed, %i.qo
  %6 = mul i32 %5, %.0193.ph
  %7 = lshr i32 %i.qo, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.qn, i32 1)
  %i.qp = sub nsw i32 %i.qn, %smin                ; 3 uses
  %i.qq = zext nneg i32 %i.qp to i64              ; 3 uses
  %i.qr = add nuw nsw i64 %i.qq, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.qp, 3
  %invariant.gep209.a = getelementptr i8, ptr %i.hj, i64 %i.qq
  %invariant.gep211 = getelementptr i8, ptr %i.hj, i64 %i.qq
  %min.iters.check173 = icmp ult i32 %i.qp, 31
  %i.qs = and i64 %i.qr, 28
  %n.vec = and i64 %i.qr, 4294967264              ; 6 uses
  %i.qt = trunc nuw i64 %n.vec to i32
  %i.qu = sub i32 %i.qn, %i.qt
  %cmp.n = icmp eq i64 %i.qr, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.qs, 0
  %n.vec177 = and i64 %i.qr, 4294967292           ; 5 uses
  %i.qv = trunc nuw i64 %n.vec177 to i32
  %i.qw = sub i32 %i.qn, %i.qv
  %cmp.n182 = icmp eq i64 %i.qr, %n.vec177
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph49.preheader, %._crit_edge50
  %indvars.iv96 = phi i32 [ 0, %.lr.ph49.preheader ], [ %indvars.iv.next97, %._crit_edge50 ] ; 2 uses
  %indvars.iv92 = phi i32 [ %6, %.lr.ph49.preheader ], [ %indvars.iv.next93, %._crit_edge50 ] ; 2 uses
  %.351 = phi i32 [ 0, %.lr.ph49.preheader ], [ %8, %._crit_edge50 ] ; 2 uses
  %i.qx = sext i32 %indvars.iv92 to i64           ; 8 uses
  %i.qy = zext i32 %indvars.iv96 to i64           ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.qz = getelementptr nuw i8, ptr %i.hj, i64 %i.qy
  %gep210.a = getelementptr i8, ptr %invariant.gep209.a, i64 %i.qy
  %i.ra = getelementptr i8, ptr %gep210.a, i64 1
  %i.rb = getelementptr i8, ptr %i.hj, i64 %i.qx
  %gep212 = getelementptr i8, ptr %invariant.gep211, i64 %i.qx
  %i.rc = getelementptr i8, ptr %gep212, i64 1
  %bound0 = icmp ult ptr %i.qz, %i.rc
  %bound1 = icmp ult ptr %i.rb, %i.ra
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check173, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rd = add nuw nsw i64 %n.vec, %i.qy
  %i.re = add nsw i64 %n.vec, %i.qx
  %invariant.gep = getelementptr i8, ptr %i.hj, i64 %i.qy
  %invariant.gep203.a = getelementptr i8, ptr %i.hj, i64 %i.qx
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !84, !alias.scope !843, !noalias !844
  %wide.load174.a = load <16 x i8>, ptr %i.rf, align 1, !tbaa !84, !alias.scope !843, !noalias !844
  %gep204.a = getelementptr i8, ptr %invariant.gep203.a, i64 %index ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %gep204.a, i64 16 ; 2 uses
  %wide.load175 = load <16 x i8>, ptr %gep204.a, align 1, !tbaa !84, !alias.scope !844
  %wide.load176 = load <16 x i8>, ptr %i.rg, align 1, !tbaa !84, !alias.scope !844
  store <16 x i8> %wide.load175, ptr %gep, align 1, !tbaa !84, !alias.scope !843, !noalias !844
  store <16 x i8> %wide.load176, ptr %i.rf, align 1, !tbaa !84, !alias.scope !843, !noalias !844
  store <16 x i8> %wide.load, ptr %gep204.a, align 1, !tbaa !84, !alias.scope !844
  store <16 x i8> %wide.load174.a, ptr %i.rg, align 1, !tbaa !84, !alias.scope !844
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rh = icmp eq i64 %index.next, %n.vec
  br i1 %i.rh, label %middle.block, label %vector.body, !llvm.loop !837

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge50, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ri = add nuw nsw i64 %n.vec177, %i.qy
  %i.rj = add nsw i64 %n.vec177, %i.qx
  %invariant.gep205.a = getelementptr i8, ptr %i.hj, i64 %i.qy
  %invariant.gep207 = getelementptr i8, ptr %i.hj, i64 %i.qx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index178 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next181, %vec.epilog.vector.body ] ; 3 uses
  %gep206.a = getelementptr i8, ptr %invariant.gep205.a, i64 %index178 ; 2 uses
  %wide.load179 = load <4 x i8>, ptr %gep206.a, align 1, !tbaa !84, !alias.scope !843, !noalias !844
  %gep208 = getelementptr i8, ptr %invariant.gep207, i64 %index178 ; 2 uses
  %wide.load180 = load <4 x i8>, ptr %gep208, align 1, !tbaa !84, !alias.scope !844
  store <4 x i8> %wide.load180, ptr %gep206.a, align 1, !tbaa !84, !alias.scope !843, !noalias !844
  store <4 x i8> %wide.load179, ptr %gep208, align 1, !tbaa !84, !alias.scope !844
  %index.next181 = add nuw i64 %index178, 4       ; 2 uses
  %i.rk = icmp eq i64 %index.next181, %n.vec177
  br i1 %i.rk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !838

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n182, label %._crit_edge50, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv98.ph = phi i64 [ %i.qy, %iter.check ], [ %i.qy, %vector.memcheck ], [ %i.rd, %vec.epilog.iter.check ], [ %i.ri, %vec.epilog.middle.block ]
  %indvars.iv94.ph = phi i64 [ %i.qx, %iter.check ], [ %i.qx, %vector.memcheck ], [ %i.re, %vec.epilog.iter.check ], [ %i.rj, %vec.epilog.middle.block ]
  %.319045.ph = phi i32 [ %i.qn, %iter.check ], [ %i.qn, %vector.memcheck ], [ %i.qu, %vec.epilog.iter.check ], [ %i.qw, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %vec.epilog.scalar.ph ], [ %indvars.iv98.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %vec.epilog.scalar.ph ], [ %indvars.iv94.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.319045 = phi i32 [ %i.rp, %vec.epilog.scalar.ph ], [ %.319045.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv98 ; 2 uses
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !84
  %i.rn = getelementptr inbounds i8, ptr %i.hj, i64 %indvars.iv94 ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !84
  store i8 %i.ro, ptr %i.rl, align 1, !tbaa !84
  store i8 %i.rm, ptr %i.rn, align 1, !tbaa !84
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1
  %i.rp = add nsw i32 %.319045, -1
  %i.rq = icmp sgt i32 %.319045, 1
  br i1 %i.rq, label %vec.epilog.scalar.ph, label %._crit_edge50, !llvm.loop !839

._crit_edge50:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %8 = add nuw nsw i32 %.351, 1
  %indvars.iv.next93 = sub i32 %indvars.iv92, %i.qn
  %indvars.iv.next97 = add i32 %indvars.iv96, %i.qn
  %exitcond103.not = icmp eq i32 %.351, %7
  br i1 %exitcond103.not, label %.loopexit26, label %iter.check, !llvm.loop !840

.loopexit26:                                      ; preds = %._crit_edge50, %.lr.ph52, %._crit_edge
  %.not212 = icmp eq ptr %.0191, null
  br i1 %.not212, label %.loopexit33, label %bb.cj

bb.cj:                                            ; preds = %.loopexit26
  tail call void @free(ptr noundef nonnull %.0191) #53
  br label %.loopexit33

.loopexit33.loopexit.unr-lcssa:                   ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1
  %lcmp.mod192.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod192.not, label %.loopexit33, label %..thread_crit_edge.i262.us.us.epil.preheader

..thread_crit_edge.i262.us.us.epil.preheader:     ; preds = %.loopexit33.loopexit.unr-lcssa, %..thread_crit_edge.i262.us.us.preheader
  %indvars.iv66.epil.init = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader ], [ %indvars.iv.next67.1, %.loopexit33.loopexit.unr-lcssa ]
  %.epil.init191 = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.us.preheader ], [ %i.iy, %.loopexit33.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.rr = getelementptr inbounds nuw i8, ptr %.epil.init191, i64 %i.id ; 2 uses
  %.not32.i.us.us.epil = icmp ugt ptr %i.rr, %.pre35.i.us
  br i1 %.not32.i.us.us.epil, label %.loopexit33, label %bb.ck

bb.ck:                                            ; preds = %..thread_crit_edge.i262.us.us.epil.preheader
  %i.rs = trunc i64 %indvars.iv66.epil.init to i32
  %i.rt = xor i32 %i.rs, -1
  %i.ru = add i32 %i.ee, %i.rt
  %i.rv = mul i32 %i.ia, %i.ru
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds i8, ptr %i.hj, i64 %i.rw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rx, ptr align 1 %.epil.init191, i64 %i.id, i1 false)
  store ptr %i.rr, ptr %i.b, align 8, !tbaa !82
  br label %.loopexit33

.loopexit33.loopexit186.unr-lcssa:                ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit33, label %..thread_crit_edge.i262.us.epil.preheader

..thread_crit_edge.i262.us.epil.preheader:        ; preds = %.loopexit33.loopexit186.unr-lcssa, %..thread_crit_edge.i262.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader ], [ %indvars.iv.next.1, %.loopexit33.loopexit186.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader ], [ %i.jm, %.loopexit33.loopexit186.unr-lcssa ] ; 2 uses
  %lcmp.mod188 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.ry = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %i.id ; 2 uses
  %.not32.i.us.epil = icmp ugt ptr %i.ry, %.pre35.i.us
  br i1 %.not32.i.us.epil, label %.loopexit33, label %bb.cl

bb.cl:                                            ; preds = %..thread_crit_edge.i262.us.epil.preheader
  %i.rz = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.sa = mul i32 %i.ia, %i.rz
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds i8, ptr %i.hj, i64 %i.sb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sc, ptr align 1 %.epil.init, i64 %i.id, i1 false)
  store ptr %i.ry, ptr %i.b, align 8, !tbaa !82
  br label %.loopexit33

.loopexit33:                                      ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit, %.loopexit33.loopexit186.unr-lcssa, %bb.cl, %..thread_crit_edge.i262.us.epil.preheader, %.loopexit33.loopexit.unr-lcssa, %bb.ck, %..thread_crit_edge.i262.us.us.epil.preheader, %.preheader32, %.loopexit26, %bb.cj
  %i.sd = icmp samesign ult i8 %.0193.ph.shrunk, 3
  %.not60 = icmp eq i32 %i.hg, 0
  %i.se = or i1 %i.sd, %.not60
  %or.cond163 = or i1 %i.se, %i.gz
  br i1 %or.cond163, label %.loopexit, label %.lr.ph55

.lr.ph55:                                         ; preds = %.loopexit33
  %i.sf = zext nneg i8 %.0193.ph.shrunk to i64    ; 5 uses
  %i.sg = add i32 %i.hg, -1
  %xtraiter196 = and i32 %i.hg, 3                 ; 3 uses
  %i.sh = icmp ult i32 %i.sg, 3
  br i1 %i.sh, label %.epil.preheader, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.lr.ph55
  %unroll_iter199 = and i32 %i.hg, -4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.lr.ph55.new
  %.017454 = phi ptr [ %i.hj, %.lr.ph55.new ], [ %i.sx, %bb.cm ] ; 4 uses
  %niter200 = phi i32 [ 0, %.lr.ph55.new ], [ %niter200.next.3, %bb.cm ]
  %i.si = load i8, ptr %.017454, align 1, !tbaa !84
  %i.sj = getelementptr inbounds nuw i8, ptr %.017454, i64 2 ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !84
  store i8 %i.sk, ptr %.017454, align 1, !tbaa !84
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !84
  %i.sl = getelementptr inbounds nuw i8, ptr %.017454, i64 %i.sf ; 4 uses
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !84
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 2 ; 2 uses
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !84
  store i8 %i.so, ptr %i.sl, align 1, !tbaa !84
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !84
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sf ; 4 uses
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !84
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 2 ; 2 uses
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !84
  store i8 %i.ss, ptr %i.sp, align 1, !tbaa !84
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !84
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.sf ; 4 uses
  %i.su = load i8, ptr %i.st, align 1, !tbaa !84
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 2 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !84
  store i8 %i.sw, ptr %i.st, align 1, !tbaa !84
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !84
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.sf ; 2 uses
  %niter200.next.3 = add nuw i32 %niter200, 4     ; 2 uses
  %niter200.ncmp.3 = icmp eq i32 %niter200.next.3, %unroll_iter199
  br i1 %niter200.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !841

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cm
  %lcmp.mod197.not = icmp eq i32 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55
  %.017454.epil.init = phi ptr [ %i.hj, %.lr.ph55 ], [ %i.sx, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod198 = icmp ne i32 %xtraiter196, 0
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.epil.preheader
  %.017454.epil = phi ptr [ %.017454.epil.init, %.epil.preheader ], [ %i.tb, %bb.cn ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cn ]
  %i.sy = load i8, ptr %.017454.epil, align 1, !tbaa !84
  %i.sz = getelementptr inbounds nuw i8, ptr %.017454.epil, i64 2 ; 2 uses
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !84
  store i8 %i.ta, ptr %.017454.epil, align 1, !tbaa !84
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !84
  %i.tb = getelementptr inbounds nuw i8, ptr %.017454.epil, i64 %i.sf
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter196
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.cn, !llvm.loop !842

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.cn, %.loopexit33
  %.not213 = icmp eq i32 %4, 0
  %.not214 = icmp eq i32 %4, %.0193.ph
  %or.cond220 = or i1 %.not213, %.not214
  br i1 %or.cond220, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.loopexit
  %i.tc = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.hj, i32 noundef %.0193.ph, i32 noundef %4, i32 noundef %i.ed, i32 noundef %i.ee)
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit, %bb.co, %bb.bk, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.bc, %_ZL17stbi__malloc_mad3iiii.exit.thread, %bb.ao, %_ZL18stbi__tga_get_compiiPi.exit
  %.0 = phi ptr [ null, %_ZL18stbi__tga_get_compiiPi.exit ], [ null, %bb.ao ], [ null, %bb.bc ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ null, %bb.bk ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ %i.tc, %bb.co ], [ %i.hj, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef %0) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !82
  %i.g = load i8, ptr %i.b, align 1, !tbaa !84
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !845 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !80
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre = load i8, ptr %i.n, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail6bigint13divmod_assignERKS2_:bb.a

._crit_edge104:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i23.lcssa = phi i64 [ %i.fj, %bb.m ], [ %indvars.iv.next46.i28, %bb.n ]
  %or.cond.not49 = icmp slt i64 %smin59, %indvars.iv45.i23.lcssa
  br i1 %or.cond.not49, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge

.loopexit.i30:                                    ; preds = %.lr.ph103
  %i.fo = icmp ugt i32 %i.fl, %i.fn
  br i1 %i.fo, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge: ; preds = %.loopexit.i30, %bb.l, %._crit_edge104
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31, !llvm.loop !1270

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge104, %.loopexit.i30, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.ev, %bb.l ], [ %i.ev, %.loopexit.i30 ], [ %i.ev, %._crit_edge104 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !420  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !419    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #54 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #53 ; 2 uses
  tail call void @_ZNSt9bad_allocC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #53
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #58
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !424  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !419
  store i64 %.0, ptr %i.a, align 8, !tbaa !420
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #53
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer.125", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !418
  %i.g = load ptr, ptr %0, align 8, !tbaa !419    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !420  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !419
  store i64 %i.i, ptr %i.e, align 8, !tbaa !420
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt3__19enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS6_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS6_S7_EE5valueEiE4typeELi0EEES6_S7_S7_S6_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !72
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt3__19enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS6_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS6_S7_EE5valueEiE4typeELi0EEES6_S7_S7_S6_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !419
  store i64 %i.i, ptr %i.e, align 8, !tbaa !420
  store ptr %i.j, ptr %0, align 8, !tbaa !419
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt3__19enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS6_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS6_S7_EE5valueEiE4typeELi0EEES6_S7_S7_S6_.exit.i.i

_ZN3fmt3v126detail4copyIjPjS3_TnNSt3__19enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS6_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS6_S7_EE5valueEiE4typeELi0EEES6_S7_S7_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.m = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.g, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.o = icmp ugt i64 %i.b, %i.i
  br i1 %i.o, label %bb.d, label %.noexc.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt3__19enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS6_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS6_S7_EE5valueEiE4typeELi0EEES6_S7_S7_S6_.exit.i.i
  %i.p = lshr i64 %i.i, 1
  %i.q = add i64 %i.p, %i.i                       ; 3 uses
  %i.r = icmp ugt i64 %i.b, %i.q
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.b, %bb.d ] ; 3 uses
  %i.u = shl i64 %.0.i, 2
  %i.v = call noalias ptr @malloc(i64 noundef %i.u) #54 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.w = call ptr @__cxa_allocate_exception(i64 8) #53 ; 2 uses
  call void @_ZNSt9bad_allocC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #53
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #58
          to label %.noexc112 unwind label %bb.j

.noexc112:                                        ; preds = %bb.h
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i: ; preds = %bb.g
  store ptr %i.v, ptr %1, align 8, !tbaa !419
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !420
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.m, %i.x
  br i1 %.not.i, label %.noexc.i, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef %i.m) #53
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !420
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !420
  br label %.noexc.i

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #60
  unreachable

.noexc.i:                                         ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i, %bb.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt3__19enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS6_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS6_S7_EE5valueEiE4typeELi0EEES6_S7_S7_S6_.exit.i.i
  %i.aa = phi i64 [ %i.n, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt3__19enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS6_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS6_S7_EE5valueEiE4typeELi0EEES6_S7_S7_S6_.exit.i.i ], [ %.pre.pre, %bb.i ], [ %i.n, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ] ; 2 uses
  %i.ab = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt3__19enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS6_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS6_S7_EE5valueEiE4typeELi0EEES6_S7_S7_S6_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.i ], [ %.0.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ab)
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !424
  %i.ae = zext i32 %i.d to i64                    ; 3 uses
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.k:                                             ; preds = %.noexc.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !418
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.s, !inline_history !1271

.noexc:                                           ; preds = %bb.k
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !420
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %.noexc.i, %.noexc
  %i.ai = phi i64 [ %i.aa, %.noexc.i ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 4 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !424
  %i.ak = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ak, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !419   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.l
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.l ] ; 4 uses
  %indvars.iv.a = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.be, %bb.l ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.am = icmp eq i64 %indvars.iv.a, 0
  br i1 %i.am, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.m

.preheader.loopexit:                              ; preds = %bb.l
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.be, %.preheader.loopexit ]
  %i.an = icmp sgt i32 %i.d, %i.c
  br i1 %i.an, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ao = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.ap = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.aq = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.aq, %i.ap
  %i.ar = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.ap, -1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.prol
  br label %bb.p

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.l, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv.a, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.by, %.unr-lcssa ]
  %lcmp.mod150 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod150)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64.epil.init
  %i.au = load i32, ptr %i.at, align 4, !tbaa !72
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62.epil.init
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !72
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw i64 %i.ay, %i.av
  %i.ba = zext i64 %i.az to i128
  %i.bb = add i128 %.147.epil.init, %i.ba
  br label %bb.l

bb.l:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa147 = phi i128 [ %i.by, %.unr-lcssa ], [ %i.bb, %.epil.preheader ] ; 2 uses
  %i.bc = trunc i128 %.lcssa147 to i32
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv.a
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !72
  %i.be = lshr i128 %.lcssa147, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !1272

bb.m:                                             ; preds = %bb.m, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.m ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.a, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.m ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.by, %bb.m ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.m ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !72
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !72
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.bh
  %i.bm = zext i64 %i.bl to i128
  %i.bn = add i128 %.147, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !72
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !72
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw i64 %i.bv, %i.br
  %i.bx = zext i64 %i.bw to i128
  %i.by = add i128 %i.bn, %i.bx                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.m, !llvm.loop !1273

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.bz = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.ca = trunc nuw i64 %i.aj to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.ca, i32 1) ; 2 uses
  %i.cb = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %.lr.ph142, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph142
  %i.cd = trunc nuw i64 %i.cg to i32              ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %.lr.ph142, label %.critedge.i, !llvm.loop !42

.lr.ph142:                                        ; preds = %._crit_edge59, %bb.n
  %i.cf = phi i32 [ %i.cd, %bb.n ], [ %i.cb, %._crit_edge59 ]
  %indvars.iv.i141 = phi i64 [ %i.cg, %bb.n ], [ %i.aj, %._crit_edge59 ]
  %i.cg = add nsw i64 %indvars.iv.i141, -1        ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !72
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.n, label %..critedge.i_crit_edge, !llvm.loop !42

..critedge.i_crit_edge:                           ; preds = %.lr.ph142
  br label %.critedge.i, !llvm.loop !42

.critedge.i:                                      ; preds = %bb.n, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cf, %..critedge.i_crit_edge ], [ %smin.i, %bb.n ]
  %i.ck = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cl = icmp ult i64 %i.ai, %i.ck
  br i1 %i.cl, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.critedge.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !418
  invoke void %i.cn(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ck)
          to label %.noexc43 unwind label %bb.s, !inline_history !1274

.noexc43:                                         ; preds = %bb.o
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !420
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.ap, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.dd, %._crit_edge ] ; 3 uses
  %i.co = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.cp = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.cq = sub i32 %indvar, %i.c
  %i.cr = and i32 %i.cq, 1
  %lcmp.mod152.not.not = icmp eq i32 %i.cr, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.cp, 1
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.cp
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !72
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load i32, ptr %i.as, align 4, !tbaa !72
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw i64 %i.cw, %i.cu
  %i.cy = zext i64 %i.cx to i128
  %i.cz = add nsw i128 %.256, %i.cy               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa146.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.cz, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.cp, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.cz, %.lr.ph.prol ]
  %i.da = icmp eq i32 %i.ar, %indvar
  br i1 %i.da, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.p
  %.3.lcssa = phi i128 [ %.256, %bb.p ], [ %.lcssa146.unr, %.lr.ph.prol.loopexit ], [ %i.dx, %.lr.ph ] ; 2 uses
  %i.db = trunc i128 %.3.lcssa to i32
  %i.dc = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !72
  %i.dd = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.p, !llvm.loop !1275

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.dx, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.df = load i32, ptr %i.de, align 4, !tbaa !72
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv82.in
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !72
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw i64 %i.dk, %i.dg
  %i.dm = zext i64 %i.dl to i128
  %i.dn = add i128 %.352, %i.dm
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !72
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !72
  %i.du = zext i32 %i.dt to i64
  %i.dv = mul nuw i64 %i.du, %i.dr
  %i.dw = zext i64 %i.dv to i128
  %i.dx = add i128 %i.dn, %i.dw                   ; 2 uses
  %lftr.wideiv117.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv117.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1276

bb.q:                                             ; preds = %.noexc43, %.critedge.i
  %i.dy = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.dz = call noundef i64 @llvm.umin.i64(i64 %i.ck, i64 %i.dy)
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !424
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !423
  %i.ec = shl nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !423
  %i.ed = load ptr, ptr %1, align 8, !tbaa !419   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.ed) #53
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  ret void

bb.s:                                             ; preds = %bb.o, %bb.k
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %1, align 8, !tbaa !419   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.eg) #53
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  resume { ptr, i32 } %i.ef
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__1::locale", align 8  ; 8 uses
  %7 = alloca %class.anon.128, align 8            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !355    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
end_hunk_2
