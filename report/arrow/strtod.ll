inline.NumInlined: 164
inline.NumDeleted: 58
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow_vendored::double_conversion::DiyFp" = type <{ i64, i32, [4 x i8] }>
%"class.arrow_vendored::double_conversion::Bignum" = type { i16, i16, [128 x i32] }

@_ZN14arrow_vendored17double_conversionL19exact_powers_of_tenE = internal unnamed_addr constant [23 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21, double 1.000000e+22], align 16
@switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd = private unnamed_addr constant [7 x i32] [i32 4, i32 7, i32 10, i32 14, i32 17, i32 20, i32 24], align 4
@switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd.1 = private unnamed_addr constant [7 x i64] [i64 2684354560, i64 3355443200, i64 4194304000, i64 2621440000, i64 3276800000, i64 4096000000, i64 2560000000], align 8

; Function Attrs: mustprogress uwtable
define noundef double @_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd(ptr %0, i32 %1, i32 noundef %2, ptr noundef %i.a)
  %i.c = load double, ptr %i.a, align 8, !tbaa !7 ; 6 uses
  br i1 %i.b, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = bitcast double %i.c to i64               ; 11 uses
  %i.e = and i64 %i.d, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.g = shl i64 %i.d, 1
  %i.h = and i64 %i.g, 9007199254740990
  %i.i = select i1 %i.f, i64 1, i64 9007199254740993
  %i.j = or disjoint i64 %i.i, %i.h
  %i.k = lshr i64 %i.d, 52
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 2047
  %i.n = add nsw i32 %i.m, -1076
  %i.o = select i1 %i.f, i32 -1075, i32 %i.n
  %i.p = tail call fastcc noundef i32 @_ZN14arrow_vendored17double_conversionL22CompareBufferWithDiyFpENS0_6VectorIKcEEiNS0_5DiyFpE(ptr %0, i32 %1, i32 noundef %2, i64 %i.j, i32 %i.o) ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.d, 9218868437227405312
  br i1 %i.r, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp slt i64 %i.d, 0
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.t, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add i64 %i.d, -1
  %i.v = bitcast i64 %i.u to double
  br label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

bb.h:                                             ; preds = %bb.e
  %i.w = add nuw i64 %i.d, 1
  %i.x = bitcast i64 %i.w to double
  br label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

bb.i:                                             ; preds = %bb.c
  %i.y = and i64 %i.d, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp slt i64 %i.d, 0
  br i1 %i.aa, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ab = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.ab, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i64 %i.d, -1
  %i.ad = bitcast i64 %i.ac to double
  br label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

bb.m:                                             ; preds = %bb.j
  %i.ae = add nuw i64 %i.d, 1
  %i.af = bitcast i64 %i.ae to double
  br label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit: ; preds = %bb.a, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.1 = phi double [ %i.ad, %bb.l ], [ %i.c, %bb.i ], [ %i.c, %bb.b ], [ +inf, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.x, %bb.h ], [ %i.v, %bb.g ], [ 0.000000e+00, %bb.k ], [ %i.af, %bb.m ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret double %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd(ptr nofree readonly captures(none) %0, i32 %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.arrow_vendored::double_conversion::DiyFp", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, %1                       ; 3 uses
  %i.d = icmp sgt i32 %i.c, 309
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.c, -323
  br i1 %i.e, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %1, 16
  br i1 %i.f, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %bb.d
  %or.cond31.i = icmp ugt i32 %2, -23
  br i1 %or.cond31.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = sub nsw i32 0, %2
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph.preheader.i.i, label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.09.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.o, %.lr.ph.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = sext i8 %i.k to i64
  %i.m = mul nuw i64 %.09.i.i, 10
  %i.n = add i64 %i.m, -48
  %i.o = add i64 %i.n, %i.l                       ; 3 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next.i.i, %i.i
  %i.q = icmp ult i64 %i.o, 1844674407370955161
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !10

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.s = uitofp i64 %i.o to double
  br label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i

_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.f ], [ %i.s, %._crit_edge.loopexit.i.i ]
  %i.t = zext nneg i32 %i.g to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored17double_conversionL19exact_powers_of_tenE, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !7
  %i.w = fdiv double %.0.lcssa.i.i, %i.v
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %or.cond.i = icmp ult i32 %2, 23
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = icmp sgt i32 %1, 0
  br i1 %i.x, label %.lr.ph.preheader.i34.i, label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit40.i

.lr.ph.preheader.i34.i:                           ; preds = %bb.h
  %i.y = zext nneg i32 %1 to i64
  br label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %.lr.ph.i35.i, %.lr.ph.preheader.i34.i
  %indvars.iv.i36.i = phi i64 [ 0, %.lr.ph.preheader.i34.i ], [ %indvars.iv.next.i38.i, %.lr.ph.i35.i ] ; 2 uses
  %.09.i37.i = phi i64 [ 0, %.lr.ph.preheader.i34.i ], [ %i.ae, %.lr.ph.i35.i ]
  %indvars.iv.next.i38.i = add nuw nsw i64 %indvars.iv.i36.i, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i36.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = sext i8 %i.aa to i64
  %i.ac = mul nuw i64 %.09.i37.i, 10
  %i.ad = add i64 %i.ac, -48
  %i.ae = add i64 %i.ad, %i.ab                    ; 3 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next.i38.i, %i.y
  %i.ag = icmp ult i64 %i.ae, 1844674407370955161
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph.i35.i, label %._crit_edge.loopexit.i39.i, !llvm.loop !10

._crit_edge.loopexit.i39.i:                       ; preds = %.lr.ph.i35.i
  %i.ai = uitofp i64 %i.ae to double
  br label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit40.i

_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit40.i: ; preds = %._crit_edge.loopexit.i39.i, %bb.h
  %.0.lcssa.i33.i = phi double [ 0.000000e+00, %bb.h ], [ %i.ai, %._crit_edge.loopexit.i39.i ]
  %i.aj = zext nneg i32 %2 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored17double_conversionL19exact_powers_of_tenE, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !7
  %i.am = fmul double %.0.lcssa.i33.i, %i.al
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.an = icmp sgt i32 %2, -1
  %i.ao = sub nsw i32 15, %1                      ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nsw i32 %2, %i.ao                   ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 23
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.lr.ph.preheader.i43.i, label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit49.i

.lr.ph.preheader.i43.i:                           ; preds = %bb.k
  %i.as = zext nneg i32 %1 to i64
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i, %.lr.ph.preheader.i43.i
  %indvars.iv.i45.i = phi i64 [ 0, %.lr.ph.preheader.i43.i ], [ %indvars.iv.next.i47.i, %.lr.ph.i44.i ] ; 2 uses
  %.09.i46.i = phi i64 [ 0, %.lr.ph.preheader.i43.i ], [ %i.ay, %.lr.ph.i44.i ]
  %indvars.iv.next.i47.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i45.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = sext i8 %i.au to i64
  %i.aw = mul nuw i64 %.09.i46.i, 10
  %i.ax = add i64 %i.aw, -48
  %i.ay = add i64 %i.ax, %i.av                    ; 3 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next.i47.i, %i.as
  %i.ba = icmp ult i64 %i.ay, 1844674407370955161
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %.lr.ph.i44.i, label %._crit_edge.loopexit.i48.i, !llvm.loop !10

._crit_edge.loopexit.i48.i:                       ; preds = %.lr.ph.i44.i
  %i.bc = uitofp i64 %i.ay to double
  br label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit49.i

_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit49.i: ; preds = %._crit_edge.loopexit.i48.i, %bb.k
  %.0.lcssa.i42.i = phi double [ 0.000000e+00, %bb.k ], [ %i.bc, %._crit_edge.loopexit.i48.i ]
  %i.bd = zext nneg i32 %i.ao to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN14arrow_vendored17double_conversionL19exact_powers_of_tenE, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !7
  %i.bg = fmul double %.0.lcssa.i42.i, %i.bf
  %i.bh = sext i32 %i.ap to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr @_ZN14arrow_vendored17double_conversionL19exact_powers_of_tenE, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !7
  %i.bk = fmul double %i.bg, %i.bj
  br label %.sink.split

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.bl = icmp sgt i32 %1, 0
  br i1 %i.bl, label %.lr.ph.preheader.i.i.i, label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d, %bb.l
  %i.bm = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.bs, %.lr.ph.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = sext i8 %i.bo to i64
  %i.bq = mul nuw i64 %.09.i.i.i, 10
  %i.br = add i64 %i.bq, -48
  %i.bs = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.bm
  %i.bu = icmp ult i64 %i.bs, 1844674407370955161
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !10

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.bw = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i

_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i: ; preds = %._crit_edge.loopexit.i.i.i, %bb.l
  %.07.lcssa.i.i.i = phi i32 [ 0, %bb.l ], [ %i.bw, %._crit_edge.loopexit.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.l ], [ %i.bs, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %i.bx = icmp eq i32 %1, %.07.lcssa.i.i.i
  br i1 %i.bx, label %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i, label %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i

_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i: ; preds = %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i
  %i.by = zext nneg i32 %.07.lcssa.i.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = icmp sgt i8 %i.ca, 52
  %i.cc = zext i1 %i.cb to i64
  %spec.select.i.i = add i64 %.0.lcssa.i.i.i, %i.cc
  %i.cd = sub i32 %i.c, %.07.lcssa.i.i.i
  br label %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i

_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i: ; preds = %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i
  %i.ce = phi i32 [ %i.cd, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i ], [ %2, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i ] ; 4 uses
  %spec.select.sink.i102.i = phi i64 [ %spec.select.i.i, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i ], [ %.0.lcssa.i.i.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i ] ; 3 uses
  %i.cf = phi i64 [ 4, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.i ], [ 0, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i.i ]
  %i.cg = icmp ult i64 %spec.select.sink.i102.i, 18014398509481984
  br i1 %i.cg, label %.lr.ph.i.i15, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i15, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i
  %.08.lcssa.i.i = phi i32 [ 0, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i ], [ %i.cj, %.lr.ph.i.i15 ] ; 2 uses
  %.0.lcssa.i.i13 = phi i64 [ %spec.select.sink.i102.i, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i ], [ %i.ci, %.lr.ph.i.i15 ] ; 3 uses
  %i.ch = icmp sgt i64 %.0.lcssa.i.i13, -1
  br i1 %i.ch, label %.lr.ph15.i.i, label %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i

.lr.ph.i.i15:                                     ; preds = %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i, %.lr.ph.i.i15
  %.011.i.i = phi i64 [ %i.ci, %.lr.ph.i.i15 ], [ %spec.select.sink.i102.i, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i ] ; 2 uses
  %.0810.i.i = phi i32 [ %i.cj, %.lr.ph.i.i15 ], [ 0, %_ZN14arrow_vendored17double_conversionL9ReadDiyFpENS0_6VectorIKcEEPNS0_5DiyFpEPi.exit.thread.i ]
  %i.ci = shl nuw i64 %.011.i.i, 10               ; 2 uses
  %i.cj = add nsw i32 %.0810.i.i, -10             ; 2 uses
  %i.ck = icmp ult i64 %.011.i.i, 17592186044416
  br i1 %i.ck, label %.lr.ph.i.i15, label %.preheader.i.i, !llvm.loop !12

.lr.ph15.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph15.i.i
  %.114.i.i = phi i64 [ %i.cl, %.lr.ph15.i.i ], [ %.0.lcssa.i.i13, %.preheader.i.i ]
  %.1913.i.i = phi i32 [ %i.cm, %.lr.ph15.i.i ], [ %.08.lcssa.i.i, %.preheader.i.i ]
  %i.cl = shl nuw i64 %.114.i.i, 1                ; 3 uses
  %i.cm = add nsw i32 %.1913.i.i, -1              ; 2 uses
  %i.cn = icmp sgt i64 %i.cl, -1
  br i1 %i.cn, label %.lr.ph15.i.i, label %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i, !llvm.loop !13

_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i: ; preds = %.lr.ph15.i.i, %.preheader.i.i
  %.19.lcssa.i.i = phi i32 [ %.08.lcssa.i.i, %.preheader.i.i ], [ %i.cm, %.lr.ph15.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i64 [ %.0.lcssa.i.i13, %.preheader.i.i ], [ %i.cl, %.lr.ph15.i.i ] ; 3 uses
  %i.co = sub nsw i32 0, %.19.lcssa.i.i
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl i64 %i.cf, %i.cp                    ; 3 uses
  %i.cr = icmp slt i32 %i.ce, -348
  br i1 %i.cr, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.cs, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @_ZN14arrow_vendored17double_conversion16PowersOfTenCache32GetCachedPowerForDecimalExponentEiPNS0_5DiyFpEPi(i32 noundef %i.ce, ptr noundef nonnull %4, ptr noundef nonnull %i.a)
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i = icmp eq i32 %i.ct, %i.ce
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = sub nsw i32 %i.ce, %i.ct                ; 3 uses
  %i.cv = icmp ult i32 %i.cu, 8
  br i1 %i.cv, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @abort() #6
  unreachable

switch.lookup:                                    ; preds = %bb.n
  %switch.tableidx = add nsw i32 %i.cu, -1        ; 2 uses
  %i.cw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd, i64 %i.cw
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cx = zext nneg i32 %switch.tableidx to i64
  %switch.gep96 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd.1, i64 %i.cx
  %switch.load97 = load i64, ptr %switch.gep96, align 8 ; 2 uses
  %i.cy = lshr i64 %.1.lcssa.i.i, 32
  %i.cz = and i64 %.1.lcssa.i.i, 4294967295
  %i.da = mul nuw i64 %switch.load97, %i.cy
  %i.db = mul nuw i64 %switch.load97, %i.cz       ; 2 uses
  %i.dc = and i64 %i.db, 2147483648
  %i.dd = add nuw nsw i64 %i.dc, 2147483648
  %i.de = add nsw i32 %switch.load, %.19.lcssa.i.i
  %i.df = lshr i64 %i.db, 32
  %i.dg = add nuw i64 %i.df, %i.da
  %i.dh = lshr i64 %i.dd, 32
  %i.di = add nuw i64 %i.dg, %i.dh
  %i.dj = sub nsw i32 19, %1
  %.not59.i = icmp slt i32 %i.dj, %i.cu
  %i.dk = add i64 %i.cq, 4
  %spec.select.i = select i1 %.not59.i, i64 %i.dk, i64 %i.cq
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup, %bb.m
  %.sroa.080.0.i = phi i64 [ %.1.lcssa.i.i, %bb.m ], [ %i.di, %switch.lookup ] ; 2 uses
  %.sroa.16.0.i = phi i32 [ %.19.lcssa.i.i, %bb.m ], [ %i.de, %switch.lookup ]
  %.153.i = phi i64 [ %i.cq, %bb.m ], [ %spec.select.i, %switch.lookup ] ; 2 uses
  %i.dl = lshr i64 %.sroa.080.0.i, 32             ; 2 uses
  %i.dm = and i64 %.sroa.080.0.i, 4294967295      ; 2 uses
  %i.dn = load i64, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.do = lshr i64 %i.dn, 32                      ; 2 uses
  %i.dp = and i64 %i.dn, 4294967295               ; 2 uses
  %i.dq = mul nuw i64 %i.do, %i.dl
  %i.dr = mul nuw i64 %i.do, %i.dm                ; 2 uses
  %i.ds = mul nuw i64 %i.dp, %i.dl                ; 2 uses
  %i.dt = mul nuw i64 %i.dp, %i.dm
  %i.du = lshr i64 %i.dt, 32
  %i.dv = and i64 %i.ds, 4294967295
  %i.dw = and i64 %i.dr, 4294967295
  %i.dx = add nuw nsw i64 %i.dv, 2147483648
  %i.dy = add nuw nsw i64 %i.dx, %i.du
  %i.dz = add nuw nsw i64 %i.dy, %i.dw
  %i.ea = load i32, ptr %i.cs, align 8, !tbaa !17
  %i.eb = add i32 %.sroa.16.0.i, 64
  %i.ec = add i32 %i.eb, %i.ea                    ; 3 uses
  %i.ed = lshr i64 %i.ds, 32
  %i.ee = add nuw i64 %i.ed, %i.dq
  %i.ef = lshr i64 %i.dr, 32
  %i.eg = add nuw i64 %i.ee, %i.ef
  %i.eh = lshr i64 %i.dz, 32
  %i.ei = add i64 %i.eg, %i.eh                    ; 3 uses
  %.not60.i = icmp eq i64 %.153.i, 0
  %i.ej = select i1 %.not60.i, i64 8, i64 9
  %i.ek = add i64 %i.ej, %.153.i
  %i.el = icmp ult i64 %i.ei, 18014398509481984
  br i1 %i.el, label %.lr.ph.i70.i, label %.preheader.i62.i

.preheader.i62.i:                                 ; preds = %.lr.ph.i70.i, %bb.p
  %.08.lcssa.i63.i = phi i32 [ %i.ec, %bb.p ], [ %i.eo, %.lr.ph.i70.i ] ; 2 uses
  %.0.lcssa.i64.i = phi i64 [ %i.ei, %bb.p ], [ %i.en, %.lr.ph.i70.i ] ; 3 uses
  %i.em = icmp sgt i64 %.0.lcssa.i64.i, -1
  br i1 %i.em, label %.lr.ph15.i67.i, label %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i

.lr.ph.i70.i:                                     ; preds = %bb.p, %.lr.ph.i70.i
  %.011.i71.i = phi i64 [ %i.en, %.lr.ph.i70.i ], [ %i.ei, %bb.p ] ; 2 uses
  %.0810.i72.i = phi i32 [ %i.eo, %.lr.ph.i70.i ], [ %i.ec, %bb.p ]
  %i.en = shl nuw i64 %.011.i71.i, 10             ; 2 uses
  %i.eo = add nsw i32 %.0810.i72.i, -10           ; 2 uses
  %i.ep = icmp ult i64 %.011.i71.i, 17592186044416
  br i1 %i.ep, label %.lr.ph.i70.i, label %.preheader.i62.i, !llvm.loop !12

.lr.ph15.i67.i:                                   ; preds = %.preheader.i62.i, %.lr.ph15.i67.i
  %.114.i68.i = phi i64 [ %i.eq, %.lr.ph15.i67.i ], [ %.0.lcssa.i64.i, %.preheader.i62.i ]
  %.1913.i69.i = phi i32 [ %i.er, %.lr.ph15.i67.i ], [ %.08.lcssa.i63.i, %.preheader.i62.i ]
  %i.eq = shl nuw i64 %.114.i68.i, 1              ; 3 uses
  %i.er = add nsw i32 %.1913.i69.i, -1            ; 2 uses
  %i.es = icmp sgt i64 %i.eq, -1
  br i1 %i.es, label %.lr.ph15.i67.i, label %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i, !llvm.loop !13

_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i: ; preds = %.lr.ph15.i67.i, %.preheader.i62.i
  %.19.lcssa.i65.i = phi i32 [ %.08.lcssa.i63.i, %.preheader.i62.i ], [ %i.er, %.lr.ph15.i67.i ] ; 5 uses
  %.1.lcssa.i66.i = phi i64 [ %.0.lcssa.i64.i, %.preheader.i62.i ], [ %i.eq, %.lr.ph15.i67.i ] ; 2 uses
  %i.et = sub nsw i32 %i.ec, %.19.lcssa.i65.i
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl i64 %i.ek, %i.eu                    ; 2 uses
  %i.ew = add nsw i32 %.19.lcssa.i65.i, 64
  %i.ex = icmp sgt i32 %.19.lcssa.i65.i, -1086
  %spec.select.i74.i = call i32 @llvm.usub.sat.i32(i32 %i.ew, i32 -1074)
  %.0.i.i = select i1 %i.ex, i32 53, i32 %spec.select.i74.i ; 3 uses
  %i.ey = sub nsw i32 64, %.0.i.i
  %i.ez = icmp samesign ult i32 %.0.i.i, 4
  br i1 %i.ez, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i
  %i.fa = sub nuw nsw i32 4, %.0.i.i              ; 2 uses
  %i.fb = zext nneg i32 %i.fa to i64              ; 2 uses
  %i.fc = lshr i64 %.1.lcssa.i66.i, %i.fb
  %i.fd = add nsw i32 %i.fa, %.19.lcssa.i65.i
  %i.fe = lshr i64 %i.ev, %i.fb
  %i.ff = add nuw i64 %i.fe, 9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i
  %.sroa.080.1.i = phi i64 [ %i.fc, %bb.q ], [ %.1.lcssa.i66.i, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i ] ; 2 uses
  %.sroa.16.1.i = phi i32 [ %i.fd, %bb.q ], [ %.19.lcssa.i65.i, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i ]
  %.054.i = phi i32 [ 60, %bb.q ], [ %i.ey, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i ] ; 3 uses
  %.2.i14 = phi i64 [ %i.ff, %bb.q ], [ %i.ev, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit73.i ] ; 2 uses
  %i.fg = zext i32 %.054.i to i64                 ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.fg
  %i.fh = xor i64 %notmask.i, -1
  %i.fi = and i64 %.sroa.080.1.i, %i.fh
  %i.fj = add nsw i32 %.054.i, -1
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl i64 %i.fi, 3                        ; 2 uses
  %i.fm = shl i64 8, %i.fk                        ; 2 uses
  %i.fn = lshr i64 %.sroa.080.1.i, %i.fg
  %i.fo = add nsw i32 %.054.i, %.sroa.16.1.i      ; 2 uses
  %i.fp = add i64 %i.fm, %.2.i14
  %.not61.i = icmp uge i64 %i.fl, %i.fp           ; 2 uses
  %i.fq = zext i1 %.not61.i to i64
  %spec.select105.i = add i64 %i.fn, %i.fq        ; 3 uses
  %i.fr = icmp ugt i64 %spec.select105.i, 9007199254740991
  br i1 %i.fr, label %.lr.ph.i.i75.i, label %._crit_edge.i.i.i

.lr.ph.i.i75.i:                                   ; preds = %bb.r, %.lr.ph.i.i75.i
  %.01521.i.i.i = phi i32 [ %i.ft, %.lr.ph.i.i75.i ], [ %i.fo, %bb.r ]
  %.01620.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i75.i ], [ %spec.select105.i, %bb.r ] ; 2 uses
  %i.fs = lshr i64 %.01620.i.i.i, 1               ; 2 uses
  %i.ft = add nsw i32 %.01521.i.i.i, 1            ; 2 uses
  %i.fu = icmp ugt i64 %.01620.i.i.i, 18014398509481983
  br i1 %i.fu, label %.lr.ph.i.i75.i, label %._crit_edge.i.i.i, !llvm.loop !18

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i75.i, %bb.r
  %.016.lcssa.i.i.i = phi i64 [ %spec.select105.i, %bb.r ], [ %i.fs, %.lr.ph.i.i75.i ] ; 3 uses
  %.015.lcssa.i.i.i = phi i32 [ %i.fo, %bb.r ], [ %i.ft, %.lr.ph.i.i75.i ] ; 5 uses
  %i.fv = icmp sgt i32 %.015.lcssa.i.i.i, 971
  br i1 %i.fv, label %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.fw = icmp slt i32 %.015.lcssa.i.i.i, -1074
  br i1 %i.fw, label %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.s
  %i.fx = icmp ne i32 %.015.lcssa.i.i.i, -1074
  %i.fy = and i64 %.016.lcssa.i.i.i, 4503599627370496
  %i.fz = icmp eq i64 %i.fy, 0                    ; 2 uses
  %i.ga = and i1 %i.fx, %i.fz
  br i1 %i.ga, label %.lr.ph25.i.i.i, label %._crit_edge26.i.i.i

.lr.ph25.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph25.i.i.i
  %.124.i.i.i = phi i32 [ %i.gc, %.lr.ph25.i.i.i ], [ %.015.lcssa.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.11723.i.i.i = phi i64 [ %i.gb, %.lr.ph25.i.i.i ], [ %.016.lcssa.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.gb = shl i64 %.11723.i.i.i, 1                ; 2 uses
  %i.gc = add nsw i32 %.124.i.i.i, -1             ; 2 uses
  %i.gd = icmp sgt i32 %.124.i.i.i, -1073
  %i.ge = and i64 %.11723.i.i.i, 2251799813685248
  %i.gf = icmp eq i64 %i.ge, 0                    ; 2 uses
  %i.gg = select i1 %i.gd, i1 %i.gf, i1 false
  br i1 %i.gg, label %.lr.ph25.i.i.i, label %._crit_edge26.i.i.i, !llvm.loop !19

._crit_edge26.i.i.i:                              ; preds = %.lr.ph25.i.i.i, %.preheader.i.i.i
  %.117.lcssa.i.i.i = phi i64 [ %.016.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.gb, %.lr.ph25.i.i.i ]
  %.1.lcssa.i.i.i = phi i32 [ %.015.lcssa.i.i.i, %.preheader.i.i.i ], [ %i.gc, %.lr.ph25.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.fz, %.preheader.i.i.i ], [ %i.gf, %.lr.ph25.i.i.i ]
  %i.gh = icmp eq i32 %.1.lcssa.i.i.i, -1074
  %brmerge.not.i.i.i = select i1 %i.gh, i1 %.lcssa.i.i.i, i1 false
  %i.gi = add nsw i32 %.1.lcssa.i.i.i, 1075
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 52
  %.0.i.i.i = select i1 %brmerge.not.i.i.i, i64 0, i64 %i.gk
  %i.gl = and i64 %.117.lcssa.i.i.i, 4503599627370495
  %i.gm = or disjoint i64 %.0.i.i.i, %i.gl
  %i.gn = bitcast i64 %i.gm to double
  br label %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit

_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit: ; preds = %._crit_edge.i.i.i, %bb.s, %._crit_edge26.i.i.i
  %i.go = phi double [ %i.gn, %._crit_edge26.i.i.i ], [ +inf, %._crit_edge.i.i.i ], [ 0.000000e+00, %bb.s ] ; 2 uses
  store double %i.go, ptr %3, align 8, !tbaa !7
  %i.gp = sub i64 %i.fm, %.2.i14
  %i.gq = icmp uge i64 %i.gp, %i.fl
  %or.cond.not.i = or i1 %i.gq, %.not61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.gr = fcmp oeq double %i.go, +inf
  %spec.select = select i1 %or.cond.not.i, i1 true, i1 %i.gr
  br label %bb.t

.sink.split:                                      ; preds = %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit49.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit40.i, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i, %bb.c, %bb.b, %bb.a
  %.sink = phi double [ %i.w, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit.i ], [ 0.000000e+00, %bb.c ], [ +inf, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.bk, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit49.i ], [ %i.am, %_ZN14arrow_vendored17double_conversionL10ReadUint64ENS0_6VectorIKcEEPi.exit40.i ], [ 0.000000e+00, %_ZN14arrow_vendored17double_conversion5DiyFp9NormalizeEv.exit.i ]
  store double %.sink, ptr %3, align 8, !tbaa !7
  br label %bb.t

bb.t:                                             ; preds = %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit, %.sink.split
  %.0 = phi i1 [ true, %.sink.split ], [ %spec.select, %_ZN14arrow_vendored17double_conversionL11DiyFpStrtodENS0_6VectorIKcEEiPd.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN14arrow_vendored17double_conversionL22CompareBufferWithDiyFpENS0_6VectorIKcEEiNS0_5DiyFpE(ptr %0, i32 %1, i32 noundef %2, i64 %3, i32 %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 8 uses
  %6 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i16 0, ptr %5, align 4, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.a, align 2, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
end_hunk_0
