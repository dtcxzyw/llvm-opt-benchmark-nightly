inline.NumInlined: 24
inline.NumDeleted: 15
begin_hunk_0_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm
define hidden noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 9 uses
  %4 = load i64, ptr %3, align 8                  ; 3 uses
  %5 = xor i64 %4, %2
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = load i64, ptr %6, align 8                  ; 5 uses
  %8 = zext i64 %5 to i128
  %i.b = zext i64 %7 to i128
  %i.c = mul nuw i128 %i.b, %8                    ; 2 uses
  %i.d = lshr i128 %i.c, 64
  %i.e = xor i128 %i.d, %i.c
  %i.f = trunc i128 %i.e to i64
  %i.g = xor i64 %i.a, %i.f
  %i.h = xor i64 %i.g, %2                         ; 7 uses
  %i.i = icmp ult i32 %1, 17
  br i1 %i.i, label %bb.b, label %bb.f, !prof !5

end_hunk_0
begin_hunk_1_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %i.bk = icmp ugt i32 %1, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  br i1 %i.bk, label %.preheader, label %.thread, !prof !6

.preheader:                                       ; preds = %bb.f, %.preheader
  %.065.i = phi i64 [ %18, %.preheader ], [ %i.h, %bb.f ]
  %.063.i = phi ptr [ %i.cq, %.preheader ], [ %0, %bb.f ] ; 7 uses
  %.062.i = phi i64 [ %i.cr, %.preheader ], [ %i.a, %bb.f ]
  %.061.i = phi i64 [ %32, %.preheader ], [ %i.h, %bb.f ]
  %.0.i = phi i64 [ %i.cp, %.preheader ], [ %i.h, %bb.f ]
  %i.bn = load <8 x i16>, ptr %.063.i, align 1
  %i.bo = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bn, <8 x i16> poison)
  %i.bp = bitcast <16 x i8> %i.bo to <2 x i64>
  %9 = extractelement <2 x i64> %i.bp, i64 0
  %10 = xor i64 %9, %4
  %i.bq = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %i.br = load <8 x i16>, ptr %i.bq, align 1
  %i.bs = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.br, <8 x i16> poison)
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  %11 = extractelement <2 x i64> %i.bt, i64 0
  %12 = xor i64 %11, %.065.i
  %13 = zext i64 %10 to i128
  %14 = zext i64 %12 to i128
  %15 = mul nuw i128 %14, %13                     ; 2 uses
  %16 = lshr i128 %15, 64
  %17 = xor i128 %16, %15
  %18 = trunc i128 %17 to i64                     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %i.bv = load <8 x i16>, ptr %i.bu, align 1
  %i.bw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> poison)
  %i.bx = bitcast <16 x i8> %i.bw to <2 x i64>
  %19 = extractelement <2 x i64> %i.bx, i64 0
  %20 = xor i64 %19, %7
  %21 = getelementptr inbounds nuw i8, ptr %.063.i, i64 48
  %22 = load <8 x i16>, ptr %21, align 1
  %23 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %22, <8 x i16> poison)
  %24 = bitcast <16 x i8> %23 to <2 x i64>
  %25 = extractelement <2 x i64> %24, i64 0
  %26 = xor i64 %25, %.061.i
  %27 = zext i64 %20 to i128
  %28 = zext i64 %26 to i128
  %29 = mul nuw i128 %28, %27                     ; 2 uses
  %30 = lshr i128 %29, 64
  %31 = xor i128 %30, %29
  %32 = trunc i128 %31 to i64                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.063.i, i64 64
  %i.bz = load <8 x i16>, ptr %i.by, align 1
  %i.ca = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bz, <8 x i16> poison)
end_hunk_1
begin_hunk_2_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %i.cg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cf, <8 x i16> poison)
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  %i.cj = xor i64 %i.ci, %.0.i
  %i.ck = zext i64 %i.cd to i128
  %i.cl = zext i64 %i.cj to i128
  %i.cm = mul nuw i128 %i.cl, %i.ck               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  br i1 %i.cs, label %.preheader, label %bb.g, !prof !5, !llvm.loop !7

bb.g:                                             ; preds = %.preheader
  %33 = xor i64 %32, %18
  %i.ct = xor i64 %33, %i.cp                      ; 2 uses
  %i.cu = icmp samesign ugt i64 %i.cr, 16
  br i1 %i.cu, label %.thread, label %bb.i

end_hunk_3
begin_hunk_4_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %i.dd = bitcast <16 x i8> %i.dc to <2 x i64>
  %i.de = extractelement <2 x i64> %i.dd, i64 0
  %i.df = xor i64 %.166.i12, %i.de
  %i.dg = xor i64 %i.df, %7
  %i.dh = zext i64 %i.cz to i128
  %i.di = zext i64 %i.dg to i128
  %i.dj = mul nuw i128 %i.di, %i.dh               ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %.08 = phi i64 [ %i.av, %bb.c ], [ %i.er, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.aa, %bb.c ], [ %i.em, %bb.i ], [ %i.bj, %bb.e ], [ 0, %bb.d ]
  %.3.i = phi i64 [ %i.h, %bb.c ], [ %.2.i, %bb.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  %i.es = xor i64 %.0, %7
  %i.et = xor i64 %.3.i, %.08
  %i.eu = zext i64 %i.es to i128
  %i.ev = zext i64 %i.et to i128
end_hunk_5
begin_hunk_6_@_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm:bb.a
  %i.ey = lshr i128 %i.ew, 64
  %i.ez = trunc nuw i128 %i.ey to i64
  %i.fa = xor i64 %i.a, %i.ex
  %i.fb = xor i64 %i.fa, %4
  %i.fc = xor i64 %7, %i.ez
  %i.fd = zext i64 %i.fb to i128
  %i.fe = zext i64 %i.fc to i128
  %i.ff = mul nuw i128 %i.fe, %i.fd               ; 2 uses
end_hunk_6
