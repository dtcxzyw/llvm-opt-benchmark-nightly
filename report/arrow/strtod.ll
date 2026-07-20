inline.NumInlined: 164
inline.NumDeleted: 58
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow_vendored::double_conversion::DiyFp" = type <{ i64, i32, [4 x i8] }>
%"class.arrow_vendored::double_conversion::Bignum" = type { i16, i16, [128 x i32] }

@_ZN14arrow_vendored17double_conversionL19exact_powers_of_tenE = internal unnamed_addr constant [23 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21, double 1.000000e+22], align 16
@switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd = private unnamed_addr constant [7 x i8] c"\04\07\0A\0E\11\14\18", align 4
@switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd.1 = private unnamed_addr constant [7 x i32] [i32 -1610612736, i32 -939524096, i32 -100663296, i32 -1673527296, i32 -1018167296, i32 -198967296, i32 -1734967296], align 8

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
  %3 = trunc i64 %i.d to i1
  br i1 %3, label %bb.j, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

bb.j:                                             ; preds = %bb.i
  %i.y = icmp slt i64 %i.d, 0
  br i1 %i.y, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.z = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.z, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = add nsw i64 %i.d, -1
  %i.ab = bitcast i64 %i.aa to double
  br label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

bb.m:                                             ; preds = %bb.j
  %i.ac = add nuw i64 %i.d, 1
  %i.ad = bitcast i64 %i.ac to double
  br label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit: ; preds = %bb.a, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.1 = phi double [ %i.ab, %bb.l ], [ %i.c, %bb.i ], [ %i.c, %bb.b ], [ +inf, %bb.d ], [ 0.000000e+00, %bb.f ], [ %i.x, %bb.h ], [ %i.v, %bb.g ], [ 0.000000e+00, %bb.k ], [ %i.ad, %bb.m ], [ %i.c, %bb.a ]
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

end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd:bb.a
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
  store i16 0, ptr %6, align 4, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.b, align 2, !tbaa !23
  call void @_ZN14arrow_vendored17double_conversion6Bignum19AssignDecimalStringENS0_6VectorIKcEE(ptr noundef nonnull align 4 dereferenceable(516) %5, ptr %0, i32 %1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %6, i64 noundef %3)
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %5, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = sub nsw i32 0, %2
  call void @_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516) %6, i32 noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %6, i32 noundef %4)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = sub nsw i32 0, %4
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %5, i32 noundef %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %5, ptr noundef nonnull align 4 dereferenceable(516) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN14arrow_vendored17double_conversion6StrtodENS0_6VectorIKcEEi(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca [780 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %.not.i.i = icmp eq i8 %i.e, 48
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i, label %.lr.ph.i.i, !llvm.loop !24

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.g = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.h = sub nsw i32 %1, %i.g
  br label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i

_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i: ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.09.1.i.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ], [ %0, %bb.b ] ; 4 uses
  %.sroa.3.1.i.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.i = icmp sgt i32 %.sroa.3.1.i.i, 0
  br i1 %i.i, label %.lr.ph, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i
  %i.j = zext nneg i32 %.sroa.3.1.i.i to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.k = trunc nuw i64 %i.o to i32                ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i, !llvm.loop !25

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i: ; preds = %bb.d, %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i
  %i.m = add nsw i32 %.sroa.3.1.i.i, %2
  br label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi i32 [ %.sroa.3.1.i.i, %.lr.ph ], [ %i.k, %bb.d ] ; 3 uses
  %indvars.iv.i22.i26 = phi i64 [ %i.j, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %i.o = add nsw i64 %indvars.iv.i22.i26, -1      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.09.1.i.i, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %.not.i26.i = icmp eq i8 %i.q, 48
  br i1 %.not.i26.i, label %bb.d, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i, !llvm.loop !25

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i: ; preds = %bb.e
  %i.r = sub nsw i32 %.sroa.3.1.i.i, %i.n
  %i.s = add nsw i32 %i.r, %2                     ; 2 uses
  %i.t = icmp ugt i64 %indvars.iv.i22.i26, 780
  br i1 %i.t, label %.preheader.i.preheader, label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

.preheader.i.preheader:                           ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(779) %i.b, ptr noundef nonnull align 1 dereferenceable(779) %.sroa.09.1.i.i, i64 779, i1 false), !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 779
  store i8 49, ptr %i.u, align 1, !tbaa !9
  %i.v = add nsw i32 %i.n, -780
  %i.w = add nsw i32 %i.v, %i.s
  br label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit: ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i, %.preheader.i.preheader
  %.sroa.6.0 = phi i32 [ 780, %.preheader.i.preheader ], [ 0, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %i.n, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.b, %.preheader.i.preheader ], [ %.sroa.09.1.i.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %.sroa.09.1.i.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ] ; 2 uses
  %.0 = phi i32 [ %i.w, %.preheader.i.preheader ], [ %i.m, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %i.s, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.x = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd(ptr %.sroa.0.0, i32 %.sroa.6.0, i32 noundef %.0, ptr noundef %i.a)
  %i.y = load double, ptr %i.a, align 8, !tbaa !7 ; 6 uses
  br i1 %i.x, label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit, label %bb.f

bb.f:                                             ; preds = %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit
  %i.z = bitcast double %i.y to i64               ; 11 uses
  %i.aa = and i64 %i.z, 9218868437227405312
  %i.ab = icmp eq i64 %i.aa, 0                    ; 2 uses
  %i.ac = shl i64 %i.z, 1
  %i.ad = and i64 %i.ac, 9007199254740990
  %i.ae = select i1 %i.ab, i64 1, i64 9007199254740993
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = lshr i64 %i.z, 52
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 2047
  %i.aj = add nsw i32 %i.ai, -1076
  %i.ak = select i1 %i.ab, i32 -1075, i32 %i.aj
  %i.al = call fastcc noundef i32 @_ZN14arrow_vendored17double_conversionL22CompareBufferWithDiyFpENS0_6VectorIKcEEiNS0_5DiyFpE(ptr %.sroa.0.0, i32 %.sroa.6.0, i32 noundef %.0, i64 %i.af, i32 %i.ak) ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq i64 %i.z, 9218868437227405312
  br i1 %i.an, label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp slt i64 %i.z, 0
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = fcmp oeq double %i.y, 0.000000e+00
  br i1 %i.ap, label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add i64 %i.z, -1
  %i.ar = bitcast i64 %i.aq to double
  br label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit

bb.l:                                             ; preds = %bb.i
  %i.as = add nuw i64 %i.z, 1
  %i.at = bitcast i64 %i.as to double
  br label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit

bb.m:                                             ; preds = %bb.g
  %3 = trunc i64 %i.z to i1
  br i1 %3, label %bb.n, label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit

bb.n:                                             ; preds = %bb.m
  %i.au = icmp slt i64 %i.z, 0
  br i1 %i.au, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.av = fcmp oeq double %i.y, 0.000000e+00
  br i1 %i.av, label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = add nsw i64 %i.z, -1
  %i.ax = bitcast i64 %i.aw to double
  br label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit

bb.q:                                             ; preds = %bb.n
  %i.ay = add nuw i64 %i.z, 1
  %i.az = bitcast i64 %i.ay to double
  br label %_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit

_ZN14arrow_vendored17double_conversion13StrtodTrimmedENS0_6VectorIKcEEi.exit: ; preds = %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit, %bb.f, %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  %.1.i = phi double [ %i.ax, %bb.p ], [ %i.y, %bb.m ], [ %i.y, %bb.f ], [ +inf, %bb.h ], [ 0.000000e+00, %bb.j ], [ %i.at, %bb.l ], [ %i.ar, %bb.k ], [ 0.000000e+00, %bb.o ], [ %i.az, %bb.q ], [ %i.y, %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  ret double %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN14arrow_vendored17double_conversion6StrtofENS0_6VectorIKcEEi(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [780 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9
  %.not.i.i = icmp eq i8 %i.d, 48
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i, label %.lr.ph.i.i, !llvm.loop !24

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i
  %i.f = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.g = sub nsw i32 %1, %i.f
  br label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i

_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i: ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.09.1.i.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ], [ %0, %bb.b ] ; 4 uses
  %.sroa.3.1.i.i = phi i32 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.h = icmp sgt i32 %.sroa.3.1.i.i, 0
  br i1 %i.h, label %.lr.ph, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i

.lr.ph:                                           ; preds = %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i
  %i.i = zext nneg i32 %.sroa.3.1.i.i to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.j = trunc nuw i64 %i.n to i32                ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i, !llvm.loop !25

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i: ; preds = %bb.d, %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i
  %i.l = add nsw i32 %.sroa.3.1.i.i, %2
  br label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.m = phi i32 [ %.sroa.3.1.i.i, %.lr.ph ], [ %i.j, %bb.d ] ; 3 uses
  %indvars.iv.i22.i25 = phi i64 [ %i.i, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %i.n = add nsw i64 %indvars.iv.i22.i25, -1      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.1.i.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %.not.i26.i = icmp eq i8 %i.p, 48
  br i1 %.not.i26.i, label %bb.d, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i, !llvm.loop !25

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i: ; preds = %bb.e
  %i.q = sub nsw i32 %.sroa.3.1.i.i, %i.m
  %i.r = add nsw i32 %i.q, %2                     ; 2 uses
  %i.s = icmp ugt i64 %indvars.iv.i22.i25, 780
  br i1 %i.s, label %.preheader.i.preheader, label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

.preheader.i.preheader:                           ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(779) %i.a, ptr noundef nonnull align 1 dereferenceable(779) %.sroa.09.1.i.i, i64 779, i1 false), !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 779
  store i8 49, ptr %i.t, align 1, !tbaa !9
  %i.u = add nsw i32 %i.m, -780
  %i.v = add nsw i32 %i.u, %i.r
  br label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit: ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i, %.preheader.i.preheader
  %.sroa.6.0 = phi i32 [ 780, %.preheader.i.preheader ], [ 0, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %i.m, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ]
  %.sroa.0.0 = phi ptr [ %i.a, %.preheader.i.preheader ], [ %.sroa.09.1.i.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %.sroa.09.1.i.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ]
  %.0 = phi i32 [ %i.v, %.preheader.i.preheader ], [ %i.l, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %i.r, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ]
  %i.w = call noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr %.sroa.0.0, i32 %.sroa.6.0, i32 noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret float %i.w
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd(ptr %0, i32 %1, i32 noundef %2, ptr noundef %i.a)
  %i.c = load double, ptr %i.a, align 8, !tbaa !7 ; 6 uses
  %i.d = fcmp ult double %i.c, f0x47EFFFFFE0000000
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ult double %i.c, f0x47EFFFFFF0000000
  br i1 %i.e, label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit

bb.d:                                             ; preds = %bb.a
  %i.f = fptrunc double %i.c to float
  br label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit

_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi float [ +inf, %bb.c ], [ %i.f, %bb.d ], [ f0x7F7FFFFF, %bb.b ] ; 3 uses
  %i.g = fpext float %.0.i to double
  %i.h = fcmp oeq double %i.c, %i.g
  br i1 %i.h, label %bb.w, label %bb.e

bb.e:                                             ; preds = %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit
  %i.i = bitcast double %i.c to i64               ; 7 uses
  %i.j = icmp eq i64 %i.i, 9218868437227405312
  br i1 %i.j, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.l, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit

_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit: ; preds = %bb.g
  %i.m = add i64 %i.i, -1
  %i.n = bitcast i64 %i.m to double               ; 2 uses
  %i.o = icmp eq i64 %i.i, -4503599627370496
  br i1 %i.o, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit

bb.h:                                             ; preds = %bb.f
  %i.p = add nuw i64 %i.i, 1
  %i.q = bitcast i64 %i.p to double               ; 2 uses
  %i.r = icmp eq i64 %i.i, 0
  br i1 %i.r, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit

_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit: ; preds = %bb.h, %bb.e, %bb.g, %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit
  %.sink = phi i64 [ 1, %bb.g ], [ 1, %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit ], [ -1, %bb.e ], [ -1, %bb.h ]
  %.0.i4970 = phi double [ 0.000000e+00, %bb.g ], [ %i.n, %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit ], [ +inf, %bb.e ], [ %i.q, %bb.h ] ; 3 uses
  %i.s = add nsw i64 %.sink, %i.i
  %.0.i50 = bitcast i64 %i.s to double            ; 3 uses
  %i.t = fcmp ult double %.0.i50, f0x47EFFFFFE0000000
  br i1 %i.t, label %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit
  %i.u = fcmp ult double %.0.i50, f0x47EFFFFFF0000000
  br i1 %i.u, label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit52, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit52

_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread: ; preds = %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit, %bb.h, %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit
  %.0.i5083 = phi double [ %.0.i50, %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit ], [ -inf, %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit ], [ -0.000000e+00, %bb.h ]
  %.0.i497082 = phi double [ %.0.i4970, %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit ], [ %i.n, %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit ], [ %i.q, %bb.h ]
  %i.v = fptrunc double %.0.i5083 to float
  br label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit52

_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit52: ; preds = %bb.i, %bb.j, %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread
  %.0.i497081 = phi double [ %.0.i4970, %bb.j ], [ %.0.i497082, %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread ], [ %.0.i4970, %bb.i ] ; 5 uses
  %.0.i51 = phi float [ +inf, %bb.j ], [ %i.v, %_ZNK14arrow_vendored17double_conversion6Double14PreviousDoubleEv.exit.thread ], [ f0x7F7FFFFF, %bb.i ] ; 6 uses
  %i.w = fcmp ult double %.0.i497081, f0x47EFFFFFE0000000
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit52
  %i.x = fcmp ult double %.0.i497081, f0x47EFFFFFF0000000
  br i1 %i.x, label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit54, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit54

bb.m:                                             ; preds = %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit52
  %i.y = fptrunc double %.0.i497081 to float
  br label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit54

_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit54: ; preds = %bb.k, %bb.l, %bb.m
  %.0.i53 = phi float [ +inf, %bb.l ], [ %i.y, %bb.m ], [ f0x7F7FFFFF, %bb.k ]
  br i1 %i.b, label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit58, label %bb.n

bb.n:                                             ; preds = %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit54
  %i.z = bitcast double %.0.i497081 to i64        ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9218868437227405312
  br i1 %i.aa, label %.thread89, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = icmp slt i64 %i.z, 0
  br i1 %i.ab, label %bb.p, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56

bb.p:                                             ; preds = %bb.o
  %i.ac = fcmp oeq double %.0.i497081, 0.000000e+00
  br i1 %i.ac, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56.thread, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56

_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56: ; preds = %bb.o, %bb.p
  %.sink95 = phi i64 [ -1, %bb.p ], [ 1, %bb.o ]
  %i.ad = add i64 %.sink95, %i.z
  %.0.i55 = bitcast i64 %i.ad to double           ; 3 uses
  %i.ae = fcmp ult double %.0.i55, f0x47EFFFFFE0000000
  br i1 %i.ae, label %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56.thread, label %bb.q

bb.q:                                             ; preds = %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56
  %i.af = fcmp ult double %.0.i55, f0x47EFFFFFF0000000
  br i1 %i.af, label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit58, label %.thread89

.thread89:                                        ; preds = %bb.n, %bb.q
  br label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit58

_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56.thread: ; preds = %bb.p, %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56
  %.0.i5585 = phi double [ %.0.i55, %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56 ], [ 0.000000e+00, %bb.p ]
  %i.ag = fptrunc double %.0.i5585 to float
  br label %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit58

_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit58: ; preds = %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56.thread, %.thread89, %bb.q, %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit54
  %.046 = phi float [ %.0.i53, %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit54 ], [ +inf, %.thread89 ], [ %i.ag, %_ZNK14arrow_vendored17double_conversion6Double10NextDoubleEv.exit56.thread ], [ f0x7F7FFFFF, %bb.q ] ; 3 uses
  %i.ah = fcmp oeq float %.0.i51, %.046
  br i1 %i.ah, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit58
  %i.ai = fcmp oeq float %.0.i51, 0.000000e+00
  br i1 %i.ai, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = bitcast float %.0.i51 to i32            ; 3 uses
  %i.ak = and i32 %i.aj, 2139095040
  %i.al = icmp eq i32 %i.ak, 0                    ; 2 uses
  %i.am = shl i32 %i.aj, 1
  %i.an = and i32 %i.am, 16777214
  %i.ao = select i1 %i.al, i32 1, i32 16777217
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i32 %i.aj, 23
  %i.as = and i32 %i.ar, 255
  %i.at = add nsw i32 %i.as, -151
  %i.au = select i1 %i.al, i32 -150, i32 %i.at
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.064.0 = phi i64 [ %i.aq, %bb.s ], [ 4503599627370496, %bb.r ]
  %.sroa.6.0 = phi i32 [ %i.au, %bb.s ], [ -202, %bb.r ]
  %i.av = tail call fastcc noundef i32 @_ZN14arrow_vendored17double_conversionL22CompareBufferWithDiyFpENS0_6VectorIKcEEiNS0_5DiyFpE(ptr %0, i32 %1, i32 noundef %2, i64 %.sroa.064.0, i32 %.sroa.6.0) ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = bitcast float %.0.i51 to i32
  %3 = trunc i32 %i.ax to i1
  %..046 = select i1 %3, float %.046, float %.0.i51
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v, %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit58, %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit
  %.2 = phi float [ %.0.i, %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit ], [ %.0.i, %_ZN14arrow_vendored17double_conversionL18SanitizedDoubletofEd.exit58 ], [ %.046, %bb.u ], [ %.0.i51, %bb.t ], [ %..046, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret float %.2
}

declare void @_ZN14arrow_vendored17double_conversion16PowersOfTenCache32GetCachedPowerForDecimalExponentEiPNS0_5DiyFpEPi(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum19AssignDecimalStringENS0_6VectorIKcEE(ptr noundef nonnull align 4 dereferenceable(516), ptr, i32) local_unnamed_addr #2

declare void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516), i64 noundef) local_unnamed_addr #2

declare void @_ZN14arrow_vendored17double_conversion6Bignum20MultiplyByPowerOfTenEi(ptr noundef nonnull align 4 dereferenceable(516), i32 noundef) local_unnamed_addr #2

declare void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSN14arrow_vendored17double_conversion5DiyFpE", !16, i64 0, !4, i64 8}
!16 = !{!"long", !5, i64 0}
!17 = !{!15, !4, i64 8}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSN14arrow_vendored17double_conversion6BignumE", !22, i64 0, !22, i64 2, !5, i64 4}
!22 = !{!"short", !5, i64 0}
!23 = !{!21, !22, i64 2}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
end_hunk_1
