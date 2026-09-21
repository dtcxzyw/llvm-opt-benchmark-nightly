Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/CommandLineMain?download=true
inline.NumInlined: 2961
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_:bb.a
  %i.co = getelementptr i8, ptr %i.cn, i64 -1     ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge2.i92, %.lr.ph.i90
  %.023.i91 = phi i64 [ %i.bz, %.lr.ph.i90 ], [ %i.cp, %.critedge2.i92 ] ; 2 uses
  %i.cp = add i64 %.023.i91, %i.e                 ; 5 uses
  %i.cq = icmp ult i64 %i.cp, %i.cj
  br i1 %i.cq, label %.critedge2.i92, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = sub nuw i64 %i.cj, %.023.i91
  %i.cs = sub nuw i64 %i.cp, %i.cj
  %i.ct = icmp ugt i64 %i.cr, %i.cs
  br i1 %i.ct, label %.critedge2.i92, label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit95

.critedge2.i92:                                   ; preds = %bb.ac, %bb.ab
  %i.cu = load i8, ptr %i.co, align 1, !tbaa !47
  %i.cv = add i8 %i.cu, -1
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !47
  %i.cw = icmp uge i64 %i.cp, %i.cj
  %i.cx = sub i64 %i.bs, %i.cp
  %.not.i93 = icmp ult i64 %i.cx, %i.e
  %or.cond.i94 = or i1 %i.cw, %.not.i93
  br i1 %or.cond.i94, label %_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit95, label %bb.ab, !llvm.loop !677

_ZN9rapidjson8internal10GrisuRoundEPcimmmm.exit95: ; preds = %.critedge2.i, %bb.w, %bb.ac, %.critedge2.i92, %bb.u, %bb.z, %bb.aa
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #28

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN9rapidjson8internal6u64toaEmPc(i64 noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat {
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
  %i.j = load i8, ptr %i.i, align 2, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.j, ptr %1, align 1, !tbaa !47
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
  %i.o = load i8, ptr %i.n, align 1, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %.0229, i64 1
  store i8 %i.o, ptr %.0229, align 1, !tbaa !47
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
  %i.t = load i8, ptr %i.s, align 2, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %.1232, i64 1
  store i8 %i.t, ptr %.1232, align 1, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge298, %bb.f
  %.pre-phi300 = phi i64 [ %.pre299, %._crit_edge298 ], [ %i.r, %bb.f ]
  %.2 = phi ptr [ %1, %._crit_edge298 ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi300
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %i.x, ptr %.2, align 1, !tbaa !47
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
  %i.an = load i8, ptr %i.am, align 2, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.an, ptr %1, align 1, !tbaa !47
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
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %.3235, i64 1
  store i8 %i.as, ptr %.3235, align 1, !tbaa !47
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
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %.4238, i64 1
  store i8 %i.ax, ptr %.4238, align 1, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge297, %bb.k
  %.pre-phi304 = phi i64 [ %.pre303, %._crit_edge297 ], [ %i.av, %bb.k ]
  %.5 = phi ptr [ %1, %._crit_edge297 ], [ %i.ay, %bb.k ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi304
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.bb, ptr %.5, align 1, !tbaa !47
  %i.bd = zext nneg i16 %i.ah to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %.5, i64 2
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %.5, i64 3
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !47
  %i.bk = zext nneg i16 %i.aj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %.5, i64 4
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %.5, i64 5
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !47
  br label %bb.ae

bb.m:                                             ; preds = %bb.a
  %i.br = icmp ult i64 %0, 10000000000000000
  br i1 %i.br, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.bs = udiv i64 %0, 100000000
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 3 uses
  %2 = urem i64 %0, 100000000
  %i.bu = trunc nuw nsw i64 %2 to i32             ; 3 uses
  %3 = udiv i32 %i.bt, 10000
  %4 = urem i32 %i.bt, 10000
  %5 = udiv i32 %i.bt, 1000000
  %6 = shl nuw nsw i32 %5, 1                      ; 2 uses
  %.lhs.trunc265 = trunc nuw nsw i32 %3 to i16
  %7 = urem i16 %.lhs.trunc265, 100
  %i.bv = shl nuw nsw i16 %7, 1                   ; 2 uses
  %.lhs.trunc267 = trunc nuw nsw i32 %4 to i16    ; 2 uses
  %8 = udiv i16 %.lhs.trunc267, 100
  %9 = shl nuw nsw i16 %8, 1                      ; 2 uses
  %10 = urem i16 %.lhs.trunc267, 100
  %11 = shl nuw nsw i16 %10, 1                    ; 2 uses
  %i.bw = udiv i32 %i.bu, 10000
  %12 = urem i32 %i.bu, 10000
  %i.bx = udiv i32 %i.bu, 1000000
  %i.by = shl nuw nsw i32 %i.bx, 1
  %.lhs.trunc271 = trunc nuw nsw i32 %i.bw to i16
  %13 = urem i16 %.lhs.trunc271, 100
  %i.bz = shl nuw nsw i16 %13, 1
  %.lhs.trunc273 = trunc nuw nsw i32 %12 to i16   ; 2 uses
  %14 = udiv i16 %.lhs.trunc273, 100
  %i.ca = shl nuw nsw i16 %14, 1
  %15 = urem i16 %.lhs.trunc273, 100
  %i.cb = shl nuw nsw i16 %15, 1
  %i.cc = icmp samesign ugt i64 %0, 999999999999999
  br i1 %i.cc, label %.thread239, label %bb.o

.thread239:                                       ; preds = %bb.n
  %i.cd = zext nneg i32 %6 to i64                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.cf, ptr %1, align 1, !tbaa !47
  br label %.thread242

bb.o:                                             ; preds = %bb.n
  %i.ch = icmp samesign ugt i64 %0, 99999999999999
  br i1 %i.ch, label %..thread242_crit_edge, label %bb.p

..thread242_crit_edge:                            ; preds = %bb.o
  %.pre305 = zext nneg i32 %6 to i64
  br label %.thread242

.thread242:                                       ; preds = %..thread242_crit_edge, %.thread239
  %.pre-phi306 = phi i64 [ %.pre305, %..thread242_crit_edge ], [ %i.cd, %.thread239 ]
  %.7241 = phi ptr [ %1, %..thread242_crit_edge ], [ %i.cg, %.thread239 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi306
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !47
  %i.cl = getelementptr inbounds nuw i8, ptr %.7241, i64 1
  store i8 %i.ck, ptr %.7241, align 1, !tbaa !47
  br label %.thread245

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp samesign ugt i64 %0, 9999999999999
  br i1 %i.cm, label %.thread245, label %bb.q

.thread245:                                       ; preds = %bb.p, %.thread242
  %.8244 = phi ptr [ %i.cl, %.thread242 ], [ %1, %bb.p ] ; 2 uses
  %i.cn = zext nneg i16 %i.bv to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %.8244, i64 1
  store i8 %i.cp, ptr %.8244, align 1, !tbaa !47
  br label %.thread248

bb.q:                                             ; preds = %bb.p
  %i.cr = icmp samesign ugt i64 %0, 999999999999
  br i1 %i.cr, label %..thread248_crit_edge, label %bb.r

..thread248_crit_edge:                            ; preds = %bb.q
  %.pre307 = zext nneg i16 %i.bv to i64
  br label %.thread248

.thread248:                                       ; preds = %..thread248_crit_edge, %.thread245
  %.pre-phi308 = phi i64 [ %.pre307, %..thread248_crit_edge ], [ %i.cn, %.thread245 ]
  %.9247 = phi ptr [ %1, %..thread248_crit_edge ], [ %i.cq, %.thread245 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi308
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %.9247, i64 1
  store i8 %i.cu, ptr %.9247, align 1, !tbaa !47
  br label %.thread251

bb.r:                                             ; preds = %bb.q
  %i.cw = icmp samesign ugt i64 %0, 99999999999
  br i1 %i.cw, label %.thread251, label %bb.s

.thread251:                                       ; preds = %bb.r, %.thread248
  %.10250 = phi ptr [ %i.cv, %.thread248 ], [ %1, %bb.r ] ; 2 uses
  %i.cx = zext nneg i16 %9 to i64                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !47
  %i.da = getelementptr inbounds nuw i8, ptr %.10250, i64 1
  store i8 %i.cz, ptr %.10250, align 1, !tbaa !47
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
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %.11253, i64 1
  store i8 %i.de, ptr %.11253, align 1, !tbaa !47
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp samesign ugt i64 %0, 999999999
  br i1 %i.dg, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.pre311 = zext nneg i16 %11 to i64
  br label %bb.v

bb.u:                                             ; preds = %.thread254, %bb.t
  %.12256 = phi ptr [ %i.df, %.thread254 ], [ %1, %bb.t ] ; 2 uses
  %i.dh = zext nneg i16 %11 to i64                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !47
  %i.dk = getelementptr inbounds nuw i8, ptr %.12256, i64 1
  store i8 %i.dj, ptr %.12256, align 1, !tbaa !47
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.u
  %.pre-phi312 = phi i64 [ %.pre311, %._crit_edge ], [ %i.dh, %bb.u ]
  %.13 = phi ptr [ %1, %._crit_edge ], [ %i.dk, %bb.u ] ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %.pre-phi312
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !47
  %i.do = getelementptr inbounds nuw i8, ptr %.13, i64 1
  store i8 %i.dn, ptr %.13, align 1, !tbaa !47
  %i.dp = zext nneg i32 %i.by to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dp ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !47
  %i.ds = getelementptr inbounds nuw i8, ptr %.13, i64 2
  store i8 %i.dr, ptr %i.do, align 1, !tbaa !47
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !47
  %i.dv = getelementptr inbounds nuw i8, ptr %.13, i64 3
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !47
  %i.dw = zext nneg i16 %i.bz to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dw ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %.13, i64 4
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !47
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !47
  %i.ec = getelementptr inbounds nuw i8, ptr %.13, i64 5
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !47
  %i.ed = zext nneg i16 %i.ca to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !47
  %i.eg = getelementptr inbounds nuw i8, ptr %.13, i64 6
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !47
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !47
  %i.ej = getelementptr inbounds nuw i8, ptr %.13, i64 7
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !47
  %i.ek = zext nneg i16 %i.cb to i64
  %i.el = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ek ; 2 uses
  %i.em = load i8, ptr %i.el, align 2, !tbaa !47
  %i.en = getelementptr inbounds nuw i8, ptr %.13, i64 8
  store i8 %i.em, ptr %i.ej, align 1, !tbaa !47
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !47
  %i.eq = getelementptr inbounds nuw i8, ptr %.13, i64 9
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !47
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
  store i8 %i.ev, ptr %1, align 1, !tbaa !47
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.ex = icmp ult i64 %0, 1000000000000000000
  br i1 %i.ex, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ey = shl nuw nsw i64 %i.er, 1
  %i.ez = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !47
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.fa, ptr %1, align 1, !tbaa !47
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !47
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !47
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
  store i8 %i.fj, ptr %1, align 1, !tbaa !47
  %i.fl = urem i16 %.lhs.trunc289, 100
  %i.fm = shl nuw nsw i16 %i.fl, 1
  %i.fn = zext nneg i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 2, !tbaa !47
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.fp, ptr %i.fk, align 1, !tbaa !47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !47
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.fs, ptr %i.fq, align 1, !tbaa !47
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fu = shl nuw nsw i16 %i.fg, 1
  %i.fv = shl nuw nsw i16 %i.fh, 1
  %i.fw = zext nneg i16 %i.fu to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !47
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.fy, ptr %1, align 1, !tbaa !47
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !47
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.gb, ptr %i.fz, align 1, !tbaa !47
  %i.gd = zext nneg i16 %i.fv to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.gd ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 2, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.gf, ptr %i.gc, align 1, !tbaa !47
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !47
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !47
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac, %bb.ab, %bb.x
  %.14 = phi ptr [ %i.ew, %bb.x ], [ %i.fe, %bb.z ], [ %i.ft, %bb.ab ], [ %i.gj, %bb.ac ] ; 17 uses
  %i.gk = udiv i64 %i.es, 100000000
  %i.gl = trunc nuw nsw i64 %i.gk to i32          ; 3 uses
  %16 = urem i64 %i.es, 100000000
  %i.gm = trunc nuw nsw i64 %16 to i32            ; 3 uses
  %17 = udiv i32 %i.gl, 10000
  %18 = urem i32 %i.gl, 10000
  %19 = udiv i32 %i.gl, 1000000
  %20 = shl nuw nsw i32 %19, 1
  %.lhs.trunc277 = trunc nuw nsw i32 %17 to i16
  %21 = urem i16 %.lhs.trunc277, 100
  %i.gn = shl nuw nsw i16 %21, 1
  %.lhs.trunc279 = trunc nuw nsw i32 %18 to i16   ; 2 uses
  %22 = udiv i16 %.lhs.trunc279, 100
  %23 = shl nuw nsw i16 %22, 1
  %24 = urem i16 %.lhs.trunc279, 100
  %25 = shl nuw nsw i16 %24, 1
  %i.go = udiv i32 %i.gm, 10000
  %26 = urem i32 %i.gm, 10000
  %i.gp = udiv i32 %i.gm, 1000000
  %i.gq = shl nuw nsw i32 %i.gp, 1
  %.lhs.trunc283 = trunc nuw nsw i32 %i.go to i16
  %27 = urem i16 %.lhs.trunc283, 100
  %i.gr = shl nuw nsw i16 %27, 1
  %.lhs.trunc285 = trunc nuw nsw i32 %26 to i16   ; 2 uses
  %28 = udiv i16 %.lhs.trunc285, 100
  %i.gs = shl nuw nsw i16 %28, 1
  %29 = urem i16 %.lhs.trunc285, 100
  %i.gt = shl nuw nsw i16 %29, 1
  %i.gu = zext nneg i32 %20 to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.gu ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 2, !tbaa !47
  %i.gx = getelementptr inbounds nuw i8, ptr %.14, i64 1
  store i8 %i.gw, ptr %.14, align 1, !tbaa !47
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !47
  %i.ha = getelementptr inbounds nuw i8, ptr %.14, i64 2
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !47
  %i.hb = zext nneg i16 %i.gn to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.hb ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 2, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %.14, i64 3
  store i8 %i.hd, ptr %i.ha, align 1, !tbaa !47
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !47
  %i.hh = getelementptr inbounds nuw i8, ptr %.14, i64 4
  store i8 %i.hg, ptr %i.he, align 1, !tbaa !47
  %i.hi = zext nneg i16 %23 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.hi ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 2, !tbaa !47
  %i.hl = getelementptr inbounds nuw i8, ptr %.14, i64 5
  store i8 %i.hk, ptr %i.hh, align 1, !tbaa !47
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !47
  %i.ho = getelementptr inbounds nuw i8, ptr %.14, i64 6
  store i8 %i.hn, ptr %i.hl, align 1, !tbaa !47
  %i.hp = zext nneg i16 %25 to i64
  %i.hq = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.hp ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 2, !tbaa !47
  %i.hs = getelementptr inbounds nuw i8, ptr %.14, i64 7
  store i8 %i.hr, ptr %i.ho, align 1, !tbaa !47
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !47
  %i.hv = getelementptr inbounds nuw i8, ptr %.14, i64 8
  store i8 %i.hu, ptr %i.hs, align 1, !tbaa !47
  %i.hw = zext nneg i32 %i.gq to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.hw ; 2 uses
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !47
  %i.hz = getelementptr inbounds nuw i8, ptr %.14, i64 9
  store i8 %i.hy, ptr %i.hv, align 1, !tbaa !47
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !47
  %i.ic = getelementptr inbounds nuw i8, ptr %.14, i64 10
  store i8 %i.ib, ptr %i.hz, align 1, !tbaa !47
  %i.id = zext nneg i16 %i.gr to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.id ; 2 uses
  %i.if = load i8, ptr %i.ie, align 2, !tbaa !47
  %i.ig = getelementptr inbounds nuw i8, ptr %.14, i64 11
  store i8 %i.if, ptr %i.ic, align 1, !tbaa !47
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !47
  %i.ij = getelementptr inbounds nuw i8, ptr %.14, i64 12
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !47
  %i.ik = zext nneg i16 %i.gs to i64
  %i.il = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ik ; 2 uses
  %i.im = load i8, ptr %i.il, align 2, !tbaa !47
  %i.in = getelementptr inbounds nuw i8, ptr %.14, i64 13
  store i8 %i.im, ptr %i.ij, align 1, !tbaa !47
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !47
  %i.iq = getelementptr inbounds nuw i8, ptr %.14, i64 14
  store i8 %i.ip, ptr %i.in, align 1, !tbaa !47
  %i.ir = zext nneg i16 %i.gt to i64
  %i.is = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ir ; 2 uses
  %i.it = load i8, ptr %i.is, align 2, !tbaa !47
  %i.iu = getelementptr inbounds nuw i8, ptr %.14, i64 15
  store i8 %i.it, ptr %i.iq, align 1, !tbaa !47
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !47
  %i.ix = getelementptr inbounds nuw i8, ptr %.14, i64 16
  store i8 %i.iw, ptr %i.iu, align 1, !tbaa !47
  br label %bb.ae

bb.ae:                                            ; preds = %bb.g, %bb.l, %bb.v, %bb.ad
  %.15 = phi ptr [ %i.ix, %bb.ad ], [ %i.eq, %bb.v ], [ %i.y, %bb.g ], [ %i.bq, %bb.l ]
  ret ptr %.15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_6WriterINS_19GenericStringBufferINS_4UTF8IcEES2_EES8_S8_S2_Lj1EE5LevelEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !158
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !146
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !118
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, 1
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %i.l, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !130
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %.pre-phi                  ; 2 uses
  %i.u = shl i64 %1, 4
  %i.v = add i64 %i.t, %i.u
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.v) ; 3 uses
  %i.w = icmp eq i64 %spec.select, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.b) #34
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %spec.select) #40
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !145
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t
  store ptr %i.z, ptr %i.q, align 8, !tbaa !130
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %spec.select
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !129
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6opencc19ZipResourceProviderELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6opencc19ZipResourceProviderELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN6opencc19ZipResourceProviderELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN6opencc19ZipResourceProviderELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !171
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !14
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34, !inline_history !14
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #34
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

end_hunk_0
