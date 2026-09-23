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
  %7 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i64 -9999999, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store i64 -9999999, ptr %8, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store i64 0, ptr %i.az, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store i32 0, ptr %i.ba, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store i32 0, ptr %i.bb, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 228
  store i32 0, ptr %i.bc, align 4, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 232
  store i32 1, ptr %i.bd, align 8, !tbaa !49
  %i.be = tail call ptr @timelib_time_ctor() #9   ; 11 uses
  store <4 x i64> splat (i64 -9999999), ptr %i.be, align 8, !tbaa !38
  %9 = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i64 -9999999, ptr %9, align 8, !tbaa !43
  %10 = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store i64 -9999999, ptr %10, align 8, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i64 0, ptr %i.bf, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store i32 0, ptr %i.bg, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store i32 0, ptr %i.bh, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 228
  store i32 0, ptr %i.bi, align 4, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 232
  store i32 1, ptr %i.bj, align 8, !tbaa !49
  %i.bk = tail call ptr @timelib_rel_time_ctor() #9 ; 14 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i32 0, ptr %i.bq, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  store i32 0, ptr %i.br, align 4, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i32 0, ptr %i.bs, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i8 0, i64 48, i1 false)
  store i64 -9999999, ptr %i.bt, align 8, !tbaa !53
  %i.bu = ptrtoint ptr %i.ax to i64               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.bv = icmp slt i64 %i.at, 0
  br i1 %i.bv, label %.loopexit, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.e
  %i.bw = ptrtoint ptr %i.av to i64               ; 3 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %scan.exit
  %i.bx = phi i64 [ %i.bw, %.lr.ph.i.preheader.lr.ph ], [ %i.uh, %scan.exit ]
  %.sroa.113.0350 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.113.2, %scan.exit ] ; 22 uses
  %.sroa.111.0348 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.111.2, %scan.exit ] ; 22 uses
  %.sroa.109.0342 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.109.1, %scan.exit ] ; 6 uses
  %.sroa.107.0340 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.107.1, %scan.exit ] ; 21 uses
  %.sroa.103.0339 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.103.1, %scan.exit ] ; 19 uses
  %.sroa.100.0337 = phi i32 [ 1, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.100.1, %scan.exit ] ; 21 uses
  %.sroa.21.0335 = phi ptr [ %i.av, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.21.1, %scan.exit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.fs
  %.sroa.33.0 = phi ptr [ %.28.i, %bb.fs ], [ %.sroa.21.0335, %.lr.ph.i.preheader ] ; 72 uses
  %i.by = phi i64 [ %i.ue, %bb.fs ], [ %i.bx, %.lr.ph.i.preheader ] ; 2 uses
  %i.bz = load i8, ptr %.sroa.33.0, align 1, !tbaa !15 ; 11 uses
  %i.ca = icmp ult i8 %i.bz, 45
  br i1 %i.ca, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph.i
  %i.cb = icmp samesign ult i8 %i.bz, 11
  br i1 %i.cb, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cc = icmp eq i8 %i.bz, 0
  br i1 %i.cc, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = icmp samesign ult i8 %i.bz, 9
  br i1 %i.cd, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not569.i = icmp eq i8 %i.bz, 10
  br i1 %.not569.i, label %bb.p, label %bb.r

bb.j:                                             ; preds = %bb.f
  switch i8 %i.bz, label %bb.q [
    i8 44, label %bb.r
    i8 32, label %bb.r
  ]

bb.k:                                             ; preds = %.lr.ph.i
  %i.ce = icmp ult i8 %i.bz, 80
  br i1 %i.ce, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp eq i8 %i.bz, 45
  br i1 %i.cf, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = icmp samesign ult i8 %i.bz, 48
  br i1 %i.cg, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = icmp samesign ult i8 %i.bz, 58
  br i1 %i.ch, label %bb.s, label %bb.q

bb.o:                                             ; preds = %bb.k
  switch i8 %i.bz, label %bb.q [
    i8 80, label %bb.t
    i8 82, label %bb.ak
  ]

bb.p:                                             ; preds = %bb.i, %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1
  br label %bb.fs

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1
  br label %.thread.i112

.thread.i112:                                     ; preds = %bb.fl, %bb.fj, %bb.fi, %bb.fg, %bb.ff, %bb.fc, %bb.fb, %bb.ex, %bb.ew, %bb.ev, %bb.et, %bb.es, %bb.eq, %bb.en, %bb.em, %bb.el, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.ea, %bb.dz, %bb.dw, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dg, %bb.dd, %bb.dc, %bb.db, %bb.cv, %bb.cu, %bb.ct, %bb.cr, %bb.bw, %bb.bu, %bb.av, %bb.al, %bb.ak, %bb.s, %bb.q
  %.1510.i = phi ptr [ %i.cj, %bb.q ], [ %i.gd, %bb.ak ], [ %i.di, %bb.s ], [ %i.di, %bb.fl ], [ %i.di, %bb.fj ], [ %i.di, %bb.fi ], [ %i.di, %bb.fg ], [ %i.di, %bb.ff ], [ %i.di, %bb.fc ], [ %i.di, %bb.fb ], [ %i.di, %bb.ex ], [ %i.di, %bb.ew ], [ %i.di, %bb.ev ], [ %i.di, %bb.et ], [ %i.di, %bb.es ], [ %i.di, %bb.eq ], [ %i.di, %bb.en ], [ %i.di, %bb.em ], [ %i.di, %bb.el ], [ %i.di, %bb.eh ], [ %i.di, %bb.ef ], [ %i.di, %bb.ee ], [ %i.di, %bb.ed ], [ %i.di, %bb.ec ], [ %i.di, %bb.ea ], [ %i.di, %bb.dz ], [ %i.di, %bb.dw ], [ %i.di, %bb.dt ], [ %i.di, %bb.ds ], [ %i.di, %bb.dr ], [ %i.di, %bb.dq ], [ %i.di, %bb.dg ], [ %i.di, %bb.dd ], [ %i.di, %bb.dc ], [ %i.di, %bb.db ], [ %i.di, %bb.cv ], [ %i.di, %bb.cu ], [ %i.di, %bb.ct ], [ %i.di, %bb.cr ], [ %i.di, %bb.bw ], [ %i.di, %bb.bu ], [ %i.di, %bb.av ], [ %i.di, %bb.al ]
  %i.ck = load i32, ptr %i.e, align 8, !tbaa !29
  %i.cl = add i32 %i.ck, 1                        ; 2 uses
  store i32 %i.cl, ptr %i.e, align 8, !tbaa !29
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.cn = sext i32 %i.cl to i64
  %i.co = mul nsw i64 %i.cn, 24
  %i.cp = tail call ptr @_erealloc(ptr noundef %i.cm, i64 noundef %i.co) #11 ; 2 uses
  store ptr %i.cp, ptr %i.d, align 8, !tbaa !30
  %i.cq = ptrtoint ptr %.sroa.33.0 to i64
  %i.cr = sub i64 %i.cq, %i.bw
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = load i32, ptr %i.e, align 8, !tbaa !29
  %i.cu = add i32 %i.ct, -1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [24 x i8], ptr %i.cp, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 %i.cs, ptr %i.cx, align 4, !tbaa !32
  %i.cy = load i8, ptr %.sroa.33.0, align 1, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %i.cy, ptr %i.cz, align 8, !tbaa !33
  %i.da = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.1) #9
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.dc = load i32, ptr %i.e, align 8, !tbaa !29
  %i.dd = add i32 %i.dc, -1
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [24 x i8], ptr %i.db, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store ptr %i.da, ptr %i.dg, align 8, !tbaa !34
  br label %bb.fs

bb.r:                                             ; preds = %bb.m, %bb.j, %bb.j, %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1
  br label %bb.fs

bb.s:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1 ; 42 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = add i8 %i.dj, -48
  %or.cond5.i = icmp ult i8 %i.dk, 10
  br i1 %or.cond5.i, label %bb.al, label %.thread.i112

bb.t:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1 ; 40 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !15  ; 3 uses
  %i.dn = icmp ult i8 %i.dm, 48
  br i1 %i.dn, label %.thread577.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = icmp ult i8 %i.dm, 58
  br i1 %i.do, label %bb.am, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = icmp eq i8 %i.dm, 84
  br i1 %i.dp, label %bb.at, label %.thread577.i

.thread577.i:                                     ; preds = %bb.dl, %bb.ci, %bb.ce, %.lr.ph800, %bb.bn, %bb.cx, %.lr.ph836, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fk, %bb.fh, %bb.fe, %bb.fd, %bb.fa, %bb.ey, %bb.eu, %bb.ep, %bb.eo, %bb.ek, %bb.ei, %bb.eb, %bb.dv, %bb.du, %bb.dp, %bb.do, %bb.dn, %bb.dj, %bb.dh, %bb.da, %bb.cy, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.ch, %bb.cf, %bb.cd, %bb.cc, %bb.ca, %bb.bz, %bb.bs, %bb.br, %bb.bp, %bb.bm, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.v, %bb.t
  %.2.i = phi ptr [ %i.dl, %bb.ao ], [ %i.dl, %bb.t ], [ %i.lm, %bb.cq ], [ %i.li, %bb.cp ], [ %i.la, %bb.co ], [ %i.gs, %bb.at ], [ %i.hv, %bb.bd ], [ %i.hy, %bb.be ], [ %i.ih, %bb.bh ], [ %i.ih, %bb.bj ], [ %i.hy, %bb.bg ], [ %i.iq, %bb.bk ], [ %i.iq, %bb.bm ], [ %i.dl, %bb.v ], [ %i.dl, %bb.cc ], [ %i.dl, %bb.bb ], [ %i.dl, %bb.ar ], [ %i.dl, %bb.fq ], [ %i.dl, %bb.fp ], [ %i.dl, %bb.fo ], [ %i.dl, %bb.fn ], [ %i.dl, %bb.fk ], [ %i.dl, %bb.fh ], [ %i.dl, %bb.fe ], [ %i.dl, %bb.fd ], [ %i.dl, %bb.fa ], [ %i.dl, %bb.ey ], [ %i.dl, %bb.eu ], [ %i.dl, %bb.ep ], [ %i.dl, %bb.eo ], [ %i.dl, %bb.ek ], [ %i.dl, %bb.ei ], [ %i.dl, %bb.eb ], [ %i.dl, %bb.dv ], [ %i.dl, %bb.du ], [ %i.dl, %bb.dj ], [ %i.dl, %bb.dh ], [ %i.dl, %bb.cd ], [ %i.dl, %bb.ca ], [ %i.dl, %bb.bz ], [ %i.dl, %bb.bc ], [ %i.dl, %bb.az ], [ %i.dl, %bb.ay ], [ %i.dl, %bb.as ], [ %i.dl, %bb.ap ], [ %i.iq, %bb.ci ], [ %i.hy, %bb.ce ], [ %i.ih, %.lr.ph800 ], [ %i.gs, %bb.bn ], [ %i.la, %bb.cx ], [ %i.li, %.lr.ph836 ], [ %i.gs, %bb.bp ], [ %i.dl, %bb.do ], [ %i.la, %bb.cy ], [ %i.hy, %bb.cf ], [ %i.dl, %bb.dp ], [ %i.dl, %bb.dn ], [ %i.li, %bb.da ], [ %i.iq, %bb.cn ], [ %i.iq, %bb.cm ], [ %i.iq, %bb.ck ], [ %i.ih, %bb.ch ], [ %i.gs, %bb.bs ], [ %i.gs, %bb.br ], [ %i.dl, %bb.dl ] ; 4 uses
  %i.dq = ptrtoint ptr %.2.i to i64               ; 2 uses
  %reass.sub356 = sub i64 %i.dq, %i.by
  %i.dr = add i64 %reass.sub356, 1
  %i.ds = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.dr) #13 ; 6 uses
  %i.dt = ptrtoint ptr %.sroa.33.0 to i64         ; 2 uses
  %i.du = sub i64 %i.dq, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull align 1 %.sroa.33.0, i64 %i.du, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !18
  %.pre.i = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dw = sub i64 %i.dt, %i.bw
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.aj, %.thread577.i
  %i.dy = phi i8 [ %.pre.i, %.thread577.i ], [ %i.gc, %bb.aj ] ; 2 uses
  %i.dz = phi ptr [ %i.ds, %.thread577.i ], [ %i.ez, %bb.aj ]
  %.0505.i = phi i32 [ 0, %.thread577.i ], [ %.1.i, %bb.aj ]
  %i.ea = icmp eq i8 %i.dy, 84
  br i1 %i.ea, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 2 ; 2 uses
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !18
  %.pre746.i = load i8, ptr %i.eb, align 1, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ec = phi i8 [ %.pre746.i, %bb.x ], [ %i.dy, %bb.w ]
  %.1.i = phi i32 [ 1, %bb.x ], [ %.0505.i, %bb.w ] ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %add_error.exit572.i, label %bb.z

add_error.exit572.i:                              ; preds = %bb.y
  %i.ee = load i32, ptr %i.e, align 8, !tbaa !29
  %i.ef = add i32 %i.ee, 1                        ; 2 uses
  store i32 %i.ef, ptr %i.e, align 8, !tbaa !29
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.eh = sext i32 %i.ef to i64
  %i.ei = mul nsw i64 %i.eh, 24
  %i.ej = tail call ptr @_erealloc(ptr noundef %i.eg, i64 noundef %i.ei) #11 ; 2 uses
  store ptr %i.ej, ptr %i.d, align 8, !tbaa !30
  %i.ek = load i32, ptr %i.e, align 8, !tbaa !29
  %i.el = add i32 %i.ek, -1
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [24 x i8], ptr %i.ej, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %i.dx, ptr %i.eo, align 4, !tbaa !32
  %i.ep = load i8, ptr %.sroa.33.0, align 1, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i8 %i.ep, ptr %i.eq, align 8, !tbaa !33
  %i.er = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.2) #9
  %i.es = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.et = load i32, ptr %i.e, align 8, !tbaa !29
  %i.eu = add i32 %i.et, -1
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [24 x i8], ptr %i.es, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr %i.er, ptr %i.ex, align 8, !tbaa !34
  br label %scan.exit

bb.z:                                             ; preds = %bb.y
  %i.ey = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 12) ; 7 uses
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !15
  switch i8 %i.fa, label %add_error.exit575.i [
    i8 89, label %bb.aa
    i8 87, label %bb.ab
    i8 68, label %bb.ac
    i8 72, label %bb.ad
    i8 83, label %bb.ae
    i8 77, label %bb.af
  ]

bb.aa:                                            ; preds = %bb.z
  store i64 %i.ey, ptr %i.bk, align 8, !tbaa !54
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.fb = mul i64 %i.ey, 7
  %i.fc = load i64, ptr %i.bl, align 8, !tbaa !55
  %i.fd = add i64 %i.fc, %i.fb
  store i64 %i.fd, ptr %i.bl, align 8, !tbaa !55
  br label %bb.ai

bb.ac:                                            ; preds = %bb.z
  %i.fe = load i64, ptr %i.bl, align 8, !tbaa !55
  %i.ff = add i64 %i.fe, %i.ey
  store i64 %i.ff, ptr %i.bl, align 8, !tbaa !55
  br label %bb.ai

bb.ad:                                            ; preds = %bb.z
  store i64 %i.ey, ptr %i.bn, align 8, !tbaa !56
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  store i64 %i.ey, ptr %i.bp, align 8, !tbaa !57
  br label %bb.ai

bb.af:                                            ; preds = %bb.z
  %.not566.i = icmp eq i32 %.1.i, 0
  br i1 %.not566.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 %i.ey, ptr %i.bo, align 8, !tbaa !58
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i64 %i.ey, ptr %i.bm, align 8, !tbaa !59
  br label %bb.ai

add_error.exit575.i:                              ; preds = %bb.z
  %i.fg = load i32, ptr %i.e, align 8, !tbaa !29
  %i.fh = add i32 %i.fg, 1                        ; 2 uses
  store i32 %i.fh, ptr %i.e, align 8, !tbaa !29
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.fj = sext i32 %i.fh to i64
  %i.fk = mul nsw i64 %i.fj, 24
  %i.fl = tail call ptr @_erealloc(ptr noundef %i.fi, i64 noundef %i.fk) #11 ; 2 uses
  store ptr %i.fl, ptr %i.d, align 8, !tbaa !30
  %i.fm = load i32, ptr %i.e, align 8, !tbaa !29
  %i.fn = add i32 %i.fm, -1
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [24 x i8], ptr %i.fl, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %i.dx, ptr %i.fq, align 4, !tbaa !32
  %i.fr = load i8, ptr %.sroa.33.0, align 1, !tbaa !15
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i8 %i.fr, ptr %i.fs, align 8, !tbaa !33
  %i.ft = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.3) #9
  %i.fu = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.fv = load i32, ptr %i.e, align 8, !tbaa !29
  %i.fw = add i32 %i.fv, -1
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [24 x i8], ptr %i.fu, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr %i.ft, ptr %i.fz, align 8, !tbaa !34
  br label %bb.ai

bb.ai:                                            ; preds = %add_error.exit575.i, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 2 uses
  store ptr %i.ga, ptr %i.a, align 8, !tbaa !18
  %i.gb = load i32, ptr %i.e, align 8, !tbaa !29
  %.not567.i = icmp eq i32 %i.gb, 0
  br i1 %.not567.i, label %bb.aj, label %scan.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gc = load i8, ptr %i.ga, align 1, !tbaa !15  ; 2 uses
  %.not568.i = icmp eq i8 %i.gc, 0
  br i1 %.not568.i, label %scan.exit, label %bb.w, !llvm.loop !21

bb.ak:                                            ; preds = %bb.o
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 1 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !15
  %i.gf = add i8 %i.ge, -58
  %.not.i111 = icmp ult i8 %i.gf, -10
  br i1 %.not.i111, label %.thread.i112, label %.preheader603.i.preheader

.preheader603.i.preheader:                        ; preds = %bb.ak
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 2 ; 2 uses
  %.not551.i768 = icmp ugt ptr %i.ax, %i.gg
  br i1 %.not551.i768, label %.lr.ph, label %.loopexit

bb.al:                                            ; preds = %bb.s
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !15
  %i.gj = add i8 %i.gi, -48
  %or.cond8.i = icmp ult i8 %i.gj, 10
  br i1 %or.cond8.i, label %bb.av, label %.thread.i112

bb.am:                                            ; preds = %bb.u
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 2 ; 5 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !15  ; 7 uses
  %i.gm = icmp ult i8 %i.gl, 77
  br i1 %i.gm, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.gn = icmp samesign ult i8 %i.gl, 58
  br i1 %i.gn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.go = icmp samesign ult i8 %i.gl, 48
  br i1 %i.go, label %.thread577.i, label %bb.aw

bb.ap:                                            ; preds = %bb.an
  %i.gp = icmp eq i8 %i.gl, 68
  br i1 %i.gp, label %bb.bd, label %.thread577.i

bb.aq:                                            ; preds = %bb.am
  %i.gq = icmp ult i8 %i.gl, 88
  br i1 %i.gq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  switch i8 %i.gl, label %.thread577.i [
    i8 77, label %bb.be
    i8 87, label %bb.bh
  ]

bb.as:                                            ; preds = %bb.aq
  %i.gr = icmp eq i8 %i.gl, 89
  br i1 %i.gr, label %bb.bk, label %.thread577.i

bb.at:                                            ; preds = %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.v
  %.3.i = phi ptr [ %i.hv, %bb.bd ], [ %i.ih, %bb.bj ], [ %i.hy, %bb.bg ], [ %i.iq, %bb.bm ], [ %i.dl, %bb.v ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 7 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !15
  %i.gu = add i8 %i.gt, -48
  %or.cond11.i = icmp ult i8 %i.gu, 10
  br i1 %or.cond11.i, label %.preheader588.i.preheader, label %.thread577.i

.preheader588.i.preheader:                        ; preds = %bb.at
  %i.gv = getelementptr inbounds nuw i8, ptr %.3.i, i64 2 ; 2 uses
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.bu, %i.gw
  %i.gy = icmp slt i64 %i.gx, 2
  br i1 %i.gy, label %.loopexit, label %.lr.ph812

.preheader603.i:                                  ; preds = %.lr.ph
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ha, i64 1 ; 2 uses
  %.not551.i = icmp ugt ptr %i.ax, %i.gz
  br i1 %.not551.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader603.i.preheader, %.preheader603.i
  %i.ha = phi ptr [ %i.gz, %.preheader603.i ], [ %i.gg, %.preheader603.i.preheader ] ; 4 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !15
  %i.hc = add i8 %i.hb, -58
  %.not552.i = icmp ult i8 %i.hc, -10
  br i1 %.not552.i, label %bb.au, label %.preheader603.i

bb.au:                                            ; preds = %.lr.ph
  %i.hd = ptrtoint ptr %i.ha to i64               ; 2 uses
  %reass.sub = sub i64 %i.hd, %i.by
  %i.he = add i64 %reass.sub, 1
  %i.hf = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.he) #13 ; 3 uses
  %i.hg = ptrtoint ptr %.sroa.33.0 to i64
  %i.hh = sub i64 %i.hd, %i.hg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hf, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.33.0, i64 %i.hh, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  store ptr %i.hi, ptr %i.a, align 8, !tbaa !18
  %i.hj = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 9)
  %i.hk = trunc i64 %i.hj to i32
  br label %scan.exit

bb.av:                                            ; preds = %bb.al
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 3
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !15
  %i.hn = add i8 %i.hm, -48
  %or.cond14.i = icmp ult i8 %i.hn, 10
  br i1 %or.cond14.i, label %bb.bt, label %.thread.i112

bb.aw:                                            ; preds = %bb.ao
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 3 ; 5 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !15  ; 7 uses
  %i.hq = icmp ult i8 %i.hp, 77
  br i1 %i.hq, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.hr = icmp samesign ult i8 %i.hp, 58
  br i1 %i.hr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hs = icmp samesign ult i8 %i.hp, 48
  br i1 %i.hs, label %.thread577.i, label %bb.bx

bb.az:                                            ; preds = %bb.ax
  %.not555.i = icmp eq i8 %i.hp, 68
  br i1 %.not555.i, label %bb.bd, label %.thread577.i

bb.ba:                                            ; preds = %bb.aw
  %i.ht = icmp ult i8 %i.hp, 88
  br i1 %i.ht, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  switch i8 %i.hp, label %.thread577.i [
    i8 77, label %bb.be
    i8 87, label %bb.bh
  ]

bb.bc:                                            ; preds = %bb.ba
  %i.hu = icmp eq i8 %i.hp, 89
  br i1 %i.hu, label %bb.bk, label %.thread577.i

bb.bd:                                            ; preds = %bb.dn, %bb.ck, %bb.ch, %bb.cf, %bb.ca, %bb.az, %bb.ap
  %.5.i = phi ptr [ %.18669.i, %bb.dn ], [ %i.kc, %bb.cf ], [ %i.kk, %bb.ch ], [ %i.kt, %bb.ck ], [ %i.jq, %bb.ca ], [ %i.ho, %bb.az ], [ %i.gk, %bb.ap ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 3 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !15
  %i.hx = icmp eq i8 %i.hw, 84
  br i1 %i.hx, label %bb.at, label %.thread577.i

bb.be:                                            ; preds = %bb.do, %bb.cm, %bb.cc, %bb.bb, %bb.ar
  %.6.i = phi ptr [ %.18.lcssa.i, %bb.do ], [ %i.kt, %bb.cm ], [ %i.jq, %bb.cc ], [ %i.ho, %bb.bb ], [ %i.gk, %bb.ar ] ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.6.i, i64 1 ; 6 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !15  ; 3 uses
  %i.ia = icmp ult i8 %i.hz, 48
  br i1 %i.ia, label %.thread577.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ib = icmp ult i8 %i.hz, 58
  br i1 %i.ib, label %.preheader594.i.preheader, label %bb.bg

.preheader594.i.preheader:                        ; preds = %bb.bf
  %i.ic = getelementptr inbounds nuw i8, ptr %.6.i, i64 2 ; 2 uses
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = sub i64 %i.bu, %i.id
  %i.if = icmp slt i64 %i.ie, 3
  br i1 %i.if, label %.loopexit, label %.lr.ph789

bb.bg:                                            ; preds = %bb.bf
  %i.ig = icmp eq i8 %i.hz, 84
end_hunk_0
begin_hunk_1_@timelib_strtointerval:bb.a

bb.ei:                                            ; preds = %bb.eb
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 9
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !15  ; 3 uses
  %i.pm = icmp ult i8 %i.pl, 48
  br i1 %i.pm, label %.thread577.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pn = icmp ult i8 %i.pl, 51
  br i1 %i.pn, label %bb.eo, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.po = icmp eq i8 %i.pl, 51
  br i1 %i.po, label %bb.ep, label %.thread577.i

bb.el:                                            ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !15
  %i.pr = icmp eq i8 %i.pq, 84
  br i1 %i.pr, label %bb.eq, label %.thread.i112

bb.em:                                            ; preds = %bb.eg
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !15
  %i.pu = add i8 %i.pt, -48
  %or.cond65.i = icmp ult i8 %i.pu, 10
  br i1 %or.cond65.i, label %bb.et, label %.thread.i112

bb.en:                                            ; preds = %bb.eh
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !15
  %i.px = add i8 %i.pw, -48
  %or.cond68.i = icmp ult i8 %i.px, 5
  br i1 %or.cond68.i, label %bb.et, label %.thread.i112

bb.eo:                                            ; preds = %bb.ej
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !15
  %i.qa = add i8 %i.pz, -48
  %or.cond71.i = icmp ult i8 %i.qa, 10
  br i1 %or.cond71.i, label %bb.eu, label %.thread577.i

bb.ep:                                            ; preds = %bb.ek
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 10
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !15
  %i.qd = and i8 %i.qc, -2
  %or.cond74.i = icmp eq i8 %i.qd, 48
  br i1 %or.cond74.i, label %bb.eu, label %.thread577.i

bb.eq:                                            ; preds = %bb.el
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 11
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !15  ; 3 uses
  %i.qg = icmp ult i8 %i.qf, 48
  br i1 %i.qg, label %.thread.i112, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qh = icmp ult i8 %i.qf, 50
  br i1 %i.qh, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qi = icmp eq i8 %i.qf, 50
  br i1 %i.qi, label %bb.ew, label %.thread.i112

bb.et:                                            ; preds = %bb.en, %bb.em
  %i.qj = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 11
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !15
  %i.ql = add i8 %i.qk, -48
  %or.cond77.i = icmp ult i8 %i.ql, 6
  br i1 %or.cond77.i, label %bb.ex, label %.thread.i112

bb.eu:                                            ; preds = %bb.ep, %bb.eo
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 11
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !15
  %i.qo = icmp eq i8 %i.qn, 84
  br i1 %i.qo, label %bb.ey, label %.thread577.i

bb.ev:                                            ; preds = %bb.er
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 12
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !15
  %i.qr = add i8 %i.qq, -48
  %or.cond80.i = icmp ult i8 %i.qr, 10
  br i1 %or.cond80.i, label %bb.fb, label %.thread.i112

bb.ew:                                            ; preds = %bb.es
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 12
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !15
  %i.qu = add i8 %i.qt, -48
  %or.cond83.i = icmp ult i8 %i.qu, 5
  br i1 %or.cond83.i, label %bb.fb, label %.thread.i112

bb.ex:                                            ; preds = %bb.et
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 12
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !15
  %i.qx = add i8 %i.qw, -48
  %or.cond86.i = icmp ult i8 %i.qx, 10
  br i1 %or.cond86.i, label %bb.fc, label %.thread.i112

bb.ey:                                            ; preds = %bb.eu
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 12
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !15  ; 3 uses
  %i.ra = icmp ult i8 %i.qz, 48
  br i1 %i.ra, label %.thread577.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.rb = icmp ult i8 %i.qz, 50
  br i1 %i.rb, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.rc = icmp eq i8 %i.qz, 50
  br i1 %i.rc, label %bb.fe, label %.thread577.i

bb.fb:                                            ; preds = %bb.ew, %bb.ev
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 13
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !15
  %i.rf = icmp eq i8 %i.re, 58
  br i1 %i.rf, label %bb.ff, label %.thread.i112

bb.fc:                                            ; preds = %bb.fl, %bb.ex
  %i.rg = phi i64 [ 16, %bb.fl ], [ 12, %bb.ex ]  ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 %i.rg ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 1
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !15
  %i.rk = add i8 %i.rj, -48
  %or.cond89.i = icmp ult i8 %i.rk, 6
  br i1 %or.cond89.i, label %bb.fg, label %.thread.i112

bb.fd:                                            ; preds = %bb.ez
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 13
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !15
  %i.rn = add i8 %i.rm, -48
  %or.cond92.i = icmp ult i8 %i.rn, 10
  br i1 %or.cond92.i, label %bb.fh, label %.thread577.i

bb.fe:                                            ; preds = %bb.fa
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 13
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !15
  %i.rq = add i8 %i.rp, -48
  %or.cond95.i = icmp ult i8 %i.rq, 5
  br i1 %or.cond95.i, label %bb.fh, label %.thread577.i

bb.ff:                                            ; preds = %bb.fb
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 14
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !15
  %i.rt = add i8 %i.rs, -48
  %or.cond98.i = icmp ult i8 %i.rt, 6
  br i1 %or.cond98.i, label %bb.fi, label %.thread.i112

bb.fg:                                            ; preds = %bb.fc
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rh, i64 2
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !15
  %i.rw = add i8 %i.rv, -48
  %or.cond101.i = icmp ult i8 %i.rw, 10
  br i1 %or.cond101.i, label %bb.fj, label %.thread.i112

bb.fh:                                            ; preds = %bb.fe, %bb.fd
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 14
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !15
  %i.rz = icmp eq i8 %i.ry, 58
  br i1 %i.rz, label %bb.fk, label %.thread577.i

bb.fi:                                            ; preds = %bb.ff
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 15
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !15
  %i.sc = add i8 %i.sb, -48
  %or.cond104.i = icmp ult i8 %i.sc, 10
  br i1 %or.cond104.i, label %bb.fl, label %.thread.i112

bb.fj:                                            ; preds = %bb.fg
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rh, i64 3
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !15
  %i.sf = icmp eq i8 %i.se, 90
  br i1 %i.sf, label %bb.fm, label %.thread.i112

bb.fk:                                            ; preds = %bb.fh
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 15
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !15
  %i.si = add i8 %i.sh, -48
  %or.cond107.i = icmp ult i8 %i.si, 6
  br i1 %or.cond107.i, label %bb.fn, label %.thread577.i

bb.fl:                                            ; preds = %bb.fi
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 16
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !15
  %i.sl = icmp eq i8 %i.sk, 58
  br i1 %i.sl, label %bb.fc, label %.thread.i112

bb.fm:                                            ; preds = %bb.fj
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  %.not564.i = icmp eq i32 %.sroa.109.0342, 0
  %.not565.i = icmp eq i32 %.sroa.103.0339, 0
  %or.cond = select i1 %.not564.i, i1 %.not565.i, i1 false ; 3 uses
  %.sroa.111.1 = select i1 %or.cond, i32 1, i32 %.sroa.111.0348
  %.sroa.113.1 = select i1 %or.cond, i32 %.sroa.113.0350, i32 1
  %.0.i = select i1 %or.cond, ptr %i.ay, ptr %i.be ; 6 uses
  %i.sn = add nuw nsw i64 %i.rg, 5
  %i.so = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.sn) #13 ; 3 uses
  %i.sp = add nuw nsw i64 %i.rg, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.so, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.33.0, i64 %i.sp, i1 false)
  store ptr %i.so, ptr %i.a, align 8, !tbaa !18
  %i.sq = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 4)
  store i64 %i.sq, ptr %.0.i, align 8, !tbaa !60
  %i.sr = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.ss = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %i.sr, ptr %i.ss, align 8, !tbaa !61
  %i.st = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.su = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i64 %i.st, ptr %i.su, align 8, !tbaa !62
  %i.sv = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.sw = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i64 %i.sv, ptr %i.sw, align 8, !tbaa !63
  %i.sx = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.sy = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i64 %i.sx, ptr %i.sy, align 8, !tbaa !43
  %i.sz = call fastcc i64 @timelib_get_nr(ptr noundef %i.a, i32 noundef 2)
  %i.ta = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %i.sz, ptr %i.ta, align 8, !tbaa !44
  br label %scan.exit

bb.fn:                                            ; preds = %bb.fk
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 16
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !15
  %i.td = add i8 %i.tc, -58
  %or.cond110.i = icmp ult i8 %i.td, -10
  br i1 %or.cond110.i, label %.thread577.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 17
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !15
  %.not563.i = icmp eq i8 %i.tf, 58
  br i1 %.not563.i, label %bb.fp, label %.thread577.i

bb.fp:                                            ; preds = %bb.fo
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 18
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !15
  %i.ti = add i8 %i.th, -54
  %or.cond113.i = icmp ult i8 %i.ti, -6
  br i1 %or.cond113.i, label %.thread577.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 19
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !15
  %i.tl = add i8 %i.tk, -58
  %or.cond116.i = icmp ult i8 %i.tl, -10
  br i1 %or.cond116.i, label %.thread577.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.33.0, i64 20
  %i.tn = tail call noalias dereferenceable_or_null(21) ptr @_ecalloc(i64 noundef 1, i64 noundef 21) #13 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.tn, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.33.0, i64 20, i1 false)
  store ptr %i.tn, ptr %i.a, align 8, !tbaa !18
  %i.to = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 4)
  store i64 %i.to, ptr %i.bk, align 8, !tbaa !54
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 1
  store ptr %i.tq, ptr %i.a, align 8, !tbaa !18
  %i.tr = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.tr, ptr %i.bm, align 8, !tbaa !59
  %i.ts = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  store ptr %i.tt, ptr %i.a, align 8, !tbaa !18
  %i.tu = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.tu, ptr %i.bl, align 8, !tbaa !55
  %i.tv = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 1
  store ptr %i.tw, ptr %i.a, align 8, !tbaa !18
  %i.tx = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.tx, ptr %i.bn, align 8, !tbaa !56
  %i.ty = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  store ptr %i.tz, ptr %i.a, align 8, !tbaa !18
  %i.ua = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.ua, ptr %i.bo, align 8, !tbaa !58
  %i.ub = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  store ptr %i.uc, ptr %i.a, align 8, !tbaa !18
  %i.ud = call fastcc i64 @timelib_get_unsigned_nr(ptr noundef %i.a, i32 noundef 2)
  store i64 %i.ud, ptr %i.bp, align 8, !tbaa !57
  br label %scan.exit

bb.fs:                                            ; preds = %bb.r, %.thread.i112, %bb.p
  %.28.i = phi ptr [ %i.ci, %bb.p ], [ %.1510.i, %.thread.i112 ], [ %i.dh, %bb.r ] ; 2 uses
  %i.ue = ptrtoint ptr %.28.i to i64              ; 2 uses
  %i.uf = sub i64 %i.bu, %i.ue
  %i.ug = icmp slt i64 %i.uf, 20
  br i1 %i.ug, label %.loopexit, label %.lr.ph.i

scan.exit:                                        ; preds = %bb.ai, %bb.aj, %add_error.exit572.i, %bb.au, %bb.fm, %bb.fr
  %.sink = phi ptr [ %i.tn, %bb.fr ], [ %i.hf, %bb.au ], [ %i.so, %bb.fm ], [ %i.ds, %add_error.exit572.i ], [ %i.ds, %bb.aj ], [ %i.ds, %bb.ai ]
  %.sroa.21.1 = phi ptr [ %i.tm, %bb.fr ], [ %i.ha, %bb.au ], [ %i.sm, %bb.fm ], [ %.2.i, %add_error.exit572.i ], [ %.2.i, %bb.aj ], [ %.2.i, %bb.ai ] ; 2 uses
  %.sroa.100.1 = phi i32 [ %.sroa.100.0337, %bb.fr ], [ %i.hk, %bb.au ], [ %.sroa.100.0337, %bb.fm ], [ %.sroa.100.0337, %add_error.exit572.i ], [ %.sroa.100.0337, %bb.aj ], [ %.sroa.100.0337, %bb.ai ] ; 2 uses
  %.sroa.103.1 = phi i32 [ 1, %bb.fr ], [ %.sroa.103.0339, %bb.au ], [ %.sroa.103.0339, %bb.fm ], [ 1, %add_error.exit572.i ], [ 1, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %.sroa.107.1 = phi i32 [ %.sroa.107.0340, %bb.fr ], [ 1, %bb.au ], [ %.sroa.107.0340, %bb.fm ], [ %.sroa.107.0340, %add_error.exit572.i ], [ %.sroa.107.0340, %bb.aj ], [ %.sroa.107.0340, %bb.ai ] ; 2 uses
  %.sroa.109.1 = phi i32 [ %.sroa.109.0342, %bb.fr ], [ %.sroa.109.0342, %bb.au ], [ 1, %bb.fm ], [ %.sroa.109.0342, %add_error.exit572.i ], [ %.sroa.109.0342, %bb.aj ], [ %.sroa.109.0342, %bb.ai ]
  %.sroa.111.2 = phi i32 [ %.sroa.111.0348, %bb.fr ], [ %.sroa.111.0348, %bb.au ], [ %.sroa.111.1, %bb.fm ], [ %.sroa.111.0348, %add_error.exit572.i ], [ %.sroa.111.0348, %bb.aj ], [ %.sroa.111.0348, %bb.ai ] ; 2 uses
  %.sroa.113.2 = phi i32 [ %.sroa.113.0350, %bb.fr ], [ %.sroa.113.0350, %bb.au ], [ %.sroa.113.1, %bb.fm ], [ %.sroa.113.0350, %add_error.exit572.i ], [ %.sroa.113.0350, %bb.aj ], [ %.sroa.113.0350, %bb.ai ] ; 2 uses
  tail call void @_efree(ptr noundef %.sink) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.uh = ptrtoint ptr %.sroa.21.1 to i64         ; 2 uses
  %i.ui = sub i64 %i.bu, %i.uh
  %i.uj = icmp slt i64 %i.ui, 20
  br i1 %i.uj, label %.loopexit, label %.lr.ph.i.preheader, !llvm.loop !22

.loopexit:                                        ; preds = %scan.exit, %.preheader603.i.preheader, %.preheader597.i.preheader, %.preheader594.i.preheader, %.preheader591.i.preheader, %.preheader588.i.preheader, %.preheader585.i.preheader, %.preheader.i.preheader, %bb.fs, %.preheader603.i, %bb.dm, %.preheader597.i, %.preheader594.i, %.preheader591.i, %.preheader588.i, %.preheader585.i, %.preheader.i, %bb.e
  %.sroa.100.0330 = phi i32 [ %.sroa.100.0337, %.preheader603.i ], [ %.sroa.100.0337, %bb.fs ], [ %.sroa.100.0337, %.preheader.i ], [ %.sroa.100.0337, %bb.dm ], [ %.sroa.100.0337, %.preheader585.i ], [ %.sroa.100.0337, %.preheader594.i ], [ %.sroa.100.0337, %.preheader588.i ], [ %.sroa.100.0337, %.preheader591.i ], [ %.sroa.100.0337, %.preheader597.i ], [ 1, %bb.e ], [ %.sroa.100.1, %scan.exit ], [ %.sroa.100.0337, %.preheader591.i.preheader ], [ %.sroa.100.0337, %.preheader594.i.preheader ], [ %.sroa.100.0337, %.preheader597.i.preheader ], [ %.sroa.100.0337, %.preheader603.i.preheader ], [ %.sroa.100.0337, %.preheader.i.preheader ], [ %.sroa.100.0337, %.preheader585.i.preheader ], [ %.sroa.100.0337, %.preheader588.i.preheader ]
  %.sroa.103.0320 = phi i32 [ %.sroa.103.0339, %.preheader603.i ], [ %.sroa.103.0339, %bb.fs ], [ %.sroa.103.0339, %.preheader.i ], [ %.sroa.103.0339, %bb.dm ], [ %.sroa.103.0339, %.preheader585.i ], [ %.sroa.103.0339, %.preheader594.i ], [ %.sroa.103.0339, %.preheader588.i ], [ %.sroa.103.0339, %.preheader591.i ], [ %.sroa.103.0339, %.preheader597.i ], [ 0, %bb.e ], [ %.sroa.103.1, %scan.exit ], [ %.sroa.103.0339, %.preheader591.i.preheader ], [ %.sroa.103.0339, %.preheader594.i.preheader ], [ %.sroa.103.0339, %.preheader597.i.preheader ], [ %.sroa.103.0339, %.preheader603.i.preheader ], [ %.sroa.103.0339, %.preheader.i.preheader ], [ %.sroa.103.0339, %.preheader585.i.preheader ], [ %.sroa.103.0339, %.preheader588.i.preheader ]
  %.sroa.107.0310 = phi i32 [ %.sroa.107.0340, %.preheader603.i ], [ %.sroa.107.0340, %bb.fs ], [ %.sroa.107.0340, %.preheader.i ], [ %.sroa.107.0340, %bb.dm ], [ %.sroa.107.0340, %.preheader585.i ], [ %.sroa.107.0340, %.preheader594.i ], [ %.sroa.107.0340, %.preheader588.i ], [ %.sroa.107.0340, %.preheader591.i ], [ %.sroa.107.0340, %.preheader597.i ], [ 0, %bb.e ], [ %.sroa.107.1, %scan.exit ], [ %.sroa.107.0340, %.preheader591.i.preheader ], [ %.sroa.107.0340, %.preheader594.i.preheader ], [ %.sroa.107.0340, %.preheader597.i.preheader ], [ %.sroa.107.0340, %.preheader603.i.preheader ], [ %.sroa.107.0340, %.preheader.i.preheader ], [ %.sroa.107.0340, %.preheader585.i.preheader ], [ %.sroa.107.0340, %.preheader588.i.preheader ]
  %.sroa.111.0300 = phi i32 [ %.sroa.111.0348, %.preheader603.i ], [ %.sroa.111.0348, %bb.fs ], [ %.sroa.111.0348, %.preheader.i ], [ %.sroa.111.0348, %bb.dm ], [ %.sroa.111.0348, %.preheader585.i ], [ %.sroa.111.0348, %.preheader594.i ], [ %.sroa.111.0348, %.preheader588.i ], [ %.sroa.111.0348, %.preheader591.i ], [ %.sroa.111.0348, %.preheader597.i ], [ 0, %bb.e ], [ %.sroa.111.2, %scan.exit ], [ %.sroa.111.0348, %.preheader591.i.preheader ], [ %.sroa.111.0348, %.preheader594.i.preheader ], [ %.sroa.111.0348, %.preheader597.i.preheader ], [ %.sroa.111.0348, %.preheader603.i.preheader ], [ %.sroa.111.0348, %.preheader.i.preheader ], [ %.sroa.111.0348, %.preheader585.i.preheader ], [ %.sroa.111.0348, %.preheader588.i.preheader ]
  %.sroa.113.0290 = phi i32 [ %.sroa.113.0350, %.preheader603.i ], [ %.sroa.113.0350, %bb.fs ], [ %.sroa.113.0350, %.preheader.i ], [ %.sroa.113.0350, %bb.dm ], [ %.sroa.113.0350, %.preheader585.i ], [ %.sroa.113.0350, %.preheader594.i ], [ %.sroa.113.0350, %.preheader588.i ], [ %.sroa.113.0350, %.preheader591.i ], [ %.sroa.113.0350, %.preheader597.i ], [ 0, %bb.e ], [ %.sroa.113.2, %scan.exit ], [ %.sroa.113.0350, %.preheader591.i.preheader ], [ %.sroa.113.0350, %.preheader594.i.preheader ], [ %.sroa.113.0350, %.preheader597.i.preheader ], [ %.sroa.113.0350, %.preheader603.i.preheader ], [ %.sroa.113.0350, %.preheader.i.preheader ], [ %.sroa.113.0350, %.preheader585.i.preheader ], [ %.sroa.113.0350, %.preheader588.i.preheader ]
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
  store ptr %i.be, ptr %3, align 8, !tbaa !65
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  tail call void @timelib_time_dtor(ptr noundef nonnull %i.be) #9
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.not108 = icmp eq i32 %.sroa.103.0320, 0
  br i1 %.not108, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  store ptr %i.bk, ptr %4, align 8, !tbaa !67
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  tail call void @timelib_rel_time_dtor(ptr noundef nonnull %i.bk) #9
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
  %.016 = phi i64 [ %i.af, %timelib_get_nr.exit ], [ -9999999, %.lr.ph ]
  ret i64 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @timelib_get_nr(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 2, 13) %1) unnamed_addr #0 {
bb.a:
  %.promoted = load ptr, ptr %0, align 8, !tbaa !18 ; 3 uses
  %i.a = load i8, ptr %.promoted, align 1, !tbaa !15 ; 2 uses
  %i.b = add i8 %i.a, -58
  %or.cond30 = icmp ult i8 %i.b, -10
  br i1 %or.cond30, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.a
  %.promoted31 = phi ptr [ %.promoted, %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  br label %.lr.ph

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.c = phi i8 [ %i.g, %bb.b ], [ %i.a, %bb.a ]
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.promoted, %bb.a ]
  %i.e = icmp eq i8 %i.c, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15    ; 2 uses
  %i.h = add i8 %i.g, -58
  %or.cond = icmp ult i8 %i.h, -10
  br i1 %or.cond, label %.critedge, label %.lr.ph.preheader, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.033 = phi i32 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.i = phi ptr [ %i.j, %.lr.ph ], [ %.promoted31, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !18
  %i.k = add nuw nsw i32 %.033, 1                 ; 2 uses
  %i.l = load i8, ptr %i.j, align 1, !tbaa !15
  %i.m = add i8 %i.l, -48
  %or.cond26 = icmp ult i8 %i.m, 10
  %i.n = icmp samesign ult i32 %i.k, %1
  %or.cond27 = select i1 %or.cond26, i1 %i.n, i1 false
  br i1 %or.cond27, label %.lr.ph, label %.critedge2, !llvm.loop !1

.critedge2:                                       ; preds = %.lr.ph
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %.promoted31 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, 1
  %i.s = tail call noalias ptr @_ecalloc(i64 noundef 1, i64 noundef %i.r) #13 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %.promoted31, i64 %i.q, i1 false)
  %i.t = tail call i64 @__isoc23_strtoll(ptr noundef nonnull %i.s, ptr noundef null, i32 noundef 10) #9
  tail call void @_efree(ptr noundef nonnull %i.s) #9
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %.critedge2
  %.023 = phi i64 [ %i.t, %.critedge2 ], [ -9999999, %.critedge ]
  ret i64 %.023
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 omnipotent char", !14, i64 0}
!18 = !{!17, !17, i64 0}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = !{!"p1 short", !14, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"short", !10, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 _ZTS22_timelib_error_message", !14, i64 0}
!28 = !{!"_timelib_error_container", !27, i64 0, !27, i64 8, !11, i64 16, !11, i64 20}
!29 = !{!28, !11, i64 16}
!30 = !{!28, !27, i64 0}
!31 = !{!"_timelib_error_message", !11, i64 0, !11, i64 4, !10, i64 8, !17, i64 16}
!32 = !{!31, !11, i64 4}
!33 = !{!31, !10, i64 8}
!34 = !{!31, !17, i64 16}
!35 = !{!"p1 _ZTS24_timelib_error_container", !14, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"long long", !10, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTS15_timelib_tzinfo", !14, i64 0}
!40 = !{!"", !11, i64 0, !37, i64 8}
!41 = !{!"_timelib_rel_time", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !37, i64 72, !40, i64 80, !11, i64 96, !11, i64 100}
!42 = !{!"_timelib_time", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !11, i64 56, !17, i64 64, !39, i64 72, !11, i64 80, !41, i64 88, !37, i64 192, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232}
!43 = !{!42, !37, i64 32}
!44 = !{!42, !37, i64 40}
!45 = !{!42, !37, i64 48}
!46 = !{!42, !11, i64 56}
!47 = !{!42, !11, i64 80}
!48 = !{!42, !11, i64 228}
!49 = !{!42, !11, i64 232}
!50 = !{!41, !11, i64 56}
!51 = !{!41, !11, i64 60}
!52 = !{!41, !11, i64 64}
!53 = !{!41, !37, i64 72}
!54 = !{!41, !37, i64 0}
!55 = !{!41, !37, i64 16}
!56 = !{!41, !37, i64 24}
!57 = !{!41, !37, i64 40}
!58 = !{!41, !37, i64 32}
!59 = !{!41, !37, i64 8}
!60 = !{!42, !37, i64 0}
!61 = !{!42, !37, i64 8}
!62 = !{!42, !37, i64 16}
!63 = !{!42, !37, i64 24}
!64 = !{!"p1 _ZTS13_timelib_time", !14, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"p1 _ZTS17_timelib_rel_time", !14, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!11, !11, i64 0}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
end_hunk_1
