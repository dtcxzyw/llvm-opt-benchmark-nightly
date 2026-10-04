Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/time?download=true
inline.NumInlined: 123
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
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
  %i.l = srem i32 %i.k, 400                       ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  %i.n = icmp sgt i32 %i.l, 300
  %or.cond.i = or i1 %i.m, %i.n
  %.0.i = select i1 %or.cond.i, i64 3155760000, i64 3155673600 ; 2 uses
  %.not = icmp samesign ult i64 %i.j, %.0.i
  br i1 %.not, label %.preheader101, label %.lr.ph, !llvm.loop !25

bb.e:                                             ; preds = %.preheader101, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69
  %.253 = phi i32 [ %i.v, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69 ], [ %.152.lcssa.fr, %.preheader101 ] ; 4 uses
  %.2 = phi i64 [ %i.u, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit69 ], [ %.1.lcssa, %.preheader101 ] ; 5 uses
  %i.o = srem i32 %.253, 100                      ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = icmp sgt i32 %i.o, 96
  %or.cond.i64 = or i1 %i.p, %i.q
  br i1 %or.cond.i64, label %bb.f, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.thread87

bb.f:                                             ; preds = %bb.e
  %i.r = srem i32 %.253, 400                      ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %i.t = icmp sgt i32 %i.r, 396
  %or.cond7.i = or i1 %i.s, %i.t
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
  %i.u = add nsw i64 %.0.i67.neg, %.2
  %i.v = add i32 %.253, 4
  br label %bb.e, !llvm.loop !26

.preheader:                                       ; preds = %.preheader.preheader, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73
  %.354 = phi i32 [ %i.ad, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73 ], [ %.253, %.preheader.preheader ] ; 5 uses
  %.3 = phi i64 [ %i.ac, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit73 ], [ %.2, %.preheader.preheader ] ; 13 uses
  %i.w = srem i32 %.354, 400
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.y = and i32 %.354, 3
  %i.z = icmp eq i32 %i.y, 0                      ; 2 uses
  %i.aa = srem i32 %.354, 100
  %i.ab = icmp ne i32 %i.aa, 0                    ; 3 uses
  %or.cond.i70 = and i1 %i.z, %i.ab
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
  %i.ac = add nsw i64 %.neg, %.3
  %i.ad = add i32 %.354, 1
  br label %.preheader, !llvm.loop !27

.thread83:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread
  %brmerge.demorgan = and i1 %i.z, %i.ab
  br i1 %brmerge.demorgan, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.thread90
  br i1 %i.ab, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit, %.thread83, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit
  %.not6185.peel = icmp slt i64 %.3, 2678400
  br i1 %.not6185.peel, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel
  %i.ae = add nsw i64 %.3, -2678400
  %.not61.peel138 = icmp samesign ult i64 %.3, 5184000
  br i1 %.not61.peel138, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137
  %i.af = add nsw i64 %.3, -5184000               ; 2 uses
  %.not6185185 = icmp slt i64 %.3, 7862400
  br i1 %.not6185185, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us: ; preds = %.thread83, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit
  %.not6185.us114 = icmp slt i64 %.3, 2678400
  br i1 %.not6185.us114, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us
  %i.ag = phi i32 [ %i.ak, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us ], [ 31, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us ], [ 1, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ]
  %.4.us116 = phi i64 [ %i.ai, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ]
  %i.ah = sext i32 %i.ag to i64
  %.neg100.us = mul nsw i64 %i.ah, -86400
  %i.ai = add i64 %.neg100.us, %.4.us116          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_112kDaysInMonthE, i64 %indvars.iv.next
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, 86400
  %.not6185.us = icmp slt i64 %i.ai, %i.am
  br i1 %.not6185.us, label %.split.us.loopexit120, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us, !llvm.loop !28

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78
  %i.an = phi i64 [ %i.ar, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78 ], [ 31, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %.4187 = phi i64 [ %i.ao, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78 ], [ %i.af, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %indvars.iv129186 = phi i64 [ %indvars.iv.next130, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78 ], [ 3, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %.neg100 = mul nsw i64 %i.an, -86400
  %i.ao = add i64 %.neg100, %.4187                ; 3 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129186, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_112kDaysInMonthE, i64 %indvars.iv.next130
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul nsw i64 %i.ar, 86400
  %.not6185 = icmp slt i64 %i.ao, %i.as
  br i1 %.not6185, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78, !llvm.loop !29

.split.us.loopexit120:                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.split.us

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78
  %i.au = trunc nuw nsw i64 %indvars.iv.next130 to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137, %.split.us.loopexit120, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us
  %.us-phi = phi i32 [ %i.at, %.split.us.loopexit120 ], [ 1, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ], [ 1, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel ], [ 2, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137 ], [ %i.au, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge ], [ 3, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %.us-phi113 = phi i64 [ %i.ai, %.split.us.loopexit120 ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel ], [ %i.ae, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137 ], [ %i.ao, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge ], [ %i.af, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ] ; 2 uses
  %i.av = sdiv i64 %.us-phi113, 86400
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add i32 %i.aw, 1
  %i.ay = srem i64 %.us-phi113, 86400
  %.lhs.trunc = trunc nsw i64 %i.ay to i32        ; 2 uses
  %i.az = sdiv i32 %.lhs.trunc, 3600
  %i.ba = srem i32 %.lhs.trunc, 3600
  %.lhs.trunc96 = trunc nsw i32 %i.ba to i16      ; 2 uses
  %i.bb = sdiv i16 %.lhs.trunc96, 60
  %i.bc = sext i16 %i.bb to i32
  %i.bd = srem i16 %.lhs.trunc96, 60
  store i32 %.354, ptr %1, align 4, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.us-phi, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ax, ptr %i.bf, align 4, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.az, ptr %i.bg, align 4, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !15
  %i.bi = sext i16 %i.bd to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !16
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
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %or.cond28.i = icmp ugt i32 %i.l, 59
  %or.cond36.i = select i1 %or.cond34.i, i1 true, i1 %or.cond28.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %or.cond29.i = icmp ugt i32 %i.n, 59
  %or.cond38.i = select i1 %or.cond36.i, i1 true, i1 %or.cond29.i
  br i1 %or.cond38.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.d, 2
  br i1 %i.o, label %bb.e, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc.i = trunc nuw nsw i32 %.fr47.i to i16 ; 2 uses
  %i.p = urem i16 %.lhs.trunc.i, 400
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %.fr47.i, 3
  %i.s = icmp ne i32 %i.r, 0
  %i.t = urem i16 %.lhs.trunc.i, 100
  %.not.i = icmp eq i16 %i.t, 0
  %or.cond39.i = or i1 %i.s, %.not.i
  br i1 %or.cond39.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i: ; preds = %bb.f, %bb.d
  %i.u = zext nneg i32 %i.d to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_112kDaysInMonthE, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %.not = icmp sgt i32 %i.g, %i.w
  br i1 %.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread, label %bb.g

_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit: ; preds = %bb.e, %bb.f
  %i.x = icmp samesign ult i32 %i.g, 30
  br i1 %i.x, label %bb.g, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread

bb.g:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i, %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit
  %i.y = icmp samesign ugt i32 %.fr47.i, 400
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = trunc nuw i32 %.fr47.i to i16
  %.lhs.trunc = add nsw i16 %i.z, -1
  %i.aa = udiv i16 %.lhs.trunc, 400               ; 2 uses
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = mul nuw nsw i64 %i.ab, 12622780800
  %narrow32 = mul nuw i16 %i.aa, 400
  %i.ad = or disjoint i16 %narrow32, 1
  %i.ae = zext i16 %i.ad to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.035.i = phi i32 [ %i.ae, %bb.h ], [ 1, %bb.g ] ; 6 uses
  %.0.i4 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.af = sub nsw i32 %.fr47.i, %.035.i           ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 99
  br i1 %i.ag, label %.lr.ph.i.preheader, label %.preheader48.i

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.ah = add nsw i32 %.fr47.i, -100
  %i.ai = sub nsw i32 %i.ah, %.035.i              ; 3 uses
  %i.aj = udiv i32 %i.ai, 100
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ai, 300
  br i1 %min.iters.check, label %.lr.ph.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i32 %i.ak, 134217724               ; 4 uses
  %i.al = mul i32 %n.vec, 100
  %i.am = add i32 %.035.i, %i.al                  ; 2 uses
  %i.an = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.i4, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.035.i, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i32> %broadcast.splat, <i32 0, i32 100>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.an, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi38 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 200)
  %i.ao = srem <2 x i32> %vec.ind, splat (i32 400) ; 2 uses
  %i.ap = srem <2 x i32> %step.add, splat (i32 400) ; 2 uses
  %i.aq = icmp eq <2 x i32> %i.ao, zeroinitializer
  %i.ar = icmp eq <2 x i32> %i.ap, zeroinitializer
  %i.as = icmp sgt <2 x i32> %i.ao, splat (i32 300)
  %i.at = icmp sgt <2 x i32> %i.ap, splat (i32 300)
  %i.au = or <2 x i1> %i.aq, %i.as
  %i.av = or <2 x i1> %i.ar, %i.at
  %i.aw = select <2 x i1> %i.au, <2 x i64> splat (i64 3155760000), <2 x i64> splat (i64 3155673600)
  %i.ax = select <2 x i1> %i.av, <2 x i64> splat (i64 3155760000), <2 x i64> splat (i64 3155673600)
  %i.ay = add <2 x i64> %i.aw, %vec.phi           ; 2 uses
  %i.az = add <2 x i64> %i.ax, %vec.phi38         ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 400)
  %i.ba = icmp eq i32 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.az, %i.ay
  %i.bb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %i.bc = mul i32 %n.vec, -100
  %i.bd = add i32 %i.bc, 100
  %i.be = add i32 %i.ai, %i.bd
  %cmp.n = icmp eq i32 %i.ak, %n.vec
  br i1 %cmp.n, label %.preheader48.i, label %.lr.ph.i.preheader102

.lr.ph.i.preheader102:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.150.i.ph = phi i64 [ %.0.i4, %.lr.ph.i.preheader ], [ %i.bb, %middle.block ]
  %.13649.i.ph = phi i32 [ %.035.i, %.lr.ph.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i

.preheader48.i:                                   ; preds = %.lr.ph.i, %middle.block, %bb.i
  %.pre-phi.i = phi i32 [ %i.af, %bb.i ], [ %i.be, %middle.block ], [ %i.cn, %.lr.ph.i ]
  %.136.lcssa.i = phi i32 [ %.035.i, %bb.i ], [ %i.am, %middle.block ], [ %i.cm, %.lr.ph.i ] ; 6 uses
  %.1.lcssa.i = phi i64 [ %.0.i4, %bb.i ], [ %i.bb, %middle.block ], [ %i.cl, %.lr.ph.i ] ; 3 uses
  %i.bf = icmp sgt i32 %.pre-phi.i, 3
  br i1 %i.bf, label %.lr.ph55.i.preheader, label %.preheader.i

.lr.ph55.i.preheader:                             ; preds = %.preheader48.i
  %.neg = sub i32 %.fr47.i, %.136.lcssa.i
  %reass.sub = sub i32 %.136.lcssa.i, %.fr47.i
  %i.bg = add i32 %reass.sub, 3
  %i.bh = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 -4)
  %i.bi = add i32 %.neg, %i.bh                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 2
  %i.bk = add nuw nsw i32 %i.bj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i32 %i.bi, 12
  br i1 %min.iters.check40, label %.lr.ph55.i.preheader97, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph55.i.preheader
  %n.vec42 = and i32 %i.bk, 2147483644            ; 3 uses
  %i.bl = shl i32 %n.vec42, 2
  %i.bm = add i32 %.136.lcssa.i, %i.bl            ; 2 uses
  %i.bn = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.1.lcssa.i, i64 0
  %broadcast.splatinsert43 = insertelement <2 x i32> poison, i32 %.136.lcssa.i, i64 0
  %broadcast.splat44 = shufflevector <2 x i32> %broadcast.splatinsert43, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction45 = add <2 x i32> %broadcast.splat44, <i32 0, i32 4>
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph41
  %index47 = phi i32 [ 0, %vector.ph41 ], [ %index.next53, %vector.body46 ]
  %vec.phi48 = phi <2 x i64> [ %i.bn, %vector.ph41 ], [ %i.ce, %vector.body46 ]
  %vec.phi49 = phi <2 x i64> [ zeroinitializer, %vector.ph41 ], [ %i.cf, %vector.body46 ]
  %vec.ind50 = phi <2 x i32> [ %induction45, %vector.ph41 ], [ %vec.ind.next54, %vector.body46 ] ; 4 uses
  %step.add51 = add <2 x i32> %vec.ind50, splat (i32 8) ; 2 uses
  %i.bo = srem <2 x i32> %vec.ind50, splat (i32 100) ; 2 uses
  %i.bp = srem <2 x i32> %step.add51, splat (i32 100) ; 2 uses
  %i.bq = icmp eq <2 x i32> %i.bo, zeroinitializer
  %i.br = icmp eq <2 x i32> %i.bp, zeroinitializer
  %i.bs = icmp sgt <2 x i32> %i.bo, splat (i32 96)
  %i.bt = icmp sgt <2 x i32> %i.bp, splat (i32 96)
  %i.bu = or <2 x i1> %i.bq, %i.bs
  %i.bv = or <2 x i1> %i.br, %i.bt
  %i.bw = srem <2 x i32> %vec.ind50, splat (i32 400) ; 2 uses
  %i.bx = srem <2 x i32> %step.add51, splat (i32 400) ; 2 uses
  %i.by = icmp ne <2 x i32> %i.bw, zeroinitializer
  %i.bz = icmp ne <2 x i32> %i.bx, zeroinitializer
  %i.ca = icmp slt <2 x i32> %i.bw, splat (i32 397)
  %i.cb = icmp slt <2 x i32> %i.bx, splat (i32 397)
  %.not84 = and <2 x i1> %i.by, %i.ca
  %.not87 = and <2 x i1> %i.bz, %i.cb
  %i.cc = select <2 x i1> %i.bu, <2 x i1> %.not84, <2 x i1> zeroinitializer
  %i.cd = select <2 x i1> %i.bv, <2 x i1> %.not87, <2 x i1> zeroinitializer
  %predphi = select <2 x i1> %i.cc, <2 x i64> splat (i64 126144000), <2 x i64> splat (i64 126230400)
  %predphi52 = select <2 x i1> %i.cd, <2 x i64> splat (i64 126144000), <2 x i64> splat (i64 126230400)
  %i.ce = add <2 x i64> %predphi, %vec.phi48      ; 2 uses
  %i.cf = add <2 x i64> %predphi52, %vec.phi49    ; 2 uses
  %index.next53 = add nuw i32 %index47, 4         ; 2 uses
  %vec.ind.next54 = add <2 x i32> %vec.ind50, splat (i32 16)
  %i.cg = icmp eq i32 %index.next53, %n.vec42
  br i1 %i.cg, label %middle.block55, label %vector.body46, !llvm.loop !32

middle.block55:                                   ; preds = %vector.body46
  %bin.rdx56 = add <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx56) ; 2 uses
  %cmp.n57 = icmp eq i32 %i.bk, %n.vec42
  br i1 %cmp.n57, label %.preheader.i, label %.lr.ph55.i.preheader97

.lr.ph55.i.preheader97:                           ; preds = %.lr.ph55.i.preheader, %middle.block55
  %.254.i.ph = phi i64 [ %.1.lcssa.i, %.lr.ph55.i.preheader ], [ %i.ch, %middle.block55 ]
  %.23752.i.ph = phi i32 [ %.136.lcssa.i, %.lr.ph55.i.preheader ], [ %i.bm, %middle.block55 ]
  br label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader102, %.lr.ph.i
  %.150.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %.150.i.ph, %.lr.ph.i.preheader102 ]
  %.13649.i = phi i32 [ %i.cm, %.lr.ph.i ], [ %.13649.i.ph, %.lr.ph.i.preheader102 ] ; 2 uses
  %i.ci = srem i32 %.13649.i, 400                 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = icmp sgt i32 %i.ci, 300
  %or.cond.i.i = or i1 %i.cj, %i.ck
  %.0.i.i = select i1 %or.cond.i.i, i64 3155760000, i64 3155673600
  %i.cl = add nuw nsw i64 %.0.i.i, %.150.i        ; 2 uses
  %i.cm = add i32 %.13649.i, 100                  ; 3 uses
  %i.cn = sub nsw i32 %.fr47.i, %i.cm             ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 99
  br i1 %i.co, label %.lr.ph.i, label %.preheader48.i, !llvm.loop !33

.preheader.i:                                     ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i, %middle.block55, %.preheader48.i
  %.237.lcssa.i = phi i32 [ %.136.lcssa.i, %.preheader48.i ], [ %i.bm, %middle.block55 ], [ %i.ds, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ] ; 6 uses
  %.2.lcssa.i = phi i64 [ %.1.lcssa.i, %.preheader48.i ], [ %i.ch, %middle.block55 ], [ %i.dr, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ] ; 3 uses
  %i.cp = icmp sgt i32 %.fr47.i, %.237.lcssa.i
  br i1 %i.cp, label %.lr.ph61.i.preheader, label %._crit_edge.i

.lr.ph61.i.preheader:                             ; preds = %.preheader.i
  %i.cq = sub i32 %.fr47.i, %.237.lcssa.i         ; 3 uses
  %min.iters.check61 = icmp ult i32 %i.cq, 4
  br i1 %min.iters.check61, label %.lr.ph61.i.preheader94, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph61.i.preheader
  %n.vec63 = and i32 %i.cq, -4                    ; 3 uses
  %i.cr = add i32 %.237.lcssa.i, %n.vec63
  %i.cs = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.2.lcssa.i, i64 0
  %broadcast.splatinsert64 = insertelement <2 x i32> poison, i32 %.237.lcssa.i, i64 0
  %broadcast.splat65 = shufflevector <2 x i32> %broadcast.splatinsert64, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction66 = add nsw <2 x i32> %broadcast.splat65, <i32 0, i32 1>
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph62
  %index68 = phi i32 [ 0, %vector.ph62 ], [ %index.next75, %vector.body67 ]
  %vec.phi69 = phi <2 x i64> [ %i.cs, %vector.ph62 ], [ %i.dh, %vector.body67 ]
  %vec.phi70 = phi <2 x i64> [ zeroinitializer, %vector.ph62 ], [ %i.di, %vector.body67 ]
  %vec.ind71 = phi <2 x i32> [ %induction66, %vector.ph62 ], [ %vec.ind.next76, %vector.body67 ] ; 5 uses
  %step.add72 = add nsw <2 x i32> %vec.ind71, splat (i32 2) ; 3 uses
  %i.ct = srem <2 x i32> %vec.ind71, splat (i32 400)
  %i.cu = srem <2 x i32> %step.add72, splat (i32 400)
  %i.cv = icmp ne <2 x i32> %i.ct, zeroinitializer
  %i.cw = icmp ne <2 x i32> %i.cu, zeroinitializer
  %i.cx = and <2 x i32> %vec.ind71, splat (i32 3)
  %i.cy = and <2 x i32> %step.add72, splat (i32 3)
  %i.cz = icmp ne <2 x i32> %i.cx, zeroinitializer
  %i.da = icmp ne <2 x i32> %i.cy, zeroinitializer
  %i.db = srem <2 x i32> %vec.ind71, splat (i32 100)
  %i.dc = srem <2 x i32> %step.add72, splat (i32 100)
  %i.dd = icmp eq <2 x i32> %i.db, zeroinitializer
  %i.de = icmp eq <2 x i32> %i.dc, zeroinitializer
  %.not90 = or <2 x i1> %i.cz, %i.dd
  %.not93 = or <2 x i1> %i.da, %i.de
  %i.df = select <2 x i1> %i.cv, <2 x i1> %.not90, <2 x i1> zeroinitializer
  %i.dg = select <2 x i1> %i.cw, <2 x i1> %.not93, <2 x i1> zeroinitializer
  %predphi73 = select <2 x i1> %i.df, <2 x i64> splat (i64 31536000), <2 x i64> splat (i64 31622400)
  %predphi74 = select <2 x i1> %i.dg, <2 x i64> splat (i64 31536000), <2 x i64> splat (i64 31622400)
  %i.dh = add <2 x i64> %predphi73, %vec.phi69    ; 2 uses
  %i.di = add <2 x i64> %predphi74, %vec.phi70    ; 2 uses
  %index.next75 = add nuw i32 %index68, 4         ; 2 uses
  %vec.ind.next76 = add nsw <2 x i32> %vec.ind71, splat (i32 4)
  %i.dj = icmp eq i32 %index.next75, %n.vec63
  br i1 %i.dj, label %middle.block77, label %vector.body67, !llvm.loop !34

middle.block77:                                   ; preds = %vector.body67
  %bin.rdx78 = add <2 x i64> %i.di, %i.dh
  %i.dk = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx78) ; 2 uses
  %cmp.n79 = icmp eq i32 %i.cq, %n.vec63
  br i1 %cmp.n79, label %._crit_edge.i, label %.lr.ph61.i.preheader94

.lr.ph61.i.preheader94:                           ; preds = %.lr.ph61.i.preheader, %middle.block77
  %.360.i.ph = phi i64 [ %.2.lcssa.i, %.lr.ph61.i.preheader ], [ %i.dk, %middle.block77 ]
  %.33858.i.ph = phi i32 [ %.237.lcssa.i, %.lr.ph61.i.preheader ], [ %i.cr, %middle.block77 ]
  br label %.lr.ph61.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.preheader97, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i
  %.254.i = phi i64 [ %i.dr, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ], [ %.254.i.ph, %.lr.ph55.i.preheader97 ]
  %.23752.i = phi i32 [ %i.ds, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ], [ %.23752.i.ph, %.lr.ph55.i.preheader97 ] ; 3 uses
  %i.dl = srem i32 %.23752.i, 100                 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  %i.dn = icmp sgt i32 %i.dl, 96
  %or.cond.i40.i = or i1 %i.dm, %i.dn
  br i1 %or.cond.i40.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph55.i
  %i.do = srem i32 %.23752.i, 400                 ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  %i.dq = icmp sgt i32 %i.do, 396
  %or.cond7.i.i = or i1 %i.dp, %i.dq
  br i1 %or.cond7.i.i, label %bb.k, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i

bb.k:                                             ; preds = %bb.j, %.lr.ph55.i
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i: ; preds = %bb.k, %bb.j
  %.0.i41.i = phi i64 [ 126230400, %bb.k ], [ 126144000, %bb.j ]
  %i.dr = add nuw nsw i64 %.0.i41.i, %.254.i      ; 2 uses
  %i.ds = add i32 %.23752.i, 4                    ; 3 uses
  %i.dt = sub nsw i32 %.fr47.i, %i.ds
  %i.du = icmp sgt i32 %i.dt, 3
  br i1 %i.du, label %.lr.ph55.i, label %.preheader.i, !llvm.loop !35

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader94, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i
  %.360.i = phi i64 [ %i.ec, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ], [ %.360.i.ph, %.lr.ph61.i.preheader94 ]
  %.33858.i = phi i32 [ %i.ed, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ], [ %.33858.i.ph, %.lr.ph61.i.preheader94 ] ; 4 uses
  %i.dv = srem i32 %.33858.i, 400
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph61.i
  %i.dx = and i32 %.33858.i, 3
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = srem i32 %.33858.i, 100
  %i.ea = icmp ne i32 %i.dz, 0
  %or.cond.i42.i = and i1 %i.dy, %i.ea
  br i1 %or.cond.i42.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i: ; preds = %bb.l, %.lr.ph61.i
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i, %bb.l
  %i.eb = phi i64 [ 31622400, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i ], [ 31536000, %bb.l ]
  %i.ec = add nuw nsw i64 %i.eb, %.360.i          ; 2 uses
  %i.ed = add nsw i32 %.33858.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ed, %.fr47.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph61.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i, %middle.block77, %.preheader.i
  %.338.lcssa.i = phi i32 [ %.237.lcssa.i, %.preheader.i ], [ %.fr47.i, %middle.block77 ], [ %.fr47.i, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ] ; 3 uses
  %.3.lcssa.i = phi i64 [ %.2.lcssa.i, %.preheader.i ], [ %i.dk, %middle.block77 ], [ %i.ec, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ]
  %i.ee = zext nneg i32 %i.d to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_113kDaysSinceJanE, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !9
  %i.eh = sext i32 %i.eg to i64
  %i.ei = mul nsw i64 %i.eh, 86400
  %i.ej = add nsw i64 %i.ei, %.3.lcssa.i          ; 5 uses
  %i.ek = icmp sgt i32 %i.d, 2
  br i1 %i.ek, label %bb.m, label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

bb.m:                                             ; preds = %._crit_edge.i
  %i.el = srem i32 %.338.lcssa.i, 400
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6, label %bb.n

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6: ; preds = %bb.m
  %i.en = add nsw i64 %i.ej, 86400
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

bb.n:                                             ; preds = %bb.m
  %i.eo = and i32 %.338.lcssa.i, 3
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i: ; preds = %bb.n
  %i.eq = srem i32 %.338.lcssa.i, 100
  %.not.i5 = icmp eq i32 %i.eq, 0
  %i.er = add nsw i64 %i.ej, 86400
  %spec.select.i = select i1 %.not.i5, i64 %i.ej, i64 %i.er
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit: ; preds = %._crit_edge.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6, %bb.n, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i
  %.4.i = phi i64 [ %i.ej, %._crit_edge.i ], [ %i.ej, %bb.n ], [ %spec.select.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i ], [ %i.en, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6 ]
  %i.es = mul nuw nsw i32 %i.g, 86400
  %narrow = add nsw i32 %i.es, -86400
  %i.et = sext i32 %narrow to i64
  %narrow25 = mul nuw nsw i32 %i.j, 3600
  %i.eu = zext nneg i32 %narrow25 to i64
  %narrow26 = mul nuw nsw i32 %i.l, 60
  %i.ev = zext nneg i32 %narrow26 to i64
  %i.ew = zext nneg i32 %i.n to i64
  %i.ex = add i64 %.4.i, -62135596800
  %i.ey = add i64 %i.ex, %i.et
  %i.ez = add i64 %i.ey, %i.eu
  %i.fa = add i64 %i.ez, %i.ev
  %i.fb = add i64 %i.fa, %i.ew
  store i64 %i.fb, ptr %1, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i, %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit
  %.0.i8 = phi i1 [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit ], [ true, %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i8
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal14GetCurrentTimeEPlPi(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #14
  store i64 %i.a, ptr %0, align 8, !tbaa !18
  store i32 0, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal10FormatTimeB5cxx11Eli(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.google::protobuf::internal::DateTime", align 4 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %or.cond = icmp ugt i32 %2, 999999999
  br i1 %or.cond, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call noundef zeroext i1 @_ZN6google8protobuf8internal17SecondsToDateTimeElPNS1_8DateTimeE(i64 noundef %1, ptr noundef nonnull %3)
  br i1 %i.a, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.d, align 1, !tbaa !23
  br label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.e = load i32, ptr %3, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  call void (ptr, ptr, ...) @_ZN6google8protobuf12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.1, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.p = urem i32 %2, 1000000
  %i.q = udiv i32 %2, 1000000
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = urem i32 %2, 1000
  %i.t = udiv i32 %2, 1000
  %i.u = icmp eq i32 %i.s, 0                      ; 2 uses
  %spec.select = select i1 %i.u, ptr @.str.5, ptr @.str.6
  %spec.select58 = select i1 %i.u, i32 %i.t, i32 %2
  br label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %spec.select, %bb.e ], [ @.str.4, %bb.d ]
  %i.w = phi i32 [ %spec.select58, %bb.e ], [ %i.q, %bb.d ]
  invoke void (ptr, ptr, ...) @_ZN6google8protobuf12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.v, i32 noundef %i.w)
          to label %_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit unwind label %bb.i

_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit: ; preds = %.invoke
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc21 unwind label %bb.j   ; 6 uses

.noexc21:                                         ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !45, !alias.scope !47
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc21
  store ptr %i.z, ptr %5, align 8, !tbaa !24, !alias.scope !47
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !23, !alias.scope !47
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.ah = phi i64 [ %i.ad, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !46, !alias.scope !47
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !24
  store i64 0, ptr %i.ai, align 8, !tbaa !46
  store i8 0, ptr %i.aa, align 8, !tbaa !23
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.ak
  br i1 %i.ao, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #15
          to label %.noexc22 unwind label %bb.k

.noexc22:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.ap = load ptr, ptr %5, align 8, !tbaa !24
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ap, i64 noundef %i.ak)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ar = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.y
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.at = load i64, ptr %i.y, align 8, !tbaa !23
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.av = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !23
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.l

bb.i:                                             ; preds = %.invoke
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.j:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.y
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.k
  %i.bf = load i64, ptr %i.y, align 8, !tbaa !23
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !23
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.body

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.bm = load ptr, ptr %4, align 8, !tbaa !24, !noalias !48
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !46, !noalias !48 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !45, !alias.scope !49
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.bq, align 8, !tbaa !46, !alias.scope !49
  store i8 0, ptr %i.bp, align 8, !tbaa !23, !alias.scope !49
  %i.br = add i64 %i.bo, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.br)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !46, !alias.scope !49
  %i.bt = sub i64 4611686018427387903, %i.bs
  %i.bu = icmp ult i64 %i.bt, %i.bo
  br i1 %i.bu, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bm, i64 noundef %i.bo)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !46, !alias.scope !49
  %i.bx = icmp eq i64 %i.bw, 4611686018427387903
  br i1 %i.bx, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #15
          to label %.cont.i.i unwind label %bb.n

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !49 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bp
  br i1 %i.cb, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.cc = load i64, ptr %i.bp, align 8, !tbaa !23, !alias.scope !49
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #16
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ce = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !23
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.o

.body:                                            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn14 = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bz, %bb.n ]
  %i.cj = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %.body
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !23
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn14

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6google8protobuf12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal9ParseTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPlPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.google::protobuf::internal::DateTime", align 4 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 5 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23    ; 2 uses
  %i.e = add i8 %i.d, -48
  %i.f = icmp ult i8 %i.e, 10
  br i1 %i.f, label %.preheader.i.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i.1:                                   ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %i.c, i64 4
  %i.g = zext nneg i8 %i.d to i32
  %i.h = add nsw i32 %i.g, -48                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23    ; 2 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %.preheader.i.2, label %bb.c

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.m = mul nuw nsw i32 %i.h, 10
  %i.n = zext nneg i8 %i.j to i32
  %i.o = add nsw i32 %i.m, -48
  %i.p = add nsw i32 %i.o, %i.n                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !23    ; 2 uses
  %i.s = add i8 %i.r, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.preheader.i.3, label %bb.c

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.u = mul nuw nsw i32 %i.p, 10
  %i.v = zext nneg i8 %i.r to i32
  %i.w = add nsw i32 %i.u, -48
  %i.x = add nsw i32 %i.w, %i.v                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !23    ; 2 uses
  %i.aa = add i8 %i.z, -48
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i.3
  %i.ac = mul nuw nsw i32 %i.x, 10
  %i.ad = zext nneg i8 %i.z to i32
  %i.ae = add nsw i32 %i.ac, -48
  %i.af = add nsw i32 %i.ae, %i.ad
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i.3, %.preheader.i.2, %.preheader.i.1
  %.017.lcssa.i = phi ptr [ %i.q, %.preheader.i.2 ], [ %scevgep.i, %bb.b ], [ %i.i, %.preheader.i.1 ], [ %i.y, %.preheader.i.3 ] ; 5 uses
  %.015.lcssa.i = phi i32 [ %i.p, %.preheader.i.2 ], [ %i.af, %bb.b ], [ %i.h, %.preheader.i.1 ], [ %i.x, %.preheader.i.3 ] ; 2 uses
  %or.cond.i = icmp eq i32 %.015.lcssa.i, 0
  br i1 %or.cond.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit: ; preds = %bb.c
  store i32 %.015.lcssa.i, ptr %3, align 4, !tbaa !9
  %i.ag = icmp eq ptr %.017.lcssa.i, null
  br i1 %i.ag, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit
  %i.ah = load i8, ptr %.017.lcssa.i, align 1, !tbaa !23
  %.not = icmp eq i8 %i.ah, 45
  br i1 %.not, label %bb.e, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.017.lcssa.i, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !23  ; 2 uses
  %i.al = add i8 %i.ak, -48
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %.preheader.i55.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i55.1:                                 ; preds = %bb.e
  %scevgep.i54 = getelementptr i8, ptr %.017.lcssa.i, i64 3
  %i.an = zext nneg i8 %i.ak to i32
  %i.ao = add nsw i32 %i.an, -48                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.017.lcssa.i, i64 2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !23  ; 2 uses
  %i.ar = add i8 %i.aq, -48
  %i.as = icmp ult i8 %i.ar, 10                   ; 2 uses
  %i.at = mul nuw nsw i32 %i.ao, 10
  %i.au = zext nneg i8 %i.aq to i32
  %i.av = add nsw i32 %i.at, -48
  %i.aw = add nsw i32 %i.av, %i.au
  %.017.lcssa.i59 = select i1 %i.as, ptr %scevgep.i54, ptr %i.ap ; 5 uses
  %.015.lcssa.i60 = select i1 %i.as, i32 %i.aw, i32 %i.ao ; 2 uses
  %i.ax = add nsw i32 %.015.lcssa.i60, -13
  %or.cond.i63 = icmp ult i32 %i.ax, -12
  br i1 %or.cond.i63, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit65

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit65: ; preds = %.preheader.i55.1
  store i32 %.015.lcssa.i60, ptr %i.aj, align 4, !tbaa !9
  %i.ay = icmp eq ptr %.017.lcssa.i59, null
  br i1 %i.ay, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit65
  %i.az = load i8, ptr %.017.lcssa.i59, align 1, !tbaa !23
  %.not44 = icmp eq i8 %i.az, 45
  br i1 %.not44, label %bb.g, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.017.lcssa.i59, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !23  ; 2 uses
  %i.bd = add i8 %i.bc, -48
  %i.be = icmp ult i8 %i.bd, 10
  br i1 %i.be, label %.preheader.i69.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i69.1:                                 ; preds = %bb.g
  %scevgep.i68 = getelementptr i8, ptr %.017.lcssa.i59, i64 3
  %i.bf = zext nneg i8 %i.bc to i32
  %i.bg = add nsw i32 %i.bf, -48                  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.017.lcssa.i59, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !23  ; 2 uses
  %i.bj = add i8 %i.bi, -48
  %i.bk = icmp ult i8 %i.bj, 10                   ; 2 uses
  %i.bl = mul nuw nsw i32 %i.bg, 10
  %i.bm = zext nneg i8 %i.bi to i32
  %i.bn = add nsw i32 %i.bl, -48
  %i.bo = add nsw i32 %i.bn, %i.bm
  %.017.lcssa.i73 = select i1 %i.bk, ptr %scevgep.i68, ptr %i.bh ; 5 uses
  %.015.lcssa.i74 = select i1 %i.bk, i32 %i.bo, i32 %i.bg ; 2 uses
  %i.bp = add nsw i32 %.015.lcssa.i74, -32
  %or.cond.i77 = icmp ult i32 %i.bp, -31
  br i1 %or.cond.i77, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit79

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit79: ; preds = %.preheader.i69.1
  store i32 %.015.lcssa.i74, ptr %i.bb, align 4, !tbaa !9
  %i.bq = icmp eq ptr %.017.lcssa.i73, null
  br i1 %i.bq, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit79
  %i.br = load i8, ptr %.017.lcssa.i73, align 1, !tbaa !23
  %.not45 = icmp eq i8 %i.br, 84
  br i1 %.not45, label %bb.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.017.lcssa.i73, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !23  ; 2 uses
  %i.bv = add i8 %i.bu, -48
  %i.bw = icmp ult i8 %i.bv, 10
  br i1 %i.bw, label %.preheader.i83.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i83.1:                                 ; preds = %bb.i
  %scevgep.i82 = getelementptr i8, ptr %.017.lcssa.i73, i64 3 ; 3 uses
  %i.bx = zext nneg i8 %i.bu to i32
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.017.lcssa.i73, i64 2 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !23  ; 3 uses
  %i.cb = add i8 %i.ca, -48
  %i.cc = icmp ult i8 %i.cb, 10
  br i1 %i.cc, label %bb.j, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread: ; preds = %.preheader.i83.1
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !9
  br label %bb.k

bb.j:                                             ; preds = %.preheader.i83.1
  %i.cd = mul nuw nsw i32 %i.by, 10
  %i.ce = zext nneg i8 %i.ca to i32
  %i.cf = add nsw i32 %i.cd, -48
  %i.cg = add nsw i32 %i.cf, %i.ce                ; 2 uses
  %or.cond.i91 = icmp samesign ugt i32 %i.cg, 23
  br i1 %or.cond.i91, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93: ; preds = %bb.j
  store i32 %i.cg, ptr %i.bt, align 4, !tbaa !9
  %i.ch = icmp eq ptr %scevgep.i82, null
  br i1 %i.ch, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93
  %.pr = load i8, ptr %scevgep.i82, align 1, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread
  %i.ci = phi i8 [ %.pr, %thread-pre-split ], [ %i.ca, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread ]
  %.017.lcssa.i87133137 = phi ptr [ %scevgep.i82, %thread-pre-split ], [ %i.bz, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93.thread ] ; 3 uses
  %.not46 = icmp eq i8 %i.ci, 58
  br i1 %.not46, label %bb.l, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.017.lcssa.i87133137, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !23  ; 2 uses
  %i.cm = add i8 %i.cl, -48
  %i.cn = icmp ult i8 %i.cm, 10
  br i1 %i.cn, label %.preheader.i97.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i97.1:                                 ; preds = %bb.l
  %scevgep.i96 = getelementptr i8, ptr %.017.lcssa.i87133137, i64 3 ; 2 uses
  %i.co = zext nneg i8 %i.cl to i32
  %i.cp = add nsw i32 %i.co, -48                  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.017.lcssa.i87133137, i64 2 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23  ; 2 uses
  %i.cs = add i8 %i.cr, -48
  %i.ct = icmp ult i8 %i.cs, 10
  br i1 %i.ct, label %bb.m, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107.thread

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107.thread: ; preds = %.preheader.i97.1
  store i32 %i.cp, ptr %i.ck, align 4, !tbaa !9
  br label %bb.n

bb.m:                                             ; preds = %.preheader.i97.1
  %i.cu = mul nuw nsw i32 %i.cp, 10
  %i.cv = zext nneg i8 %i.cr to i32
  %i.cw = add nsw i32 %i.cu, -48
  %i.cx = add nsw i32 %i.cw, %i.cv                ; 2 uses
  %or.cond.i105 = icmp samesign ugt i32 %i.cx, 59
  br i1 %or.cond.i105, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107: ; preds = %bb.m
  store i32 %i.cx, ptr %i.ck, align 4, !tbaa !9
  %i.cy = icmp eq ptr %scevgep.i96, null
  br i1 %i.cy, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107.thread, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107
  %.017.lcssa.i101142146 = phi ptr [ %i.cq, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107.thread ], [ %scevgep.i96, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107 ] ; 4 uses
  %i.cz = load i8, ptr %.017.lcssa.i101142146, align 1, !tbaa !23
  %.not47 = icmp eq i8 %i.cz, 58
  br i1 %.not47, label %bb.o, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %.017.lcssa.i101142146, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.dc = load i8, ptr %i.da, align 1, !tbaa !23  ; 2 uses
  %i.dd = add i8 %i.dc, -48
  %i.de = icmp ult i8 %i.dd, 10
  br i1 %i.de, label %.preheader.i111.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i111.1:                                ; preds = %bb.o
  %scevgep.i110 = getelementptr i8, ptr %.017.lcssa.i101142146, i64 3 ; 2 uses
  %i.df = zext nneg i8 %i.dc to i32
  %i.dg = add nsw i32 %i.df, -48                  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.017.lcssa.i101142146, i64 2 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !23  ; 2 uses
  %i.dj = add i8 %i.di, -48
  %i.dk = icmp ult i8 %i.dj, 10
  br i1 %i.dk, label %bb.p, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121.thread

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121.thread: ; preds = %.preheader.i111.1
  store i32 %i.dg, ptr %i.db, align 4, !tbaa !9
  br label %bb.q

bb.p:                                             ; preds = %.preheader.i111.1
  %i.dl = mul nuw nsw i32 %i.dg, 10
  %i.dm = zext nneg i8 %i.di to i32
  %i.dn = add nsw i32 %i.dl, -48
  %i.do = add nsw i32 %i.dn, %i.dm                ; 2 uses
  %or.cond.i119 = icmp samesign ugt i32 %i.do, 59
  br i1 %or.cond.i119, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121: ; preds = %bb.p
  store i32 %i.do, ptr %i.db, align 4, !tbaa !9
  %i.dp = icmp eq ptr %scevgep.i110, null
  br i1 %i.dp, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121.thread, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121
  %.017.lcssa.i115151155 = phi ptr [ %i.dh, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121.thread ], [ %scevgep.i110, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121 ] ; 3 uses
  %i.dq = call noundef zeroext i1 @_ZN6google8protobuf8internal17DateTimeToSecondsERKNS1_8DateTimeEPl(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef %1)
  br i1 %i.dq, label %bb.r, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dr = load i8, ptr %.017.lcssa.i115151155, align 1, !tbaa !23
  %i.ds = icmp eq i8 %i.dr, 46
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %.017.lcssa.i115151155, i64 1
  %i.du = tail call fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_110ParseNanosEPKcPi(ptr noundef %i.dt, ptr noundef %2) ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.u

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %2, align 4, !tbaa !9
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.032 = phi ptr [ %i.du, %bb.s ], [ %.017.lcssa.i115151155, %bb.t ] ; 4 uses
  %i.dw = load i8, ptr %.032, align 1, !tbaa !23
  switch i8 %i.dw, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread [
    i8 90, label %bb.v
    i8 43, label %bb.w
    i8 45, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %.032, i64 1
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %.032, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.dz = call fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_119ParseTimezoneOffsetEPKcPl(ptr noundef %i.dy, ptr noundef %i.a) ; 2 uses
  %.not49 = icmp eq ptr %i.dz, null
  br i1 %.not49, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !18
  %i.eb = load i64, ptr %1, align 8, !tbaa !18
  %i.ec = sub nsw i64 %i.eb, %i.ea
  store i64 %i.ec, ptr %1, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.ed = getelementptr inbounds nuw i8, ptr %.032, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ee = call fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_119ParseTimezoneOffsetEPKcPl(ptr noundef %i.ed, ptr noundef %i.b) ; 2 uses
  %.not48 = icmp eq ptr %i.ee, null
  br i1 %.not48, label %.critedge51, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = load i64, ptr %i.b, align 8, !tbaa !18
  %i.eg = load i64, ptr %1, align 8, !tbaa !18
  %i.eh = add nsw i64 %i.eg, %i.ef
  store i64 %i.eh, ptr %1, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v
  %.133 = phi ptr [ %i.dx, %bb.v ], [ %i.dz, %bb.x ], [ %i.ee, %bb.z ]
  %i.ei = load i8, ptr %.133, align 1, !tbaa !23
  %i.ej = icmp eq i8 %i.ei, 0
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.critedge:                                        ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.critedge51:                                      ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread: ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %.preheader.i69.1, %bb.g, %.preheader.i55.1, %bb.e, %bb.c, %bb.a, %bb.u, %.critedge51, %.critedge, %bb.s, %bb.q, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121, %bb.n, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107, %bb.k, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93, %bb.h, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit79, %bb.f, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit65, %bb.d, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit, %bb.aa
  %.2 = phi i1 [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit121 ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit ], [ false, %bb.d ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit65 ], [ false, %bb.f ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit79 ], [ false, %bb.h ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit93 ], [ false, %bb.k ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit107 ], [ false, %bb.n ], [ false, %bb.q ], [ %i.ej, %bb.aa ], [ false, %bb.u ], [ false, %.critedge ], [ false, %.critedge51 ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.c ], [ false, %.preheader.i55.1 ], [ false, %.preheader.i69.1 ], [ false, %bb.j ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.l ], [ false, %bb.o ], [ false, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_110ParseNanosEPKcPi(ptr nofree noundef nonnull readonly captures(ret: address, provenance) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !23      ; 2 uses
  %i.b = add i8 %i.a, -48
  %i.c = icmp ult i8 %i.b, 10
  br i1 %i.c, label %.lr.ph, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %i.d = icmp samesign ult i32 %.020, 8
  br i1 %i.d, label %.lr.ph25.preheader, label %._crit_edge

.lr.ph25.preheader:                               ; preds = %.preheader
  %i.e = sub nsw i32 0, %.020
  %xtraiter = and i32 %i.e, 7                     ; 2 uses
  %min.iters.check.not = icmp eq i32 %xtraiter, 0
  br i1 %min.iters.check.not, label %middle.block, label %vector.body

vector.body:                                      ; preds = %.lr.ph25.preheader, %vector.body
  %index = phi i32 [ %3, %vector.body ], [ %i.m, %.lr.ph25.preheader ]
  %.223.prol = phi i32 [ %2, %vector.body ], [ %.114, %.lr.ph25.preheader ]
  %prol.iter = phi i32 [ %index.next, %vector.body ], [ 0, %.lr.ph25.preheader ]
  %2 = mul nsw i32 %.223.prol, 10                 ; 3 uses
  %3 = add i32 %index, 1                          ; 2 uses
  %index.next = add i32 %prol.iter, 1             ; 2 uses
  %i.f = icmp eq i32 %index.next, %xtraiter
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body, %.lr.ph25.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph25.preheader ], [ %2, %vector.body ]
  %.124.unr = phi i32 [ %i.m, %.lr.ph25.preheader ], [ %3, %vector.body ]
  %.223.unr = phi i32 [ %.114, %.lr.ph25.preheader ], [ %2, %vector.body ]
  %.not = icmp eq i32 %.020, 0
  br i1 %.not, label %.lr.ph25, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi i8 [ %i.o, %.lr.ph ], [ %i.a, %bb.a ]
  %.020 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.a ] ; 5 uses
  %.01319 = phi i32 [ %.114, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.01618 = phi ptr [ %i.n, %.lr.ph ], [ %0, %bb.a ]
  %i.h = icmp samesign ult i32 %.020, 9
  %i.i = mul nsw i32 %.01319, 10
  %i.j = zext nneg i8 %i.g to i32
  %i.k = add i32 %i.i, -48
  %i.l = add i32 %i.k, %i.j
  %.114 = select i1 %i.h, i32 %i.l, i32 %.01319   ; 4 uses
  %i.m = add nuw nsw i32 %.020, 1                 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01618, i64 1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23    ; 2 uses
  %i.p = add i8 %i.o, -48
  %i.q = icmp ult i8 %i.p, 10
  br i1 %i.q, label %.lr.ph, label %.preheader, !llvm.loop !51

.lr.ph25:                                         ; preds = %middle.block, %.lr.ph25
  %.124 = phi i32 [ %i.s, %.lr.ph25 ], [ %.124.unr, %middle.block ]
  %.223 = phi i32 [ %i.r, %.lr.ph25 ], [ %.223.unr, %middle.block ]
  %i.r = mul nsw i32 %.223, 100000000             ; 2 uses
  %i.s = add i32 %.124, 8                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, 9
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph25, !llvm.loop !52

._crit_edge:                                      ; preds = %middle.block, %.lr.ph25, %.preheader
  %.2.lcssa = phi i32 [ %.114, %.preheader ], [ %.lcssa.unr, %middle.block ], [ %i.r, %.lr.ph25 ]
  store i32 %.2.lcssa, ptr %1, align 4, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.015 = phi ptr [ %i.n, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN6google8protobuf8internal12_GLOBAL__N_119ParseTimezoneOffsetEPKcPl(ptr nofree noundef nonnull readonly captures(address, ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !23      ; 2 uses
  %i.b = add i8 %i.a, -48
  %i.c = icmp ult i8 %i.b, 10
  br i1 %i.c, label %.preheader.i.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i.1:                                   ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %0, i64 2
  %i.d = zext nneg i8 %i.a to i32
  %i.e = add nsw i32 %i.d, -48                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23    ; 2 uses
  %i.h = add i8 %i.g, -48
  %i.i = icmp ult i8 %i.h, 10                     ; 2 uses
  %i.j = mul nuw nsw i32 %i.e, 10
  %i.k = zext nneg i8 %i.g to i32
  %i.l = add nsw i32 %i.j, -48
  %i.m = add nsw i32 %i.l, %i.k
  %.017.lcssa.i = select i1 %i.i, ptr %scevgep.i, ptr %i.f ; 5 uses
  %.015.lcssa.i = select i1 %i.i, i32 %i.m, i32 %i.e ; 2 uses
  %or.cond.i = icmp samesign ugt i32 %.015.lcssa.i, 23
  %i.n = icmp eq ptr %.017.lcssa.i, null
  %or.cond = or i1 %i.n, %or.cond.i
  br i1 %or.cond, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader.i.1
  %i.o = load i8, ptr %.017.lcssa.i, align 1, !tbaa !23
  %.not = icmp eq i8 %i.o, 58
  br i1 %.not, label %bb.c, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.017.lcssa.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23    ; 2 uses
  %i.r = add i8 %i.q, -48
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %.preheader.i11.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

.preheader.i11.1:                                 ; preds = %bb.c
  %scevgep.i10 = getelementptr i8, ptr %.017.lcssa.i, i64 3
  %i.t = zext nneg i8 %i.q to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.017.lcssa.i, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !23    ; 2 uses
  %i.x = add i8 %i.w, -48
  %i.y = icmp ult i8 %i.x, 10                     ; 2 uses
  %i.z = mul nuw nsw i32 %i.u, 10
  %i.aa = zext nneg i8 %i.w to i32
  %i.ab = add nsw i32 %i.z, -48
  %i.ac = add nsw i32 %i.ab, %i.aa
  %.017.lcssa.i15 = select i1 %i.y, ptr %scevgep.i10, ptr %i.v ; 2 uses
  %.015.lcssa.i16 = select i1 %i.y, i32 %i.ac, i32 %i.u ; 2 uses
  %or.cond.i19 = icmp samesign ugt i32 %.015.lcssa.i16, 59
  %i.ad = icmp eq ptr %.017.lcssa.i15, null
  %or.cond29 = or i1 %i.ad, %or.cond.i19
  br i1 %or.cond29, label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread, label %bb.d

bb.d:                                             ; preds = %.preheader.i11.1
  %i.ae = mul nuw nsw i32 %.015.lcssa.i, 60
  %i.af = add nuw nsw i32 %.015.lcssa.i16, %i.ae
  %i.ag = mul nuw nsw i32 %i.af, 60
  %i.ah = zext nneg i32 %i.ag to i64
  store i64 %i.ah, ptr %1, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_18ParseIntEPKciiiPi.exit.thread: ; preds = %.preheader.i11.1, %bb.c, %.preheader.i.1, %bb.a, %bb.d, %bb.b
  %.1 = phi ptr [ null, %.preheader.i.1 ], [ null, %.preheader.i11.1 ], [ null, %bb.b ], [ %.017.lcssa.i15, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = !{!"_ZTSN6google8protobuf8internal8DateTimeE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!11 = !{!10, !5, i64 0}
!12 = !{!10, !5, i64 4}
!13 = !{!10, !5, i64 8}
!14 = !{!10, !5, i64 12}
!15 = !{!10, !5, i64 16}
!16 = !{!10, !5, i64 20}
!17 = !{!"long", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !17, i64 8, !4, i64 16}
!23 = !{!4, !4, i64 0}
!24 = !{!22, !20, i64 0}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8, !30}
!30 = !{!"llvm.loop.peeled.count", i32 2}
!31 = distinct !{!31, !8, !37, !38}
!32 = distinct !{!32, !8, !37, !38}
!33 = distinct !{!33, !8, !38, !37}
!34 = distinct !{!34, !8, !37, !38}
!35 = distinct !{!35, !8, !38, !37}
!36 = distinct !{!36, !8, !38, !37}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!40 = distinct !{!40, !39, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!41 = distinct !{!41, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!42 = distinct !{!42, !41, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!43 = distinct !{!43, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!44 = distinct !{!44, !43, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!45 = !{!21, !20, i64 0}
!46 = !{!22, !17, i64 8}
!47 = !{!40}
!48 = !{!42}
!49 = !{!44, !42}
!50 = distinct !{!50, !53}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
