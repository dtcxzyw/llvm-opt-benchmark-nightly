begin_hunk_0
inline.NumDeleted: 4
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4absl12lts_2025051215random_internal16kRandenRoundKeysE = external constant [2176 x i8], align 16
@_ZN12_GLOBAL__N_13te0E = internal unnamed_addr constant [256 x i32] [i32 -1520213050, i32 -2072216328, i32 -1720223762, i32 -1921287178, i32 234025727, i32 -1117033514, i32 -1318096930, i32 1422247313, i32 1345335392, i32 50397442, i32 -1452841010, i32 2099981142, i32 436141799, i32 1658312629, i32 -424957107, i32 -1703512340, i32 1170918031, i32 -1652391393, i32 1086966153, i32 -2021818886, i32 368769775, i32 -346465870, i32 -918075506, i32 200339707, i32 -324162239, i32 1742001331, i32 -39673249, i32 -357585083, i32 -1080255453, i32 -140204973, i32 -1770884380, i32 1539358875, i32 -1028147339, i32 486407649, i32 -1366060227, i32 1780885068, i32 1513502316, i32 1094664062, i32 49805301, i32 1338821763, i32 1546925160, i32 -190470831, i32 887481809, i32 150073849, i32 -1821281822, i32 1943591083, i32 1395732834, i32 1058346282, i32 201589768, i32 1388824469, i32 1696801606, i32 1589887901, i32 672667696, i32 -1583966665, i32 251987210, i32 -1248159185, i32 151455502, i32 907153956, i32 -1686077413, i32 1038279391, i32 652995533, i32 1764173646, i32 -843926913, i32 -1619692054, i32 453576978, i32 -1635548387, i32 1949051992, i32 773462580, i32 756751158, i32 -1301385508, i32 -296068428, i32 -73359269, i32 -162377052, i32 1295727478, i32 1641469623, i32 -827083907, i32 2066295122, i32 1055122397, i32 1898917726, i32 -1752923117, i32 -179088474, i32 1758581177, i32 0, i32 753790401, i32 1612718144, i32 536673507, i32 -927878791, i32 -312779850, i32 -1100322092, i32 1187761037, i32 -641810841, i32 1262041458, i32 -565556588, i32 -733197160, i32 -396863312, i32 1255133061, i32 1808847035, i32 720367557, i32 -441800113, i32 385612781, i32 -985447546, i32 -682799718, i32 1429418854, i32 -1803188975, i32 -817543798, i32 284817897, i32 100794884, i32 -2122350594, i32 -263171936, i32 1144798328, i32 -1163944155, i32 -475486133, i32 -212774494, i32 -22830243, i32 -1069531008, i32 -1970303227, i32 -1382903233, i32 -1130521311, i32 1211644016, i32 83228145, i32 -541279133, i32 -1044990345, i32 1977277103, i32 1663115586, i32 806359072, i32 452984805, i32 250868733, i32 1842533055, i32 1288555905, i32 336333848, i32 890442534, i32 804056259, i32 -513843266, i32 -1567123659, i32 -867941240, i32 957814574, i32 1472513171, i32 -223893675, i32 -2105639172, i32 1195195770, i32 -1402706744, i32 -413311558, i32 723065138, i32 -1787595802, i32 -1604296512, i32 -1736343271, i32 -783331426, i32 2145180835, i32 1713513028, i32 2116692564, i32 -1416589253, i32 -2088204277, i32 -901364084, i32 703524551, i32 -742868885, i32 1007948840, i32 2044649127, i32 -497131844, i32 487262998, i32 1994120109, i32 1004593371, i32 1446130276, i32 1312438900, i32 503974420, i32 -615954030, i32 168166924, i32 1814307912, i32 -463709000, i32 1573044895, i32 1859376061, i32 -273896381, i32 -1503501628, i32 -1466855111, i32 -1533700815, i32 937747667, i32 -1954973198, i32 854058965, i32 1137232011, i32 1496790894, i32 -1217565222, i32 -1936880383, i32 1691735473, i32 -766620004, i32 -525751991, i32 -1267962664, i32 -95005012, i32 133494003, i32 636152527, i32 -1352309302, i32 -1904575756, i32 -374428089, i32 403179536, i32 -709182865, i32 -2005370640, i32 1864705354, i32 1915629148, i32 605822008, i32 -240736681, i32 -944458637, i32 1371981463, i32 602466507, i32 2094914977, i32 -1670089496, i32 555687742, i32 -582268010, i32 -591544991, i32 -2037675251, i32 -2054518257, i32 -1871679264, i32 1111375484, i32 -994724495, i32 -1436129588, i32 -666351472, i32 84083462, i32 32962295, i32 302911004, i32 -1553899070, i32 1597322602, i32 -111716434, i32 -793134743, i32 -1853454825, i32 1489093017, i32 656219450, i32 -1180787161, i32 954327513, i32 335083755, i32 -1281845205, i32 856756514, i32 -1150719534, i32 1893325225, i32 -1987146233, i32 -1483434957, i32 -1231316179, i32 572399164, i32 -1836611819, i32 552200649, i32 1238290055, i32 -11184726, i32 2015897680, i32 2061492133, i32 -1886614525, i32 -123625127, i32 -2138470135, i32 386731290, i32 -624967835, i32 837215959, i32 -968736124, i32 -1201116976, i32 -1019133566, i32 -1332111063, i32 1999449434, i32 286199582, i32 -877612933, i32 -61582168, i32 -692339859, i32 974525996], align 16
end_hunk_0
begin_hunk_1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 16, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
end_hunk_1
begin_hunk_2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.promoted = load <2 x i64>, ptr %i.b, align 16
  %.promoted91 = load <2 x i64>, ptr %i.d, align 16
  %.promoted93 = load <2 x i64>, ptr %i.f, align 16
  %.promoted95 = load <2 x i64>, ptr %i.h, align 16
  %.promoted97 = load <2 x i64>, ptr %1, align 16
  %.promoted99 = load <2 x i64>, ptr %i.k, align 16
  %.promoted101 = load <2 x i64>, ptr %i.m, align 16
  %.promoted103 = load <2 x i64>, ptr %i.o, align 16
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit
  %.0.i90 = phi i64 [ 0, %bb.a ], [ %i.mh, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.04.i89 = phi ptr [ %0, %bb.a ], [ %i.iu, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.026.0.copyload.i90112 = phi <2 x i64> [ %.promoted, %bb.a ], [ %.sroa.026.0.copyload.i, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.022.0.copyload.i92111 = phi <2 x i64> [ %.promoted91, %bb.a ], [ %.sroa.022.0.copyload.i, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.014.0.copyload.i94110 = phi <2 x i64> [ %.promoted93, %bb.a ], [ %.sroa.014.0.copyload.i, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.018.0.copyload.i96109 = phi <2 x i64> [ %.promoted95, %bb.a ], [ %.sroa.018.0.copyload.i, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.030.0.copyload.i98108 = phi <2 x i64> [ %.promoted97, %bb.a ], [ %.sroa.030.0.copyload.i, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.010.0.copyload.i100107 = phi <2 x i64> [ %.promoted99, %bb.a ], [ %.sroa.010.0.copyload.i, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.02.0.copyload.i102106 = phi <2 x i64> [ %.promoted101, %bb.a ], [ %.sroa.02.0.copyload.i, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  %.sroa.06.0.copyload.i104105 = phi <2 x i64> [ %.promoted103, %bb.a ], [ %.sroa.06.0.copyload.i, %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
end_hunk_2
begin_hunk_3
  br i1 %i.mg, label %bb.b, label %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit, !llvm.loop !9

_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit: ; preds = %bb.b
  %.sroa.030.0.copyload.i = load <2 x i64>, ptr %i.a, align 16 ; 3 uses
  %.sroa.026.0.copyload.i = load <2 x i64>, ptr %i.c, align 16 ; 2 uses
  %.sroa.022.0.copyload.i = load <2 x i64>, ptr %i.e, align 16 ; 2 uses
  %.sroa.018.0.copyload.i = load <2 x i64>, ptr %i.g, align 16 ; 2 uses
  %.sroa.014.0.copyload.i = load <2 x i64>, ptr %i.i, align 16 ; 2 uses
  %.sroa.010.0.copyload.i = load <2 x i64>, ptr %i.j, align 16 ; 2 uses
  %.sroa.06.0.copyload.i = load <2 x i64>, ptr %i.l, align 16 ; 2 uses
  %.sroa.02.0.copyload.i = load <2 x i64>, ptr %i.n, align 16 ; 2 uses
  store <2 x i64> %.sroa.030.0.copyload.i, ptr %1, align 16
  store <2 x i64> %.sroa.026.0.copyload.i90112, ptr %i.l, align 16
  store <2 x i64> %.sroa.026.0.copyload.i, ptr %i.b, align 16
  store <2 x i64> %.sroa.022.0.copyload.i92111, ptr %i.g, align 16
  store <2 x i64> %.sroa.022.0.copyload.i, ptr %i.d, align 16
  store <2 x i64> %.sroa.014.0.copyload.i94110, ptr %i.n, align 16
  store <2 x i64> %.sroa.018.0.copyload.i, ptr %i.h, align 16
  store <2 x i64> %.sroa.018.0.copyload.i96109, ptr %i.a, align 16
  store <2 x i64> %.sroa.014.0.copyload.i, ptr %i.f, align 16
  store <2 x i64> %.sroa.030.0.copyload.i98108, ptr %i.j, align 16
  store <2 x i64> %.sroa.010.0.copyload.i, ptr %i.k, align 16
  store <2 x i64> %.sroa.010.0.copyload.i100107, ptr %i.e, align 16
  store <2 x i64> %.sroa.06.0.copyload.i, ptr %i.o, align 16
  store <2 x i64> %.sroa.02.0.copyload.i102106, ptr %i.c, align 16
  store <2 x i64> %.sroa.02.0.copyload.i, ptr %i.m, align 16
  store <2 x i64> %.sroa.06.0.copyload.i104105, ptr %i.i, align 16
  %i.mh = add nuw nsw i64 %.0.i90, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.mh, 17
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_17PermuteEPN4absl12lts_202505127uint128EPKS2_.exit, label %.preheader, !llvm.loop !11

_ZN12_GLOBAL__N_17PermuteEPN4absl12lts_202505127uint128EPKS2_.exit: ; preds = %_ZN12_GLOBAL__N_112FeistelRoundEPN4absl12lts_202505127uint128EPKS2_.exit
  %2 = bitcast <2 x i64> %.sroa.030.0.copyload.i to i128
  %i.mi = zext i64 %.sroa.4.0.copyload to i128
  %i.mj = shl nuw i128 %i.mi, 64
  %i.mk = zext i64 %.sroa.01.0.copyload to i128
  %i.ml = or disjoint i128 %i.mj, %i.mk
  %i.mm = xor i128 %i.ml, %2                      ; 2 uses
  %i.mn = trunc i128 %i.mm to i64
  %i.mo = lshr i128 %i.mm, 64
  %i.mp = trunc nuw i128 %i.mo to i64
end_hunk_3
begin_hunk_4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_4
begin_hunk_5
!8 = !{!"long", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
end_hunk_5
