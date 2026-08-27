Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/unicode-decoder?download=true
inline.NumInlined: 138
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN2v88internal15Utf8DecoderBaseINS0_11Utf8DecoderEEC5ENS_4base6VectorIKhEE = comdat any

$_ZN2v88internal15Utf8DecoderBaseINS0_11Utf8DecoderEE6DecodeIhEEvPT_NS_4base6VectorIKhEE = comdat any

$_ZN2v88internal15Utf8DecoderBaseINS0_11Utf8DecoderEE6DecodeItEEvPT_NS_4base6VectorIKhEE = comdat any

$_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m = comdat any

$_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEEC5ENS_4base6VectorIKhEE = comdat any

$_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEE6DecodeIhEEvPT_NS_4base6VectorIKhEE = comdat any

$_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEE6DecodeItEEvPT_NS_4base6VectorIKhEE = comdat any

$_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEEC5ENS_4base6VectorIKhEE = comdat any

$_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEE6DecodeIhEEvPT_NS_4base6VectorIKhEE = comdat any

$_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEE6DecodeItEEvPT_NS_4base6VectorIKhEE = comdat any

$_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions = comdat any

$_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states = comdat any

$_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions = comdat any

$_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE6states = comdat any

@_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions = linkonce_odr hidden local_unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\09\09\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\0A\05\05\05\05\05\05\05\05\05\05\05\05\06\05\05\0B\07\07\07\08\09\09\09\09\09\09\09\09\09\09\09", comdat, align 16
@_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states = linkonce_odr hidden local_unnamed_addr constant <{ [100 x i8], [8 x i8] }> <{ [100 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\00\00\18$0<H\00T`\00\0C\0C\0C\00\00\00\00\00\00\00\00\00\18\18\18\00\00\00\00\00\00\00\00\00\18\18\00\00\00\00\00\00\00\00\00\00$$$\00\00\00\00\00\00\00\00\00$\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\00$$", [8 x i8] zeroinitializer }>, comdat, align 16
@_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions = linkonce_odr hidden local_unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\08\08\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\09\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\0A\06\06\06\07\08\08\08\08\08\08\08\08\08\08\08", comdat, align 16
@_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE6states = linkonce_odr hidden local_unnamed_addr constant [88 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\16!,7\00BM\00\0B\0B\0B\00\00\00\00\00\00\00\00\16\16\16\00\00\00\00\00\00\00\00!!!\00\00\00\00\00\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00!!\00\00\00\00\00\00\00", comdat, align 16
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"std::numeric_limits<int>::max() >= length_\00", align 1

@_ZN2v88internal15Utf8DecoderBaseINS0_11Utf8DecoderEEC1ENS_4base6VectorIKhEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN2v88internal15Utf8DecoderBaseINS0_11Utf8DecoderEEC2ENS_4base6VectorIKhEE
@_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEEC1ENS_4base6VectorIKhEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEEC2ENS_4base6VectorIKhEE
@_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEEC1ENS_4base6VectorIKhEE = weak_odr hidden unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEEC2ENS_4base6VectorIKhEE

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_11Utf8DecoderEEC2ENS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr %1, i64 %2) unnamed_addr #0 comdat($_ZN2v88internal15Utf8DecoderBaseINS0_11Utf8DecoderEEC5ENS_4base6VectorIKhEE) align 2 {
bb.a:
  store i8 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %2 to i32
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %i.f = icmp samesign ugt i64 %2, 7
  br i1 %i.f, label %.preheader30.i, label %.thread.i

.preheader30.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.preheader.i.preheader, label %.lr.ph.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.preheader, %.preheader30.i
  %.126.i.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %1, %.preheader30.i ], [ %7, %.lr.ph ], [ %13, %.lr.ph.1 ], [ %19, %.lr.ph.2 ], [ %25, %.lr.ph.3 ], [ %31, %.lr.ph.4 ], [ %i.o, %.lr.ph.5 ], [ %39, %.lr.ph.6 ]
  br label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.preheader30.i
  %i.j = load i8, ptr %1, align 1
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %4 = ptrtoint ptr %3 to i64                     ; 2 uses
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %.preheader.i.preheader, label %.lr.ph.i.lr.ph, !llvm.loop !6

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.l = load i8, ptr %3, align 1
  %i.m = icmp slt i8 %i.l, 0
  br i1 %i.m, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !6

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i.lr.ph, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.preheader
  %.lcssa44 = phi i64 [ %i.g, %.lr.ph.i.preheader ], [ %4, %.lr.ph.i.lr.ph ], [ %8, %.lr.ph.i.1 ], [ %14, %.lr.ph.i.2 ], [ %20, %.lr.ph.i.3 ], [ %26, %.lr.ph.i.4 ], [ %32, %.lr.ph.i.5 ], [ %i.p, %.lr.ph.i.6 ]
  %i.n = sub i64 %.lcssa44, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit20

.lr.ph:                                           ; preds = %.lr.ph.i.lr.ph
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %8 = ptrtoint ptr %7 to i64                     ; 2 uses
  %9 = and i64 %8, 7
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %.preheader.i.preheader, label %.lr.ph.i.1, !llvm.loop !6

.lr.ph.i.1:                                       ; preds = %.lr.ph
  %11 = load i8, ptr %7, align 1
  %12 = icmp slt i8 %11, 0
  br i1 %12, label %.lr.ph.i._crit_edge, label %.lr.ph.1, !llvm.loop !6

.lr.ph.1:                                         ; preds = %.lr.ph.i.1
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %14 = ptrtoint ptr %13 to i64                   ; 2 uses
  %15 = and i64 %14, 7
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %.preheader.i.preheader, label %.lr.ph.i.2, !llvm.loop !6

.lr.ph.i.2:                                       ; preds = %.lr.ph.1
  %17 = load i8, ptr %13, align 1
  %18 = icmp slt i8 %17, 0
  br i1 %18, label %.lr.ph.i._crit_edge, label %.lr.ph.2, !llvm.loop !6

.lr.ph.2:                                         ; preds = %.lr.ph.i.2
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %20 = ptrtoint ptr %19 to i64                   ; 2 uses
  %21 = and i64 %20, 7
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %.preheader.i.preheader, label %.lr.ph.i.3, !llvm.loop !6

.lr.ph.i.3:                                       ; preds = %.lr.ph.2
  %23 = load i8, ptr %19, align 1
  %24 = icmp slt i8 %23, 0
  br i1 %24, label %.lr.ph.i._crit_edge, label %.lr.ph.3, !llvm.loop !6

.lr.ph.3:                                         ; preds = %.lr.ph.i.3
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %26 = ptrtoint ptr %25 to i64                   ; 2 uses
  %27 = and i64 %26, 7
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %.preheader.i.preheader, label %.lr.ph.i.4, !llvm.loop !6

.lr.ph.i.4:                                       ; preds = %.lr.ph.3
  %29 = load i8, ptr %25, align 1
  %30 = icmp slt i8 %29, 0
  br i1 %30, label %.lr.ph.i._crit_edge, label %.lr.ph.4, !llvm.loop !6

.lr.ph.4:                                         ; preds = %.lr.ph.i.4
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  %32 = ptrtoint ptr %31 to i64                   ; 2 uses
  %33 = and i64 %32, 7
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %.preheader.i.preheader, label %.lr.ph.i.5, !llvm.loop !6

.lr.ph.i.5:                                       ; preds = %.lr.ph.4
  %35 = load i8, ptr %31, align 1
  %36 = icmp slt i8 %35, 0
  br i1 %36, label %.lr.ph.i._crit_edge, label %.lr.ph.5, !llvm.loop !6

.lr.ph.5:                                         ; preds = %.lr.ph.i.5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, 7
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.preheader.i.preheader, label %.lr.ph.i.6, !llvm.loop !6

.lr.ph.i.6:                                       ; preds = %.lr.ph.5
  %37 = load i8, ptr %i.o, align 1
  %38 = icmp slt i8 %37, 0
  br i1 %38, label %.lr.ph.i._crit_edge, label %.lr.ph.6, !llvm.loop !6

.lr.ph.6:                                         ; preds = %.lr.ph.i.6
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader.i.preheader, !llvm.loop !6

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.c
  %.126.i = phi ptr [ %i.s, %bb.c ], [ %.126.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.126.i, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.s, %i.e
  br i1 %.not.i, label %.thread.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.t = load i64, ptr %.126.i, align 8
  %i.u = and i64 %i.t, -9187201950435737472
  %.not28.i = icmp eq i64 %i.u, 0
  br i1 %.not28.i, label %.preheader.i, label %bb.d, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %.126.i to i64
  %i.w = sub i64 %i.v, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit20

.thread.loopexit.i:                               ; preds = %.preheader.i
  %.pre.i = ptrtoaddr ptr %.126.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.244.pre-phi.i = phi i64 [ %.pre.i, %.thread.loopexit.i ], [ %i.d, %_ZNK2v84base6VectorIKhE6lengthEv.exit ]
  %.2.i = phi ptr [ %.126.i, %.thread.loopexit.i ], [ %1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ] ; 4 uses
  %i.x = icmp ult ptr %.2.i, %i.e
  br i1 %i.x, label %.lr.ph37.preheader.i, label %._crit_edge.i

.lr.ph37.preheader.i:                             ; preds = %.thread.i
  %i.y = add i64 %2, %i.d
  %i.z = sub i64 %i.y, %.244.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.2.i, i64 %i.z ; 2 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.f, %.lr.ph37.preheader.i
  %.336.i = phi ptr [ %i.af, %bb.f ], [ %.2.i, %.lr.ph37.preheader.i ] ; 3 uses
  %i.aa = load i8, ptr %.336.i, align 1
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  %i.ac = ptrtoint ptr %.336.i to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit20

bb.f:                                             ; preds = %.lr.ph37.i
  %i.af = getelementptr inbounds nuw i8, ptr %.336.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.af, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.f, %.thread.i
  %.3.lcssa.i = phi ptr [ %.2.i, %.thread.i ], [ %scevgep.i, %bb.f ]
  %i.ag = ptrtoint ptr %.3.lcssa.i to i64
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit20

_ZNK2v84base6VectorIKhE6lengthEv.exit20:          ; preds = %._crit_edge.i, %bb.e, %bb.d, %.lr.ph.i._crit_edge
  %.1.in.i = phi i64 [ %i.n, %.lr.ph.i._crit_edge ], [ %i.ae, %bb.e ], [ %i.ai, %._crit_edge.i ], [ %i.w, %bb.d ] ; 2 uses
  %.1.i = trunc i64 %.1.in.i to i32               ; 4 uses
  store i32 %.1.i, ptr %i.a, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 %.1.i, ptr %i.aj, align 4
  %i.ak = icmp eq i32 %.1.i, %i.c
  br i1 %i.ak, label %bb.o, label %_ZNK2v84base6VectorIKhE6lengthEv.exit21

_ZNK2v84base6VectorIKhE6lengthEv.exit21:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit20
  %sext = shl i64 %.1.in.i, 32
  %i.al = ashr exact i64 %sext, 32                ; 2 uses
  %i.am = icmp slt i64 %i.al, %2
  br i1 %i.am, label %.lr.ph50.preheader, label %.outer._crit_edge.thread93

.lr.ph50.preheader:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit21
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.ao = add i64 %2, %i.d
  %.fr = freeze i64 %i.ao
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.backedge, %.lr.ph50.preheader
  %i.ap = phi i32 [ %.1.i, %.lr.ph50.preheader ], [ %.be, %.lr.ph50.backedge ] ; 2 uses
  %.012.ph58 = phi ptr [ %i.an, %.lr.ph50.preheader ], [ %.012.ph58.be, %.lr.ph50.backedge ] ; 4 uses
  %.015.ph57 = phi i8 [ 1, %.lr.ph50.preheader ], [ %.015.ph57.be, %.lr.ph50.backedge ] ; 5 uses
  %.0.ph56 = phi i32 [ 0, %.lr.ph50.preheader ], [ %.0.ph56.be, %.lr.ph50.backedge ]
  %.036.ph55 = phi i8 [ 12, %.lr.ph50.preheader ], [ %.036.ph55.be, %.lr.ph50.backedge ] ; 2 uses
  %.012.ph58143 = ptrtoaddr ptr %.012.ph58 to i64
  %i.aq = load i8, ptr %.012.ph58, align 1        ; 2 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  %i.as = icmp eq i8 %.036.ph55, 12               ; 2 uses
  %i.at = and i1 %i.as, %i.ar
  br i1 %i.at, label %bb.g, label %.loopexit, !prof !5

bb.g:                                             ; preds = %.lr.ph50
  %i.au = add nsw i32 %i.ap, 1                    ; 3 uses
  store i32 %i.au, ptr %i.aj, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.012.ph58, i64 1 ; 3 uses
  %i.aw = icmp ult ptr %i.av, %i.e
  br i1 %i.aw, label %.peel.next.preheader, label %.outer._crit_edge.thread93

.peel.next.preheader:                             ; preds = %bb.g
  %i.ax = xor i64 %.012.ph58143, -1
  %i.ay = add i64 %.fr, %i.ax                     ; 2 uses
  %i.az = add i64 %i.ay, -1
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.h
  %i.ba = phi i32 [ %i.bd, %bb.h ], [ %i.au, %.peel.next.preheader ] ; 2 uses
  %.01249.prol = phi ptr [ %i.be, %bb.h ], [ %i.av, %.peel.next.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.h ], [ 0, %.peel.next.preheader ]
  %i.bb = load i8, ptr %.01249.prol, align 1      ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.h, label %.loopexit, !prof !5

bb.h:                                             ; preds = %.peel.next.prol
  %i.bd = add nsw i32 %i.ba, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.aj, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01249.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !10

.peel.next.prol.loopexit:                         ; preds = %bb.h, %.peel.next.preheader
  %.unr = phi i32 [ %i.au, %.peel.next.preheader ], [ %i.bd, %bb.h ]
  %.01249.unr = phi ptr [ %i.av, %.peel.next.preheader ], [ %i.be, %bb.h ]
  %i.bf = icmp ult i64 %i.az, 3
  br i1 %i.bf, label %.outer._crit_edge.thread93, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.i
  %i.bg = phi i32 [ %i.bv, %bb.i ], [ %.unr, %.peel.next.prol.loopexit ] ; 5 uses
  %.01249 = phi ptr [ %i.bw, %bb.i ], [ %.01249.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %i.bh = load i8, ptr %.01249, align 1           ; 2 uses
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %.peel.next.1, label %.loopexit, !prof !5

.peel.next.1:                                     ; preds = %.peel.next
  %i.bj = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bj, ptr %i.aj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.01249, i64 1
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit167, !prof !5

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.bn = add nsw i32 %i.bg, 2                    ; 2 uses
  store i32 %i.bn, ptr %i.aj, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.01249, i64 2
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit163, !prof !5

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.br = add nsw i32 %i.bg, 3                    ; 2 uses
  store i32 %i.br, ptr %i.aj, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.01249, i64 3
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.i, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !5

bb.i:                                             ; preds = %.peel.next.3
  %i.bv = add nsw i32 %i.bg, 4                    ; 2 uses
  store i32 %i.bv, ptr %i.aj, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.01249, i64 4 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.e
  br i1 %i.bx, label %.peel.next, label %.outer._crit_edge.thread93, !llvm.loop !12

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.by = getelementptr inbounds nuw i8, ptr %.01249, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit163:   ; preds = %.peel.next.2
  %i.bz = getelementptr inbounds nuw i8, ptr %.01249, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit167:   ; preds = %.peel.next.1
  %i.ca = getelementptr inbounds nuw i8, ptr %.01249, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit167, %.loopexit.loopexit.loopexit.split.loop.exit163, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph50
  %i.cb = phi i32 [ %i.ap, %.lr.ph50 ], [ %i.bg, %.peel.next ], [ %i.bj, %.loopexit.loopexit.loopexit.split.loop.exit167 ], [ %i.bn, %.loopexit.loopexit.loopexit.split.loop.exit163 ], [ %i.br, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.ba, %.peel.next.prol ] ; 4 uses
  %.01249.lcssa = phi ptr [ %.012.ph58, %.lr.ph50 ], [ %.01249, %.peel.next ], [ %i.ca, %.loopexit.loopexit.loopexit.split.loop.exit167 ], [ %i.bz, %.loopexit.loopexit.loopexit.split.loop.exit163 ], [ %i.by, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01249.prol, %.peel.next.prol ] ; 3 uses
  %.03648.lcssa = phi i8 [ %.036.ph55, %.lr.ph50 ], [ 12, %.peel.next.prol ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit163 ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit167 ], [ 12, %.peel.next ]
  %.lcssa63 = phi i8 [ %i.aq, %.lr.ph50 ], [ %i.bh, %.peel.next ], [ %i.bl, %.loopexit.loopexit.loopexit.split.loop.exit167 ], [ %i.bp, %.loopexit.loopexit.loopexit.split.loop.exit163 ], [ %i.bt, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.bb, %.peel.next.prol ] ; 2 uses
  %.lcssa = phi i1 [ %i.as, %.lr.ph50 ], [ true, %.peel.next.prol ], [ true, %.loopexit.loopexit.loopexit.split.loop.exit ], [ true, %.loopexit.loopexit.loopexit.split.loop.exit163 ], [ true, %.loopexit.loopexit.loopexit.split.loop.exit167 ], [ true, %.peel.next ]
  %i.cc = zext i8 %.lcssa63 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %.03648.lcssa to i32
  %i.cg = zext i8 %i.ce to i32                    ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, %i.cf
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1             ; 3 uses
  %i.cl = shl i32 %.0.ph56, 6                     ; 3 uses
  %i.cm = icmp ult i8 %i.ck, 12
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.cn = add nsw i32 %i.cb, 1                    ; 3 uses
  store i32 %i.cn, ptr %i.aj, align 4
  br i1 %.lcssa, label %.outer, label %.outer.thread, !llvm.loop !14

end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  store i16 %i.ql, ptr %i.qj, align 2
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.qo = load i8, ptr %i.qm, align 1
  %i.qp = zext i8 %i.qo to i16
  store i16 %i.qp, ptr %i.qn, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i102.preheader
  %i.qq = load i8, ptr %1, align 1
  %i.qr = zext i8 %i.qq to i16
  store i16 %i.qr, ptr %0, align 2
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.qu = load i8, ptr %i.qs, align 1
  %i.qv = zext i8 %i.qu to i16
  store i16 %i.qv, ptr %i.qt, align 2
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.qy = load i8, ptr %i.qw, align 1
  %i.qz = zext i8 %i.qy to i16
  store i16 %i.qz, ptr %i.qx, align 2
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.rc = load i8, ptr %i.ra, align 1
  %i.rd = zext i8 %i.rc to i16
  store i16 %i.rd, ptr %i.rb, align 2
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rg = load i8, ptr %i.re, align 1
  %i.rh = zext i8 %i.rg to i16
  store i16 %i.rh, ptr %i.rf, align 2
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.rk = load i8, ptr %i.ri, align 1
  %i.rl = zext i8 %i.rk to i16
  store i16 %i.rl, ptr %i.rj, align 2
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ro = load i8, ptr %i.rm, align 1
  %i.rp = zext i8 %i.ro to i16
  store i16 %i.rp, ptr %i.rn, align 2
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.rs = load i8, ptr %i.rq, align 1
  %i.rt = zext i8 %i.rs to i16
  store i16 %i.rt, ptr %i.rr, align 2
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rw = load i8, ptr %i.ru, align 1
  %i.rx = zext i8 %i.rw to i16
  store i16 %i.rx, ptr %i.rv, align 2
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.sa = load i8, ptr %i.ry, align 1
  %i.sb = zext i8 %i.sa to i16
  store i16 %i.sb, ptr %i.rz, align 2
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.se = load i8, ptr %i.sc, align 1
  %i.sf = zext i8 %i.se to i16
  store i16 %i.sf, ptr %i.sd, align 2
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.si = load i8, ptr %i.sg, align 1
  %i.sj = zext i8 %i.si to i16
  store i16 %i.sj, ptr %i.sh, align 2
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sm = load i8, ptr %i.sk, align 1
  %i.sn = zext i8 %i.sm to i16
  store i16 %i.sn, ptr %i.sl, align 2
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.sq = load i8, ptr %i.so, align 1
  %i.sr = zext i8 %i.sq to i16
  store i16 %i.sr, ptr %i.sp, align 2
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.su = load i8, ptr %i.ss, align 1
  %i.sv = zext i8 %i.su to i16
  store i16 %i.sv, ptr %i.st, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtvec:          ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %i.sw = load <8 x i8>, ptr %1, align 1
  %i.sx = zext <8 x i8> %i.sw to <8 x i16>
  store <8 x i16> %i.sx, ptr %0, align 2
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ta = load <8 x i8>, ptr %i.sy, align 1
  %i.tb = zext <8 x i8> %i.ta to <8 x i16>
  store <8 x i16> %i.tb, ptr %i.sz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i107.preheader.rtscalar:       ; preds = %.lr.ph.i.i.i.i.i.i.i107.preheader
  %i.tc = load i8, ptr %1, align 1
  %i.td = zext i8 %i.tc to i16
  store i16 %i.td, ptr %0, align 2
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.tg = load i8, ptr %i.te, align 1
  %i.th = zext i8 %i.tg to i16
  store i16 %i.th, ptr %i.tf, align 2
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.tk = load i8, ptr %i.ti, align 1
  %i.tl = zext i8 %i.tk to i16
  store i16 %i.tl, ptr %i.tj, align 2
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.to = load i8, ptr %i.tm, align 1
  %i.tp = zext i8 %i.to to i16
  store i16 %i.tp, ptr %i.tn, align 2
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ts = load i8, ptr %i.tq, align 1
  %i.tt = zext i8 %i.ts to i16
  store i16 %i.tt, ptr %i.tr, align 2
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.tw = load i8, ptr %i.tu, align 1
  %i.tx = zext i8 %i.tw to i16
  store i16 %i.tx, ptr %i.tv, align 2
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ua = load i8, ptr %i.ty, align 1
  %i.ub = zext i8 %i.ua to i16
  store i16 %i.ub, ptr %i.tz, align 2
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ue = load i8, ptr %i.uc, align 1
  %i.uf = zext i8 %i.ue to i16
  store i16 %i.uf, ptr %i.ud, align 2
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ui = load i8, ptr %i.ug, align 1
  %i.uj = zext i8 %i.ui to i16
  store i16 %i.uj, ptr %i.uh, align 2
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.um = load i8, ptr %i.uk, align 1
  %i.un = zext i8 %i.um to i16
  store i16 %i.un, ptr %i.ul, align 2
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.uq = load i8, ptr %i.uo, align 1
  %i.ur = zext i8 %i.uq to i16
  store i16 %i.ur, ptr %i.up, align 2
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.uu = load i8, ptr %i.us, align 1
  %i.uv = zext i8 %i.uu to i16
  store i16 %i.uv, ptr %i.ut, align 2
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uy = load i8, ptr %i.uw, align 1
  %i.uz = zext i8 %i.uy to i16
  store i16 %i.uz, ptr %i.ux, align 2
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.vc = load i8, ptr %i.va, align 1
  %i.vd = zext i8 %i.vc to i16
  store i16 %i.vd, ptr %i.vb, align 2
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.vg = load i8, ptr %i.ve, align 1
  %i.vh = zext i8 %i.vg to i16
  store i16 %i.vh, ptr %i.vf, align 2
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.vk = load i8, ptr %i.vi, align 1
  %i.vl = zext i8 %i.vk to i16
  store i16 %i.vl, ptr %i.vj, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEEC2ENS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr %1, i64 %2) unnamed_addr #0 comdat($_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEEC5ENS_4base6VectorIKhEE) align 2 {
bb.a:
  store i8 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %2 to i32
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.f = icmp samesign ugt i64 %2, 7
  br i1 %i.f, label %.preheader30.i, label %.thread.i

.preheader30.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.preheader.i.preheader, label %.lr.ph.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.preheader, %.preheader30.i
  %.126.i.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %1, %.preheader30.i ], [ %7, %.lr.ph ], [ %13, %.lr.ph.1 ], [ %19, %.lr.ph.2 ], [ %25, %.lr.ph.3 ], [ %31, %.lr.ph.4 ], [ %i.o, %.lr.ph.5 ], [ %39, %.lr.ph.6 ]
  br label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.preheader30.i
  %i.j = load i8, ptr %1, align 1
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %4 = ptrtoint ptr %3 to i64                     ; 2 uses
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %.preheader.i.preheader, label %.lr.ph.i.lr.ph, !llvm.loop !6

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.l = load i8, ptr %3, align 1
  %i.m = icmp slt i8 %i.l, 0
  br i1 %i.m, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !6

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i.lr.ph, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.preheader
  %.lcssa41 = phi i64 [ %i.g, %.lr.ph.i.preheader ], [ %4, %.lr.ph.i.lr.ph ], [ %8, %.lr.ph.i.1 ], [ %14, %.lr.ph.i.2 ], [ %20, %.lr.ph.i.3 ], [ %26, %.lr.ph.i.4 ], [ %32, %.lr.ph.i.5 ], [ %i.p, %.lr.ph.i.6 ]
  %i.n = sub i64 %.lcssa41, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.lr.ph:                                           ; preds = %.lr.ph.i.lr.ph
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %8 = ptrtoint ptr %7 to i64                     ; 2 uses
  %9 = and i64 %8, 7
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %.preheader.i.preheader, label %.lr.ph.i.1, !llvm.loop !6

.lr.ph.i.1:                                       ; preds = %.lr.ph
  %11 = load i8, ptr %7, align 1
  %12 = icmp slt i8 %11, 0
  br i1 %12, label %.lr.ph.i._crit_edge, label %.lr.ph.1, !llvm.loop !6

.lr.ph.1:                                         ; preds = %.lr.ph.i.1
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %14 = ptrtoint ptr %13 to i64                   ; 2 uses
  %15 = and i64 %14, 7
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %.preheader.i.preheader, label %.lr.ph.i.2, !llvm.loop !6

.lr.ph.i.2:                                       ; preds = %.lr.ph.1
  %17 = load i8, ptr %13, align 1
  %18 = icmp slt i8 %17, 0
  br i1 %18, label %.lr.ph.i._crit_edge, label %.lr.ph.2, !llvm.loop !6

.lr.ph.2:                                         ; preds = %.lr.ph.i.2
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %20 = ptrtoint ptr %19 to i64                   ; 2 uses
  %21 = and i64 %20, 7
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %.preheader.i.preheader, label %.lr.ph.i.3, !llvm.loop !6

.lr.ph.i.3:                                       ; preds = %.lr.ph.2
  %23 = load i8, ptr %19, align 1
  %24 = icmp slt i8 %23, 0
  br i1 %24, label %.lr.ph.i._crit_edge, label %.lr.ph.3, !llvm.loop !6

.lr.ph.3:                                         ; preds = %.lr.ph.i.3
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %26 = ptrtoint ptr %25 to i64                   ; 2 uses
  %27 = and i64 %26, 7
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %.preheader.i.preheader, label %.lr.ph.i.4, !llvm.loop !6

.lr.ph.i.4:                                       ; preds = %.lr.ph.3
  %29 = load i8, ptr %25, align 1
  %30 = icmp slt i8 %29, 0
  br i1 %30, label %.lr.ph.i._crit_edge, label %.lr.ph.4, !llvm.loop !6

.lr.ph.4:                                         ; preds = %.lr.ph.i.4
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  %32 = ptrtoint ptr %31 to i64                   ; 2 uses
  %33 = and i64 %32, 7
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %.preheader.i.preheader, label %.lr.ph.i.5, !llvm.loop !6

.lr.ph.i.5:                                       ; preds = %.lr.ph.4
  %35 = load i8, ptr %31, align 1
  %36 = icmp slt i8 %35, 0
  br i1 %36, label %.lr.ph.i._crit_edge, label %.lr.ph.5, !llvm.loop !6

.lr.ph.5:                                         ; preds = %.lr.ph.i.5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, 7
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.preheader.i.preheader, label %.lr.ph.i.6, !llvm.loop !6

.lr.ph.i.6:                                       ; preds = %.lr.ph.5
  %37 = load i8, ptr %i.o, align 1
  %38 = icmp slt i8 %37, 0
  br i1 %38, label %.lr.ph.i._crit_edge, label %.lr.ph.6, !llvm.loop !6

.lr.ph.6:                                         ; preds = %.lr.ph.i.6
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader.i.preheader, !llvm.loop !6

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.c
  %.126.i = phi ptr [ %i.s, %bb.c ], [ %.126.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.126.i, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.s, %i.e
  br i1 %.not.i, label %.thread.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.t = load i64, ptr %.126.i, align 8
  %i.u = and i64 %i.t, -9187201950435737472
  %.not28.i = icmp eq i64 %i.u, 0
  br i1 %.not28.i, label %.preheader.i, label %bb.d, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %.126.i to i64
  %i.w = sub i64 %i.v, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.thread.loopexit.i:                               ; preds = %.preheader.i
  %.pre.i = ptrtoaddr ptr %.126.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.244.pre-phi.i = phi i64 [ %.pre.i, %.thread.loopexit.i ], [ %i.d, %_ZNK2v84base6VectorIKhE6lengthEv.exit ]
  %.2.i = phi ptr [ %.126.i, %.thread.loopexit.i ], [ %1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ] ; 4 uses
  %i.x = icmp ult ptr %.2.i, %i.e
  br i1 %i.x, label %.lr.ph37.preheader.i, label %._crit_edge.i

.lr.ph37.preheader.i:                             ; preds = %.thread.i
  %i.y = add i64 %2, %i.d
  %i.z = sub i64 %i.y, %.244.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.2.i, i64 %i.z ; 2 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.f, %.lr.ph37.preheader.i
  %.336.i = phi ptr [ %i.af, %bb.f ], [ %.2.i, %.lr.ph37.preheader.i ] ; 3 uses
  %i.aa = load i8, ptr %.336.i, align 1
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  %i.ac = ptrtoint ptr %.336.i to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

bb.f:                                             ; preds = %.lr.ph37.i
  %i.af = getelementptr inbounds nuw i8, ptr %.336.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.af, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.f, %.thread.i
  %.3.lcssa.i = phi ptr [ %.2.i, %.thread.i ], [ %scevgep.i, %bb.f ]
  %i.ag = ptrtoint ptr %.3.lcssa.i to i64
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

_ZNK2v84base6VectorIKhE6lengthEv.exit19:          ; preds = %._crit_edge.i, %bb.e, %bb.d, %.lr.ph.i._crit_edge
  %.1.in.i = phi i64 [ %i.n, %.lr.ph.i._crit_edge ], [ %i.ae, %bb.e ], [ %i.ai, %._crit_edge.i ], [ %i.w, %bb.d ] ; 2 uses
  %.1.i = trunc i64 %.1.in.i to i32               ; 4 uses
  store i32 %.1.i, ptr %i.a, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i32 %.1.i, ptr %i.aj, align 4
  %i.ak = icmp eq i32 %.1.i, %i.c
  br i1 %i.ak, label %.critedge, label %_ZNK2v84base6VectorIKhE6lengthEv.exit20

_ZNK2v84base6VectorIKhE6lengthEv.exit20:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit19
  %sext = shl i64 %.1.in.i, 32
  %i.al = ashr exact i64 %sext, 32                ; 2 uses
  %i.am = icmp slt i64 %i.al, %2
  br i1 %i.am, label %.lr.ph48.preheader, label %.outer._crit_edge.thread

.lr.ph48.preheader:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit20
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.ao = add i64 %2, %i.d
  %.fr152 = freeze i64 %i.ao
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %.outer
  %i.ap = phi i32 [ %i.df, %.outer ], [ %.1.i, %.lr.ph48.preheader ] ; 2 uses
  %.011.ph57 = phi ptr [ %i.dg, %.outer ], [ %i.an, %.lr.ph48.preheader ] ; 4 uses
  %.012.ph56 = phi i32 [ %.113, %.outer ], [ 0, %.lr.ph48.preheader ]
  %.014.ph55 = phi i8 [ %.115, %.outer ], [ 1, %.lr.ph48.preheader ] ; 5 uses
  %.0.ph54 = phi i32 [ %.1, %.outer ], [ 0, %.lr.ph48.preheader ] ; 2 uses
  %.033.ph53 = phi i8 [ %.fr, %.outer ], [ 11, %.lr.ph48.preheader ] ; 2 uses
  %.011.ph57146 = ptrtoaddr ptr %.011.ph57 to i64
  %i.aq = load i8, ptr %.011.ph57, align 1        ; 2 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  %i.as = icmp eq i8 %.033.ph53, 11
  %i.at = and i1 %i.as, %i.ar
  br i1 %i.at, label %bb.g, label %.loopexit, !prof !5

bb.g:                                             ; preds = %.lr.ph48
  %i.au = add nsw i32 %i.ap, 1                    ; 3 uses
  store i32 %i.au, ptr %i.aj, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.011.ph57, i64 1 ; 3 uses
  %i.aw = icmp ult ptr %i.av, %i.e
  br i1 %i.aw, label %.peel.next.preheader, label %.outer._crit_edge.thread

.peel.next.preheader:                             ; preds = %bb.g
  %i.ax = xor i64 %.011.ph57146, -1
  %i.ay = add i64 %.fr152, %i.ax                  ; 2 uses
  %i.az = add i64 %i.ay, -1
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.h
  %i.ba = phi i32 [ %i.bd, %bb.h ], [ %i.au, %.peel.next.preheader ] ; 2 uses
  %.01147.prol = phi ptr [ %i.be, %bb.h ], [ %i.av, %.peel.next.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.h ], [ 0, %.peel.next.preheader ]
  %i.bb = load i8, ptr %.01147.prol, align 1      ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.h, label %.loopexit, !prof !5

bb.h:                                             ; preds = %.peel.next.prol
  %i.bd = add nsw i32 %i.ba, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.aj, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01147.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !32

.peel.next.prol.loopexit:                         ; preds = %bb.h, %.peel.next.preheader
  %.unr = phi i32 [ %i.au, %.peel.next.preheader ], [ %i.bd, %bb.h ]
  %.01147.unr = phi ptr [ %i.av, %.peel.next.preheader ], [ %i.be, %bb.h ]
  %i.bf = icmp ult i64 %i.az, 3
  br i1 %i.bf, label %.outer._crit_edge.thread, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.i
  %i.bg = phi i32 [ %i.bv, %bb.i ], [ %.unr, %.peel.next.prol.loopexit ] ; 5 uses
  %.01147 = phi ptr [ %i.bw, %bb.i ], [ %.01147.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %i.bh = load i8, ptr %.01147, align 1           ; 2 uses
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %.peel.next.1, label %.loopexit, !prof !5

.peel.next.1:                                     ; preds = %.peel.next
  %i.bj = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bj, ptr %i.aj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.01147, i64 1
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit172, !prof !5

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.bn = add nsw i32 %i.bg, 2                    ; 2 uses
  store i32 %i.bn, ptr %i.aj, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.01147, i64 2
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit168, !prof !5

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.br = add nsw i32 %i.bg, 3                    ; 2 uses
  store i32 %i.br, ptr %i.aj, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.01147, i64 3
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.i, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !5

bb.i:                                             ; preds = %.peel.next.3
  %i.bv = add nsw i32 %i.bg, 4                    ; 2 uses
  store i32 %i.bv, ptr %i.aj, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.01147, i64 4 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.e
  br i1 %i.bx, label %.peel.next, label %.outer._crit_edge.thread, !llvm.loop !33

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.by = getelementptr inbounds nuw i8, ptr %.01147, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit168:   ; preds = %.peel.next.2
  %i.bz = getelementptr inbounds nuw i8, ptr %.01147, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit172:   ; preds = %.peel.next.1
  %i.ca = getelementptr inbounds nuw i8, ptr %.01147, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit172, %.loopexit.loopexit.loopexit.split.loop.exit168, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph48
  %i.cb = phi i32 [ %i.ap, %.lr.ph48 ], [ %i.bg, %.peel.next ], [ %i.bj, %.loopexit.loopexit.loopexit.split.loop.exit172 ], [ %i.bn, %.loopexit.loopexit.loopexit.split.loop.exit168 ], [ %i.br, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.ba, %.peel.next.prol ] ; 3 uses
  %.01147.lcssa = phi ptr [ %.011.ph57, %.lr.ph48 ], [ %.01147, %.peel.next ], [ %i.ca, %.loopexit.loopexit.loopexit.split.loop.exit172 ], [ %i.bz, %.loopexit.loopexit.loopexit.split.loop.exit168 ], [ %i.by, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01147.prol, %.peel.next.prol ]
  %.01246.lcssa = phi i32 [ %.012.ph56, %.lr.ph48 ], [ 0, %.peel.next.prol ], [ 0, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 0, %.loopexit.loopexit.loopexit.split.loop.exit168 ], [ 0, %.loopexit.loopexit.loopexit.split.loop.exit172 ], [ 0, %.peel.next ] ; 2 uses
  %.03345.lcssa = phi i8 [ %.033.ph53, %.lr.ph48 ], [ 11, %.peel.next.prol ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit168 ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit172 ], [ 11, %.peel.next ]
  %.lcssa = phi i8 [ %i.aq, %.lr.ph48 ], [ %i.bh, %.peel.next ], [ %i.bl, %.loopexit.loopexit.loopexit.split.loop.exit172 ], [ %i.bp, %.loopexit.loopexit.loopexit.split.loop.exit168 ], [ %i.bt, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.bb, %.peel.next.prol ] ; 2 uses
  %i.cc = zext i8 %.lcssa to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %.03345.lcssa to i32
  %i.cg = zext i8 %i.ce to i32                    ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, %i.cf
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1
  %.fr = freeze i8 %i.ck                          ; 4 uses
  %i.cl = shl i32 %.0.ph54, 6                     ; 3 uses
  %i.cm = zext i8 %.lcssa to i32
  %i.cn = lshr i32 %i.cg, 1
  %i.co = lshr i32 127, %i.cn
  %i.cp = and i32 %i.co, %i.cm
  %i.cq = or i32 %i.cp, %i.cl                     ; 3 uses
  %i.cr = icmp ult i8 %.fr, 11
end_hunk_1
begin_hunk_2_@_ZN2v88internal15Utf8DecoderBaseINS0_11Wtf8DecoderEE6DecodeItEEvPT_NS_4base6VectorIKhEE:bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.fr77 ; 3 uses
  %i.i = icmp sgt i64 %.fr77, %i.g
  br i1 %i.i, label %.lr.ph.preheader, label %.outer._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.j = getelementptr inbounds [2 x i8], ptr %1, i64 %i.g
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.g
  %i.l = add i64 %.fr77, %i.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.0.ph36 = phi ptr [ %i.bx, %.outer ], [ %i.k, %.lr.ph.preheader ] ; 4 uses
  %.014.ph35 = phi ptr [ %.2, %.outer ], [ %i.j, %.lr.ph.preheader ] ; 4 uses
  %.024.ph34 = phi i32 [ %.125, %.outer ], [ 0, %.lr.ph.preheader ]
  %.026.ph33 = phi i8 [ %i.bd, %.outer ], [ 11, %.lr.ph.preheader ] ; 2 uses
  %.0.ph3672 = ptrtoaddr ptr %.0.ph36 to i64
  %i.m = load i8, ptr %.0.ph36, align 1           ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  %i.o = icmp eq i8 %.026.ph33, 11
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.c, label %.loopexit, !prof !5

bb.c:                                             ; preds = %.lr.ph
  %i.q = zext nneg i8 %i.m to i16
  store i16 %i.q, ptr %.014.ph35, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %.0.ph36, i64 1 ; 3 uses
  %i.s = icmp ult ptr %i.r, %i.h
  br i1 %i.s, label %.peel.next.preheader, label %.outer._crit_edge

.peel.next.preheader:                             ; preds = %bb.c
  %i.t = xor i64 %.0.ph3672, -1
  %i.u = add i64 %i.l, %i.t                       ; 2 uses
  %i.v = add i64 %i.u, -1
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.d
  %.032.prol = phi ptr [ %i.z, %bb.d ], [ %i.r, %.peel.next.preheader ] ; 3 uses
  %.014.ph35.pn.prol = phi ptr [ %.01431.prol, %bb.d ], [ %.014.ph35, %.peel.next.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %bb.d ], [ 0, %.peel.next.preheader ]
  %.01431.prol = getelementptr inbounds nuw i8, ptr %.014.ph35.pn.prol, i64 2 ; 4 uses
  %i.w = load i8, ptr %.032.prol, align 1         ; 3 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.d, label %.loopexit, !prof !5

bb.d:                                             ; preds = %.peel.next.prol
  %i.y = zext nneg i8 %i.w to i16
  store i16 %i.y, ptr %.01431.prol, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %.032.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !38

.peel.next.prol.loopexit:                         ; preds = %bb.d, %.peel.next.preheader
  %.032.unr = phi ptr [ %i.r, %.peel.next.preheader ], [ %i.z, %bb.d ]
  %.014.ph35.pn.unr = phi ptr [ %.014.ph35, %.peel.next.preheader ], [ %.01431.prol, %bb.d ]
  %i.aa = icmp ult i64 %i.v, 3
  br i1 %i.aa, label %.outer._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.e
  %.032 = phi ptr [ %i.aq, %bb.e ], [ %.032.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %.014.ph35.pn = phi ptr [ %.01431.3, %bb.e ], [ %.014.ph35.pn.unr, %.peel.next.prol.loopexit ] ; 4 uses
  %.01431 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 2 ; 2 uses
  %i.ab = load i8, ptr %.032, align 1             ; 3 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %.peel.next.1, label %.loopexit, !prof !5

.peel.next.1:                                     ; preds = %.peel.next
  %i.ad = zext nneg i8 %i.ab to i16
  store i16 %i.ad, ptr %.01431, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.032, i64 1
  %.01431.1 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 4 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit87, !prof !5

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.ah = zext nneg i8 %i.af to i16
  store i16 %i.ah, ptr %.01431.1, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.032, i64 2
  %.01431.2 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 6 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 3 uses
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit83, !prof !5

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.al = zext nneg i8 %i.aj to i16
  store i16 %i.al, ptr %.01431.2, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %.032, i64 3
  %.01431.3 = getelementptr inbounds nuw i8, ptr %.014.ph35.pn, i64 8 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.e, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !5

bb.e:                                             ; preds = %.peel.next.3
  %i.ap = zext nneg i8 %i.an to i16
  store i16 %i.ap, ptr %.01431.3, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.032, i64 4 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.h
  br i1 %i.ar, label %.peel.next, label %.outer._crit_edge, !llvm.loop !39

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.as = getelementptr inbounds nuw i8, ptr %.032, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit83:    ; preds = %.peel.next.2
  %i.at = getelementptr inbounds nuw i8, ptr %.032, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit87:    ; preds = %.peel.next.1
  %i.au = getelementptr inbounds nuw i8, ptr %.032, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit87, %.loopexit.loopexit.loopexit.split.loop.exit83, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph
  %.032.lcssa = phi ptr [ %.0.ph36, %.lr.ph ], [ %.032, %.peel.next ], [ %i.au, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ %i.at, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ %i.as, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.032.prol, %.peel.next.prol ]
  %.01431.lcssa = phi ptr [ %.014.ph35, %.lr.ph ], [ %.01431, %.peel.next ], [ %.01431.1, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ %.01431.2, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ %.01431.3, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01431.prol, %.peel.next.prol ] ; 5 uses
  %.02630.lcssa = phi i8 [ %.026.ph33, %.lr.ph ], [ 11, %.peel.next.prol ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ 11, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ 11, %.peel.next ]
  %.lcssa = phi i8 [ %i.m, %.lr.ph ], [ %i.ab, %.peel.next ], [ %i.af, %.loopexit.loopexit.loopexit.split.loop.exit87 ], [ %i.aj, %.loopexit.loopexit.loopexit.split.loop.exit83 ], [ %i.an, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.w, %.peel.next.prol ] ; 2 uses
  %i.av = zext i8 %.lcssa to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %.02630.lcssa to i32
  %i.az = zext i8 %i.ax to i32                    ; 2 uses
  %i.ba = add nuw nsw i32 %i.az, %i.ay
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN25GeneralizedUtf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = shl i32 %.024.ph34, 6                   ; 3 uses
  %i.bf = zext i8 %.lcssa to i32
  %i.bg = lshr i32 %i.az, 1
  %i.bh = lshr i32 127, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %i.bj = or i32 %i.bi, %i.be                     ; 3 uses
  %i.bk = icmp eq i8 %i.bd, 11
  br i1 %i.bk, label %bb.f, label %.outer

bb.f:                                             ; preds = %.loopexit
  %i.bl = icmp ult i32 %i.be, 65536
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bm = trunc nuw i32 %i.bj to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.01431.lcssa, i64 2
  store i16 %i.bm, ptr %.01431.lcssa, align 2
  br label %.outer

bb.h:                                             ; preds = %bb.f
  %i.bo = add i32 %i.be, 983040
  %i.bp = lshr i32 %i.bo, 10
  %i.bq = getelementptr inbounds nuw i8, ptr %.01431.lcssa, i64 4
  %i.br = trunc i32 %i.bp to i16
  %i.bs = insertelement <2 x i16> poison, i16 %i.br, i64 0
  %i.bt = trunc i32 %i.bj to i16
  %i.bu = insertelement <2 x i16> %i.bs, i16 %i.bt, i64 1
  %i.bv = and <2 x i16> %i.bu, splat (i16 1023)
  %i.bw = or disjoint <2 x i16> %i.bv, <i16 -10240, i16 -9216>
  store <2 x i16> %i.bw, ptr %.01431.lcssa, align 2
  br label %.outer

.outer:                                           ; preds = %bb.g, %bb.h, %.loopexit
  %.125 = phi i32 [ %i.bj, %.loopexit ], [ 0, %bb.h ], [ 0, %bb.g ]
  %.2 = phi ptr [ %.01431.lcssa, %.loopexit ], [ %i.bq, %bb.h ], [ %i.bn, %bb.g ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 1 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.h
  br i1 %i.by, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !40

.outer._crit_edge:                                ; preds = %.outer, %bb.c, %bb.e, %.peel.next.prol.loopexit, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEEC2ENS_4base6VectorIKhEE(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr %1, i64 %2) unnamed_addr #0 comdat($_ZN2v88internal15Utf8DecoderBaseINS0_17StrictUtf8DecoderEEC5ENS_4base6VectorIKhEE) align 2 {
bb.a:
  store i8 0, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %2 to i32
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.f = icmp samesign ugt i64 %2, 7
  br i1 %i.f, label %.preheader30.i, label %.thread.i

.preheader30.i:                                   ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.preheader.i.preheader, label %.lr.ph.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.preheader, %.preheader30.i
  %.126.i.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %1, %.preheader30.i ], [ %7, %.lr.ph ], [ %13, %.lr.ph.1 ], [ %19, %.lr.ph.2 ], [ %25, %.lr.ph.3 ], [ %31, %.lr.ph.4 ], [ %i.o, %.lr.ph.5 ], [ %39, %.lr.ph.6 ]
  br label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %.preheader30.i
  %i.j = load i8, ptr %1, align 1
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %4 = ptrtoint ptr %3 to i64                     ; 2 uses
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %.preheader.i.preheader, label %.lr.ph.i.lr.ph, !llvm.loop !6

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  %i.l = load i8, ptr %3, align 1
  %i.m = icmp slt i8 %i.l, 0
  br i1 %i.m, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !6

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i.lr.ph, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.preheader
  %.lcssa45 = phi i64 [ %i.g, %.lr.ph.i.preheader ], [ %4, %.lr.ph.i.lr.ph ], [ %8, %.lr.ph.i.1 ], [ %14, %.lr.ph.i.2 ], [ %20, %.lr.ph.i.3 ], [ %26, %.lr.ph.i.4 ], [ %32, %.lr.ph.i.5 ], [ %i.p, %.lr.ph.i.6 ]
  %i.n = sub i64 %.lcssa45, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.lr.ph:                                           ; preds = %.lr.ph.i.lr.ph
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %8 = ptrtoint ptr %7 to i64                     ; 2 uses
  %9 = and i64 %8, 7
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %.preheader.i.preheader, label %.lr.ph.i.1, !llvm.loop !6

.lr.ph.i.1:                                       ; preds = %.lr.ph
  %11 = load i8, ptr %7, align 1
  %12 = icmp slt i8 %11, 0
  br i1 %12, label %.lr.ph.i._crit_edge, label %.lr.ph.1, !llvm.loop !6

.lr.ph.1:                                         ; preds = %.lr.ph.i.1
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %14 = ptrtoint ptr %13 to i64                   ; 2 uses
  %15 = and i64 %14, 7
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %.preheader.i.preheader, label %.lr.ph.i.2, !llvm.loop !6

.lr.ph.i.2:                                       ; preds = %.lr.ph.1
  %17 = load i8, ptr %13, align 1
  %18 = icmp slt i8 %17, 0
  br i1 %18, label %.lr.ph.i._crit_edge, label %.lr.ph.2, !llvm.loop !6

.lr.ph.2:                                         ; preds = %.lr.ph.i.2
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %20 = ptrtoint ptr %19 to i64                   ; 2 uses
  %21 = and i64 %20, 7
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %.preheader.i.preheader, label %.lr.ph.i.3, !llvm.loop !6

.lr.ph.i.3:                                       ; preds = %.lr.ph.2
  %23 = load i8, ptr %19, align 1
  %24 = icmp slt i8 %23, 0
  br i1 %24, label %.lr.ph.i._crit_edge, label %.lr.ph.3, !llvm.loop !6

.lr.ph.3:                                         ; preds = %.lr.ph.i.3
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %26 = ptrtoint ptr %25 to i64                   ; 2 uses
  %27 = and i64 %26, 7
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %.preheader.i.preheader, label %.lr.ph.i.4, !llvm.loop !6

.lr.ph.i.4:                                       ; preds = %.lr.ph.3
  %29 = load i8, ptr %25, align 1
  %30 = icmp slt i8 %29, 0
  br i1 %30, label %.lr.ph.i._crit_edge, label %.lr.ph.4, !llvm.loop !6

.lr.ph.4:                                         ; preds = %.lr.ph.i.4
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  %32 = ptrtoint ptr %31 to i64                   ; 2 uses
  %33 = and i64 %32, 7
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %.preheader.i.preheader, label %.lr.ph.i.5, !llvm.loop !6

.lr.ph.i.5:                                       ; preds = %.lr.ph.4
  %35 = load i8, ptr %31, align 1
  %36 = icmp slt i8 %35, 0
  br i1 %36, label %.lr.ph.i._crit_edge, label %.lr.ph.5, !llvm.loop !6

.lr.ph.5:                                         ; preds = %.lr.ph.i.5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, 7
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.preheader.i.preheader, label %.lr.ph.i.6, !llvm.loop !6

.lr.ph.i.6:                                       ; preds = %.lr.ph.5
  %37 = load i8, ptr %i.o, align 1
  %38 = icmp slt i8 %37, 0
  br i1 %38, label %.lr.ph.i._crit_edge, label %.lr.ph.6, !llvm.loop !6

.lr.ph.6:                                         ; preds = %.lr.ph.i.6
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader.i.preheader, !llvm.loop !6

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.c
  %.126.i = phi ptr [ %i.s, %bb.c ], [ %.126.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.126.i, i64 8 ; 2 uses
  %.not.i = icmp ugt ptr %i.s, %i.e
  br i1 %.not.i, label %.thread.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.t = load i64, ptr %.126.i, align 8
  %i.u = and i64 %i.t, -9187201950435737472
  %.not28.i = icmp eq i64 %i.u, 0
  br i1 %.not28.i, label %.preheader.i, label %bb.d, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %.126.i to i64
  %i.w = sub i64 %i.v, %i.g
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

.thread.loopexit.i:                               ; preds = %.preheader.i
  %.pre.i = ptrtoaddr ptr %.126.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.244.pre-phi.i = phi i64 [ %.pre.i, %.thread.loopexit.i ], [ %i.d, %_ZNK2v84base6VectorIKhE6lengthEv.exit ]
  %.2.i = phi ptr [ %.126.i, %.thread.loopexit.i ], [ %1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ] ; 4 uses
  %i.x = icmp ult ptr %.2.i, %i.e
  br i1 %i.x, label %.lr.ph37.preheader.i, label %._crit_edge.i

.lr.ph37.preheader.i:                             ; preds = %.thread.i
  %i.y = add i64 %2, %i.d
  %i.z = sub i64 %i.y, %.244.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.2.i, i64 %i.z ; 2 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.f, %.lr.ph37.preheader.i
  %.336.i = phi ptr [ %i.af, %bb.f ], [ %.2.i, %.lr.ph37.preheader.i ] ; 3 uses
  %i.aa = load i8, ptr %.336.i, align 1
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  %i.ac = ptrtoint ptr %.336.i to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

bb.f:                                             ; preds = %.lr.ph37.i
  %i.af = getelementptr inbounds nuw i8, ptr %.336.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.af, %scevgep.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %bb.f, %.thread.i
  %.3.lcssa.i = phi ptr [ %.2.i, %.thread.i ], [ %scevgep.i, %bb.f ]
  %i.ag = ptrtoint ptr %.3.lcssa.i to i64
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %_ZNK2v84base6VectorIKhE6lengthEv.exit19

_ZNK2v84base6VectorIKhE6lengthEv.exit19:          ; preds = %._crit_edge.i, %bb.e, %bb.d, %.lr.ph.i._crit_edge
  %.1.in.i = phi i64 [ %i.n, %.lr.ph.i._crit_edge ], [ %i.ae, %bb.e ], [ %i.ai, %._crit_edge.i ], [ %i.w, %bb.d ] ; 2 uses
  %.1.i = trunc i64 %.1.in.i to i32               ; 4 uses
  store i32 %.1.i, ptr %i.a, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i32 %.1.i, ptr %i.aj, align 4
  %i.ak = icmp eq i32 %.1.i, %i.c
  br i1 %i.ak, label %bb.m, label %_ZNK2v84base6VectorIKhE6lengthEv.exit20

_ZNK2v84base6VectorIKhE6lengthEv.exit20:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit19
  %sext = shl i64 %.1.in.i, 32
  %i.al = ashr exact i64 %sext, 32                ; 2 uses
  %i.am = icmp slt i64 %i.al, %2
  br i1 %i.am, label %.lr.ph51.preheader, label %.outer._crit_edge.thread

.lr.ph51.preheader:                               ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit20
  %i.an = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.ao = add i64 %2, %i.d
  %.fr147 = freeze i64 %i.ao
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.outer
  %i.ap = phi i32 [ %i.da, %.outer ], [ %.1.i, %.lr.ph51.preheader ] ; 2 uses
  %.011.ph59 = phi ptr [ %i.db, %.outer ], [ %i.an, %.lr.ph51.preheader ] ; 4 uses
  %.014.ph58 = phi i8 [ %.115, %.outer ], [ 1, %.lr.ph51.preheader ] ; 5 uses
  %.0.ph57 = phi i32 [ %.133, %.outer ], [ 0, %.lr.ph51.preheader ]
  %.035.ph56 = phi i8 [ %.fr, %.outer ], [ 12, %.lr.ph51.preheader ] ; 2 uses
  %.011.ph59141 = ptrtoaddr ptr %.011.ph59 to i64
  %i.aq = load i8, ptr %.011.ph59, align 1        ; 2 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  %i.as = icmp eq i8 %.035.ph56, 12
  %i.at = and i1 %i.as, %i.ar
  br i1 %i.at, label %bb.g, label %.loopexit, !prof !5

bb.g:                                             ; preds = %.lr.ph51
  %i.au = add nsw i32 %i.ap, 1                    ; 3 uses
  store i32 %i.au, ptr %i.aj, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.011.ph59, i64 1 ; 3 uses
  %i.aw = icmp ult ptr %i.av, %i.e
  br i1 %i.aw, label %.peel.next.preheader, label %.outer._crit_edge.thread

.peel.next.preheader:                             ; preds = %bb.g
  %i.ax = xor i64 %.011.ph59141, -1
  %i.ay = add i64 %.fr147, %i.ax                  ; 2 uses
  %i.az = add i64 %i.ay, -1
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.prol.loopexit, label %.peel.next.prol

.peel.next.prol:                                  ; preds = %.peel.next.preheader, %bb.h
  %i.ba = phi i32 [ %i.bd, %bb.h ], [ %i.au, %.peel.next.preheader ] ; 2 uses
  %.01150.prol = phi ptr [ %i.be, %bb.h ], [ %i.av, %.peel.next.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.h ], [ 0, %.peel.next.preheader ]
  %i.bb = load i8, ptr %.01150.prol, align 1      ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.h, label %.loopexit, !prof !5

bb.h:                                             ; preds = %.peel.next.prol
  %i.bd = add nsw i32 %i.ba, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.aj, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.01150.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.prol.loopexit, label %.peel.next.prol, !llvm.loop !41

.peel.next.prol.loopexit:                         ; preds = %bb.h, %.peel.next.preheader
  %.unr = phi i32 [ %i.au, %.peel.next.preheader ], [ %i.bd, %bb.h ]
  %.01150.unr = phi ptr [ %i.av, %.peel.next.preheader ], [ %i.be, %bb.h ]
  %i.bf = icmp ult i64 %i.az, 3
  br i1 %i.bf, label %.outer._crit_edge.thread, label %.peel.next

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.i
  %i.bg = phi i32 [ %i.bv, %bb.i ], [ %.unr, %.peel.next.prol.loopexit ] ; 5 uses
  %.01150 = phi ptr [ %i.bw, %bb.i ], [ %.01150.unr, %.peel.next.prol.loopexit ] ; 9 uses
  %i.bh = load i8, ptr %.01150, align 1           ; 2 uses
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %.peel.next.1, label %.loopexit, !prof !5

.peel.next.1:                                     ; preds = %.peel.next
  %i.bj = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bj, ptr %i.aj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.01150, i64 1
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %.peel.next.2, label %.loopexit.loopexit.loopexit.split.loop.exit167, !prof !5

.peel.next.2:                                     ; preds = %.peel.next.1
  %i.bn = add nsw i32 %i.bg, 2                    ; 2 uses
  store i32 %i.bn, ptr %i.aj, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.01150, i64 2
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %i.bq = icmp sgt i8 %i.bp, -1
  br i1 %i.bq, label %.peel.next.3, label %.loopexit.loopexit.loopexit.split.loop.exit163, !prof !5

.peel.next.3:                                     ; preds = %.peel.next.2
  %i.br = add nsw i32 %i.bg, 3                    ; 2 uses
  store i32 %i.br, ptr %i.aj, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.01150, i64 3
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.i, label %.loopexit.loopexit.loopexit.split.loop.exit, !prof !5

bb.i:                                             ; preds = %.peel.next.3
  %i.bv = add nsw i32 %i.bg, 4                    ; 2 uses
  store i32 %i.bv, ptr %i.aj, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.01150, i64 4 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.e
  br i1 %i.bx, label %.peel.next, label %.outer._crit_edge.thread, !llvm.loop !42

.loopexit.loopexit.loopexit.split.loop.exit:      ; preds = %.peel.next.3
  %i.by = getelementptr inbounds nuw i8, ptr %.01150, i64 3
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit163:   ; preds = %.peel.next.2
  %i.bz = getelementptr inbounds nuw i8, ptr %.01150, i64 2
  br label %.loopexit

.loopexit.loopexit.loopexit.split.loop.exit167:   ; preds = %.peel.next.1
  %i.ca = getelementptr inbounds nuw i8, ptr %.01150, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.loopexit.loopexit.loopexit.split.loop.exit167, %.loopexit.loopexit.loopexit.split.loop.exit163, %.loopexit.loopexit.loopexit.split.loop.exit, %.peel.next.prol, %.lr.ph51
  %i.cb = phi i32 [ %i.ap, %.lr.ph51 ], [ %i.bg, %.peel.next ], [ %i.bj, %.loopexit.loopexit.loopexit.split.loop.exit167 ], [ %i.bn, %.loopexit.loopexit.loopexit.split.loop.exit163 ], [ %i.br, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.ba, %.peel.next.prol ] ; 3 uses
  %.01150.lcssa = phi ptr [ %.011.ph59, %.lr.ph51 ], [ %.01150, %.peel.next ], [ %i.ca, %.loopexit.loopexit.loopexit.split.loop.exit167 ], [ %i.bz, %.loopexit.loopexit.loopexit.split.loop.exit163 ], [ %i.by, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %.01150.prol, %.peel.next.prol ]
  %.03549.lcssa = phi i8 [ %.035.ph56, %.lr.ph51 ], [ 12, %.peel.next.prol ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit163 ], [ 12, %.loopexit.loopexit.loopexit.split.loop.exit167 ], [ 12, %.peel.next ]
  %.lcssa = phi i8 [ %i.aq, %.lr.ph51 ], [ %i.bh, %.peel.next ], [ %i.bl, %.loopexit.loopexit.loopexit.split.loop.exit167 ], [ %i.bp, %.loopexit.loopexit.loopexit.split.loop.exit163 ], [ %i.bt, %.loopexit.loopexit.loopexit.split.loop.exit ], [ %i.bb, %.peel.next.prol ] ; 2 uses
  %i.cc = zext i8 %.lcssa to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE11transitions, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = zext i8 %.03549.lcssa to i32
  %i.cg = zext i8 %i.ce to i32                    ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, %i.cf
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN14Utf8DfaDecoder6DecodeEhPNS_5StateEPjE6states, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1
  %.fr = freeze i8 %i.ck                          ; 4 uses
  %i.cl = shl i32 %.0.ph57, 6                     ; 3 uses
  %i.cm = icmp ugt i8 %.fr, 11
  br i1 %i.cm, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %.loopexit
  %i.cn = lshr i32 %i.cg, 1
  %i.co = lshr i32 127, %i.cn
  %i.cp = zext i8 %.lcssa to i32
  %i.cq = and i32 %i.co, %i.cp
end_hunk_2
