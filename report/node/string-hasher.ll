inline.NumInlined: 24
inline.NumDeleted: 15
begin_hunk_0_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm
define hidden noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 9 uses
  %4 = load <2 x i64>, ptr %3, align 8            ; 3 uses
  %5 = extractelement <2 x i64> %4, i64 0         ; 2 uses
  %6 = xor i64 %5, %2
  %7 = zext i64 %6 to i128
  %8 = extractelement <2 x i64> %4, i64 1         ; 4 uses
  %i.b = zext i64 %8 to i128
  %i.c = mul nuw i128 %i.b, %7                    ; 2 uses
  %i.d = lshr i128 %i.c, 64
  %i.e = xor i128 %i.d, %i.c
  %i.f = trunc i128 %i.e to i64
  %i.g = xor i64 %i.a, %i.f
  %i.h = xor i64 %i.g, %2                         ; 6 uses
  %i.i = icmp ult i32 %1, 17
  br i1 %i.i, label %bb.b, label %bb.f, !prof !5

end_hunk_0
begin_hunk_1_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %i.bk = icmp ugt i32 %1, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  br i1 %i.bk, label %.preheader.preheader, label %.thread, !prof !6

.preheader.preheader:                             ; preds = %bb.f
  %9 = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.063.i = phi ptr [ %i.cq, %.preheader ], [ %0, %.preheader.preheader ] ; 7 uses
  %.062.i = phi i64 [ %i.cr, %.preheader ], [ %i.a, %.preheader.preheader ]
  %.061.i = phi i64 [ %i.cp, %.preheader ], [ %i.h, %.preheader.preheader ]
  %11 = phi <2 x i64> [ %25, %.preheader ], [ %10, %.preheader.preheader ]
  %i.bn = load <8 x i16>, ptr %.063.i, align 1
  %i.bo = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bn, <8 x i16> poison)
  %i.bp = bitcast <16 x i8> %i.bo to <2 x i64>
  %i.bq = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %i.br = load <8 x i16>, ptr %i.bq, align 1
  %i.bs = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.br, <8 x i16> poison)
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  %i.bu = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %i.bv = load <8 x i16>, ptr %i.bu, align 1
  %i.bw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> poison)
  %i.bx = bitcast <16 x i8> %i.bw to <2 x i64>
  %12 = getelementptr inbounds nuw i8, ptr %.063.i, i64 48
  %13 = load <8 x i16>, ptr %12, align 1
  %14 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %13, <8 x i16> poison)
  %15 = bitcast <16 x i8> %14 to <2 x i64>
  %16 = shufflevector <2 x i64> %i.bp, <2 x i64> %i.bx, <2 x i32> <i32 0, i32 2>
  %17 = xor <2 x i64> %16, %4
  %18 = shufflevector <2 x i64> %i.bt, <2 x i64> %15, <2 x i32> <i32 0, i32 2>
  %19 = xor <2 x i64> %18, %11
  %20 = zext <2 x i64> %17 to <2 x i128>
  %21 = zext <2 x i64> %19 to <2 x i128>
  %22 = mul nuw <2 x i128> %21, %20               ; 2 uses
  %23 = lshr <2 x i128> %22, splat (i128 64)
  %24 = xor <2 x i128> %23, %22
  %25 = trunc <2 x i128> %24 to <2 x i64>         ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.063.i, i64 64
  %i.bz = load <8 x i16>, ptr %i.by, align 1
  %i.ca = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bz, <8 x i16> poison)
end_hunk_1
begin_hunk_2_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %i.cg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cf, <8 x i16> poison)
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  %i.cj = xor i64 %i.ci, %.061.i
  %i.ck = zext i64 %i.cd to i128
  %i.cl = zext i64 %i.cj to i128
  %i.cm = mul nuw i128 %i.cl, %i.ck               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  br i1 %i.cs, label %.preheader, label %bb.g, !prof !5, !llvm.loop !7

bb.g:                                             ; preds = %.preheader
  %shift = shufflevector <2 x i64> %25, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i64> %shift, %25
  %26 = extractelement <2 x i64> %foldExtExtBinop, i64 0
  %i.ct = xor i64 %26, %i.cp                      ; 2 uses
  %i.cu = icmp samesign ugt i64 %i.cr, 16
  br i1 %i.cu, label %.thread, label %bb.i

end_hunk_3
begin_hunk_4_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %i.dd = bitcast <16 x i8> %i.dc to <2 x i64>
  %i.de = extractelement <2 x i64> %i.dd, i64 0
  %i.df = xor i64 %.166.i12, %i.de
  %i.dg = xor i64 %i.df, %8
  %i.dh = zext i64 %i.cz to i128
  %i.di = zext i64 %i.dg to i128
  %i.dj = mul nuw i128 %i.di, %i.dh               ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %.08 = phi i64 [ %i.av, %bb.c ], [ %i.er, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.aa, %bb.c ], [ %i.em, %bb.i ], [ %i.bj, %bb.e ], [ 0, %bb.d ]
  %.3.i = phi i64 [ %i.h, %bb.c ], [ %.2.i, %bb.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  %i.es = xor i64 %.0, %8
  %i.et = xor i64 %.3.i, %.08
  %i.eu = zext i64 %i.es to i128
  %i.ev = zext i64 %i.et to i128
end_hunk_5
begin_hunk_6_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %i.ey = lshr i128 %i.ew, 64
  %i.ez = trunc nuw i128 %i.ey to i64
  %i.fa = xor i64 %i.a, %i.ex
  %i.fb = xor i64 %i.fa, %5
  %i.fc = xor i64 %8, %i.ez
  %i.fd = zext i64 %i.fb to i128
  %i.fe = zext i64 %i.fc to i128
  %i.ff = mul nuw i128 %i.fe, %i.fd               ; 2 uses
end_hunk_6
