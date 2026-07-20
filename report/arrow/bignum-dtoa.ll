inline.NumInlined: 71
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow_vendored::double_conversion::Bignum" = type { i16, i16, [128 x i32] }

; Function Attrs: mustprogress uwtable
define void @_ZN14arrow_vendored17double_conversion10BignumDtoaEdNS0_14BignumDtoaModeEiNS0_6VectorIcEEPiS4_(double noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree captures(none) %3, i32 %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 40 uses
  %8 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 28 uses
  %9 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 21 uses
  %10 = alloca %"class.arrow_vendored::double_conversion::Bignum", align 4 ; 15 uses
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fptrunc double %0 to float
  %i.c = bitcast float %i.b to i32                ; 4 uses
  %i.d = and i32 %i.c, 8388607                    ; 3 uses
  %i.e = and i32 %i.c, 2139095040
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.g = or disjoint i32 %i.d, 8388608
  %.0.i = select i1 %i.f, i32 %i.d, i32 %i.g
  %i.h = zext nneg i32 %.0.i to i64
  %i.i = lshr i32 %i.c, 23
  %i.j = and i32 %i.i, 255
  %i.k = add nsw i32 %i.j, -150
  %.0.i44 = select i1 %i.f, i32 -149, i32 %i.k
  %i.l = icmp eq i32 %i.d, 0
  %i.m = and i32 %i.c, 2130706432
  %i.n = icmp ne i32 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = bitcast double %0 to i64                 ; 4 uses
  %i.q = and i64 %i.p, 4503599627370495           ; 3 uses
  %i.r = and i64 %i.p, 9218868437227405312
  %i.s = icmp eq i64 %i.r, 0                      ; 2 uses
  %i.t = or disjoint i64 %i.q, 4503599627370496
  %.0.i45 = select i1 %i.s, i64 %i.q, i64 %i.t
  %i.u = lshr i64 %i.p, 52
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = and i32 %i.v, 2047
  %i.x = add nsw i32 %i.w, -1075
  %.0.i46 = select i1 %i.s, i32 -1074, i32 %i.x
  %i.y = icmp eq i64 %i.q, 0
  %i.z = and i64 %i.p, 9214364837600034816
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = and i1 %i.y, %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.041.in = phi i1 [ %i.o, %bb.b ], [ %i.ab, %bb.c ]
  %.040 = phi i32 [ %.0.i44, %bb.b ], [ %.0.i46, %bb.c ] ; 9 uses
  %.0 = phi i64 [ %i.h, %bb.b ], [ %.0.i45, %bb.c ] ; 7 uses
  %i.ac = icmp ult i32 %1, 2                      ; 4 uses
  %11 = and i64 %.0, 1
  %12 = icmp eq i64 %11, 0                        ; 2 uses
  %i.ad = and i64 %.0, 4503599627370496
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZN14arrow_vendored17double_conversionL18NormalizedExponentEmi.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.06.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %.040, %bb.d ]
  %.045.i = phi i64 [ %i.af, %.lr.ph.i ], [ %.0, %bb.d ] ; 2 uses
  %i.af = shl i64 %.045.i, 1
  %i.ag = add nsw i32 %.06.i, -1                  ; 2 uses
  %i.ah = and i64 %.045.i, 2251799813685248
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %_ZN14arrow_vendored17double_conversionL18NormalizedExponentEmi.exit, !llvm.loop !7

_ZN14arrow_vendored17double_conversionL18NormalizedExponentEmi.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ %.040, %bb.d ], [ %i.ag, %.lr.ph.i ]
  %i.aj = add nsw i32 %.0.lcssa.i, 52
  %i.ak = sitofp i32 %i.aj to double
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double f0x3FD34413509F79FE, double -1.000000e-10)
  %i.am = tail call double @llvm.ceil.f64(double %i.al)
  %i.an = fptosi double %i.am to i32              ; 7 uses
  %i.ao = icmp eq i32 %1, 2
  %i.ap = xor i32 %i.an, -1
  %i.aq = icmp slt i32 %2, %i.ap
  %or.cond = and i1 %i.ao, %i.aq
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN14arrow_vendored17double_conversionL18NormalizedExponentEmi.exit
  store i8 0, ptr %3, align 1, !tbaa !9
  store i32 0, ptr %5, align 4, !tbaa !3
  %i.ar = sub nsw i32 0, %2
  store i32 %i.ar, ptr %6, align 4, !tbaa !3
  br label %bb.ap

bb.f:                                             ; preds = %_ZN14arrow_vendored17double_conversionL18NormalizedExponentEmi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store i16 0, ptr %7, align 4, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 0, ptr %i.as, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store i16 0, ptr %8, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %i.at, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  store i16 0, ptr %9, align 4, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 0, ptr %i.au, align 2, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  store i16 0, ptr %10, align 4, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 0, ptr %i.av, align 2, !tbaa !13
  %i.aw = icmp sgt i32 %.040, -1
  br i1 %i.aw, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %7, i64 noundef %.0)
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef range(i32 0, -2147483648) %.040)
  call void @_ZN14arrow_vendored17double_conversion6Bignum17AssignPowerUInt16Eti(ptr noundef nonnull align 4 dereferenceable(516) %8, i16 noundef zeroext 10, i32 noundef %i.an)
  br i1 %i.ac, label %bb.h, label %_ZN14arrow_vendored17double_conversionL24InitialScaledStartValuesEmibibPNS0_6BignumES2_S2_S2_.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef 1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %10, i16 noundef zeroext 1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %10, i32 noundef range(i32 0, -2147483648) %.040)
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %9, i16 noundef zeroext 1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef range(i32 0, -2147483648) %.040)
  br label %_ZN14arrow_vendored17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS0_6BignumES2_S2_S2_.exit.i

bb.i:                                             ; preds = %bb.f
  %i.ax = icmp sgt i32 %i.an, -1
  br i1 %i.ax, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %7, i64 noundef %.0)
  call void @_ZN14arrow_vendored17double_conversion6Bignum17AssignPowerUInt16Eti(ptr noundef nonnull align 4 dereferenceable(516) %8, i16 noundef zeroext 10, i32 noundef range(i32 0, -2147483648) %i.an)
  %i.ay = sub nsw i32 0, %.040
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef %i.ay)
  br i1 %i.ac, label %bb.k, label %_ZN14arrow_vendored17double_conversionL24InitialScaledStartValuesEmibibPNS0_6BignumES2_S2_S2_.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef 1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %10, i16 noundef zeroext 1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %9, i16 noundef zeroext 1)
  br label %_ZN14arrow_vendored17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS0_6BignumES2_S2_S2_.exit.i

bb.l:                                             ; preds = %bb.i
  %i.az = sub nsw i32 0, %i.an
  call void @_ZN14arrow_vendored17double_conversion6Bignum17AssignPowerUInt16Eti(ptr noundef nonnull align 4 dereferenceable(516) %7, i16 noundef zeroext 10, i32 noundef %i.az)
  br i1 %i.ac, label %bb.m, label %.critedge.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %10, ptr noundef nonnull align 4 dereferenceable(516) %7)
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %9, ptr noundef nonnull align 4 dereferenceable(516) %7)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %7, i64 noundef %.0)
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %8, i16 noundef zeroext 1)
  %i.ba = sub nsw i32 0, %.040
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef %i.ba)
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 1)
  br label %_ZN14arrow_vendored17double_conversionL53InitialScaledStartValuesNegativeExponentNegativePowerEmiibPNS0_6BignumES2_S2_S2_.exit.i

.critedge.i.i:                                    ; preds = %bb.l
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %7, i64 noundef %.0)
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %8, i16 noundef zeroext 1)
  %i.bb = sub nsw i32 0, %.040
  br label %_ZN14arrow_vendored17double_conversionL53InitialScaledStartValuesNegativeExponentNegativePowerEmiibPNS0_6BignumES2_S2_S2_.exit.i

_ZN14arrow_vendored17double_conversionL53InitialScaledStartValuesNegativeExponentNegativePowerEmiibPNS0_6BignumES2_S2_S2_.exit.i: ; preds = %.critedge.i.i, %bb.m
  %.sink.i.i = phi i32 [ %i.bb, %.critedge.i.i ], [ 1, %bb.m ]
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef %.sink.i.i)
  br label %_ZN14arrow_vendored17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS0_6BignumES2_S2_S2_.exit.i

_ZN14arrow_vendored17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS0_6BignumES2_S2_S2_.exit.i: ; preds = %_ZN14arrow_vendored17double_conversionL53InitialScaledStartValuesNegativeExponentNegativePowerEmiibPNS0_6BignumES2_S2_S2_.exit.i, %bb.k, %bb.h
  %or.cond.i = and i1 %i.ac, %.041.in
  br i1 %or.cond.i, label %bb.n, label %_ZN14arrow_vendored17double_conversionL24InitialScaledStartValuesEmibibPNS0_6BignumES2_S2_S2_.exit

bb.n:                                             ; preds = %_ZN14arrow_vendored17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS0_6BignumES2_S2_S2_.exit.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef 1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 1)
  call void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %10, i32 noundef 1)
  br label %_ZN14arrow_vendored17double_conversionL24InitialScaledStartValuesEmibibPNS0_6BignumES2_S2_S2_.exit

_ZN14arrow_vendored17double_conversionL24InitialScaledStartValuesEmibibPNS0_6BignumES2_S2_S2_.exit: ; preds = %bb.g, %bb.j, %_ZN14arrow_vendored17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS0_6BignumES2_S2_S2_.exit.i, %bb.n
  %i.bc = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %10, ptr noundef nonnull align 4 dereferenceable(516) %8) ; 2 uses
  br i1 %12, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN14arrow_vendored17double_conversionL24InitialScaledStartValuesEmibibPNS0_6BignumES2_S2_S2_.exit
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.q, label %bb.r

bb.p:                                             ; preds = %_ZN14arrow_vendored17double_conversionL24InitialScaledStartValuesEmibibPNS0_6BignumES2_S2_S2_.exit
  %i.be = icmp sgt i32 %i.bc, 0
  br i1 %i.be, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bf = add nsw i32 %i.an, 1
  store i32 %i.bf, ptr %6, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  store i32 %i.an, ptr %6, align 4, !tbaa !3
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  %i.bg = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %9, ptr noundef nonnull align 4 dereferenceable(516) %10)
  %i.bh = icmp eq i32 %i.bg, 0
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN14arrow_vendored17double_conversion6Bignum12AssignBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %10, ptr noundef nonnull align 4 dereferenceable(516) %9)
  br label %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit

bb.t:                                             ; preds = %bb.r
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %10, i32 noundef 10)
  br label %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit

_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit: ; preds = %bb.q, %bb.s, %bb.t
  switch i32 %1, label %bb.ao [
    i32 0, label %bb.u
    i32 1, label %bb.u
    i32 2, label %bb.ag
    i32 3, label %bb.an
  ]

bb.u:                                             ; preds = %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit, %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  %i.bi = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %9, ptr noundef nonnull align 4 dereferenceable(516) %10)
  %i.bj = icmp eq i32 %i.bi, 0                    ; 3 uses
  %spec.select.i = select i1 %i.bj, ptr %9, ptr %10 ; 6 uses
  store i32 0, ptr %5, align 4, !tbaa !3
  br i1 %12, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.u
  br i1 %i.bj, label %.split.us.split.us.i, label %.split.us.split.i

.split.us.split.us.i:                             ; preds = %.split.us.i, %bb.v
  %i.bk = call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.bl = trunc i16 %i.bk to i8
  %i.bm = add i8 %i.bl, 48
  %i.bn = load i32, ptr %5, align 4, !tbaa !3     ; 2 uses
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %5, align 4, !tbaa !3
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds i8, ptr %3, i64 %i.bp
  store i8 %i.bm, ptr %i.bq, align 1, !tbaa !9
  %i.br = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.bs = icmp slt i32 %i.br, 1                   ; 2 uses
  %i.bt = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.bu = icmp sgt i32 %i.bt, -1                  ; 2 uses
  %or.cond.us.us.i = or i1 %i.bs, %i.bu
  br i1 %or.cond.us.us.i, label %.split6.us.i, label %bb.v

bb.v:                                             ; preds = %.split.us.split.us.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  br label %.split.us.split.us.i

.split.us.split.i:                                ; preds = %.split.us.i, %bb.w
  %i.bv = call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.bw = trunc i16 %i.bv to i8
  %i.bx = add i8 %i.bw, 48
  %i.by = load i32, ptr %5, align 4, !tbaa !3     ; 2 uses
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %5, align 4, !tbaa !3
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds i8, ptr %3, i64 %i.ca
  store i8 %i.bx, ptr %i.cb, align 1, !tbaa !9
  %i.cc = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.cd = icmp slt i32 %i.cc, 1                   ; 2 uses
  %i.ce = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.cf = icmp sgt i32 %i.ce, -1                  ; 2 uses
  %or.cond.us.i = or i1 %i.cd, %i.cf
  br i1 %or.cond.us.i, label %.split6.us.i, label %bb.w

bb.w:                                             ; preds = %.split.us.split.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, i32 noundef 10)
  br label %.split.us.split.i

.split.i:                                         ; preds = %bb.u
  br i1 %i.bj, label %.split.split.us.i, label %.split.split.i

.split.split.us.i:                                ; preds = %.split.i, %bb.x
  %i.cg = call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.ch = trunc i16 %i.cg to i8
  %i.ci = add i8 %i.ch, 48
  %i.cj = load i32, ptr %5, align 4, !tbaa !3     ; 2 uses
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %5, align 4, !tbaa !3
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds i8, ptr %3, i64 %i.cl
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !9
  %i.cn = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.co = icmp slt i32 %i.cn, 0                   ; 2 uses
  %i.cp = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.cq = icmp sgt i32 %i.cp, 0                   ; 2 uses
  %or.cond.us8.i = or i1 %i.co, %i.cq
  br i1 %or.cond.us8.i, label %.split6.us.i, label %bb.x

bb.x:                                             ; preds = %.split.split.us.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  br label %.split.split.us.i

.split.split.i:                                   ; preds = %.split.i, %bb.y
  %i.cr = call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.cs = trunc i16 %i.cr to i8
  %i.ct = add i8 %i.cs, 48
  %i.cu = load i32, ptr %5, align 4, !tbaa !3     ; 2 uses
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %5, align 4, !tbaa !3
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds i8, ptr %3, i64 %i.cw
  store i8 %i.ct, ptr %i.cx, align 1, !tbaa !9
  %i.cy = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.cz = icmp slt i32 %i.cy, 0                   ; 2 uses
  %i.da = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.db = icmp sgt i32 %i.da, 0                   ; 2 uses
  %or.cond.i47 = or i1 %i.cz, %i.db
  br i1 %or.cond.i47, label %.split6.us.i, label %bb.y

bb.y:                                             ; preds = %.split.split.i
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, i32 noundef 10)
  br label %.split.split.i

.split6.us.i:                                     ; preds = %.split.split.i, %.split.split.us.i, %.split.us.split.i, %.split.us.split.us.i
  %.us-phi.i = phi i1 [ %i.co, %.split.split.us.i ], [ %i.cd, %.split.us.split.i ], [ %i.bs, %.split.us.split.us.i ], [ %i.cz, %.split.split.i ] ; 2 uses
  %.us-phi7.i = phi i1 [ %i.cq, %.split.split.us.i ], [ %i.cf, %.split.us.split.i ], [ %i.bu, %.split.us.split.us.i ], [ %i.db, %.split.split.i ]
  %or.cond3.i = and i1 %.us-phi.i, %.us-phi7.i
  br i1 %or.cond3.i, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.split6.us.i
  %i.dc = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8) ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not46.i = icmp eq i32 %i.dc, 0
  %i.de = load i32, ptr %5, align 4, !tbaa !3
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %3, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 -1     ; 3 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9   ; 3 uses
  br i1 %.not46.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = add i8 %i.di, 1
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !9
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ac:                                            ; preds = %bb.aa
  %13 = and i8 %i.di, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = add i8 %i.di, 1
  store i8 %i.dk, ptr %i.dh, align 1, !tbaa !9
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ae:                                            ; preds = %.split6.us.i
  br i1 %.us-phi.i, label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = load i32, ptr %5, align 4, !tbaa !3
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %3, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -1     ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = add i8 %i.dp, 1
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !9
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ag:                                            ; preds = %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  %i.dr = load i32, ptr %6, align 4, !tbaa !3     ; 2 uses
  %i.ds = sub nsw i32 0, %i.dr                    ; 2 uses
  %i.dt = icmp slt i32 %2, %i.ds
  br i1 %i.dt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.du = sub nsw i32 0, %2
  store i32 %i.du, ptr %6, align 4, !tbaa !3
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dv = icmp eq i32 %2, %i.ds
  br i1 %i.dv, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef 10)
  %i.dw = call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.dx = icmp sgt i32 %i.dw, -1
  br i1 %i.dx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i8 49, ptr %3, align 1, !tbaa !9
  store i32 1, ptr %5, align 4, !tbaa !3
  %i.dy = load i32, ptr %6, align 4, !tbaa !3
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %6, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.al:                                            ; preds = %bb.aj
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.am:                                            ; preds = %bb.ai
  %i.ea = add nsw i32 %i.dr, %2
  call fastcc void @_ZN14arrow_vendored17double_conversionL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %i.ea, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr %3, ptr noundef %5)
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.an:                                            ; preds = %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  call fastcc void @_ZN14arrow_vendored17double_conversionL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %2, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr %3, ptr noundef %5)
  br label %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit

bb.ao:                                            ; preds = %_ZN14arrow_vendored17double_conversionL15FixupMultiply10EibPiPNS0_6BignumES3_S3_S3_.exit
  call void @abort() #6
  unreachable

_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit: ; preds = %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.an
  %i.eb = load i32, ptr %5, align 4, !tbaa !3
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %3, i64 %i.ec
  store i8 0, ptr %i.ed, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN14arrow_vendored17double_conversionL22GenerateShortestDigitsEPNS0_6BignumES2_S2_S2_bNS0_6VectorIcEEPi.exit, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored17double_conversionL21GenerateCountedDigitsEiPiPNS0_6BignumES3_NS0_6VectorIcEES1_(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr nofree captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1                           ; 5 uses
  %i.b = icmp sgt i32 %0, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge37.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.c = tail call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.d = tail call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = zext i1 %i.e to i16
  %spec.select = add i16 %i.c, %i.f
  %i.g = trunc i16 %spec.select to i8
  %i.h = add i8 %i.g, 48
  %i.i = sext i32 %i.a to i64
  %i.j = getelementptr inbounds i8, ptr %4, i64 %i.i
  store i8 %i.h, ptr %i.j, align 1, !tbaa !9
  %.phi.trans.insert = zext nneg i32 %i.a to i64
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %4, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert40, align 1, !tbaa !9
  br label %.lr.ph36

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.k = tail call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.l = trunc i16 %i.k to i8
  %i.m = add i8 %i.l, 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.m, ptr %i.n, align 1, !tbaa !9
  tail call void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %2, i32 noundef 10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

.lr.ph36:                                         ; preds = %._crit_edge, %bb.b
  %i.o = phi i8 [ %i.v, %bb.b ], [ %.pre, %._crit_edge ]
  %.034 = phi i32 [ %i.r, %bb.b ], [ %i.a, %._crit_edge ] ; 3 uses
  %.not = icmp eq i8 %i.o, 58
  br i1 %.not, label %bb.b, label %._crit_edge37

bb.b:                                             ; preds = %.lr.ph36
  %i.p = zext nneg i32 %.034 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %i.p
  store i8 48, ptr %i.q, align 1, !tbaa !9
  %i.r = add nsw i32 %.034, -1                    ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  %i.v = add i8 %i.u, 1                           ; 2 uses
  store i8 %i.v, ptr %i.t, align 1, !tbaa !9
  %i.w = icmp sgt i32 %.034, 1
  br i1 %i.w, label %.lr.ph36, label %._crit_edge37, !llvm.loop !15

._crit_edge37.critedge:                           ; preds = %bb.a
  %i.x = tail call noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.y = tail call noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.z = icmp sgt i32 %i.y, -1
  %i.aa = zext i1 %i.z to i16
  %spec.select.c = add i16 %i.x, %i.aa
  %i.ab = trunc i16 %spec.select.c to i8
  %i.ac = add i8 %i.ab, 48
  %i.ad = sext i32 %i.a to i64
  %i.ae = getelementptr inbounds i8, ptr %4, i64 %i.ad
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !9
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.b, %.lr.ph36, %._crit_edge37.critedge
  %i.af = load i8, ptr %4, align 1, !tbaa !9
  %i.ag = icmp eq i8 %i.af, 58
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge37
  store i8 49, ptr %4, align 1, !tbaa !9
  %i.ah = load i32, ptr %1, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %1, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge37
  store i32 %0, ptr %5, align 4, !tbaa !3
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

declare noundef zeroext i16 @_ZN14arrow_vendored17double_conversion6Bignum21DivideModuloIntBignumERKS1_(ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516)) local_unnamed_addr #3

declare noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum11PlusCompareERKS1_S3_S3_(ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516)) local_unnamed_addr #3

declare noundef i32 @_ZN14arrow_vendored17double_conversion6Bignum7CompareERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(516), ptr noundef nonnull align 4 dereferenceable(516)) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare void @_ZN14arrow_vendored17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516), i32 noundef) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516), i64 noundef) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum17AssignPowerUInt16Eti(ptr noundef nonnull align 4 dereferenceable(516), i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @_ZN14arrow_vendored17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516), i16 noundef zeroext) local_unnamed_addr #3

end_hunk_0
