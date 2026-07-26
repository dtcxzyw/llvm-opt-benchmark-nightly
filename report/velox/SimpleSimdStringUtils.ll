inline.NumInlined: 69
inline.NumDeleted: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5folly6detail26simdHasSpaceOrCntrlSymbolsENS_5RangeIPKcEE(ptr %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = and i64 %i.c, -32                        ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = and i64 %i.a, -32                        ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = and i64 %i.c, 31                         ; 2 uses
  %.not.i = icmp eq i64 %i.d, %i.f
  br i1 %.not.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load <32 x i8>, ptr %i.e, align 32, !tbaa !11 ; 2 uses
  %i.j = icmp ult <32 x i8> %i.i, splat (i8 33)
  %i.k = icmp eq <32 x i8> %i.i, splat (i8 127)
  %i.l = or <32 x i1> %i.j, %i.k
  %i.m = bitcast <32 x i1> %i.l to i32
  %i.n = shl nuw nsw i64 4294967295, %i.h
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.m, %i.o
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.r = icmp eq ptr %i.q, %i.g
  br i1 %i.r, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit, label %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm0EEEbSt17integral_constantImXT_EE.exit

.loopexit:                                        ; preds = %bb.i, %bb.h
  %.2.lcssa = phi ptr [ %i.at, %bb.h ], [ %scevgep232, %bb.i ] ; 3 uses
  %i.s = icmp eq ptr %.2.lcssa, %i.g
  br i1 %i.s, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit, label %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm0EEEbSt17integral_constantImXT_EE.exit

_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm0EEEbSt17integral_constantImXT_EE.exit: ; preds = %bb.d, %.loopexit
  %.1211 = phi ptr [ %.2.lcssa, %.loopexit ], [ %i.q, %bb.d ] ; 5 uses
  %i.t = load <32 x i8>, ptr %.1211, align 1, !tbaa !11 ; 2 uses
  %i.u = icmp ult <32 x i8> %i.t, splat (i8 33)
  %i.v = icmp eq <32 x i8> %i.t, splat (i8 127)
  %i.w = or <32 x i1> %i.u, %i.v
  %i.x = bitcast <32 x i1> %i.w to i32
  %.not202 = icmp eq i32 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %.1211, i64 32 ; 3 uses
  br i1 %.not202, label %bb.e, label %_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit

bb.e:                                             ; preds = %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm0EEEbSt17integral_constantImXT_EE.exit
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit, label %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm1EEEbSt17integral_constantImXT_EE.exit

_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm1EEEbSt17integral_constantImXT_EE.exit: ; preds = %bb.e
  %i.aa = load <32 x i8>, ptr %i.y, align 1, !tbaa !11 ; 2 uses
  %i.ab = icmp ult <32 x i8> %i.aa, splat (i8 33)
  %i.ac = icmp eq <32 x i8> %i.aa, splat (i8 127)
  %i.ad = or <32 x i1> %i.ab, %i.ac
  %i.ae = bitcast <32 x i1> %i.ad to i32
  %.not203 = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.1211, i64 64 ; 3 uses
  br i1 %.not203, label %bb.f, label %_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit

bb.f:                                             ; preds = %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm1EEEbSt17integral_constantImXT_EE.exit
  %i.ag = icmp eq ptr %i.af, %i.g
  br i1 %i.ag, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit, label %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm2EEEbSt17integral_constantImXT_EE.exit

_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm2EEEbSt17integral_constantImXT_EE.exit: ; preds = %bb.f
  %i.ah = load <32 x i8>, ptr %i.af, align 1, !tbaa !11 ; 2 uses
  %i.ai = icmp ult <32 x i8> %i.ah, splat (i8 33)
  %i.aj = icmp eq <32 x i8> %i.ah, splat (i8 127)
  %i.ak = or <32 x i1> %i.ai, %i.aj
  %i.al = bitcast <32 x i1> %i.ak to i32
  %.not204 = icmp eq i32 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %.1211, i64 96 ; 3 uses
  br i1 %.not204, label %bb.g, label %_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit

bb.g:                                             ; preds = %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm2EEEbSt17integral_constantImXT_EE.exit
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit, label %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplINS1_19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEEEEJLm0ELm1ELm2ELm3EEEEbT_St16integer_sequenceImJXspT0_EEE.exit

_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplINS1_19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEEEEJLm0ELm1ELm2ELm3EEEEbT_St16integer_sequenceImJXspT0_EEE.exit: ; preds = %bb.g
  %i.ao = load <32 x i8>, ptr %i.am, align 1, !tbaa !11 ; 2 uses
  %i.ap = icmp ult <32 x i8> %i.ao, splat (i8 33)
  %i.aq = icmp eq <32 x i8> %i.ao, splat (i8 127)
  %i.ar = or <32 x i1> %i.ap, %i.aq
  %i.as = bitcast <32 x i1> %i.ar to i32
  %.not205 = icmp eq i32 %i.as, 0
  %i.at = getelementptr i8, ptr %.1211, i64 128   ; 4 uses
  br i1 %.not205, label %bb.h, label %_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit

bb.h:                                             ; preds = %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplINS1_19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEEEEJLm0ELm1ELm2ELm3EEEEbT_St16integer_sequenceImJXspT0_EEE.exit
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.f, %i.au                     ; 2 uses
  %i.aw = lshr i64 %i.av, 7                       ; 2 uses
  %.not.i3208 = icmp eq i64 %i.aw, 0
  br i1 %.not.i3208, label %.loopexit, label %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit.preheader

_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit.preheader: ; preds = %bb.h
  %i.ax = and i64 %i.av, -128
  %scevgep232 = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit

bb.i:                                             ; preds = %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.2209, i64 128
  %i.az = add nsw i64 %.0.i210, -1                ; 2 uses
  %.not.i3 = icmp eq i64 %i.az, 0
  br i1 %.not.i3, label %.loopexit, label %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit, !llvm.loop !12

_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit: ; preds = %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit.preheader, %bb.i
  %.0.i210 = phi i64 [ %i.az, %bb.i ], [ %i.aw, %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit.preheader ]
  %.2209 = phi ptr [ %i.ay, %bb.i ], [ %i.at, %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit.preheader ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.2209, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.2209, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %.2209, i64 96
  %i.bd = load <32 x i8>, ptr %.2209, align 1, !tbaa !11, !noalias !14 ; 2 uses
  %i.be = load <32 x i8>, ptr %i.ba, align 1, !tbaa !11, !noalias !14 ; 2 uses
  %i.bf = load <32 x i8>, ptr %i.bb, align 1, !tbaa !11, !noalias !14 ; 2 uses
  %i.bg = load <32 x i8>, ptr %i.bc, align 1, !tbaa !11, !noalias !14 ; 2 uses
  %i.bh = icmp ult <32 x i8> %i.bd, splat (i8 33)
  %i.bi = icmp eq <32 x i8> %i.bd, splat (i8 127)
  %i.bj = or <32 x i1> %i.bh, %i.bi
  %i.bk = icmp ult <32 x i8> %i.be, splat (i8 33)
  %i.bl = icmp eq <32 x i8> %i.be, splat (i8 127)
  %i.bm = or <32 x i1> %i.bk, %i.bl
  %i.bn = icmp ult <32 x i8> %i.bf, splat (i8 33)
  %i.bo = icmp eq <32 x i8> %i.bf, splat (i8 127)
  %i.bp = or <32 x i1> %i.bn, %i.bo
  %i.bq = icmp ult <32 x i8> %i.bg, splat (i8 33)
  %i.br = icmp eq <32 x i8> %i.bg, splat (i8 127)
  %i.bs = or <32 x i1> %i.bq, %i.br
  %i.bt = or <32 x i1> %i.bj, %i.bm
  %i.bu = or <32 x i1> %i.bp, %i.bs
  %i.bv = or <32 x i1> %i.bt, %i.bu
  %i.bw = bitcast <32 x i1> %i.bv to i32
  %.not206 = icmp eq i32 %i.bw, 0
  br i1 %.not206, label %bb.i, label %_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit

_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit: ; preds = %bb.f, %bb.e, %.loopexit, %bb.g, %bb.d
  %.4191 = phi ptr [ %i.q, %bb.d ], [ %i.af, %bb.f ], [ %.2.lcssa, %.loopexit ], [ %i.y, %bb.e ], [ %i.am, %bb.g ] ; 2 uses
  %i.bx = icmp eq ptr %.4191, %1
  br i1 %i.bx, label %_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %.4191, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.h, %bb.b ], [ 0, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bz, %i.a
  %i.cb = load <32 x i8>, ptr %.0, align 1, !tbaa !11 ; 2 uses
  %i.cc = icmp ult <32 x i8> %i.cb, splat (i8 33)
  %i.cd = icmp eq <32 x i8> %i.cb, splat (i8 127)
  %i.ce = or <32 x i1> %i.cc, %i.cd
  %.sroa.2.0.extract.trunc.i = trunc i64 %i.ca to i32 ; 2 uses
  %i.cf = bitcast <32 x i1> %i.ce to i32
  %i.cg = shl nuw nsw i64 4294967295, %.sroa.02.0.i
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.cf, %i.ch
  %i.cj = icmp ult i32 %.sroa.2.0.extract.trunc.i, 33
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = sub nuw nsw i32 32, %.sroa.2.0.extract.trunc.i
  %i.cl = tail call noundef i32 @llvm.x86.bmi.bzhi.32(i32 %i.ci, i32 %i.ck)
  %i.cm = icmp ne i32 %i.cl, 0
  br label %_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit

_ZN5folly4simd6detail19simdForEachAligningILi4EKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS3_NS_6detail25SimpleSimdStringUtilsImplIS6_E28HasSpaceOrCntrlSymbolsLambdaEEEEEviPT0_SE_RT1_.exit: ; preds = %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm2EEEbSt17integral_constantImXT_EE.exit, %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm1EEEbSt17integral_constantImXT_EE.exit, %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm0EEEbSt17integral_constantImXT_EE.exit, %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplINS1_19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEEEEJLm0ELm1ELm2ELm3EEEEbT_St16integer_sequenceImJXspT0_EEE.exit, %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit, %bb.c, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit, %bb.j, %bb.a
  %.sroa.2.1 = phi i1 [ false, %bb.a ], [ %i.cm, %bb.j ], [ true, %bb.c ], [ false, %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SF_RT0_St17integral_constantImXT1_EE.exit ], [ true, %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplIZNKS1_19SimdForEachMainLoopclIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEELm4EEEbiRPT_SH_RT0_St17integral_constantImXT1_EEEUlSG_E_JLm0ELm1ELm2ELm3EEEEbSG_St16integer_sequenceImJXspT0_EEE.exit ], [ true, %_ZN5folly4simd6detail11UnrollUtils15unrollUntilImplINS1_19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS6_NS_6detail25SimpleSimdStringUtilsImplIS9_E28HasSpaceOrCntrlSymbolsLambdaEEEEEJLm0ELm1ELm2ELm3EEEEbT_St16integer_sequenceImJXspT0_EEE.exit ], [ true, %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm0EEEbSt17integral_constantImXT_EE.exit ], [ true, %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm1EEEbSt17integral_constantImXT_EE.exit ], [ true, %_ZN5folly4simd6detail19SimdForEachMainLoop16SmallStepsLambdaIKhNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEEPS4_NS_6detail25SimpleSimdStringUtilsImplIS7_E28HasSpaceOrCntrlSymbolsLambdaEEEEclILm2EEEbSt17integral_constantImXT_EE.exit ]
  ret i1 %.sroa.2.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.bmi.bzhi.32(i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN5folly4simd6detail11UnrollUtils12arrayMapImplIPKhLm4EZNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEES5_NS_6detail25SimpleSimdStringUtilsImplIS8_E28HasSpaceOrCntrlSymbolsLambdaEE12unrolledStepILm4EEEbSt5arrayIS5_XT_EEEUlS5_E_JLm0ELm1ELm2ELm3EEEEDaRKSF_IT_XT0_EET1_St16integer_sequenceImJXspT2_EEE: argument 0"}
!16 = distinct !{!16, !"_ZN5folly4simd6detail11UnrollUtils12arrayMapImplIPKhLm4EZNS1_13AnyOfDelegateINS1_16SimdAvx2PlatformIhEES5_NS_6detail25SimpleSimdStringUtilsImplIS8_E28HasSpaceOrCntrlSymbolsLambdaEE12unrolledStepILm4EEEbSt5arrayIS5_XT_EEEUlS5_E_JLm0ELm1ELm2ELm3EEEEDaRKSF_IT_XT0_EET1_St16integer_sequenceImJXspT2_EEE"}
end_hunk_0
