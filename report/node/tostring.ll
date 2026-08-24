Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/tostring?download=true
inline.NumInlined: 249
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.v8::bigint::(anonymous namespace)::ToStringFormatter" = type { %"class.v8::bigint::Digits", i32, i32, i32, i8, ptr, ptr, ptr, i64, ptr }
%"class.v8::bigint::Digits" = type <{ ptr, i32, [4 x i8] }>
%"class.v8::bigint::RWDigits" = type { %"class.v8::bigint::Digits.base", [4 x i8] }
%"class.v8::bigint::Digits.base" = type <{ ptr, i32 }>

@_ZN2v86bigint12_GLOBAL__N_115kMaxBitsPerCharE = internal unnamed_addr constant [37 x i8] c"\00\00 3@KSZ`fkoswz~\80\83\86\88\8B\8D\8F\91\93\95\97\99\9A\9C\9E\9F\A0\A2\A3\A5\A6", align 16
@_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE = internal unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 16
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [37 x i8] c"../../deps/v8/src/bigint/tostring.cc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Assertion failed: inverse_len <= inverse_.len()\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v86bigint13ProcessorImpl8ToStringEPcPjNS0_6DigitsEib(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr %3, i32 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i32 %4, 42
  tail call void @_ZN2v86bigint13ProcessorImpl12ToStringImplEPcPjNS0_6DigitsEibb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr %3, i32 %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v86bigint13ProcessorImpl12ToStringImplEPcPjNS0_6DigitsEibb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr %3, i32 %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.v8::bigint::(anonymous namespace)::ToStringFormatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.b = load i32, ptr %2, align 4
  %i.c = zext i1 %6 to i8
  store ptr %3, ptr %8, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 %4, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i32 %5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  store i8 %i.c, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.j = zext i32 %i.b to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 10 uses
  store ptr %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 14 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr %0, ptr %i.n, align 8
  %.not1.i.i = icmp eq i32 %4, 0
  br i1 %.not1.i.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = zext i32 %4 to i64
  %indvars.iv.next.i.i57 = add nsw i64 %i.o, -1   ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i57
  %.0.copyload.i.i.i.i58 = load i64, ptr %i.p, align 1
  %i.q = icmp eq i64 %.0.copyload.i.i.i.i58, 0
  br i1 %i.q, label %.lr.ph.preheader, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i
  %indvars.i.i151 = trunc i64 %indvars.iv.next.i.i57 to i32 ; 2 uses
  %.not.i.i152 = icmp eq i32 %indvars.i.i151, 0
  br i1 %.not.i.i152, label %._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge, label %.lr.ph155, !llvm.loop !5

.lr.ph155:                                        ; preds = %.lr.ph.preheader
  br label %bb.b, !llvm.loop !5

bb.b:                                             ; preds = %.lr.ph155, %.lr.ph
  %indvars.i.i154 = phi i32 [ %indvars.i.i151, %.lr.ph155 ], [ %indvars.i.i, %.lr.ph ]
  %indvars.iv.next.i.i59153 = phi i64 [ %indvars.iv.next.i.i57, %.lr.ph155 ], [ %indvars.iv.next.i.i, %.lr.ph ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i.i59153, -1 ; 3 uses
  %i.r = and i64 %indvars.iv.next.i.i, 4294967295
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.r
  %.0.copyload.i.i.i.i = load i64, ptr %i.s, align 1
  %i.t = icmp eq i64 %.0.copyload.i.i.i.i, 0
  br i1 %i.t, label %.lr.ph, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit, !llvm.loop !5

.lr.ph:                                           ; preds = %bb.b
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 2 uses
  %.not.i.i = icmp eq i32 %indvars.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge_crit_edge, label %bb.b, !llvm.loop !5

.lr.ph.._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph
  br label %._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge, !llvm.loop !5

._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge: ; preds = %.lr.ph.._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge_crit_edge, %.lr.ph.preheader
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit, !llvm.loop !5

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit: ; preds = %bb.b, %._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge, %.lr.ph.i.i
  %indvars.i.i56 = phi i32 [ 0, %._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge ], [ %4, %.lr.ph.i.i ], [ %indvars.i.i154, %bb.b ] ; 2 uses
  store i32 %indvars.i.i56, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit: ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit, %bb.a
  %i.u = phi i32 [ %indvars.i.i56, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit ], [ 0, %bb.a ] ; 6 uses
  %i.v = icmp sgt i32 %5, 0
  %i.w = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %5)
  %i.x = icmp samesign ult i32 %i.w, 2
  %or.cond = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread

bb.c:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true) ; 7 uses
  %i.z = add nsw i32 %5, -1                       ; 3 uses
  %.not58.i = icmp eq i32 %i.u, 1
  %.pre.i = zext nneg i32 %i.z to i64             ; 2 uses
  br i1 %.not58.i, label %._crit_edge49.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.c
  %i.aa = zext nneg i32 %i.y to i64
  br label %bb.d

._crit_edge49.i:                                  ; preds = %._crit_edge.i, %bb.c
  %i.ab = phi ptr [ %i.k, %bb.c ], [ %12, %._crit_edge.i ]
  %.035.lcssa.i = phi i64 [ 0, %bb.c ], [ %.136.lcssa.i, %._crit_edge.i ]
  %.034.lcssa.i = phi i32 [ 0, %bb.c ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.lcssa.i = phi i64 [ 0, %bb.c ], [ %15, %._crit_edge.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.lcssa.i
  %.0.copyload.i.i.i = load i64, ptr %i.ac, align 1 ; 2 uses
  %i.ad = zext nneg i32 %.034.lcssa.i to i64
  %i.ae = shl i64 %.0.copyload.i.i.i, %i.ad
  %i.af = or i64 %i.ae, %.035.lcssa.i
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.z, %i.ag
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 -1 ; 2 uses
  store ptr %i.al, ptr %i.l, align 8
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = sub nsw i32 %i.y, %.034.lcssa.i
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = lshr i64 %.0.copyload.i.i.i, %i.an      ; 2 uses
  %.not53.i = icmp eq i64 %i.ao, 0
  %.promoted.i.pre83 = load ptr, ptr %i.l, align 8 ; 2 uses
  br i1 %.not53.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %._crit_edge49.i
  %i.ap = zext nneg i32 %i.y to i64
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph48.i
  %i.aq = phi ptr [ %i.k, %.lr.ph48.i ], [ %12, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.03445.i = phi i32 [ 0, %.lr.ph48.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.03544.i = phi i64 [ 0, %.lr.ph48.i ], [ %.136.lcssa.i, %._crit_edge.i ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %.0.copyload.i.i39.i = load i64, ptr %i.ar, align 1 ; 2 uses
  %i.as = zext nneg i32 %.03445.i to i64
  %i.at = shl i64 %.0.copyload.i.i39.i, %i.as
  %i.au = or i64 %i.at, %.03544.i
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.z, %i.av
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds i8, ptr %i.aq, i64 -1 ; 3 uses
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = sub nsw i32 %i.y, %.03445.i             ; 2 uses
  %9 = zext nneg i32 %i.bb to i64
  %10 = lshr i64 %.0.copyload.i.i39.i, %9         ; 2 uses
  %11 = sub nsw i32 64, %i.bb                     ; 3 uses
  %.not3840.i = icmp slt i32 %11, %i.y
  br i1 %.not3840.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.bc = phi ptr [ %i.bg, %.lr.ph.i ], [ %i.ba, %bb.d ]
  %.142.i = phi i32 [ %i.bi, %.lr.ph.i ], [ %11, %bb.d ]
  %.13641.i = phi i64 [ %i.bh, %.lr.ph.i ], [ %10, %bb.d ] ; 2 uses
  %i.bd = and i64 %.13641.i, %.pre.i
  %i.be = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 -1 ; 4 uses
  store ptr %i.bg, ptr %i.l, align 8
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = lshr i64 %.13641.i, %i.aa               ; 2 uses
  %i.bi = sub nsw i32 %.142.i, %i.y               ; 3 uses
  %.not38.i = icmp slt i32 %i.bi, %i.y
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %12 = phi ptr [ %i.ba, %bb.d ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %.136.lcssa.i = phi i64 [ %10, %bb.d ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %11, %bb.d ], [ %i.bi, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %13 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %14 = add i32 %13, -1
  %15 = zext i32 %14 to i64                       ; 2 uses
  %i.bj = icmp samesign ult i64 %indvars.iv.next.i, %15
  br i1 %i.bj, label %bb.d, label %._crit_edge49.i, !llvm.loop !8

bb.e:                                             ; preds = %bb.e, %.lr.ph56.i
  %i.bk = phi ptr [ %.promoted.i.pre83, %.lr.ph56.i ], [ %i.bo, %bb.e ]
  %.254.i = phi i64 [ %i.ao, %.lr.ph56.i ], [ %i.bp, %bb.e ] ; 2 uses
  %i.bl = and i64 %.254.i, %.pre.i
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 4 uses
  store ptr %i.bo, ptr %i.l, align 8
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = lshr i64 %.254.i, %i.ap                 ; 2 uses
  %.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit, label %bb.e, !llvm.loop !9

_ZN2v86bigint12IsPowerOfTwoEi.exit.thread:        ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit
  %i.bq = sext i32 %5 to i64                      ; 6 uses
  %i.br = getelementptr inbounds i8, ptr @_ZN2v86bigint12_GLOBAL__N_115kMaxBitsPerCharE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1             ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  store i32 %i.bt, ptr %i.e, align 4
  %.rhs.trunc.i = zext i8 %i.bs to i16
  %i.bu = udiv i16 2048, %.rhs.trunc.i            ; 2 uses
  %.zext.i = zext nneg i16 %i.bu to i32           ; 3 uses
  store i32 %.zext.i, ptr %i.f, align 8
  %i.bv = zext nneg i16 %i.bu to i64              ; 2 uses
  br i1 %7, label %.preheader, label %.preheader128

.preheader:                                       ; preds = %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread, %.preheader
  %.013.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ 1, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ]
  %.0812.i.i = phi i64 [ %i.by, %.preheader ], [ %i.bv, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ] ; 2 uses
  %.0911.i.i = phi i64 [ %i.bz, %.preheader ], [ %i.bq, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ] ; 3 uses
  %i.bw = and i64 %.0812.i.i, 1
  %.not10.i.i = icmp eq i64 %i.bw, 0
  %i.bx = select i1 %.not10.i.i, i64 1, i64 %.0911.i.i
  %spec.select.i.i = mul i64 %i.bx, %.013.i.i     ; 4 uses
  %i.by = lshr i64 %.0812.i.i, 1                  ; 2 uses
  %i.bz = mul i64 %.0911.i.i, %.0911.i.i
  %.not.i.i13 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i13, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit, label %.preheader, !llvm.loop !10

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit: ; preds = %.preheader
  store i64 %spec.select.i.i, ptr %i.m, align 8
  %i.ca = shl i32 %i.u, 6                         ; 2 uses
  %i.cb = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 10 uses
  store i32 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %.zext.i, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 1, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 2 uses
  store i64 0, ptr %i.ce, align 8
  store i32 1, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.ci = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #12 ; 4 uses
  store ptr %i.ci, ptr %i.ch, align 8
  store ptr %i.ci, ptr %i.cf, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cj, i8 0, i64 20, i1 false)
  store i64 %spec.select.i.i, ptr %i.ci, align 4
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.cl = trunc nuw nsw i64 %i.ck to i32          ; 2 uses
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = sub nsw i32 127, %i.cm
  %.not39.i.i = icmp ugt i32 %i.cn, %i.ca
  br i1 %.not39.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i14
  %.sroa.29.0..sroa_idx41.i.i = phi ptr [ %i.cg, %.lr.ph.i.i14 ], [ %i.da, %.loopexit.i.i ] ; 3 uses
  %i.cp = phi ptr [ %i.cf, %.lr.ph.i.i14 ], [ %i.cx, %.loopexit.i.i ] ; 3 uses
  %.02640.i.i = phi ptr [ %i.cb, %.lr.ph.i.i14 ], [ %i.cq, %.loopexit.i.i ] ; 5 uses
  %i.cq = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 12 uses
  store i32 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.02640.i.i, i64 4
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = shl nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cr, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i8 1, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %.02640.i.i, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 6 uses
  %i.cy = load i32, ptr %.sroa.29.0..sroa_idx41.i.i, align 8
  %i.cz = shl i32 %i.cy, 1                        ; 2 uses
  store ptr null, ptr %i.cx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 6 uses
  store i32 %i.cz, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.dc = zext i32 %i.cz to i64
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dd) #12 ; 2 uses
  store ptr %i.de, ptr %i.db, align 8
  store ptr %i.de, ptr %i.cx, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %.02640.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.df, i8 0, i64 20, i1 false)
  store i8 0, ptr %i.dg, align 8
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.cx, align 8
  %.sroa.22.0.copyload.i.i = load i32, ptr %i.da, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cp, align 8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.29.0..sroa_idx41.i.i, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.sroa.01.0.copyload.i.i, i32 %.sroa.22.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %i.cp) #11
  %i.dh = load i32, ptr %i.co, align 8
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.f
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_114RecursionLevelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.cq) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 72) #13
  br label %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i

bb.g:                                             ; preds = %bb.f
  %.promoted.i.i.i = load i32, ptr %i.da, align 8 ; 2 uses
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.dj = load ptr, ptr %i.cx, align 8
  %i.dk = zext i32 %.promoted.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.i ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dl = and i64 %indvars.iv.next.i.i.i, 4294967295
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dl
  %.0.copyload.i.i.i27.i.i = load i64, ptr %i.dm, align 1
  %i.dn = icmp eq i64 %.0.copyload.i.i.i27.i.i, 0
  br i1 %i.dn, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  store i32 %indvars.i.i.i, ptr %i.da, align 8
  %.not.i.i.i = icmp eq i32 %indvars.i.i.i, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.h, !llvm.loop !5

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %i.do = load i32, ptr %.sroa.29.0..sroa_idx41.i.i, align 8 ; 3 uses
  %i.dp = add i32 %i.do, -1
  %i.dq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %i.dr = zext i32 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  %.0.copyload.i.i.i28.i.i = load i64, ptr %i.ds, align 1
  %i.dt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i28.i.i, i1 false)
  %i.du = trunc nuw nsw i64 %i.dt to i32          ; 2 uses
  store i32 %i.du, ptr %.02640.i.i, align 8
  tail call void @_ZN2v86bigint9LeftShiftENS0_8RWDigitsENS0_6DigitsEi(ptr %i.dq, i32 %i.do, ptr %i.dq, i32 %i.do, i32 noundef %i.du) #11
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_114RecursionLevel14ComputeInverseEPNS0_13ProcessorImplEj(ptr noundef nonnull align 8 dereferenceable(72) %.02640.i.i, ptr noundef nonnull %0, i32 noundef 0)
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.cx, align 8 ; 2 uses
  %.sroa.29.0.copyload.i.i = load i32, ptr %i.da, align 8 ; 3 uses
  %i.dv = add i32 %.sroa.29.0.copyload.i.i, -1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %i.dw
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.dx, align 1
  %i.dy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i.i.i, i1 false)
  %i.dz = trunc nuw nsw i64 %i.dy to i32          ; 2 uses
  %i.ea = shl i32 %.sroa.29.0.copyload.i.i, 7
  %i.eb = shl nuw nsw i32 %i.dz, 1
  %i.ec = xor i32 %i.eb, -1
  %i.ed = add i32 %i.ea, %i.ec
  %.not.i.i15 = icmp ugt i32 %i.ed, %i.ca
  br i1 %.not.i.i15, label %._crit_edge.i.i, label %bb.f, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit
  %.026.lcssa.i.i = phi ptr [ %i.cb, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %i.cq, %.loopexit.i.i ] ; 2 uses
  %.sroa.08.0.copyload.lcssa.i.i = phi ptr [ %i.ci, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %.sroa.08.0.copyload.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.29.0.copyload.lcssa.i.i = phi i32 [ 1, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %.sroa.29.0.copyload.i.i, %.loopexit.i.i ] ; 2 uses
  %.lcssa.i.i = phi i32 [ %i.cl, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %i.dz, %.loopexit.i.i ] ; 2 uses
  store i32 %.lcssa.i.i, ptr %.026.lcssa.i.i, align 8
  tail call void @_ZN2v86bigint9LeftShiftENS0_8RWDigitsENS0_6DigitsEi(ptr nonnull %.sroa.08.0.copyload.lcssa.i.i, i32 %.sroa.29.0.copyload.lcssa.i.i, ptr nonnull %.sroa.08.0.copyload.lcssa.i.i, i32 %.sroa.29.0.copyload.lcssa.i.i, i32 noundef %.lcssa.i.i) #11
  br label %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i

_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i: ; preds = %._crit_edge.i.i, %.thread.i.i
  %.2.i.i = phi ptr [ null, %.thread.i.i ], [ %.026.lcssa.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i
  %i.eh = call fastcc noundef ptr @_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12ProcessLevelEPNS1_14RecursionLevelENS0_6DigitsEPcb(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef %.2.i.i, ptr %3, i32 %i.u, ptr noundef %i.k, i1 noundef zeroext true)
  store ptr %i.eh, ptr %i.l, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i
  %.not.i1.i = icmp eq ptr %.2.i.i, null
  br i1 %.not.i1.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit, label %_ZNKSt14default_deleteIN2v86bigint12_GLOBAL__N_114RecursionLevelEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v86bigint12_GLOBAL__N_114RecursionLevelEEclEPS3_.exit.i.i: ; preds = %bb.k
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_114RecursionLevelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.2.i.i) #11
  call void @_ZdlPvm(ptr noundef nonnull %.2.i.i, i64 noundef 72) #13
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN2v86bigint12_GLOBAL__N_114RecursionLevelEEclEPS3_.exit.i.i
  %i.ei = load i32, ptr %i.ee, align 8
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.y, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit_crit_edge
end_hunk_0
begin_hunk_1_@_ZN2v86bigint13ProcessorImpl12ToStringImplEPcPjNS0_6DigitsEibb:bb.a

bb.p:                                             ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.i, %bb.o
  %.pre.i.i = phi i32 [ %5, %bb.o ], [ %i.hp, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 3 uses
  %i.fd = phi i32 [ %.zext.i, %bb.o ], [ %i.hq, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 3 uses
  %i.fe = phi ptr [ %i.k, %bb.o ], [ %i.hs, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 8 uses
  %i.ff = phi i32 [ %5, %bb.o ], [ %i.hr, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 2 uses
  %.sroa.9.0.i = phi i32 [ %i.u, %bb.o ], [ %.sroa.9.1.lcssa.i, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 5 uses
  %.sroa.010.0.i = phi ptr [ %3, %bb.o ], [ %i.fc, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 10
  br i1 %i.fg, label %.lr.ph.preheader.i.i, label %bb.q

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.fh = zext i32 %.sroa.9.0.i to i64
  br label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %.lr.ph.i.i32, %.lr.ph.preheader.i.i
  %indvars.iv.i.i33 = phi i64 [ %i.fh, %.lr.ph.preheader.i.i ], [ %i.fi, %.lr.ph.i.i32 ]
  %.01926.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.fr, %.lr.ph.i.i32 ]
  %i.fi = add nsw i64 %indvars.iv.i.i33, -1       ; 4 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.0.i, i64 %i.fi
  %.0.copyload.i.i.i.i34 = load i64, ptr %i.fj, align 1 ; 2 uses
  %i.fk = call i64 @llvm.fshl.i64(i64 %.01926.i.i, i64 %.0.copyload.i.i.i.i34, i64 32) ; 2 uses
  %i.fl = udiv i64 %i.fk, 1000000000
  %i.fm = urem i64 %i.fk, 1000000000
  %i.fn = shl nuw nsw i64 %i.fm, 32
  %i.fo = and i64 %.0.copyload.i.i.i.i34, 4294967295
  %i.fp = or disjoint i64 %i.fn, %i.fo            ; 2 uses
  %i.fq = udiv i64 %i.fp, 1000000000
  %i.fr = urem i64 %i.fp, 1000000000              ; 2 uses
  %i.fs = shl nuw i64 %i.fl, 32
  %i.ft = or i64 %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fi
  store i64 %i.ft, ptr %i.fu, align 4
  %.not.wide.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.wide.i.i, label %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i, label %.lr.ph.i.i32, !llvm.loop !14

_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i: ; preds = %.lr.ph.i.i32
  %i.fv = trunc nuw nsw i64 %i.fr to i32          ; 6 uses
  %i.fw = urem i32 %i.fv, 10
  %i.fx = trunc nuw nsw i32 %i.fw to i8
  %i.fy = or disjoint i8 %i.fx, 48
  %i.fz = getelementptr inbounds i8, ptr %i.fe, i64 -1
  store i8 %i.fy, ptr %i.fz, align 1
  %i.ga = getelementptr inbounds i8, ptr %i.fe, i64 -5
  %i.gb = insertelement <4 x i32> poison, i32 %i.fv, i64 0
  %i.gc = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gd = udiv <4 x i32> %i.gc, <i32 10000, i32 1000, i32 100, i32 10>
  %i.ge = urem <4 x i32> %i.gd, splat (i32 10)
  %i.gf = trunc nuw nsw <4 x i32> %i.ge to <4 x i8>
  %i.gg = or disjoint <4 x i8> %i.gf, splat (i8 48)
  store <4 x i8> %i.gg, ptr %i.ga, align 1
  %i.gh = udiv i32 %i.fv, 100000
  %.lhs.trunc50.i.i = trunc nuw nsw i32 %i.gh to i16
  %i.gi = urem i16 %.lhs.trunc50.i.i, 10
  %i.gj = trunc nuw nsw i16 %i.gi to i8
  %i.gk = or disjoint i8 %i.gj, 48
  %i.gl = getelementptr inbounds i8, ptr %i.fe, i64 -6
  store i8 %i.gk, ptr %i.gl, align 1
  %i.gm = udiv i32 %i.fv, 1000000
  %.lhs.trunc54.i.i = trunc nuw nsw i32 %i.gm to i16
  %i.gn = urem i16 %.lhs.trunc54.i.i, 10
  %i.go = trunc nuw nsw i16 %i.gn to i8
  %i.gp = or disjoint i8 %i.go, 48
  %i.gq = getelementptr inbounds i8, ptr %i.fe, i64 -7
  store i8 %i.gp, ptr %i.gq, align 1
  %i.gr = udiv i32 %i.fv, 10000000
  %.lhs.trunc58.i.i = trunc nuw nsw i32 %i.gr to i8
  %i.gs = urem i8 %.lhs.trunc58.i.i, 10
  %i.gt = or disjoint i8 %i.gs, 48
  %i.gu = getelementptr inbounds i8, ptr %i.fe, i64 -8
  store i8 %i.gt, ptr %i.gu, align 1
  %i.gv = udiv i32 %i.fv, 100000000
  %i.gw = trunc nuw nsw i32 %i.gv to i8
  %i.gx = or disjoint i8 %i.gw, 48
  %i.gy = getelementptr inbounds i8, ptr %i.fe, i64 -9 ; 3 uses
  store i8 %i.gx, ptr %i.gy, align 1
  store ptr %i.gy, ptr %i.l, align 8
  br label %.lr.ph.i17.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @_ZN2v86bigint13ProcessorImpl12DivideSingleENS0_8RWDigitsEPmNS0_6DigitsEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.fc, i32 %.sroa.9.0.i, ptr noundef nonnull %i.a, ptr %.sroa.010.0.i, i32 %.sroa.9.0.i, i64 noundef %spec.select.i.i22) #11
  %i.gz = icmp sgt i32 %i.fd, 0
  br i1 %i.gz, label %.lr.ph.i16.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i

.lr.ph.i16.i:                                     ; preds = %bb.q
  %i.ha = load i64, ptr %i.a, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i16.i
  %i.hb = phi i32 [ %.pre.i.i, %.lr.ph.i16.i ], [ %i.hh, %bb.r ]
  %.010.i.i = phi i32 [ 0, %.lr.ph.i16.i ], [ %i.hk, %bb.r ]
  %.069.i.i = phi ptr [ %i.fe, %.lr.ph.i16.i ], [ %i.hg, %bb.r ]
  %.078.i.i = phi i64 [ %i.ha, %.lr.ph.i16.i ], [ %i.hj, %bb.r ] ; 2 uses
  %i.hc = sext i32 %i.hb to i64
  %i.hd = urem i64 %.078.i.i, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = getelementptr inbounds i8, ptr %.069.i.i, i64 -1 ; 3 uses
  store i8 %i.hf, ptr %i.hg, align 1
  %i.hh = load i32, ptr %i.d, align 8             ; 4 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = udiv i64 %.078.i.i, %i.hi
  %i.hk = add nuw nsw i32 %.010.i.i, 1            ; 2 uses
  %i.hl = load i32, ptr %i.f, align 8             ; 2 uses
  %i.hm = icmp slt i32 %i.hk, %i.hl
  br i1 %i.hm, label %bb.r, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i, !llvm.loop !15

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i: ; preds = %bb.r, %bb.q
  %.pre.i.i82 = phi i32 [ %.pre.i.i, %bb.q ], [ %i.hh, %bb.r ]
  %i.hn = phi i32 [ %i.fd, %bb.q ], [ %i.hl, %bb.r ]
  %i.ho = phi i32 [ %i.ff, %bb.q ], [ %i.hh, %bb.r ]
  %.06.lcssa.i.i = phi ptr [ %i.fe, %bb.q ], [ %i.hg, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i
  %i.hp = phi i32 [ %.pre.i.i, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i ], [ %.pre.i.i82, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i ] ; 3 uses
  %i.hq = phi i32 [ %i.fd, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i ], [ %i.hn, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i ]
  %i.hr = phi i32 [ 10, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i ], [ %i.ho, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i ]
  %i.hs = phi ptr [ %i.gy, %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i ], [ %.06.lcssa.i.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasecaseMiddleEmPc.exit.i ] ; 4 uses
  %i.ht = zext i32 %.sroa.9.0.i to i64
  %indvars.iv.next.i51.i = add nsw i64 %i.ht, -1  ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.next.i51.i
  %.0.copyload.i.i.i1952.i = load i64, ptr %i.hu, align 1
  %i.hv = icmp eq i64 %.0.copyload.i.i.i1952.i, 0
  br i1 %i.hv, label %.lr.ph.i29.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i

.lr.ph.i29.preheader:                             ; preds = %.lr.ph.i17.i
  %indvars.i.i30156 = trunc i64 %indvars.iv.next.i51.i to i32 ; 2 uses
  %.not.i20.i157 = icmp eq i32 %indvars.i.i30156, 0
  br i1 %.not.i20.i157, label %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i, label %.lr.ph160, !llvm.loop !5

.lr.ph160:                                        ; preds = %.lr.ph.i29.preheader
  br label %bb.s, !llvm.loop !5

bb.s:                                             ; preds = %.lr.ph160, %.lr.ph.i29
  %indvars.i.i30159 = phi i32 [ %indvars.i.i30156, %.lr.ph160 ], [ %indvars.i.i30, %.lr.ph.i29 ]
  %indvars.iv.next.i53.i158 = phi i64 [ %indvars.iv.next.i51.i, %.lr.ph160 ], [ %indvars.iv.next.i.i31, %.lr.ph.i29 ]
  %indvars.iv.next.i.i31 = add nsw i64 %indvars.iv.next.i53.i158, -1 ; 3 uses
  %i.hw = and i64 %indvars.iv.next.i.i31, 4294967295
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.hw
  %.0.copyload.i.i.i19.i = load i64, ptr %i.hx, align 1
  %i.hy = icmp eq i64 %.0.copyload.i.i.i19.i, 0
  br i1 %i.hy, label %.lr.ph.i29, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i, !llvm.loop !5

.lr.ph.i29:                                       ; preds = %bb.s
  %indvars.i.i30 = trunc i64 %indvars.iv.next.i.i31 to i32 ; 2 uses
  %.not.i20.i = icmp eq i32 %indvars.i.i30, 0
  br i1 %.not.i20.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i, label %bb.s, !llvm.loop !5

_ZN2v86bigint6Digits9NormalizeEv.exit.i:          ; preds = %bb.s, %.lr.ph.i17.i
  %.sroa.9.1.lcssa.i = phi i32 [ %.sroa.9.0.i, %.lr.ph.i17.i ], [ %indvars.i.i30159, %bb.s ] ; 2 uses
  %i.hz = icmp ugt i32 %.sroa.9.1.lcssa.i, 1
  br i1 %i.hz, label %bb.p, label %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i, !llvm.loop !16

_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i:   ; preds = %.lr.ph.i29.preheader, %_ZN2v86bigint6Digits9NormalizeEv.exit.i, %.lr.ph.i29
  %.0.copyload.i.i = load i64, ptr %i.fc, align 4 ; 3 uses
  %i.ia = icmp eq i32 %i.hp, 10
  br i1 %i.ia, label %bb.t, label %.preheader.i21.i

bb.t:                                             ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i
  %.not5.i.i26.i = icmp eq i64 %.0.copyload.i.i, 0
  br i1 %.not5.i.i26.i, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i, label %.lr.ph.i.i27.i

.lr.ph.i.i27.i:                                   ; preds = %bb.t, %.lr.ph.i.i27.i
  %.07.i.i28.i = phi ptr [ %i.ie, %.lr.ph.i.i27.i ], [ %i.hs, %bb.t ]
  %.046.i.i29.i = phi i64 [ %i.if, %.lr.ph.i.i27.i ], [ %.0.copyload.i.i, %bb.t ] ; 3 uses
  %i.ib = urem i64 %.046.i.i29.i, 10
  %i.ic = trunc nuw nsw i64 %i.ib to i8
  %i.id = or disjoint i8 %i.ic, 48
  %i.ie = getelementptr inbounds i8, ptr %.07.i.i28.i, i64 -1 ; 3 uses
  store i8 %i.id, ptr %i.ie, align 1
  %i.if = udiv i64 %.046.i.i29.i, 10
  %.not.i.i30.i = icmp ult i64 %.046.i.i29.i, 10
  br i1 %.not.i.i30.i, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i, label %.lr.ph.i.i27.i, !llvm.loop !12

.preheader.i21.i:                                 ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i, %.preheader.i21.i
  %i.ig = phi i32 [ %i.im, %.preheader.i21.i ], [ %i.hp, %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i ]
  %.08.i22.i = phi i64 [ %i.io, %.preheader.i21.i ], [ %.0.copyload.i.i, %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i ] ; 3 uses
  %.0.i23.i = phi ptr [ %i.il, %.preheader.i21.i ], [ %i.hs, %_ZN2v86bigint6Digits9NormalizeEv.exit.thread.i ]
  %i.ih = sext i32 %i.ig to i64
  %i.ii = urem i64 %.08.i22.i, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = getelementptr inbounds i8, ptr %.0.i23.i, i64 -1 ; 3 uses
  store i8 %i.ik, ptr %i.il, align 1
  %i.im = load i32, ptr %i.d, align 8             ; 2 uses
  %i.in = sext i32 %i.im to i64                   ; 2 uses
  %i.io = udiv i64 %.08.i22.i, %i.in
  %.not.i24.i = icmp ult i64 %.08.i22.i, %i.in
  br i1 %.not.i24.i, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i, label %.preheader.i21.i, !llvm.loop !13

_ZN2v86bigint13ScratchDigitsD2Ev.exit.i:          ; preds = %.preheader.i21.i, %.lr.ph.i.i27.i, %bb.t
  %.09.i25.i = phi ptr [ %i.ie, %.lr.ph.i.i27.i ], [ %i.hs, %bb.t ], [ %i.il, %.preheader.i21.i ] ; 2 uses
  store ptr %.09.i25.i, ptr %i.l, align 8
  call void @_ZdaPv(ptr noundef nonnull %i.fc) #13
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit: ; preds = %bb.e, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit_crit_edge, %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i, %bb.l, %._crit_edge49.i
  %.promoted.i = phi ptr [ %.promoted.i.pre, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit_crit_edge ], [ %.promoted.i.pre83, %._crit_edge49.i ], [ %.09.i25.i, %_ZN2v86bigint13ScratchDigitsD2Ev.exit.i ], [ %.09.i.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i ], [ %i.eo, %bb.l ], [ %i.bo, %bb.e ] ; 5 uses
  %i.ip = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.iq = icmp ult ptr %.promoted.i, %i.ip
  br i1 %i.iq, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit
  %.promoted11.i = ptrtoaddr ptr %.promoted.i to i64
  %i.ir = ptrtoaddr ptr %i.ip to i64
  %i.is = sub i64 %i.ir, %.promoted11.i
  %scevgep.i = getelementptr i8, ptr %.promoted.i, i64 %i.is
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.u, %.lr.ph.preheader.i
  %i.it = phi ptr [ %i.iw, %bb.u ], [ %.promoted.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = icmp eq i8 %i.iu, 48
  br i1 %i.iv, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %.lr.ph.i36
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 1 ; 3 uses
  store ptr %i.iw, ptr %i.l, align 8
  %exitcond.not.i = icmp eq ptr %i.iw, %i.ip
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i36, !llvm.loop !17

.critedge.i:                                      ; preds = %bb.u, %.lr.ph.i36, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit
  %i.ix = phi ptr [ %.promoted.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit ], [ %i.it, %.lr.ph.i36 ], [ %scevgep.i, %bb.u ] ; 2 uses
  %i.iy = load i8, ptr %i.g, align 4, !range !18, !noundef !19
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.critedge.i
  %i.ja = getelementptr inbounds i8, ptr %i.ix, i64 -1 ; 2 uses
  store ptr %i.ja, ptr %i.l, align 8
  store i8 45, ptr %i.ja, align 1
  %.pre.i35 = load ptr, ptr %i.l, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge.i
  %i.jb = phi ptr [ %.pre.i35, %bb.v ], [ %i.ix, %.critedge.i ] ; 3 uses
  %i.jc = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.jd = icmp ugt ptr %i.jb, %i.jc
  br i1 %i.jd, label %bb.x, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter6FinishEv.exit

bb.x:                                             ; preds = %bb.w
  %i.je = load ptr, ptr %i.i, align 8
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jb to i64               ; 2 uses
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = ptrtoint ptr %i.jc to i64
  %i.jj = sub i64 %i.jg, %i.ji
  %i.jk = trunc i64 %i.jj to i32
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.jc, ptr nonnull align 1 %i.jb, i64 %i.jh, i1 false)
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter6FinishEv.exit

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter6FinishEv.exit: ; preds = %bb.w, %bb.x
  %.0.i = phi i32 [ %i.jk, %bb.x ], [ 0, %bb.w ]  ; 2 uses
  %i.jl = load i32, ptr %2, align 4
  %i.jm = sub i32 %i.jl, %.0.i                    ; 2 uses
  store i32 %i.jm, ptr %2, align 4
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %i.jn
  %i.jp = zext i32 %.0.i to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.jo, i8 0, i64 %i.jp, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter6FinishEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v86bigint9Processor8ToStringEPcPjNS0_6DigitsEib(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr %3, i32 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i32 %4, 42
  tail call void @_ZN2v86bigint13ProcessorImpl12ToStringImplEPcPjNS0_6DigitsEibb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr %3, i32 %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %i.a)
  %i.b = tail call noundef i32 @_ZN2v86bigint13ProcessorImpl20get_and_clear_statusEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret i32 %i.b
}

declare noundef i32 @_ZN2v86bigint13ProcessorImpl20get_and_clear_statusEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN2v86bigint20ToStringResultLengthENS0_6DigitsEib(ptr nofree readonly captures(none) %0, i32 %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 {
bb.a:
  %i.a = shl i32 %1, 6
  %i.b = add i32 %1, -1
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %.0.copyload.i.i.i = load i64, ptr %i.d, align 1
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i, i1 false)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = sub i32 %i.a, %i.f                       ; 2 uses
  %i.h = icmp sgt i32 %2, 0
  %i.i = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %2)
  %i.j = icmp samesign ult i32 %i.i, 2
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  %i.l = add i32 %i.g, -1
  %i.m = udiv i32 %i.l, %i.k
  %i.n = select i1 %3, i32 2, i32 1
  %i.o = add i32 %i.n, %i.m
  br label %bb.c

_ZN2v86bigint12IsPowerOfTwoEi.exit.thread:        ; preds = %bb.a
  %i.p = sext i32 %2 to i64
  %i.q = getelementptr inbounds i8, ptr @_ZN2v86bigint12_GLOBAL__N_115kMaxBitsPerCharE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = add i8 %i.r, -1
  %i.t = zext i32 %i.g to i64
  %i.u = shl nuw nsw i64 %i.t, 5
  %i.v = add nsw i64 %i.u, -1
  %i.w = zext i8 %i.s to i64
  %i.x = udiv i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = add i32 %i.y, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.z, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ]
  %i.aa = zext i1 %3 to i32
  %i.ab = add i32 %.0, %i.aa
  ret i32 %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12ProcessLevelEPNS1_14RecursionLevelENS0_6DigitsEPcb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef captures(address_is_null) %1, ptr %2, i32 %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::bigint::Digits", align 8 ; 3 uses
  %7 = alloca %"class.v8::bigint::Digits", align 8 ; 3 uses
  %8 = alloca %"class.v8::bigint::Digits", align 8 ; 3 uses
  %9 = alloca %"class.v8::bigint::RWDigits", align 8 ; 3 uses
  %.not1.i = icmp eq i32 %3, 0
  br i1 %.not1.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %indvars.iv.next.i232 = add nsw i64 %i.a, -1    ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i232
  %.0.copyload.i.i.i233 = load i64, ptr %i.b, align 1
  %i.c = icmp eq i64 %.0.copyload.i.i.i233, 0
  br i1 %i.c, label %.lr.ph.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %indvars.i280 = trunc i64 %indvars.iv.next.i232 to i32 ; 2 uses
  %.not.i281 = icmp eq i32 %indvars.i280, 0
  br i1 %.not.i281, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit, label %.lr.ph284, !llvm.loop !5

.lr.ph284:                                        ; preds = %.lr.ph.preheader
  br label %bb.b, !llvm.loop !5

bb.b:                                             ; preds = %.lr.ph284, %.lr.ph
  %indvars.i283 = phi i32 [ %indvars.i280, %.lr.ph284 ], [ %indvars.i, %.lr.ph ]
  %indvars.iv.next.i234282 = phi i64 [ %indvars.iv.next.i232, %.lr.ph284 ], [ %indvars.iv.next.i, %.lr.ph ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i234282, -1 ; 3 uses
  %i.d = and i64 %indvars.iv.next.i, 4294967295
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %.0.copyload.i.i.i = load i64, ptr %i.e, align 1
  %i.f = icmp eq i64 %.0.copyload.i.i.i, 0
  br i1 %i.f, label %.lr.ph, label %_ZN2v86bigint6Digits9NormalizeEv.exit, !llvm.loop !5

.lr.ph:                                           ; preds = %bb.b
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %.lr.ph._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.loopexit273_crit_edge, label %bb.b, !llvm.loop !5

_ZN2v86bigint6Digits9NormalizeEv.exit:            ; preds = %bb.b, %.lr.ph.i
  %.sroa.5.0.lcssa = phi i32 [ %3, %.lr.ph.i ], [ %indvars.i283, %bb.b ] ; 2 uses
  %i.g = icmp ult i32 %.sroa.5.0.lcssa, 2
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit
  %.0.copyload.i.i = load i64, ptr %2, align 1    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i32 %i.i, 10
  br i1 %i.j, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %.not5.i.i = icmp eq i64 %.0.copyload.i.i, 0
  br i1 %.not5.i.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %4, %bb.d ]
  %.046.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %.0.copyload.i.i, %bb.d ] ; 3 uses
  %i.k = urem i64 %.046.i.i, 10
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = or disjoint i8 %i.l, 48
  %i.n = getelementptr inbounds i8, ptr %.07.i.i, i64 -1 ; 3 uses
  store i8 %i.m, ptr %i.n, align 1
  %i.o = udiv i64 %.046.i.i, 10
  %.not.i.i = icmp ult i64 %.046.i.i, 10
  br i1 %.not.i.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit, label %.lr.ph.i.i, !llvm.loop !12
end_hunk_1
