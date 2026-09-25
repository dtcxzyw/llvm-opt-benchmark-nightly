Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/time?download=true
inline.NumInlined: 123
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.google::protobuf::internal::DateTime" = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"InvalidTime\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%04d-%02d-%02dT%02d:%02d:%02d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@_ZN6google8protobuf8internal12_GLOBAL__N_112kDaysInMonthE = internal unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZN6google8protobuf8internal12_GLOBAL__N_113kDaysSinceJanE = internal unnamed_addr constant [13 x i32] [i32 0, i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"%03d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%06d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%09d\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal17SecondsToDateTimeElPNS1_8DateTimeE(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 62135596800                  ; 4 uses
  %or.cond = icmp ult i64 %i.a, 315537897600      ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %0, -49512816001
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = udiv i64 %i.a, 12622780800
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = mul nuw nsw i32 %i.d, 400
  %i.f = or disjoint i32 %i.e, 1
  %i.g = urem i64 %i.a, 12622780800
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.051 = phi i32 [ %i.f, %bb.c ], [ 1, %bb.b ]   ; 3 uses
  %.050 = phi i64 [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.lhs.trunc149 = trunc i32 %.051 to i16
  %i.h = urem i16 %.lhs.trunc149, 400
  %i.i = icmp samesign ugt i16 %i.h, 300
  %.0.i107 = select i1 %i.i, i64 3155760000, i64 3155673600 ; 2 uses
  %.not108 = icmp samesign ult i64 %.050, %.0.i107
  br i1 %.not108, label %.preheader101, label %.lr.ph

.preheader101:                                    ; preds = %.lr.ph, %bb.d
  %.152.lcssa = phi i32 [ %.051, %bb.d ], [ %i.k, %.lr.ph ]
  %.1.lcssa = phi i64 [ %.050, %bb.d ], [ %i.j, %.lr.ph ]
  %.152.lcssa.fr = freeze i32 %.152.lcssa
  br label %bb.e

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0.i111 = phi i64 [ %.0.i, %.lr.ph ], [ %.0.i107, %bb.d ]
  %.1110 = phi i64 [ %i.j, %.lr.ph ], [ %.050, %bb.d ]
  %.152109 = phi i32 [ %i.k, %.lr.ph ], [ %.051, %bb.d ]
  %i.j = sub nuw nsw i64 %.1110, %.0.i111         ; 3 uses
  %i.k = add nsw i32 %.152109, 100                ; 3 uses
  %2 = srem i32 %i.k, 400                         ; 2 uses
  %3 = icmp eq i32 %2, 0
  %4 = icmp sgt i32 %2, 300
  %or.cond.i = or i1 %3, %4
  %.0.i = select i1 %or.cond.i, i64 3155760000, i64 3155673600 ; 2 uses
  %.not = icmp samesign ult i64 %i.j, %.0.i
  br i1 %.not, label %.preheader101, label %.lr.ph, !llvm.loop !27

bb.e:                                             ; preds = %.preheader101, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69
  %.253 = phi i32 [ %i.s, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69 ], [ %.152.lcssa.fr, %.preheader101 ] ; 4 uses
  %.2 = phi i64 [ %i.r, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69 ], [ %.1.lcssa, %.preheader101 ] ; 5 uses
  %i.l = srem i32 %.253, 100                      ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = icmp sgt i32 %i.l, 96
  %or.cond.i64 = or i1 %i.m, %i.n
  br i1 %or.cond.i64, label %bb.f, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread87

bb.f:                                             ; preds = %bb.e
  %i.o = srem i32 %.253, 400                      ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = icmp sgt i32 %i.o, 396
  %or.cond7.i = or i1 %i.p, %i.q
  br i1 %or.cond7.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit: ; preds = %bb.f
  %.not59 = icmp slt i64 %.2, 126230400
  br i1 %.not59, label %.preheader.preheader, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69

_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread87: ; preds = %bb.e
  %.not5988 = icmp slt i64 %.2, 126230400
  br i1 %.not5988, label %.preheader.preheader, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69

.preheader.preheader:                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread87
  br label %.preheader

_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread: ; preds = %bb.f
  %.not5980 = icmp slt i64 %.2, 126144000
  br i1 %.not5980, label %.preheader.preheader, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69

_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread87, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread
  %.0.i67.neg = phi i64 [ -126144000, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread ], [ -126230400, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread87 ], [ -126230400, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit ]
  %i.r = add nsw i64 %.0.i67.neg, %.2
  %i.s = add i32 %.253, 4
  br label %bb.e, !llvm.loop !28

.preheader:                                       ; preds = %.preheader.preheader, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73
  %.354 = phi i32 [ %i.aa, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73 ], [ %.253, %.preheader.preheader ] ; 5 uses
  %.3 = phi i64 [ %i.z, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73 ], [ %.2, %.preheader.preheader ] ; 13 uses
  %i.t = srem i32 %.354, 400
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.v = and i32 %.354, 3
  %i.w = icmp eq i32 %i.v, 0                      ; 2 uses
  %i.x = srem i32 %.354, 100
  %i.y = icmp ne i32 %i.x, 0                      ; 3 uses
  %or.cond.i70 = and i1 %i.w, %i.y
  br i1 %or.cond.i70, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread90, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit: ; preds = %.preheader
  %.not60 = icmp slt i64 %.3, 31622400
  br i1 %.not60, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73

_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread90: ; preds = %bb.g
  %.not6091 = icmp slt i64 %.3, 31622400
  br i1 %.not6091, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73

_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread: ; preds = %bb.g
  %.not6081 = icmp slt i64 %.3, 31536000
  br i1 %.not6081, label %.thread83, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73

_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread90, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread
  %.neg = phi i64 [ -31536000, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread ], [ -31622400, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit ], [ -31622400, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread90 ]
  %i.z = add nsw i64 %.neg, %.3
  %i.aa = add i32 %.354, 1
  br label %.preheader, !llvm.loop !29

.thread83:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread
  %brmerge.demorgan = and i1 %i.w, %i.y
  br i1 %brmerge.demorgan, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread90
  br i1 %i.y, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit, %.thread83, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit
  %.not6185.peel = icmp slt i64 %.3, 2678400
  br i1 %.not6185.peel, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel
  %i.ab = add nsw i64 %.3, -2678400
  %.not61.peel138 = icmp samesign ult i64 %.3, 5184000
  br i1 %.not61.peel138, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137
  %i.ac = add nsw i64 %.3, -5184000               ; 2 uses
  %.not6185185 = icmp slt i64 %.3, 7862400
  br i1 %.not6185185, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us: ; preds = %.thread83, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit
  %.not6185.us114 = icmp slt i64 %.3, 2678400
  br i1 %.not6185.us114, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us
  %i.ad = phi i32 [ %i.ah, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us ], [ 31, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us ], [ 1, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ]
  %.4.us116 = phi i64 [ %i.af, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ]
  %i.ae = sext i32 %i.ad to i64
  %.neg100.us = mul nsw i64 %i.ae, -86400
  %i.af = add i64 %.neg100.us, %.4.us116          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_112kDaysInMonthE, i64 %indvars.iv.next
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9  ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.ai, 86400
  %.not6185.us = icmp slt i64 %i.af, %i.aj
  br i1 %.not6185.us, label %.split.us.loopexit120, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us, !llvm.loop !30

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78
  %i.ak = phi i64 [ %i.ao, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78 ], [ 31, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %.4187 = phi i64 [ %i.al, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78 ], [ %i.ac, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %indvars.iv129186 = phi i64 [ %indvars.iv.next130, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78 ], [ 3, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %.neg100 = mul nsw i64 %i.ak, -86400
  %i.al = add i64 %.neg100, %.4187                ; 3 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129186, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_112kDaysInMonthE, i64 %indvars.iv.next130
  %i.an = load i32, ptr %i.am, align 4, !tbaa !9
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = mul nsw i64 %i.ao, 86400
  %.not6185 = icmp slt i64 %i.al, %i.ap
  br i1 %.not6185, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78, !llvm.loop !31

.split.us.loopexit120:                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us
  %i.aq = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.split.us

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78
  %i.ar = trunc nuw nsw i64 %indvars.iv.next130 to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137, %.split.us.loopexit120, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us
  %.us-phi = phi i32 [ %i.aq, %.split.us.loopexit120 ], [ 1, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ], [ 1, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel ], [ 2, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137 ], [ %i.ar, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge ], [ 3, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %.us-phi113 = phi i64 [ %i.af, %.split.us.loopexit120 ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel ], [ %i.ab, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137 ], [ %i.al, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge ], [ %i.ac, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ] ; 2 uses
  %i.as = sdiv i64 %.us-phi113, 86400
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.at, 1
  %i.av = srem i64 %.us-phi113, 86400
  %.lhs.trunc = trunc nsw i64 %i.av to i32        ; 2 uses
  %i.aw = sdiv i32 %.lhs.trunc, 3600
  %i.ax = srem i32 %.lhs.trunc, 3600
  %.lhs.trunc96 = trunc nsw i32 %i.ax to i16      ; 2 uses
  %i.ay = sdiv i16 %.lhs.trunc96, 60
  %i.az = sext i16 %i.ay to i32
  %i.ba = srem i16 %.lhs.trunc96, 60
  store i32 %.354, ptr %1, align 4, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.us-phi, ptr %i.bb, align 4, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.au, ptr %i.bc, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.az, ptr %i.be, align 4, !tbaa !15
  %i.bf = sext i16 %i.ba to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.split.us
  ret i1 %or.cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal17DateTimeToSecondsERKNS1_8DateTimeEPl(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %.fr47.i = freeze i32 %i.a                      ; 16 uses
  %i.b = add i32 %.fr47.i, -10000
  %or.cond.i = icmp ult i32 %i.b, -9999
  br i1 %or.cond.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 5 uses
  %i.e = add i32 %i.d, -13
  %or.cond25.i = icmp ult i32 %i.e, -12
  br i1 %or.cond25.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 4 uses
  %i.h = add i32 %i.g, -32
  %or.cond26.i = icmp ult i32 %i.h, -31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %or.cond27.i = icmp ugt i32 %i.j, 23
  %or.cond34.i = select i1 %or.cond26.i, i1 true, i1 %or.cond27.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
