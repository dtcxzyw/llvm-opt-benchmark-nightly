Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Exporter?download=true
inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN9rapidjson8internal6u32toaEjPc:bb.a
  store i8 %i.ct, ptr %i.cr, align 1
  %i.cv = zext nneg i16 %i.cj to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.cv ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %.6, i64 3
  store i8 %i.cx, ptr %i.cu, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.6, i64 4
  store i8 %i.da, ptr %i.cy, align 1
  %i.dc = zext nneg i16 %i.cl to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dc ; 2 uses
  %i.de = load i8, ptr %i.dd, align 2
  %i.df = getelementptr inbounds nuw i8, ptr %.6, i64 5
  store i8 %i.de, ptr %i.db, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.6, i64 6
  store i8 %i.dh, ptr %i.df, align 1
  %i.dj = zext nneg i16 %i.cn to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dj ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.6, i64 7
  store i8 %i.dl, ptr %i.di, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.6, i64 8
  store i8 %i.do, ptr %i.dm, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %bb.f
  %.7 = phi ptr [ %i.x, %bb.f ], [ %i.bp, %bb.l ], [ %i.dp, %bb.p ]
  ret ptr %.7
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN9rapidjson8internal6u64toaEmPc(i64 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ult i64 %0, 100000000
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %0, 10000
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.lhs.trunc = trunc nuw nsw i64 %0 to i16       ; 2 uses
  %i.c = udiv i16 %.lhs.trunc, 100
  %i.d = shl nuw nsw i16 %i.c, 1                  ; 2 uses
  %i.e = urem i16 %.lhs.trunc, 100
  %i.f = shl nuw nsw i16 %i.e, 1                  ; 2 uses
  %i.g = icmp samesign ugt i64 %0, 999
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.h = zext nneg i16 %i.d to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.h
  %i.j = load i8, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.j, ptr %1, align 1
  br label %.thread230

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ugt i64 %0, 99
  br i1 %i.l, label %..thread230_crit_edge, label %bb.e

..thread230_crit_edge:                            ; preds = %bb.d
  %.pre = zext nneg i16 %i.d to i64
  br label %.thread230

.thread230:                                       ; preds = %..thread230_crit_edge, %.thread
  %.pre-phi = phi i64 [ %.pre, %..thread230_crit_edge ], [ %i.h, %.thread ]
  %.0229 = phi ptr [ %1, %..thread230_crit_edge ], [ %i.k, %.thread ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.0229, i64 1
  store i8 %i.o, ptr %.0229, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = icmp samesign ugt i64 %0, 9
  br i1 %i.q, label %bb.f, label %._crit_edge298

._crit_edge298:                                   ; preds = %bb.e
  %.pre299 = zext nneg i16 %i.f to i64
  br label %bb.g

bb.f:                                             ; preds = %.thread230, %bb.e
  %.1232 = phi ptr [ %i.p, %.thread230 ], [ %1, %bb.e ] ; 2 uses
  %i.r = zext nneg i16 %i.f to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.r
  %i.t = load i8, ptr %i.s, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %.1232, i64 1
  store i8 %i.t, ptr %.1232, align 1
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge298, %bb.f
  %.pre-phi300 = phi i64 [ %.pre299, %._crit_edge298 ], [ %i.r, %bb.f ]
  %.2 = phi ptr [ %1, %._crit_edge298 ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi300
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.x, ptr %.2, align 1
  br label %bb.ae

bb.h:                                             ; preds = %bb.b
  %i.z = trunc nuw nsw i64 %0 to i32              ; 3 uses
  %i.aa = udiv i32 %i.z, 10000
  %i.ab = urem i32 %i.z, 10000
  %i.ac = udiv i32 %i.z, 1000000
  %i.ad = shl nuw nsw i32 %i.ac, 1                ; 2 uses
  %.lhs.trunc259 = trunc nuw nsw i32 %i.aa to i16
  %i.ae = urem i16 %.lhs.trunc259, 100
  %i.af = shl nuw nsw i16 %i.ae, 1                ; 2 uses
  %.lhs.trunc261 = trunc nuw nsw i32 %i.ab to i16 ; 2 uses
  %i.ag = udiv i16 %.lhs.trunc261, 100
  %i.ah = shl nuw nsw i16 %i.ag, 1
  %i.ai = urem i16 %.lhs.trunc261, 100
  %i.aj = shl nuw nsw i16 %i.ai, 1
  %i.ak = icmp samesign ugt i64 %0, 9999999
  br i1 %i.ak, label %.thread233, label %bb.i

.thread233:                                       ; preds = %bb.h
  %i.al = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.al
  %i.an = load i8, ptr %i.am, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.an, ptr %1, align 1
  br label %.thread236

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp samesign ugt i64 %0, 999999
  br i1 %i.ap, label %..thread236_crit_edge, label %bb.j

..thread236_crit_edge:                            ; preds = %bb.i
  %.pre301 = zext nneg i32 %i.ad to i64
  br label %.thread236

.thread236:                                       ; preds = %..thread236_crit_edge, %.thread233
  %.pre-phi302 = phi i64 [ %.pre301, %..thread236_crit_edge ], [ %i.al, %.thread233 ]
  %.3235 = phi ptr [ %1, %..thread236_crit_edge ], [ %i.ao, %.thread233 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi302
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.3235, i64 1
  store i8 %i.as, ptr %.3235, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = icmp samesign ugt i64 %0, 99999
  br i1 %i.au, label %bb.k, label %._crit_edge297

._crit_edge297:                                   ; preds = %bb.j
  %.pre303 = zext nneg i16 %i.af to i64
  br label %bb.l

bb.k:                                             ; preds = %.thread236, %bb.j
  %.4238 = phi ptr [ %i.at, %.thread236 ], [ %1, %bb.j ] ; 2 uses
  %i.av = zext nneg i16 %i.af to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.4238, i64 1
  store i8 %i.ax, ptr %.4238, align 1
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge297, %bb.k
  %.pre-phi304 = phi i64 [ %.pre303, %._crit_edge297 ], [ %i.av, %bb.k ]
  %.5 = phi ptr [ %1, %._crit_edge297 ], [ %i.ay, %bb.k ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi304
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.bb, ptr %.5, align 1
  %i.bd = zext nneg i16 %i.ah to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.5, i64 2
  store i8 %i.bf, ptr %i.bc, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.5, i64 3
  store i8 %i.bi, ptr %i.bg, align 1
  %i.bk = zext nneg i16 %i.aj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.5, i64 4
  store i8 %i.bm, ptr %i.bj, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.5, i64 5
  store i8 %i.bp, ptr %i.bn, align 1
  br label %bb.ae

bb.m:                                             ; preds = %bb.a
  %i.br = icmp ult i64 %0, 10000000000000000
  br i1 %i.br, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.bs = udiv i64 %0, 100000000                  ; 3 uses
  %2 = urem i64 %0, 100000000                     ; 3 uses
  %i.bt = trunc nuw i64 %i.bs to i32
  %3 = insertelement <2 x i32> poison, i32 %i.bt, i64 0
  %i.bu = trunc nuw nsw i64 %2 to i32
  %4 = insertelement <2 x i32> %3, i32 %i.bu, i64 1
  %5 = urem <2 x i32> %4, splat (i32 10000)
  %6 = trunc nuw nsw <2 x i32> %5 to <2 x i16>    ; 2 uses
  %7 = udiv <2 x i16> %6, splat (i16 100)         ; 2 uses
  %8 = extractelement <2 x i16> %7, i64 0
  %9 = shl nuw nsw i16 %8, 1                      ; 2 uses
  %10 = extractelement <2 x i16> %7, i64 1
  %i.bv = shl nuw nsw i16 %10, 1
  %11 = trunc nuw nsw i64 %2 to i32
  %12 = trunc nuw i64 %i.bs to i32
  %13 = insertelement <2 x i32> poison, i32 %12, i64 0
  %14 = trunc nuw nsw i64 %2 to i32
  %15 = insertelement <2 x i32> %13, i32 %14, i64 1
  %16 = trunc nuw nsw i64 %i.bs to i32
  %i.bw = udiv i32 %16, 1000000
  %17 = shl nuw nsw i32 %i.bw, 1                  ; 2 uses
  %18 = udiv <2 x i32> %15, splat (i32 10000)
  %i.bx = udiv i32 %11, 1000000
  %i.by = shl nuw nsw i32 %i.bx, 1
  %19 = trunc nuw <2 x i32> %18 to <2 x i16>
  %20 = shufflevector <2 x i16> %19, <2 x i16> %6, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %21 = urem <4 x i16> %20, splat (i16 100)       ; 4 uses
  %22 = extractelement <4 x i16> %21, i64 0
  %i.bz = shl nuw nsw i16 %22, 1                  ; 2 uses
  %23 = extractelement <4 x i16> %21, i64 1
  %24 = shl nuw nsw i16 %23, 1                    ; 2 uses
  %25 = extractelement <4 x i16> %21, i64 2
  %i.ca = shl nuw nsw i16 %25, 1
  %26 = extractelement <4 x i16> %21, i64 3
  %i.cb = shl nuw nsw i16 %26, 1
  %i.cc = icmp samesign ugt i64 %0, 999999999999999
  br i1 %i.cc, label %.thread239, label %bb.o

.thread239:                                       ; preds = %bb.n
  %i.cd = zext nneg i32 %17 to i64                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.cf, ptr %1, align 1
  br label %.thread242

bb.o:                                             ; preds = %bb.n
  %i.ch = icmp samesign ugt i64 %0, 99999999999999
  br i1 %i.ch, label %..thread242_crit_edge, label %bb.p

..thread242_crit_edge:                            ; preds = %bb.o
  %.pre305 = zext nneg i32 %17 to i64
  br label %.thread242

.thread242:                                       ; preds = %..thread242_crit_edge, %.thread239
  %.pre-phi306 = phi i64 [ %.pre305, %..thread242_crit_edge ], [ %i.cd, %.thread239 ]
  %.7241 = phi ptr [ %1, %..thread242_crit_edge ], [ %i.cg, %.thread239 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi306
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.7241, i64 1
  store i8 %i.ck, ptr %.7241, align 1
  br label %.thread245

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp samesign ugt i64 %0, 9999999999999
  br i1 %i.cm, label %.thread245, label %bb.q

.thread245:                                       ; preds = %bb.p, %.thread242
  %.8244 = phi ptr [ %i.cl, %.thread242 ], [ %1, %bb.p ] ; 2 uses
  %i.cn = zext nneg i16 %i.bz to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.8244, i64 1
  store i8 %i.cp, ptr %.8244, align 1
  br label %.thread248

bb.q:                                             ; preds = %bb.p
  %i.cr = icmp samesign ugt i64 %0, 999999999999
  br i1 %i.cr, label %..thread248_crit_edge, label %bb.r

..thread248_crit_edge:                            ; preds = %bb.q
  %.pre307 = zext nneg i16 %i.bz to i64
  br label %.thread248

.thread248:                                       ; preds = %..thread248_crit_edge, %.thread245
  %.pre-phi308 = phi i64 [ %.pre307, %..thread248_crit_edge ], [ %i.cn, %.thread245 ]
  %.9247 = phi ptr [ %1, %..thread248_crit_edge ], [ %i.cq, %.thread245 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi308
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.9247, i64 1
  store i8 %i.cu, ptr %.9247, align 1
  br label %.thread251

bb.r:                                             ; preds = %bb.q
  %i.cw = icmp samesign ugt i64 %0, 99999999999
  br i1 %i.cw, label %.thread251, label %bb.s

.thread251:                                       ; preds = %bb.r, %.thread248
  %.10250 = phi ptr [ %i.cv, %.thread248 ], [ %1, %bb.r ] ; 2 uses
  %i.cx = zext nneg i16 %9 to i64                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 2
  %i.da = getelementptr inbounds nuw i8, ptr %.10250, i64 1
  store i8 %i.cz, ptr %.10250, align 1
  br label %.thread254

bb.s:                                             ; preds = %bb.r
  %i.db = icmp samesign ugt i64 %0, 9999999999
  br i1 %i.db, label %..thread254_crit_edge, label %bb.t

..thread254_crit_edge:                            ; preds = %bb.s
  %.pre309 = zext nneg i16 %9 to i64
  br label %.thread254

.thread254:                                       ; preds = %..thread254_crit_edge, %.thread251
  %.pre-phi310 = phi i64 [ %.pre309, %..thread254_crit_edge ], [ %i.cx, %.thread251 ]
  %.11253 = phi ptr [ %1, %..thread254_crit_edge ], [ %i.da, %.thread251 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi310
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.11253, i64 1
  store i8 %i.de, ptr %.11253, align 1
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp samesign ugt i64 %0, 999999999
  br i1 %i.dg, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.pre311 = zext nneg i16 %24 to i64
  br label %bb.v

bb.u:                                             ; preds = %.thread254, %bb.t
  %.12256 = phi ptr [ %i.df, %.thread254 ], [ %1, %bb.t ] ; 2 uses
  %i.dh = zext nneg i16 %24 to i64                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %.12256, i64 1
  store i8 %i.dj, ptr %.12256, align 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.u
  %.pre-phi312 = phi i64 [ %.pre311, %._crit_edge ], [ %i.dh, %bb.u ]
  %.13 = phi ptr [ %1, %._crit_edge ], [ %i.dk, %bb.u ] ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi312
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %.13, i64 1
  store i8 %i.dn, ptr %.13, align 1
  %i.dp = zext nneg i32 %i.by to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dp ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %.13, i64 2
  store i8 %i.dr, ptr %i.do, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.13, i64 3
  store i8 %i.du, ptr %i.ds, align 1
  %i.dw = zext nneg i16 %i.ca to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dw ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 2
  %i.dz = getelementptr inbounds nuw i8, ptr %.13, i64 4
  store i8 %i.dy, ptr %i.dv, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.13, i64 5
  store i8 %i.eb, ptr %i.dz, align 1
  %i.ed = zext nneg i16 %i.bv to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.13, i64 6
  store i8 %i.ef, ptr %i.ec, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %.13, i64 7
  store i8 %i.ei, ptr %i.eg, align 1
  %i.ek = zext nneg i16 %i.cb to i64
  %i.el = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ek ; 2 uses
  %i.em = load i8, ptr %i.el, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %.13, i64 8
  store i8 %i.em, ptr %i.ej, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.13, i64 9
  store i8 %i.ep, ptr %i.en, align 1
  br label %bb.ae

bb.w:                                             ; preds = %bb.m
  %i.er = udiv i64 %0, 10000000000000000          ; 3 uses
  %i.es = urem i64 %0, 10000000000000000          ; 2 uses
  %i.et = icmp ult i64 %0, 100000000000000000
  br i1 %i.et, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eu = trunc nuw i64 %i.er to i8
  %i.ev = or disjoint i8 %i.eu, 48
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ev, ptr %1, align 1
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.ex = icmp ult i64 %0, 1000000000000000000
  br i1 %i.ex, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ey = shl nuw nsw i64 %i.er, 1
  %i.ez = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 2
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.fa, ptr %1, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.fd, ptr %i.fb, align 1
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ff = icmp ult i64 %0, -8446744073709551616
  %.lhs.trunc289 = trunc nuw nsw i64 %i.er to i16 ; 3 uses
  %i.fg = udiv i16 %.lhs.trunc289, 100            ; 2 uses
  %i.fh = urem i16 %.lhs.trunc289, 100
  br i1 %i.ff, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fi = trunc nuw nsw i16 %i.fg to i8
  %i.fj = add nuw nsw i8 %i.fi, 48
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.fj, ptr %1, align 1
  %i.fl = urem i16 %.lhs.trunc289, 100
  %i.fm = shl nuw nsw i16 %i.fl, 1
  %i.fn = zext nneg i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 2
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.fp, ptr %i.fk, align 1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.fs, ptr %i.fq, align 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fu = shl nuw nsw i16 %i.fg, 1
  %i.fv = shl nuw nsw i16 %i.fh, 1
  %i.fw = zext nneg i16 %i.fu to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.fy, ptr %1, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.gb, ptr %i.fz, align 1
  %i.gd = zext nneg i16 %i.fv to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.gd ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 2
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.gf, ptr %i.gc, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.gi, ptr %i.gg, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac, %bb.ab, %bb.x
  %.14 = phi ptr [ %i.ew, %bb.x ], [ %i.fe, %bb.z ], [ %i.ft, %bb.ab ], [ %i.gj, %bb.ac ] ; 17 uses
  %i.gk = udiv i64 %i.es, 100000000               ; 3 uses
  %27 = urem i64 %i.es, 100000000                 ; 3 uses
  %i.gl = trunc nuw nsw i64 %i.gk to i32
  %28 = insertelement <2 x i32> poison, i32 %i.gl, i64 0
  %i.gm = trunc nuw nsw i64 %27 to i32
  %29 = insertelement <2 x i32> %28, i32 %i.gm, i64 1
  %30 = urem <2 x i32> %29, splat (i32 10000)
  %31 = trunc nuw nsw <2 x i32> %30 to <2 x i16>  ; 2 uses
  %32 = udiv <2 x i16> %31, splat (i16 100)       ; 2 uses
  %33 = extractelement <2 x i16> %32, i64 0
  %34 = shl nuw nsw i16 %33, 1
  %35 = extractelement <2 x i16> %32, i64 1
  %i.gn = shl nuw nsw i16 %35, 1
  %36 = trunc nuw nsw i64 %27 to i32
  %37 = trunc nuw nsw i64 %i.gk to i32
  %38 = insertelement <2 x i32> poison, i32 %37, i64 0
  %39 = trunc nuw nsw i64 %27 to i32
  %40 = insertelement <2 x i32> %38, i32 %39, i64 1
  %41 = trunc nuw nsw i64 %i.gk to i32
  %i.go = udiv i32 %41, 1000000
  %42 = shl nuw nsw i32 %i.go, 1
  %43 = udiv <2 x i32> %40, splat (i32 10000)
  %i.gp = udiv i32 %36, 1000000
  %i.gq = shl nuw nsw i32 %i.gp, 1
  %44 = trunc nuw nsw <2 x i32> %43 to <2 x i16>
  %45 = shufflevector <2 x i16> %44, <2 x i16> %31, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %46 = urem <4 x i16> %45, splat (i16 100)       ; 4 uses
  %47 = extractelement <4 x i16> %46, i64 0
  %i.gr = shl nuw nsw i16 %47, 1
  %48 = extractelement <4 x i16> %46, i64 1
  %49 = shl nuw nsw i16 %48, 1
  %50 = extractelement <4 x i16> %46, i64 2
  %i.gs = shl nuw nsw i16 %50, 1
  %51 = extractelement <4 x i16> %46, i64 3
  %i.gt = shl nuw nsw i16 %51, 1
  %i.gu = zext nneg i32 %42 to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.gu ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 2
  %i.gx = getelementptr inbounds nuw i8, ptr %.14, i64 1
  store i8 %i.gw, ptr %.14, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.14, i64 2
  store i8 %i.gz, ptr %i.gx, align 1
  %i.hb = zext nneg i16 %i.gr to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.hb ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 2
  %i.he = getelementptr inbounds nuw i8, ptr %.14, i64 3
  store i8 %i.hd, ptr %i.ha, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.14, i64 4
  store i8 %i.hg, ptr %i.he, align 1
  %i.hi = zext nneg i16 %34 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.hi ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 2
  %i.hl = getelementptr inbounds nuw i8, ptr %.14, i64 5
  store i8 %i.hk, ptr %i.hh, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.14, i64 6
  store i8 %i.hn, ptr %i.hl, align 1
  %i.hp = zext nneg i16 %49 to i64
  %i.hq = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.hp ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 2
  %i.hs = getelementptr inbounds nuw i8, ptr %.14, i64 7
  store i8 %i.hr, ptr %i.ho, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.14, i64 8
  store i8 %i.hu, ptr %i.hs, align 1
  %i.hw = zext nneg i32 %i.gq to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.hw ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 2
  %i.hz = getelementptr inbounds nuw i8, ptr %.14, i64 9
  store i8 %i.hy, ptr %i.hv, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.14, i64 10
  store i8 %i.ib, ptr %i.hz, align 1
  %i.id = zext nneg i16 %i.gs to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.id ; 2 uses
  %i.if = load i8, ptr %i.ie, align 2
  %i.ig = getelementptr inbounds nuw i8, ptr %.14, i64 11
  store i8 %i.if, ptr %i.ic, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.14, i64 12
  store i8 %i.ii, ptr %i.ig, align 1
  %i.ik = zext nneg i16 %i.gn to i64
  %i.il = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ik ; 2 uses
  %i.im = load i8, ptr %i.il, align 2
  %i.in = getelementptr inbounds nuw i8, ptr %.14, i64 13
  store i8 %i.im, ptr %i.ij, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.14, i64 14
  store i8 %i.ip, ptr %i.in, align 1
  %i.ir = zext nneg i16 %i.gt to i64
  %i.is = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ir ; 2 uses
  %i.it = load i8, ptr %i.is, align 2
  %i.iu = getelementptr inbounds nuw i8, ptr %.14, i64 15
  store i8 %i.it, ptr %i.iq, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.14, i64 16
  store i8 %i.iw, ptr %i.iu, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.g, %bb.l, %bb.v, %bb.ad
  %.15 = phi ptr [ %i.ix, %bb.ad ], [ %i.eq, %bb.v ], [ %i.y, %bb.g ], [ %i.bq, %bb.l ]
  ret ptr %.15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA28_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(28) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %2) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(28) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #31
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #31
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA35_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(35) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %2) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(35) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #31
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #31
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA36_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(36) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %2) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(36) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #31
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #31
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #31
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA34_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(34) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(34) %2) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(34) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
end_hunk_0
