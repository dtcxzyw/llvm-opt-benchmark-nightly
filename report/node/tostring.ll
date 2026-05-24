inline.NumInlined: 249
inline.NumDeleted: 138
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

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
define hidden void @_ZN2v86bigint13ProcessorImpl8ToStringEPcPjNS0_6DigitsEib(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr %3, i32 %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i32 %4, 42
  tail call void @_ZN2v86bigint13ProcessorImpl12ToStringImplEPcPjNS0_6DigitsEibb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr %3, i32 %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v86bigint13ProcessorImpl12ToStringImplEPcPjNS0_6DigitsEibb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef captures(none) %2, ptr %3, i32 %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 {
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
  %indvars.iv.next.i.i58 = add nsw i64 %i.o, -1   ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i58
  %.0.copyload.i.i.i.i59 = load i64, ptr %i.p, align 1
  %i.q = icmp eq i64 %.0.copyload.i.i.i.i59, 0
  br i1 %i.q, label %.lr.ph.preheader, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i
  %indvars.i.i152 = trunc i64 %indvars.iv.next.i.i58 to i32 ; 2 uses
  %.not.i.i153 = icmp eq i32 %indvars.i.i152, 0
  br i1 %.not.i.i153, label %._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge, label %.lr.ph156, !llvm.loop !5

.lr.ph156:                                        ; preds = %.lr.ph.preheader
  br label %bb.b, !llvm.loop !5

bb.b:                                             ; preds = %.lr.ph156, %.lr.ph
  %indvars.i.i155 = phi i32 [ %indvars.i.i152, %.lr.ph156 ], [ %indvars.i.i, %.lr.ph ]
  %indvars.iv.next.i.i60154 = phi i64 [ %indvars.iv.next.i.i58, %.lr.ph156 ], [ %indvars.iv.next.i.i, %.lr.ph ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i.i60154, -1 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i
  %.0.copyload.i.i.i.i = load i64, ptr %i.r, align 1
  %i.s = icmp eq i64 %.0.copyload.i.i.i.i, 0
  br i1 %i.s, label %.lr.ph, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit, !llvm.loop !5

.lr.ph:                                           ; preds = %bb.b
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 2 uses
  %.not.i.i = icmp eq i32 %indvars.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge_crit_edge, label %bb.b, !llvm.loop !5

.lr.ph.._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph
  br label %._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge, !llvm.loop !5

._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge: ; preds = %.lr.ph.._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge_crit_edge, %.lr.ph.preheader
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit, !llvm.loop !5

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit: ; preds = %bb.b, %._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge, %.lr.ph.i.i
  %indvars.i.i57 = phi i32 [ 0, %._ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit_crit_edge ], [ %4, %.lr.ph.i.i ], [ %indvars.i.i155, %bb.b ] ; 2 uses
  store i32 %indvars.i.i57, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit: ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit, %bb.a
  %i.t = phi i32 [ %indvars.i.i57, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit.loopexit ], [ 0, %bb.a ] ; 6 uses
  %i.u = icmp sgt i32 %5, 0
  %i.v = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %5)
  %i.w = icmp samesign ult i32 %i.v, 2
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread

bb.c:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit
  %i.x = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %5, i1 true) ; 7 uses
  %i.y = add nsw i32 %5, -1                       ; 3 uses
  %.not58.i = icmp eq i32 %i.t, 1
  %.pre.i = zext nneg i32 %i.y to i64             ; 2 uses
  br i1 %.not58.i, label %._crit_edge49.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.c
  %i.z = zext nneg i32 %i.x to i64
  br label %bb.d

._crit_edge49.i:                                  ; preds = %._crit_edge.i, %bb.c
  %i.aa = phi ptr [ %i.k, %bb.c ], [ %i.bl, %._crit_edge.i ]
  %.034.lcssa.i = phi i32 [ 0, %bb.c ], [ %.135.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.1.lcssa.i, %._crit_edge.i ]
  %.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.bo, %._crit_edge.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.lcssa.i
  %.0.copyload.i.i.i = load i64, ptr %i.ab, align 1 ; 2 uses
  %i.ac = zext nneg i32 %.034.lcssa.i to i64
  %i.ad = shl i64 %.0.copyload.i.i.i, %i.ac
  %i.ae = or i64 %i.ad, %.0.lcssa.i
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.y, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 -1 ; 2 uses
  store ptr %i.ak, ptr %i.l, align 8
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = sub nsw i32 %i.x, %.034.lcssa.i
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %.0.copyload.i.i.i, %i.am      ; 2 uses
  %.not53.i = icmp eq i64 %i.an, 0
  %.promoted.i.pre84 = load ptr, ptr %i.l, align 8 ; 2 uses
  br i1 %.not53.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %._crit_edge49.i
  %i.ao = zext nneg i32 %i.x to i64
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph48.i
  %i.ap = phi ptr [ %i.k, %.lr.ph48.i ], [ %i.bl, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.046.i = phi i64 [ 0, %.lr.ph48.i ], [ %.1.lcssa.i, %._crit_edge.i ]
  %.03445.i = phi i32 [ 0, %.lr.ph48.i ], [ %.135.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %.0.copyload.i.i39.i = load i64, ptr %i.aq, align 1 ; 2 uses
  %i.ar = zext nneg i32 %.03445.i to i64
  %i.as = shl i64 %.0.copyload.i.i39.i, %i.ar
  %i.at = or i64 %i.as, %.046.i
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.y, %i.au
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds i8, ptr %i.ap, i64 -1 ; 3 uses
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = sub nsw i32 %i.x, %.03445.i             ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %.0.copyload.i.i39.i, %i.bb    ; 2 uses
  %i.bd = sub nsw i32 64, %i.ba                   ; 3 uses
  %.not3840.i = icmp slt i32 %i.bd, %i.x
  br i1 %.not3840.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.be = phi ptr [ %i.bi, %.lr.ph.i ], [ %i.az, %bb.d ]
  %.142.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.bc, %bb.d ] ; 2 uses
  %.13541.i = phi i32 [ %i.bk, %.lr.ph.i ], [ %i.bd, %bb.d ]
  %i.bf = and i64 %.142.i, %.pre.i
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -1 ; 4 uses
  store ptr %i.bi, ptr %i.l, align 8
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = lshr i64 %.142.i, %i.z                  ; 2 uses
  %i.bk = sub nsw i32 %.13541.i, %i.x             ; 3 uses
  %.not38.i = icmp slt i32 %i.bk, %i.x
  br i1 %.not38.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %i.bl = phi ptr [ %i.az, %bb.d ], [ %i.bi, %.lr.ph.i ] ; 2 uses
  %.135.lcssa.i = phi i32 [ %i.bd, %bb.d ], [ %i.bk, %.lr.ph.i ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %i.bc, %bb.d ], [ %i.bj, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bm = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bn = add i32 %i.bm, -1
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = icmp samesign ult i64 %indvars.iv.next.i, %i.bo
  br i1 %i.bp, label %bb.d, label %._crit_edge49.i, !llvm.loop !8

bb.e:                                             ; preds = %bb.e, %.lr.ph56.i
  %i.bq = phi ptr [ %.promoted.i.pre84, %.lr.ph56.i ], [ %i.bu, %bb.e ]
  %.254.i = phi i64 [ %i.an, %.lr.ph56.i ], [ %i.bv, %bb.e ] ; 2 uses
  %i.br = and i64 %.254.i, %.pre.i
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 4 uses
  store ptr %i.bu, ptr %i.l, align 8
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = lshr i64 %.254.i, %i.ao                 ; 2 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit, label %bb.e, !llvm.loop !9

_ZN2v86bigint12IsPowerOfTwoEi.exit.thread:        ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatterC2ENS0_6DigitsEibPcjPNS0_13ProcessorImplE.exit
  %i.bw = sext i32 %5 to i64                      ; 6 uses
  %i.bx = getelementptr inbounds i8, ptr @_ZN2v86bigint12_GLOBAL__N_115kMaxBitsPerCharE, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1             ; 2 uses
  %i.bz = zext i8 %i.by to i32
  store i32 %i.bz, ptr %i.e, align 4
  %.rhs.trunc.i = zext i8 %i.by to i16
  %i.ca = udiv i16 2048, %.rhs.trunc.i            ; 2 uses
  %.zext.i = zext nneg i16 %i.ca to i32           ; 3 uses
  store i32 %.zext.i, ptr %i.f, align 8
  %i.cb = zext nneg i16 %i.ca to i64              ; 2 uses
  br i1 %7, label %.preheader, label %.preheader129

.preheader:                                       ; preds = %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread, %.preheader
  %.013.i.i = phi i64 [ %spec.select.i.i, %.preheader ], [ 1, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ]
  %.0812.i.i = phi i64 [ %i.ce, %.preheader ], [ %i.cb, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ] ; 2 uses
  %.0911.i.i = phi i64 [ %i.cf, %.preheader ], [ %i.bw, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ] ; 3 uses
  %i.cc = and i64 %.0812.i.i, 1
  %.not10.i.i = icmp eq i64 %i.cc, 0
  %i.cd = select i1 %.not10.i.i, i64 1, i64 %.0911.i.i
  %spec.select.i.i = mul i64 %i.cd, %.013.i.i     ; 4 uses
  %i.ce = lshr i64 %.0812.i.i, 1                  ; 2 uses
  %i.cf = mul i64 %.0911.i.i, %.0911.i.i
  %.not.i.i13 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i13, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit, label %.preheader, !llvm.loop !10

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit: ; preds = %.preheader
  store i64 %spec.select.i.i, ptr %i.m, align 8
  %i.cg = shl i32 %i.t, 6                         ; 2 uses
  %i.ch = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 10 uses
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %.zext.i, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 1, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr null, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  store i32 1, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.co = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #12 ; 4 uses
  store ptr %i.co, ptr %i.cn, align 8
  store ptr %i.co, ptr %i.cl, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cp, i8 0, i64 20, i1 false)
  store i64 %spec.select.i.i, ptr %i.co, align 4
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.cr = trunc nuw nsw i64 %i.cq to i32          ; 2 uses
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = sub nsw i32 127, %i.cs
  %.not39.i.i = icmp ugt i32 %i.ct, %i.cg
  br i1 %.not39.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i14
  %.sroa.29.0..sroa_idx41.i.i = phi ptr [ %i.cm, %.lr.ph.i.i14 ], [ %i.dg, %.loopexit.i.i ] ; 3 uses
  %i.cv = phi ptr [ %i.cl, %.lr.ph.i.i14 ], [ %i.dd, %.loopexit.i.i ] ; 3 uses
  %.02640.i.i = phi ptr [ %i.ch, %.lr.ph.i.i14 ], [ %i.cw, %.loopexit.i.i ] ; 5 uses
  %i.cw = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 12 uses
  store i32 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.02640.i.i, i64 4
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = shl nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cx, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 1, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %.02640.i.i, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 5 uses
  %i.de = load i32, ptr %.sroa.29.0..sroa_idx41.i.i, align 8
  %i.df = shl i32 %i.de, 1                        ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 6 uses
  store i32 %i.df, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.di = zext i32 %i.df to i64
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #12 ; 2 uses
  store ptr %i.dk, ptr %i.dh, align 8
  store ptr %i.dk, ptr %i.dd, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %.02640.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dl, i8 0, i64 20, i1 false)
  store i8 0, ptr %i.dm, align 8
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.dd, align 8
  %.sroa.22.0.copyload.i.i = load i32, ptr %i.dg, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cv, align 8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.29.0..sroa_idx41.i.i, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.sroa.01.0.copyload.i.i, i32 %.sroa.22.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %i.cv) #11
  %i.dn = load i32, ptr %i.cu, align 8
  %i.do = icmp eq i32 %i.dn, 1
  br i1 %i.do, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.f
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_114RecursionLevelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.cw) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 72) #13
  br label %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i

bb.g:                                             ; preds = %bb.f
  %.promoted.i.i.i = load i32, ptr %i.dg, align 8 ; 2 uses
  %.not1.i.i.i = icmp eq i32 %.promoted.i.i.i, 0
  br i1 %.not1.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.dp = load ptr, ptr %i.dd, align 8
  %i.dq = zext i32 %.promoted.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.i ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next.i.i.i
  %.0.copyload.i.i.i27.i.i = load i64, ptr %i.dr, align 1
  %i.ds = icmp eq i64 %.0.copyload.i.i.i27.i.i, 0
  br i1 %i.ds, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  store i32 %indvars.i.i.i, ptr %i.dg, align 8
  %.not.i.i.i = icmp eq i32 %indvars.i.i.i, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %bb.h, !llvm.loop !5

.loopexit.i.i:                                    ; preds = %bb.i, %bb.h, %bb.g
  %i.dt = load i32, ptr %.sroa.29.0..sroa_idx41.i.i, align 8 ; 3 uses
  %i.du = add i32 %i.dt, -1
  %i.dv = load ptr, ptr %i.cv, align 8            ; 3 uses
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw
  %.0.copyload.i.i.i28.i.i = load i64, ptr %i.dx, align 1
  %i.dy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i28.i.i, i1 false)
  %i.dz = trunc nuw nsw i64 %i.dy to i32          ; 2 uses
  store i32 %i.dz, ptr %.02640.i.i, align 8
  tail call void @_ZN2v86bigint9LeftShiftENS0_8RWDigitsENS0_6DigitsEi(ptr %i.dv, i32 %i.dt, ptr %i.dv, i32 %i.dt, i32 noundef %i.dz) #11
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_114RecursionLevel14ComputeInverseEPNS0_13ProcessorImplEj(ptr noundef nonnull align 8 dereferenceable(72) %.02640.i.i, ptr noundef nonnull %0, i32 noundef 0)
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.dd, align 8 ; 2 uses
  %.sroa.29.0.copyload.i.i = load i32, ptr %i.dg, align 8 ; 3 uses
  %i.ea = add i32 %.sroa.29.0.copyload.i.i, -1
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.08.0.copyload.i.i, i64 %i.eb
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ec, align 1
  %i.ed = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.copyload.i.i.i.i.i, i1 false)
  %i.ee = trunc nuw nsw i64 %i.ed to i32          ; 2 uses
  %i.ef = shl i32 %.sroa.29.0.copyload.i.i, 7
  %i.eg = shl nuw nsw i32 %i.ee, 1
  %i.eh = xor i32 %i.eg, -1
  %i.ei = add i32 %i.ef, %i.eh
  %.not.i.i15 = icmp ugt i32 %i.ei, %i.cg
  br i1 %.not.i.i15, label %._crit_edge.i.i, label %bb.f, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit
  %.026.lcssa.i.i = phi ptr [ %i.ch, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %i.cw, %.loopexit.i.i ] ; 2 uses
  %.sroa.08.0.copyload.lcssa.i.i = phi ptr [ %i.co, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %.sroa.08.0.copyload.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.29.0.copyload.lcssa.i.i = phi i32 [ 1, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %.sroa.29.0.copyload.i.i, %.loopexit.i.i ] ; 2 uses
  %.lcssa.i.i = phi i32 [ %i.cr, %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit ], [ %i.ee, %.loopexit.i.i ] ; 2 uses
  store i32 %.lcssa.i.i, ptr %.026.lcssa.i.i, align 8
  tail call void @_ZN2v86bigint9LeftShiftENS0_8RWDigitsENS0_6DigitsEi(ptr nonnull %.sroa.08.0.copyload.lcssa.i.i, i32 %.sroa.29.0.copyload.lcssa.i.i, ptr nonnull %.sroa.08.0.copyload.lcssa.i.i, i32 %.sroa.29.0.copyload.lcssa.i.i, i32 noundef %.lcssa.i.i) #11
  br label %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i

_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i: ; preds = %._crit_edge.i.i, %.thread.i.i
  %.2.i.i = phi ptr [ null, %.thread.i.i ], [ %.026.lcssa.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = icmp eq i32 %i.ek, 1
  br i1 %i.el, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i
  %i.em = call fastcc noundef ptr @_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12ProcessLevelEPNS1_14RecursionLevelENS0_6DigitsEPcb(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef %.2.i.i, ptr %3, i32 %i.t, ptr noundef %i.k, i1 noundef zeroext true)
  store ptr %i.em, ptr %i.l, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v86bigint12_GLOBAL__N_114RecursionLevel12CreateLevelsEmijPNS0_13ProcessorImplE.exit.i
  %.not.i1.i = icmp eq ptr %.2.i.i, null
  br i1 %.not.i1.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit, label %_ZNKSt14default_deleteIN2v86bigint12_GLOBAL__N_114RecursionLevelEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v86bigint12_GLOBAL__N_114RecursionLevelEEclEPS3_.exit.i.i: ; preds = %bb.k
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_114RecursionLevelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.2.i.i) #11
  call void @_ZdlPvm(ptr noundef nonnull %.2.i.i, i64 noundef 72) #13
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN2v86bigint12_GLOBAL__N_114RecursionLevelEEclEPS3_.exit.i.i
  %i.en = load i32, ptr %i.ej, align 8
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.y, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit_crit_edge

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit._ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit_crit_edge: ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter4FastEv.exit
  %.promoted.i.pre = load ptr, ptr %i.l, align 8
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit

.preheader129:                                    ; preds = %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread, %.preheader129
  %.013.i.i18 = phi i64 [ %spec.select.i.i22, %.preheader129 ], [ 1, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ]
  %.0812.i.i19 = phi i64 [ %i.er, %.preheader129 ], [ %i.cb, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ] ; 2 uses
  %.0911.i.i20 = phi i64 [ %i.es, %.preheader129 ], [ %i.bw, %_ZN2v86bigint12IsPowerOfTwoEi.exit.thread ] ; 3 uses
  %i.ep = and i64 %.0812.i.i19, 1
  %.not10.i.i21 = icmp eq i64 %i.ep, 0
  %i.eq = select i1 %.not10.i.i21, i64 1, i64 %.0911.i.i20
  %spec.select.i.i22 = mul i64 %i.eq, %.013.i.i18 ; 3 uses
  %i.er = lshr i64 %.0812.i.i19, 1                ; 2 uses
  %i.es = mul i64 %.0911.i.i20, %.0911.i.i20
  %.not.i.i23 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i23, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24, label %.preheader129, !llvm.loop !10

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24: ; preds = %.preheader129
  store i64 %spec.select.i.i22, ptr %i.m, align 8
  switch i32 %i.t, label %bb.o [
    i32 0, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24
  %i.et = getelementptr inbounds i8, ptr %i.k, i64 -1 ; 3 uses
  store ptr %i.et, ptr %i.l, align 8
  store i8 48, ptr %i.et, align 1
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit

bb.m:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24
  %.0.copyload.i.i.i25 = load i64, ptr %3, align 1 ; 3 uses
  %i.eu = icmp eq i32 %5, 10
  br i1 %i.eu, label %bb.n, label %.preheader.i.i

bb.n:                                             ; preds = %bb.m
  %.not5.i.i.i = icmp eq i64 %.0.copyload.i.i.i25, 0
  br i1 %.not5.i.i.i, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %bb.n, %.lr.ph.i.i.i27
  %.07.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i27 ], [ %i.k, %bb.n ]
  %.046.i.i.i = phi i64 [ %i.ez, %.lr.ph.i.i.i27 ], [ %.0.copyload.i.i.i25, %bb.n ] ; 3 uses
  %i.ev = urem i64 %.046.i.i.i, 10
  %i.ew = trunc nuw nsw i64 %i.ev to i8
  %i.ex = or disjoint i8 %i.ew, 48
  %i.ey = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -1 ; 3 uses
  store i8 %i.ex, ptr %i.ey, align 1
  %i.ez = udiv i64 %.046.i.i.i, 10
  %.not.i.i.i28 = icmp ult i64 %.046.i.i.i, 10
  br i1 %.not.i.i.i28, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i, label %.lr.ph.i.i.i27, !llvm.loop !12

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.08.i.i = phi i64 [ %i.fe, %.preheader.i.i ], [ %.0.copyload.i.i.i25, %bb.m ] ; 3 uses
  %.0.i.i = phi ptr [ %i.fd, %.preheader.i.i ], [ %i.k, %bb.m ]
  %i.fa = urem i64 %.08.i.i, %i.bw
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZN2v86bigint12_GLOBAL__N_116kConversionCharsE, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 3 uses
  store i8 %i.fc, ptr %i.fd, align 1
  %i.fe = udiv i64 %.08.i.i, %i.bw
  %.not.i.i26 = icmp ult i64 %.08.i.i, %i.bw
  br i1 %.not.i.i26, label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i, label %.preheader.i.i, !llvm.loop !13

_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter12BasecaseLastEmPc.exit.i: ; preds = %.preheader.i.i, %.lr.ph.i.i.i27, %bb.n
  %.09.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i27 ], [ %i.k, %bb.n ], [ %i.fd, %.preheader.i.i ] ; 2 uses
  store ptr %.09.i.i, ptr %i.l, align 8
  br label %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter14BasePowerOfTwoEv.exit

bb.o:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_117ToStringFormatter5StartEv.exit24
  %i.ff = zext i32 %i.t to i64
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fg) #12 ; 7 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.i, %bb.o
  %.pre.i.i = phi i32 [ %5, %bb.o ], [ %i.hy, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 3 uses
  %i.fi = phi i32 [ %.zext.i, %bb.o ], [ %i.hz, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 3 uses
  %i.fj = phi ptr [ %i.k, %bb.o ], [ %i.ib, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 8 uses
  %i.fk = phi i32 [ %5, %bb.o ], [ %i.ia, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 2 uses
  %.sroa.8.0.i = phi i32 [ %i.t, %bb.o ], [ %.sroa.8.1.lcssa.i, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 5 uses
  %.sroa.010.0.i = phi ptr [ %3, %bb.o ], [ %i.fh, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ] ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 10
  br i1 %i.fl, label %.lr.ph.preheader.i.i, label %bb.q

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.fm = zext i32 %.sroa.8.0.i to i64            ; 2 uses
  br label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %.lr.ph.i.i33, %.lr.ph.preheader.i.i
  %indvars.iv.i.i34 = phi i64 [ %i.fm, %.lr.ph.preheader.i.i ], [ %i.fn, %.lr.ph.i.i33 ]
  %.01926.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.fw, %.lr.ph.i.i33 ]
  %i.fn = add nsw i64 %indvars.iv.i.i34, -1       ; 4 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.0.i, i64 %i.fn
  %.0.copyload.i.i.i.i35 = load i64, ptr %i.fo, align 1 ; 2 uses
  %i.fp = call i64 @llvm.fshl.i64(i64 %.01926.i.i, i64 %.0.copyload.i.i.i.i35, i64 32) ; 2 uses
  %i.fq = udiv i64 %i.fp, 1000000000
  %i.fr = urem i64 %i.fp, 1000000000
  %i.fs = shl nuw nsw i64 %i.fr, 32
  %i.ft = and i64 %.0.copyload.i.i.i.i35, 4294967295
  %i.fu = or disjoint i64 %i.fs, %i.ft            ; 2 uses
  %i.fv = udiv i64 %i.fu, 1000000000
  %i.fw = urem i64 %i.fu, 1000000000              ; 2 uses
  %i.fx = shl nuw i64 %i.fq, 32
  %i.fy = or i64 %i.fv, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fn
  store i64 %i.fy, ptr %i.fz, align 4
  %.not.wide.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.wide.i.i, label %_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i, label %.lr.ph.i.i33, !llvm.loop !14

_ZN2v86bigint12_GLOBAL__N_113DivideByMagicILm10EEEPcNS0_8RWDigitsENS0_6DigitsES3_.exit.i: ; preds = %.lr.ph.i.i33
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.fw to i32 ; 9 uses
  %i.ga = urem i32 %.lhs.trunc.i.i, 10
  %i.gb = trunc nuw nsw i32 %i.ga to i8
  %i.gc = or disjoint i8 %i.gb, 48
  %i.gd = getelementptr inbounds i8, ptr %i.fj, i64 -1
  store i8 %i.gc, ptr %i.gd, align 1
  %i.ge = getelementptr inbounds i8, ptr %i.fj, i64 -5
  %i.gf = udiv i32 %.lhs.trunc.i.i, 10
  %i.gg = udiv i32 %.lhs.trunc.i.i, 100
  %i.gh = udiv i32 %.lhs.trunc.i.i, 1000
  %i.gi = udiv i32 %.lhs.trunc.i.i, 10000
  %i.gj = insertelement <4 x i32> poison, i32 %i.gi, i64 0
  %i.gk = insertelement <4 x i32> %i.gj, i32 %i.gh, i64 1
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.gg, i64 2
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gf, i64 3
  %i.gn = urem <4 x i32> %i.gm, splat (i32 10)
  %i.go = trunc nuw nsw <4 x i32> %i.gn to <4 x i8>
  %i.gp = or disjoint <4 x i8> %i.go, splat (i8 48)
end_hunk_0
