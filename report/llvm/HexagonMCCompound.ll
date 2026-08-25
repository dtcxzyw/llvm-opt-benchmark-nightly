Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonMCCompound?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::MCInst" = type { i32, i32, %"class.llvm::SMLoc", %"class.llvm::SmallVector" }
%"class.llvm::SMLoc" = type { ptr }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [96 x i8] }

$_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL14cmpeqBitOpcode = internal unnamed_addr constant [8 x i32] [i32 1411, i32 1412, i32 1413, i32 1414, i32 1417, i32 1418, i32 1419, i32 1420], align 16
@_ZL14cmpgtBitOpcode = internal unnamed_addr constant [8 x i32] [i32 1447, i32 1448, i32 1449, i32 1450, i32 1453, i32 1454, i32 1455, i32 1456], align 16
@_ZL15cmpgtuBitOpcode = internal unnamed_addr constant [8 x i32] [i32 1483, i32 1484, i32 1485, i32 1486, i32 1489, i32 1490, i32 1491, i32 1492], align 16
@_ZL16cmpeqn1BitOpcode = internal unnamed_addr constant [8 x i32] [i32 1435, i32 1436, i32 1437, i32 1438, i32 1441, i32 1442, i32 1443, i32 1444], align 16
@_ZL15cmpeqiBitOpcode = internal unnamed_addr constant [8 x i32] [i32 1423, i32 1424, i32 1425, i32 1426, i32 1429, i32 1430, i32 1431, i32 1432], align 16
@_ZL16cmpgtn1BitOpcode = internal unnamed_addr constant [8 x i32] [i32 1471, i32 1472, i32 1473, i32 1474, i32 1477, i32 1478, i32 1479, i32 1480], align 16
@_ZL15cmpgtiBitOpcode = internal unnamed_addr constant [8 x i32] [i32 1459, i32 1460, i32 1461, i32 1462, i32 1465, i32 1466, i32 1467, i32 1468], align 16
@_ZL16cmpgtuiBitOpcode = internal unnamed_addr constant [8 x i32] [i32 1495, i32 1496, i32 1497, i32 1498, i32 1501, i32 1502, i32 1503, i32 1504], align 16
@_ZL12tstBitOpcode = internal unnamed_addr constant [8 x i32] [i32 1518, i32 1519, i32 1520, i32 1521, i32 1524, i32 1525, i32 1526, i32 1527], align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18HexagonMCInstrInfo11tryCompoundERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERNS_9MCContextERNS_6MCInstE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(2208) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.llvm::MCInst", align 8      ; 8 uses
  %5 = alloca %"class.llvm::MCInst", align 8      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 12 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp ult i32 %i.c, 2
  br i1 %i.e, label %bb.fk, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 11 uses
  store i32 0, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 6, ptr %i.j, align 4, !tbaa !12
  %i.k = icmp ugt i32 %i.c, 6
  br i1 %i.k, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull %i.h, i64 noundef %i.d, i64 noundef 16) #5
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !11
  %.pre197 = zext i32 %.pre.i.i to i64
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i, %bb.b
  %.pre-phi = phi i64 [ %.pre197, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.d, %bb.b ]
  %i.l = phi ptr [ %.pre.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.h, %bb.b ]
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !11
  %gepdiff.i.i.i = shl nuw nsw i64 %.pre-phi, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 8 %i.m, i64 %gepdiff.i.i.i, i1 false)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !8
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %i.n = phi i32 [ %.pre, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i ], [ 0, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i ] ; 5 uses
  store i32 %i.c, ptr %i.i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  store i32 0, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  store i32 6, ptr %i.r, align 4, !tbaa !12
  %.not.i.i.i19 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i19, label %_ZN4llvm6MCInstC2ERKS0_.exit28, label %bb.c

bb.c:                                             ; preds = %.sink.split.i.i.i
  %i.s = icmp ugt i32 %i.n, 6
  br i1 %i.s, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i23, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i20

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i23: ; preds = %bb.c
  %i.t = zext i32 %i.n to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull %i.p, i64 noundef %i.t, i64 noundef 16) #5
  %.pre.i.i24 = load i32, ptr %i.b, align 8, !tbaa !8 ; 2 uses
  %.not.i.i.i.i25 = icmp eq i32 %.pre.i.i24, 0
  br i1 %.not.i.i.i.i25, label %.sink.split.i.i.i22, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i26

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i26: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i23
  %.pre.i27 = load ptr, ptr %i.o, align 8, !tbaa !11
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i20

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i20: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i26, %bb.c
  %i.u = phi ptr [ %.pre.i27, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i26 ], [ %i.p, %bb.c ]
  %i.v = phi i32 [ %.pre.i.i24, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i26 ], [ %i.n, %bb.c ]
  %i.w = zext i32 %i.v to i64
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !11
  %gepdiff.i.i.i21 = shl nuw nsw i64 %i.w, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %i.x, i64 %gepdiff.i.i.i21, i1 false)
  br label %.sink.split.i.i.i22

.sink.split.i.i.i22:                              ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i20, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i23
  store i32 %i.n, ptr %i.q, align 8, !tbaa !8
  br label %_ZN4llvm6MCInstC2ERKS0_.exit28

_ZN4llvm6MCInstC2ERKS0_.exit28:                   ; preds = %.sink.split.i.i.i, %.sink.split.i.i.i22
  %i.y = call noundef zeroext i1 @_ZN4llvm16HexagonMCShuffleERNS_9MCContextEbRKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(2208) %2, i1 noundef zeroext false, ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(128) %3) #5
  %i.z = load i32, ptr %i.i, align 8, !tbaa !8
  %.not151.not.i135 = icmp eq i32 %i.z, 1
  br i1 %.not151.not.i135, label %.loopexit, label %.lr.ph156.preheader.i.lr.ph

.lr.ph156.preheader.i.lr.ph:                      ; preds = %_ZN4llvm6MCInstC2ERKS0_.exit28
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %.lr.ph156.preheader.i

.lr.ph156.preheader.i:                            ; preds = %.lr.ph156.preheader.i.lr.ph, %bb.fh
  %.0136 = phi i1 [ %i.y, %.lr.ph156.preheader.i.lr.ph ], [ %.1, %bb.fh ] ; 2 uses
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %.042150.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  br label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %.thread64.i, %.lr.ph156.preheader.i
  %.042154.i = phi ptr [ %.042.i, %.thread64.i ], [ %.042150.i, %.lr.ph156.preheader.i ] ; 2 uses
  %.037153.i = phi i1 [ %i.af, %.thread64.i ], [ false, %.lr.ph156.preheader.i ]
  %.pn53152.i = phi ptr [ %.042154.i, %.thread64.i ], [ %i.ac, %.lr.ph156.preheader.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn53152.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13 ; 12 uses
  %i.af = call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo8isImmextERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #5 ; 2 uses
  br i1 %i.af, label %.lr.ph156..thread64_crit_edge.i, label %bb.d

.lr.ph156..thread64_crit_edge.i:                  ; preds = %.lr.ph156.i
  %.pre.i31 = load i32, ptr %i.i, align 8, !tbaa !8
  br label %.thread64.i

bb.d:                                             ; preds = %.lr.ph156.i
  %i.ag = call noundef i32 @_ZN4llvm18HexagonMCInstrInfo7getTypeERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #5
  %i.ah = icmp eq i32 %i.ag, 35
  %.pre206.i = load i32, ptr %i.i, align 8, !tbaa !8 ; 2 uses
  br i1 %i.ah, label %bb.e, label %.thread64.i

bb.e:                                             ; preds = %bb.d
  %.not51138.i = icmp eq i32 %.pre206.i, 1
  br i1 %.not51138.i, label %.thread64.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %.039137.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 17 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i, %.lr.ph.i
  %.039141.i = phi ptr [ %.039137.i, %.lr.ph.i ], [ %.039.i, %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i ] ; 4 uses
  %.pn140.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.039141.i, %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i ] ; 2 uses
  %.040139.i = phi i1 [ false, %.lr.ph.i ], [ %.141.ph.i, %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn140.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13 ; 15 uses
  %i.am = icmp eq ptr %i.ae, %i.al
  br i1 %i.am, label %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo8isImmextERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #5
  br i1 %i.an, label %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = call fastcc noundef i32 @_ZL25getCompoundCandidateGroupRKN4llvm6MCInstEb(ptr noundef nonnull align 8 dereferenceable(128) %i.al, i1 noundef zeroext %.040139.i)
  %i.ap = call fastcc noundef i32 @_ZL25getCompoundCandidateGroupRKN4llvm6MCInstEb(ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i1 noundef zeroext %.037153.i) ; 2 uses
  %i.aq = icmp eq i32 %i.ao, 1                    ; 2 uses
  %i.ar = icmp eq i32 %i.ap, 3
  %or.cond.i.i = and i1 %i.aq, %i.ar
  br i1 %or.cond.i.i, label %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = icmp eq i32 %i.ap, 2
  %or.cond5.i.i = and i1 %i.aq, %i.as
  br i1 %or.cond5.i.i, label %.split.i, label %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i

.split.i:                                         ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !13
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !13
  %i.ba = icmp eq i32 %i.aw, %i.az
  br i1 %i.ba, label %bb.j, label %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i

_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.i: ; preds = %bb.h
  %i.bb = load i32, ptr %i.al, align 8, !tbaa !14
  switch i32 %i.bb, label %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i [
    i32 1055, label %bb.j
    i32 1050, label %bb.j
  ]

bb.j:                                             ; preds = %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.i, %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.bc = load i32, ptr %i.al, align 8, !tbaa !14
  switch i32 %i.bc, label %_ZL15getCompoundInsnRN4llvm9MCContextERKNS_6MCInstES4_.exit.i [
    i32 1055, label %bb.k
    i32 1050, label %bb.r
    i32 1226, label %bb.y
    i32 1229, label %bb.ak
    i32 1232, label %bb.aw
    i32 1227, label %bb.bi
    i32 1230, label %bb.cc
    i32 1233, label %bb.cw
    i32 2393, label %bb.di
  ]

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %.sroa.0.0.copyload279.i.i = load i8, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %.sroa.13288.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.13288.0.copyload.i.i = load i64, ptr %.sroa.13288.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  %i.bf = call noundef ptr @_ZN4llvm9MCContext12createMCInstEv(ptr noundef nonnull align 8 dereferenceable(2208) %2) #5 ; 6 uses
  store i32 1514, ptr %i.bf, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 9 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !8  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 28 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12
  %.not.i.i.i.i30 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i.i.i.i30, label %bb.m, label %bb.l, !prof !25

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 %.sroa.0.0.copyload279.i.i, i64 %.sroa.13288.0.copyload.i.i)
  %.pre352.i.i = load i32, ptr %i.bh, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl ; 2 uses
  store i8 %.sroa.0.0.copyload279.i.i, ptr %i.bn, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.sroa.13288.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !8
  %i.bp = add i32 %i.bo, 1                        ; 2 uses
  store i32 %i.bp, ptr %i.bh, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i: ; preds = %bb.m, %bb.l
  %i.bq = phi i32 [ %.pre352.i.i, %bb.l ], [ %i.bp, %bb.m ] ; 2 uses
  %i.br = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.071.0.copyload.i.i = load i8, ptr %i.bs, align 8, !tbaa !23 ; 2 uses
  %.sroa.273.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.273.0.copyload.i.i = load i64, ptr %.sroa.273.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  %i.bt = load i32, ptr %i.bj, align 4, !tbaa !12
  %.not.i.i188.i.i = icmp ult i32 %i.bq, %i.bt
  br i1 %.not.i.i188.i.i, label %bb.o, label %bb.n, !prof !25

bb.n:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 %.sroa.071.0.copyload.i.i, i64 %.sroa.273.0.copyload.i.i)
  %.pre353.i.i = load i32, ptr %i.bh, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit190.i.i

bb.o:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i
  %i.bu = zext i32 %i.bq to i64
  %i.bv = load ptr, ptr %i.bg, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bu ; 2 uses
  store i8 %.sroa.071.0.copyload.i.i, ptr %i.bw, align 1
  %.sroa.4.0..sroa_idx.i.i189.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %.sroa.273.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i189.i.i, align 1
  %i.bx = load i32, ptr %i.bh, align 8, !tbaa !8
  %i.by = add i32 %i.bx, 1                        ; 2 uses
  store i32 %i.by, ptr %i.bh, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit190.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit190.i.i: ; preds = %bb.o, %bb.n
  %i.bz = phi i32 [ %.pre353.i.i, %bb.n ], [ %i.by, %bb.o ] ; 2 uses
  %i.ca = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %.sroa.068.0.copyload.i.i = load i8, ptr %i.ca, align 8, !tbaa !23 ; 2 uses
  %.sroa.270.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.270.0.copyload.i.i = load i64, ptr %.sroa.270.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  %i.cb = load i32, ptr %i.bj, align 4, !tbaa !12
  %.not.i.i191.i.i = icmp ult i32 %i.bz, %i.cb
  br i1 %.not.i.i191.i.i, label %bb.q, label %bb.p, !prof !25

bb.p:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit190.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 %.sroa.068.0.copyload.i.i, i64 %.sroa.270.0.copyload.i.i)
  br label %bb.ds

bb.q:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit190.i.i
  %i.cc = zext i32 %i.bz to i64
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  store i8 %.sroa.068.0.copyload.i.i, ptr %i.ce, align 1
  %.sroa.4.0..sroa_idx.i.i192.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %.sroa.270.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i192.i.i, align 1
  %i.cf = load i32, ptr %i.bh, align 8, !tbaa !8
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.bh, align 8, !tbaa !8
  br label %bb.ds

bb.r:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !11 ; 4 uses
  %.sroa.0.0.copyload280.i.i = load i8, ptr %i.ci, align 8, !tbaa !23 ; 2 uses
  %.sroa.13288.0..sroa_idx289.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.13288.0.copyload290.i.i = load i64, ptr %.sroa.13288.0..sroa_idx289.i.i, align 8, !tbaa !13 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.sroa.0301.0.copyload.i.i = load i8, ptr %i.cj, align 8, !tbaa !23 ; 2 uses
  %.sroa.19316.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.sroa.19316.0.copyload.i.i = load i64, ptr %.sroa.19316.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  %i.ck = call noundef ptr @_ZN4llvm9MCContext12createMCInstEv(ptr noundef nonnull align 8 dereferenceable(2208) %2) #5 ; 6 uses
  store i32 1515, ptr %i.ck, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 9 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !8  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 28 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !12
  %.not.i.i194.i.i = icmp ult i32 %i.cn, %i.cp
  br i1 %.not.i.i194.i.i, label %bb.t, label %bb.s, !prof !25

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 %.sroa.0.0.copyload280.i.i, i64 %.sroa.13288.0.copyload290.i.i)
  %.pre350.i.i = load i32, ptr %i.cm, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit196.i.i

bb.t:                                             ; preds = %bb.r
  %i.cq = zext i32 %i.cn to i64
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cq ; 2 uses
  store i8 %.sroa.0.0.copyload280.i.i, ptr %i.cs, align 1
  %.sroa.4.0..sroa_idx.i.i195.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %.sroa.13288.0.copyload290.i.i, ptr %.sroa.4.0..sroa_idx.i.i195.i.i, align 1
  %i.ct = load i32, ptr %i.cm, align 8, !tbaa !8
  %i.cu = add i32 %i.ct, 1                        ; 2 uses
  store i32 %i.cu, ptr %i.cm, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit196.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit196.i.i: ; preds = %bb.t, %bb.s
  %i.cv = phi i32 [ %.pre350.i.i, %bb.s ], [ %i.cu, %bb.t ] ; 2 uses
  %i.cw = load i32, ptr %i.co, align 4, !tbaa !12
  %.not.i.i197.i.i = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i.i197.i.i, label %bb.v, label %bb.u, !prof !25

bb.u:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit196.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 %.sroa.0301.0.copyload.i.i, i64 %.sroa.19316.0.copyload.i.i)
  %.pre351.i.i = load i32, ptr %i.cm, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit199.i.i

bb.v:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit196.i.i
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %i.cl, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  store i8 %.sroa.0301.0.copyload.i.i, ptr %i.cz, align 1
  %.sroa.4.0..sroa_idx.i.i198.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %.sroa.19316.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i198.i.i, align 1
  %i.da = load i32, ptr %i.cm, align 8, !tbaa !8
  %i.db = add i32 %i.da, 1                        ; 2 uses
  store i32 %i.db, ptr %i.cm, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit199.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit199.i.i: ; preds = %bb.v, %bb.u
  %i.dc = phi i32 [ %.pre351.i.i, %bb.u ], [ %i.db, %bb.v ] ; 2 uses
  %i.dd = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %.sroa.059.0.copyload.i.i = load i8, ptr %i.dd, align 8, !tbaa !23 ; 2 uses
  %.sroa.261.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.261.0.copyload.i.i = load i64, ptr %.sroa.261.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  %i.de = load i32, ptr %i.co, align 4, !tbaa !12
  %.not.i.i200.i.i = icmp ult i32 %i.dc, %i.de
  br i1 %.not.i.i200.i.i, label %bb.x, label %bb.w, !prof !25

end_hunk_0
begin_hunk_1_@_ZN4llvm18HexagonMCInstrInfo11tryCompoundERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERNS_9MCContextERNS_6MCInstE:bb.a
bb.cz:                                            ; preds = %bb.cw
  %i.lz = select i1 %i.lx, i64 1, i64 3
  br label %_ZL13getCompoundOpRKN4llvm6MCInstE.exit261.i.i

bb.da:                                            ; preds = %bb.cw
  %i.ma = select i1 %i.lx, i64 4, i64 6
  br label %_ZL13getCompoundOpRKN4llvm6MCInstE.exit261.i.i

bb.db:                                            ; preds = %bb.cw
  %i.mb = select i1 %i.lx, i64 5, i64 7
  br label %_ZL13getCompoundOpRKN4llvm6MCInstE.exit261.i.i

_ZL13getCompoundOpRKN4llvm6MCInstE.exit261.i.i:   ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy
  %.0.i260.i.i = phi i64 [ %i.ly, %bb.cy ], [ %i.lz, %bb.cz ], [ %i.ma, %bb.da ], [ %i.mb, %bb.db ]
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr @_ZL16cmpgtuiBitOpcode, i64 %.0.i260.i.i
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !26
  %i.me = call noundef ptr @_ZN4llvm9MCContext12createMCInstEv(ptr noundef nonnull align 8 dereferenceable(2208) %2) #5 ; 6 uses
  store i32 %i.md, ptr %i.me, align 8, !tbaa !14
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 24 ; 9 uses
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !8  ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 28 ; 3 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !12
  %.not.i.i262.i.i = icmp ult i32 %i.mh, %i.mj
  br i1 %.not.i.i262.i.i, label %bb.dd, label %bb.dc, !prof !25

bb.dc:                                            ; preds = %_ZL13getCompoundOpRKN4llvm6MCInstE.exit261.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mf, i8 %.sroa.0301.0.copyload307.i.i, i64 %.sroa.19316.0.copyload328.i.i)
  %.pre338.i.i = load i32, ptr %i.mg, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit264.i.i

bb.dd:                                            ; preds = %_ZL13getCompoundOpRKN4llvm6MCInstE.exit261.i.i
  %i.mk = zext i32 %i.mh to i64
  %i.ml = load ptr, ptr %i.mf, align 8, !tbaa !11
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %i.mk ; 2 uses
  store i8 %.sroa.0301.0.copyload307.i.i, ptr %i.mm, align 1
  %.sroa.4.0..sroa_idx.i.i263.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store i64 %.sroa.19316.0.copyload328.i.i, ptr %.sroa.4.0..sroa_idx.i.i263.i.i, align 1
  %i.mn = load i32, ptr %i.mg, align 8, !tbaa !8
  %i.mo = add i32 %i.mn, 1                        ; 2 uses
  store i32 %i.mo, ptr %i.mg, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit264.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit264.i.i: ; preds = %bb.dd, %bb.dc
  %i.mp = phi i32 [ %.pre338.i.i, %bb.dc ], [ %i.mo, %bb.dd ] ; 2 uses
  %i.mq = load ptr, ptr %i.lt, align 8, !tbaa !11 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %.sroa.08.0.copyload.i.i = load i8, ptr %i.mr, align 8, !tbaa !23 ; 2 uses
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mq, i64 40
  %.sroa.210.0.copyload.i.i = load i64, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  %i.ms = load i32, ptr %i.mi, align 4, !tbaa !12
  %.not.i.i265.i.i = icmp ult i32 %i.mp, %i.ms
  br i1 %.not.i.i265.i.i, label %bb.df, label %bb.de, !prof !25

bb.de:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit264.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mf, i8 %.sroa.08.0.copyload.i.i, i64 %.sroa.210.0.copyload.i.i)
  %.pre339.i.i = load i32, ptr %i.mg, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit267.i.i

bb.df:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit264.i.i
  %i.mt = zext i32 %i.mp to i64
  %i.mu = load ptr, ptr %i.mf, align 8, !tbaa !11
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.mu, i64 %i.mt ; 2 uses
  store i8 %.sroa.08.0.copyload.i.i, ptr %i.mv, align 1
  %.sroa.4.0..sroa_idx.i.i266.i.i = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store i64 %.sroa.210.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i266.i.i, align 1
  %i.mw = load i32, ptr %i.mg, align 8, !tbaa !8
  %i.mx = add i32 %i.mw, 1                        ; 2 uses
  store i32 %i.mx, ptr %i.mg, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit267.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit267.i.i: ; preds = %bb.df, %bb.de
  %i.my = phi i32 [ %.pre339.i.i, %bb.de ], [ %i.mx, %bb.df ] ; 2 uses
  %i.mz = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %.sroa.05.0.copyload.i.i = load i8, ptr %i.na, align 8, !tbaa !23 ; 2 uses
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %.sroa.27.0.copyload.i.i = load i64, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  %i.nb = load i32, ptr %i.mi, align 4, !tbaa !12
  %.not.i.i268.i.i = icmp ult i32 %i.my, %i.nb
  br i1 %.not.i.i268.i.i, label %bb.dh, label %bb.dg, !prof !25

bb.dg:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit267.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mf, i8 %.sroa.05.0.copyload.i.i, i64 %.sroa.27.0.copyload.i.i)
  br label %bb.ds

bb.dh:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit267.i.i
  %i.nc = zext i32 %i.my to i64
  %i.nd = load ptr, ptr %i.mf, align 8, !tbaa !11
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %i.nc ; 2 uses
  store i8 %.sroa.05.0.copyload.i.i, ptr %i.ne, align 1
  %.sroa.4.0..sroa_idx.i.i269.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i64 %.sroa.27.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i269.i.i, align 1
  %i.nf = load i32, ptr %i.mg, align 8, !tbaa !8
  %i.ng = add i32 %i.nf, 1
  store i32 %i.ng, ptr %i.mg, align 8, !tbaa !8
  br label %bb.ds

bb.di:                                            ; preds = %bb.j
  %i.nh = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !11 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %.sroa.0301.0.copyload308.i.i = load i8, ptr %i.nj, align 8, !tbaa !23 ; 2 uses
  %.sroa.19316.0..sroa_idx329.i.i = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %.sroa.19316.0.copyload330.i.i = load i64, ptr %.sroa.19316.0..sroa_idx329.i.i, align 8, !tbaa !13 ; 2 uses
  %.val.i.i = load i32, ptr %i.ae, align 8, !tbaa !14
  %.val171.i.i = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.nk = getelementptr i8, ptr %.val171.i.i, i64 8
  %.val171.val.i.i = load i32, ptr %i.nk, align 8, !tbaa !13
  %i.nl = icmp eq i32 %.val171.val.i.i, 106       ; 4 uses
  switch i32 %.val.i.i, label %bb.dj [
    i32 1365, label %bb.dk
    i32 1366, label %bb.dl
    i32 1387, label %bb.dm
    i32 1388, label %bb.dn
  ]

bb.dj:                                            ; preds = %bb.di
  unreachable

bb.dk:                                            ; preds = %bb.di
  %i.nm = select i1 %i.nl, i64 0, i64 2
  br label %_ZL13getCompoundOpRKN4llvm6MCInstE.exit272.i.i

bb.dl:                                            ; preds = %bb.di
  %i.nn = select i1 %i.nl, i64 1, i64 3
  br label %_ZL13getCompoundOpRKN4llvm6MCInstE.exit272.i.i

bb.dm:                                            ; preds = %bb.di
  %i.no = select i1 %i.nl, i64 4, i64 6
  br label %_ZL13getCompoundOpRKN4llvm6MCInstE.exit272.i.i

bb.dn:                                            ; preds = %bb.di
  %i.np = select i1 %i.nl, i64 5, i64 7
  br label %_ZL13getCompoundOpRKN4llvm6MCInstE.exit272.i.i

_ZL13getCompoundOpRKN4llvm6MCInstE.exit272.i.i:   ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dk
  %.0.i271.i.i = phi i64 [ %i.nm, %bb.dk ], [ %i.nn, %bb.dl ], [ %i.no, %bb.dm ], [ %i.np, %bb.dn ]
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr @_ZL12tstBitOpcode, i64 %.0.i271.i.i
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !26
  %i.ns = call noundef ptr @_ZN4llvm9MCContext12createMCInstEv(ptr noundef nonnull align 8 dereferenceable(2208) %2) #5 ; 6 uses
  store i32 %i.nr, ptr %i.ns, align 8, !tbaa !14
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 24 ; 6 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !8  ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 28 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !12
  %.not.i.i273.i.i = icmp ult i32 %i.nv, %i.nx
  br i1 %.not.i.i273.i.i, label %bb.dp, label %bb.do, !prof !25

bb.do:                                            ; preds = %_ZL13getCompoundOpRKN4llvm6MCInstE.exit272.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.nt, i8 %.sroa.0301.0.copyload308.i.i, i64 %.sroa.19316.0.copyload330.i.i)
  %.pre.i.i29 = load i32, ptr %i.nu, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit275.i.i

bb.dp:                                            ; preds = %_ZL13getCompoundOpRKN4llvm6MCInstE.exit272.i.i
  %i.ny = zext i32 %i.nv to i64
  %i.nz = load ptr, ptr %i.nt, align 8, !tbaa !11
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %i.nz, i64 %i.ny ; 2 uses
  store i8 %.sroa.0301.0.copyload308.i.i, ptr %i.oa, align 1
  %.sroa.4.0..sroa_idx.i.i274.i.i = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store i64 %.sroa.19316.0.copyload330.i.i, ptr %.sroa.4.0..sroa_idx.i.i274.i.i, align 1
  %i.ob = load i32, ptr %i.nu, align 8, !tbaa !8
  %i.oc = add i32 %i.ob, 1                        ; 2 uses
  store i32 %i.oc, ptr %i.nu, align 8, !tbaa !8
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit275.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit275.i.i: ; preds = %bb.dp, %bb.do
  %i.od = phi i32 [ %.pre.i.i29, %bb.do ], [ %i.oc, %bb.dp ] ; 2 uses
  %i.oe = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.of, align 8, !tbaa !23 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %.sroa.21.0.copyload.i.i = load i64, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !13 ; 2 uses
  %i.og = load i32, ptr %i.nw, align 4, !tbaa !12
  %.not.i.i276.i.i = icmp ult i32 %i.od, %i.og
  br i1 %.not.i.i276.i.i, label %bb.dr, label %bb.dq, !prof !25

bb.dq:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit275.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.nt, i8 %.sroa.0.0.copyload.i.i, i64 %.sroa.21.0.copyload.i.i)
  br label %bb.ds

bb.dr:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit275.i.i
  %i.oh = zext i32 %i.od to i64
  %i.oi = load ptr, ptr %i.nt, align 8, !tbaa !11
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %i.oh ; 2 uses
  store i8 %.sroa.0.0.copyload.i.i, ptr %i.oj, align 1
  %.sroa.4.0..sroa_idx.i.i277.i.i = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i64 %.sroa.21.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i277.i.i, align 1
  %i.ok = load i32, ptr %i.nu, align 8, !tbaa !8
  %i.ol = add i32 %i.ok, 1
  store i32 %i.ol, ptr %i.nu, align 8, !tbaa !8
  br label %bb.ds

_ZL15getCompoundInsnRN4llvm9MCContextERKNS_6MCInstES4_.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dh, %bb.dg, %bb.cv, %bb.cu, %bb.cb, %bb.ca, %bb.bh, %bb.bg, %bb.av, %bb.au, %bb.aj, %bb.ai, %bb.x, %bb.w, %bb.q, %bb.p
  %.0.i54.ph.i = phi ptr [ %i.ns, %bb.dr ], [ %i.ns, %bb.dq ], [ %i.me, %bb.dg ], [ %i.kq, %bb.cu ], [ %i.is, %bb.ca ], [ %i.gw, %bb.bg ], [ %i.fj, %bb.au ], [ %i.dw, %bb.ai ], [ %i.ck, %bb.w ], [ %i.bf, %bb.p ], [ %i.kq, %bb.cv ], [ %i.is, %bb.cb ], [ %i.gw, %bb.bh ], [ %i.fj, %bb.av ], [ %i.dw, %bb.aj ], [ %i.ck, %bb.x ], [ %i.bf, %bb.q ], [ %i.me, %bb.dh ]
  %i.om = getelementptr inbounds nuw i8, ptr %.pn53152.i, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  store ptr %.0.i54.ph.i, ptr %i.om, align 8, !tbaa !13
  %i.on = getelementptr inbounds nuw i8, ptr %.pn140.i, i64 32 ; 3 uses
  %i.oo = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.op = load i32, ptr %i.i, align 8, !tbaa !8
  %i.oq = zext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.oo, i64 %i.oq
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = ptrtoint ptr %i.on to i64
  %i.ou = sub i64 %i.os, %i.ot                    ; 3 uses
  %i.ov = icmp sgt i64 %i.ou, 16
  br i1 %i.ov, label %bb.dt, label %bb.du, !prof !25

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.039141.i, ptr nonnull align 8 %i.on, i64 %i.ou, i1 false)
  br label %bb.dw

bb.du:                                            ; preds = %bb.ds
  %i.ow = icmp eq i64 %i.ou, 16
  br i1 %i.ow, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.039141.i, ptr noundef nonnull align 8 dereferenceable(16) %i.on, i64 16, i1 false), !tbaa.struct !29
  br label %bb.dw

_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i: ; preds = %_ZL15getCompoundInsnRN4llvm9MCContextERKNS_6MCInstES4_.exit.i, %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.i, %.split.i, %bb.i, %bb.g, %bb.f
  %.141.ph.i = phi i1 [ false, %.split.i ], [ false, %bb.f ], [ false, %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.i ], [ false, %_ZL15getCompoundInsnRN4llvm9MCContextERKNS_6MCInstES4_.exit.i ], [ true, %bb.g ], [ false, %bb.i ]
  %.039.i = getelementptr inbounds nuw i8, ptr %.039141.i, i64 16 ; 2 uses
  %i.ox = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.oy = load i32, ptr %i.i, align 8, !tbaa !8   ; 2 uses
  %i.oz = zext i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.ox, i64 %i.oz
  %.not51.i = icmp eq ptr %.039.i, %i.pa
  br i1 %.not51.i, label %.thread64.i, label %bb.f, !llvm.loop !30

.thread64.i:                                      ; preds = %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i, %bb.e, %bb.d, %.lr.ph156..thread64_crit_edge.i
  %i.pb = phi i32 [ %.pre.i31, %.lr.ph156..thread64_crit_edge.i ], [ %.pre206.i, %bb.d ], [ 1, %bb.e ], [ %i.oy, %_ZL21isOrderedCompoundPairRKN4llvm6MCInstEbS2_b.exit.thread.i ]
  %.042.i = getelementptr inbounds nuw i8, ptr %.042154.i, i64 16 ; 2 uses
  %i.pc = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.pd = zext i32 %i.pb to i64
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.pc, i64 %i.pd
  %.not.not.i = icmp eq ptr %.042.i, %i.pe
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph156.i, !llvm.loop !32

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %i.pf = load i32, ptr %i.i, align 8, !tbaa !8
  %i.pg = add i32 %i.pf, -1                       ; 7 uses
  store i32 %i.pg, ptr %i.i, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 16, i1 false)
  %i.ph = zext i32 %i.pg to i64                   ; 2 uses
  %i.pi = load i32, ptr %i.b, align 8, !tbaa !8   ; 4 uses
  %i.pj = zext i32 %i.pi to i64                   ; 2 uses
  %.not.i.i.i32 = icmp ult i32 %i.pi, %i.pg
  br i1 %.not.i.i.i32, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %.not29.i.i.i = icmp eq i32 %i.pg, 0
  br i1 %.not29.i.i.i, label %_ZN4llvm6MCInstaSERKS0_.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pk = load ptr, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %i.pl = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.pg, 1
  br i1 %.not31.i.i.i, label %bb.ea, label %bb.dz, !prof !33

bb.dz:                                            ; preds = %bb.dy
  %.idx.i.i.i = shl nuw nsw i64 %i.ph, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.pl, ptr align 8 %i.pk, i64 %.idx.i.i.i, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, ptr noundef nonnull align 8 dereferenceable(16) %i.pk, i64 16, i1 false), !tbaa.struct !29
  br label %_ZN4llvm6MCInstaSERKS0_.exit

bb.eb:                                            ; preds = %bb.dw
  %i.pm = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.pn = icmp ult i32 %i.pm, %i.pg
  br i1 %i.pn, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i32 0, ptr %i.b, align 8, !tbaa !8
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull %i.ab, i64 noundef %i.ph, i64 noundef 16) #5
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i34

bb.ed:                                            ; preds = %bb.eb
  %.not28.i.i.i = icmp eq i32 %i.pi, 0
  br i1 %.not28.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i34, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.po = load ptr, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %i.pp = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %.not33.i.i.i = icmp eq i32 %i.pi, 1
  br i1 %.not33.i.i.i, label %bb.eg, label %bb.ef, !prof !33

bb.ef:                                            ; preds = %bb.ee
  %.idx32.i.i.i = shl nuw nsw i64 %i.pj, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.pp, ptr align 8 %i.po, i64 %.idx32.i.i.i, i1 false)
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i34

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, ptr noundef nonnull align 8 dereferenceable(16) %i.po, i64 16, i1 false), !tbaa.struct !29
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i34

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i34: ; preds = %bb.eg, %bb.ef, %bb.ed, %bb.ec
  %.022.i.i.i = phi i64 [ 0, %bb.ec ], [ 0, %bb.ed ], [ %i.pj, %bb.ef ], [ 1, %bb.eg ] ; 4 uses
  %i.pq = load i32, ptr %i.i, align 8, !tbaa !8
  %i.pr = zext i32 %i.pq to i64                   ; 2 uses
  %.not.i.i.i.i35 = icmp samesign eq i64 %.022.i.i.i, %i.pr
  br i1 %.not.i.i.i.i35, label %_ZN4llvm6MCInstaSERKS0_.exit, label %bb.eh

bb.eh:                                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i34
  %i.ps = load ptr, ptr %i.f, align 8, !tbaa !11
  %.idx35.i.i.i = shl nuw nsw i64 %.022.i.i.i, 4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %.idx35.i.i.i
  %i.pu = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %.022.i.i.i
  %i.pw = sub nsw i64 %i.pr, %.022.i.i.i
  %gepdiff.i.i.i36 = shl nsw i64 %i.pw, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pv, ptr align 8 %i.pt, i64 %gepdiff.i.i.i36, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit

_ZN4llvm6MCInstaSERKS0_.exit:                     ; preds = %bb.dx, %bb.dz, %bb.ea, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i34, %bb.eh
  store i32 %i.pg, ptr %i.b, align 8, !tbaa !8
  %i.px = call noundef zeroext i1 @_ZN4llvm16HexagonMCShuffleERNS_9MCContextEbRKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(2208) %2, i1 noundef zeroext false, ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(128) %3) #5 ; 2 uses
  %.not = xor i1 %.0136, true
  %or.cond = or i1 %i.px, %.not
  br i1 %or.cond, label %bb.eu, label %bb.ei

bb.ei:                                            ; preds = %_ZN4llvm6MCInstaSERKS0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 16, i1 false)
  %i.py = load i32, ptr %i.q, align 8, !tbaa !8   ; 6 uses
  %i.pz = zext i32 %i.py to i64                   ; 2 uses
  %i.qa = load i32, ptr %i.b, align 8, !tbaa !8   ; 4 uses
  %i.qb = zext i32 %i.qa to i64                   ; 2 uses
  %.not.i.i.i37 = icmp ult i32 %i.qa, %i.py
  br i1 %.not.i.i.i37, label %bb.en, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %.not29.i.i.i38 = icmp eq i32 %i.py, 0
  br i1 %.not29.i.i.i38, label %_ZN4llvm6MCInstaSERKS0_.exit50, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.qc = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %i.qd = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %.not31.i.i.i39 = icmp eq i32 %i.py, 1
  br i1 %.not31.i.i.i39, label %bb.em, label %bb.el, !prof !33

bb.el:                                            ; preds = %bb.ek
  %.idx.i.i.i40 = shl nuw nsw i64 %i.pz, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.qd, ptr align 8 %i.qc, i64 %.idx.i.i.i40, i1 false)
  br label %_ZN4llvm6MCInstaSERKS0_.exit50

bb.em:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qd, ptr noundef nonnull align 8 dereferenceable(16) %i.qc, i64 16, i1 false), !tbaa.struct !29
  br label %_ZN4llvm6MCInstaSERKS0_.exit50

bb.en:                                            ; preds = %bb.ei
  %i.qe = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.qf = icmp ult i32 %i.qe, %i.py
  br i1 %i.qf, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i32 0, ptr %i.b, align 8, !tbaa !8
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.g, ptr noundef nonnull %i.ab, i64 noundef %i.pz, i64 noundef 16) #5
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i45

bb.ep:                                            ; preds = %bb.en
  %.not28.i.i.i42 = icmp eq i32 %i.qa, 0
  br i1 %.not28.i.i.i42, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i45, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.qg = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %i.qh = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %.not33.i.i.i43 = icmp eq i32 %i.qa, 1
  br i1 %.not33.i.i.i43, label %bb.es, label %bb.er, !prof !33

bb.er:                                            ; preds = %bb.eq
  %.idx32.i.i.i44 = shl nuw nsw i64 %i.qb, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.qh, ptr align 8 %i.qg, i64 %.idx32.i.i.i44, i1 false)
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i45

bb.es:                                            ; preds = %bb.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qh, ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i64 16, i1 false), !tbaa.struct !29
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i45

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i45: ; preds = %bb.es, %bb.er, %bb.ep, %bb.eo
  %.022.i.i.i46 = phi i64 [ 0, %bb.eo ], [ 0, %bb.ep ], [ %i.qb, %bb.er ], [ 1, %bb.es ] ; 4 uses
  %i.qi = load i32, ptr %i.q, align 8, !tbaa !8
  %i.qj = zext i32 %i.qi to i64                   ; 2 uses
  %.not.i.i.i.i47 = icmp samesign eq i64 %.022.i.i.i46, %i.qj
  br i1 %.not.i.i.i.i47, label %_ZN4llvm6MCInstaSERKS0_.exit50, label %bb.et

bb.et:                                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i45
  %i.qk = load ptr, ptr %i.o, align 8, !tbaa !11
  %.idx35.i.i.i48 = shl nuw nsw i64 %.022.i.i.i46, 4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %.idx35.i.i.i48
  %i.qm = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %.022.i.i.i46
  %i.qo = sub nsw i64 %i.qj, %.022.i.i.i46
  %gepdiff.i.i.i49 = shl nsw i64 %i.qo, 4
end_hunk_1
