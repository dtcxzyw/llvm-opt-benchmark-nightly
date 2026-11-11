Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_rgbe?download=true
inline.NumInlined: 22
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rgbe_header_info = type { i32, [16 x i8], float, float, [8 x float] }

@RGBE_ReadHeader.default_primaries = internal unnamed_addr constant [8 x float] [float 6.400000e-01, float 3.300000e-01, float 2.900000e-01, float 6.000000e-01, float 1.500000e-01, float 6.000000e-02, float 3.330000e-01, float 3.330000e-01], align 16
@.str.4 = private unnamed_addr constant [54 x i8] c"no FORMAT specifier found or it's not 32-bit_rle_rgbe\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"-Y %d +X %d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"missing image size specifier\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"wrong scanline width\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"unable to allocate buffer space\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"bad scanline data\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"[rgbe_open] RGBE read error: %s\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"[rgbe_open] RGBE bad file format: %s\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"[rgbe_open] RGBE error: %s\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @RGBE_ReadHeader(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 45 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = icmp ne ptr %3, null                     ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20
  store <2 x float> splat (float 1.000000e+00), ptr %i.g, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.h, ptr noundef nonnull align 16 dereferenceable(32) @RGBE_ReadHeader.default_primaries, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef %0)
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__errno_location() #13
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = call ptr @strerror(i32 noundef %i.l) #12
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.m) #12
  br label %bb.bk

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.a, align 16, !tbaa !12
  %i.o = icmp eq i8 %i.n, 35
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 63
  %or.cond.not107 = select i1 %i.o, i1 %i.r, i1 false
  %or.cond9 = and i1 %i.e, %or.cond.not107
  br i1 %or.cond9, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %3, align 4, !tbaa !19
  %i.t = or i32 %i.s, 1
  store i32 %i.t, ptr %3, align 4, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.w = load i8, ptr %i.v, align 2, !tbaa !12    ; 3 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.ak, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call ptr @__ctype_b_loc() #13       ; 15 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = sext i8 %i.w to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !22
  %i.ad = and i16 %i.ac, 8192
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %bb.h, label %bb.ak

bb.h:                                             ; preds = %bb.g
  store i8 %i.w, ptr %i.u, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12  ; 3 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.ak, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ai = sext i8 %i.af to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !22
  %i.al = and i16 %i.ak, 8192
  %.not.1 = icmp eq i16 %i.al, 0
  br i1 %.not.1, label %bb.j, label %bb.ak

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.af, ptr %i.am, align 1, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !12  ; 3 uses
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.ak, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ar = sext i8 %i.ao to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !22
  %i.au = and i16 %i.at, 8192
  %.not.2 = icmp eq i16 %i.au, 0
  br i1 %.not.2, label %bb.l, label %bb.ak

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %i.ao, ptr %i.av, align 2, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12  ; 3 uses
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.ak, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ba = sext i8 %i.ax to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !22
  %i.bd = and i16 %i.bc, 8192
  %.not.3 = icmp eq i16 %i.bd, 0
  br i1 %.not.3, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %i.ax, ptr %i.be, align 1, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !12  ; 3 uses
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.ak, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.bj = sext i8 %i.bg to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !22
  %i.bm = and i16 %i.bl, 8192
  %.not.4 = icmp eq i16 %i.bm, 0
  br i1 %.not.4, label %bb.p, label %bb.ak

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.bg, ptr %i.bn, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !12  ; 3 uses
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.bs = sext i8 %i.bp to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !22
  %i.bv = and i16 %i.bu, 8192
  %.not.5 = icmp eq i16 %i.bv, 0
  br i1 %.not.5, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %i.bp, ptr %i.bw, align 1, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !12  ; 3 uses
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.cb = sext i8 %i.by to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !22
  %i.ce = and i16 %i.cd, 8192
  %.not.6 = icmp eq i16 %i.ce, 0
  br i1 %.not.6, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %i.by, ptr %i.cf, align 2, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !12  ; 3 uses
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ck = sext i8 %i.ch to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !22
  %i.cn = and i16 %i.cm, 8192
  %.not.7 = icmp eq i16 %i.cn, 0
  br i1 %.not.7, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 %i.ch, ptr %i.co, align 1, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !12  ; 3 uses
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ct = sext i8 %i.cq to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !22
  %i.cw = and i16 %i.cv, 8192
  %.not.8 = icmp eq i16 %i.cw, 0
  br i1 %.not.8, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.cq, ptr %i.cx, align 4, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !12  ; 3 uses
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.dc = sext i8 %i.cz to i64
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !22
  %i.df = and i16 %i.de, 8192
  %.not.9 = icmp eq i16 %i.df, 0
  br i1 %.not.9, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %i.cz, ptr %i.dg, align 1, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !12  ; 3 uses
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.dl = sext i8 %i.di to i64
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !22
  %i.do = and i16 %i.dn, 8192
  %.not.10 = icmp eq i16 %i.do, 0
  br i1 %.not.10, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.di, ptr %i.dp, align 2, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !12  ; 3 uses
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.du = sext i8 %i.dr to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !22
  %i.dx = and i16 %i.dw, 8192
  %.not.11 = icmp eq i16 %i.dx, 0
  br i1 %.not.11, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %i.dr, ptr %i.dy, align 1, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !12  ; 3 uses
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ed = sext i8 %i.ea to i64
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !22
  %i.eg = and i16 %i.ef, 8192
  %.not.12 = icmp eq i16 %i.eg, 0
  br i1 %.not.12, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.ea, ptr %i.eh, align 4, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !12  ; 3 uses
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.em = sext i8 %i.ej to i64
  %i.en = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !22
  %i.ep = and i16 %i.eo, 8192
  %.not.13 = icmp eq i16 %i.ep, 0
  br i1 %.not.13, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %i.ej, ptr %i.eq, align 1, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.es = load i8, ptr %i.er, align 16, !tbaa !12 ; 3 uses
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ev = sext i8 %i.es to i64
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !22
  %i.ey = and i16 %i.ex, 8192
  %.not.14 = icmp eq i16 %i.ey, 0
  br i1 %.not.14, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %i.es, ptr %i.ez, align 2, !tbaa !12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g
  %.092.lcssa = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ 15, %bb.aj ], [ 1, %bb.h ], [ 1, %bb.i ], [ 14, %bb.ai ], [ 2, %bb.j ], [ 2, %bb.k ], [ 14, %bb.ah ], [ 3, %bb.l ], [ 3, %bb.m ], [ 10, %bb.aa ], [ 4, %bb.n ], [ 4, %bb.o ], [ 13, %bb.ag ], [ 5, %bb.p ], [ 5, %bb.q ], [ 13, %bb.af ], [ 6, %bb.r ], [ 6, %bb.s ], [ 11, %bb.ac ], [ 7, %bb.t ], [ 7, %bb.u ], [ 12, %bb.ae ], [ 8, %bb.v ], [ 8, %bb.w ], [ 12, %bb.ad ], [ 9, %bb.x ], [ 9, %bb.y ], [ 11, %bb.ab ], [ 10, %bb.z ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.u, i64 %.092.lcssa
  store i8 0, ptr %i.fa, align 1, !tbaa !12
  %i.fb = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef %0)
  %.not108 = icmp eq ptr %i.fb, null
  br i1 %.not108, label %bb.al, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ak
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  br label %.critedge.split.preheader

bb.al:                                            ; preds = %bb.ak
  %i.ff = tail call ptr @__errno_location() #13
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !14
  %i.fh = call ptr @strerror(i32 noundef %i.fg) #12
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.fh) #12
  br label %bb.bk

.critedge:                                        ; preds = %bb.e
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  br i1 %i.e, label %.critedge.split.preheader, label %.critedge.split.us

.critedge.split.preheader:                        ; preds = %.critedge.thread, %.critedge
  %i.fl = phi ptr [ %i.fe, %.critedge.thread ], [ %i.fk, %.critedge ] ; 2 uses
  %i.fm = phi ptr [ %i.fd, %.critedge.thread ], [ %i.fj, %.critedge ] ; 2 uses
  %i.fn = phi ptr [ %i.fc, %.critedge.thread ], [ %i.fi, %.critedge ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  br label %.critedge.split

.critedge.split.us:                               ; preds = %.critedge, %.critedge127.us
  %.093.us = phi i32 [ %.mux.us, %.critedge127.us ], [ 0, %.critedge ] ; 3 uses
  %i.fr = load i8, ptr %i.a, align 16, !tbaa !12
  switch i8 %i.fr, label %.critedge127.us [
    i8 10, label %.split.us
    i8 0, label %.split.us
  ]

.critedge127.us:                                  ; preds = %.critedge.split.us
  %i.fs = load i128, ptr %i.a, align 16
  %i.ft = xor i128 %i.fs, 144150481438637697380701673535474650950
  %i.fu = getelementptr i8, ptr %i.a, i64 16
  %i.fv = load i64, ptr %i.fu, align 16
  %i.fw = zext i64 %i.fv to i128
  %i.fx = xor i128 %i.fw, 2926223083855717
  %i.fy = or i128 %i.ft, %i.fx
  %i.fz = icmp ne i128 %i.fy, 0
  %i.ga = zext i1 %i.fz to i32
  %.not141 = icmp eq i32 %i.ga, 0
  %.mux.us = select i1 %.not141, i32 1, i32 %.093.us
  %i.gb = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef %0)
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %.split140.us, label %.critedge.split.us

.critedge.split:                                  ; preds = %.critedge.split.preheader, %.critedge127
  %.093 = phi i32 [ %.194, %.critedge127 ], [ 0, %.critedge.split.preheader ] ; 9 uses
  %i.gd = load i8, ptr %i.a, align 16, !tbaa !12
  switch i8 %i.gd, label %bb.am [
    i8 10, label %.split.us
    i8 0, label %.split.us
  ]

bb.am:                                            ; preds = %.critedge.split
  %i.ge = load i128, ptr %i.a, align 16
  %i.gf = xor i128 %i.ge, 144150481438637697380701673535474650950
  %i.gg = getelementptr i8, ptr %i.a, i64 16
  %i.gh = load i64, ptr %i.gg, align 16
  %i.gi = zext i64 %i.gh to i128
  %i.gj = xor i128 %i.gi, 2926223083855717
  %i.gk = or i128 %i.gf, %i.gj
  %i.gl = icmp ne i128 %i.gk, 0
  %i.gm = zext i1 %i.gl to i32
  %.not142 = icmp eq i32 %i.gm, 0
  br i1 %.not142, label %.critedge127, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #14 ; 3 uses
  %i.go = icmp ugt i64 %i.gn, 5
  br i1 %i.go, label %bb.ao, label %.critedge127

bb.ao:                                            ; preds = %bb.an
  %i.gp = load i32, ptr %i.a, align 16
  %i.gq = xor i32 %i.gp, 1296908615
  %i.gr = getelementptr i8, ptr %i.a, i64 4
  %i.gs = load i16, ptr %i.gr, align 4
  %i.gt = zext i16 %i.gs to i32
  %i.gu = xor i32 %i.gt, 15681
  %i.gv = or i32 %i.gq, %i.gu
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i32
  %.not131 = icmp eq i32 %i.gx, 0
  br i1 %.not131, label %bb.ap, label %.critedge123

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.gy = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.b) #12
  %i.gz = load ptr, ptr %i.b, align 8, !tbaa !23
  %.not117 = icmp eq ptr %i.fl, %i.gz
  br i1 %.not117, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ha = fptrunc reassoc nsz arcp contract afn double %i.gy to float
  store float %i.ha, ptr %i.fq, align 4, !tbaa !24
  %i.hb = load i32, ptr %3, align 4, !tbaa !19
  %i.hc = or i32 %i.hb, 2
  store i32 %i.hc, ptr %3, align 4, !tbaa !19
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.critedge127

.critedge123:                                     ; preds = %bb.ao
  %i.hd = icmp ugt i64 %i.gn, 8
  br i1 %i.hd, label %bb.as, label %.critedge127

bb.as:                                            ; preds = %.critedge123
  %i.he = load i64, ptr %i.a, align 16
  %i.hf = xor i64 %i.he, 4995148753008613445
  %i.hg = getelementptr i8, ptr %i.a, i64 8
  %i.hh = load i8, ptr %i.hg, align 8
  %i.hi = zext i8 %i.hh to i64
  %i.hj = xor i64 %i.hi, 61
  %i.hk = or i64 %i.hf, %i.hj
  %i.hl = icmp ne i64 %i.hk, 0
  %i.hm = zext i1 %i.hl to i32
  %.not132 = icmp eq i32 %i.hm, 0
  br i1 %.not132, label %bb.at, label %.critedge125

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.hn = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.fm, ptr noundef nonnull %i.c) #12
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !23
  %.not116 = icmp eq ptr %i.fm, %i.ho
  br i1 %.not116, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = fptrunc reassoc nsz arcp contract afn double %i.hn to float
  store float %i.hp, ptr %i.fp, align 4, !tbaa !25
  %i.hq = load i32, ptr %3, align 4, !tbaa !19
  %i.hr = or i32 %i.hq, 4
  store i32 %i.hr, ptr %3, align 4, !tbaa !19
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.critedge127

.critedge125:                                     ; preds = %bb.as
  %.not133 = icmp eq i64 %i.gn, 9
  br i1 %.not133, label %.critedge127, label %bb.aw

bb.aw:                                            ; preds = %.critedge125
  %i.hs = load i64, ptr %i.a, align 16
  %i.ht = xor i64 %i.hs, 4992612102339908176
  %i.hu = getelementptr i8, ptr %i.a, i64 8
  %i.hv = load i16, ptr %i.hu, align 8
  %i.hw = zext i16 %i.hv to i64
  %i.hx = xor i64 %i.hw, 15699
  %i.hy = or i64 %i.ht, %i.hx
  %i.hz = icmp ne i64 %i.hy, 0
  %i.ia = zext i1 %i.hz to i32
  %.not134 = icmp eq i32 %i.ia, 0
  br i1 %.not134, label %bb.ax, label %.critedge127

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ib = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.fn, ptr noundef nonnull %i.d) #12
  %i.ic = fptrunc reassoc nsz arcp contract afn double %i.ib to float
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.ie = icmp eq ptr %i.fn, %i.id
  br i1 %i.ie, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.if = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.id, ptr noundef nonnull %i.d) #12
  %i.ig = fptrunc reassoc nsz arcp contract afn double %i.if to float
  %i.ih = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.ii = icmp eq ptr %i.id, %i.ih
  br i1 %i.ii, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ij = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.ih, ptr noundef nonnull %i.d) #12
  %i.ik = fptrunc reassoc nsz arcp contract afn double %i.ij to float
  %i.il = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.im = icmp eq ptr %i.ih, %i.il
  br i1 %i.im, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.in = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.il, ptr noundef nonnull %i.d) #12
  %i.io = fptrunc reassoc nsz arcp contract afn double %i.in to float
  %i.ip = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.iq = icmp eq ptr %i.il, %i.ip
  br i1 %i.iq, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ir = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.ip, ptr noundef nonnull %i.d) #12
  %i.is = fptrunc reassoc nsz arcp contract afn double %i.ir to float
  %i.it = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.iu = icmp eq ptr %i.ip, %i.it
  br i1 %i.iu, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iv = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.it, ptr noundef nonnull %i.d) #12
  %i.iw = fptrunc reassoc nsz arcp contract afn double %i.iv to float
  %i.ix = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.iy = icmp eq ptr %i.it, %i.ix
  br i1 %i.iy, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iz = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.ix, ptr noundef nonnull %i.d) #12
  %i.ja = fptrunc reassoc nsz arcp contract afn double %i.iz to float
  %i.jb = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.jc = icmp eq ptr %i.ix, %i.jb
  br i1 %i.jc, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jd = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef %i.jb, ptr noundef nonnull %i.d) #12
  %i.je = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.jf = icmp eq ptr %i.jb, %i.je
  br i1 %i.jf, label %.loopexit, label %.critedge129

.critedge129:                                     ; preds = %bb.be
  %i.jg = fptrunc reassoc nsz arcp contract afn double %i.jd to float
  store float %i.ic, ptr %i.fo, align 4
  store float %i.ig, ptr %.sroa.4.0..sroa_idx, align 4
  store float %i.ik, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.io, ptr %.sroa.6.0..sroa_idx, align 4
  store float %i.is, ptr %.sroa.7.0..sroa_idx, align 4
  store float %i.iw, ptr %.sroa.8.0..sroa_idx, align 4
  store float %i.ja, ptr %.sroa.9.0..sroa_idx, align 4
  store float %i.jg, ptr %.sroa.10.0..sroa_idx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %.critedge129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.critedge127

.critedge127:                                     ; preds = %bb.an, %.critedge123, %.critedge125, %bb.am, %bb.ar, %bb.aw, %.loopexit, %bb.av
  %.194 = phi i32 [ 1, %bb.am ], [ %.093, %bb.ar ], [ %.093, %bb.av ], [ %.093, %.loopexit ], [ %.093, %bb.aw ], [ %.093, %.critedge125 ], [ %.093, %.critedge123 ], [ %.093, %bb.an ]
  %i.jh = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef %0)
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %.split140.us, label %.critedge.split

.split140.us:                                     ; preds = %.critedge127.us, %.critedge127
  %i.jj = tail call ptr @__errno_location() #13
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !14
  %i.jl = call ptr @strerror(i32 noundef %i.jk) #12
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.jl) #12
  br label %bb.bk

.split.us:                                        ; preds = %.critedge.split.us, %.critedge.split.us, %.critedge.split, %.critedge.split
  %.us-phi = phi i32 [ %.093, %.critedge.split ], [ %.093, %.critedge.split ], [ %.093.us, %.critedge.split.us ], [ %.093.us, %.critedge.split.us ]
  %.not118 = icmp eq i32 %.us-phi, 0
  br i1 %.not118, label %bb.bf, label %.preheader

bb.bf:                                            ; preds = %.split.us
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4) #12
  br label %bb.bk

.preheader:                                       ; preds = %.split.us, %bb.bg
  %lhsv = load i16, ptr %i.a, align 16
  %.not120 = icmp eq i16 %lhsv, 10
  br i1 %.not120, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.preheader
  %i.jm = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef %0)
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.bh, label %.preheader

bb.bh:                                            ; preds = %bb.bg
  %i.jo = tail call ptr @__errno_location() #13
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !14
  %i.jq = call ptr @strerror(i32 noundef %i.jp) #12
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.jq) #12
  br label %bb.bk

bb.bi:                                            ; preds = %.preheader
  %i.jr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, ptr noundef %2, ptr noundef %1) #12
  %i.js = icmp slt i32 %i.jr, 2
  br i1 %i.js, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7) #12
  br label %bb.bk

bb.bk:                                            ; preds = %bb.al, %.split140.us, %bb.bf, %bb.bh, %bb.bj, %bb.bi, %bb.d
  %.2 = phi i32 [ -1, %bb.d ], [ -1, %bb.al ], [ -1, %bb.bh ], [ -1, %bb.bj ], [ -1, %.split140.us ], [ -1, %bb.bf ], [ 0, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare double @g_ascii_strtod(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @RGBE_ReadPixels(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %rgbe2float.exit
  %.in = phi i32 [ %2, %.lr.ph ], [ %i.e, %rgbe2float.exit ] ; 2 uses
  %.068 = phi ptr [ %1, %.lr.ph ], [ %i.y, %rgbe2float.exit ] ; 3 uses
  %i.e = add nsw i32 %.in, -1
  %i.f = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %0)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #13
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #12
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.j) #12
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.l = load i8, ptr %i.c, align 1, !tbaa !12    ; 2 uses
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %rgbe2float.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -136
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.ldexp.f32.i32(float 1.000000e+00, i32 %i.n) ; 2 uses
  %i.p = load <2 x i8>, ptr %i.a, align 2, !tbaa !12
  %i.q = uitofp <2 x i8> %i.p to <2 x float>
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.s, %i.q
  %i.u = load i8, ptr %i.d, align 2, !tbaa !12
  %i.v = uitofp i8 %i.u to float
  %i.w = fmul reassoc nsz arcp contract afn float %i.o, %i.v
  br label %rgbe2float.exit

rgbe2float.exit:                                  ; preds = %bb.d, %bb.e
  %.sink10 = phi float [ %i.w, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.x = phi <2 x float> [ %i.t, %bb.e ], [ zeroinitializer, %bb.d ]
  store float %.sink10, ptr %i.k, align 4, !tbaa !13
  store <2 x float> %i.x, ptr %.068, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.068, i64 12
  %i.z = icmp samesign ugt i32 %.in, 1
  br i1 %i.z, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %rgbe2float.exit, %bb.a, %bb.c
  %.07 = phi i32 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %rgbe2float.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.07
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @RGBE_ReadPixels_RLE(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [4 x i8], align 2                   ; 6 uses
  %5 = alloca [4 x i8], align 2                   ; 6 uses
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = add i32 %2, -32768
  %or.cond = icmp ult i32 %i.c, -32760
  br i1 %or.cond, label %bb.b, label %.preheader114

.preheader114:                                    ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph174, label %._crit_edge

.lr.ph174:                                        ; preds = %.preheader114
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  %i.h = shl nuw nsw i32 %2, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 8 uses
  %i.k = shl nuw nsw i32 %2, 1
  %i.l = mul nuw nsw i32 %2, 3
  %i.m = zext nneg i32 %2 to i64                  ; 6 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = zext nneg i32 %i.l to i64
  %.not263 = icmp eq i32 %2, 0
  %i.p = shl nuw nsw i64 %i.m, 1
  %i.q = mul nuw nsw i64 %i.m, 3
  %i.r = shl nuw nsw i64 %i.m, 2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %3, %2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %6 = icmp sgt i32 %i.s, 0
  br i1 %6, label %.lr.ph.i, label %RGBE_ReadPixels.exit

.lr.ph.i:                                         ; preds = %bb.b
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 3
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 2
  br label %9

9:                                                ; preds = %rgbe2float.exit.i, %.lr.ph.i
  %.in.i = phi i32 [ %i.s, %.lr.ph.i ], [ %10, %rgbe2float.exit.i ] ; 2 uses
  %.068.i = phi ptr [ %1, %.lr.ph.i ], [ %33, %rgbe2float.exit.i ] ; 3 uses
  %10 = add nsw i32 %.in.i, -1
  %11 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 4, i64 noundef 1, ptr noundef %0)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = tail call ptr @__errno_location() #13
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = tail call ptr @strerror(i32 noundef %15) #12
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %16) #12
  br label %RGBE_ReadPixels.exit

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %.068.i, i64 8
  %19 = load i8, ptr %7, align 1, !tbaa !12       ; 2 uses
  %.not.i.i = icmp eq i8 %19, 0
  br i1 %.not.i.i, label %rgbe2float.exit.i, label %20

20:                                               ; preds = %17
  %21 = zext i8 %19 to i32
  %22 = add nsw i32 %21, -136
  %23 = tail call reassoc nsz arcp contract afn float @llvm.ldexp.f32.i32(float 1.000000e+00, i32 %22) ; 2 uses
  %24 = load <2 x i8>, ptr %5, align 2, !tbaa !12
  %25 = uitofp <2 x i8> %24 to <2 x float>
  %26 = insertelement <2 x float> poison, float %23, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fmul reassoc nsz arcp contract afn <2 x float> %27, %25
  %29 = load i8, ptr %8, align 2, !tbaa !12
  %30 = uitofp i8 %29 to float
  %31 = fmul reassoc nsz arcp contract afn float %23, %30
  br label %rgbe2float.exit.i

rgbe2float.exit.i:                                ; preds = %20, %17
  %.sink10.i = phi float [ %31, %20 ], [ 0.000000e+00, %17 ]
  %32 = phi <2 x float> [ %28, %20 ], [ zeroinitializer, %17 ]
  store float %.sink10.i, ptr %18, align 4, !tbaa !13
  store <2 x float> %32, ptr %.068.i, align 4, !tbaa !13
  %33 = getelementptr inbounds nuw i8, ptr %.068.i, i64 12
  %34 = icmp samesign ugt i32 %.in.i, 1
  br i1 %34, label %9, label %RGBE_ReadPixels.exit

RGBE_ReadPixels.exit:                             ; preds = %rgbe2float.exit.i, %bb.b, %13
  %.07.i = phi i32 [ -1, %13 ], [ 0, %bb.b ], [ 0, %rgbe2float.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.critedge109

bb.c:                                             ; preds = %.lr.ph174, %.critedge._crit_edge
  %.086173 = phi ptr [ null, %.lr.ph174 ], [ %.187265, %.critedge._crit_edge ] ; 5 uses
  %.088172 = phi i32 [ %3, %.lr.ph174 ], [ %i.fy, %.critedge._crit_edge ] ; 3 uses
  %.093171 = phi ptr [ %1, %.lr.ph174 ], [ %i.gr, %.critedge._crit_edge ] ; 5 uses
  %i.t = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %0)
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %.086173) #12
  %i.v = tail call ptr @__errno_location() #13
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14
  %i.x = tail call ptr @strerror(i32 noundef %i.w) #12
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.x) #12
  br label %.critedge109

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr %i.a, align 1, !tbaa !12    ; 2 uses
  %i.z = icmp ne i8 %i.y, 2
  %i.aa = load i8, ptr %i.e, align 1
  %i.ab = icmp ne i8 %i.aa, 2
  %or.cond6 = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i8, ptr %i.f, align 1, !tbaa !12   ; 2 uses
  %.not = icmp sgt i8 %i.ac, -1
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.093171, i64 4
  %i.ae = load i8, ptr %i.g, align 1, !tbaa !12   ; 2 uses
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -136
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.ldexp.f32.i32(float 1.000000e+00, i32 %i.ag) ; 2 uses
  %i.ai = uitofp i8 %i.y to float
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ah, %i.ai
  store float %i.aj, ptr %.093171, align 4, !tbaa !13
  %i.ak = load <2 x i8>, ptr %i.e, align 1, !tbaa !12
  %i.al = uitofp <2 x i8> %i.ak to <2 x float>
  %i.am = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, %i.al
  br label %rgbe2float.exit

bb.i:                                             ; preds = %bb.g
  store float 0.000000e+00, ptr %.093171, align 4, !tbaa !13
  br label %rgbe2float.exit

rgbe2float.exit:                                  ; preds = %bb.h, %bb.i
  %i.ap = phi <2 x float> [ zeroinitializer, %bb.i ], [ %i.ao, %bb.h ]
  store <2 x float> %i.ap, ptr %i.ad, align 4, !tbaa !13
  tail call void @free(ptr noundef %.086173) #12
  %i.aq = mul nuw nsw i32 %.088172, %2            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %35 = icmp sgt i32 %i.aq, 1
  br i1 %35, label %.lr.ph.i111, label %RGBE_ReadPixels.exit119

.lr.ph.i111:                                      ; preds = %rgbe2float.exit
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %37 = getelementptr inbounds nuw i8, ptr %4, i64 2
  br label %38

38:                                               ; preds = %rgbe2float.exit.i115, %.lr.ph.i111
  %.in.i112.in = phi i32 [ %i.aq, %.lr.ph.i111 ], [ %.in.i112, %rgbe2float.exit.i115 ] ; 2 uses
  %.093.pn = phi ptr [ %.093171, %.lr.ph.i111 ], [ %.068.i113, %rgbe2float.exit.i115 ] ; 2 uses
  %.068.i113 = getelementptr inbounds nuw i8, ptr %.093.pn, i64 12 ; 2 uses
  %.in.i112 = add nsw i32 %.in.i112.in, -1
  %39 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %0)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = tail call ptr @__errno_location() #13
  %43 = load i32, ptr %42, align 4, !tbaa !14
  %44 = tail call ptr @strerror(i32 noundef %43) #12
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %44) #12
  br label %RGBE_ReadPixels.exit119

45:                                               ; preds = %38
  %46 = getelementptr inbounds nuw i8, ptr %.093.pn, i64 20
  %47 = load i8, ptr %36, align 1, !tbaa !12      ; 2 uses
  %.not.i.i114 = icmp eq i8 %47, 0
  br i1 %.not.i.i114, label %rgbe2float.exit.i115, label %48

48:                                               ; preds = %45
  %49 = zext i8 %47 to i32
  %50 = add nsw i32 %49, -136
  %51 = tail call reassoc nsz arcp contract afn float @llvm.ldexp.f32.i32(float 1.000000e+00, i32 %50) ; 2 uses
  %52 = load <2 x i8>, ptr %4, align 2, !tbaa !12
  %53 = uitofp <2 x i8> %52 to <2 x float>
  %54 = insertelement <2 x float> poison, float %51, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = fmul reassoc nsz arcp contract afn <2 x float> %55, %53
  %57 = load i8, ptr %37, align 2, !tbaa !12
  %58 = uitofp i8 %57 to float
  %59 = fmul reassoc nsz arcp contract afn float %51, %58
  br label %rgbe2float.exit.i115

rgbe2float.exit.i115:                             ; preds = %48, %45
  %.sink10.i116 = phi float [ %59, %48 ], [ 0.000000e+00, %45 ]
  %60 = phi <2 x float> [ %56, %48 ], [ zeroinitializer, %45 ]
  store float %.sink10.i116, ptr %46, align 4, !tbaa !13
  store <2 x float> %60, ptr %.068.i113, align 4, !tbaa !13
  %61 = icmp samesign ugt i32 %.in.i112.in, 2
  br i1 %61, label %38, label %RGBE_ReadPixels.exit119

RGBE_ReadPixels.exit119:                          ; preds = %rgbe2float.exit.i115, %rgbe2float.exit, %41
  %.07.i110 = phi i32 [ -1, %41 ], [ 0, %rgbe2float.exit ], [ 0, %rgbe2float.exit.i115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.critedge109

bb.j:                                             ; preds = %bb.f
  %i.ar = zext nneg i8 %i.ac to i32
  %i.as = shl nuw nsw i32 %i.ar, 8
  %i.at = load i8, ptr %i.g, align 1, !tbaa !12
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  %.not101 = icmp eq i32 %i.av, %2
  br i1 %.not101, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef %.086173) #12
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8) #12
  br label %.critedge109

bb.l:                                             ; preds = %bb.j
  %i.aw = icmp eq ptr %.086173, null
  br i1 %i.aw, label %bb.m, label %.preheader113.preheader

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.i) #15 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.n, label %.preheader113.preheader

.preheader113.preheader:                          ; preds = %bb.l, %bb.m
  %.187265 = phi ptr [ %i.ax, %bb.m ], [ %.086173, %bb.l ] ; 16 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.m ; 2 uses
  br i1 %.not263, label %.loopexit112, label %.lr.ph163

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9) #12
  br label %.critedge109

.loopexit112:                                     ; preds = %.loopexit, %.preheader113.preheader
  %.1.lcssa = phi ptr [ %.187265, %.preheader113.preheader ], [ %.3, %.loopexit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.p ; 3 uses
  %i.bb = icmp ult ptr %.1.lcssa, %i.ba
  br i1 %i.bb, label %.lr.ph163.1, label %.loopexit112.1

.lr.ph163.1:                                      ; preds = %.loopexit112
  %i.bc = ptrtoint ptr %i.ba to i64
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.1, %.lr.ph163.1
  %.1162.1 = phi ptr [ %.1.lcssa, %.lr.ph163.1 ], [ %.3.1, %.loopexit.1 ] ; 6 uses
  %i.bd = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.loopexit215, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = icmp ugt i8 %i.bf, -128
  %i.bi = ptrtoint ptr %.1162.1 to i64
  %i.bj = sub i64 %i.bc, %i.bi                    ; 2 uses
  br i1 %i.bh, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = icmp eq i8 %i.bf, 0
  %i.bl = zext i8 %i.bf to i64
  %i.bm = icmp slt i64 %i.bj, %i.bl
  %or.cond107.1 = or i1 %i.bk, %i.bm
  br i1 %or.cond107.1, label %.loopexit216, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = load i8, ptr %i.j, align 1, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %.1162.1, i64 1 ; 3 uses
  store i8 %i.bn, ptr %.1162.1, align 1, !tbaa !12
  %.not102.1 = icmp eq i8 %i.bf, 1
  br i1 %.not102.1, label %.loopexit.1, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = add nsw i32 %i.bg, -1
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = tail call i64 @fread(ptr noundef nonnull %i.bo, i64 noundef %i.bq, i64 noundef 1, ptr noundef %0)
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.loopexit217, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  br label %.loopexit.1

bb.u:                                             ; preds = %bb.p
  %i.bu = add nsw i32 %i.bg, -128                 ; 4 uses
  %i.bv = zext nneg i32 %i.bu to i64              ; 3 uses
  %i.bw = icmp slt i64 %i.bj, %i.bv
  br i1 %i.bw, label %.loopexit218, label %iter.check551

iter.check551:                                    ; preds = %bb.u
  %.pre247 = load i8, ptr %i.j, align 1, !tbaa !12 ; 2 uses
  %min.iters.check539 = icmp ult i32 %i.bu, 8
  br i1 %min.iters.check539, label %.lr.ph.1.preheader, label %vec.epilog.ph555

vec.epilog.ph555:                                 ; preds = %iter.check551
  %n.vec557 = and i64 %i.bv, 120                  ; 4 uses
  %i.bx = getelementptr i8, ptr %.1162.1, i64 %n.vec557 ; 2 uses
  %i.by = trunc nuw nsw i64 %n.vec557 to i32
  %i.bz = sub nsw i32 %i.bu, %i.by
  %broadcast.splatinsert558 = insertelement <8 x i8> poison, i8 %.pre247, i64 0
  %broadcast.splat559 = shufflevector <8 x i8> %broadcast.splatinsert558, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body560

vec.epilog.vector.body560:                        ; preds = %vec.epilog.vector.body560, %vec.epilog.ph555
  %index561 = phi i64 [ 0, %vec.epilog.ph555 ], [ %index.next563, %vec.epilog.vector.body560 ] ; 2 uses
  %next.gep562 = getelementptr i8, ptr %.1162.1, i64 %index561
  store <8 x i8> %broadcast.splat559, ptr %next.gep562, align 1, !tbaa !12
  %index.next563 = add nuw i64 %index561, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next563, %n.vec557
  br i1 %i.ca, label %vec.epilog.middle.block564, label %vec.epilog.vector.body560, !llvm.loop !26

vec.epilog.middle.block564:                       ; preds = %vec.epilog.vector.body560
  %cmp.n565 = icmp eq i64 %n.vec557, %i.bv
  br i1 %cmp.n565, label %.loopexit.1, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %iter.check551, %vec.epilog.middle.block564
  %.2161.1.ph = phi ptr [ %.1162.1, %iter.check551 ], [ %i.bx, %vec.epilog.middle.block564 ]
  %.085160.1.ph = phi i32 [ %i.bu, %iter.check551 ], [ %i.bz, %vec.epilog.middle.block564 ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader, %.lr.ph.1
  %.2161.1 = phi ptr [ %i.cc, %.lr.ph.1 ], [ %.2161.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %.085160.1 = phi i32 [ %i.cb, %.lr.ph.1 ], [ %.085160.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %i.cb = add nsw i32 %.085160.1, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %.2161.1, i64 1 ; 2 uses
  store i8 %.pre247, ptr %.2161.1, align 1, !tbaa !12
  %i.cd = icmp samesign ugt i32 %.085160.1, 1
  br i1 %i.cd, label %.lr.ph.1, label %.loopexit.1, !llvm.loop !27

.loopexit.1:                                      ; preds = %.lr.ph.1, %vec.epilog.middle.block564, %bb.t, %bb.r
  %.3.1 = phi ptr [ %i.bo, %bb.r ], [ %i.bt, %bb.t ], [ %i.bx, %vec.epilog.middle.block564 ], [ %i.cc, %.lr.ph.1 ] ; 3 uses
  %i.ce = icmp ult ptr %.3.1, %i.ba
  br i1 %i.ce, label %bb.o, label %.loopexit112.1

.loopexit112.1:                                   ; preds = %.loopexit.1, %.loopexit112
  %.1.lcssa.1 = phi ptr [ %.1.lcssa, %.loopexit112 ], [ %.3.1, %.loopexit.1 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.q ; 3 uses
  %i.cg = icmp ult ptr %.1.lcssa.1, %i.cf
  br i1 %i.cg, label %.lr.ph163.2, label %.loopexit112.2

.lr.ph163.2:                                      ; preds = %.loopexit112.1
  %i.ch = ptrtoint ptr %i.cf to i64
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.2, %.lr.ph163.2
  %.1162.2 = phi ptr [ %.1.lcssa.1, %.lr.ph163.2 ], [ %.3.2, %.loopexit.2 ] ; 6 uses
  %i.ci = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.loopexit215, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = icmp ugt i8 %i.ck, -128
  %i.cn = ptrtoint ptr %.1162.2 to i64
  %i.co = sub i64 %i.ch, %i.cn                    ; 2 uses
  br i1 %i.cm, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = icmp eq i8 %i.ck, 0
  %i.cq = zext i8 %i.ck to i64
  %i.cr = icmp slt i64 %i.co, %i.cq
  %or.cond107.2 = or i1 %i.cp, %i.cr
  br i1 %or.cond107.2, label %.loopexit216, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = load i8, ptr %i.j, align 1, !tbaa !12
  %i.ct = getelementptr inbounds nuw i8, ptr %.1162.2, i64 1 ; 3 uses
  store i8 %i.cs, ptr %.1162.2, align 1, !tbaa !12
  %.not102.2 = icmp eq i8 %i.ck, 1
  br i1 %.not102.2, label %.loopexit.2, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = add nsw i32 %i.cl, -1
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = tail call i64 @fread(ptr noundef nonnull %i.ct, i64 noundef %i.cv, i64 noundef 1, ptr noundef %0)
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.loopexit217, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cv
  br label %.loopexit.2

bb.ab:                                            ; preds = %bb.w
  %i.cz = add nsw i32 %i.cl, -128                 ; 4 uses
  %i.da = zext nneg i32 %i.cz to i64              ; 3 uses
  %i.db = icmp slt i64 %i.co, %i.da
  br i1 %i.db, label %.loopexit218, label %iter.check522

iter.check522:                                    ; preds = %bb.ab
  %.pre248 = load i8, ptr %i.j, align 1, !tbaa !12 ; 2 uses
  %min.iters.check510 = icmp ult i32 %i.cz, 8
  br i1 %min.iters.check510, label %.lr.ph.2.preheader, label %vec.epilog.ph526

vec.epilog.ph526:                                 ; preds = %iter.check522
  %n.vec528 = and i64 %i.da, 120                  ; 4 uses
  %i.dc = getelementptr i8, ptr %.1162.2, i64 %n.vec528 ; 2 uses
  %i.dd = trunc nuw nsw i64 %n.vec528 to i32
  %i.de = sub nsw i32 %i.cz, %i.dd
  %broadcast.splatinsert529 = insertelement <8 x i8> poison, i8 %.pre248, i64 0
  %broadcast.splat530 = shufflevector <8 x i8> %broadcast.splatinsert529, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body531

vec.epilog.vector.body531:                        ; preds = %vec.epilog.vector.body531, %vec.epilog.ph526
  %index532 = phi i64 [ 0, %vec.epilog.ph526 ], [ %index.next534, %vec.epilog.vector.body531 ] ; 2 uses
  %next.gep533 = getelementptr i8, ptr %.1162.2, i64 %index532
  store <8 x i8> %broadcast.splat530, ptr %next.gep533, align 1, !tbaa !12
  %index.next534 = add nuw i64 %index532, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next534, %n.vec528
  br i1 %i.df, label %vec.epilog.middle.block535, label %vec.epilog.vector.body531, !llvm.loop !28

vec.epilog.middle.block535:                       ; preds = %vec.epilog.vector.body531
  %cmp.n536 = icmp eq i64 %n.vec528, %i.da
  br i1 %cmp.n536, label %.loopexit.2, label %.lr.ph.2.preheader

.lr.ph.2.preheader:                               ; preds = %iter.check522, %vec.epilog.middle.block535
  %.2161.2.ph = phi ptr [ %.1162.2, %iter.check522 ], [ %i.dc, %vec.epilog.middle.block535 ]
  %.085160.2.ph = phi i32 [ %i.cz, %iter.check522 ], [ %i.de, %vec.epilog.middle.block535 ]
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2.preheader, %.lr.ph.2
  %.2161.2 = phi ptr [ %i.dh, %.lr.ph.2 ], [ %.2161.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %.085160.2 = phi i32 [ %i.dg, %.lr.ph.2 ], [ %.085160.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %i.dg = add nsw i32 %.085160.2, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %.2161.2, i64 1 ; 2 uses
  store i8 %.pre248, ptr %.2161.2, align 1, !tbaa !12
  %i.di = icmp samesign ugt i32 %.085160.2, 1
  br i1 %i.di, label %.lr.ph.2, label %.loopexit.2, !llvm.loop !29

.loopexit.2:                                      ; preds = %.lr.ph.2, %vec.epilog.middle.block535, %bb.aa, %bb.y
  %.3.2 = phi ptr [ %i.ct, %bb.y ], [ %i.cy, %bb.aa ], [ %i.dc, %vec.epilog.middle.block535 ], [ %i.dh, %.lr.ph.2 ] ; 3 uses
  %i.dj = icmp ult ptr %.3.2, %i.cf
  br i1 %i.dj, label %bb.v, label %.loopexit112.2

.loopexit112.2:                                   ; preds = %.loopexit.2, %.loopexit112.1
  %.1.lcssa.2 = phi ptr [ %.1.lcssa.1, %.loopexit112.1 ], [ %.3.2, %.loopexit.2 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.r ; 3 uses
  %i.dl = icmp ult ptr %.1.lcssa.2, %i.dk
  br i1 %i.dl, label %.lr.ph163.3, label %.lr.ph169.preheader

.lr.ph163.3:                                      ; preds = %.loopexit112.2
  %i.dm = ptrtoint ptr %i.dk to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.3, %.lr.ph163.3
  %.1162.3 = phi ptr [ %.1.lcssa.2, %.lr.ph163.3 ], [ %.3.3, %.loopexit.3 ] ; 6 uses
  %i.dn = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.loopexit215, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.dq = zext i8 %i.dp to i32                    ; 2 uses
  %i.dr = icmp ugt i8 %i.dp, -128
  %i.ds = ptrtoint ptr %.1162.3 to i64
  %i.dt = sub i64 %i.dm, %i.ds                    ; 2 uses
  br i1 %i.dr, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = icmp eq i8 %i.dp, 0
  %i.dv = zext i8 %i.dp to i64
  %i.dw = icmp slt i64 %i.dt, %i.dv
  %or.cond107.3 = or i1 %i.du, %i.dw
  br i1 %or.cond107.3, label %.loopexit216, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dx = load i8, ptr %i.j, align 1, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %.1162.3, i64 1 ; 3 uses
  store i8 %i.dx, ptr %.1162.3, align 1, !tbaa !12
  %.not102.3 = icmp eq i8 %i.dp, 1
  br i1 %.not102.3, label %.loopexit.3, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = add nsw i32 %i.dq, -1
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = tail call i64 @fread(ptr noundef nonnull %i.dy, i64 noundef %i.ea, i64 noundef 1, ptr noundef %0)
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.loopexit217, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  br label %.loopexit.3

bb.ai:                                            ; preds = %bb.ad
  %i.ee = add nsw i32 %i.dq, -128                 ; 4 uses
  %i.ef = zext nneg i32 %i.ee to i64              ; 3 uses
  %i.eg = icmp slt i64 %i.dt, %i.ef
  br i1 %i.eg, label %.loopexit218, label %iter.check

iter.check:                                       ; preds = %bb.ai
  %.pre249 = load i8, ptr %i.j, align 1, !tbaa !12 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ee, 8
  br i1 %min.iters.check, label %.lr.ph.3.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.vec502 = and i64 %i.ef, 120                  ; 4 uses
  %i.eh = getelementptr i8, ptr %.1162.3, i64 %n.vec502 ; 2 uses
  %i.ei = trunc nuw nsw i64 %n.vec502 to i32
  %i.ej = sub nsw i32 %i.ee, %i.ei
  %broadcast.splatinsert503 = insertelement <8 x i8> poison, i8 %.pre249, i64 0
  %broadcast.splat504 = shufflevector <8 x i8> %broadcast.splatinsert503, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index505 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next507, %vec.epilog.vector.body ] ; 2 uses
  %next.gep506 = getelementptr i8, ptr %.1162.3, i64 %index505
  store <8 x i8> %broadcast.splat504, ptr %next.gep506, align 1, !tbaa !12
  %index.next507 = add nuw i64 %index505, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.ek, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n508 = icmp eq i64 %n.vec502, %i.ef
  br i1 %cmp.n508, label %.loopexit.3, label %.lr.ph.3.preheader

.lr.ph.3.preheader:                               ; preds = %iter.check, %vec.epilog.middle.block
  %.2161.3.ph = phi ptr [ %.1162.3, %iter.check ], [ %i.eh, %vec.epilog.middle.block ]
  %.085160.3.ph = phi i32 [ %i.ee, %iter.check ], [ %i.ej, %vec.epilog.middle.block ]
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3.preheader, %.lr.ph.3
  %.2161.3 = phi ptr [ %i.em, %.lr.ph.3 ], [ %.2161.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %.085160.3 = phi i32 [ %i.el, %.lr.ph.3 ], [ %.085160.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %i.el = add nsw i32 %.085160.3, -1
  %i.em = getelementptr inbounds nuw i8, ptr %.2161.3, i64 1 ; 2 uses
  store i8 %.pre249, ptr %.2161.3, align 1, !tbaa !12
  %i.en = icmp samesign ugt i32 %.085160.3, 1
  br i1 %i.en, label %.lr.ph.3, label %.loopexit.3, !llvm.loop !31

.loopexit.3:                                      ; preds = %.lr.ph.3, %vec.epilog.middle.block, %bb.ah, %bb.af
  %.3.3 = phi ptr [ %i.dy, %bb.af ], [ %i.ed, %bb.ah ], [ %i.eh, %vec.epilog.middle.block ], [ %i.em, %.lr.ph.3 ] ; 2 uses
  %i.eo = icmp ult ptr %.3.3, %i.dk
  br i1 %i.eo, label %bb.ac, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %.loopexit.3, %.loopexit112.2
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.m
  %invariant.gep382 = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.n
  %invariant.gep384 = getelementptr inbounds nuw i8, ptr %.187265, i64 %i.o
  br label %.lr.ph169

.lr.ph163:                                        ; preds = %.preheader113.preheader
  %i.ep = ptrtoint ptr %i.az to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph163, %.loopexit
  %.1162 = phi ptr [ %.187265, %.lr.ph163 ], [ %.3, %.loopexit ] ; 6 uses
  %i.eq = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %.loopexit215, label %bb.ak

.loopexit215:                                     ; preds = %bb.aj, %bb.o, %bb.v, %bb.ac
  tail call void @free(ptr noundef nonnull %.187265) #12
  %i.es = tail call ptr @__errno_location() #13
  %i.et = load i32, ptr %i.es, align 4, !tbaa !14
  %i.eu = tail call ptr @strerror(i32 noundef %i.et) #12
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.eu) #12
  br label %.critedge109

bb.ak:                                            ; preds = %bb.aj
  %i.ev = load i8, ptr %i.b, align 1, !tbaa !12   ; 5 uses
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = icmp ugt i8 %i.ev, -128
  %i.ey = ptrtoint ptr %.1162 to i64
  %i.ez = sub i64 %i.ep, %i.ey                    ; 2 uses
  br i1 %i.ex, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = add nsw i32 %i.ew, -128                 ; 4 uses
  %i.fb = zext nneg i32 %i.fa to i64              ; 3 uses
  %i.fc = icmp slt i64 %i.ez, %i.fb
  br i1 %i.fc, label %.loopexit218, label %iter.check580

iter.check580:                                    ; preds = %bb.al
  %.pre = load i8, ptr %i.j, align 1, !tbaa !12   ; 2 uses
  %min.iters.check568 = icmp ult i32 %i.fa, 8
  br i1 %min.iters.check568, label %.lr.ph.preheader, label %vec.epilog.ph584

vec.epilog.ph584:                                 ; preds = %iter.check580
  %n.vec586 = and i64 %i.fb, 120                  ; 4 uses
  %i.fd = getelementptr i8, ptr %.1162, i64 %n.vec586 ; 2 uses
  %i.fe = trunc nuw nsw i64 %n.vec586 to i32
  %i.ff = sub nsw i32 %i.fa, %i.fe
  %broadcast.splatinsert587 = insertelement <8 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat588 = shufflevector <8 x i8> %broadcast.splatinsert587, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body589

vec.epilog.vector.body589:                        ; preds = %vec.epilog.vector.body589, %vec.epilog.ph584
  %index590 = phi i64 [ 0, %vec.epilog.ph584 ], [ %index.next592, %vec.epilog.vector.body589 ] ; 2 uses
  %next.gep591 = getelementptr i8, ptr %.1162, i64 %index590
  store <8 x i8> %broadcast.splat588, ptr %next.gep591, align 1, !tbaa !12
  %index.next592 = add nuw i64 %index590, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next592, %n.vec586
  br i1 %i.fg, label %vec.epilog.middle.block593, label %vec.epilog.vector.body589, !llvm.loop !32

vec.epilog.middle.block593:                       ; preds = %vec.epilog.vector.body589
  %cmp.n594 = icmp eq i64 %n.vec586, %i.fb
  br i1 %cmp.n594, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check580, %vec.epilog.middle.block593
  %.2161.ph = phi ptr [ %.1162, %iter.check580 ], [ %i.fd, %vec.epilog.middle.block593 ]
  %.085160.ph = phi i32 [ %i.fa, %iter.check580 ], [ %i.ff, %vec.epilog.middle.block593 ]
  br label %.lr.ph

.loopexit218:                                     ; preds = %bb.al, %bb.u, %bb.ab, %bb.ai
  tail call void @free(ptr noundef nonnull %.187265) #12
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #12
  br label %.critedge109

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.2161 = phi ptr [ %i.fi, %.lr.ph ], [ %.2161.ph, %.lr.ph.preheader ] ; 2 uses
  %.085160 = phi i32 [ %i.fh, %.lr.ph ], [ %.085160.ph, %.lr.ph.preheader ] ; 2 uses
  %i.fh = add nsw i32 %.085160, -1
  %i.fi = getelementptr inbounds nuw i8, ptr %.2161, i64 1 ; 2 uses
  store i8 %.pre, ptr %.2161, align 1, !tbaa !12
  %i.fj = icmp samesign ugt i32 %.085160, 1
  br i1 %i.fj, label %.lr.ph, label %.loopexit, !llvm.loop !33

bb.am:                                            ; preds = %bb.ak
  %i.fk = icmp eq i8 %i.ev, 0
  %i.fl = zext i8 %i.ev to i64
  %i.fm = icmp slt i64 %i.ez, %i.fl
  %or.cond107 = or i1 %i.fk, %i.fm
  br i1 %or.cond107, label %.loopexit216, label %bb.an

.loopexit216:                                     ; preds = %bb.am, %bb.q, %bb.x, %bb.ae
  tail call void @free(ptr noundef nonnull %.187265) #12
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #12
  br label %.critedge109

bb.an:                                            ; preds = %bb.am
  %i.fn = load i8, ptr %i.j, align 1, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %.1162, i64 1 ; 3 uses
  store i8 %i.fn, ptr %.1162, align 1, !tbaa !12
  %.not102 = icmp eq i8 %i.ev, 1
  br i1 %.not102, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = add nsw i32 %i.ew, -1
  %i.fq = zext nneg i32 %i.fp to i64              ; 2 uses
  %i.fr = tail call i64 @fread(ptr noundef nonnull %i.fo, i64 noundef %i.fq, i64 noundef 1, ptr noundef %0)
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %.loopexit217, label %bb.ap

.loopexit217:                                     ; preds = %bb.ao, %bb.s, %bb.z, %bb.ag
  tail call void @free(ptr noundef nonnull %.187265) #12
  %i.ft = tail call ptr @__errno_location() #13
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !14
  %i.fv = tail call ptr @strerror(i32 noundef %i.fu) #12
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %i.fv) #12
  br label %.critedge109

bb.ap:                                            ; preds = %bb.ao
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %vec.epilog.middle.block593, %bb.an, %bb.ap
  %.3 = phi ptr [ %i.fo, %bb.an ], [ %i.fw, %bb.ap ], [ %i.fd, %vec.epilog.middle.block593 ], [ %i.fi, %.lr.ph ] ; 3 uses
  %i.fx = icmp ult ptr %.3, %i.az
  br i1 %i.fx, label %bb.aj, label %.loopexit112

.critedge._crit_edge:                             ; preds = %rgbe2float.exit111
  %i.fy = add nsw i32 %.088172, -1
  %i.fz = icmp sgt i32 %.088172, 1
  br i1 %i.fz, label %bb.c, label %._crit_edge

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %rgbe2float.exit111
  %indvars.iv = phi i64 [ 0, %.lr.ph169.preheader ], [ %indvars.iv.next, %rgbe2float.exit111 ] ; 5 uses
  %.194167 = phi ptr [ %.093171, %.lr.ph169.preheader ], [ %i.gr, %rgbe2float.exit111 ] ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.187265, i64 %indvars.iv
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !12  ; 2 uses
  store i8 %i.gb, ptr %i.a, align 1, !tbaa !12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.gc = load i8, ptr %gep, align 1, !tbaa !12
  store i8 %i.gc, ptr %i.e, align 1, !tbaa !12
  %gep383 = getelementptr inbounds nuw i8, ptr %invariant.gep382, i64 %indvars.iv
  %i.gd = load i8, ptr %gep383, align 1, !tbaa !12
  store i8 %i.gd, ptr %i.f, align 1, !tbaa !12
  %gep385 = getelementptr inbounds nuw i8, ptr %invariant.gep384, i64 %indvars.iv
  %i.ge = load i8, ptr %gep385, align 1, !tbaa !12 ; 3 uses
  store i8 %i.ge, ptr %i.g, align 1, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %.194167, i64 4
  %.not.i110 = icmp eq i8 %i.ge, 0
  br i1 %.not.i110, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph169
  %i.gg = zext i8 %i.ge to i32
  %i.gh = add nsw i32 %i.gg, -136
  %i.gi = tail call reassoc nsz arcp contract afn float @llvm.ldexp.f32.i32(float 1.000000e+00, i32 %i.gh) ; 2 uses
  %i.gj = uitofp i8 %i.gb to float
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gi, %i.gj
  store float %i.gk, ptr %.194167, align 4, !tbaa !13
  %i.gl = load <2 x i8>, ptr %i.e, align 1, !tbaa !12
  %i.gm = uitofp <2 x i8> %i.gl to <2 x float>
  %i.gn = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.go, %i.gm
  br label %rgbe2float.exit111

bb.ar:                                            ; preds = %.lr.ph169
  store float 0.000000e+00, ptr %.194167, align 4, !tbaa !13
  br label %rgbe2float.exit111

rgbe2float.exit111:                               ; preds = %bb.aq, %bb.ar
  %i.gq = phi <2 x float> [ zeroinitializer, %bb.ar ], [ %i.gp, %bb.aq ]
  store <2 x float> %i.gq, ptr %i.gf, align 4, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.194167, i64 12 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %.critedge._crit_edge, label %.lr.ph169

._crit_edge:                                      ; preds = %.critedge._crit_edge, %.preheader114
  %.086.lcssa = phi ptr [ null, %.preheader114 ], [ %.187265, %.critedge._crit_edge ]
  tail call void @free(ptr noundef %.086.lcssa) #12
  br label %.critedge109

.critedge109:                                     ; preds = %.loopexit215, %.loopexit218, %.loopexit216, %.loopexit217, %._crit_edge, %bb.n, %bb.k, %RGBE_ReadPixels.exit119, %bb.d, %RGBE_ReadPixels.exit
  %.292 = phi i32 [ %.07.i, %RGBE_ReadPixels.exit ], [ -1, %bb.d ], [ %.07.i110, %RGBE_ReadPixels.exit119 ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %.loopexit215 ], [ 0, %._crit_edge ], [ -1, %.loopexit217 ], [ -1, %.loopexit216 ], [ -1, %.loopexit218 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.292
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 9) i32 @dt_imageio_open_rgbe(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.rgbe_header_info, align 4   ; 11 uses
  %i.a = alloca [3 x [3 x float]], align 16       ; 5 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.11) ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 3 uses
  %i.e = call i32 @RGBE_ReadHeader(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %3)
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 4, !tbaa !49
  %i.h = sext i32 %i.g to i64
  %i.i = load i32, ptr %i.d, align 8, !tbaa !50
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, %i.h                   ; 6 uses
  %i.l = mul i64 %i.k, 12
  %i.m = call ptr @dt_alloc_aligned(i64 noundef %i.l) #12 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %.not59 = icmp eq ptr %i.m, null
  br i1 %.not59, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.c, align 4, !tbaa !49
  %i.p = load i32, ptr %i.d, align 8, !tbaa !50
  %i.q = call i32 @RGBE_ReadPixels_RLE(ptr noundef nonnull %i.b, ptr noundef nonnull %i.m, i32 noundef %i.o, i32 noundef %i.p)
  %.not60 = icmp eq i32 %i.q, 0
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.m) #12
  %i.r = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.s = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1488
  store i32 4, ptr %i.t, align 16, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store i32 1, ptr %i.u, align 4, !tbaa !52
  %i.v = call ptr @dt_mipmap_cache_alloc(ptr noundef %2, ptr noundef nonnull %0) #12 ; 4 uses
  %.not61 = icmp eq ptr %i.v, null
  br i1 %.not61, label %bb.i, label %.preheader77

.preheader77:                                     ; preds = %bb.h
  %.not82 = icmp eq i64 %i.k, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader77
  %xtraiter = and i64 %i.k, 1
  %i.w = icmp eq i64 %i.k, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.k, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.05379.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.du, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod93)
  %.idx62.epil = mul i64 %.05379.epil.init, 12
  %i.x = getelementptr i8, ptr %i.m, i64 %.idx62.epil ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !13
  %i.z = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.y, float 1.000000e+04)
  %i.aa = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.z, float 0.000000e+00)
  %.sroa.087.0.vec.insert.epil = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aa, i64 0
  %i.ab = getelementptr i8, ptr %i.x, i64 4
  %i.ac = load <2 x float>, ptr %i.ab, align 4, !tbaa !13
  %i.ad = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ac, <2 x float> splat (float 1.000000e+04))
  %i.ae = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ad, <2 x float> zeroinitializer)
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.087.8.vec.insert92.epil = shufflevector <4 x float> %.sroa.087.0.vec.insert.epil, <4 x float> %i.af, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %.idx.epil = shl i64 %.05379.epil.init, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.epil
  store <4 x float> %.sroa.087.8.vec.insert92.epil, ptr %i.ag, align 16, !tbaa !12, !alias.scope !53, !nontemporal !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader77
  call void @free(ptr noundef nonnull %i.m) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.val = load float, ptr %i.ah, align 4, !tbaa !13 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val69 = load float, ptr %i.ao, align 4, !tbaa !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %.val64 = load float, ptr %i.ai, align 4, !tbaa !13
  %i.ap = load <2 x float>, ptr %i.al, align 4, !tbaa !13 ; 3 uses
  %i.aq = load <4 x float>, ptr %i.am, align 4, !tbaa !13 ; 5 uses
  %.val68 = load float, ptr %i.ak, align 4, !tbaa !13 ; 2 uses
  %.val67 = load float, ptr %i.an, align 4, !tbaa !13
  %.val66 = load float, ptr %i.aj, align 4, !tbaa !13 ; 2 uses
  %i.ar = fdiv reassoc nsz arcp contract afn float %.val68, %.val69 ; 2 uses
  %i.as = fadd reassoc nsz arcp contract afn float %.val68, %.val69
  %i.at = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.as
  %i.au = fdiv reassoc nsz arcp contract afn float %i.at, %.val69
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.ar
  %i.aw = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.aq, <3 x i32> <i32 0, i32 4, i32 6>
  %i.ay = shufflevector <4 x float> %i.aq, <4 x float> %i.aw, <3 x i32> <i32 2, i32 4, i32 0> ; 4 uses
  %i.az = fsub reassoc nsz arcp contract afn <3 x float> %i.ax, %i.ay ; 4 uses
  %i.ba = extractelement <3 x float> %i.az, i64 2
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %.val
  %i.bc = extractelement <3 x float> %i.az, i64 1
  %i.bd = fmul reassoc nsz arcp contract afn float %.val66, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn float %i.bb, %i.bd
  %i.bf = extractelement <3 x float> %i.az, i64 0
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %.val64
  %i.bh = fadd reassoc nsz arcp contract afn float %i.be, %i.bg
  %i.bi = fadd reassoc nsz arcp contract afn <3 x float> %i.ay, splat (float -1.000000e+00)
  %i.bj = insertelement <3 x float> poison, float %i.av, i64 0
  %i.bk = shufflevector <3 x float> %i.bj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <3 x float> %i.bk, %i.ay
  %i.bm = fadd reassoc nsz arcp contract afn <3 x float> %i.bi, %i.bl ; 2 uses
  %i.bn = insertelement <3 x float> poison, float %i.ar, i64 0
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bp = fmul reassoc nsz arcp contract afn <3 x float> %i.bo, %i.az
  %i.bq = insertelement <3 x float> poison, float %.val, i64 0
  %i.br = shufflevector <2 x float> %i.ap, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.bs = shufflevector <3 x float> %i.bq, <3 x float> %i.br, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison> ; 3 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.aq, <3 x i32> <i32 0, i32 1, i32 5> ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn <3 x float> %i.bm, %i.bt
  %i.bv = fadd reassoc nsz arcp contract afn <3 x float> %i.bu, %i.bp
  %i.bw = shufflevector <4 x float> %i.bs, <4 x float> %i.aq, <3 x i32> <i32 5, i32 0, i32 1>
  %i.bx = shufflevector <3 x float> %i.bm, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.by = fmul reassoc nsz arcp contract afn <3 x float> %i.bw, %i.bx
  %i.bz = fsub reassoc nsz arcp contract afn <3 x float> %i.bv, %i.by
  %i.ca = insertelement <3 x float> poison, float %i.bh, i64 0
  %i.cb = shufflevector <3 x float> %i.ca, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cc = fdiv reassoc nsz arcp contract afn <3 x float> %i.bz, %i.cb ; 2 uses
  %i.cd = shufflevector <3 x float> %i.cc, <3 x float> poison, <8 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0>
  %i.ce = shufflevector <4 x float> %i.bs, <4 x float> %i.aq, <2 x i32> <i32 0, i32 4>
  %i.cf = fadd reassoc nsz arcp contract afn <2 x float> %i.ap, %i.ce
  %i.cg = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.cf
  %i.ch = shufflevector <3 x float> %i.bt, <3 x float> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 3, i32 poison, i32 poison>
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cj = shufflevector <8 x float> %i.ch, <8 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %i.cd, %i.cj
  %i.cl = fadd reassoc nsz arcp contract afn float %.val66, %.val67
  %i.cm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cl
  %i.cn = extractelement <3 x float> %i.cc, i64 1
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cm
  store <8 x float> %i.ck, ptr %i.a, align 16, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %i.co, ptr %i.cp, align 16, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.cr = call i32 @mat3inv(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 2, ptr %i.cs, align 16, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i32 0, ptr %i.ct, align 8, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !57
  %i.cw = and i32 %i.cv, -131297
  %i.cx = or disjoint i32 %i.cw, 128
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 6, ptr %i.cy, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.05379 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.du, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.idx62 = mul i64 %.05379, 12
  %i.cz = getelementptr i8, ptr %i.m, i64 %.idx62 ; 2 uses
  %i.da = load float, ptr %i.cz, align 8, !tbaa !13
  %i.db = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.da, float 1.000000e+04)
  %i.dc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.db, float 0.000000e+00)
  %.sroa.087.0.vec.insert = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dc, i64 0
  %i.dd = getelementptr i8, ptr %i.cz, i64 4
  %i.de = load <2 x float>, ptr %i.dd, align 4, !tbaa !13
  %i.df = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.de, <2 x float> splat (float 1.000000e+04))
  %i.dg = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer)
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.087.8.vec.insert92 = shufflevector <4 x float> %.sroa.087.0.vec.insert, <4 x float> %i.dh, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %.idx = shl i64 %.05379, 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  store <4 x float> %.sroa.087.8.vec.insert92, ptr %i.di, align 16, !tbaa !12, !alias.scope !53, !nontemporal !54
  %i.dj = or disjoint i64 %.05379, 1              ; 2 uses
  %.idx62.1 = mul i64 %i.dj, 12
  %i.dk = getelementptr i8, ptr %i.m, i64 %.idx62.1 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !13
  %i.dm = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dl, float 1.000000e+04)
  %i.dn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dm, float 0.000000e+00)
  %.sroa.087.0.vec.insert.1 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dn, i64 0
  %i.do = getelementptr i8, ptr %i.dk, i64 4
  %i.dp = load <2 x float>, ptr %i.do, align 8, !tbaa !13
  %i.dq = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dp, <2 x float> splat (float 1.000000e+04))
  %i.dr = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dq, <2 x float> zeroinitializer)
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.087.8.vec.insert92.1 = shufflevector <4 x float> %.sroa.087.0.vec.insert.1, <4 x float> %i.ds, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %.idx.1 = shl i64 %i.dj, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.1
  store <4 x float> %.sroa.087.8.vec.insert92.1, ptr %i.dt, align 16, !tbaa !12, !alias.scope !53, !nontemporal !54
  %i.du = add nuw i64 %.05379, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %._crit_edge, %bb.c
  %.2 = phi i32 [ 2, %bb.c ], [ 6, %bb.g ], [ 2, %bb.e ], [ 0, %._crit_edge ], [ 8, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.3 = phi i32 [ %.2, %bb.i ], [ 1, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @dt_mipmap_cache_alloc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

declare i32 @mat3inv(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!11, !11, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!"", !8, i64 0, !7, i64 4, !11, i64 20, !11, i64 24, !7, i64 28}
!19 = !{!18, !8, i64 0}
!20 = !{!"p1 short", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!16, !16, i64 0}
!23 = !{!17, !17, i64 0}
!24 = !{!18, !11, i64 20}
!25 = !{!18, !11, i64 24}
!26 = distinct !{!26, !34, !35}
!27 = distinct !{!27, !35, !34}
!28 = distinct !{!28, !34, !35}
!29 = distinct !{!29, !35, !34}
!30 = distinct !{!30, !34, !35}
!31 = distinct !{!31, !35, !34}
!32 = distinct !{!32, !34, !35}
!33 = distinct !{!33, !35, !34}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, i1 true, !"copy_pixel_nontemporal"}
!37 = distinct !{!37, !36, !"copy_pixel_nontemporal: argument 0"}
!38 = !{!"long", !7, i64 0}
!39 = !{!"", !16, i64 0, !16, i64 2}
!40 = !{!"", !8, i64 0, !7, i64 16}
!41 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !39, i64 48, !40, i64 64, !7, i64 96, !8, i64 112}
!42 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!43 = !{!"double", !7, i64 0}
!44 = !{!"dt_image_geoloc_t", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!46 = !{!"p1 _ZTS6_GList", !15, i64 0}
!47 = !{!"p1 _ZTS16dt_cache_entry_t", !15, i64 0}
!48 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !38, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !8, i64 1480, !41, i64 1488, !7, i64 1616, !17, i64 1656, !8, i64 1664, !8, i64 1668, !42, i64 1672, !44, i64 1680, !45, i64 1704, !16, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !46, i64 1856, !47, i64 1864, !8, i64 1872, !8, i64 1876}
!49 = !{!48, !8, i64 1380}
!50 = !{!48, !8, i64 1384}
!51 = !{!48, !8, i64 1488}
!52 = !{!48, !8, i64 1492}
!53 = !{!37}
!54 = !{i32 1}
!55 = !{!48, !8, i64 1600}
!56 = !{!48, !8, i64 1496}
!57 = !{!48, !8, i64 1428}
!58 = !{!48, !8, i64 1480}
end_hunk_0
