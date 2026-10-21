Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/bignum-dtoa?download=true
inline.NumInlined: 71
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.double_conversion::Bignum" = type { i16, i16, [128 x i32] }

; Function Attrs: mustprogress uwtable
define void @_ZN17double_conversion10BignumDtoaEdNS_14BignumDtoaModeEiNS_6VectorIcEEPiS3_(double noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree captures(none) %3, i32 %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.double_conversion::Bignum", align 4 ; 40 uses
  %8 = alloca %"class.double_conversion::Bignum", align 4 ; 28 uses
  %9 = alloca %"class.double_conversion::Bignum", align 4 ; 21 uses
  %10 = alloca %"class.double_conversion::Bignum", align 4 ; 15 uses
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
  %i.ad = and i64 %.0, 1
  %i.ae = icmp eq i64 %i.ad, 0                    ; 2 uses
  %i.af = and i64 %.0, 4503599627370496
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %_ZN17double_conversionL18NormalizedExponentEmi.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.06.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %.040, %bb.d ]
  %.045.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.0, %bb.d ] ; 2 uses
  %i.ah = shl i64 %.045.i, 1
  %i.ai = add nsw i32 %.06.i, -1                  ; 2 uses
  %i.aj = and i64 %.045.i, 2251799813685248
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i, label %_ZN17double_conversionL18NormalizedExponentEmi.exit, !llvm.loop !11

_ZN17double_conversionL18NormalizedExponentEmi.exit: ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi i32 [ %.040, %bb.d ], [ %i.ai, %.lr.ph.i ]
  %i.al = add nsw i32 %.0.lcssa.i, 52
  %i.am = sitofp i32 %i.al to double
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double f0x3FD34413509F79FE, double -1.000000e-10)
  %i.ao = tail call double @llvm.ceil.f64(double %i.an)
  %i.ap = fptosi double %i.ao to i32              ; 7 uses
  %i.aq = icmp eq i32 %1, 2
  %i.ar = xor i32 %i.ap, -1
  %i.as = icmp slt i32 %2, %i.ar
  %or.cond = and i1 %i.aq, %i.as
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN17double_conversionL18NormalizedExponentEmi.exit
  store i8 0, ptr %3, align 1, !tbaa !9
  store i32 0, ptr %5, align 4, !tbaa !10
  %i.at = sub nsw i32 0, %2
  store i32 %i.at, ptr %6, align 4, !tbaa !10
  br label %bb.ao

bb.f:                                             ; preds = %_ZN17double_conversionL18NormalizedExponentEmi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store i16 0, ptr %7, align 4, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 0, ptr %i.au, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store i16 0, ptr %8, align 4, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %i.av, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  store i16 0, ptr %9, align 4, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i16 0, ptr %i.aw, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  store i16 0, ptr %10, align 4, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 0, ptr %i.ax, align 2, !tbaa !15
  %i.ay = icmp sgt i32 %.040, -1
  br i1 %i.ay, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %7, i64 noundef %.0)
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef range(i32 0, -2147483648) %.040)
  call void @_ZN17double_conversion6Bignum17AssignPowerUInt16Eti(ptr noundef nonnull align 4 dereferenceable(516) %8, i16 noundef zeroext 10, i32 noundef %i.ap)
  br i1 %i.ac, label %bb.h, label %_ZN17double_conversionL24InitialScaledStartValuesEmibibPNS_6BignumES1_S1_S1_.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef 1)
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 1)
  call void @_ZN17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %10, i16 noundef zeroext 1)
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %10, i32 noundef range(i32 0, -2147483648) %.040)
  call void @_ZN17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %9, i16 noundef zeroext 1)
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef range(i32 0, -2147483648) %.040)
  br label %_ZN17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS_6BignumES1_S1_S1_.exit.i

bb.i:                                             ; preds = %bb.f
  %i.az = icmp sgt i32 %i.ap, -1
  br i1 %i.az, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @_ZN17double_conversion6Bignum12AssignUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %7, i64 noundef %.0)
  call void @_ZN17double_conversion6Bignum17AssignPowerUInt16Eti(ptr noundef nonnull align 4 dereferenceable(516) %8, i16 noundef zeroext 10, i32 noundef range(i32 0, -2147483648) %i.ap)
  %i.ba = sub nsw i32 0, %.040
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef %i.ba)
  br i1 %i.ac, label %bb.k, label %_ZN17double_conversionL24InitialScaledStartValuesEmibibPNS_6BignumES1_S1_S1_.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef 1)
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 1)
  call void @_ZN17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %10, i16 noundef zeroext 1)
  call void @_ZN17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %9, i16 noundef zeroext 1)
  br label %_ZN17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS_6BignumES1_S1_S1_.exit.i

bb.l:                                             ; preds = %bb.i
  %i.bb = sub nsw i32 0, %i.ap
  call void @_ZN17double_conversion6Bignum17AssignPowerUInt16Eti(ptr noundef nonnull align 4 dereferenceable(516) %7, i16 noundef zeroext 10, i32 noundef %i.bb)
  br i1 %i.ac, label %bb.m, label %.critedge.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZN17double_conversion6Bignum12AssignBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %10, ptr noundef nonnull align 4 dereferenceable(516) %7)
  call void @_ZN17double_conversion6Bignum12AssignBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %9, ptr noundef nonnull align 4 dereferenceable(516) %7)
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %7, i64 noundef %.0)
  call void @_ZN17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %8, i16 noundef zeroext 1)
  %i.bc = sub nsw i32 0, %.040
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef %i.bc)
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 1)
  br label %_ZN17double_conversionL53InitialScaledStartValuesNegativeExponentNegativePowerEmiibPNS_6BignumES1_S1_S1_.exit.i

.critedge.i.i:                                    ; preds = %bb.l
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt64Em(ptr noundef nonnull align 4 dereferenceable(516) %7, i64 noundef %.0)
  call void @_ZN17double_conversion6Bignum12AssignUInt16Et(ptr noundef nonnull align 4 dereferenceable(516) %8, i16 noundef zeroext 1)
  %i.bd = sub nsw i32 0, %.040
  br label %_ZN17double_conversionL53InitialScaledStartValuesNegativeExponentNegativePowerEmiibPNS_6BignumES1_S1_S1_.exit.i

_ZN17double_conversionL53InitialScaledStartValuesNegativeExponentNegativePowerEmiibPNS_6BignumES1_S1_S1_.exit.i: ; preds = %.critedge.i.i, %bb.m
  %.sink.i.i = phi i32 [ %i.bd, %.critedge.i.i ], [ 1, %bb.m ]
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef %.sink.i.i)
  br label %_ZN17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS_6BignumES1_S1_S1_.exit.i

_ZN17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS_6BignumES1_S1_S1_.exit.i: ; preds = %_ZN17double_conversionL53InitialScaledStartValuesNegativeExponentNegativePowerEmiibPNS_6BignumES1_S1_S1_.exit.i, %bb.k, %bb.h
  %or.cond.i = and i1 %i.ac, %.041.in
  br i1 %or.cond.i, label %bb.n, label %_ZN17double_conversionL24InitialScaledStartValuesEmibibPNS_6BignumES1_S1_S1_.exit

bb.n:                                             ; preds = %_ZN17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS_6BignumES1_S1_S1_.exit.i
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef 1)
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 1)
  call void @_ZN17double_conversion6Bignum9ShiftLeftEi(ptr noundef nonnull align 4 dereferenceable(516) %10, i32 noundef 1)
  br label %_ZN17double_conversionL24InitialScaledStartValuesEmibibPNS_6BignumES1_S1_S1_.exit

_ZN17double_conversionL24InitialScaledStartValuesEmibibPNS_6BignumES1_S1_S1_.exit: ; preds = %bb.g, %bb.j, %_ZN17double_conversionL40InitialScaledStartValuesPositiveExponentEmiibPNS_6BignumES1_S1_S1_.exit.i, %bb.n
  %i.be = call noundef i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %10, ptr noundef nonnull align 4 dereferenceable(516) %8) ; 2 uses
  br i1 %i.ae, label %.split.i, label %bb.o

.split.i:                                         ; preds = %_ZN17double_conversionL24InitialScaledStartValuesEmibibPNS_6BignumES1_S1_S1_.exit
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_ZN17double_conversionL24InitialScaledStartValuesEmibibPNS_6BignumES1_S1_S1_.exit
  %i.bg = icmp sgt i32 %i.be, 0
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.split.i
  %i.bh = add nsw i32 %i.ap, 1
  store i32 %i.bh, ptr %6, align 4, !tbaa !10
  br label %_ZN17double_conversionL15FixupMultiply10EibPiPNS_6BignumES2_S2_S2_.exit

bb.q:                                             ; preds = %bb.o, %.split.i
  store i32 %i.ap, ptr %6, align 4, !tbaa !10
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  %i.bi = call noundef i32 @_ZN17double_conversion6Bignum7CompareERKS0_S2_(ptr noundef nonnull align 4 dereferenceable(516) %9, ptr noundef nonnull align 4 dereferenceable(516) %10)
  %i.bj = icmp eq i32 %i.bi, 0
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN17double_conversion6Bignum12AssignBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %10, ptr noundef nonnull align 4 dereferenceable(516) %9)
  br label %_ZN17double_conversionL15FixupMultiply10EibPiPNS_6BignumES2_S2_S2_.exit

bb.s:                                             ; preds = %bb.q
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %10, i32 noundef 10)
  br label %_ZN17double_conversionL15FixupMultiply10EibPiPNS_6BignumES2_S2_S2_.exit

_ZN17double_conversionL15FixupMultiply10EibPiPNS_6BignumES2_S2_S2_.exit: ; preds = %bb.p, %bb.r, %bb.s
  switch i32 %1, label %bb.an [
    i32 0, label %bb.t
    i32 1, label %bb.t
    i32 2, label %bb.af
    i32 3, label %bb.am
  ]

bb.t:                                             ; preds = %_ZN17double_conversionL15FixupMultiply10EibPiPNS_6BignumES2_S2_S2_.exit, %_ZN17double_conversionL15FixupMultiply10EibPiPNS_6BignumES2_S2_S2_.exit
  %i.bk = call noundef i32 @_ZN17double_conversion6Bignum7CompareERKS0_S2_(ptr noundef nonnull align 4 dereferenceable(516) %9, ptr noundef nonnull align 4 dereferenceable(516) %10)
  %i.bl = icmp eq i32 %i.bk, 0                    ; 3 uses
  %spec.select.i = select i1 %i.bl, ptr %9, ptr %10 ; 6 uses
  store i32 0, ptr %5, align 4, !tbaa !10
  br i1 %i.ae, label %.split.us.i, label %.split.i47

.split.us.i:                                      ; preds = %bb.t
  br i1 %i.bl, label %.split.us.split.us.i, label %.split.us.split.i

.split.us.split.us.i:                             ; preds = %.split.us.i, %bb.u
  %i.bm = call noundef zeroext i16 @_ZN17double_conversion6Bignum21DivideModuloIntBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = add i8 %i.bn, 48
  %i.bp = load i32, ptr %5, align 4, !tbaa !10    ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %5, align 4, !tbaa !10
  %i.br = sext i32 %i.bp to i64
  %i.bs = getelementptr inbounds i8, ptr %3, i64 %i.br
  store i8 %i.bo, ptr %i.bs, align 1, !tbaa !9
  %i.bt = call noundef i32 @_ZN17double_conversion6Bignum7CompareERKS0_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.bu = icmp slt i32 %i.bt, 1                   ; 2 uses
  %i.bv = call noundef i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.bw = icmp sgt i32 %i.bv, -1                  ; 2 uses
  %or.cond.us.us.i = or i1 %i.bu, %i.bw
  br i1 %or.cond.us.us.i, label %.split6.us.i, label %bb.u

bb.u:                                             ; preds = %.split.us.split.us.i
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  br label %.split.us.split.us.i

.split.us.split.i:                                ; preds = %.split.us.i, %bb.v
  %i.bx = call noundef zeroext i16 @_ZN17double_conversion6Bignum21DivideModuloIntBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.by = trunc i16 %i.bx to i8
  %i.bz = add i8 %i.by, 48
  %i.ca = load i32, ptr %5, align 4, !tbaa !10    ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %5, align 4, !tbaa !10
  %i.cc = sext i32 %i.ca to i64
  %i.cd = getelementptr inbounds i8, ptr %3, i64 %i.cc
  store i8 %i.bz, ptr %i.cd, align 1, !tbaa !9
  %i.ce = call noundef i32 @_ZN17double_conversion6Bignum7CompareERKS0_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.cf = icmp slt i32 %i.ce, 1                   ; 2 uses
  %i.cg = call noundef i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.ch = icmp sgt i32 %i.cg, -1                  ; 2 uses
  %or.cond.us.i = or i1 %i.cf, %i.ch
  br i1 %or.cond.us.i, label %.split6.us.i, label %bb.v

bb.v:                                             ; preds = %.split.us.split.i
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, i32 noundef 10)
  br label %.split.us.split.i

.split.i47:                                       ; preds = %bb.t
  br i1 %i.bl, label %.split.split.us.i, label %.split.split.i

.split.split.us.i:                                ; preds = %.split.i47, %bb.w
  %i.ci = call noundef zeroext i16 @_ZN17double_conversion6Bignum21DivideModuloIntBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.cj = trunc i16 %i.ci to i8
  %i.ck = add i8 %i.cj, 48
  %i.cl = load i32, ptr %5, align 4, !tbaa !10    ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %5, align 4, !tbaa !10
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds i8, ptr %3, i64 %i.cn
  store i8 %i.ck, ptr %i.co, align 1, !tbaa !9
  %i.cp = call noundef i32 @_ZN17double_conversion6Bignum7CompareERKS0_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.cq = icmp slt i32 %i.cp, 0                   ; 2 uses
  %i.cr = call noundef i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.cs = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %or.cond.us8.i = or i1 %i.cq, %i.cs
  br i1 %or.cond.us8.i, label %.split6.us.i, label %bb.w

bb.w:                                             ; preds = %.split.split.us.i
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  br label %.split.split.us.i

.split.split.i:                                   ; preds = %.split.i47, %bb.x
  %i.ct = call noundef zeroext i16 @_ZN17double_conversion6Bignum21DivideModuloIntBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.cu = trunc i16 %i.ct to i8
  %i.cv = add i8 %i.cu, 48
  %i.cw = load i32, ptr %5, align 4, !tbaa !10    ; 2 uses
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %5, align 4, !tbaa !10
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds i8, ptr %3, i64 %i.cy
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !9
  %i.da = call noundef i32 @_ZN17double_conversion6Bignum7CompareERKS0_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %9)
  %i.db = icmp slt i32 %i.da, 0                   ; 2 uses
  %i.dc = call noundef i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.dd = icmp sgt i32 %i.dc, 0                   ; 2 uses
  %or.cond.i48 = or i1 %i.db, %i.dd
  br i1 %or.cond.i48, label %.split6.us.i, label %bb.x

bb.x:                                             ; preds = %.split.split.i
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %7, i32 noundef 10)
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %9, i32 noundef 10)
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %spec.select.i, i32 noundef 10)
  br label %.split.split.i

.split6.us.i:                                     ; preds = %.split.split.i, %.split.split.us.i, %.split.us.split.i, %.split.us.split.us.i
  %.us-phi.i = phi i1 [ %i.cq, %.split.split.us.i ], [ %i.cf, %.split.us.split.i ], [ %i.bu, %.split.us.split.us.i ], [ %i.db, %.split.split.i ] ; 2 uses
  %.us-phi7.i = phi i1 [ %i.cs, %.split.split.us.i ], [ %i.ch, %.split.us.split.i ], [ %i.bw, %.split.us.split.us.i ], [ %i.dd, %.split.split.i ]
  %or.cond3.i = and i1 %.us-phi.i, %.us-phi7.i
  br i1 %or.cond3.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %.split6.us.i
  %i.de = call noundef i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8) ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not46.i = icmp eq i32 %i.de, 0
  %i.dg = load i32, ptr %5, align 4, !tbaa !10
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr i8, ptr %3, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -1     ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !9   ; 3 uses
  br i1 %.not46.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = add i8 %i.dk, 1
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !9
  br label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit

bb.ab:                                            ; preds = %bb.z
  %i.dm = and i8 %i.dk, 1
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = add i8 %i.dk, 1
  store i8 %i.do, ptr %i.dj, align 1, !tbaa !9
  br label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit

bb.ad:                                            ; preds = %.split6.us.i
  br i1 %.us-phi.i, label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = load i32, ptr %5, align 4, !tbaa !10
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %3, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1     ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  %i.du = add i8 %i.dt, 1
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !9
  br label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit

bb.af:                                            ; preds = %_ZN17double_conversionL15FixupMultiply10EibPiPNS_6BignumES2_S2_S2_.exit
  %i.dv = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.dw = sub nsw i32 0, %i.dv                    ; 2 uses
  %i.dx = icmp slt i32 %2, %i.dw
  br i1 %i.dx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dy = sub nsw i32 0, %2
  store i32 %i.dy, ptr %6, align 4, !tbaa !10
  store i32 0, ptr %5, align 4, !tbaa !10
  br label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit

bb.ah:                                            ; preds = %bb.af
  %i.dz = icmp eq i32 %2, %i.dw
  br i1 %i.dz, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %8, i32 noundef 10)
  %i.ea = call noundef i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %7, ptr noundef nonnull align 4 dereferenceable(516) %8)
  %i.eb = icmp sgt i32 %i.ea, -1
  br i1 %i.eb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i8 49, ptr %3, align 1, !tbaa !9
  store i32 1, ptr %5, align 4, !tbaa !10
  %i.ec = load i32, ptr %6, align 4, !tbaa !10
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %6, align 4, !tbaa !10
  br label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit

bb.ak:                                            ; preds = %bb.ai
  store i32 0, ptr %5, align 4, !tbaa !10
  br label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit

bb.al:                                            ; preds = %bb.ah
  %i.ee = add nsw i32 %i.dv, %2
  call fastcc void @_ZN17double_conversionL21GenerateCountedDigitsEiPiPNS_6BignumES2_NS_6VectorIcEES0_(i32 noundef %i.ee, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr %3, ptr noundef %5)
  br label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit

bb.am:                                            ; preds = %_ZN17double_conversionL15FixupMultiply10EibPiPNS_6BignumES2_S2_S2_.exit
  call fastcc void @_ZN17double_conversionL21GenerateCountedDigitsEiPiPNS_6BignumES2_NS_6VectorIcEES0_(i32 noundef %2, ptr noundef nonnull %6, ptr noundef %7, ptr noundef %8, ptr %3, ptr noundef %5)
  br label %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit

bb.an:                                            ; preds = %_ZN17double_conversionL15FixupMultiply10EibPiPNS_6BignumES2_S2_S2_.exit
  call void @abort() #6
  unreachable

_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.am
  %i.ef = load i32, ptr %5, align 4, !tbaa !10
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %3, i64 %i.eg
  store i8 0, ptr %i.eh, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN17double_conversionL22GenerateShortestDigitsEPNS_6BignumES1_S1_S1_bNS_6VectorIcEEPi.exit, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN17double_conversionL21GenerateCountedDigitsEiPiPNS_6BignumES2_NS_6VectorIcEES0_(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr nofree captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1                           ; 5 uses
  %i.b = icmp sgt i32 %0, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge37.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.c = tail call noundef zeroext i16 @_ZN17double_conversion6Bignum21DivideModuloIntBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.d = tail call noundef i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
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
  %i.k = tail call noundef zeroext i16 @_ZN17double_conversion6Bignum21DivideModuloIntBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.l = trunc i16 %i.k to i8
  %i.m = add i8 %i.l, 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.m, ptr %i.n, align 1, !tbaa !9
  tail call void @_ZN17double_conversion6Bignum16MultiplyByUInt32Ej(ptr noundef nonnull align 4 dereferenceable(516) %2, i32 noundef 10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

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
  br i1 %i.w, label %.lr.ph36, label %._crit_edge37, !llvm.loop !17

._crit_edge37.critedge:                           ; preds = %bb.a
  %i.x = tail call noundef zeroext i16 @_ZN17double_conversion6Bignum21DivideModuloIntBignumERKS0_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
  %i.y = tail call noundef i32 @_ZN17double_conversion6Bignum11PlusCompareERKS0_S2_S2_(ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %2, ptr noundef nonnull align 4 dereferenceable(516) %3)
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
  %i.ah = load i32, ptr %1, align 4, !tbaa !10
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %1, align 4, !tbaa !10
  br label %bb.d
end_hunk_0
