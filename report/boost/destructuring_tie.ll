Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/destructuring_tie?download=true
inline.NumInlined: 164
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.boost::detail::test_result" = type { i8, i32 }
%struct.anon.0 = type { i64, i64, i64, ptr }

$_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmiEEbT_PKcS5_S5_iS5_RKT0_RKT1_ = comdat any

$_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcS4_EEbT_S4_S4_S4_iS4_RKT0_RKT1_ = comdat any

$_ZN5boost13report_errorsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN5boost6detail11test_resultD2Ev = comdat any

$_ZZN5boost6detail12test_resultsEvE8instance = comdat any

$_ZGVZN5boost6detail12test_resultsEvE8instance = comdat any

@.str = private unnamed_addr constant [27 x i8] c"0860E000616263646566000063\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"meta.byteCount\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/boost/boost/libs/pfr/test/core/run/destructuring_tie.cpp\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"meta.address\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"24800\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"meta.recordType\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"meta.rest\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"line + 8\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"a73b\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"42811\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"No errors detected.\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" error\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c" detected.\00", align 1
@_ZZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global %"class.boost::detail::test_result" zeroinitializer, comdat, align 4
@_ZGVZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.19 = private unnamed_addr constant [37 x i8] c"main() should return report_errors()\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"): test '\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"' ('\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"' \00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"') failed in function '\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"==\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i64, ptr } @_Z8parseHexPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not27 = icmp eq i64 %1, 0
  br i1 %.not27, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 %1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.02130 = phi i64 [ %i.i, %bb.d ], [ %1, %.lr.ph.preheader ]
  %.sroa.4.029 = phi ptr [ %i.j, %bb.d ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.028 = phi i64 [ %i.h, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.a = load i8, ptr %.sroa.4.029, align 1, !tbaa !10 ; 4 uses
  %i.b = sext i8 %i.a to i64
  %i.c = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = add i8 %i.a, -65
  %or.cond3 = icmp ult i8 %i.d, 6
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %i.a, -97
  %or.cond5 = icmp ult i8 %i.e, 6
  br i1 %or.cond5, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %.sink = phi i64 [ -48, %.lr.ph ], [ -55, %bb.b ], [ -87, %bb.c ]
  %i.f = add nsw i64 %.sink, %i.b
  %i.g = shl i64 %.sroa.0.028, 4
  %i.h = add nuw i64 %i.f, %i.g                   ; 2 uses
  %i.i = add i64 %.02130, -1                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.029, i64 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.028, %bb.c ], [ %i.h, %bb.d ]
  %.sroa.4.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.4.029, %bb.c ], [ %scevgep, %bb.d ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.lcssa, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.4.0.lcssa, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z15parseLinePrefixPKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.anon.0) align 8 captures(none) initializes((0, 32)) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
.lr.ph.i:
  %scevgep.i = getelementptr i8, ptr %1, i64 2    ; 3 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !10      ; 5 uses
  %i.b = zext nneg i8 %i.a to i64                 ; 2 uses
  %i.c = add i8 %i.a, -48
  %or.cond.i = icmp ult i8 %i.c, 10
  br i1 %or.cond.i, label %.lr.ph.i.1, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i
  %i.d = add i8 %i.a, -65
  %or.cond3.i = icmp ult i8 %i.d, 6
  br i1 %or.cond3.i, label %.lr.ph.i.1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i8 %i.a, -97
  %or.cond5.i = icmp ult i8 %i.e, 6
  br i1 %or.cond5.i, label %.lr.ph.i.1, label %_Z8parseHexPKcm.exit.thread

.lr.ph.i.1:                                       ; preds = %bb.b, %bb.a, %.lr.ph.i
  %.sink.i = phi i64 [ -48, %.lr.ph.i ], [ -55, %bb.a ], [ -87, %bb.b ]
  %i.f = add nsw i64 %.sink.i, %i.b               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10    ; 5 uses
  %i.i = zext nneg i8 %i.h to i64                 ; 2 uses
  %i.j = add i8 %i.h, -48
  %or.cond.i.1 = icmp ult i8 %i.j, 10
  br i1 %or.cond.i.1, label %_Z8parseHexPKcm.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.k = add i8 %i.h, -65
  %or.cond3.i.1 = icmp ult i8 %i.k, 6
  br i1 %or.cond3.i.1, label %_Z8parseHexPKcm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i8 %i.h, -97
  %or.cond5.i.1 = icmp ult i8 %i.l, 6
  br i1 %or.cond5.i.1, label %_Z8parseHexPKcm.exit, label %_Z8parseHexPKcm.exit.thread

_Z8parseHexPKcm.exit.thread:                      ; preds = %bb.d, %bb.b
  %.pre-phi.ph = phi i64 [ %i.b, %bb.b ], [ %i.i, %bb.d ]
  %.ph = phi i8 [ %i.a, %bb.b ], [ %i.h, %bb.d ]
  %.sroa.0.0.lcssa.i.ph = phi i64 [ 0, %bb.b ], [ %i.f, %bb.d ]
  %.sroa.4.0.lcssa.i.ph = phi ptr [ %1, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  store i64 %.sroa.0.0.lcssa.i.ph, ptr %0, align 8, !tbaa !12
  %scevgep.i151 = getelementptr i8, ptr %.sroa.4.0.lcssa.i.ph, i64 4
  br label %bb.e

_Z8parseHexPKcm.exit:                             ; preds = %.lr.ph.i.1, %bb.c, %bb.d
  %.sink.i.1 = phi i64 [ -48, %.lr.ph.i.1 ], [ -55, %bb.c ], [ -87, %bb.d ]
  %i.m = shl nsw i64 %i.f, 4
  %2 = add nsw i64 %i.m, %i.i
  %i.n = add nsw i64 %2, %.sink.i.1
  %.pre = load i8, ptr %scevgep.i, align 1, !tbaa !10 ; 3 uses
  %.pre43 = zext nneg i8 %.pre to i64             ; 2 uses
  %.pre44 = add i8 %.pre, -48
  store i64 %i.n, ptr %0, align 8, !tbaa !12
  %scevgep.i1 = getelementptr i8, ptr %1, i64 6   ; 2 uses
  %or.cond.i6 = icmp ult i8 %.pre44, 10
  br i1 %or.cond.i6, label %.lr.ph.i2.1, label %bb.e

bb.e:                                             ; preds = %_Z8parseHexPKcm.exit.thread, %_Z8parseHexPKcm.exit
  %scevgep.i157 = phi ptr [ %scevgep.i151, %_Z8parseHexPKcm.exit.thread ], [ %scevgep.i1, %_Z8parseHexPKcm.exit ] ; 2 uses
  %.sroa.4.0.lcssa.i55 = phi ptr [ %.sroa.4.0.lcssa.i.ph, %_Z8parseHexPKcm.exit.thread ], [ %scevgep.i, %_Z8parseHexPKcm.exit ] ; 3 uses
  %i.o = phi i8 [ %.ph, %_Z8parseHexPKcm.exit.thread ], [ %.pre, %_Z8parseHexPKcm.exit ] ; 2 uses
  %.pre-phi53 = phi i64 [ %.pre-phi.ph, %_Z8parseHexPKcm.exit.thread ], [ %.pre43, %_Z8parseHexPKcm.exit ] ; 2 uses
  %i.p = add i8 %i.o, -65
  %or.cond3.i7 = icmp ult i8 %i.p, 6
  br i1 %or.cond3.i7, label %.lr.ph.i2.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add i8 %i.o, -97
  %or.cond5.i8 = icmp ult i8 %i.q, 6
  br i1 %or.cond5.i8, label %.lr.ph.i2.1, label %_Z8parseHexPKcm.exit15

.lr.ph.i2.1:                                      ; preds = %bb.f, %bb.e, %_Z8parseHexPKcm.exit
  %scevgep.i158 = phi ptr [ %scevgep.i1, %_Z8parseHexPKcm.exit ], [ %scevgep.i157, %bb.e ], [ %scevgep.i157, %bb.f ]
  %.sroa.4.0.lcssa.i56 = phi ptr [ %scevgep.i, %_Z8parseHexPKcm.exit ], [ %.sroa.4.0.lcssa.i55, %bb.e ], [ %.sroa.4.0.lcssa.i55, %bb.f ] ; 3 uses
  %.pre-phi54 = phi i64 [ %.pre43, %_Z8parseHexPKcm.exit ], [ %.pre-phi53, %bb.e ], [ %.pre-phi53, %bb.f ]
  %.sink.i13 = phi i64 [ -48, %_Z8parseHexPKcm.exit ], [ -55, %bb.e ], [ -87, %bb.f ]
  %i.r = add nsw i64 %.pre-phi54, %.sink.i13      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.4.0.lcssa.i56, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10    ; 4 uses
  %i.u = zext nneg i8 %i.t to i64
  %i.v = add i8 %i.t, -48
  %or.cond.i6.1 = icmp ult i8 %i.v, 10
  br i1 %or.cond.i6.1, label %.lr.ph.i2.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i2.1
  %i.w = add i8 %i.t, -65
  %or.cond3.i7.1 = icmp ult i8 %i.w, 6
  br i1 %or.cond3.i7.1, label %.lr.ph.i2.2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add i8 %i.t, -97
  %or.cond5.i8.1 = icmp ult i8 %i.x, 6
  br i1 %or.cond5.i8.1, label %.lr.ph.i2.2, label %_Z8parseHexPKcm.exit15

.lr.ph.i2.2:                                      ; preds = %bb.h, %bb.g, %.lr.ph.i2.1
  %.sink.i13.1 = phi i64 [ -48, %.lr.ph.i2.1 ], [ -55, %bb.g ], [ -87, %bb.h ]
  %i.y = shl nsw i64 %i.r, 4
  %3 = add nsw i64 %i.y, %i.u
  %i.z = add nsw i64 %3, %.sink.i13.1             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.lcssa.i56, i64 2 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10  ; 4 uses
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = add i8 %i.ab, -48
  %or.cond.i6.2 = icmp ult i8 %i.ad, 10
  br i1 %or.cond.i6.2, label %.lr.ph.i2.3, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i2.2
  %i.ae = add i8 %i.ab, -65
  %or.cond3.i7.2 = icmp ult i8 %i.ae, 6
  br i1 %or.cond3.i7.2, label %.lr.ph.i2.3, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = add i8 %i.ab, -97
  %or.cond5.i8.2 = icmp ult i8 %i.af, 6
  br i1 %or.cond5.i8.2, label %.lr.ph.i2.3, label %_Z8parseHexPKcm.exit15

.lr.ph.i2.3:                                      ; preds = %bb.j, %bb.i, %.lr.ph.i2.2
  %.sink.i13.2 = phi i64 [ -48, %.lr.ph.i2.2 ], [ -55, %bb.i ], [ -87, %bb.j ]
  %i.ag = shl nsw i64 %i.z, 4
  %4 = add nsw i64 %i.ag, %i.ac
  %i.ah = add nsw i64 %4, %.sink.i13.2            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.0.lcssa.i56, i64 3 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !10  ; 4 uses
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i8 %i.aj, -48
  %or.cond.i6.3 = icmp ult i8 %i.al, 10
  br i1 %or.cond.i6.3, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i2.3
  %i.am = add i8 %i.aj, -65
  %or.cond3.i7.3 = icmp ult i8 %i.am, 6
  br i1 %or.cond3.i7.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add i8 %i.aj, -97
  %or.cond5.i8.3 = icmp ult i8 %i.an, 6
  br i1 %or.cond5.i8.3, label %bb.m, label %_Z8parseHexPKcm.exit15

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph.i2.3
  %.sink.i13.3 = phi i64 [ -48, %.lr.ph.i2.3 ], [ -55, %bb.k ], [ -87, %bb.l ]
  %i.ao = shl nsw i64 %i.ah, 4
  %5 = add nsw i64 %i.ao, %i.ak
  %i.ap = add nsw i64 %5, %.sink.i13.3
  br label %_Z8parseHexPKcm.exit15

_Z8parseHexPKcm.exit15:                           ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f
  %.sroa.0.0.lcssa.i9 = phi i64 [ %i.ap, %bb.m ], [ 0, %bb.f ], [ %i.r, %bb.h ], [ %i.ah, %bb.l ], [ %i.z, %bb.j ]
  %.sroa.4.0.lcssa.i10 = phi ptr [ %scevgep.i158, %bb.m ], [ %.sroa.4.0.lcssa.i55, %bb.f ], [ %i.s, %bb.h ], [ %i.ai, %bb.l ], [ %i.aa, %bb.j ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa.i9, ptr %i.aq, align 8, !tbaa !12
  %scevgep.i16 = getelementptr i8, ptr %.sroa.4.0.lcssa.i10, i64 2
  %i.ar = load i8, ptr %.sroa.4.0.lcssa.i10, align 1, !tbaa !10 ; 4 uses
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = add i8 %i.ar, -48
  %or.cond.i21 = icmp ult i8 %i.at, 10
  br i1 %or.cond.i21, label %.lr.ph.i17.1, label %bb.n

bb.n:                                             ; preds = %_Z8parseHexPKcm.exit15
  %i.au = add i8 %i.ar, -65
  %or.cond3.i22 = icmp ult i8 %i.au, 6
  br i1 %or.cond3.i22, label %.lr.ph.i17.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = add i8 %i.ar, -97
  %or.cond5.i23 = icmp ult i8 %i.av, 6
  br i1 %or.cond5.i23, label %.lr.ph.i17.1, label %_Z8parseHexPKcm.exit30

.lr.ph.i17.1:                                     ; preds = %bb.o, %bb.n, %_Z8parseHexPKcm.exit15
  %.sink.i28 = phi i64 [ -48, %_Z8parseHexPKcm.exit15 ], [ -55, %bb.n ], [ -87, %bb.o ]
  %i.aw = add nsw i64 %.sink.i28, %i.as           ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4.0.lcssa.i10, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !10  ; 4 uses
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = add i8 %i.ay, -48
  %or.cond.i21.1 = icmp ult i8 %i.ba, 10
  br i1 %or.cond.i21.1, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i17.1
  %i.bb = add i8 %i.ay, -65
  %or.cond3.i22.1 = icmp ult i8 %i.bb, 6
  br i1 %or.cond3.i22.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = add i8 %i.ay, -97
  %or.cond5.i23.1 = icmp ult i8 %i.bc, 6
  br i1 %or.cond5.i23.1, label %bb.r, label %_Z8parseHexPKcm.exit30

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.i17.1
  %.sink.i28.1 = phi i64 [ -48, %.lr.ph.i17.1 ], [ -55, %bb.p ], [ -87, %bb.q ]
  %i.bd = shl nsw i64 %i.aw, 4
  %6 = add nsw i64 %i.bd, %i.az
  %i.be = add nsw i64 %6, %.sink.i28.1
  br label %_Z8parseHexPKcm.exit30

_Z8parseHexPKcm.exit30:                           ; preds = %bb.r, %bb.q, %bb.o
  %.sroa.0.0.lcssa.i24 = phi i64 [ %i.be, %bb.r ], [ 0, %bb.o ], [ %i.aw, %bb.q ]
  %.sroa.4.0.lcssa.i25 = phi ptr [ %scevgep.i16, %bb.r ], [ %.sroa.4.0.lcssa.i10, %bb.o ], [ %i.ax, %bb.q ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.lcssa.i24, ptr %i.bf, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.4.0.lcssa.i25, ptr %i.bg, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %0 = alloca %struct.anon.0, align 8             ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr @.str, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @_Z15parseLinePrefixPKc(ptr dead_on_unwind nonnull writable sret(%struct.anon.0) align 8 %0, ptr noundef nonnull @.str)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 8, ptr %i.b, align 4, !tbaa !16
  %i.h = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 44, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 24800, ptr %i.c, align 4, !tbaa !16
  %i.j = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !16
  %i.l = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 8), ptr %i.e, align 8, !tbaa !15
  %i.n = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcS4_EEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 47, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.a
  %.02130.i = phi i64 [ %i.v, %bb.d ], [ 4294967295, %bb.a ]
  %.sroa.4.029.i = phi ptr [ %i.w, %bb.d ], [ @.str.10, %bb.a ] ; 2 uses
  %.sroa.0.028.i = phi i64 [ %i.u, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.o = load i8, ptr %.sroa.4.029.i, align 1, !tbaa !10 ; 4 uses
  %i.p = zext nneg i8 %i.o to i64
  %i.q = add i8 %i.o, -48
  %or.cond.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add i8 %i.o, -65
  %or.cond3.i = icmp ult i8 %i.r, 6
  br i1 %or.cond3.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add i8 %i.o, -97
  %or.cond5.i = icmp ult i8 %i.s, 6
  br i1 %or.cond5.i, label %bb.d, label %_Z8parseHexPKcm.exit14

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.sink.i = phi i64 [ -48, %.lr.ph.i ], [ -55, %bb.b ], [ -87, %bb.c ]
  %i.t = shl i64 %.sroa.0.028.i, 4
  %1 = add i64 %i.t, %i.p
  %i.u = add i64 %1, %.sink.i                     ; 2 uses
  %i.v = add nsw i64 %.02130.i, -1                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.029.i, i64 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_Z8parseHexPKcm.exit14, label %.lr.ph.i

_Z8parseHexPKcm.exit14:                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.lcssa.i = phi i64 [ %i.u, %bb.d ], [ %.sroa.0.028.i, %bb.c ]
  store i64 %.sroa.0.0.lcssa.i, ptr %i.f, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store i32 42811, ptr %i.g, align 4, !tbaa !16
  %i.x = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  store ptr getelementptr inbounds nuw (i8, ptr @.str, i64 8), ptr %i.a, align 8, !tbaa !15
  %i.y = call noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEPKcS4_EEbT_S4_S4_S4_iS4_RKT0_RKT1_(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__.main, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 0 uses
  %i.z = call noundef i32 @_ZN5boost13report_errorsEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %5, align 8, !tbaa !12
  %i.b = load i32, ptr %6, align 4, !tbaa !16
  %i.c = sext i32 %i.b to i64
  %i.d = icmp eq i64 %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #14
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !21
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #14 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #14
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !23
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32
  %i.o = or i32 %i.n, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.l, i32 noundef %i.o)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.p) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.21, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !32
  %i.aa = or i32 %i.z, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef %i.aa)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %0, i64 noundef %i.ab) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.h, %bb.i
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.s, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !32
  %i.am = or i32 %i.al, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aj, i32 noundef %i.am)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.an = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %1, i64 noundef %i.an) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.j, %bb.k
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.23, i64 noundef 4) ; 0 uses
  %i.aq = load i64, ptr %5, align 8, !tbaa !12
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.aq) ; 4 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.24, i64 noundef 2) ; 0 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.25, i64 noundef 2) ; 0 uses
  %i.av = load i32, ptr %6, align 4, !tbaa !16
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef %i.av) ; 8 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.26, i64 noundef 23) ; 0 uses
  %.not.i14 = icmp eq ptr %4, null
  br i1 %.not.i14, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !32
  %i.be = or i32 %i.bd, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bb, i32 noundef %i.be)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bf = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %4, i64 noundef %i.bf) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.l, %bb.m
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.27, i64 noundef 1) ; 0 uses
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !23
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.aw, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !45
  %.not.i1.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn)
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.br, %bb.o ], [ %i.bv, %bb.p ]
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext %.0.i.i.i)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) ; 0 uses
  %i.by = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.q, label %_ZN5boost6detail12test_resultsEv.exit17, !prof !17

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ca = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #14
  %.not.i16 = icmp eq i32 %i.ca, 0
  br i1 %.not.i16, label %_ZN5boost6detail12test_resultsEv.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !21
  %i.cb = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #14 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #14
  br label %_ZN5boost6detail12test_resultsEv.exit17

_ZN5boost6detail12test_resultsEv.exit17:          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q, %bb.r
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !16
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !16
end_hunk_0
