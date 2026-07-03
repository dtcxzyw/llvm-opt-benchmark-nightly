inline.NumInlined: 237
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.v8::base::SmallVector" = type { ptr, ptr, ptr, [128 x i8] }

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS0_6StringEEEE4GrowEm = comdat any

$_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft14StringConcatOpELm16ESaIS7_EE11FreeStorageEv = comdat any

$_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft14StringConcatOpELm16ESaIS7_EE4GrowEv = comdat any

$_ZN2v84base11SmallVectorIPKNS_8internal8compiler10turboshaft14StringConcatOpELm16ESaIS7_EE4GrowEm = comdat any

@_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE = internal unnamed_addr constant [172 x i64] [i64 24, i64 16, i64 16, i64 4, i64 8, i64 24, i64 32, i64 16, i64 8, i64 16, i64 16, i64 16, i64 8, i64 8, i64 8, i64 8, i64 12, i64 8, i64 16, i64 16, i64 8, i64 4, i64 8, i64 32, i64 32, i64 32, i64 24, i64 12, i64 16, i64 8, i64 24, i64 24, i64 8, i64 4, i64 4, i64 20, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 12, i64 12, i64 24, i64 36, i64 8, i64 12, i64 8, i64 8, i64 8, i64 8, i64 8, i64 4, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 4, i64 8, i64 8, i64 8, i64 16, i64 4, i64 12, i64 16, i64 4, i64 24, i64 8, i64 8, i64 16, i64 8, i64 16, i64 12, i64 4, i64 4, i64 4, i64 4, i64 8, i64 16, i64 24, i64 4, i64 24, i64 4, i64 8, i64 4, i64 16, i64 12, i64 12, i64 8, i64 16, i64 4, i64 4, i64 4, i64 8, i64 4, i64 4, i64 12, i64 8, i64 8, i64 8, i64 16, i64 32, i64 4, i64 32, i64 16, i64 8, i64 8, i64 8, i64 4, i64 8, i64 24, i64 8, i64 8, i64 8, i64 24, i64 8, i64 24, i64 8, i64 24, i64 8, i64 4, i64 40, i64 8, i64 8, i64 4, i64 4, i64 4, i64 8, i64 8, i64 4, i64 8, i64 24, i64 12, i64 8, i64 8, i64 16, i64 8, i64 8, i64 4, i64 4, i64 4, i64 4, i64 4, i64 8, i64 4, i64 4, i64 24, i64 32, i64 40, i64 8, i64 40, i64 8, i64 8, i64 8, i64 12, i64 8, i64 8, i64 8], align 16
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer3RunEv(ptr noundef nonnull align 8 dereferenceable(116) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = and i64 %i.h, 34359738360
  %.not8 = icmp eq i64 %i.i, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = lshr exact i64 %i.h, 3
  %i.k = and i64 %i.j, 4294967295
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = add nsw i64 %i.s, %i.v
  %i.x = icmp ult i64 %i.w, 65536
  %.not20.i = icmp eq ptr %i.o, %i.m
  %or.cond.i = or i1 %.not20.i, %i.x
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.ad, %bb.b ] ; 2 uses
  %.sroa.010.0.copyload.i = load i32, ptr %.021.i, align 4
  %i.z = lshr i32 %.sroa.010.0.copyload.i, 4
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 1, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.m
  br i1 %.not.i, label %.loopexit.loopexit.i, label %bb.b

.loopexit.loopexit.i:                             ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.n, align 8
  %.pre25.i = load ptr, ptr %i.l, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %._crit_edge
  %i.ae = phi ptr [ %.pre25.i, %.loopexit.loopexit.i ], [ %i.m, %._crit_edge ] ; 2 uses
  %i.af = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.o, %._crit_edge ] ; 2 uses
  %.not1922.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not1922.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer22ReprocessStringConcatsEv.exit, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.loopexit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph24.i
  %.01823.i = phi ptr [ %i.af, %.lr.ph24.i ], [ %i.au, %bb.e ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %.01823.i, align 4 ; 2 uses
  %i.ah = lshr i32 %.sroa.02.0.copyload.i, 4
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.ag, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !range !7, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = zext i32 %.sroa.02.0.copyload.i to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = inttoptr i64 %i.as to ptr
  tail call void @_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer46RecursivelyMarkAllStringConcatInputsAsEscapingEPKNS2_14StringConcatOpE(ptr noundef nonnull readonly align 8 dereferenceable(116) %0, ptr noundef nonnull %i.at)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.01823.i, i64 4 ; 2 uses
  %.not19.i = icmp eq ptr %i.au, %i.ae
  br i1 %.not19.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer22ReprocessStringConcatsEv.exit, label %bb.c

_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer22ReprocessStringConcatsEv.exit: ; preds = %bb.e, %.loopexit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not30.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not30.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer31ComputeFrameStatesToReconstructEv.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer22ReprocessStringConcatsEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre.i4 = load ptr, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit.i, %.lr.ph32.i
  %i.ba = phi ptr [ %.pre.i4, %.lr.ph32.i ], [ %i.cw, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit.i ] ; 3 uses
  %.031.i = phi ptr [ %i.aw, %.lr.ph32.i ], [ %i.cx, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit.i ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.031.i, align 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = zext i32 %.sroa.011.0.copyload.i to i64 ; 2 uses
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bj = load i16, ptr %i.bi, align 2            ; 2 uses
  %i.bk = zext i16 %i.bj to i64
  %.idx.i = shl nuw nsw i64 %i.bk, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i
  %.not2228.i = icmp eq i16 %i.bj, 0
  br i1 %.not2228.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.i
  %.02129.i = phi ptr [ %i.cv, %bb.i ], [ %i.bh, %bb.f ] ; 2 uses
  %.sroa.03.0.copyload.i = load i32, ptr %.02129.i, align 4 ; 2 uses
  %i.bm = zext i32 %.sroa.03.0.copyload.i to i64
  %i.bn = add i64 %i.bm, %i.bd
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i8, ptr %i.bo, align 4
  %i.bq = icmp eq i8 %i.bp, -104
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.br = lshr i32 %.sroa.03.0.copyload.i, 4
  %i.bs = zext nneg i32 %i.br to i64
  %1 = load ptr, ptr %i.az, align 8               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !range !7, !noundef !5
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h
  %i.bw = lshr i32 %.sroa.011.0.copyload.i, 4
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  store i8 1, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.cc, %i.be
  %.010.i.i = inttoptr i64 %i.cd to ptr           ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.cf = load i8, ptr %i.ce, align 4, !range !7, !noundef !5
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %.011.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.010.i.i, %.critedge.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.ch, align 4 ; 2 uses
  %i.ci = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = load ptr, ptr %i.az, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 1, ptr %i.cl, align 1
  %i.cm = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.cr = add i64 %i.cp, %i.cq
  %.0.i.i = inttoptr i64 %i.cr to ptr             ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ct = load i8, ptr %i.cs, align 4, !range !7, !noundef !5
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit.i, !llvm.loop !8

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %.02129.i, i64 4 ; 2 uses
  %.not22.i = icmp eq ptr %i.cv, %i.bl
  br i1 %.not22.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit.i, label %bb.g

_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit.i: ; preds = %bb.i, %.lr.ph.i.i, %.critedge.i, %bb.f
  %i.cw = phi ptr [ %i.cm, %.lr.ph.i.i ], [ %i.bz, %.critedge.i ], [ %i.ba, %bb.f ], [ %i.ba, %bb.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.031.i, i64 4 ; 2 uses
  %.not.i6 = icmp eq ptr %i.cx, %i.ay
  br i1 %.not.i6, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer31ComputeFrameStatesToReconstructEv.exit, label %bb.f

_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer31ComputeFrameStatesToReconstructEv.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit.i, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer22ReprocessStringConcatsEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.k, %.lr.ph.preheader ], [ %i.cy, %.lr.ph ]
  %i.cy = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cz = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cy
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer12ProcessBlockERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(100) %i.dd)
  %.not.wide = icmp eq i64 %i.cy, 0
  br i1 %.not.wide, label %._crit_edge, label %.lr.ph, !llvm.loop !10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer12ProcessBlockERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.a, align 4, !noalias !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !noalias !11 ; 2 uses
  %.not.i.i43 = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  br i1 %.not.i.i43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %i.d, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE.exit
  %i.o = phi ptr [ %.pre, %.lr.ph ], [ %i.gq, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE.exit ]
  %.sroa.033.044 = phi i32 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.gv, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE.exit ] ; 3 uses
  %i.p = lshr i32 %.sroa.033.044, 4
  %i.q = add nsw i32 %i.p, -1
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = sub i32 %.sroa.033.044, %i.v             ; 4 uses
  %i.x = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = zext i32 %i.w to i64
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = inttoptr i64 %i.ac to ptr               ; 11 uses
  %i.ae = load i8, ptr %i.ad, align 4             ; 2 uses
  switch i8 %i.ae, label %bb.p [
    i8 92, label %bb.c
    i8 -104, label %bb.h
    i8 -101, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i32
  %i.ai = load i32, ptr %i.j, align 8
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 %i.ah)
  store i32 %.sroa.speculated.i, ptr %i.j, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ak = load i16, ptr %i.af, align 2            ; 2 uses
  %i.al = zext i16 %i.ak to i64
  %.idx.i = shl nuw nsw i64 %i.al, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  %.not36.i = icmp eq i16 %i.ak, 0
  br i1 %.not36.i, label %.loopexit.i, label %.critedge.lr.ph.i

.critedge.lr.ph.i:                                ; preds = %bb.c
  %i.an = load ptr, ptr %i.y, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  br label %.critedge.i

bb.d:                                             ; preds = %.critedge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, %i.am
  br i1 %.not.i, label %.loopexit.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.critedge.lr.ph.i
  %.037.i = phi ptr [ %i.aj, %.critedge.lr.ph.i ], [ %i.ap, %bb.d ] ; 2 uses
  %.sroa.02.0.copyload.i = load i32, ptr %.037.i, align 4
  %i.aq = zext i32 %.sroa.02.0.copyload.i to i64
  %i.ar = add i64 %i.aq, %i.ao
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i8, ptr %i.as, align 4
  %i.au = icmp eq i8 %i.at, -104
  br i1 %i.au, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.critedge.i
  %i.av = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE9push_backERKS6_.exit.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr %i.n, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = add nsw i64 %i.bc, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.bd)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE9push_backERKS6_.exit.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE9push_backERKS6_.exit.i: ; preds = %bb.f, %bb.e
  %i.be = phi ptr [ %i.av, %bb.e ], [ %.pre.i.i, %bb.f ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bf, ptr %i.k, align 8
  store i32 %i.w, ptr %i.be, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE9push_backERKS6_.exit.i, %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !15 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %cond.i.i = icmp eq i8 %i.bk, 0
  br i1 %cond.i.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer33MarkNextFrameStateInputAsEscapingEPNS2_14FrameStateData8IteratorE.exit.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE.exit

_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer33MarkNextFrameStateInputAsEscapingEPNS2_14FrameStateData8IteratorE.exit.i: ; preds = %.loopexit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.bm = load i8, ptr %i.bl, align 4, !range !7, !noundef !5
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer12ProcessBlockERKNS2_5BlockE:bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj
  store i8 1, ptr %i.fl, align 1
  br label %.lr.ph.i22.prol.loopexit.unr-lcssa

.lr.ph.i22.prol.loopexit.unr-lcssa:               ; preds = %bb.q, %.lr.ph.i22.prol
  %i.fm = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  br label %.lr.ph.i22.prol.loopexit

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol.loopexit.unr-lcssa, %.lr.ph.i22.preheader
  %.014.i23.unr = phi ptr [ %i.es, %.lr.ph.i22.preheader ], [ %i.fm, %.lr.ph.i22.prol.loopexit.unr-lcssa ]
  %i.fn = icmp eq i64 %i.ex, 0
  br i1 %i.fn, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %bb.t
  %.014.i23 = phi ptr [ %i.gp, %bb.t ], [ %.014.i23.unr, %.lr.ph.i22.prol.loopexit ] ; 3 uses
  %.sroa.02.0.copyload.i24 = load i32, ptr %.014.i23, align 4 ; 2 uses
  %i.fo = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = zext i32 %.sroa.02.0.copyload.i24 to i64
  %i.ft = add i64 %i.fr, %i.fs
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = load i8, ptr %i.fu, align 4
  %i.fw = icmp eq i8 %i.fv, 92
  br i1 %i.fw, label %.lr.ph.i22.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i22
  %i.fx = lshr i32 %.sroa.02.0.copyload.i24, 4
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = load ptr, ptr %i.e, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fy
  store i8 1, ptr %i.ga, align 1
  br label %.lr.ph.i22.1

.lr.ph.i22.1:                                     ; preds = %bb.r, %.lr.ph.i22
  %i.gb = getelementptr inbounds nuw i8, ptr %.014.i23, i64 4
  %.sroa.02.0.copyload.i24.1 = load i32, ptr %i.gb, align 4 ; 2 uses
  %i.gc = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = zext i32 %.sroa.02.0.copyload.i24.1 to i64
  %i.gh = add i64 %i.gf, %i.gg
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = load i8, ptr %i.gi, align 4
  %i.gk = icmp eq i8 %i.gj, 92
  br i1 %i.gk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i22.1
  %i.gl = lshr i32 %.sroa.02.0.copyload.i24.1, 4
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = load ptr, ptr %i.e, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm
  store i8 1, ptr %i.go, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i22.1
  %i.gp = getelementptr inbounds nuw i8, ptr %.014.i23, i64 8 ; 2 uses
  %.not.i25.1 = icmp eq ptr %i.gp, %i.ew
  br i1 %.not.i25.1, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE.exit, label %.lr.ph.i22

_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.m, %.lr.ph.i22.prol.loopexit, %bb.t, %bb.p, %bb.i, %bb.g, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer33MarkNextFrameStateInputAsEscapingEPNS2_14FrameStateData8IteratorE.exit.i, %.loopexit.i, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS0_6StringEEEE9push_backEOS6_.exit, %bb.b
  %i.gq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.gq, i64 %i.r
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = zext i16 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 3
  %i.gv = sub i32 %.sroa.033.044, %i.gu           ; 2 uses
  %.not.i.i = icmp eq i32 %i.gv, %.sroa.01.0.copyload.i
  br i1 %.not.i.i, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer22ReprocessStringConcatsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k
  %i.m = icmp ult i64 %i.l, 65536
  %.not20 = icmp eq ptr %i.d, %i.b
  %or.cond = or i1 %i.m, %.not20
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.021 = phi ptr [ %i.d, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.010.0.copyload = load i32, ptr %.021, align 4
  %i.o = lshr i32 %.sroa.010.0.copyload, 4
  %i.p = zext nneg i32 %i.o to i64
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 1, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.021, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.b
  br i1 %.not, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8
  %.pre25 = load ptr, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.t = phi ptr [ %.pre25, %.loopexit.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.u = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %.not1922 = icmp eq ptr %i.u, %i.t
  br i1 %.not1922, label %._crit_edge, label %.lr.ph24

.lr.ph24:                                         ; preds = %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %.loopexit
  ret void

bb.c:                                             ; preds = %.lr.ph24, %bb.e
  %.01823 = phi ptr [ %i.u, %.lr.ph24 ], [ %i.aj, %bb.e ] ; 2 uses
  %.sroa.02.0.copyload = load i32, ptr %.01823, align 4 ; 2 uses
  %i.w = lshr i32 %.sroa.02.0.copyload, 4
  %i.x = zext nneg i32 %i.w to i64
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !range !7, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = zext i32 %.sroa.02.0.copyload to i64
  %i.ah = add i64 %i.af, %i.ag
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer46RecursivelyMarkAllStringConcatInputsAsEscapingEPKNS2_14StringConcatOpE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef nonnull %i.ai)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.01823, i64 4 ; 2 uses
  %.not19 = icmp eq ptr %i.aj, %i.t
  br i1 %.not19, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer31ComputeFrameStatesToReconstructEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.b, %i.d
  br i1 %.not30, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre = load ptr, ptr %0, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph32, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit
  %i.f = phi ptr [ %.pre, %.lr.ph32 ], [ %i.bc, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit ] ; 3 uses
  %.031 = phi ptr [ %i.b, %.lr.ph32 ], [ %i.bd, %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit ] ; 2 uses
  %.sroa.011.0.copyload = load i32, ptr %.031, align 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = zext i32 %.sroa.011.0.copyload to i64    ; 2 uses
  %i.k = add i64 %i.i, %i.j
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.o = load i16, ptr %i.n, align 2              ; 2 uses
  %i.p = zext i16 %i.o to i64
  %.idx = shl nuw nsw i64 %i.p, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %.not2228 = icmp eq i16 %i.o, 0
  br i1 %.not2228, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.b
  %i.r = load ptr, ptr %i.e, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.a, %bb.e
  %.02129 = phi ptr [ %i.bb, %bb.e ], [ %i.m, %.lr.ph.a ] ; 2 uses
  %.sroa.03.0.copyload = load i32, ptr %.02129, align 4 ; 2 uses
  %i.s = zext i32 %.sroa.03.0.copyload to i64
  %i.t = add i64 %i.s, %i.i
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i8, ptr %i.u, align 4
  %i.w = icmp eq i8 %i.v, -104
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = lshr i32 %.sroa.03.0.copyload, 4
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !range !7, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.d
  %i.ac = lshr i32 %.sroa.011.0.copyload, 4
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ad
  store i8 1, ptr %i.ae, align 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = add i64 %i.ai, %i.j
  %.010.i = inttoptr i64 %i.aj to ptr             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %i.al = load i8, ptr %i.ak, align 4, !range !7, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.011.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.010.i, %.critedge ]
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.an, align 4 ; 2 uses
  %i.ao = lshr i32 %.sroa.0.0.copyload.i.i.i, 4
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.e, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 1, ptr %i.ar, align 1
  %i.as = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.ax = add i64 %i.av, %i.aw
  %.0.i = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.az = load i8, ptr %i.ay, align 4, !range !7, !noundef !5
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit, !llvm.loop !8

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.02129, i64 4 ; 2 uses
  %.not22 = icmp eq ptr %i.bb, %i.q
  br i1 %.not22, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit, label %bb.c

_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer32RecursiveMarkAsShouldReconstructENS2_1VINS2_10FrameStateEEE.exit: ; preds = %bb.e, %.lr.ph.i, %bb.b, %.critedge
  %i.bc = phi ptr [ %i.as, %.lr.ph.i ], [ %i.af, %.critedge ], [ %i.f, %bb.b ], [ %i.f, %bb.e ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer33MarkNextFrameStateInputAsEscapingEPNS2_14FrameStateData8IteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %cond = icmp eq i8 %i.b, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store ptr %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store ptr %i.p, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8
  %i.t = lshr i32 %i.o, 4
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 1, ptr %i.x, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer17ProcessFrameStateENS2_1VINS2_10FrameStateEEERKNS2_12FrameStateOpE(ptr noundef nonnull align 8 dereferenceable(116) %0, i32 %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2
  %i.d = zext i16 %i.c to i32
  %i.e = load i32, ptr %i.a, align 8
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.e, i32 %i.d)
  store i32 %.sroa.speculated, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i16, ptr %i.b, align 2              ; 2 uses
  %i.h = zext i16 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.not36 = icmp eq i16 %i.g, 0
  br i1 %.not36, label %.loopexit, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  br label %.critedge

bb.b:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %.037, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.i
  br i1 %.not, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.b
  %.037 = phi ptr [ %i.f, %.critedge.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %.sroa.02.0.copyload = load i32, ptr %.037, align 4
  %i.o = zext i32 %.sroa.02.0.copyload to i64
  %i.p = add i64 %i.m, %i.o
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i8, ptr %i.q, align 4
  %i.s = icmp eq i8 %i.r, -104
  br i1 %i.s, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE9push_backERKS6_.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = add nsw i64 %i.ae, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.af)
  %.pre.i = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE9push_backERKS6_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE9push_backERKS6_.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi ptr [ %i.u, %bb.c ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store ptr %i.ah, ptr %i.t, align 8
  store i32 %1, ptr %i.ag, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft1VINS3_10FrameStateEEEE9push_backERKS6_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !18 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1
  %cond.i = icmp eq i8 %i.am, 0
  br i1 %cond.i, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer33MarkNextFrameStateInputAsEscapingEPNS2_14FrameStateData8IteratorE.exit, label %_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer33MarkNextFrameStateInputAsEscapingEPNS2_14FrameStateData8IteratorE.exit17

_ZN2v88internal8compiler10turboshaft20StringEscapeAnalyzer33MarkNextFrameStateInputAsEscapingEPNS2_14FrameStateData8IteratorE.exit: ; preds = %.loopexit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i8, ptr %i.an, align 4, !range !7, !noundef !5
  %i.ap = trunc nuw i8 %i.ao to i1
  %.sroa.0.0.v.i = select i1 %i.ap, i64 20, i64 16
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.v.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ar = load i32, ptr %.sroa.0.0.i, align 4
  %i.as = lshr i32 %i.ar, 4
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 1, ptr %i.aw, align 1
end_hunk_1
