inline.NumInlined: 164
inline.NumDeleted: 58
begin_hunk_0
%"class.arrow_vendored::double_conversion::Bignum" = type { i16, i16, [128 x i32] }

@_ZN14arrow_vendored17double_conversionL19exact_powers_of_tenE = internal unnamed_addr constant [23 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21, double 1.000000e+22], align 16
@switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd = private unnamed_addr constant [7 x i32] [i32 4, i32 7, i32 10, i32 14, i32 17, i32 20, i32 24], align 4
@switch.table._ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd.1 = private unnamed_addr constant [7 x i64] [i64 2684354560, i64 3355443200, i64 4194304000, i64 2621440000, i64 3276800000, i64 4096000000, i64 2560000000], align 8

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd:bb.a
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = sext i8 %i.k to i64
  %i.m = mul nuw i64 %.09.i.i, 10
  %i.n = add i64 %i.m, -48
  %i.o = add i64 %i.n, %i.l                       ; 3 uses
  %i.p = icmp samesign ult i64 %indvars.iv.next.i.i, %i.i
  %i.q = icmp ult i64 %i.o, 1844674407370955161
  %i.r = select i1 %i.p, i1 %i.q, i1 false
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd:bb.a
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = sext i8 %i.aa to i64
  %i.ac = mul nuw i64 %.09.i37.i, 10
  %i.ad = add i64 %i.ac, -48
  %i.ae = add i64 %i.ad, %i.ab                    ; 3 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next.i38.i, %i.y
  %i.ag = icmp ult i64 %i.ae, 1844674407370955161
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd:bb.a
  %i.au = load i8, ptr %i.at, align 1, !tbaa !9
  %i.av = sext i8 %i.au to i64
  %i.aw = mul nuw i64 %.09.i46.i, 10
  %i.ax = add i64 %i.aw, -48
  %i.ay = add i64 %i.ax, %i.av                    ; 3 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next.i47.i, %i.as
  %i.ba = icmp ult i64 %i.ay, 1844674407370955161
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd:bb.a
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = sext i8 %i.bo to i64
  %i.bq = mul nuw i64 %.09.i.i.i, 10
  %i.br = add i64 %i.bq, -48
  %i.bs = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.bm
  %i.bu = icmp ult i64 %i.bs, 1844674407370955161
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
end_hunk_4
begin_hunk_5_@_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd:bb.a
  %i.db = mul nuw i64 %switch.load97, %i.cz       ; 2 uses
  %i.dc = and i64 %i.db, 2147483648
  %i.dd = add nuw nsw i64 %i.dc, 2147483648
  %i.de = add nsw i32 %switch.load, %.19.lcssa.i.i
  %i.df = lshr i64 %i.db, 32
  %i.dg = add nuw i64 %i.df, %i.da
  %i.dh = lshr i64 %i.dd, 32
end_hunk_5
begin_hunk_6_@_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd:bb.a
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
end_hunk_6
begin_hunk_7_@_ZN14arrow_vendored17double_conversion6StrtodENS0_6VectorIKcEEi:bb.a
  br label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i

_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i: ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.09.1.i.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ], [ %0, %bb.b ] ; 4 uses
  %.sroa.3.1.i.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.i = icmp sgt i32 %.sroa.3.1.i.i, 0
  br i1 %i.i, label %.lr.ph, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i

end_hunk_7
begin_hunk_8_@_ZN14arrow_vendored17double_conversion6StrtodENS0_6VectorIKcEEi:bb.a
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i, !llvm.loop !25

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i: ; preds = %bb.d, %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i
  %3 = add nsw i32 %.sroa.3.1.i.i, %2
  br label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.m = phi i32 [ %.sroa.3.1.i.i, %.lr.ph ], [ %i.k, %bb.d ] ; 3 uses
  %indvars.iv.i22.i26 = phi i64 [ %i.j, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %i.n = add nsw i64 %indvars.iv.i22.i26, -1      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.1.i.i, i64 %i.n
end_hunk_8
begin_hunk_9_@_ZN14arrow_vendored17double_conversion6StrtodENS0_6VectorIKcEEi:bb.a

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i: ; preds = %bb.e
  %i.q = sub nsw i32 %.sroa.3.1.i.i, %i.m
  %4 = add nsw i32 %i.q, %2                       ; 2 uses
  %i.r = icmp ugt i64 %indvars.iv.i22.i26, 780
  br i1 %i.r, label %.preheader.i.preheader, label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

.preheader.i.preheader:                           ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(779) %i.b, ptr noundef nonnull align 1 dereferenceable(779) %.sroa.09.1.i.i, i64 779, i1 false), !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 779
  store i8 49, ptr %i.s, align 1, !tbaa !9
  %i.t = add nsw i32 %i.m, -780
  %i.u = add nsw i32 %i.t, %4
  br label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit: ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i, %.preheader.i.preheader
  %.sroa.6.0 = phi i32 [ 780, %.preheader.i.preheader ], [ 0, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %i.m, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.b, %.preheader.i.preheader ], [ %.sroa.09.1.i.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %.sroa.09.1.i.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ] ; 2 uses
  %.0 = phi i32 [ %i.u, %.preheader.i.preheader ], [ %3, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %4, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.v = call fastcc noundef zeroext i1 @_ZN14arrow_vendored17double_conversionL12ComputeGuessENS0_6VectorIKcEEiPd(ptr %.sroa.0.0, i32 %.sroa.6.0, i32 noundef %.0, ptr noundef %i.a)
  %i.w = load double, ptr %i.a, align 8, !tbaa !7 ; 6 uses
end_hunk_9
begin_hunk_10_@_ZN14arrow_vendored17double_conversion6StrtofENS0_6VectorIKcEEi:bb.a
  br label %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i

_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i: ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.09.1.i.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ], [ %0, %bb.b ] ; 4 uses
  %.sroa.3.1.i.i = phi i32 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.h = icmp sgt i32 %.sroa.3.1.i.i, 0
  br i1 %i.h, label %.lr.ph, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i

end_hunk_10
begin_hunk_11_@_ZN14arrow_vendored17double_conversion6StrtofENS0_6VectorIKcEEi:bb.a
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i, !llvm.loop !25

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i: ; preds = %bb.d, %_ZN14arrow_vendored17double_conversionL16TrimLeadingZerosENS0_6VectorIKcEE.exit.i
  %3 = add nsw i32 %.sroa.3.1.i.i, %2
  br label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi i32 [ %.sroa.3.1.i.i, %.lr.ph ], [ %i.j, %bb.d ] ; 3 uses
  %indvars.iv.i22.i25 = phi i64 [ %i.i, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %i.m = add nsw i64 %indvars.iv.i22.i25, -1      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.09.1.i.i, i64 %i.m
end_hunk_11
begin_hunk_12_@_ZN14arrow_vendored17double_conversion6StrtofENS0_6VectorIKcEEi:bb.a

_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i: ; preds = %bb.e
  %i.p = sub nsw i32 %.sroa.3.1.i.i, %i.l
  %4 = add nsw i32 %i.p, %2                       ; 2 uses
  %i.q = icmp ugt i64 %indvars.iv.i22.i25, 780
  br i1 %i.q, label %.preheader.i.preheader, label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

.preheader.i.preheader:                           ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(779) %i.a, ptr noundef nonnull align 1 dereferenceable(779) %.sroa.09.1.i.i, i64 779, i1 false), !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 779
  store i8 49, ptr %i.r, align 1, !tbaa !9
  %i.s = add nsw i32 %i.l, -780
  %i.t = add nsw i32 %i.s, %4
  br label %_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit

_ZN14arrow_vendored17double_conversionL10TrimAndCutENS0_6VectorIKcEEiPciPS3_Pi.exit: ; preds = %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i, %.preheader.i.preheader
  %.sroa.6.0 = phi i32 [ 780, %.preheader.i.preheader ], [ 0, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %i.l, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ]
  %.sroa.0.0 = phi ptr [ %i.a, %.preheader.i.preheader ], [ %.sroa.09.1.i.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %.sroa.09.1.i.i, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ]
  %.0 = phi i32 [ %i.t, %.preheader.i.preheader ], [ %3, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.thread.i ], [ %4, %_ZN14arrow_vendored17double_conversion17TrimTrailingZerosENS0_6VectorIKcEE.exit.i ]
  %i.u = call noundef float @_ZN14arrow_vendored17double_conversion13StrtofTrimmedENS0_6VectorIKcEEi(ptr %.sroa.0.0, i32 %.sroa.6.0, i32 noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret float %i.u
end_hunk_12
