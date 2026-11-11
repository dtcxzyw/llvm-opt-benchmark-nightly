Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlansf?download=true
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define double @dlansf_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 104 uses
  %i.b = alloca i32, align 4                      ; 44 uses
  %i.c = alloca double, align 8                   ; 38 uses
  %i.d = alloca i32, align 4                      ; 89 uses
  %i.e = alloca i32, align 4                      ; 57 uses
  %i.f = alloca double, align 8                   ; 69 uses
  %i.g = alloca double, align 8                   ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.h = load i32, ptr %3, align 4, !tbaa !104    ; 2 uses
  switch i32 %i.h, label %bb.c [
    i32 0, label %.loopexit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load double, ptr %4, align 8, !tbaa !106 ; 3 uses
  %i.j = fcmp ult double %i.i, 0.000000e+00
  %i.k = fneg double %i.i
  %i.l = select i1 %i.j, double %i.k, double %i.i
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %spec.store.select = and i32 %i.h, 1            ; 4 uses
  %i.m = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str) #7
  %.not = icmp eq i32 %i.m, 0                     ; 6 uses
  %i.n = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  %.not852.not.not.not.not.not.not.not.not = icmp eq i32 %i.n, 0 ; 8 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !104    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = xor i32 %spec.store.select, 1
  %spec.select2244.a = add nsw i32 %i.o, %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = add nsw i32 %i.o, 1
  %i.r = sdiv i32 %i.q, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0784 = phi i32 [ %i.r, %bb.e ], [ %spec.select2244.a, %bb.d ] ; 58 uses
  %i.s = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %.not854 = icmp eq i32 %i.s, 0
  br i1 %.not854, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %3, align 4, !tbaa !104    ; 7 uses
  %i.u = add nsw i32 %i.t, 1
  %i.v = sdiv i32 %i.u, 2                         ; 5 uses
  store i32 %i.v, ptr %i.e, align 4, !tbaa !104
  %.not973 = icmp eq i32 %spec.store.select, 0
  br i1 %.not973, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not9871018 = icmp slt i32 %i.t, 1             ; 2 uses
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !104
  store i32 0, ptr %i.d, align 4, !tbaa !104
  br i1 %.not9871018, label %.loopexit, label %.lr.ph1021

.lr.ph1021:                                       ; preds = %bb.i, %._crit_edge1016
  %i.x = phi i32 [ %i.ao, %._crit_edge1016 ], [ %i.w, %bb.i ]
  %.pre1968.a = phi i32 [ %i.aq, %._crit_edge1016 ], [ 0, %bb.i ] ; 2 uses
  %.07851019 = phi double [ %.1.lcssa, %._crit_edge1016 ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.y = load i32, ptr %3, align 4, !tbaa !104    ; 2 uses
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.b, align 4, !tbaa !104
  %.not9881011 = icmp slt i32 %i.y, 1
  br i1 %.not9881011, label %._crit_edge1016, label %.lr.ph1015

.lr.ph1015:                                       ; preds = %.lr.ph1021, %._crit_edge1969
  %i.aa = phi i32 [ %i.al, %._crit_edge1969 ], [ %.pre1968.a, %.lr.ph1021 ] ; 2 uses
  %.11013 = phi double [ %.2, %._crit_edge1969 ], [ %.07851019, %.lr.ph1021 ] ; 2 uses
  %.07941012 = phi i32 [ %i.am, %._crit_edge1969 ], [ 0, %.lr.ph1021 ] ; 3 uses
  %i.ab = mul nsw i32 %i.aa, %.0784
  %i.ac = add nsw i32 %i.ab, %.07941012
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !106 ; 3 uses
  %i.ag = fcmp oge double %i.af, 0.000000e+00
  %i.ah = fneg double %i.af
  %i.ai = select i1 %i.ag, double %i.af, double %i.ah ; 3 uses
  store double %i.ai, ptr %i.c, align 8, !tbaa !106
  %i.aj = fcmp olt double %.11013, %i.ai
  br i1 %i.aj, label %._crit_edge1969, label %bb.j

bb.j:                                             ; preds = %.lr.ph1015
  %i.ak = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not989 = icmp eq i32 %i.ak, 0
  %.pre1967.a = load i32, ptr %i.d, align 4, !tbaa !104
  %.pre1970 = load double, ptr %i.c, align 8
  %spec.select = select i1 %.not989, double %.11013, double %.pre1970
  br label %._crit_edge1969

._crit_edge1969:                                  ; preds = %bb.j, %.lr.ph1015
  %i.al = phi i32 [ %.pre1967.a, %bb.j ], [ %i.aa, %.lr.ph1015 ] ; 2 uses
  %.2 = phi double [ %spec.select, %bb.j ], [ %i.ai, %.lr.ph1015 ] ; 2 uses
  %i.am = add nuw nsw i32 %.07941012, 1
  %i.an = load i32, ptr %i.b, align 4, !tbaa !104
  %.not988.not = icmp slt i32 %.07941012, %i.an
  br i1 %.not988.not, label %.lr.ph1015, label %._crit_edge1016.loopexit, !llvm.loop !8

._crit_edge1016.loopexit:                         ; preds = %._crit_edge1969
  %.pre1971 = load i32, ptr %i.a, align 4, !tbaa !104
  br label %._crit_edge1016

._crit_edge1016:                                  ; preds = %._crit_edge1016.loopexit, %.lr.ph1021
  %i.ao = phi i32 [ %i.x, %.lr.ph1021 ], [ %.pre1971, %._crit_edge1016.loopexit ] ; 2 uses
  %i.ap = phi i32 [ %.pre1968.a, %.lr.ph1021 ], [ %i.al, %._crit_edge1016.loopexit ] ; 2 uses
  %.1.lcssa = phi double [ %.07851019, %.lr.ph1021 ], [ %.2, %._crit_edge1016.loopexit ] ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.aq, ptr %i.d, align 4, !tbaa !104
  %.not987.not = icmp slt i32 %i.ap, %i.ao
  br i1 %.not987.not, label %.lr.ph1021, label %.loopexit, !llvm.loop !9

bb.k:                                             ; preds = %bb.h
  %i.ar = add nsw i32 %i.t, -1                    ; 2 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !104
  store i32 0, ptr %i.d, align 4, !tbaa !104
  br i1 %.not9871018, label %.loopexit, label %.lr.ph1009

.lr.ph1009:                                       ; preds = %bb.k, %._crit_edge
  %i.as = phi i32 [ %i.bi, %._crit_edge ], [ %i.ar, %bb.k ]
  %.pre1963 = phi i32 [ %i.bk, %._crit_edge ], [ 0, %bb.k ] ; 2 uses
  %6 = phi i32 [ %7, %._crit_edge ], [ %i.v, %bb.k ] ; 3 uses
  %.31007 = phi double [ %.4.lcssa, %._crit_edge ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %i.at = add nsw i32 %6, -1
  store i32 %i.at, ptr %i.b, align 4, !tbaa !104
  %.not9841003 = icmp slt i32 %6, 1
  br i1 %.not9841003, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph1009, %._crit_edge1964
  %i.au = phi i32 [ %i.bf, %._crit_edge1964 ], [ %.pre1963, %.lr.ph1009 ] ; 2 uses
  %.41005 = phi double [ %.5, %._crit_edge1964 ], [ %.31007, %.lr.ph1009 ] ; 2 uses
  %.17951004 = phi i32 [ %i.bg, %._crit_edge1964 ], [ 0, %.lr.ph1009 ] ; 3 uses
  %i.av = mul nsw i32 %i.au, %.0784
  %i.aw = add nsw i32 %i.av, %.17951004
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !106 ; 3 uses
  %i.ba = fcmp oge double %i.az, 0.000000e+00
  %i.bb = fneg double %i.az
  %i.bc = select i1 %i.ba, double %i.az, double %i.bb ; 3 uses
  store double %i.bc, ptr %i.c, align 8, !tbaa !106
  %i.bd = fcmp olt double %.41005, %i.bc
  br i1 %i.bd, label %._crit_edge1964, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.be = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not985 = icmp eq i32 %i.be, 0
  %.pre.a = load i32, ptr %i.d, align 4, !tbaa !104
  %.pre1965 = load double, ptr %i.c, align 8
  %spec.select2233 = select i1 %.not985, double %.41005, double %.pre1965
  br label %._crit_edge1964

._crit_edge1964:                                  ; preds = %bb.l, %.lr.ph
  %i.bf = phi i32 [ %.pre.a, %bb.l ], [ %i.au, %.lr.ph ] ; 2 uses
  %.5 = phi double [ %spec.select2233, %bb.l ], [ %i.bc, %.lr.ph ] ; 2 uses
  %i.bg = add nuw nsw i32 %.17951004, 1
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !104
  %.not984.not = icmp slt i32 %.17951004, %i.bh
  br i1 %.not984.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %._crit_edge1964
  %.pre = load i32, ptr %i.e, align 4, !tbaa !104
  %.pre1966 = load i32, ptr %i.a, align 4, !tbaa !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph1009
  %i.bi = phi i32 [ %i.as, %.lr.ph1009 ], [ %.pre1966, %._crit_edge.loopexit ] ; 2 uses
  %i.bj = phi i32 [ %.pre1963, %.lr.ph1009 ], [ %i.bf, %._crit_edge.loopexit ] ; 2 uses
  %7 = phi i32 [ %6, %.lr.ph1009 ], [ %.pre, %._crit_edge.loopexit ]
  %.4.lcssa = phi double [ %.31007, %.lr.ph1009 ], [ %.5, %._crit_edge.loopexit ] ; 2 uses
  %i.bk = add nsw i32 %i.bj, 1                    ; 2 uses
  store i32 %i.bk, ptr %i.d, align 4, !tbaa !104
  %.not983.not = icmp slt i32 %i.bj, %i.bi
  br i1 %.not983.not, label %.lr.ph1009, label %.loopexit, !llvm.loop !11

bb.m:                                             ; preds = %bb.g
  br i1 %.not, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %i.v, -1                    ; 2 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !104
  store i32 0, ptr %i.d, align 4, !tbaa !104
  %.not9791042 = icmp slt i32 %i.t, 1
  br i1 %.not9791042, label %.loopexit, label %.lr.ph1045

.lr.ph1045:                                       ; preds = %bb.n, %._crit_edge1040
  %i.bm = phi i32 [ %i.cc, %._crit_edge1040 ], [ %i.bl, %bb.n ]
  %.pre1978 = phi i32 [ %i.ce, %._crit_edge1040 ], [ 0, %bb.n ] ; 2 uses
  %.61043 = phi double [ %.7.lcssa, %._crit_edge1040 ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.bn = load i32, ptr %3, align 4, !tbaa !104   ; 2 uses
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !104
  %.not9801035 = icmp slt i32 %i.bn, 0
  br i1 %.not9801035, label %._crit_edge1040, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %.lr.ph1045, %._crit_edge1979
  %i.bo = phi i32 [ %i.bz, %._crit_edge1979 ], [ %.pre1978, %.lr.ph1045 ] ; 2 uses
  %.71037 = phi double [ %.8, %._crit_edge1979 ], [ %.61043, %.lr.ph1045 ] ; 2 uses
  %.27961036 = phi i32 [ %i.ca, %._crit_edge1979 ], [ 0, %.lr.ph1045 ] ; 3 uses
  %i.bp = mul nsw i32 %i.bo, %.0784
  %i.bq = add nsw i32 %i.bp, %.27961036
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %4, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !106 ; 3 uses
  %i.bu = fcmp oge double %i.bt, 0.000000e+00
  %i.bv = fneg double %i.bt
  %i.bw = select i1 %i.bu, double %i.bt, double %i.bv ; 3 uses
  store double %i.bw, ptr %i.c, align 8, !tbaa !106
  %i.bx = fcmp olt double %.71037, %i.bw
  br i1 %i.bx, label %._crit_edge1979, label %bb.o

bb.o:                                             ; preds = %.lr.ph1039
  %i.by = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not981 = icmp eq i32 %i.by, 0
  %.pre1977.a = load i32, ptr %i.d, align 4, !tbaa !104
  %.pre1980.a = load double, ptr %i.c, align 8
  %spec.select2234 = select i1 %.not981, double %.71037, double %.pre1980.a
  br label %._crit_edge1979

._crit_edge1979:                                  ; preds = %bb.o, %.lr.ph1039
  %i.bz = phi i32 [ %.pre1977.a, %bb.o ], [ %i.bo, %.lr.ph1039 ] ; 2 uses
  %.8 = phi double [ %spec.select2234, %bb.o ], [ %i.bw, %.lr.ph1039 ] ; 2 uses
  %i.ca = add nuw nsw i32 %.27961036, 1
  %i.cb = load i32, ptr %i.b, align 4, !tbaa !104
  %.not980.not = icmp slt i32 %.27961036, %i.cb
  br i1 %.not980.not, label %.lr.ph1039, label %._crit_edge1040.loopexit, !llvm.loop !12

._crit_edge1040.loopexit:                         ; preds = %._crit_edge1979
  %.pre1981 = load i32, ptr %i.a, align 4, !tbaa !104
  br label %._crit_edge1040

._crit_edge1040:                                  ; preds = %._crit_edge1040.loopexit, %.lr.ph1045
  %i.cc = phi i32 [ %i.bm, %.lr.ph1045 ], [ %.pre1981, %._crit_edge1040.loopexit ] ; 2 uses
  %i.cd = phi i32 [ %.pre1978, %.lr.ph1045 ], [ %i.bz, %._crit_edge1040.loopexit ] ; 2 uses
  %.7.lcssa = phi double [ %.61043, %.lr.ph1045 ], [ %.8, %._crit_edge1040.loopexit ] ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1                    ; 2 uses
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !104
  %.not979.not = icmp slt i32 %i.cd, %i.cc
  br i1 %.not979.not, label %.lr.ph1045, label %.loopexit, !llvm.loop !13

bb.p:                                             ; preds = %bb.m
  store i32 %i.t, ptr %i.a, align 4, !tbaa !104
  store i32 0, ptr %i.d, align 4, !tbaa !104
  %.not9751030 = icmp slt i32 %i.t, 0
  br i1 %.not9751030, label %.loopexit, label %.lr.ph1033

.lr.ph1033:                                       ; preds = %bb.p, %._crit_edge1028
  %i.cf = phi i32 [ %i.cv, %._crit_edge1028 ], [ %i.t, %bb.p ]
  %.pre1973 = phi i32 [ %i.cx, %._crit_edge1028 ], [ 0, %bb.p ] ; 2 uses
  %8 = phi i32 [ %9, %._crit_edge1028 ], [ %i.v, %bb.p ] ; 3 uses
  %.91031 = phi double [ %.10.lcssa, %._crit_edge1028 ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %i.cg = add nsw i32 %8, -1
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !104
  %.not9761023 = icmp slt i32 %8, 1
  br i1 %.not9761023, label %._crit_edge1028, label %.lr.ph1027

.lr.ph1027:                                       ; preds = %.lr.ph1033, %._crit_edge1974
  %i.ch = phi i32 [ %i.cs, %._crit_edge1974 ], [ %.pre1973, %.lr.ph1033 ] ; 2 uses
  %.101025 = phi double [ %.11, %._crit_edge1974 ], [ %.91031, %.lr.ph1033 ] ; 2 uses
  %.37971024 = phi i32 [ %i.ct, %._crit_edge1974 ], [ 0, %.lr.ph1033 ] ; 3 uses
  %i.ci = mul nsw i32 %i.ch, %.0784
  %i.cj = add nsw i32 %i.ci, %.37971024
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !106 ; 3 uses
  %i.cn = fcmp oge double %i.cm, 0.000000e+00
  %i.co = fneg double %i.cm
  %i.cp = select i1 %i.cn, double %i.cm, double %i.co ; 3 uses
  store double %i.cp, ptr %i.c, align 8, !tbaa !106
  %i.cq = fcmp olt double %.101025, %i.cp
  br i1 %i.cq, label %._crit_edge1974, label %bb.q

bb.q:                                             ; preds = %.lr.ph1027
  %i.cr = call i32 @disnan_(ptr noundef nonnull %i.c) #7
  %.not977 = icmp eq i32 %i.cr, 0
  %.pre1972 = load i32, ptr %i.d, align 4, !tbaa !104
  %.pre1975 = load double, ptr %i.c, align 8
  %spec.select2235 = select i1 %.not977, double %.101025, double %.pre1975
  br label %._crit_edge1974

._crit_edge1974:                                  ; preds = %bb.q, %.lr.ph1027
  %i.cs = phi i32 [ %.pre1972, %bb.q ], [ %i.ch, %.lr.ph1027 ] ; 2 uses
  %.11 = phi double [ %spec.select2235, %bb.q ], [ %i.cp, %.lr.ph1027 ] ; 2 uses
  %i.ct = add nuw nsw i32 %.37971024, 1
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !104
  %.not976.not = icmp slt i32 %.37971024, %i.cu
  br i1 %.not976.not, label %.lr.ph1027, label %._crit_edge1028.loopexit, !llvm.loop !14

._crit_edge1028.loopexit:                         ; preds = %._crit_edge1974
  %.pre1974 = load i32, ptr %i.e, align 4, !tbaa !104
  %.pre1976 = load i32, ptr %i.a, align 4, !tbaa !104
  br label %._crit_edge1028

._crit_edge1028:                                  ; preds = %._crit_edge1028.loopexit, %.lr.ph1033
  %i.cv = phi i32 [ %i.cf, %.lr.ph1033 ], [ %.pre1976, %._crit_edge1028.loopexit ] ; 2 uses
  %i.cw = phi i32 [ %.pre1973, %.lr.ph1033 ], [ %i.cs, %._crit_edge1028.loopexit ] ; 2 uses
  %9 = phi i32 [ %8, %.lr.ph1033 ], [ %.pre1974, %._crit_edge1028.loopexit ]
  %.10.lcssa = phi double [ %.91031, %.lr.ph1033 ], [ %.11, %._crit_edge1028.loopexit ] ; 2 uses
  %i.cx = add nsw i32 %i.cw, 1                    ; 2 uses
  store i32 %i.cx, ptr %i.d, align 4, !tbaa !104
  %.not975.not = icmp slt i32 %i.cw, %i.cv
  br i1 %.not975.not, label %.lr.ph1033, label %.loopexit, !llvm.loop !15

bb.r:                                             ; preds = %bb.f
  %i.cy = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #7
  %.not855 = icmp eq i32 %i.cy, 0
  br i1 %.not855, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cz = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %.not856 = icmp eq i32 %i.cz, 0
  br i1 %.not856, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.da = load i8, ptr %0, align 1, !tbaa !108
  %i.db = icmp eq i8 %i.da, 49
  br i1 %i.db, label %bb.u, label %bb.cf

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.dc = load i32, ptr %3, align 4, !tbaa !104   ; 48 uses
  %i.dd = sdiv i32 %i.dc, 2                       ; 82 uses
  store i32 %i.dd, ptr %i.e, align 4, !tbaa !104
  %.not946 = icmp eq i32 %spec.store.select, 0    ; 2 uses
  br i1 %.not, label %bb.v, label %bb.av

bb.v:                                             ; preds = %bb.u
  br i1 %.not946, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not852.not.not.not.not.not.not.not.not, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = add nsw i32 %i.dd, -1                   ; 4 uses
  %.not966.not1451 = icmp sgt i32 %i.dc, 1
  br i1 %.not966.not1451, label %._crit_edge1455.thread, label %._crit_edge1455

._crit_edge1455.thread:                           ; preds = %bb.x
  %i.df = zext i32 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = add nuw nsw i64 %i.dg, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %5, i8 0, i64 %i.dh, i1 false), !tbaa !106
  store i32 %i.dd, ptr %i.a, align 4, !tbaa !104
  br label %.lr.ph1481

._crit_edge1455:                                  ; preds = %bb.x
  %.not9681478 = icmp slt i32 %i.dc, -1
  br i1 %.not9681478, label %._crit_edge1482, label %.lr.ph1481

.lr.ph1481:                                       ; preds = %._crit_edge1455.thread, %._crit_edge1455
  %i.di = shl nuw nsw i32 %i.dd, 1
  %i.dj = zext i32 %i.dd to i64                   ; 2 uses
  %i.dk = sext i32 %i.de to i64
  %i.dl = sext i32 %.0784 to i64
  %i.dm = sext i32 %i.dd to i64
  %i.dn = add nsw i32 %i.dd, 1                    ; 2 uses
  %wide.trip.count1884 = zext i32 %i.dn to i64
  %wide.trip.count1877 = zext i32 %i.de to i64    ; 3 uses
  %i.do = add nsw i64 %i.dj, -1
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph1481, %._crit_edge1472
  %indvars.iv1879 = phi i64 [ %i.dj, %.lr.ph1481 ], [ %indvars.iv.next1880, %._crit_edge1472 ] ; 4 uses
  %indvars.iv1868 = phi i64 [ 0, %.lr.ph1481 ], [ %indvars.iv.next1869, %._crit_edge1472 ] ; 11 uses
  %i.dp = sub nsw i64 %wide.trip.count1877, %indvars.iv1868
  %i.dq = add nuw nsw i64 %indvars.iv1868, %i.dm  ; 3 uses
  %.not969.not1458 = icmp sgt i64 %i.dq, 0
  %i.dr = mul nsw i64 %indvars.iv1868, %i.dl      ; 4 uses
  br i1 %.not969.not1458, label %.lr.ph1461, label %._crit_edge1462

.lr.ph1461:                                       ; preds = %bb.y
  %i.ds = add i64 %i.do, %indvars.iv1868
  %invariant.gep2213.a = getelementptr [8 x i8], ptr %4, i64 %i.dr ; 5 uses
  %xtraiter2468 = and i64 %indvars.iv1879, 3      ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 3
  br i1 %i.dt, label %.epil.preheader2467, label %.lr.ph1461.new

.lr.ph1461.new:                                   ; preds = %.lr.ph1461
  %unroll_iter2475 = and i64 %indvars.iv1879, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph1461.new
  %indvars.iv1861 = phi i64 [ 0, %.lr.ph1461.new ], [ %indvars.iv.next1862.3, %bb.z ] ; 6 uses
  %i.du = phi double [ 0.000000e+00, %.lr.ph1461.new ], [ %i.ex, %bb.z ]
  %niter2476 = phi i64 [ 0, %.lr.ph1461.new ], [ %niter2476.next.3, %bb.z ]
  %gep2214.a = getelementptr [8 x i8], ptr %invariant.gep2213.a, i64 %indvars.iv1861
  %i.dv = load double, ptr %gep2214.a, align 8, !tbaa !106 ; 3 uses
  %i.dw = fcmp oge double %i.dv, 0.000000e+00
  %i.dx = fneg double %i.dv
  %i.dy = select i1 %i.dw, double %i.dv, double %i.dx ; 2 uses
  %i.dz = fadd double %i.du, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1861 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !106
  %i.ec = fadd double %i.dy, %i.eb
  store double %i.ec, ptr %i.ea, align 8, !tbaa !106
  %indvars.iv.next1862 = or disjoint i64 %indvars.iv1861, 1 ; 2 uses
  %gep2214.1 = getelementptr [8 x i8], ptr %invariant.gep2213.a, i64 %indvars.iv.next1862
  %i.ed = load double, ptr %gep2214.1, align 8, !tbaa !106 ; 3 uses
  %i.ee = fcmp oge double %i.ed, 0.000000e+00
  %i.ef = fneg double %i.ed
  %i.eg = select i1 %i.ee, double %i.ed, double %i.ef ; 2 uses
  %i.eh = fadd double %i.dz, %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1862 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !106
  %i.ek = fadd double %i.eg, %i.ej
  store double %i.ek, ptr %i.ei, align 8, !tbaa !106
  %indvars.iv.next1862.1 = or disjoint i64 %indvars.iv1861, 2 ; 2 uses
  %gep2214.2 = getelementptr [8 x i8], ptr %invariant.gep2213.a, i64 %indvars.iv.next1862.1
  %i.el = load double, ptr %gep2214.2, align 8, !tbaa !106 ; 3 uses
  %i.em = fcmp oge double %i.el, 0.000000e+00
  %i.en = fneg double %i.el
  %i.eo = select i1 %i.em, double %i.el, double %i.en ; 2 uses
  %i.ep = fadd double %i.eh, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1862.1 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !106
  %i.es = fadd double %i.eo, %i.er
  store double %i.es, ptr %i.eq, align 8, !tbaa !106
  %indvars.iv.next1862.2 = or disjoint i64 %indvars.iv1861, 3 ; 2 uses
  %gep2214.3 = getelementptr [8 x i8], ptr %invariant.gep2213.a, i64 %indvars.iv.next1862.2
  %i.et = load double, ptr %gep2214.3, align 8, !tbaa !106 ; 3 uses
  %i.eu = fcmp oge double %i.et, 0.000000e+00
  %i.ev = fneg double %i.et
  %i.ew = select i1 %i.eu, double %i.et, double %i.ev ; 2 uses
  %i.ex = fadd double %i.ep, %i.ew                ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next1862.2 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !106
  %i.fa = fadd double %i.ew, %i.ez
  store double %i.fa, ptr %i.ey, align 8, !tbaa !106
  %indvars.iv.next1862.3 = add nuw nsw i64 %indvars.iv1861, 4 ; 2 uses
  %niter2476.next.3 = add i64 %niter2476, 4       ; 2 uses
  %niter2476.ncmp.3 = icmp eq i64 %niter2476.next.3, %unroll_iter2475
  br i1 %niter2476.ncmp.3, label %._crit_edge1462.loopexit.unr-lcssa, label %bb.z, !llvm.loop !16

._crit_edge1462.loopexit.unr-lcssa:               ; preds = %bb.z
  %lcmp.mod2472.not = icmp eq i64 %xtraiter2468, 0
  br i1 %lcmp.mod2472.not, label %._crit_edge1462.loopexit, label %.epil.preheader2467

.epil.preheader2467:                              ; preds = %._crit_edge1462.loopexit.unr-lcssa, %.lr.ph1461
  %indvars.iv1861.epil.init = phi i64 [ 0, %.lr.ph1461 ], [ %indvars.iv.next1862.3, %._crit_edge1462.loopexit.unr-lcssa ]
  %.epil.init2471 = phi double [ 0.000000e+00, %.lr.ph1461 ], [ %i.ex, %._crit_edge1462.loopexit.unr-lcssa ]
  %lcmp.mod2474 = icmp ne i64 %xtraiter2468, 0
  tail call void @llvm.assume(i1 %lcmp.mod2474)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader2467
  %indvars.iv1861.epil = phi i64 [ %indvars.iv1861.epil.init, %.epil.preheader2467 ], [ %indvars.iv.next1862.epil, %bb.aa ] ; 3 uses
  %i.fb = phi double [ %.epil.init2471, %.epil.preheader2467 ], [ %i.fg, %bb.aa ]
  %epil.iter2469 = phi i64 [ 0, %.epil.preheader2467 ], [ %epil.iter2469.next, %bb.aa ]
  %gep2214.epil = getelementptr [8 x i8], ptr %invariant.gep2213.a, i64 %indvars.iv1861.epil
  %i.fc = load double, ptr %gep2214.epil, align 8, !tbaa !106 ; 3 uses
  %i.fd = fcmp oge double %i.fc, 0.000000e+00
  %i.fe = fneg double %i.fc
  %i.ff = select i1 %i.fd, double %i.fc, double %i.fe ; 2 uses
  %i.fg = fadd double %i.fb, %i.ff                ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1861.epil ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !106
  %i.fj = fadd double %i.ff, %i.fi
  store double %i.fj, ptr %i.fh, align 8, !tbaa !106
  %indvars.iv.next1862.epil = add nuw nsw i64 %indvars.iv1861.epil, 1
  %epil.iter2469.next = add i64 %epil.iter2469, 1 ; 2 uses
  %epil.iter2469.cmp.not = icmp eq i64 %epil.iter2469.next, %xtraiter2468
  br i1 %epil.iter2469.cmp.not, label %._crit_edge1462.loopexit, label %bb.aa, !llvm.loop !17

._crit_edge1462.loopexit:                         ; preds = %bb.aa, %._crit_edge1462.loopexit.unr-lcssa
  %.lcssa2299.a = phi double [ %i.ex, %._crit_edge1462.loopexit.unr-lcssa ], [ %i.fg, %bb.aa ]
  %i.fk = trunc nuw nsw i64 %indvars.iv1879 to i32
  br label %._crit_edge1462

._crit_edge1462:                                  ; preds = %bb.y, %._crit_edge1462.loopexit
  %.lcssa1457 = phi double [ %.lcssa2299.a, %._crit_edge1462.loopexit ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %.5799.lcssa = phi i32 [ %i.fk, %._crit_edge1462.loopexit ], [ 0, %bb.y ] ; 4 uses
  %i.fl = sext i32 %.5799.lcssa to i64
  %i.fm = getelementptr [8 x i8], ptr %4, i64 %i.dr
  %i.fn = getelementptr [8 x i8], ptr %i.fm, i64 %i.fl
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !106 ; 3 uses
  %i.fp = fcmp oge double %i.fo, 0.000000e+00
  %i.fq = fneg double %i.fo
  %i.fr = select i1 %i.fp, double %i.fo, double %i.fq
  %i.fs = fadd double %.lcssa1457, %i.fr
  %i.ft = getelementptr inbounds [8 x i8], ptr %5, i64 %i.dq
  store double %i.fs, ptr %i.ft, align 8, !tbaa !106
  %i.fu = icmp eq i32 %.5799.lcssa, %i.di
  br i1 %i.fu, label %._crit_edge1486, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge1462
  %i.fv = getelementptr [8 x i8], ptr %4, i64 %i.dr
  %i.fw = sext i32 %.5799.lcssa to i64
  %i.fx = getelementptr [8 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !106 ; 3 uses
  %i.ga = fcmp oge double %i.fz, 0.000000e+00
  %i.gb = fneg double %i.fz
  %i.gc = select i1 %i.ga, double %i.fz, double %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv1868 ; 4 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !106
  %i.gf = fadd double %i.ge, %i.gc                ; 2 uses
  store double %i.gf, ptr %i.gd, align 8, !tbaa !106
  %.not970.not1467 = icmp slt i64 %indvars.iv1868, %i.dk
end_hunk_0
