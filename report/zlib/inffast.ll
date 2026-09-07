Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/inffast?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @inflate_fast(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %i.f = add i32 %i.e, -5
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = sub i32 %1, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.o
  %i.q = add i32 %i.l, -257
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !42   ; 13 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43  ; 10 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64              ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !48
  %notmask = shl nsw i32 -1, %i.al
  %i.am = xor i32 %notmask, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !49
  %notmask310 = shl nsw i32 -1, %i.ao
  %i.ap = xor i32 %notmask310, -1
  %i.aq = zext nneg i32 %i.am to i64
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = ptrtoint ptr %i.p to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 7144
  %i.au = icmp eq i32 %i.y, 0
  %i.av = add i32 %i.y, %i.u
  %i.aw = zext i32 %i.y to i64                    ; 5 uses
  %min.iters.check549 = icmp ult i32 %i.y, 4
  %min.iters.check551 = icmp ult i32 %i.y, 32
  %i.ax = and i64 %i.aw, 28
  %n.vec553 = and i64 %i.aw, 4294967264           ; 6 uses
  %i.ay = trunc nuw i64 %n.vec553 to i32
  %i.az = sub i32 %i.y, %i.ay
  %i.ba = getelementptr i8, ptr %i.aa, i64 %n.vec553
  %cmp.n562 = icmp eq i64 %n.vec553, %i.aw
  %min.epilog.iters.check569 = icmp eq i64 %i.ax, 0
  %n.vec571 = and i64 %i.aw, 4294967292           ; 5 uses
  %i.bb = trunc nuw i64 %n.vec571 to i32
  %i.bc = sub i32 %i.y, %i.bb
  %i.bd = getelementptr i8, ptr %i.aa, i64 %n.vec571
  %cmp.n579 = icmp eq i64 %n.vec571, %i.aw
  br label %bb.b

bb.b:                                             ; preds = %bb.ah, %bb.a
  %.0276 = phi ptr [ %i.c, %bb.a ], [ %.6282, %bb.ah ] ; 4 uses
  %.0266 = phi ptr [ %i.j, %bb.a ], [ %.8274, %bb.ah ] ; 27 uses
  %.0256 = phi i64 [ %i.ad, %bb.a ], [ %.8264, %bb.ah ] ; 2 uses
  %.0249 = phi i32 [ %i.af, %bb.a ], [ %.8, %bb.ah ] ; 5 uses
  %i.be = icmp ult i32 %.0249, 15
  br i1 %i.be, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %.0276, i64 1
  %i.bg = load i8, ptr %.0276, align 1, !tbaa !50
  %i.bh = zext i8 %i.bg to i64
  %i.bi = zext nneg i32 %.0249 to i64
  %i.bj = shl nuw nsw i64 %i.bh, %i.bi
  %i.bk = add i64 %i.bj, %.0256
  %i.bl = add nuw nsw i32 %.0249, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0276, i64 2
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bo = zext i8 %i.bn to i64
  %i.bp = zext nneg i32 %i.bl to i64
  %i.bq = shl nuw nsw i64 %i.bo, %i.bp
  %i.br = add i64 %i.bk, %i.bq
  %i.bs = or disjoint i32 %.0249, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1277 = phi ptr [ %i.bm, %bb.c ], [ %.0276, %bb.b ] ; 7 uses
  %.1257 = phi i64 [ %i.br, %bb.c ], [ %.0256, %bb.b ] ; 2 uses
  %.1250 = phi i32 [ %i.bs, %bb.c ], [ %.0249, %bb.b ]
  %i.bt = and i64 %.1257, %i.aq
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bt ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !53  ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = zext nneg i8 %i.bw to i64
  %i.bz = lshr i64 %.1257, %i.by                  ; 2 uses
  %i.ca = sub i32 %.1250, %i.bx                   ; 2 uses
  %i.cb = load i8, ptr %i.bu, align 2, !tbaa !54  ; 2 uses
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %bb.d
  %.0247.lcssa = phi ptr [ %i.bu, %bb.d ], [ %i.rg, %bb.af ]
  %.lcssa333 = phi i64 [ %i.bz, %bb.d ], [ %i.rl, %bb.af ]
  %.lcssa330 = phi i32 [ %i.ca, %bb.d ], [ %i.rm, %bb.af ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0247.lcssa, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !55
  %i.cf = trunc i16 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0266, i64 1
  store i8 %i.cf, ptr %.0266, align 1, !tbaa !50
  br label %bb.ah

.lr.ph:                                           ; preds = %bb.d, %bb.af
  %.in = phi i8 [ %i.rn, %bb.af ], [ %i.cb, %bb.d ]
  %i.ch = phi i32 [ %i.rm, %bb.af ], [ %i.ca, %bb.d ] ; 8 uses
  %i.ci = phi i64 [ %i.rl, %bb.af ], [ %i.bz, %bb.d ] ; 7 uses
  %.0247360 = phi ptr [ %i.rg, %bb.af ], [ %i.bu, %bb.d ] ; 2 uses
  %i.cj = zext i8 %.in to i32                     ; 5 uses
  %i.ck = and i32 %i.cj, 16
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.0247360, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !55
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = and i32 %i.cj, 15                       ; 5 uses
  %.not313 = icmp eq i32 %i.co, 0
  br i1 %.not313, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = icmp ult i32 %i.ch, %i.co
  br i1 %i.cp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %.1277, i64 1
  %i.cr = load i8, ptr %.1277, align 1, !tbaa !50
  %i.cs = zext i8 %i.cr to i64
  %i.ct = zext nneg i32 %i.ch to i64
  %i.cu = shl nuw nsw i64 %i.cs, %i.ct
  %i.cv = add i64 %i.cu, %i.ci
  %i.cw = add nuw nsw i32 %i.ch, 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2278 = phi ptr [ %i.cq, %bb.g ], [ %.1277, %bb.f ]
  %.3259 = phi i64 [ %i.cv, %bb.g ], [ %i.ci, %bb.f ] ; 2 uses
  %.3252 = phi i32 [ %i.cw, %bb.g ], [ %i.ch, %bb.f ]
  %i.cx = trunc i64 %.3259 to i32
  %notmask314 = shl nsw i32 -1, %i.co
  %i.cy = xor i32 %notmask314, -1
  %i.cz = and i32 %i.cx, %i.cy
  %i.da = add nuw nsw i32 %i.cz, %i.cn
  %i.db = zext nneg i32 %i.co to i64
  %i.dc = lshr i64 %.3259, %i.db
  %i.dd = sub i32 %.3252, %i.co
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.3279 = phi ptr [ %.2278, %bb.h ], [ %.1277, %bb.e ] ; 4 uses
  %.4260 = phi i64 [ %i.dc, %bb.h ], [ %i.ci, %bb.e ] ; 2 uses
  %.4253 = phi i32 [ %i.dd, %bb.h ], [ %i.ch, %bb.e ] ; 5 uses
  %.0239 = phi i32 [ %i.da, %bb.h ], [ %i.cn, %bb.e ] ; 10 uses
  %i.de = icmp ult i32 %.4253, 15
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %.3279, i64 1
  %i.dg = load i8, ptr %.3279, align 1, !tbaa !50
  %i.dh = zext i8 %i.dg to i64
  %i.di = zext nneg i32 %.4253 to i64
  %i.dj = shl nuw nsw i64 %i.dh, %i.di
  %i.dk = add i64 %i.dj, %.4260
  %i.dl = add nuw nsw i32 %.4253, 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.3279, i64 2
  %i.dn = load i8, ptr %i.df, align 1, !tbaa !50
  %i.do = zext i8 %i.dn to i64
  %i.dp = zext nneg i32 %i.dl to i64
  %i.dq = shl nuw nsw i64 %i.do, %i.dp
  %i.dr = add i64 %i.dk, %i.dq
  %i.ds = or disjoint i32 %.4253, 16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4280 = phi ptr [ %i.dm, %bb.j ], [ %.3279, %bb.i ] ; 5 uses
  %.5261 = phi i64 [ %i.dr, %bb.j ], [ %.4260, %bb.i ] ; 2 uses
  %.5254 = phi i32 [ %i.ds, %bb.j ], [ %.4253, %bb.i ]
  %i.dt = and i64 %.5261, %i.ar
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.dt ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !53  ; 2 uses
  %i.dx = zext i8 %i.dw to i32
  %i.dy = zext nneg i8 %i.dw to i64
  %i.dz = lshr i64 %.5261, %i.dy                  ; 2 uses
  %i.ea = sub i32 %.5254, %i.dx                   ; 2 uses
  %i.eb = load i8, ptr %i.du, align 2, !tbaa !54
  %i.ec = zext i8 %i.eb to i32                    ; 3 uses
  %i.ed = and i32 %i.ec, 16
  %.not315363 = icmp eq i32 %i.ed, 0
  br i1 %.not315363, label %.lr.ph366, label %._crit_edge367

._crit_edge367:                                   ; preds = %bb.ad, %bb.k
  %.1248.lcssa = phi ptr [ %i.du, %bb.k ], [ %i.qn, %bb.ad ]
  %.lcssa341 = phi i64 [ %i.dz, %bb.k ], [ %i.qs, %bb.ad ] ; 2 uses
  %.lcssa339 = phi i32 [ %i.ea, %bb.k ], [ %i.qt, %bb.ad ] ; 5 uses
  %.lcssa = phi i32 [ %i.ec, %bb.k ], [ %i.qv, %bb.ad ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.1248.lcssa, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !55
  %i.eg = zext i16 %i.ef to i32
  %i.eh = and i32 %.lcssa, 15                     ; 5 uses
  %i.ei = icmp ult i32 %.lcssa339, %i.eh
  br i1 %i.ei, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge367
  %i.ej = getelementptr inbounds nuw i8, ptr %.4280, i64 1 ; 2 uses
  %i.ek = load i8, ptr %.4280, align 1, !tbaa !50
  %i.el = zext i8 %i.ek to i64
  %i.em = zext nneg i32 %.lcssa339 to i64
  %i.en = shl nuw nsw i64 %i.el, %i.em
  %i.eo = add i64 %i.en, %.lcssa341               ; 2 uses
  %i.ep = add nuw nsw i32 %.lcssa339, 8           ; 3 uses
  %i.eq = icmp samesign ult i32 %i.ep, %i.eh
  br i1 %i.eq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.er = getelementptr inbounds nuw i8, ptr %.4280, i64 2
  %i.es = load i8, ptr %i.ej, align 1, !tbaa !50
  %i.et = zext i8 %i.es to i64
  %i.eu = zext nneg i32 %i.ep to i64
  %i.ev = shl nuw nsw i64 %i.et, %i.eu
  %i.ew = add i64 %i.ev, %i.eo
  %i.ex = add nuw nsw i32 %.lcssa339, 16
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %._crit_edge367
  %.5281 = phi ptr [ %i.er, %bb.m ], [ %i.ej, %bb.l ], [ %.4280, %._crit_edge367 ] ; 7 uses
  %.7263 = phi i64 [ %i.ew, %bb.m ], [ %i.eo, %bb.l ], [ %.lcssa341, %._crit_edge367 ] ; 2 uses
  %.7 = phi i32 [ %i.ex, %bb.m ], [ %i.ep, %bb.l ], [ %.lcssa339, %._crit_edge367 ]
  %i.ey = trunc i64 %.7263 to i32
  %notmask317 = shl nsw i32 -1, %i.eh
  %i.ez = xor i32 %notmask317, -1
  %i.fa = and i32 %i.ey, %i.ez
  %i.fb = add nuw nsw i32 %i.fa, %i.eg            ; 6 uses
  %i.fc = zext nneg i32 %i.eh to i64
  %i.fd = lshr i64 %.7263, %i.fc                  ; 7 uses
  %i.fe = sub i32 %.7, %i.eh                      ; 7 uses
  %i.ff = ptrtoint ptr %.0266 to i64              ; 4 uses
  %i.fg = sub i64 %i.ff, %i.as
  %i.fh = trunc i64 %i.fg to i32                  ; 2 uses
  %i.fi = icmp ugt i32 %i.fb, %i.fh
  br i1 %i.fi, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.fj = sub nuw nsw i32 %i.fb, %i.fh            ; 20 uses
  %i.fk = icmp ugt i32 %i.fj, %i.w
  br i1 %i.fk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fl = load i32, ptr %i.at, align 8, !tbaa !56
  %.not319 = icmp eq i32 %i.fl, 0
  br i1 %.not319, label %bb.q, label %.loopexit.sink.split.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fm = sub i32 %i.u, %i.fj
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.fn ; 7 uses
  %i.fp = icmp ult i32 %i.fj, %.0239
  br i1 %i.fp, label %iter.check, label %bb.v

iter.check:                                       ; preds = %bb.r
  %i.fq = add nsw i32 %i.fj, -1                   ; 3 uses
  %i.fr = zext i32 %i.fq to i64
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.fq, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ft = add i64 %i.ab, %i.fn
  %i.fu = sub i64 %i.ft, %i.ff
  %diff.check = icmp ugt i64 %i.fu, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check532 = icmp ult i32 %i.fq, 31
  br i1 %min.iters.check532, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fv = and i64 %i.fs, 28
  %n.vec = and i64 %i.fs, 8589934560              ; 6 uses
  %i.fw = getelementptr i8, ptr %.0266, i64 %n.vec ; 2 uses
  %i.fx = trunc i64 %n.vec to i32
  %i.fy = sub i32 %i.fj, %i.fx
  %i.fz = getelementptr i8, ptr %i.fo, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0266, i64 %index ; 2 uses
  %next.gep533 = getelementptr i8, ptr %i.fo, i64 %index ; 2 uses
  %i.ga = getelementptr i8, ptr %next.gep533, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep533, align 1, !tbaa !50
  %wide.load534 = load <16 x i8>, ptr %i.ga, align 1, !tbaa !50
  %i.gb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !50
  store <16 x i8> %wide.load534, ptr %i.gb, align 1, !tbaa !50
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fs, %n.vec
  br i1 %cmp.n, label %.loopexit655, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec537 = and i64 %i.fs, 8589934588           ; 5 uses
  %i.gd = getelementptr i8, ptr %.0266, i64 %n.vec537 ; 2 uses
  %i.ge = trunc i64 %n.vec537 to i32
  %i.gf = sub i32 %i.fj, %i.ge
  %i.gg = getelementptr i8, ptr %i.fo, i64 %n.vec537
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index538 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next542, %vec.epilog.vector.body ] ; 3 uses
  %next.gep539 = getelementptr i8, ptr %.0266, i64 %index538
  %next.gep540 = getelementptr i8, ptr %i.fo, i64 %index538
  %wide.load541 = load <4 x i8>, ptr %next.gep540, align 1, !tbaa !50
  store <4 x i8> %wide.load541, ptr %next.gep539, align 1, !tbaa !50
  %index.next542 = add nuw i64 %index538, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next542, %n.vec537
  br i1 %i.gh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !9

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n543 = icmp eq i64 %i.fs, %n.vec537
  br i1 %cmp.n543, label %.loopexit655, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1267.ph = phi ptr [ %.0266, %iter.check ], [ %.0266, %vector.memcheck ], [ %i.fw, %vec.epilog.iter.check ], [ %i.gd, %vec.epilog.middle.block ] ; 2 uses
  %.0243.ph = phi i32 [ %i.fj, %iter.check ], [ %i.fj, %vector.memcheck ], [ %i.fy, %vec.epilog.iter.check ], [ %i.gf, %vec.epilog.middle.block ] ; 4 uses
  %.0.ph = phi ptr [ %i.fo, %iter.check ], [ %i.fo, %vector.memcheck ], [ %i.fz, %vec.epilog.iter.check ], [ %i.gg, %vec.epilog.middle.block ] ; 2 uses
  %i.gi = add i32 %.0243.ph, -1
  %xtraiter710 = and i32 %.0243.ph, 7             ; 2 uses
  %lcmp.mod711.not = icmp eq i32 %xtraiter710, 0
  br i1 %lcmp.mod711.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.1267.prol = phi ptr [ %i.gl, %vec.epilog.scalar.ph.prol ], [ %.1267.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0243.prol = phi i32 [ %i.gm, %vec.epilog.scalar.ph.prol ], [ %.0243.ph, %vec.epilog.scalar.ph.preheader ]
  %.0.prol = phi ptr [ %i.gj, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter712 = phi i32 [ %prol.iter712.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.prol, i64 1 ; 2 uses
  %i.gk = load i8, ptr %.0.prol, align 1, !tbaa !50
  %i.gl = getelementptr inbounds nuw i8, ptr %.1267.prol, i64 1 ; 3 uses
  store i8 %i.gk, ptr %.1267.prol, align 1, !tbaa !50
  %i.gm = add i32 %.0243.prol, -1                 ; 2 uses
  %prol.iter712.next = add i32 %prol.iter712, 1   ; 2 uses
  %prol.iter712.cmp.not = icmp eq i32 %prol.iter712.next, %xtraiter710
  br i1 %prol.iter712.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !10

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa689.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gl, %vec.epilog.scalar.ph.prol ]
  %.1267.unr = phi ptr [ %.1267.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gl, %vec.epilog.scalar.ph.prol ]
  %.0243.unr = phi i32 [ %.0243.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gm, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi ptr [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gj, %vec.epilog.scalar.ph.prol ]
  %i.gn = icmp ult i32 %i.gi, 7
  br i1 %i.gn, label %.loopexit655, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.1267 = phi ptr [ %i.hl, %vec.epilog.scalar.ph ], [ %.1267.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.0243 = phi i32 [ %i.hm, %vec.epilog.scalar.ph ], [ %.0243.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.0 = phi ptr [ %i.hj, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.gp = load i8, ptr %.0, align 1, !tbaa !50
  %i.gq = getelementptr inbounds nuw i8, ptr %.1267, i64 1
  store i8 %i.gp, ptr %.1267, align 1, !tbaa !50
  %i.gr = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.gs = load i8, ptr %i.go, align 1, !tbaa !50
  %i.gt = getelementptr inbounds nuw i8, ptr %.1267, i64 2
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !50
  %i.gu = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.gv = load i8, ptr %i.gr, align 1, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %.1267, i64 3
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !50
  %i.gx = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.gy = load i8, ptr %i.gu, align 1, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %.1267, i64 4
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !50
  %i.ha = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !50
  %i.hc = getelementptr inbounds nuw i8, ptr %.1267, i64 5
  store i8 %i.hb, ptr %i.gz, align 1, !tbaa !50
  %i.hd = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.he = load i8, ptr %i.ha, align 1, !tbaa !50
  %i.hf = getelementptr inbounds nuw i8, ptr %.1267, i64 6
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !50
  %i.hg = getelementptr inbounds nuw i8, ptr %.0, i64 7
  %i.hh = load i8, ptr %i.hd, align 1, !tbaa !50
  %i.hi = getelementptr inbounds nuw i8, ptr %.1267, i64 7
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !50
  %i.hj = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.hk = load i8, ptr %i.hg, align 1, !tbaa !50
  %i.hl = getelementptr inbounds nuw i8, ptr %.1267, i64 8 ; 2 uses
  store i8 %i.hk, ptr %i.hi, align 1, !tbaa !50
  %i.hm = add i32 %.0243, -8                      ; 2 uses
  %.not323.7 = icmp eq i32 %i.hm, 0
  br i1 %.not323.7, label %.loopexit655, label %vec.epilog.scalar.ph, !llvm.loop !11

.loopexit655:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa517 = phi ptr [ %i.gd, %vec.epilog.middle.block ], [ %i.fw, %middle.block ], [ %.lcssa689.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hl, %vec.epilog.scalar.ph ] ; 2 uses
  %i.hn = sub nuw nsw i32 %.0239, %i.fj
  %i.ho = zext nneg i32 %i.fb to i64
  %i.hp = sub nsw i64 0, %i.ho
  %i.hq = getelementptr inbounds i8, ptr %.lcssa517, i64 %i.hp
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.hr = icmp ult i32 %i.y, %i.fj
  br i1 %i.hr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hs = sub i32 %i.av, %i.fj
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ht ; 7 uses
  %i.hv = sub nuw nsw i32 %i.fj, %i.y             ; 7 uses
  %i.hw = icmp ult i32 %i.hv, %.0239
  br i1 %i.hw, label %iter.check602, label %bb.v

iter.check602:                                    ; preds = %bb.t
  %i.hx = add nsw i32 %i.hv, -1                   ; 3 uses
  %i.hy = zext i32 %i.hx to i64
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 5 uses
  %min.iters.check585 = icmp ult i32 %i.hx, 3
  br i1 %min.iters.check585, label %vec.epilog.scalar.ph603.preheader, label %vector.memcheck583

vector.memcheck583:                               ; preds = %iter.check602
  %i.ia = add i64 %i.ab, %i.ht
  %i.ib = sub i64 %i.ia, %i.ff
  %diff.check584 = icmp ugt i64 %i.ib, -32
  br i1 %diff.check584, label %vec.epilog.scalar.ph603.preheader, label %vector.main.loop.iter.check586

vector.main.loop.iter.check586:                   ; preds = %vector.memcheck583
  %min.iters.check587 = icmp ult i32 %i.hx, 31
  br i1 %min.iters.check587, label %vec.epilog.ph606, label %vector.ph588

vector.ph588:                                     ; preds = %vector.main.loop.iter.check586
  %i.ic = and i64 %i.hz, 28
  %n.vec589 = and i64 %i.hz, 8589934560           ; 6 uses
  %i.id = getelementptr i8, ptr %.0266, i64 %n.vec589 ; 2 uses
  %i.ie = trunc i64 %n.vec589 to i32
  %i.if = sub i32 %i.hv, %i.ie
  %i.ig = getelementptr i8, ptr %i.hu, i64 %n.vec589
  br label %vector.body590

vector.body590:                                   ; preds = %vector.body590, %vector.ph588
  %index591 = phi i64 [ 0, %vector.ph588 ], [ %index.next596, %vector.body590 ] ; 3 uses
  %next.gep592 = getelementptr i8, ptr %.0266, i64 %index591 ; 2 uses
  %next.gep593 = getelementptr i8, ptr %i.hu, i64 %index591 ; 2 uses
  %i.ih = getelementptr i8, ptr %next.gep593, i64 16
  %wide.load594 = load <16 x i8>, ptr %next.gep593, align 1, !tbaa !50
  %wide.load595 = load <16 x i8>, ptr %i.ih, align 1, !tbaa !50
  %i.ii = getelementptr i8, ptr %next.gep592, i64 16
  store <16 x i8> %wide.load594, ptr %next.gep592, align 1, !tbaa !50
  store <16 x i8> %wide.load595, ptr %i.ii, align 1, !tbaa !50
  %index.next596 = add nuw i64 %index591, 32      ; 2 uses
  %i.ij = icmp eq i64 %index.next596, %n.vec589
  br i1 %i.ij, label %middle.block597, label %vector.body590, !llvm.loop !12

middle.block597:                                  ; preds = %vector.body590
  %cmp.n598 = icmp eq i64 %i.hz, %n.vec589
  br i1 %cmp.n598, label %.loopexit657, label %vec.epilog.iter.check604

vec.epilog.iter.check604:                         ; preds = %middle.block597
  %min.epilog.iters.check605 = icmp eq i64 %i.ic, 0
  br i1 %min.epilog.iters.check605, label %vec.epilog.scalar.ph603.preheader, label %vec.epilog.ph606, !prof !60

vec.epilog.ph606:                                 ; preds = %vector.main.loop.iter.check586, %vec.epilog.iter.check604
  %vec.epilog.resume.val599 = phi i64 [ %n.vec589, %vec.epilog.iter.check604 ], [ 0, %vector.main.loop.iter.check586 ]
  %n.vec607 = and i64 %i.hz, 8589934588           ; 5 uses
  %i.ik = getelementptr i8, ptr %.0266, i64 %n.vec607 ; 2 uses
  %i.il = trunc i64 %n.vec607 to i32
  %i.im = sub i32 %i.hv, %i.il
  %i.in = getelementptr i8, ptr %i.hu, i64 %n.vec607
  br label %vec.epilog.vector.body608

vec.epilog.vector.body608:                        ; preds = %vec.epilog.vector.body608, %vec.epilog.ph606
  %index609 = phi i64 [ %vec.epilog.resume.val599, %vec.epilog.ph606 ], [ %index.next613, %vec.epilog.vector.body608 ] ; 3 uses
  %next.gep610 = getelementptr i8, ptr %.0266, i64 %index609
  %next.gep611 = getelementptr i8, ptr %i.hu, i64 %index609
  %wide.load612 = load <4 x i8>, ptr %next.gep611, align 1, !tbaa !50
  store <4 x i8> %wide.load612, ptr %next.gep610, align 1, !tbaa !50
  %index.next613 = add nuw i64 %index609, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next613, %n.vec607
  br i1 %i.io, label %vec.epilog.middle.block614, label %vec.epilog.vector.body608, !llvm.loop !13

vec.epilog.middle.block614:                       ; preds = %vec.epilog.vector.body608
  %cmp.n615 = icmp eq i64 %i.hz, %n.vec607
  br i1 %cmp.n615, label %.loopexit657, label %vec.epilog.scalar.ph603.preheader

vec.epilog.scalar.ph603.preheader:                ; preds = %vector.memcheck583, %iter.check602, %vec.epilog.iter.check604, %vec.epilog.middle.block614
  %.2268.ph = phi ptr [ %.0266, %iter.check602 ], [ %.0266, %vector.memcheck583 ], [ %i.id, %vec.epilog.iter.check604 ], [ %i.ik, %vec.epilog.middle.block614 ] ; 2 uses
  %.1244.ph = phi i32 [ %i.hv, %iter.check602 ], [ %i.hv, %vector.memcheck583 ], [ %i.if, %vec.epilog.iter.check604 ], [ %i.im, %vec.epilog.middle.block614 ] ; 4 uses
  %.1.ph = phi ptr [ %i.hu, %iter.check602 ], [ %i.hu, %vector.memcheck583 ], [ %i.ig, %vec.epilog.iter.check604 ], [ %i.in, %vec.epilog.middle.block614 ] ; 2 uses
  %i.ip = add i32 %.1244.ph, -1
  %xtraiter704 = and i32 %.1244.ph, 7             ; 2 uses
  %lcmp.mod705.not = icmp eq i32 %xtraiter704, 0
  br i1 %lcmp.mod705.not, label %vec.epilog.scalar.ph603.prol.loopexit, label %vec.epilog.scalar.ph603.prol

vec.epilog.scalar.ph603.prol:                     ; preds = %vec.epilog.scalar.ph603.preheader, %vec.epilog.scalar.ph603.prol
  %.2268.prol = phi ptr [ %i.is, %vec.epilog.scalar.ph603.prol ], [ %.2268.ph, %vec.epilog.scalar.ph603.preheader ] ; 2 uses
  %.1244.prol = phi i32 [ %i.it, %vec.epilog.scalar.ph603.prol ], [ %.1244.ph, %vec.epilog.scalar.ph603.preheader ]
  %.1.prol = phi ptr [ %i.iq, %vec.epilog.scalar.ph603.prol ], [ %.1.ph, %vec.epilog.scalar.ph603.preheader ] ; 2 uses
  %prol.iter706 = phi i32 [ %prol.iter706.next, %vec.epilog.scalar.ph603.prol ], [ 0, %vec.epilog.scalar.ph603.preheader ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.1.prol, i64 1 ; 2 uses
  %i.ir = load i8, ptr %.1.prol, align 1, !tbaa !50
  %i.is = getelementptr inbounds nuw i8, ptr %.2268.prol, i64 1 ; 3 uses
  store i8 %i.ir, ptr %.2268.prol, align 1, !tbaa !50
  %i.it = add i32 %.1244.prol, -1                 ; 2 uses
  %prol.iter706.next = add i32 %prol.iter706, 1   ; 2 uses
  %prol.iter706.cmp.not = icmp eq i32 %prol.iter706.next, %xtraiter704
  br i1 %prol.iter706.cmp.not, label %vec.epilog.scalar.ph603.prol.loopexit, label %vec.epilog.scalar.ph603.prol, !llvm.loop !14

vec.epilog.scalar.ph603.prol.loopexit:            ; preds = %vec.epilog.scalar.ph603.prol, %vec.epilog.scalar.ph603.preheader
  %.lcssa687.unr = phi ptr [ poison, %vec.epilog.scalar.ph603.preheader ], [ %i.is, %vec.epilog.scalar.ph603.prol ]
  %.2268.unr = phi ptr [ %.2268.ph, %vec.epilog.scalar.ph603.preheader ], [ %i.is, %vec.epilog.scalar.ph603.prol ]
  %.1244.unr = phi i32 [ %.1244.ph, %vec.epilog.scalar.ph603.preheader ], [ %i.it, %vec.epilog.scalar.ph603.prol ]
  %.1.unr = phi ptr [ %.1.ph, %vec.epilog.scalar.ph603.preheader ], [ %i.iq, %vec.epilog.scalar.ph603.prol ]
  %i.iu = icmp ult i32 %i.ip, 7
  br i1 %i.iu, label %.loopexit657, label %vec.epilog.scalar.ph603

vec.epilog.scalar.ph603:                          ; preds = %vec.epilog.scalar.ph603.prol.loopexit, %vec.epilog.scalar.ph603
  %.2268 = phi ptr [ %i.js, %vec.epilog.scalar.ph603 ], [ %.2268.unr, %vec.epilog.scalar.ph603.prol.loopexit ] ; 9 uses
  %.1244 = phi i32 [ %i.jt, %vec.epilog.scalar.ph603 ], [ %.1244.unr, %vec.epilog.scalar.ph603.prol.loopexit ]
  %.1 = phi ptr [ %i.jq, %vec.epilog.scalar.ph603 ], [ %.1.unr, %vec.epilog.scalar.ph603.prol.loopexit ] ; 9 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.iw = load i8, ptr %.1, align 1, !tbaa !50
  %i.ix = getelementptr inbounds nuw i8, ptr %.2268, i64 1
  store i8 %i.iw, ptr %.2268, align 1, !tbaa !50
  %i.iy = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.iz = load i8, ptr %i.iv, align 1, !tbaa !50
  %i.ja = getelementptr inbounds nuw i8, ptr %.2268, i64 2
  store i8 %i.iz, ptr %i.ix, align 1, !tbaa !50
  %i.jb = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.jc = load i8, ptr %i.iy, align 1, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %.2268, i64 3
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !50
  %i.je = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.jf = load i8, ptr %i.jb, align 1, !tbaa !50
  %i.jg = getelementptr inbounds nuw i8, ptr %.2268, i64 4
  store i8 %i.jf, ptr %i.jd, align 1, !tbaa !50
  %i.jh = getelementptr inbounds nuw i8, ptr %.1, i64 5
  %i.ji = load i8, ptr %i.je, align 1, !tbaa !50
  %i.jj = getelementptr inbounds nuw i8, ptr %.2268, i64 5
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !50
  %i.jk = getelementptr inbounds nuw i8, ptr %.1, i64 6
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !50
  %i.jm = getelementptr inbounds nuw i8, ptr %.2268, i64 6
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !50
  %i.jn = getelementptr inbounds nuw i8, ptr %.1, i64 7
  %i.jo = load i8, ptr %i.jk, align 1, !tbaa !50
  %i.jp = getelementptr inbounds nuw i8, ptr %.2268, i64 7
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !50
  %i.jq = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.jr = load i8, ptr %i.jn, align 1, !tbaa !50
  %i.js = getelementptr inbounds nuw i8, ptr %.2268, i64 8 ; 2 uses
  store i8 %i.jr, ptr %i.jp, align 1, !tbaa !50
  %i.jt = add i32 %.1244, -8                      ; 2 uses
  %.not321.7 = icmp eq i32 %i.jt, 0
  br i1 %.not321.7, label %.loopexit657, label %vec.epilog.scalar.ph603, !llvm.loop !15

.loopexit657:                                     ; preds = %vec.epilog.scalar.ph603.prol.loopexit, %vec.epilog.scalar.ph603, %vec.epilog.middle.block614, %middle.block597
  %.lcssa515 = phi ptr [ %i.ik, %vec.epilog.middle.block614 ], [ %i.id, %middle.block597 ], [ %.lcssa687.unr, %vec.epilog.scalar.ph603.prol.loopexit ], [ %i.js, %vec.epilog.scalar.ph603 ] ; 7 uses
  %i.ju = sub nuw nsw i32 %.0239, %i.hv           ; 3 uses
  %i.jv = icmp ult i32 %i.y, %i.ju
  br i1 %i.jv, label %iter.check566, label %bb.v

iter.check566:                                    ; preds = %.loopexit657
  %i.jw = ptrtoaddr ptr %.lcssa515 to i64
  %i.jx = sub i64 %i.ab, %i.jw
  %diff.check548 = icmp ugt i64 %i.jx, -32
  %or.cond = select i1 %min.iters.check549, i1 true, i1 %diff.check548
  br i1 %or.cond, label %vec.epilog.scalar.ph567.preheader, label %vector.main.loop.iter.check550

vector.main.loop.iter.check550:                   ; preds = %iter.check566
  br i1 %min.iters.check551, label %vec.epilog.ph570, label %vector.ph552

vector.ph552:                                     ; preds = %vector.main.loop.iter.check550
  %i.jy = getelementptr i8, ptr %.lcssa515, i64 %n.vec553 ; 2 uses
  br label %vector.body554

vector.body554:                                   ; preds = %vector.body554, %vector.ph552
  %index555 = phi i64 [ 0, %vector.ph552 ], [ %index.next560, %vector.body554 ] ; 3 uses
  %next.gep556 = getelementptr i8, ptr %.lcssa515, i64 %index555 ; 2 uses
  %next.gep557 = getelementptr i8, ptr %i.aa, i64 %index555 ; 2 uses
  %i.jz = getelementptr i8, ptr %next.gep557, i64 16
  %wide.load558 = load <16 x i8>, ptr %next.gep557, align 1, !tbaa !50
  %wide.load559 = load <16 x i8>, ptr %i.jz, align 1, !tbaa !50
  %i.ka = getelementptr i8, ptr %next.gep556, i64 16
  store <16 x i8> %wide.load558, ptr %next.gep556, align 1, !tbaa !50
  store <16 x i8> %wide.load559, ptr %i.ka, align 1, !tbaa !50
  %index.next560 = add nuw i64 %index555, 32      ; 2 uses
  %i.kb = icmp eq i64 %index.next560, %n.vec553
  br i1 %i.kb, label %middle.block561, label %vector.body554, !llvm.loop !16

middle.block561:                                  ; preds = %vector.body554
  br i1 %cmp.n562, label %.loopexit656, label %vec.epilog.iter.check568

vec.epilog.iter.check568:                         ; preds = %middle.block561
  br i1 %min.epilog.iters.check569, label %vec.epilog.scalar.ph567.preheader, label %vec.epilog.ph570, !prof !60

vec.epilog.ph570:                                 ; preds = %vector.main.loop.iter.check550, %vec.epilog.iter.check568
  %vec.epilog.resume.val563 = phi i64 [ %n.vec553, %vec.epilog.iter.check568 ], [ 0, %vector.main.loop.iter.check550 ]
  %i.kc = getelementptr i8, ptr %.lcssa515, i64 %n.vec571 ; 2 uses
  br label %vec.epilog.vector.body572

vec.epilog.vector.body572:                        ; preds = %vec.epilog.vector.body572, %vec.epilog.ph570
  %index573 = phi i64 [ %vec.epilog.resume.val563, %vec.epilog.ph570 ], [ %index.next577, %vec.epilog.vector.body572 ] ; 3 uses
  %next.gep574 = getelementptr i8, ptr %.lcssa515, i64 %index573
  %next.gep575 = getelementptr i8, ptr %i.aa, i64 %index573
  %wide.load576 = load <4 x i8>, ptr %next.gep575, align 1, !tbaa !50
  store <4 x i8> %wide.load576, ptr %next.gep574, align 1, !tbaa !50
  %index.next577 = add nuw i64 %index573, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next577, %n.vec571
  br i1 %i.kd, label %vec.epilog.middle.block578, label %vec.epilog.vector.body572, !llvm.loop !17

vec.epilog.middle.block578:                       ; preds = %vec.epilog.vector.body572
  br i1 %cmp.n579, label %.loopexit656, label %vec.epilog.scalar.ph567.preheader

vec.epilog.scalar.ph567.preheader:                ; preds = %iter.check566, %vec.epilog.iter.check568, %vec.epilog.middle.block578
  %.3269.ph = phi ptr [ %.lcssa515, %iter.check566 ], [ %i.jy, %vec.epilog.iter.check568 ], [ %i.kc, %vec.epilog.middle.block578 ] ; 2 uses
  %.2245.ph = phi i32 [ %i.y, %iter.check566 ], [ %i.az, %vec.epilog.iter.check568 ], [ %i.bc, %vec.epilog.middle.block578 ] ; 4 uses
  %.2.ph = phi ptr [ %i.aa, %iter.check566 ], [ %i.ba, %vec.epilog.iter.check568 ], [ %i.bd, %vec.epilog.middle.block578 ] ; 2 uses
  %i.ke = add i32 %.2245.ph, -1
  %xtraiter707 = and i32 %.2245.ph, 7             ; 2 uses
  %lcmp.mod708.not = icmp eq i32 %xtraiter707, 0
  br i1 %lcmp.mod708.not, label %vec.epilog.scalar.ph567.prol.loopexit, label %vec.epilog.scalar.ph567.prol

vec.epilog.scalar.ph567.prol:                     ; preds = %vec.epilog.scalar.ph567.preheader, %vec.epilog.scalar.ph567.prol
  %.3269.prol = phi ptr [ %i.kh, %vec.epilog.scalar.ph567.prol ], [ %.3269.ph, %vec.epilog.scalar.ph567.preheader ] ; 2 uses
  %.2245.prol = phi i32 [ %i.ki, %vec.epilog.scalar.ph567.prol ], [ %.2245.ph, %vec.epilog.scalar.ph567.preheader ]
  %.2.prol = phi ptr [ %i.kf, %vec.epilog.scalar.ph567.prol ], [ %.2.ph, %vec.epilog.scalar.ph567.preheader ] ; 2 uses
  %prol.iter709 = phi i32 [ %prol.iter709.next, %vec.epilog.scalar.ph567.prol ], [ 0, %vec.epilog.scalar.ph567.preheader ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.2.prol, i64 1 ; 2 uses
  %i.kg = load i8, ptr %.2.prol, align 1, !tbaa !50
  %i.kh = getelementptr inbounds nuw i8, ptr %.3269.prol, i64 1 ; 3 uses
  store i8 %i.kg, ptr %.3269.prol, align 1, !tbaa !50
  %i.ki = add i32 %.2245.prol, -1                 ; 2 uses
  %prol.iter709.next = add i32 %prol.iter709, 1   ; 2 uses
  %prol.iter709.cmp.not = icmp eq i32 %prol.iter709.next, %xtraiter707
  br i1 %prol.iter709.cmp.not, label %vec.epilog.scalar.ph567.prol.loopexit, label %vec.epilog.scalar.ph567.prol, !llvm.loop !18

vec.epilog.scalar.ph567.prol.loopexit:            ; preds = %vec.epilog.scalar.ph567.prol, %vec.epilog.scalar.ph567.preheader
  %.lcssa688.unr = phi ptr [ poison, %vec.epilog.scalar.ph567.preheader ], [ %i.kh, %vec.epilog.scalar.ph567.prol ]
  %.3269.unr = phi ptr [ %.3269.ph, %vec.epilog.scalar.ph567.preheader ], [ %i.kh, %vec.epilog.scalar.ph567.prol ]
  %.2245.unr = phi i32 [ %.2245.ph, %vec.epilog.scalar.ph567.preheader ], [ %i.ki, %vec.epilog.scalar.ph567.prol ]
  %.2.unr = phi ptr [ %.2.ph, %vec.epilog.scalar.ph567.preheader ], [ %i.kf, %vec.epilog.scalar.ph567.prol ]
  %i.kj = icmp ult i32 %i.ke, 7
  br i1 %i.kj, label %.loopexit656, label %vec.epilog.scalar.ph567

vec.epilog.scalar.ph567:                          ; preds = %vec.epilog.scalar.ph567.prol.loopexit, %vec.epilog.scalar.ph567
  %.3269 = phi ptr [ %i.lh, %vec.epilog.scalar.ph567 ], [ %.3269.unr, %vec.epilog.scalar.ph567.prol.loopexit ] ; 9 uses
  %.2245 = phi i32 [ %i.li, %vec.epilog.scalar.ph567 ], [ %.2245.unr, %vec.epilog.scalar.ph567.prol.loopexit ]
  %.2 = phi ptr [ %i.lf, %vec.epilog.scalar.ph567 ], [ %.2.unr, %vec.epilog.scalar.ph567.prol.loopexit ] ; 9 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.kl = load i8, ptr %.2, align 1, !tbaa !50
  %i.km = getelementptr inbounds nuw i8, ptr %.3269, i64 1
  store i8 %i.kl, ptr %.3269, align 1, !tbaa !50
  %i.kn = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.ko = load i8, ptr %i.kk, align 1, !tbaa !50
  %i.kp = getelementptr inbounds nuw i8, ptr %.3269, i64 2
  store i8 %i.ko, ptr %i.km, align 1, !tbaa !50
  %i.kq = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.kr = load i8, ptr %i.kn, align 1, !tbaa !50
  %i.ks = getelementptr inbounds nuw i8, ptr %.3269, i64 3
  store i8 %i.kr, ptr %i.kp, align 1, !tbaa !50
  %i.kt = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.ku = load i8, ptr %i.kq, align 1, !tbaa !50
  %i.kv = getelementptr inbounds nuw i8, ptr %.3269, i64 4
  store i8 %i.ku, ptr %i.ks, align 1, !tbaa !50
  %i.kw = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.kx = load i8, ptr %i.kt, align 1, !tbaa !50
  %i.ky = getelementptr inbounds nuw i8, ptr %.3269, i64 5
  store i8 %i.kx, ptr %i.kv, align 1, !tbaa !50
  %i.kz = getelementptr inbounds nuw i8, ptr %.2, i64 6
  %i.la = load i8, ptr %i.kw, align 1, !tbaa !50
  %i.lb = getelementptr inbounds nuw i8, ptr %.3269, i64 6
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !50
  %i.lc = getelementptr inbounds nuw i8, ptr %.2, i64 7
  %i.ld = load i8, ptr %i.kz, align 1, !tbaa !50
  %i.le = getelementptr inbounds nuw i8, ptr %.3269, i64 7
  store i8 %i.ld, ptr %i.lb, align 1, !tbaa !50
  %i.lf = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.lg = load i8, ptr %i.lc, align 1, !tbaa !50
  %i.lh = getelementptr inbounds nuw i8, ptr %.3269, i64 8 ; 2 uses
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !50
  %i.li = add i32 %.2245, -8                      ; 2 uses
  %.not322.7 = icmp eq i32 %i.li, 0
  br i1 %.not322.7, label %.loopexit656, label %vec.epilog.scalar.ph567, !llvm.loop !19

.loopexit656:                                     ; preds = %vec.epilog.scalar.ph567.prol.loopexit, %vec.epilog.scalar.ph567, %vec.epilog.middle.block578, %middle.block561
  %.lcssa516 = phi ptr [ %i.kc, %vec.epilog.middle.block578 ], [ %i.jy, %middle.block561 ], [ %.lcssa688.unr, %vec.epilog.scalar.ph567.prol.loopexit ], [ %i.lh, %vec.epilog.scalar.ph567 ] ; 2 uses
  %i.lj = sub nuw nsw i32 %i.ju, %i.y
  %i.lk = zext nneg i32 %i.fb to i64
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds i8, ptr %.lcssa516, i64 %i.ll
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ln = sub nuw i32 %i.y, %i.fj
  %i.lo = zext i32 %i.ln to i64                   ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.lo ; 7 uses
  %i.lq = icmp ult i32 %i.fj, %.0239
  br i1 %i.lq, label %iter.check638, label %bb.v

iter.check638:                                    ; preds = %bb.u
  %i.lr = add nsw i32 %i.fj, -1                   ; 3 uses
  %i.ls = zext i32 %i.lr to i64
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 5 uses
  %min.iters.check621 = icmp ult i32 %i.lr, 3
  br i1 %min.iters.check621, label %vec.epilog.scalar.ph639.preheader, label %vector.memcheck619

vector.memcheck619:                               ; preds = %iter.check638
  %i.lu = add i64 %i.ab, %i.lo
  %i.lv = sub i64 %i.lu, %i.ff
  %diff.check620 = icmp ugt i64 %i.lv, -32
  br i1 %diff.check620, label %vec.epilog.scalar.ph639.preheader, label %vector.main.loop.iter.check622

vector.main.loop.iter.check622:                   ; preds = %vector.memcheck619
  %min.iters.check623 = icmp ult i32 %i.lr, 31
  br i1 %min.iters.check623, label %vec.epilog.ph642, label %vector.ph624

vector.ph624:                                     ; preds = %vector.main.loop.iter.check622
  %i.lw = and i64 %i.lt, 28
  %n.vec625 = and i64 %i.lt, 8589934560           ; 6 uses
  %i.lx = getelementptr i8, ptr %.0266, i64 %n.vec625 ; 2 uses
  %i.ly = trunc i64 %n.vec625 to i32
  %i.lz = sub i32 %i.fj, %i.ly
  %i.ma = getelementptr i8, ptr %i.lp, i64 %n.vec625
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph624
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next632, %vector.body626 ] ; 3 uses
  %next.gep628 = getelementptr i8, ptr %.0266, i64 %index627 ; 2 uses
  %next.gep629 = getelementptr i8, ptr %i.lp, i64 %index627 ; 2 uses
  %i.mb = getelementptr i8, ptr %next.gep629, i64 16
  %wide.load630 = load <16 x i8>, ptr %next.gep629, align 1, !tbaa !50
  %wide.load631 = load <16 x i8>, ptr %i.mb, align 1, !tbaa !50
  %i.mc = getelementptr i8, ptr %next.gep628, i64 16
  store <16 x i8> %wide.load630, ptr %next.gep628, align 1, !tbaa !50
  store <16 x i8> %wide.load631, ptr %i.mc, align 1, !tbaa !50
  %index.next632 = add nuw i64 %index627, 32      ; 2 uses
  %i.md = icmp eq i64 %index.next632, %n.vec625
  br i1 %i.md, label %middle.block633, label %vector.body626, !llvm.loop !20

middle.block633:                                  ; preds = %vector.body626
  %cmp.n634 = icmp eq i64 %i.lt, %n.vec625
  br i1 %cmp.n634, label %.loopexit658, label %vec.epilog.iter.check640

vec.epilog.iter.check640:                         ; preds = %middle.block633
  %min.epilog.iters.check641 = icmp eq i64 %i.lw, 0
  br i1 %min.epilog.iters.check641, label %vec.epilog.scalar.ph639.preheader, label %vec.epilog.ph642, !prof !60

vec.epilog.ph642:                                 ; preds = %vector.main.loop.iter.check622, %vec.epilog.iter.check640
  %vec.epilog.resume.val635 = phi i64 [ %n.vec625, %vec.epilog.iter.check640 ], [ 0, %vector.main.loop.iter.check622 ]
  %n.vec643 = and i64 %i.lt, 8589934588           ; 5 uses
  %i.me = getelementptr i8, ptr %.0266, i64 %n.vec643 ; 2 uses
  %i.mf = trunc i64 %n.vec643 to i32
  %i.mg = sub i32 %i.fj, %i.mf
  %i.mh = getelementptr i8, ptr %i.lp, i64 %n.vec643
  br label %vec.epilog.vector.body644

vec.epilog.vector.body644:                        ; preds = %vec.epilog.vector.body644, %vec.epilog.ph642
  %index645 = phi i64 [ %vec.epilog.resume.val635, %vec.epilog.ph642 ], [ %index.next649, %vec.epilog.vector.body644 ] ; 3 uses
  %next.gep646 = getelementptr i8, ptr %.0266, i64 %index645
  %next.gep647 = getelementptr i8, ptr %i.lp, i64 %index645
  %wide.load648 = load <4 x i8>, ptr %next.gep647, align 1, !tbaa !50
  store <4 x i8> %wide.load648, ptr %next.gep646, align 1, !tbaa !50
  %index.next649 = add nuw i64 %index645, 4       ; 2 uses
  %i.mi = icmp eq i64 %index.next649, %n.vec643
  br i1 %i.mi, label %vec.epilog.middle.block650, label %vec.epilog.vector.body644, !llvm.loop !21

vec.epilog.middle.block650:                       ; preds = %vec.epilog.vector.body644
  %cmp.n651 = icmp eq i64 %i.lt, %n.vec643
  br i1 %cmp.n651, label %.loopexit658, label %vec.epilog.scalar.ph639.preheader

vec.epilog.scalar.ph639.preheader:                ; preds = %vector.memcheck619, %iter.check638, %vec.epilog.iter.check640, %vec.epilog.middle.block650
  %.4270.ph = phi ptr [ %.0266, %iter.check638 ], [ %.0266, %vector.memcheck619 ], [ %i.lx, %vec.epilog.iter.check640 ], [ %i.me, %vec.epilog.middle.block650 ] ; 2 uses
  %.3246.ph = phi i32 [ %i.fj, %iter.check638 ], [ %i.fj, %vector.memcheck619 ], [ %i.lz, %vec.epilog.iter.check640 ], [ %i.mg, %vec.epilog.middle.block650 ] ; 4 uses
  %.3.ph = phi ptr [ %i.lp, %iter.check638 ], [ %i.lp, %vector.memcheck619 ], [ %i.ma, %vec.epilog.iter.check640 ], [ %i.mh, %vec.epilog.middle.block650 ] ; 2 uses
  %i.mj = add i32 %.3246.ph, -1
  %xtraiter = and i32 %.3246.ph, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph639.prol.loopexit, label %vec.epilog.scalar.ph639.prol

vec.epilog.scalar.ph639.prol:                     ; preds = %vec.epilog.scalar.ph639.preheader, %vec.epilog.scalar.ph639.prol
  %.4270.prol = phi ptr [ %i.mm, %vec.epilog.scalar.ph639.prol ], [ %.4270.ph, %vec.epilog.scalar.ph639.preheader ] ; 2 uses
  %.3246.prol = phi i32 [ %i.mn, %vec.epilog.scalar.ph639.prol ], [ %.3246.ph, %vec.epilog.scalar.ph639.preheader ]
  %.3.prol = phi ptr [ %i.mk, %vec.epilog.scalar.ph639.prol ], [ %.3.ph, %vec.epilog.scalar.ph639.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph639.prol ], [ 0, %vec.epilog.scalar.ph639.preheader ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.3.prol, i64 1 ; 2 uses
  %i.ml = load i8, ptr %.3.prol, align 1, !tbaa !50
  %i.mm = getelementptr inbounds nuw i8, ptr %.4270.prol, i64 1 ; 3 uses
  store i8 %i.ml, ptr %.4270.prol, align 1, !tbaa !50
  %i.mn = add i32 %.3246.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph639.prol.loopexit, label %vec.epilog.scalar.ph639.prol, !llvm.loop !22

vec.epilog.scalar.ph639.prol.loopexit:            ; preds = %vec.epilog.scalar.ph639.prol, %vec.epilog.scalar.ph639.preheader
  %.lcssa686.unr = phi ptr [ poison, %vec.epilog.scalar.ph639.preheader ], [ %i.mm, %vec.epilog.scalar.ph639.prol ]
  %.4270.unr = phi ptr [ %.4270.ph, %vec.epilog.scalar.ph639.preheader ], [ %i.mm, %vec.epilog.scalar.ph639.prol ]
  %.3246.unr = phi i32 [ %.3246.ph, %vec.epilog.scalar.ph639.preheader ], [ %i.mn, %vec.epilog.scalar.ph639.prol ]
  %.3.unr = phi ptr [ %.3.ph, %vec.epilog.scalar.ph639.preheader ], [ %i.mk, %vec.epilog.scalar.ph639.prol ]
  %i.mo = icmp ult i32 %i.mj, 7
  br i1 %i.mo, label %.loopexit658, label %vec.epilog.scalar.ph639

vec.epilog.scalar.ph639:                          ; preds = %vec.epilog.scalar.ph639.prol.loopexit, %vec.epilog.scalar.ph639
  %.4270 = phi ptr [ %i.nm, %vec.epilog.scalar.ph639 ], [ %.4270.unr, %vec.epilog.scalar.ph639.prol.loopexit ] ; 9 uses
  %.3246 = phi i32 [ %i.nn, %vec.epilog.scalar.ph639 ], [ %.3246.unr, %vec.epilog.scalar.ph639.prol.loopexit ]
  %.3 = phi ptr [ %i.nk, %vec.epilog.scalar.ph639 ], [ %.3.unr, %vec.epilog.scalar.ph639.prol.loopexit ] ; 9 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.mq = load i8, ptr %.3, align 1, !tbaa !50
  %i.mr = getelementptr inbounds nuw i8, ptr %.4270, i64 1
  store i8 %i.mq, ptr %.4270, align 1, !tbaa !50
  %i.ms = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.mt = load i8, ptr %i.mp, align 1, !tbaa !50
  %i.mu = getelementptr inbounds nuw i8, ptr %.4270, i64 2
  store i8 %i.mt, ptr %i.mr, align 1, !tbaa !50
  %i.mv = getelementptr inbounds nuw i8, ptr %.3, i64 3
  %i.mw = load i8, ptr %i.ms, align 1, !tbaa !50
  %i.mx = getelementptr inbounds nuw i8, ptr %.4270, i64 3
  store i8 %i.mw, ptr %i.mu, align 1, !tbaa !50
  %i.my = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.mz = load i8, ptr %i.mv, align 1, !tbaa !50
  %i.na = getelementptr inbounds nuw i8, ptr %.4270, i64 4
  store i8 %i.mz, ptr %i.mx, align 1, !tbaa !50
  %i.nb = getelementptr inbounds nuw i8, ptr %.3, i64 5
  %i.nc = load i8, ptr %i.my, align 1, !tbaa !50
  %i.nd = getelementptr inbounds nuw i8, ptr %.4270, i64 5
  store i8 %i.nc, ptr %i.na, align 1, !tbaa !50
  %i.ne = getelementptr inbounds nuw i8, ptr %.3, i64 6
  %i.nf = load i8, ptr %i.nb, align 1, !tbaa !50
  %i.ng = getelementptr inbounds nuw i8, ptr %.4270, i64 6
  store i8 %i.nf, ptr %i.nd, align 1, !tbaa !50
  %i.nh = getelementptr inbounds nuw i8, ptr %.3, i64 7
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !50
  %i.nj = getelementptr inbounds nuw i8, ptr %.4270, i64 7
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !50
  %i.nk = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.nl = load i8, ptr %i.nh, align 1, !tbaa !50
  %i.nm = getelementptr inbounds nuw i8, ptr %.4270, i64 8 ; 2 uses
  store i8 %i.nl, ptr %i.nj, align 1, !tbaa !50
  %i.nn = add i32 %.3246, -8                      ; 2 uses
  %.not320.7 = icmp eq i32 %i.nn, 0
  br i1 %.not320.7, label %.loopexit658, label %vec.epilog.scalar.ph639, !llvm.loop !23

.loopexit658:                                     ; preds = %vec.epilog.scalar.ph639.prol.loopexit, %vec.epilog.scalar.ph639, %vec.epilog.middle.block650, %middle.block633
  %.lcssa514 = phi ptr [ %i.me, %vec.epilog.middle.block650 ], [ %i.lx, %middle.block633 ], [ %.lcssa686.unr, %vec.epilog.scalar.ph639.prol.loopexit ], [ %i.nm, %vec.epilog.scalar.ph639 ] ; 2 uses
  %i.no = sub nuw nsw i32 %.0239, %i.fj
  %i.np = zext nneg i32 %i.fb to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr inbounds i8, ptr %.lcssa514, i64 %i.nq
  br label %bb.v

bb.v:                                             ; preds = %.loopexit657, %.loopexit656, %bb.t, %.loopexit658, %bb.u, %bb.r, %.loopexit655
  %.5271 = phi ptr [ %.lcssa517, %.loopexit655 ], [ %.0266, %bb.r ], [ %.lcssa516, %.loopexit656 ], [ %.lcssa515, %.loopexit657 ], [ %.0266, %bb.t ], [ %.lcssa514, %.loopexit658 ], [ %.0266, %bb.u ] ; 6 uses
  %.1240 = phi i32 [ %i.hn, %.loopexit655 ], [ %.0239, %bb.r ], [ %i.lj, %.loopexit656 ], [ %i.ju, %.loopexit657 ], [ %.0239, %bb.t ], [ %i.no, %.loopexit658 ], [ %.0239, %bb.u ] ; 5 uses
  %.4 = phi ptr [ %i.hq, %.loopexit655 ], [ %i.fo, %bb.r ], [ %i.lm, %.loopexit656 ], [ %i.aa, %.loopexit657 ], [ %i.hu, %bb.t ], [ %i.nr, %.loopexit658 ], [ %i.lp, %bb.u ] ; 6 uses
  %i.ns = icmp ugt i32 %.1240, 2
  br i1 %i.ns, label %.lr.ph376.preheader, label %._crit_edge377

.lr.ph376.preheader:                              ; preds = %bb.v
  %i.nt = add i32 %.1240, -3                      ; 2 uses
  %i.nu = udiv i32 %i.nt, 3
  %i.nv = and i32 %i.nu, 1
  %lcmp.mod714.not.not = icmp eq i32 %i.nv, 0
  br i1 %lcmp.mod714.not.not, label %.lr.ph376.prol, label %.lr.ph376.prol.loopexit

.lr.ph376.prol:                                   ; preds = %.lr.ph376.preheader
  %i.nw = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.nx = load i8, ptr %.4, align 1, !tbaa !50
  %i.ny = getelementptr inbounds nuw i8, ptr %.5271, i64 1
  store i8 %i.nx, ptr %.5271, align 1, !tbaa !50
  %i.nz = getelementptr inbounds nuw i8, ptr %.4, i64 2
  %i.oa = load i8, ptr %i.nw, align 1, !tbaa !50
  %i.ob = getelementptr inbounds nuw i8, ptr %.5271, i64 2
  store i8 %i.oa, ptr %i.ny, align 1, !tbaa !50
  %i.oc = getelementptr inbounds nuw i8, ptr %.4, i64 3 ; 2 uses
  %i.od = load i8, ptr %i.nz, align 1, !tbaa !50
  %i.oe = getelementptr inbounds nuw i8, ptr %.5271, i64 3 ; 2 uses
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !50
  %i.of = add i32 %.1240, -3                      ; 2 uses
  br label %.lr.ph376.prol.loopexit

.lr.ph376.prol.loopexit:                          ; preds = %.lr.ph376.prol, %.lr.ph376.preheader
  %.5374.unr = phi ptr [ %.4, %.lr.ph376.preheader ], [ %i.oc, %.lr.ph376.prol ]
  %.2241373.unr = phi i32 [ %.1240, %.lr.ph376.preheader ], [ %i.of, %.lr.ph376.prol ]
  %.6272372.unr = phi ptr [ %.5271, %.lr.ph376.preheader ], [ %i.oe, %.lr.ph376.prol ]
  %.lcssa692.unr = phi ptr [ poison, %.lr.ph376.preheader ], [ %i.oc, %.lr.ph376.prol ]
  %.lcssa691.unr = phi ptr [ poison, %.lr.ph376.preheader ], [ %i.oe, %.lr.ph376.prol ]
  %.lcssa690.unr = phi i32 [ poison, %.lr.ph376.preheader ], [ %i.of, %.lr.ph376.prol ]
  %i.og = icmp ult i32 %i.nt, 3
  br i1 %i.og, label %._crit_edge377, label %.lr.ph376

.lr.ph376:                                        ; preds = %.lr.ph376.prol.loopexit, %.lr.ph376
  %.5374 = phi ptr [ %i.ow, %.lr.ph376 ], [ %.5374.unr, %.lr.ph376.prol.loopexit ] ; 7 uses
  %.2241373 = phi i32 [ %i.oz, %.lr.ph376 ], [ %.2241373.unr, %.lr.ph376.prol.loopexit ]
  %.6272372 = phi ptr [ %i.oy, %.lr.ph376 ], [ %.6272372.unr, %.lr.ph376.prol.loopexit ] ; 7 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.5374, i64 1
  %i.oi = load i8, ptr %.5374, align 1, !tbaa !50
  %i.oj = getelementptr inbounds nuw i8, ptr %.6272372, i64 1
  store i8 %i.oi, ptr %.6272372, align 1, !tbaa !50
  %i.ok = getelementptr inbounds nuw i8, ptr %.5374, i64 2
  %i.ol = load i8, ptr %i.oh, align 1, !tbaa !50
  %i.om = getelementptr inbounds nuw i8, ptr %.6272372, i64 2
  store i8 %i.ol, ptr %i.oj, align 1, !tbaa !50
  %i.on = getelementptr inbounds nuw i8, ptr %.5374, i64 3
  %i.oo = load i8, ptr %i.ok, align 1, !tbaa !50
  %i.op = getelementptr inbounds nuw i8, ptr %.6272372, i64 3
  store i8 %i.oo, ptr %i.om, align 1, !tbaa !50
  %i.oq = getelementptr inbounds nuw i8, ptr %.5374, i64 4
  %i.or = load i8, ptr %i.on, align 1, !tbaa !50
  %i.os = getelementptr inbounds nuw i8, ptr %.6272372, i64 4
  store i8 %i.or, ptr %i.op, align 1, !tbaa !50
  %i.ot = getelementptr inbounds nuw i8, ptr %.5374, i64 5
  %i.ou = load i8, ptr %i.oq, align 1, !tbaa !50
  %i.ov = getelementptr inbounds nuw i8, ptr %.6272372, i64 5
  store i8 %i.ou, ptr %i.os, align 1, !tbaa !50
  %i.ow = getelementptr inbounds nuw i8, ptr %.5374, i64 6 ; 2 uses
end_hunk_0
