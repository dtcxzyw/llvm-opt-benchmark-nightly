Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/parse_iso_intervals?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Empty string\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unexpected character\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Missing expected time part\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Undefined period specifier\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @timelib_strtointerval(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 37 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 3 uses
  %i.d = tail call noalias ptr @_emalloc_24() #9  ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 16 uses
  %.not = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br i1 %.not, label %.loopexit208, label %.preheader209

.preheader209:                                    ; preds = %bb.a
  %i.f = tail call ptr @__ctype_b_loc() #10
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader209
  %.099 = phi ptr [ %i.p, %bb.b ], [ %0, %.preheader209 ] ; 5 uses
  %i.h = load i8, ptr %.099, align 1, !tbaa !15
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !26
  %i.l = and i16 %i.k, 8192
  %i.m = icmp ne i16 %i.l, 0
  %i.n = icmp ult ptr %.099, %i.c
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %.099, i64 1
  br i1 %i.o, label %bb.b, label %.preheader, !llvm.loop !19

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0 = phi ptr [ %i.y, %.preheader ], [ %i.c, %bb.b ] ; 4 uses
  %i.q = load i8, ptr %.0, align 1, !tbaa !15
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !26
  %i.u = and i16 %i.t, 8192
  %i.v = icmp ne i16 %i.u, 0
  %i.w = icmp ugt ptr %.0, %.099
  %i.x = and i1 %i.w, %i.v
  %i.y = getelementptr inbounds i8, ptr %.0, i64 -1
  br i1 %i.x, label %.preheader, label %.loopexit208, !llvm.loop !20

.loopexit208:                                     ; preds = %.preheader, %bb.a
  %.1100 = phi ptr [ %0, %bb.a ], [ %.099, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.c, %bb.a ], [ %.0, %.preheader ] ; 2 uses
  %i.z = ptrtoint ptr %.1 to i64
  %i.aa = ptrtoint ptr %.1100 to i64              ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %add_error.exit, label %bb.e

add_error.exit:                                   ; preds = %.loopexit208
  store i32 1, ptr %i.e, align 8, !tbaa !29
  %i.ad = tail call dereferenceable_or_null(24) ptr @_erealloc(ptr noundef null, i64 noundef 24) #11 ; 2 uses
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !30
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !29
  %i.af = add i32 %i.ae, -1
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [24 x i8], ptr %i.ad, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 0, ptr %i.ai, align 4, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 0, ptr %i.aj, align 8, !tbaa !33
  %i.ak = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str) #9
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.am = load i32, ptr %i.e, align 8, !tbaa !29
  %i.an = add i32 %i.am, -1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [24 x i8], ptr %i.al, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !34
  %.not110 = icmp eq ptr %6, null
  br i1 %.not110, label %bb.d, label %bb.c

bb.c:                                             ; preds = %add_error.exit
  store ptr %i.d, ptr %6, align 8, !tbaa !36
  br label %bb.gg

bb.d:                                             ; preds = %add_error.exit
  tail call void @timelib_error_container_dtor(ptr noundef nonnull %i.d) #9
  br label %bb.gg

bb.e:                                             ; preds = %.loopexit208
  %i.ar = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.aa                    ; 4 uses
  %i.au = add i64 %i.at, 20                       ; 2 uses
  %i.av = tail call noalias ptr @_emalloc(i64 noundef %i.au) #12 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.au, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.1100, i64 %i.at, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20 ; 5 uses
  %i.ay = tail call ptr @timelib_time_ctor() #9   ; 11 uses
  store <4 x i64> splat (i64 -9999999), ptr %i.ay, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i64 -9999999, ptr %i.az, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i64 -9999999, ptr %i.ba, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store i64 0, ptr %i.bb, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store i32 0, ptr %i.bc, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store i32 0, ptr %i.bd, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 228
  store i32 0, ptr %i.be, align 4, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  store i32 1, ptr %i.bf, align 8, !tbaa !49
  %i.bg = tail call ptr @timelib_time_ctor() #9   ; 11 uses
  store <4 x i64> splat (i64 -9999999), ptr %i.bg, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i64 -9999999, ptr %i.bh, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 -9999999, ptr %i.bi, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i64 0, ptr %i.bj, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i32 0, ptr %i.bk, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store i32 0, ptr %i.bl, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 228
  store i32 0, ptr %i.bm, align 4, !tbaa !48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 232
  store i32 1, ptr %i.bn, align 8, !tbaa !49
  %i.bo = tail call ptr @timelib_rel_time_ctor() #9 ; 14 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 0, ptr %i.bu, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 60
  store i32 0, ptr %i.bv, align 4, !tbaa !51
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i32 0, ptr %i.bw, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i8 0, i64 48, i1 false)
  store i64 -9999999, ptr %i.bx, align 8, !tbaa !53
  %i.by = ptrtoint ptr %i.ax to i64               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.bz = icmp slt i64 %i.at, 0
  br i1 %i.bz, label %.loopexit, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.e
  %i.ca = ptrtoint ptr %i.av to i64               ; 3 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %scan.exit
  %i.cb = phi i64 [ %i.ca, %.lr.ph.i.preheader.lr.ph ], [ %.pre-phi, %scan.exit ]
  %.sroa.113.0350 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.109.2, %scan.exit ] ; 20 uses
  %.sroa.111.0348 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.107.2, %scan.exit ] ; 20 uses
  %.sroa.109.0342 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.105.1, %scan.exit ] ; 4 uses
  %.sroa.107.0340 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.103.1, %scan.exit ] ; 19 uses
  %.sroa.103.0339 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.99.1, %scan.exit ] ; 19 uses
  %.sroa.100.0337 = phi i32 [ 1, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.96.1, %scan.exit ] ; 19 uses
  %.sroa.21.0335 = phi ptr [ %i.av, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.21.1, %scan.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.fs
  %.sroa.33.0 = phi ptr [ %.28.i, %bb.fs ], [ %.sroa.21.0335, %.lr.ph.i.preheader ] ; 72 uses
  %i.cc = phi i64 [ %i.ui, %bb.fs ], [ %i.cb, %.lr.ph.i.preheader ] ; 3 uses
  %i.cd = load i8, ptr %.sroa.33.0, align 1, !tbaa !15 ; 11 uses
  %i.ce = icmp ult i8 %i.cd, 45
  br i1 %i.ce, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph.i
  %i.cf = icmp samesign ult i8 %i.cd, 11
  br i1 %i.cf, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cg = icmp eq i8 %i.cd, 0
  br i1 %i.cg, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = icmp samesign ult i8 %i.cd, 9
  br i1 %i.ch, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not569.i = icmp eq i8 %i.cd, 10
  br i1 %.not569.i, label %bb.p, label %bb.r

bb.j:                                             ; preds = %bb.f
  switch i8 %i.cd, label %bb.q [
    i8 44, label %bb.r
    i8 32, label %bb.r
  ]

bb.k:                                             ; preds = %.lr.ph.i
  %i.ci = icmp ult i8 %i.cd, 80
  br i1 %i.ci, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cj = icmp eq i8 %i.cd, 45
  br i1 %i.cj, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = icmp samesign ult i8 %i.cd, 48
  br i1 %i.ck, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = icmp samesign ult i8 %i.cd, 58
  br i1 %i.cl, label %bb.s, label %bb.q

bb.o:                                             ; preds = %bb.k
  switch i8 %i.cd, label %bb.q [
    i8 80, label %bb.t
    i8 82, label %bb.ak
  ]

bb.p:                                             ; preds = %bb.i, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1
  br label %bb.fs

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1
  br label %.thread.i112

.thread.i112:                                     ; preds = %bb.fl, %bb.fj, %bb.fi, %bb.fg, %bb.ff, %bb.fc, %bb.fb, %bb.ex, %bb.ew, %bb.ev, %bb.et, %bb.es, %bb.eq, %bb.en, %bb.em, %bb.el, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.ea, %bb.dz, %bb.dw, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dg, %bb.dd, %bb.dc, %bb.db, %bb.cv, %bb.cu, %bb.ct, %bb.cr, %bb.bw, %bb.bu, %bb.av, %bb.al, %bb.ak, %bb.s, %bb.q
  %.1510.i = phi ptr [ %i.cn, %bb.q ], [ %i.gh, %bb.ak ], [ %i.dm, %bb.s ], [ %i.dm, %bb.fl ], [ %i.dm, %bb.fj ], [ %i.dm, %bb.fi ], [ %i.dm, %bb.fg ], [ %i.dm, %bb.ff ], [ %i.dm, %bb.fc ], [ %i.dm, %bb.fb ], [ %i.dm, %bb.ex ], [ %i.dm, %bb.ew ], [ %i.dm, %bb.ev ], [ %i.dm, %bb.et ], [ %i.dm, %bb.es ], [ %i.dm, %bb.eq ], [ %i.dm, %bb.en ], [ %i.dm, %bb.em ], [ %i.dm, %bb.el ], [ %i.dm, %bb.eh ], [ %i.dm, %bb.ef ], [ %i.dm, %bb.ee ], [ %i.dm, %bb.ed ], [ %i.dm, %bb.ec ], [ %i.dm, %bb.ea ], [ %i.dm, %bb.dz ], [ %i.dm, %bb.dw ], [ %i.dm, %bb.dt ], [ %i.dm, %bb.ds ], [ %i.dm, %bb.dr ], [ %i.dm, %bb.dq ], [ %i.dm, %bb.dg ], [ %i.dm, %bb.dd ], [ %i.dm, %bb.dc ], [ %i.dm, %bb.db ], [ %i.dm, %bb.cv ], [ %i.dm, %bb.cu ], [ %i.dm, %bb.ct ], [ %i.dm, %bb.cr ], [ %i.dm, %bb.bw ], [ %i.dm, %bb.bu ], [ %i.dm, %bb.av ], [ %i.dm, %bb.al ]
  %i.co = load i32, ptr %i.e, align 8, !tbaa !29
  %i.cp = add i32 %i.co, 1                        ; 2 uses
  store i32 %i.cp, ptr %i.e, align 8, !tbaa !29
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.cr = sext i32 %i.cp to i64
  %i.cs = mul nsw i64 %i.cr, 24
  %i.ct = tail call ptr @_erealloc(ptr noundef %i.cq, i64 noundef %i.cs) #11 ; 2 uses
  store ptr %i.ct, ptr %i.d, align 8, !tbaa !30
  %i.cu = ptrtoint ptr %.sroa.33.0 to i64
  %i.cv = sub i64 %i.cu, %i.ca
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = load i32, ptr %i.e, align 8, !tbaa !29
  %i.cy = add i32 %i.cx, -1
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [24 x i8], ptr %i.ct, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 %i.cw, ptr %i.db, align 4, !tbaa !32
  %i.dc = load i8, ptr %.sroa.33.0, align 1, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i8 %i.dc, ptr %i.dd, align 8, !tbaa !33
  %i.de = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.1) #9
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.dg = load i32, ptr %i.e, align 8, !tbaa !29
  %i.dh = add i32 %i.dg, -1
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [24 x i8], ptr %i.df, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.de, ptr %i.dk, align 8, !tbaa !34
  br label %bb.fs

bb.r:                                             ; preds = %bb.m, %bb.j, %bb.j, %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1
  br label %bb.fs

bb.s:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1 ; 42 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !15
  %i.do = add i8 %i.dn, -48
  %or.cond5.i = icmp ult i8 %i.do, 10
  br i1 %or.cond5.i, label %bb.al, label %.thread.i112

bb.t:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1 ; 40 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15  ; 3 uses
  %i.dr = icmp ult i8 %i.dq, 48
  br i1 %i.dr, label %.thread577.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = icmp ult i8 %i.dq, 58
  br i1 %i.ds, label %bb.am, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dt = icmp eq i8 %i.dq, 84
  br i1 %i.dt, label %bb.at, label %.thread577.i

.thread577.i:                                     ; preds = %bb.dl, %bb.ci, %bb.ce, %.lr.ph800, %bb.bn, %bb.cx, %.lr.ph836, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fk, %bb.fh, %bb.fe, %bb.fd, %bb.fa, %bb.ey, %bb.eu, %bb.ep, %bb.eo, %bb.ek, %bb.ei, %bb.eb, %bb.dv, %bb.du, %bb.dp, %bb.do, %bb.dn, %bb.dj, %bb.dh, %bb.da, %bb.cy, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.ch, %bb.cf, %bb.cd, %bb.cc, %bb.ca, %bb.bz, %bb.bs, %bb.br, %bb.bp, %bb.bm, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.v, %bb.t
  %.2.i = phi ptr [ %i.dp, %bb.ao ], [ %i.dp, %bb.t ], [ %i.lq, %bb.cq ], [ %i.lm, %bb.cp ], [ %i.le, %bb.co ], [ %i.gw, %bb.at ], [ %i.hz, %bb.bd ], [ %i.ic, %bb.be ], [ %i.il, %bb.bh ], [ %i.il, %bb.bj ], [ %i.ic, %bb.bg ], [ %i.iu, %bb.bk ], [ %i.iu, %bb.bm ], [ %i.dp, %bb.v ], [ %i.dp, %bb.cc ], [ %i.dp, %bb.bb ], [ %i.dp, %bb.ar ], [ %i.dp, %bb.fq ], [ %i.dp, %bb.fp ], [ %i.dp, %bb.fo ], [ %i.dp, %bb.fn ], [ %i.dp, %bb.fk ], [ %i.dp, %bb.fh ], [ %i.dp, %bb.fe ], [ %i.dp, %bb.fd ], [ %i.dp, %bb.fa ], [ %i.dp, %bb.ey ], [ %i.dp, %bb.eu ], [ %i.dp, %bb.ep ], [ %i.dp, %bb.eo ], [ %i.dp, %bb.ek ], [ %i.dp, %bb.ei ], [ %i.dp, %bb.eb ], [ %i.dp, %bb.dv ], [ %i.dp, %bb.du ], [ %i.dp, %bb.dj ], [ %i.dp, %bb.dh ], [ %i.dp, %bb.cd ], [ %i.dp, %bb.ca ], [ %i.dp, %bb.bz ], [ %i.dp, %bb.bc ], [ %i.dp, %bb.az ], [ %i.dp, %bb.ay ], [ %i.dp, %bb.as ], [ %i.dp, %bb.ap ], [ %i.iu, %bb.ci ], [ %i.ic, %bb.ce ], [ %i.il, %.lr.ph800 ], [ %i.gw, %bb.bn ], [ %i.le, %bb.cx ], [ %i.lm, %.lr.ph836 ], [ %i.gw, %bb.bp ], [ %i.dp, %bb.do ], [ %i.le, %bb.cy ], [ %i.ic, %bb.cf ], [ %i.dp, %bb.dp ], [ %i.dp, %bb.dn ], [ %i.lm, %bb.da ], [ %i.iu, %bb.cn ], [ %i.iu, %bb.cm ], [ %i.iu, %bb.ck ], [ %i.il, %bb.ch ], [ %i.gw, %bb.bs ], [ %i.gw, %bb.br ], [ %i.dp, %bb.dl ] ; 2 uses
  %i.du = ptrtoint ptr %.2.i to i64               ; 3 uses
  %reass.sub356 = sub i64 %i.du, %i.cc
  %i.dv = add i64 %reass.sub356, 1
  %i.dw = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.dv) #13 ; 4 uses
  %i.dx = ptrtoint ptr %.sroa.33.0 to i64         ; 2 uses
  %i.dy = sub i64 %i.du, %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr nonnull align 1 %.sroa.33.0, i64 %i.dy, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !18
  %.pre.i = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.ea = sub i64 %i.dx, %i.ca
  %i.eb = trunc i64 %i.ea to i32                  ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.aj, %.thread577.i
  %i.ec = phi i8 [ %.pre.i, %.thread577.i ], [ %i.gg, %bb.aj ] ; 2 uses
  %i.ed = phi ptr [ %i.dw, %.thread577.i ], [ %i.fd, %bb.aj ]
  %.0505.i = phi i32 [ 0, %.thread577.i ], [ %.1.i, %bb.aj ]
  %i.ee = icmp eq i8 %i.ec, 84
  br i1 %i.ee, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 2 ; 2 uses
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !18
  %.pre746.i = load i8, ptr %i.ef, align 1, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.eg = phi i8 [ %.pre746.i, %bb.x ], [ %i.ec, %bb.w ]
  %.1.i = phi i32 [ 1, %bb.x ], [ %.0505.i, %bb.w ] ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %add_error.exit572.i, label %bb.z

add_error.exit572.i:                              ; preds = %bb.y
  %i.ei = load i32, ptr %i.e, align 8, !tbaa !29
  %i.ej = add i32 %i.ei, 1                        ; 2 uses
  store i32 %i.ej, ptr %i.e, align 8, !tbaa !29
  %i.ek = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.el = sext i32 %i.ej to i64
  %i.em = mul nsw i64 %i.el, 24
  %i.en = tail call ptr @_erealloc(ptr noundef %i.ek, i64 noundef %i.em) #11 ; 2 uses
  store ptr %i.en, ptr %i.d, align 8, !tbaa !30
  %i.eo = load i32, ptr %i.e, align 8, !tbaa !29
  %i.ep = add i32 %i.eo, -1
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [24 x i8], ptr %i.en, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 %i.eb, ptr %i.es, align 4, !tbaa !32
  %i.et = load i8, ptr %.sroa.33.0, align 1, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i8 %i.et, ptr %i.eu, align 8, !tbaa !33
  %i.ev = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.2) #9
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.ex = load i32, ptr %i.e, align 8, !tbaa !29
  %i.ey = add i32 %i.ex, -1
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [24 x i8], ptr %i.ew, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store ptr %i.ev, ptr %i.fb, align 8, !tbaa !34
  br label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.fc = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 12) ; 7 uses
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !15
  switch i8 %i.fe, label %add_error.exit575.i [
    i8 89, label %bb.aa
    i8 87, label %bb.ab
    i8 68, label %bb.ac
    i8 72, label %bb.ad
    i8 83, label %bb.ae
    i8 77, label %bb.af
  ]

bb.aa:                                            ; preds = %bb.z
  store i64 %i.fc, ptr %i.bo, align 8, !tbaa !54
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.ff = mul i64 %i.fc, 7
  %i.fg = load i64, ptr %i.bp, align 8, !tbaa !55
  %i.fh = add i64 %i.fg, %i.ff
  store i64 %i.fh, ptr %i.bp, align 8, !tbaa !55
  br label %bb.ai

bb.ac:                                            ; preds = %bb.z
  %i.fi = load i64, ptr %i.bp, align 8, !tbaa !55
  %i.fj = add i64 %i.fi, %i.fc
  store i64 %i.fj, ptr %i.bp, align 8, !tbaa !55
  br label %bb.ai

bb.ad:                                            ; preds = %bb.z
  store i64 %i.fc, ptr %i.br, align 8, !tbaa !56
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  store i64 %i.fc, ptr %i.bt, align 8, !tbaa !57
  br label %bb.ai

bb.af:                                            ; preds = %bb.z
  %.not566.i = icmp eq i32 %.1.i, 0
  br i1 %.not566.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %i.fc, ptr %i.bs, align 8, !tbaa !58
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i64 %i.fc, ptr %i.bq, align 8, !tbaa !59
  br label %bb.ai

add_error.exit575.i:                              ; preds = %bb.z
  %i.fk = load i32, ptr %i.e, align 8, !tbaa !29
  %i.fl = add i32 %i.fk, 1                        ; 2 uses
  store i32 %i.fl, ptr %i.e, align 8, !tbaa !29
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.fn = sext i32 %i.fl to i64
  %i.fo = mul nsw i64 %i.fn, 24
  %i.fp = tail call ptr @_erealloc(ptr noundef %i.fm, i64 noundef %i.fo) #11 ; 2 uses
  store ptr %i.fp, ptr %i.d, align 8, !tbaa !30
  %i.fq = load i32, ptr %i.e, align 8, !tbaa !29
  %i.fr = add i32 %i.fq, -1
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [24 x i8], ptr %i.fp, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 %i.eb, ptr %i.fu, align 4, !tbaa !32
  %i.fv = load i8, ptr %.sroa.33.0, align 1, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i8 %i.fv, ptr %i.fw, align 8, !tbaa !33
  %i.fx = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.3) #9
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.fz = load i32, ptr %i.e, align 8, !tbaa !29
  %i.ga = add i32 %i.fz, -1
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [24 x i8], ptr %i.fy, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr %i.fx, ptr %i.gd, align 8, !tbaa !34
  br label %bb.ai

bb.ai:                                            ; preds = %add_error.exit575.i, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fd, i64 1 ; 2 uses
  store ptr %i.ge, ptr %i.a, align 8, !tbaa !18
  %i.gf = load i32, ptr %i.e, align 8, !tbaa !29
  %.not567.i = icmp eq i32 %i.gf, 0
  br i1 %.not567.i, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %i.gg = load i8, ptr %i.ge, align 1, !tbaa !15  ; 2 uses
  %.not568.i = icmp eq i8 %i.gg, 0
  br i1 %.not568.i, label %.critedge.i, label %bb.w, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.aj, %bb.ai, %add_error.exit572.i
  tail call void @_efree(ptr noundef %i.dw) #9
  br label %scan.exit

bb.ak:                                            ; preds = %bb.o
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !15
  %i.gj = add i8 %i.gi, -58
  %.not.i111 = icmp ult i8 %i.gj, -10
  br i1 %.not.i111, label %.thread.i112, label %.preheader603.i.preheader

.preheader603.i.preheader:                        ; preds = %bb.ak
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 2 ; 2 uses
  %.not551.i768 = icmp ugt ptr %i.ax, %i.gk
  br i1 %.not551.i768, label %.lr.ph, label %.loopexit

bb.al:                                            ; preds = %bb.s
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  %i.gn = add i8 %i.gm, -48
  %or.cond8.i = icmp ult i8 %i.gn, 10
  br i1 %or.cond8.i, label %bb.av, label %.thread.i112

bb.am:                                            ; preds = %bb.u
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 2 ; 5 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !15  ; 7 uses
  %i.gq = icmp ult i8 %i.gp, 77
  br i1 %i.gq, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.gr = icmp samesign ult i8 %i.gp, 58
  br i1 %i.gr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gs = icmp samesign ult i8 %i.gp, 48
  br i1 %i.gs, label %.thread577.i, label %bb.aw

bb.ap:                                            ; preds = %bb.an
  %i.gt = icmp eq i8 %i.gp, 68
  br i1 %i.gt, label %bb.bd, label %.thread577.i

bb.aq:                                            ; preds = %bb.am
  %i.gu = icmp ult i8 %i.gp, 88
  br i1 %i.gu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  switch i8 %i.gp, label %.thread577.i [
    i8 77, label %bb.be
    i8 87, label %bb.bh
  ]

bb.as:                                            ; preds = %bb.aq
  %i.gv = icmp eq i8 %i.gp, 89
  br i1 %i.gv, label %bb.bk, label %.thread577.i

bb.at:                                            ; preds = %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.v
  %.3.i = phi ptr [ %i.hz, %bb.bd ], [ %i.il, %bb.bj ], [ %i.ic, %bb.bg ], [ %i.iu, %bb.bm ], [ %i.dp, %bb.v ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 7 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !15
  %i.gy = add i8 %i.gx, -48
  %or.cond11.i = icmp ult i8 %i.gy, 10
  br i1 %or.cond11.i, label %.preheader588.i.preheader, label %.thread577.i

.preheader588.i.preheader:                        ; preds = %bb.at
  %i.gz = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.by, %i.ha
  %i.hc = icmp slt i64 %i.hb, 2
  br i1 %i.hc, label %.loopexit, label %.lr.ph812

.preheader603.i:                                  ; preds = %.lr.ph
  %i.hd = getelementptr inbounds nuw i8, ptr %i.he, i64 1 ; 2 uses
  %.not551.i = icmp ugt ptr %i.ax, %i.hd
  br i1 %.not551.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader603.i.preheader, %.preheader603.i
  %i.he = phi ptr [ %i.hd, %.preheader603.i ], [ %i.gk, %.preheader603.i.preheader ] ; 4 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !15
  %i.hg = add i8 %i.hf, -58
  %.not552.i = icmp ult i8 %i.hg, -10
  br i1 %.not552.i, label %bb.au, label %.preheader603.i

bb.au:                                            ; preds = %.lr.ph
  %i.hh = ptrtoint ptr %i.he to i64               ; 3 uses
  %reass.sub = sub i64 %i.hh, %i.cc
  %i.hi = add i64 %reass.sub, 1
  %i.hj = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.hi) #13 ; 3 uses
  %i.hk = ptrtoint ptr %.sroa.33.0 to i64
  %i.hl = sub i64 %i.hh, %i.hk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hj, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.33.0, i64 %i.hl, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  store ptr %i.hm, ptr %i.a, align 8, !tbaa !18
  %i.hn = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 9)
  %i.ho = trunc i64 %i.hn to i32
  tail call void @_efree(ptr noundef nonnull %i.hj) #9
  br label %scan.exit

bb.av:                                            ; preds = %bb.al
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 3
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !15
  %i.hr = add i8 %i.hq, -48
  %or.cond14.i = icmp ult i8 %i.hr, 10
  br i1 %or.cond14.i, label %bb.bt, label %.thread.i112

bb.aw:                                            ; preds = %bb.ao
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 3 ; 5 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !15  ; 7 uses
  %i.hu = icmp ult i8 %i.ht, 77
  br i1 %i.hu, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.hv = icmp samesign ult i8 %i.ht, 58
  br i1 %i.hv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hw = icmp samesign ult i8 %i.ht, 48
  br i1 %i.hw, label %.thread577.i, label %bb.bx

bb.az:                                            ; preds = %bb.ax
  %.not555.i = icmp eq i8 %i.ht, 68
  br i1 %.not555.i, label %bb.bd, label %.thread577.i

bb.ba:                                            ; preds = %bb.aw
  %i.hx = icmp ult i8 %i.ht, 88
  br i1 %i.hx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  switch i8 %i.ht, label %.thread577.i [
    i8 77, label %bb.be
    i8 87, label %bb.bh
  ]

bb.bc:                                            ; preds = %bb.ba
  %i.hy = icmp eq i8 %i.ht, 89
  br i1 %i.hy, label %bb.bk, label %.thread577.i

bb.bd:                                            ; preds = %bb.dn, %bb.ck, %bb.ch, %bb.cf, %bb.ca, %bb.az, %bb.ap
  %.5.i = phi ptr [ %.18669.i, %bb.dn ], [ %i.kg, %bb.cf ], [ %i.ko, %bb.ch ], [ %i.kx, %bb.ck ], [ %i.ju, %bb.ca ], [ %i.hs, %bb.az ], [ %i.go, %bb.ap ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 3 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !15
  %i.ib = icmp eq i8 %i.ia, 84
  br i1 %i.ib, label %bb.at, label %.thread577.i

bb.be:                                            ; preds = %bb.do, %bb.cm, %bb.cc, %bb.bb, %bb.ar
  %.6.i = phi ptr [ %.18.lcssa.i, %bb.do ], [ %i.kx, %bb.cm ], [ %i.ju, %bb.cc ], [ %i.hs, %bb.bb ], [ %i.go, %bb.ar ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.6.i, i64 1 ; 6 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !15  ; 3 uses
  %i.ie = icmp ult i8 %i.id, 48
  br i1 %i.ie, label %.thread577.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.if = icmp ult i8 %i.id, 58
  br i1 %i.if, label %.preheader594.i.preheader, label %bb.bg

.preheader594.i.preheader:                        ; preds = %bb.bf
  %i.ig = getelementptr inbounds nuw i8, ptr %.6.i, i64 2 ; 2 uses
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = sub i64 %i.by, %i.ih
  %i.ij = icmp slt i64 %i.ii, 3
  br i1 %i.ij, label %.loopexit, label %.lr.ph789

bb.bg:                                            ; preds = %bb.bf
  %i.ik = icmp eq i8 %i.id, 84
  br i1 %i.ik, label %bb.at, label %.thread577.i

bb.bh:                                            ; preds = %bb.do, %bb.cn, %bb.cf, %bb.cc, %bb.bb, %bb.ar
  %.7.i = phi ptr [ %i.kg, %bb.cf ], [ %.18.lcssa.i, %bb.do ], [ %i.kx, %bb.cn ], [ %i.ju, %bb.cc ], [ %i.hs, %bb.bb ], [ %i.go, %bb.ar ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.7.i, i64 1 ; 6 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !15  ; 3 uses
  %i.in = icmp ult i8 %i.im, 48
  br i1 %i.in, label %.thread577.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.io = icmp ult i8 %i.im, 58
  br i1 %i.io, label %.preheader591.i.preheader, label %bb.bj

.preheader591.i.preheader:                        ; preds = %bb.bi
  %i.ip = getelementptr inbounds nuw i8, ptr %.7.i, i64 2 ; 2 uses
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = sub i64 %i.by, %i.iq
  %i.is = icmp slt i64 %i.ir, 3
  br i1 %i.is, label %.loopexit, label %.lr.ph800

bb.bj:                                            ; preds = %bb.bi
  %i.it = icmp eq i8 %i.im, 84
  br i1 %i.it, label %bb.at, label %.thread577.i

bb.bk:                                            ; preds = %bb.dp, %bb.cd, %bb.bc, %bb.as
  %.8.i = phi ptr [ %.18.lcssa.i, %bb.dp ], [ %i.ju, %bb.cd ], [ %i.hs, %bb.bc ], [ %i.go, %bb.as ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 8 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !15  ; 3 uses
  %i.iw = icmp ult i8 %i.iv, 48
  br i1 %i.iw, label %.thread577.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ix = icmp ult i8 %i.iv, 58
  br i1 %i.ix, label %.preheader597.i.preheader, label %bb.bm

.preheader597.i.preheader:                        ; preds = %bb.bl
  %i.iy = getelementptr inbounds nuw i8, ptr %.8.i, i64 2 ; 2 uses
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = sub i64 %i.by, %i.iz
  %i.jb = icmp slt i64 %i.ja, 3
  br i1 %i.jb, label %.loopexit, label %.lr.ph778

bb.bm:                                            ; preds = %bb.bl
  %i.jc = icmp eq i8 %i.iv, 84
  br i1 %i.jc, label %bb.at, label %.thread577.i

.preheader588.i:                                  ; preds = %bb.bo
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jh, i64 1 ; 2 uses
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = sub i64 %i.by, %i.je
  %i.jg = icmp slt i64 %i.jf, 2
  br i1 %i.jg, label %.loopexit, label %.lr.ph812

.lr.ph812:                                        ; preds = %.preheader588.i.preheader, %.preheader588.i
  %i.jh = phi ptr [ %i.jd, %.preheader588.i ], [ %i.gz, %.preheader588.i.preheader ] ; 4 uses
  %.9.i811 = phi ptr [ %i.jh, %.preheader588.i ], [ %i.gw, %.preheader588.i.preheader ] ; 3 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !15  ; 7 uses
  %i.jj = icmp ult i8 %i.ji, 73
  br i1 %i.jj, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %.lr.ph812
  %i.jk = icmp samesign ult i8 %i.ji, 48
  br i1 %i.jk, label %.thread577.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jl = icmp samesign ult i8 %i.ji, 58
  br i1 %i.jl, label %.preheader588.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not561.i = icmp eq i8 %i.ji, 72
  br i1 %.not561.i, label %bb.co, label %.thread577.i

bb.bq:                                            ; preds = %.lr.ph812
  %i.jm = icmp ult i8 %i.ji, 78
  br i1 %i.jm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.not560.i = icmp eq i8 %i.ji, 77
  br i1 %.not560.i, label %bb.cp, label %.thread577.i

bb.bs:                                            ; preds = %bb.bq
  %i.jn = icmp eq i8 %i.ji, 83
  br i1 %i.jn, label %bb.cq, label %.thread577.i

bb.bt:                                            ; preds = %bb.av
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 4
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !15  ; 4 uses
  %i.jq = icmp ult i8 %i.jp, 48
  br i1 %i.jq, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jr = icmp eq i8 %i.jp, 45
  br i1 %i.jr, label %bb.cr, label %.thread.i112

bb.bv:                                            ; preds = %bb.bt
  %i.js = icmp eq i8 %i.jp, 48
  br i1 %i.js, label %bb.cu, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jt = icmp ult i8 %i.jp, 50
  br i1 %i.jt, label %bb.cv, label %.thread.i112

bb.bx:                                            ; preds = %bb.ay
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 4 ; 5 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !15  ; 7 uses
  %i.jw = icmp ult i8 %i.jv, 77
  br i1 %i.jw, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.jx = icmp samesign ult i8 %i.jv, 58
  br i1 %i.jx, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jy = icmp samesign ult i8 %i.jv, 48
  br i1 %i.jy, label %.thread577.i, label %bb.cw

bb.ca:                                            ; preds = %bb.by
  %i.jz = icmp eq i8 %i.jv, 68
  br i1 %i.jz, label %bb.bd, label %.thread577.i

bb.cb:                                            ; preds = %bb.bx
  %i.ka = icmp ult i8 %i.jv, 88
  br i1 %i.ka, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  switch i8 %i.jv, label %.thread577.i [
    i8 77, label %bb.be
    i8 87, label %bb.bh
  ]

bb.cd:                                            ; preds = %bb.cb
  %i.kb = icmp eq i8 %i.jv, 89
end_hunk_0
begin_hunk_1_@timelib_strtointerval:bb.a
  %i.oh = and i8 %i.og, -2
  %or.cond47.i = icmp eq i8 %i.oh, 48
  br i1 %or.cond47.i, label %bb.ea, label %.thread.i112

bb.du:                                            ; preds = %bb.di
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 7
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !15
  %i.ok = add i8 %i.oj, -48
  %or.cond50.i = icmp ult i8 %i.ok, 10
  br i1 %or.cond50.i, label %bb.eb, label %.thread577.i

bb.dv:                                            ; preds = %bb.dj
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 7
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !15
  %i.on = add i8 %i.om, -48
  %or.cond53.i = icmp ult i8 %i.on, 3
  br i1 %or.cond53.i, label %bb.eb, label %.thread577.i

bb.dw:                                            ; preds = %bb.dq
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 8
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !15  ; 4 uses
  %i.oq = icmp ult i8 %i.op, 48
  br i1 %i.oq, label %.thread.i112, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.or = icmp eq i8 %i.op, 48
  br i1 %i.or, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.os = icmp ult i8 %i.op, 51
  br i1 %i.os, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ot = icmp eq i8 %i.op, 51
  br i1 %i.ot, label %bb.ee, label %.thread.i112

bb.ea:                                            ; preds = %bb.dt, %bb.ds, %bb.dr
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 8
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !15
  %i.ow = icmp eq i8 %i.ov, 84
  br i1 %i.ow, label %bb.ef, label %.thread.i112

bb.eb:                                            ; preds = %bb.dv, %bb.du
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 8
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !15
  %i.oz = icmp eq i8 %i.oy, 45
  br i1 %i.oz, label %bb.ei, label %.thread577.i

bb.ec:                                            ; preds = %bb.dx
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 9
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !15
  %i.pc = add i8 %i.pb, -49
  %or.cond56.i = icmp ult i8 %i.pc, 9
  br i1 %or.cond56.i, label %bb.el, label %.thread.i112

bb.ed:                                            ; preds = %bb.dy
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 9
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !15
  %i.pf = add i8 %i.pe, -48
  %or.cond59.i = icmp ult i8 %i.pf, 10
  br i1 %or.cond59.i, label %bb.el, label %.thread.i112

bb.ee:                                            ; preds = %bb.dz
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 9
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !15
  %i.pi = and i8 %i.ph, -2
  %or.cond62.i = icmp eq i8 %i.pi, 48
  br i1 %or.cond62.i, label %bb.el, label %.thread.i112

bb.ef:                                            ; preds = %bb.ea
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 9
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !15  ; 3 uses
  %i.pl = icmp ult i8 %i.pk, 48
  br i1 %i.pl, label %.thread.i112, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pm = icmp ult i8 %i.pk, 50
  br i1 %i.pm, label %bb.em, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pn = icmp eq i8 %i.pk, 50
  br i1 %i.pn, label %bb.en, label %.thread.i112

bb.ei:                                            ; preds = %bb.eb
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 9
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !15  ; 3 uses
  %i.pq = icmp ult i8 %i.pp, 48
  br i1 %i.pq, label %.thread577.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pr = icmp ult i8 %i.pp, 51
  br i1 %i.pr, label %bb.eo, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ps = icmp eq i8 %i.pp, 51
  br i1 %i.ps, label %bb.ep, label %.thread577.i

bb.el:                                            ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !15
  %i.pv = icmp eq i8 %i.pu, 84
  br i1 %i.pv, label %bb.eq, label %.thread.i112

bb.em:                                            ; preds = %bb.eg
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !15
  %i.py = add i8 %i.px, -48
  %or.cond65.i = icmp ult i8 %i.py, 10
  br i1 %or.cond65.i, label %bb.et, label %.thread.i112

bb.en:                                            ; preds = %bb.eh
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !15
  %i.qb = add i8 %i.qa, -48
  %or.cond68.i = icmp ult i8 %i.qb, 5
  br i1 %or.cond68.i, label %bb.et, label %.thread.i112

bb.eo:                                            ; preds = %bb.ej
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !15
  %i.qe = add i8 %i.qd, -48
  %or.cond71.i = icmp ult i8 %i.qe, 10
  br i1 %or.cond71.i, label %bb.eu, label %.thread577.i

bb.ep:                                            ; preds = %bb.ek
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !15
  %i.qh = and i8 %i.qg, -2
  %or.cond74.i = icmp eq i8 %i.qh, 48
  br i1 %or.cond74.i, label %bb.eu, label %.thread577.i

bb.eq:                                            ; preds = %bb.el
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 11
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !15  ; 3 uses
  %i.qk = icmp ult i8 %i.qj, 48
  br i1 %i.qk, label %.thread.i112, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ql = icmp ult i8 %i.qj, 50
  br i1 %i.ql, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qm = icmp eq i8 %i.qj, 50
  br i1 %i.qm, label %bb.ew, label %.thread.i112

bb.et:                                            ; preds = %bb.en, %bb.em
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 11
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !15
  %i.qp = add i8 %i.qo, -48
  %or.cond77.i = icmp ult i8 %i.qp, 6
  br i1 %or.cond77.i, label %bb.ex, label %.thread.i112

bb.eu:                                            ; preds = %bb.ep, %bb.eo
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 11
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !15
  %i.qs = icmp eq i8 %i.qr, 84
  br i1 %i.qs, label %bb.ey, label %.thread577.i

bb.ev:                                            ; preds = %bb.er
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 12
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !15
  %i.qv = add i8 %i.qu, -48
  %or.cond80.i = icmp ult i8 %i.qv, 10
  br i1 %or.cond80.i, label %bb.fb, label %.thread.i112

bb.ew:                                            ; preds = %bb.es
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 12
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !15
  %i.qy = add i8 %i.qx, -48
  %or.cond83.i = icmp ult i8 %i.qy, 5
  br i1 %or.cond83.i, label %bb.fb, label %.thread.i112

bb.ex:                                            ; preds = %bb.et
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 12
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !15
  %i.rb = add i8 %i.ra, -48
  %or.cond86.i = icmp ult i8 %i.rb, 10
  br i1 %or.cond86.i, label %bb.fc, label %.thread.i112

bb.ey:                                            ; preds = %bb.eu
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 12
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !15  ; 3 uses
  %i.re = icmp ult i8 %i.rd, 48
  br i1 %i.re, label %.thread577.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.rf = icmp ult i8 %i.rd, 50
  br i1 %i.rf, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.rg = icmp eq i8 %i.rd, 50
  br i1 %i.rg, label %bb.fe, label %.thread577.i

bb.fb:                                            ; preds = %bb.ew, %bb.ev
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 13
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !15
  %i.rj = icmp eq i8 %i.ri, 58
  br i1 %i.rj, label %bb.ff, label %.thread.i112

bb.fc:                                            ; preds = %bb.fl, %bb.ex
  %i.rk = phi i64 [ 16, %bb.fl ], [ 12, %bb.ex ]  ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 %i.rk ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !15
  %i.ro = add i8 %i.rn, -48
  %or.cond89.i = icmp ult i8 %i.ro, 6
  br i1 %or.cond89.i, label %bb.fg, label %.thread.i112

bb.fd:                                            ; preds = %bb.ez
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 13
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !15
  %i.rr = add i8 %i.rq, -48
  %or.cond92.i = icmp ult i8 %i.rr, 10
  br i1 %or.cond92.i, label %bb.fh, label %.thread577.i

bb.fe:                                            ; preds = %bb.fa
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 13
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !15
  %i.ru = add i8 %i.rt, -48
  %or.cond95.i = icmp ult i8 %i.ru, 5
  br i1 %or.cond95.i, label %bb.fh, label %.thread577.i

bb.ff:                                            ; preds = %bb.fb
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 14
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !15
  %i.rx = add i8 %i.rw, -48
  %or.cond98.i = icmp ult i8 %i.rx, 6
  br i1 %or.cond98.i, label %bb.fi, label %.thread.i112

bb.fg:                                            ; preds = %bb.fc
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !15
  %i.sa = add i8 %i.rz, -48
  %or.cond101.i = icmp ult i8 %i.sa, 10
  br i1 %or.cond101.i, label %bb.fj, label %.thread.i112

bb.fh:                                            ; preds = %bb.fe, %bb.fd
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 14
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !15
  %i.sd = icmp eq i8 %i.sc, 58
  br i1 %i.sd, label %bb.fk, label %.thread577.i

bb.fi:                                            ; preds = %bb.ff
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 15
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !15
  %i.sg = add i8 %i.sf, -48
  %or.cond104.i = icmp ult i8 %i.sg, 10
  br i1 %or.cond104.i, label %bb.fl, label %.thread.i112

bb.fj:                                            ; preds = %bb.fg
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rl, i64 3
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !15
  %i.sj = icmp eq i8 %i.si, 90
  br i1 %i.sj, label %bb.fm, label %.thread.i112

bb.fk:                                            ; preds = %bb.fh
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 15
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !15
  %i.sm = add i8 %i.sl, -48
  %or.cond107.i = icmp ult i8 %i.sm, 6
  br i1 %or.cond107.i, label %bb.fn, label %.thread577.i

bb.fl:                                            ; preds = %bb.fi
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 16
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !15
  %i.sp = icmp eq i8 %i.so, 58
  br i1 %i.sp, label %bb.fc, label %.thread.i112

bb.fm:                                            ; preds = %bb.fj
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rl, i64 4 ; 2 uses
  %.not564.i = icmp eq i32 %.sroa.109.0342, 0
  %.not565.i = icmp eq i32 %.sroa.103.0339, 0
  %or.cond = select i1 %.not564.i, i1 %.not565.i, i1 false ; 3 uses
  %.sroa.111.1 = select i1 %or.cond, i32 1, i32 %.sroa.111.0348
  %.sroa.113.1 = select i1 %or.cond, i32 %.sroa.113.0350, i32 1
  %.0.i = select i1 %or.cond, ptr %i.ay, ptr %i.bg ; 6 uses
  %7 = ptrtoint ptr %i.sq to i64                  ; 2 uses
  %reass.sub354 = sub i64 %7, %i.cc
  %i.sr = add i64 %reass.sub354, 1
  %i.ss = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.sr) #13 ; 3 uses
  %i.st = add nuw nsw i64 %i.rk, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ss, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.33.0, i64 %i.st, i1 false)
  store ptr %i.ss, ptr %i.a, align 8, !tbaa !18
  %i.su = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 4)
  store i64 %i.su, ptr %.0.i, align 8, !tbaa !60
  %i.sv = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.sw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.sv, ptr %i.sw, align 8, !tbaa !61
  %i.sx = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.sy = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i64 %i.sx, ptr %i.sy, align 8, !tbaa !62
  %i.sz = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.ta = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i64 %i.sz, ptr %i.ta, align 8, !tbaa !63
  %i.tb = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.tc = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 %i.tb, ptr %i.tc, align 8, !tbaa !43
  %i.td = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.te = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %i.td, ptr %i.te, align 8, !tbaa !44
  tail call void @_efree(ptr noundef nonnull %i.ss) #9
  br label %scan.exit

bb.fn:                                            ; preds = %bb.fk
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 16
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !15
  %i.th = add i8 %i.tg, -58
  %or.cond110.i = icmp ult i8 %i.th, -10
  br i1 %or.cond110.i, label %.thread577.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 17
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !15
  %.not563.i = icmp eq i8 %i.tj, 58
  br i1 %.not563.i, label %bb.fp, label %.thread577.i

bb.fp:                                            ; preds = %bb.fo
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 18
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !15
  %i.tm = add i8 %i.tl, -54
  %or.cond113.i = icmp ult i8 %i.tm, -6
  br i1 %or.cond113.i, label %.thread577.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 19
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !15
  %i.tp = add i8 %i.to, -58
  %or.cond116.i = icmp ult i8 %i.tp, -10
  br i1 %or.cond116.i, label %.thread577.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 20 ; 2 uses
  %i.tr = tail call noalias dereferenceable_or_null(21) ptr @_ecalloc(i64 noundef 1, i64 noundef 21) #13 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.tr, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.33.0, i64 20, i1 false)
  store ptr %i.tr, ptr %i.a, align 8, !tbaa !18
  %i.ts = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 4)
  store i64 %i.ts, ptr %i.bo, align 8, !tbaa !54
  %i.tt = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 1
  store ptr %i.tu, ptr %i.a, align 8, !tbaa !18
  %i.tv = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.tv, ptr %i.bq, align 8, !tbaa !59
  %i.tw = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  store ptr %i.tx, ptr %i.a, align 8, !tbaa !18
  %i.ty = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.ty, ptr %i.bp, align 8, !tbaa !55
  %i.tz = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 1
  store ptr %i.ua, ptr %i.a, align 8, !tbaa !18
  %i.ub = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.ub, ptr %i.br, align 8, !tbaa !56
  %i.uc = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 1
  store ptr %i.ud, ptr %i.a, align 8, !tbaa !18
  %i.ue = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.ue, ptr %i.bs, align 8, !tbaa !58
  %i.uf = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  store ptr %i.ug, ptr %i.a, align 8, !tbaa !18
  %i.uh = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.uh, ptr %i.bt, align 8, !tbaa !57
  tail call void @_efree(ptr noundef nonnull %i.tr) #9
  %.pre = ptrtoint ptr %i.tq to i64
  br label %scan.exit

bb.fs:                                            ; preds = %bb.r, %.thread.i112, %bb.p
  %.28.i = phi ptr [ %i.cm, %bb.p ], [ %.1510.i, %.thread.i112 ], [ %i.dl, %bb.r ] ; 2 uses
  %i.ui = ptrtoint ptr %.28.i to i64              ; 2 uses
  %i.uj = sub i64 %i.by, %i.ui
  %i.uk = icmp slt i64 %i.uj, 20
  br i1 %i.uk, label %.loopexit, label %.lr.ph.i

scan.exit:                                        ; preds = %.critedge.i, %bb.au, %bb.fm, %bb.fr
  %.pre-phi = phi i64 [ %i.du, %.critedge.i ], [ %i.hh, %bb.au ], [ %7, %bb.fm ], [ %.pre, %bb.fr ] ; 2 uses
  %.sroa.21.1 = phi ptr [ %.2.i, %.critedge.i ], [ %i.he, %bb.au ], [ %i.sq, %bb.fm ], [ %i.tq, %bb.fr ]
  %.sroa.96.1 = phi i32 [ %.sroa.100.0337, %.critedge.i ], [ %i.ho, %bb.au ], [ %.sroa.100.0337, %bb.fm ], [ %.sroa.100.0337, %bb.fr ] ; 2 uses
  %.sroa.99.1 = phi i32 [ 1, %.critedge.i ], [ %.sroa.103.0339, %bb.au ], [ %.sroa.103.0339, %bb.fm ], [ 1, %bb.fr ] ; 2 uses
  %.sroa.103.1 = phi i32 [ %.sroa.107.0340, %.critedge.i ], [ 1, %bb.au ], [ %.sroa.107.0340, %bb.fm ], [ %.sroa.107.0340, %bb.fr ] ; 2 uses
  %.sroa.105.1 = phi i32 [ %.sroa.109.0342, %.critedge.i ], [ %.sroa.109.0342, %bb.au ], [ 1, %bb.fm ], [ %.sroa.109.0342, %bb.fr ]
  %.sroa.107.2 = phi i32 [ %.sroa.111.0348, %.critedge.i ], [ %.sroa.111.0348, %bb.au ], [ %.sroa.111.1, %bb.fm ], [ %.sroa.111.0348, %bb.fr ] ; 2 uses
  %.sroa.109.2 = phi i32 [ %.sroa.113.0350, %.critedge.i ], [ %.sroa.113.0350, %bb.au ], [ %.sroa.113.1, %bb.fm ], [ %.sroa.113.0350, %bb.fr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.ul = sub i64 %i.by, %.pre-phi
  %i.um = icmp slt i64 %i.ul, 20
  br i1 %i.um, label %.loopexit, label %.lr.ph.i.preheader, !llvm.loop !22

.loopexit:                                        ; preds = %scan.exit, %.preheader603.i.preheader, %.preheader597.i.preheader, %.preheader594.i.preheader, %.preheader591.i.preheader, %.preheader588.i.preheader, %.preheader585.i.preheader, %.preheader.i.preheader, %bb.fs, %.preheader603.i, %bb.dm, %.preheader597.i, %.preheader594.i, %.preheader591.i, %.preheader588.i, %.preheader585.i, %.preheader.i, %bb.e
  %.sroa.100.0330 = phi i32 [ %.sroa.100.0337, %.preheader603.i ], [ %.sroa.100.0337, %bb.fs ], [ %.sroa.100.0337, %.preheader.i ], [ %.sroa.100.0337, %bb.dm ], [ %.sroa.100.0337, %.preheader585.i ], [ %.sroa.100.0337, %.preheader594.i ], [ %.sroa.100.0337, %.preheader588.i ], [ %.sroa.100.0337, %.preheader591.i ], [ %.sroa.100.0337, %.preheader597.i ], [ 1, %bb.e ], [ %.sroa.96.1, %scan.exit ], [ %.sroa.100.0337, %.preheader591.i.preheader ], [ %.sroa.100.0337, %.preheader594.i.preheader ], [ %.sroa.100.0337, %.preheader597.i.preheader ], [ %.sroa.100.0337, %.preheader603.i.preheader ], [ %.sroa.100.0337, %.preheader.i.preheader ], [ %.sroa.100.0337, %.preheader585.i.preheader ], [ %.sroa.100.0337, %.preheader588.i.preheader ]
  %.sroa.103.0320 = phi i32 [ %.sroa.103.0339, %.preheader603.i ], [ %.sroa.103.0339, %bb.fs ], [ %.sroa.103.0339, %.preheader.i ], [ %.sroa.103.0339, %bb.dm ], [ %.sroa.103.0339, %.preheader585.i ], [ %.sroa.103.0339, %.preheader594.i ], [ %.sroa.103.0339, %.preheader588.i ], [ %.sroa.103.0339, %.preheader591.i ], [ %.sroa.103.0339, %.preheader597.i ], [ 0, %bb.e ], [ %.sroa.99.1, %scan.exit ], [ %.sroa.103.0339, %.preheader591.i.preheader ], [ %.sroa.103.0339, %.preheader594.i.preheader ], [ %.sroa.103.0339, %.preheader597.i.preheader ], [ %.sroa.103.0339, %.preheader603.i.preheader ], [ %.sroa.103.0339, %.preheader.i.preheader ], [ %.sroa.103.0339, %.preheader585.i.preheader ], [ %.sroa.103.0339, %.preheader588.i.preheader ]
  %.sroa.107.0310 = phi i32 [ %.sroa.107.0340, %.preheader603.i ], [ %.sroa.107.0340, %bb.fs ], [ %.sroa.107.0340, %.preheader.i ], [ %.sroa.107.0340, %bb.dm ], [ %.sroa.107.0340, %.preheader585.i ], [ %.sroa.107.0340, %.preheader594.i ], [ %.sroa.107.0340, %.preheader588.i ], [ %.sroa.107.0340, %.preheader591.i ], [ %.sroa.107.0340, %.preheader597.i ], [ 0, %bb.e ], [ %.sroa.103.1, %scan.exit ], [ %.sroa.107.0340, %.preheader591.i.preheader ], [ %.sroa.107.0340, %.preheader594.i.preheader ], [ %.sroa.107.0340, %.preheader597.i.preheader ], [ %.sroa.107.0340, %.preheader603.i.preheader ], [ %.sroa.107.0340, %.preheader.i.preheader ], [ %.sroa.107.0340, %.preheader585.i.preheader ], [ %.sroa.107.0340, %.preheader588.i.preheader ]
  %.sroa.111.0300 = phi i32 [ %.sroa.111.0348, %.preheader603.i ], [ %.sroa.111.0348, %bb.fs ], [ %.sroa.111.0348, %.preheader.i ], [ %.sroa.111.0348, %bb.dm ], [ %.sroa.111.0348, %.preheader585.i ], [ %.sroa.111.0348, %.preheader594.i ], [ %.sroa.111.0348, %.preheader588.i ], [ %.sroa.111.0348, %.preheader591.i ], [ %.sroa.111.0348, %.preheader597.i ], [ 0, %bb.e ], [ %.sroa.107.2, %scan.exit ], [ %.sroa.111.0348, %.preheader591.i.preheader ], [ %.sroa.111.0348, %.preheader594.i.preheader ], [ %.sroa.111.0348, %.preheader597.i.preheader ], [ %.sroa.111.0348, %.preheader603.i.preheader ], [ %.sroa.111.0348, %.preheader.i.preheader ], [ %.sroa.111.0348, %.preheader585.i.preheader ], [ %.sroa.111.0348, %.preheader588.i.preheader ]
  %.sroa.113.0290 = phi i32 [ %.sroa.113.0350, %.preheader603.i ], [ %.sroa.113.0350, %bb.fs ], [ %.sroa.113.0350, %.preheader.i ], [ %.sroa.113.0350, %bb.dm ], [ %.sroa.113.0350, %.preheader585.i ], [ %.sroa.113.0350, %.preheader594.i ], [ %.sroa.113.0350, %.preheader588.i ], [ %.sroa.113.0350, %.preheader591.i ], [ %.sroa.113.0350, %.preheader597.i ], [ 0, %bb.e ], [ %.sroa.109.2, %scan.exit ], [ %.sroa.113.0350, %.preheader591.i.preheader ], [ %.sroa.113.0350, %.preheader594.i.preheader ], [ %.sroa.113.0350, %.preheader597.i.preheader ], [ %.sroa.113.0350, %.preheader603.i.preheader ], [ %.sroa.113.0350, %.preheader.i.preheader ], [ %.sroa.113.0350, %.preheader585.i.preheader ], [ %.sroa.113.0350, %.preheader588.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  tail call void @_efree(ptr noundef %i.av) #9
  %.not105 = icmp eq ptr %6, null
  br i1 %.not105, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %.loopexit
  store ptr %i.d, ptr %6, align 8, !tbaa !36
  br label %bb.fv

bb.fu:                                            ; preds = %.loopexit
  tail call void @timelib_error_container_dtor(ptr noundef nonnull %i.d) #9
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.not106 = icmp eq i32 %.sroa.111.0300, 0
  br i1 %.not106, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  store ptr %i.ay, ptr %2, align 8, !tbaa !65
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  tail call void @timelib_time_dtor(ptr noundef nonnull %i.ay) #9
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.not107 = icmp eq i32 %.sroa.113.0290, 0
  br i1 %.not107, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  store ptr %i.bg, ptr %3, align 8, !tbaa !65
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  tail call void @timelib_time_dtor(ptr noundef nonnull %i.bg) #9
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.not108 = icmp eq i32 %.sroa.103.0320, 0
  br i1 %.not108, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store ptr %i.bo, ptr %4, align 8, !tbaa !67
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  tail call void @timelib_rel_time_dtor(ptr noundef nonnull %i.bo) #9
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.not109 = icmp eq i32 %.sroa.107.0310, 0
  br i1 %.not109, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  store i32 %.sroa.100.0330, ptr %5, align 4, !tbaa !68
  br label %bb.gg

bb.gg:                                            ; preds = %bb.ge, %bb.gf, %bb.c, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noalias ptr @_emalloc_24() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare void @timelib_error_container_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @timelib_time_ctor() local_unnamed_addr #3

declare ptr @timelib_rel_time_ctor() local_unnamed_addr #3

declare void @_efree(ptr noundef) local_unnamed_addr #3

declare void @timelib_time_dtor(ptr noundef) local_unnamed_addr #3

declare void @timelib_rel_time_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @timelib_get_unsigned_nr(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 2, 13) %1) unnamed_addr #0 {
bb.a:
  %.promoted = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  %i.a = load i8, ptr %.promoted, align 1, !tbaa !15 ; 3 uses
  %i.b = add i8 %i.a, -58
  %or.cond24 = icmp ult i8 %i.b, -10
  br i1 %or.cond24, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi i8 [ %i.f, %bb.b ], [ %i.a, %bb.a ]  ; 3 uses
  %i.d = phi ptr [ %i.e, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  switch i8 %i.c, label %bb.b [
    i8 43, label %.critedge.preheader
    i8 45, label %.critedge.preheader
    i8 0, label %.loopexit
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !18
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15    ; 3 uses
  %i.g = add i8 %i.f, -58
  %or.cond = icmp ult i8 %i.g, -10
  br i1 %or.cond, label %.lr.ph, label %.critedge.preheader, !llvm.loop !69

.critedge.preheader:                              ; preds = %bb.b, %.lr.ph, %.lr.ph, %bb.a
  %.ph = phi i8 [ %i.a, %bb.a ], [ %i.c, %.lr.ph ], [ %i.c, %.lr.ph ], [ %i.f, %bb.b ]
  %.ph40 = phi ptr [ %.promoted, %bb.a ], [ %i.d, %.lr.ph ], [ %i.d, %.lr.ph ], [ %i.e, %bb.b ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge2
  %i.h = phi i8 [ %.pre, %.critedge2 ], [ %.ph, %.critedge.preheader ] ; 4 uses
  %i.i = phi ptr [ %i.l, %.critedge2 ], [ %.ph40, %.critedge.preheader ] ; 3 uses
  %.0 = phi i64 [ %spec.select, %.critedge2 ], [ 1, %.critedge.preheader ] ; 3 uses
  switch i8 %i.h, label %bb.c [
    i8 43, label %.critedge2
    i8 45, label %.critedge2
  ]

.critedge2:                                       ; preds = %.critedge, %.critedge
  %i.j = icmp eq i8 %i.h, 45
  %i.k = sub nsw i64 0, %.0
  %spec.select = select i1 %i.j, i64 %i.k, i64 %.0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !18
  %.pre = load i8, ptr %i.l, align 1, !tbaa !15
  br label %.critedge, !llvm.loop !70

bb.c:                                             ; preds = %.critedge
  %i.m = add i8 %i.h, -58
  %or.cond30.i = icmp ult i8 %i.m, -10
  br i1 %or.cond30.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d, %bb.c
  %.promoted31.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  br label %.lr.ph.i

.critedge.i:                                      ; preds = %bb.c, %bb.d
  %i.n = phi i8 [ %i.r, %bb.d ], [ %i.h, %bb.c ]
  %i.o = phi ptr [ %i.q, %bb.d ], [ %i.i, %bb.c ]
  %i.p = icmp eq i8 %i.n, 0
  br i1 %i.p, label %timelib_get_nr.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !18
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15    ; 2 uses
  %i.s = add i8 %i.r, -58
  %or.cond.i = icmp ult i8 %i.s, -10
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph.preheader.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.033.i = phi i32 [ %i.v, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.t = phi ptr [ %i.u, %.lr.ph.i ], [ %.promoted31.i, %.lr.ph.preheader.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 4 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !18
  %i.v = add nuw nsw i32 %.033.i, 1               ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !15
  %i.x = add i8 %i.w, -48
  %or.cond26.i = icmp ult i8 %i.x, 10
  %i.y = icmp samesign ult i32 %i.v, %1
  %or.cond27.i = select i1 %or.cond26.i, i1 %i.y, i1 false
  br i1 %or.cond27.i, label %.lr.ph.i, label %.critedge2.i, !llvm.loop !1

.critedge2.i:                                     ; preds = %.lr.ph.i
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = ptrtoint ptr %.promoted31.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = add i64 %i.ab, 1
  %i.ad = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.ac) #13 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull align 1 dereferenceable(1) %.promoted31.i, i64 %i.ab, i1 false)
  %i.ae = tail call i64 @__isoc23_strtoll(ptr noundef nonnull %i.ad, ptr noundef null, i32 noundef 10) #9
  tail call void @_efree(ptr noundef nonnull %i.ad) #9
  br label %timelib_get_nr.exit

timelib_get_nr.exit:                              ; preds = %.critedge.i, %.critedge2.i
  %.023.i = phi i64 [ %i.ae, %.critedge2.i ], [ -9999999, %.critedge.i ]
  %i.af = mul i64 %.023.i, %.0
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %timelib_get_nr.exit
end_hunk_1
