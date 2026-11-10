Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/uudecode?download=true
inline.NumInlined: 16
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"begin %o %s \0A\00", align 1, !guid !10
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !guid !11
@stdin = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !guid !12
@str = private unnamed_addr constant [25 x i8] c"Usage: uudecode [infile]\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @skip_to_newline(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 !guid !15 {
bb.a:
  %i.a = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  %.not = icmp eq i8 %i.c, 10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.d = trunc nsw i64 %indvars.iv to i32
  %i.e = add nsw i32 %i.d, 1
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 64) i32 @decode_char(i8 noundef signext %0) local_unnamed_addr #1 !guid !16 {
bb.a:
  %i.a = and i8 %0, 63
  %i.b = xor i8 %i.a, 32
  %i.c = zext nneg i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @decode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 !guid !22 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13    ; 2 uses
  %.not68 = icmp eq i8 %i.c, 32
  br i1 %.not68, label %.preheader, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  %scevgep100 = getelementptr i8, ptr %2, i64 3
  br label %.lr.ph72

.preheader:                                       ; preds = %skip_to_newline.exit, %bb.a
  %.056.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %skip_to_newline.exit ]
  %.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.la, %skip_to_newline.exit ]
  br label %bb.f

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %skip_to_newline.exit
  %i.d = phi i8 [ %i.lc, %skip_to_newline.exit ], [ %i.c, %.lr.ph72.preheader ]
  %.05670 = phi i32 [ %.1.lcssa, %skip_to_newline.exit ], [ 0, %.lr.ph72.preheader ] ; 6 uses
  %.05769 = phi i32 [ %i.kz, %skip_to_newline.exit ], [ %1, %.lr.ph72.preheader ]
  %i.e = and i8 %i.d, 63                          ; 2 uses
  %i.f = add i32 %.05769, 1                       ; 2 uses
  %.not75 = icmp eq i8 %i.e, 32
  br i1 %.not75, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph72
  %i.g = xor i8 %i.e, 32                          ; 2 uses
  %i.h = zext nneg i8 %i.g to i32                 ; 4 uses
  %i.i = sext i32 %i.f to i64                     ; 6 uses
  %i.j = udiv i8 %i.g, 3
  %i.k = zext nneg i8 %i.j to i64
  %.neg = mul i32 %i.h, -1431655765
  %i.l = add i32 %.neg, -1
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 4 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 16
  br i1 %min.iters.check, label %.lr.ph.preheader102, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.p = sext i32 %.05670 to i64                  ; 2 uses
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  %i.r = mul nuw nsw i64 %i.n, 3
  %i.s = getelementptr i8, ptr %scevgep100, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 %i.p
  %i.u = getelementptr i8, ptr %0, i64 %i.i
  %i.v = shl nuw nsw i64 %i.n, 2
  %i.w = getelementptr i8, ptr %scevgep, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 %i.i
  %bound0 = icmp ult ptr %i.q, %i.x
  %bound1 = icmp ult ptr %i.u, %i.t
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader102, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.y = and i64 %i.o, 15                         ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 16, i64 %i.y
  %n.vec = sub nsw i64 %i.o, %i.aa                ; 3 uses
  %i.ab = shl nsw i64 %n.vec, 2
  %i.ac = add nsw i64 %i.ab, %i.i
  %i.ad = trunc nsw i64 %n.vec to i32             ; 2 uses
  %i.ae = mul nsw i32 %i.ad, -3
  %i.af = add nsw i32 %i.ae, %i.h
  %i.ag = mul nsw i32 %i.ad, 3
  %i.ah = add i32 %.05670, %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl i64 %index, 2
  %i.aj = add i64 %i.ai, %i.i                     ; 16 uses
  %i.ak = trunc i64 %index to i32
  %i.al = mul i32 %i.ak, 3
  %i.am = add i32 %.05670, %i.al
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.aj ; 4 uses
  %i.ao = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 12
  %i.au = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 20
  %i.ay = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  %i.ba = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 28
  %i.bc = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 32
  %i.be = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 36
  %i.bg = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 40
  %i.bi = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 44
  %i.bk = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 48
  %i.bm = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 52
  %i.bo = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 56
  %i.bq = getelementptr i8, ptr %0, i64 %i.aj     ; 4 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 60
  %i.bs = load i8, ptr %i.an, align 1, !tbaa !13, !alias.scope !23
  %i.bt = load i8, ptr %i.ap, align 1, !tbaa !13, !alias.scope !23
  %i.bu = load i8, ptr %i.ar, align 1, !tbaa !13, !alias.scope !23
  %i.bv = load i8, ptr %i.at, align 1, !tbaa !13, !alias.scope !23
  %i.bw = load i8, ptr %i.av, align 1, !tbaa !13, !alias.scope !23
  %i.bx = load i8, ptr %i.ax, align 1, !tbaa !13, !alias.scope !23
  %i.by = load i8, ptr %i.az, align 1, !tbaa !13, !alias.scope !23
  %i.bz = load i8, ptr %i.bb, align 1, !tbaa !13, !alias.scope !23
  %i.ca = load i8, ptr %i.bd, align 1, !tbaa !13, !alias.scope !23
  %i.cb = load i8, ptr %i.bf, align 1, !tbaa !13, !alias.scope !23
  %i.cc = load i8, ptr %i.bh, align 1, !tbaa !13, !alias.scope !23
  %i.cd = load i8, ptr %i.bj, align 1, !tbaa !13, !alias.scope !23
  %i.ce = load i8, ptr %i.bl, align 1, !tbaa !13, !alias.scope !23
  %i.cf = load i8, ptr %i.bn, align 1, !tbaa !13, !alias.scope !23
  %i.cg = load i8, ptr %i.bp, align 1, !tbaa !13, !alias.scope !23
  %i.ch = load i8, ptr %i.br, align 1, !tbaa !13, !alias.scope !23
  %i.ci = insertelement <16 x i8> poison, i8 %i.bs, i64 0
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 1
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 2
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 3
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 4
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 5
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 6
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 7
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 8
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 9
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 10
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 11
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 12
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 13
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 14
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 15
  %i.cy = getelementptr i8, ptr %i.an, i64 1
  %i.cz = getelementptr i8, ptr %i.ao, i64 5
  %i.da = getelementptr i8, ptr %i.aq, i64 9
  %i.db = getelementptr i8, ptr %i.as, i64 13
  %i.dc = getelementptr i8, ptr %i.au, i64 17
  %i.dd = getelementptr i8, ptr %i.aw, i64 21
  %i.de = getelementptr i8, ptr %i.ay, i64 25
  %i.df = getelementptr i8, ptr %i.ba, i64 29
  %i.dg = getelementptr i8, ptr %i.bc, i64 33
  %i.dh = getelementptr i8, ptr %i.be, i64 37
  %i.di = getelementptr i8, ptr %i.bg, i64 41
  %i.dj = getelementptr i8, ptr %i.bi, i64 45
  %i.dk = getelementptr i8, ptr %i.bk, i64 49
  %i.dl = getelementptr i8, ptr %i.bm, i64 53
  %i.dm = getelementptr i8, ptr %i.bo, i64 57
  %i.dn = getelementptr i8, ptr %i.bq, i64 61
  %i.do = load i8, ptr %i.cy, align 1, !tbaa !13, !alias.scope !23
  %i.dp = load i8, ptr %i.cz, align 1, !tbaa !13, !alias.scope !23
  %i.dq = load i8, ptr %i.da, align 1, !tbaa !13, !alias.scope !23
  %i.dr = load i8, ptr %i.db, align 1, !tbaa !13, !alias.scope !23
  %i.ds = load i8, ptr %i.dc, align 1, !tbaa !13, !alias.scope !23
  %i.dt = load i8, ptr %i.dd, align 1, !tbaa !13, !alias.scope !23
  %i.du = load i8, ptr %i.de, align 1, !tbaa !13, !alias.scope !23
  %i.dv = load i8, ptr %i.df, align 1, !tbaa !13, !alias.scope !23
  %i.dw = load i8, ptr %i.dg, align 1, !tbaa !13, !alias.scope !23
  %i.dx = load i8, ptr %i.dh, align 1, !tbaa !13, !alias.scope !23
  %i.dy = load i8, ptr %i.di, align 1, !tbaa !13, !alias.scope !23
  %i.dz = load i8, ptr %i.dj, align 1, !tbaa !13, !alias.scope !23
  %i.ea = load i8, ptr %i.dk, align 1, !tbaa !13, !alias.scope !23
  %i.eb = load i8, ptr %i.dl, align 1, !tbaa !13, !alias.scope !23
  %i.ec = load i8, ptr %i.dm, align 1, !tbaa !13, !alias.scope !23
  %i.ed = load i8, ptr %i.dn, align 1, !tbaa !13, !alias.scope !23
  %i.ee = insertelement <16 x i8> poison, i8 %i.do, i64 0
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 1
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 2
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 3
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 4
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 5
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 6
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 7
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 8
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 9
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 10
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 11
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 12
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 13
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 14
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 15 ; 2 uses
  %i.eu = sext i32 %i.am to i64
  %i.ev = getelementptr inbounds i8, ptr %2, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.an, i64 2
  %i.ex = getelementptr i8, ptr %i.ao, i64 6
  %i.ey = getelementptr i8, ptr %i.aq, i64 10
  %i.ez = getelementptr i8, ptr %i.as, i64 14
  %i.fa = getelementptr i8, ptr %i.au, i64 18
  %i.fb = getelementptr i8, ptr %i.aw, i64 22
  %i.fc = getelementptr i8, ptr %i.ay, i64 26
  %i.fd = getelementptr i8, ptr %i.ba, i64 30
  %i.fe = getelementptr i8, ptr %i.bc, i64 34
  %i.ff = getelementptr i8, ptr %i.be, i64 38
  %i.fg = getelementptr i8, ptr %i.bg, i64 42
  %i.fh = getelementptr i8, ptr %i.bi, i64 46
  %i.fi = getelementptr i8, ptr %i.bk, i64 50
  %i.fj = getelementptr i8, ptr %i.bm, i64 54
  %i.fk = getelementptr i8, ptr %i.bo, i64 58
  %i.fl = getelementptr i8, ptr %i.bq, i64 62
  %i.fm = load i8, ptr %i.ew, align 1, !tbaa !13, !alias.scope !23
  %i.fn = load i8, ptr %i.ex, align 1, !tbaa !13, !alias.scope !23
  %i.fo = load i8, ptr %i.ey, align 1, !tbaa !13, !alias.scope !23
  %i.fp = load i8, ptr %i.ez, align 1, !tbaa !13, !alias.scope !23
  %i.fq = load i8, ptr %i.fa, align 1, !tbaa !13, !alias.scope !23
  %i.fr = load i8, ptr %i.fb, align 1, !tbaa !13, !alias.scope !23
  %i.fs = load i8, ptr %i.fc, align 1, !tbaa !13, !alias.scope !23
  %i.ft = load i8, ptr %i.fd, align 1, !tbaa !13, !alias.scope !23
  %i.fu = load i8, ptr %i.fe, align 1, !tbaa !13, !alias.scope !23
  %i.fv = load i8, ptr %i.ff, align 1, !tbaa !13, !alias.scope !23
  %i.fw = load i8, ptr %i.fg, align 1, !tbaa !13, !alias.scope !23
  %i.fx = load i8, ptr %i.fh, align 1, !tbaa !13, !alias.scope !23
  %i.fy = load i8, ptr %i.fi, align 1, !tbaa !13, !alias.scope !23
  %i.fz = load i8, ptr %i.fj, align 1, !tbaa !13, !alias.scope !23
  %i.ga = load i8, ptr %i.fk, align 1, !tbaa !13, !alias.scope !23
  %i.gb = load i8, ptr %i.fl, align 1, !tbaa !13, !alias.scope !23
  %i.gc = insertelement <16 x i8> poison, i8 %i.fm, i64 0
  %i.gd = insertelement <16 x i8> %i.gc, i8 %i.fn, i64 1
  %i.ge = insertelement <16 x i8> %i.gd, i8 %i.fo, i64 2
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 3
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 4
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 5
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 6
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 7
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 8
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 9
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 10
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 11
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 12
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 13
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 14
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 15 ; 2 uses
  %i.gs = shl <16 x i8> %i.gr, splat (i8 6)
  %i.gt = getelementptr i8, ptr %i.an, i64 3
  %i.gu = getelementptr i8, ptr %i.ao, i64 7
  %i.gv = getelementptr i8, ptr %i.aq, i64 11
  %i.gw = getelementptr i8, ptr %i.as, i64 15
  %i.gx = getelementptr i8, ptr %i.au, i64 19
  %i.gy = getelementptr i8, ptr %i.aw, i64 23
  %i.gz = getelementptr i8, ptr %i.ay, i64 27
  %i.ha = getelementptr i8, ptr %i.ba, i64 31
  %i.hb = getelementptr i8, ptr %i.bc, i64 35
  %i.hc = getelementptr i8, ptr %i.be, i64 39
  %i.hd = getelementptr i8, ptr %i.bg, i64 43
  %i.he = getelementptr i8, ptr %i.bi, i64 47
end_hunk_0
