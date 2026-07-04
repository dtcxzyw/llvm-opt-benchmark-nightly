inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pm_integer_t = type { i64, ptr, i32, i8 }

@.str = private unnamed_addr constant [23 x i8] c"false && \22unreachable\22\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"../prism/util/pm_integer.c\00", align 1
@__PRETTY_FUNCTION__.pm_integer_parse = private unnamed_addr constant [91 x i8] c"void pm_integer_parse(pm_integer_t *, pm_integer_base_t, const uint8_t *, const uint8_t *)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@pm_integer_parse_digit_values = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str.5 = private unnamed_addr constant [31 x i8] c"value != -1 && \22invalid digit\22\00", align 1
@__PRETTY_FUNCTION__.pm_integer_parse_digit = private unnamed_addr constant [46 x i8] c"uint8_t pm_integer_parse_digit(const uint8_t)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"bigints_length > 0\00", align 1
@__PRETTY_FUNCTION__.pm_integer_convert_base = private unnamed_addr constant [87 x i8] c"void pm_integer_convert_base(pm_integer_t *, const pm_integer_t *, uint64_t, uint64_t)\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"z0.values != NULL\00", align 1
@__PRETTY_FUNCTION__.karatsuba_multiply = private unnamed_addr constant [82 x i8] c"void karatsuba_multiply(pm_integer_t *, pm_integer_t *, pm_integer_t *, uint64_t)\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"z2.values != NULL\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_integer_parse(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = ptrtoint ptr %3 to i64                     ; 3 uses
  %5 = alloca %struct.pm_integer_t, align 8       ; 6 uses
  %i.a = load i8, ptr %2, align 1, !tbaa !11
  %i.b = icmp eq i8 %i.a, 43
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr i8, ptr %2, i64 %spec.select.idx ; 18 uses
  switch i32 %1, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

.preheader:                                       ; preds = %bb.a, %.preheader
  %.146 = phi ptr [ %i.e, %.preheader ], [ %spec.select, %bb.a ] ; 3 uses
  %i.c = load i8, ptr %.146, align 1, !tbaa !11
  %i.d = icmp eq i8 %i.c, 48
  %i.e = getelementptr i8, ptr %.146, i64 1
  br i1 %i.d, label %.preheader, label %.loopexit, !llvm.loop !12

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %spec.select, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  switch i8 %i.h, label %.loopexit [
    i8 95, label %bb.d
    i8 111, label %bb.d
    i8 79, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.i = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.j = load i8, ptr %spec.select, align 1, !tbaa !11
  %i.k = icmp eq i8 %i.j, 48
  %i.l = ptrtoint ptr %spec.select to i64
  %i.m = sub i64 %4, %i.l
  %i.n = icmp sgt i64 %i.m, 1
  %or.cond = select i1 %i.k, i1 %i.n, i1 false
  %spec.select57.idx = select i1 %or.cond, i64 2, i64 0
  %spec.select57 = getelementptr i8, ptr %spec.select, i64 %spec.select57.idx
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.p = load i8, ptr %spec.select, align 1, !tbaa !11
  %i.q = icmp eq i8 %i.p, 48
  %i.r = ptrtoint ptr %spec.select to i64
  %i.s = sub i64 %4, %i.r
  %i.t = icmp sgt i64 %i.s, 1
  %or.cond56 = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond56, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %spec.select, i64 1 ; 9 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  switch i8 %i.v, label %bb.n [
    i8 95, label %bb.i
    i8 48, label %.loopexit
    i8 49, label %.loopexit
    i8 50, label %.loopexit
    i8 51, label %.loopexit
    i8 52, label %.loopexit
    i8 53, label %.loopexit
    i8 54, label %.loopexit
    i8 55, label %.loopexit
    i8 98, label %bb.j
    i8 66, label %bb.j
    i8 111, label %bb.k
    i8 79, label %bb.k
    i8 100, label %bb.l
    i8 68, label %bb.l
    i8 120, label %bb.m
    i8 88, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.x = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.y = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.l:                                             ; preds = %bb.h, %bb.h
  %i.z = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.m:                                             ; preds = %bb.h, %bb.h
  %i.aa = getelementptr i8, ptr %spec.select, i64 2
  br label %.loopexit

bb.n:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 511, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_parse) #13
  unreachable

.loopexit:                                        ; preds = %.preheader, %bb.e, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.d, %bb.c, %bb.g, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.b, %bb.a
  %.3 = phi ptr [ %spec.select, %bb.a ], [ %i.u, %bb.h ], [ %i.f, %bb.b ], [ %spec.select, %bb.g ], [ %i.u, %bb.h ], [ %i.g, %bb.c ], [ %spec.select57, %bb.e ], [ %i.o, %bb.f ], [ %i.w, %bb.i ], [ %i.i, %bb.d ], [ %i.x, %bb.j ], [ %i.y, %bb.k ], [ %i.z, %bb.l ], [ %i.aa, %bb.m ], [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %i.u, %bb.h ], [ %.146, %.preheader ] ; 5 uses
  %i.ab = phi i1 [ true, %bb.a ], [ false, %bb.h ], [ false, %bb.b ], [ true, %bb.g ], [ false, %bb.h ], [ false, %bb.c ], [ true, %bb.e ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ false, %bb.h ], [ true, %.preheader ]
  %.044 = phi i32 [ 10, %bb.a ], [ 8, %bb.h ], [ 2, %bb.b ], [ 10, %bb.g ], [ 8, %bb.h ], [ 8, %bb.c ], [ 10, %bb.e ], [ 16, %bb.f ], [ 8, %bb.i ], [ 8, %bb.d ], [ 2, %bb.j ], [ 8, %bb.k ], [ 10, %bb.l ], [ 16, %bb.m ], [ 8, %bb.h ], [ 8, %bb.h ], [ 8, %bb.h ], [ 8, %bb.h ], [ 8, %bb.h ], [ 8, %bb.h ], [ 10, %.preheader ] ; 2 uses
  %.367 = ptrtoint ptr %.3 to i64
  %.not = icmp ult ptr %.3, %3
  br i1 %.not, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %.loopexit
  %i.ac = load i8, ptr %.3, align 1, !tbaa !11
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr i8, ptr @pm_integer_parse_digit_values, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11  ; 2 uses
  %.not.i = icmp eq i8 %i.af, -1
  br i1 %.not.i, label %bb.p, label %pm_integer_parse_digit.exit

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_parse_digit) #13
  unreachable

pm_integer_parse_digit.exit:                      ; preds = %bb.o
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  %.04363 = getelementptr i8, ptr %.3, i64 1      ; 2 uses
  %i.ah = icmp ult ptr %.04363, %3
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %pm_integer_parse_digit.exit
  %i.ai = zext nneg i32 %.044 to i64
  %6 = sub i64 %4, %.367
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.af
  %.04365 = phi ptr [ %.04363, %.lr.ph ], [ %.043, %bb.af ] ; 2 uses
  %.064 = phi i64 [ %i.ag, %.lr.ph ], [ %.1, %bb.af ] ; 2 uses
  %i.aj = load i8, ptr %.04365, align 1, !tbaa !11 ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 95
  br i1 %i.ak, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = zext i8 %i.aj to i64
  %i.am = getelementptr i8, ptr @pm_integer_parse_digit_values, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !11  ; 2 uses
  %.not.i58 = icmp eq i8 %i.an, -1
  br i1 %.not.i58, label %bb.s, label %pm_integer_parse_digit.exit59

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_parse_digit) #13
  unreachable

pm_integer_parse_digit.exit59:                    ; preds = %bb.r
  %i.ao = mul nuw nsw i64 %.064, %i.ai
  %i.ap = zext i8 %i.an to i64
  %i.aq = add nuw nsw i64 %i.ao, %i.ap            ; 2 uses
  %i.ar = icmp samesign ugt i64 %i.aq, 4294967295
  br i1 %i.ar, label %bb.t, label %bb.af

bb.t:                                             ; preds = %pm_integer_parse_digit.exit59
  %i.as = tail call noalias ptr @malloc(i64 noundef %6) #14 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.w
  %.047.i = phi i64 [ %.1.i, %bb.w ], [ 0, %bb.t ] ; 3 uses
  %.01746.i = phi ptr [ %i.ba, %bb.w ], [ %.3, %bb.t ] ; 2 uses
  %i.at = load i8, ptr %.01746.i, align 1, !tbaa !11 ; 2 uses
  %i.au = icmp eq i8 %i.at, 95
  br i1 %i.au, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.av = zext i8 %i.at to i64
  %i.aw = getelementptr i8, ptr @pm_integer_parse_digit_values, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i, label %bb.v, label %pm_integer_parse_digit.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_parse_digit) #13
  unreachable

pm_integer_parse_digit.exit.i:                    ; preds = %bb.u
  %i.ay = add i64 %.047.i, 1
  %i.az = getelementptr i8, ptr %i.as, i64 %.047.i
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %pm_integer_parse_digit.exit.i, %.lr.ph.i
  %.1.i = phi i64 [ %.047.i, %.lr.ph.i ], [ %i.ay, %pm_integer_parse_digit.exit.i ] ; 9 uses
  %i.ba = getelementptr i8, ptr %.01746.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ba, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.w
  br i1 %i.ab, label %bb.x, label %.preheader.i

bb.x:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bb = add i64 %.1.i, 8
  %i.bc = udiv i64 %i.bb, 9                       ; 2 uses
  %i.bd = tail call noalias ptr @calloc(i64 noundef %i.bc, i64 noundef 4) #15 ; 3 uses
  %.not.i19.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i19.i, label %pm_integer_parse_decimal.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.z
  %.020.i.i = phi i32 [ %.1.i.i, %bb.z ], [ 0, %bb.x ]
  %.01719.i.i = phi i64 [ %i.bp, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.be = mul i32 %.020.i.i, 10
  %i.bf = getelementptr i8, ptr %i.as, i64 %.01719.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = xor i64 %.01719.i.i, -1
  %i.bk = add i64 %.1.i, %i.bj                    ; 2 uses
  %i.bl = urem i64 %i.bk, 9
  %i.bm = udiv i64 %i.bk, 9
  %i.bn = icmp eq i64 %i.bl, 0
  br i1 %i.bn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.bo = getelementptr [4 x i8], ptr %i.bd, i64 %i.bm
  store i32 %i.bi, ptr %i.bo, align 4, !tbaa !7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.1.i.i = phi i32 [ 0, %bb.y ], [ %i.bi, %.lr.ph.i.i ]
  %i.bp = add nuw i64 %.01719.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bp, %.1.i
  br i1 %exitcond.not.i.i, label %pm_integer_parse_decimal.exit.i, label %.lr.ph.i.i, !llvm.loop !15

pm_integer_parse_decimal.exit.i:                  ; preds = %bb.z, %bb.x
  store i64 %i.bc, ptr %5, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bd, ptr %i.bq, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.br, align 8
  call fastcc void @pm_integer_convert_base(ptr noundef %0, ptr noundef nonnull %5, i64 noundef 1000000000, i64 noundef 4294967296)
  tail call void @free(ptr noundef %i.bd) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %pm_integer_parse_big.exit

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.i
  %.0.i.i = phi i64 [ %i.bv, %.preheader.i ], [ 1, %._crit_edge.i ] ; 5 uses
  %i.bs = trunc i64 %.0.i.i to i32
  %i.bt = shl nuw i32 1, %i.bs
  %i.bu = icmp ugt i32 %.044, %i.bt
  %i.bv = add i64 %.0.i.i, 1
  br i1 %i.bu, label %.preheader.i, label %bb.aa, !llvm.loop !23

bb.aa:                                            ; preds = %.preheader.i
  %i.bw = mul i64 %.0.i.i, %.1.i
  %i.bx = add i64 %i.bw, 31                       ; 2 uses
  %i.by = lshr i64 %i.bx, 5                       ; 3 uses
  %i.bz = tail call noalias ptr @calloc(i64 noundef %i.by, i64 noundef 4) #15 ; 8 uses
  %.not.i20.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i20.i, label %.preheader.i.i, label %.lr.ph.i21.i

.preheader.i.i:                                   ; preds = %bb.ac, %bb.aa
  %i.ca = icmp ugt i64 %i.bx, 63
  br i1 %i.ca, label %.lr.ph39.i.i, label %.critedge.i.i

.lr.ph.i21.i:                                     ; preds = %bb.aa, %bb.ac
  %.03437.i.i = phi i64 [ %i.cv, %bb.ac ], [ 0, %bb.aa ] ; 3 uses
  %i.cb = xor i64 %.03437.i.i, -1
  %i.cc = add i64 %.1.i, %i.cb
  %i.cd = mul i64 %i.cc, %.0.i.i                  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.as, i64 %.03437.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = lshr i64 %i.cd, 5
  %i.ci = and i64 %i.cd, 31                       ; 2 uses
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl i32 %i.cg, %i.cj
  %i.cl = getelementptr [4 x i8], ptr %i.bz, i64 %i.ch ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = or i32 %i.ck, %i.cm
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !7
  %i.co = sub nuw nsw i64 32, %i.ci               ; 2 uses
  %i.cp = icmp ult i64 %i.co, %.0.i.i
  br i1 %i.cp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i21.i
  %i.cq = trunc nuw nsw i64 %i.co to i32
  %i.cr = lshr i32 %i.cg, %i.cq
  %i.cs = getelementptr i8, ptr %i.cl, i64 4      ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = or i32 %i.ct, %i.cr
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i21.i
  %i.cv = add nuw i64 %.03437.i.i, 1              ; 2 uses
  %exitcond.not.i22.i = icmp eq i64 %i.cv, %.1.i
  br i1 %exitcond.not.i22.i, label %.preheader.i.i, label %.lr.ph.i21.i, !llvm.loop !24

.lr.ph39.i.i:                                     ; preds = %.preheader.i.i, %bb.ad
  %.03338.i.i = phi i64 [ %i.cz, %bb.ad ], [ %i.by, %.preheader.i.i ] ; 4 uses
  %i.cw = getelementptr [4 x i8], ptr %i.bz, i64 %.03338.i.i
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %.not50.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not50.i.i, label %bb.ad, label %thread-pre-split.i.i.i

bb.ad:                                            ; preds = %.lr.ph39.i.i
  %i.cz = add nsw i64 %.03338.i.i, -1             ; 2 uses
  %i.da = icmp ugt i64 %i.cz, 1
  br i1 %i.da, label %.lr.ph39.i.i, label %thread-pre-split.i.i.thread38.i, !llvm.loop !25

thread-pre-split.i.i.thread38.i:                  ; preds = %bb.ad
  %.sroa.3.0..sroa_idx.i2642.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i2642.i, align 8
  br label %pm_integer_free.exit.i.i.i

.critedge.i.i:                                    ; preds = %.preheader.i.i
  store i64 %i.by, ptr %0, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.bz, null
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  br i1 %i.db, label %pm_integer_parse_big.exit, label %pm_integer_free.exit.i.i.i

thread-pre-split.i.i.i:                           ; preds = %.lr.ph39.i.i
  store i64 %.03338.i.i, ptr %0, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %.sroa.2.0..sroa_idx.i25.i, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i26.i, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %thread-pre-split.i.i.i
  %i.dc = phi i64 [ %i.dh, %bb.ae ], [ %.03338.i.i, %thread-pre-split.i.i.i ] ; 2 uses
  %i.dd = getelementptr [4 x i8], ptr %i.bz, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ae, label %pm_integer_parse_big.exit

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.dh = add i64 %i.dc, -1                       ; 3 uses
  store i64 %i.dh, ptr %0, align 8, !tbaa !16
  %i.di = icmp ugt i64 %i.dh, 1
  br i1 %i.di, label %.lr.ph.i.i.i, label %pm_integer_free.exit.i.i.i, !llvm.loop !28

pm_integer_free.exit.i.i.i:                       ; preds = %bb.ae, %.critedge.i.i, %thread-pre-split.i.i.thread38.i
  %.sroa.3.0..sroa_idx.i3037.i = phi ptr [ %.sroa.3.0..sroa_idx.i2642.i, %thread-pre-split.i.i.thread38.i ], [ %.sroa.3.0..sroa_idx.i.i, %.critedge.i.i ], [ %.sroa.3.0..sroa_idx.i26.i, %bb.ae ]
  %.sroa.4.0..sroa_idx.i3136.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dj = load i32, ptr %i.bz, align 4, !tbaa !7
  tail call void @free(ptr noundef nonnull %i.bz) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 %i.dj, ptr %.sroa.3.0..sroa_idx.i3037.i, align 8, !tbaa !7
  store i32 0, ptr %.sroa.4.0..sroa_idx.i3136.i, align 4
  br label %pm_integer_parse_big.exit

pm_integer_parse_big.exit:                        ; preds = %.lr.ph.i.i.i, %pm_integer_parse_decimal.exit.i, %.critedge.i.i, %pm_integer_free.exit.i.i.i
  tail call void @free(ptr noundef %i.as) #16
  br label %bb.ag

bb.af:                                            ; preds = %pm_integer_parse_digit.exit59, %bb.q
  %.1 = phi i64 [ %.064, %bb.q ], [ %i.aq, %pm_integer_parse_digit.exit59 ] ; 2 uses
  %.043 = getelementptr i8, ptr %.04365, i64 1    ; 2 uses
  %exitcond.not = icmp eq ptr %.043, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.af, %pm_integer_parse_digit.exit
  %.0.lcssa = phi i64 [ %i.ag, %pm_integer_parse_digit.exit ], [ %.1, %bb.af ]
  %i.dk = trunc nuw i64 %.0.lcssa to i32
  %i.dl = getelementptr i8, ptr %0, i64 16
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !30
  br label %bb.ag

bb.ag:                                            ; preds = %pm_integer_parse_big.exit, %._crit_edge, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @pm_integer_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !31, !range !32, !noundef !33 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1                  ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4, !tbaa !31, !range !32, !noundef !33
  %.not = icmp eq i8 %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = select i1 %i.c, i32 -1, i32 1
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.neg = select i1 %i.c, i32 1, i32 -1           ; 4 uses
  %i.g = select i1 %i.c, i32 -1, i32 1            ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ugt i32 %i.o, %i.q
  %. = select i1 %i.s, i32 %i.g, i32 0
  br label %.thread

bb.g:                                             ; preds = %bb.c
  %i.t = load i64, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.u = load i64, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = icmp ugt i64 %i.t, %i.u
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %.thread, label %.preheader
end_hunk_0
