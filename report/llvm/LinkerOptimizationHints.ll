Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinkerOptimizationHints?download=true
inline.NumInlined: 288
inline.NumDeleted: 171
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [3 x i64] }
%class.anon = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.25 = type { ptr, ptr, ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c": linker optimization hint spans multiple sections\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 5 uses
  %3 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %4 = alloca %class.anon, align 8                ; 9 uses
  %5 = alloca %class.anon.25, align 8             ; 13 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !8
  %i.e = tail call { ptr, i64 } @_ZNK3lld5macho7ObjFile20getOptimizationHintsEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #9 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.bp, label %.lr.ph61.i.a

.lr.ph61.i.a:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.b, ptr %4, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.d, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.a, ptr %i.l, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %i.c, ptr %5, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.n, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i", %.lr.ph61.i.a
  %.0 = phi i1 [ false, %.lr.ph61.i.a ], [ %.1, %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i" ] ; 34 uses
  %.sroa.0.059.i.a = phi ptr [ %i.f, %.lr.ph61.i.a ], [ %.sroa.0.1.lcssa81.i, %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i" ] ; 4 uses
  %.sroa.7.058.i.a = phi i64 [ %i.g, %.lr.ph61.i.a ], [ %.sroa.7.1.lcssa79.i, %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i" ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.059.i.a, i64 %.sroa.7.058.i.a ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i118, 7
  %i.r = icmp eq ptr %i.aa, %i.q
  br i1 %i.r, label %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_.exit", label %bb.c, !prof !24, !llvm.loop !25

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.029.i.i.i120 = phi i64 [ 0, %.lr.ph ], [ %.130.i.i.i, %bb.b ]
  %.031.i.i.i119 = phi ptr [ %.sroa.0.059.i.a, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %indvars.iv.i.i118 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i.i, %bb.b ] ; 5 uses
  %i.s = load i8, ptr %.031.i.i.i119, align 1, !tbaa !27 ; 2 uses
  %i.t = and i8 %i.s, 127                         ; 3 uses
  %i.u = zext nneg i8 %i.t to i64
  %i.v = icmp samesign ugt i64 %indvars.iv.i.i118, 62
  br i1 %i.v, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %.not44.i.i.i = icmp eq i64 %indvars.iv.i.i118, 63
  %.not.i.i.i = icmp samesign ugt i8 %i.t, 1
  %i.w = icmp ne i8 %i.t, 0
  %or.cond43.i.i.i = select i1 %.not44.i.i.i, i1 %.not.i.i.i, i1 %i.w
  br i1 %or.cond43.i.i.i, label %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = icmp samesign ult i64 %indvars.iv.i.i118, 64
  %i.y = shl i64 %i.u, %indvars.iv.i.i118
  %i.z = select i1 %i.x, i64 %i.y, i64 0, !prof !29
  %.130.i.i.i = add i64 %i.z, %.029.i.i.i120      ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.031.i.i.i119, i64 1 ; 3 uses
  %i.ab = icmp slt i8 %i.s, 0
  br i1 %i.ab, label %bb.b, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit.i", !llvm.loop !25

"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit.i": ; preds = %bb.e
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %.sroa.0.059.i.a to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = and i64 %i.ae, 4294967295               ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.059.i.a, i64 %i.af ; 5 uses
  %i.ah = icmp eq i64 %.130.i.i.i, 0
  br i1 %i.ah, label %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_.exit", label %.preheader67.preheader

.preheader67.preheader:                           ; preds = %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit.i"
  %i.ai = icmp samesign eq i64 %i.af, %.sroa.7.058.i.a
  br i1 %i.ai, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i", label %.lr.ph125, !prof !30

.preheader67:                                     ; preds = %bb.g
  %indvars.iv.next.i21.i = add nuw nsw i64 %indvars.iv.i17.i125, 7
  %i.aj = icmp eq ptr %i.as, %i.q
  br i1 %i.aj, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i", label %.lr.ph125, !prof !24, !llvm.loop !25

.lr.ph125:                                        ; preds = %.preheader67.preheader, %.preheader67
  %.029.i.i19.i127 = phi i64 [ %.130.i.i20.i, %.preheader67 ], [ 0, %.preheader67.preheader ]
  %.031.i.i18.i126 = phi ptr [ %i.as, %.preheader67 ], [ %i.ag, %.preheader67.preheader ] ; 3 uses
  %indvars.iv.i17.i125 = phi i64 [ %indvars.iv.next.i21.i, %.preheader67 ], [ 0, %.preheader67.preheader ] ; 5 uses
  %i.ak = load i8, ptr %.031.i.i18.i126, align 1, !tbaa !27 ; 2 uses
  %i.al = and i8 %i.ak, 127                       ; 3 uses
  %i.am = zext nneg i8 %i.al to i64
  %i.an = icmp samesign ugt i64 %indvars.iv.i17.i125, 62
  br i1 %i.an, label %bb.f, label %bb.g, !prof !28

bb.f:                                             ; preds = %.lr.ph125
  %.not44.i.i23.i = icmp eq i64 %indvars.iv.i17.i125, 63
  %.not.i.i24.i = icmp samesign ugt i8 %i.al, 1
  %i.ao = icmp ne i8 %i.al, 0
  %or.cond43.i.i25.i = select i1 %.not44.i.i23.i, i1 %.not.i.i24.i, i1 %i.ao
  br i1 %or.cond43.i.i25.i, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i", label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph125
  %i.ap = icmp samesign ult i64 %indvars.iv.i17.i125, 64
  %i.aq = shl i64 %i.am, %indvars.iv.i17.i125
  %i.ar = select i1 %i.ap, i64 %i.aq, i64 0, !prof !29
  %.130.i.i20.i = add i64 %i.ar, %.029.i.i19.i127 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.031.i.i18.i126, i64 1 ; 3 uses
  %i.at = icmp slt i8 %i.ak, 0
  br i1 %i.at, label %.preheader67, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i", !llvm.loop !25

"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i": ; preds = %.preheader67, %bb.f, %.preheader67.preheader
  %.132.i.i21.ph.i = phi ptr [ %i.q, %.preheader67.preheader ], [ %i.q, %.preheader67 ], [ %.031.i.i18.i126, %bb.f ]
  %i.au = ptrtoint ptr %.132.i.i21.ph.i to i64
  %i.av = ptrtoint ptr %i.ag to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = and i64 %i.aw, 4294967295               ; 2 uses
  %i.ay = add nuw nsw i64 %i.af, %i.ax
  %i.az = sub i64 %.sroa.7.058.i.a, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ax
  br label %._crit_edge.thread.i

"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i": ; preds = %bb.g
  %i.bb = ptrtoint ptr %i.as to i64
  %i.bc = ptrtoint ptr %i.ag to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = and i64 %i.bd, 4294967295               ; 2 uses
  %i.bf = add nuw nsw i64 %i.af, %i.be
  %i.bg = sub i64 %.sroa.7.058.i.a, %i.bf         ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.be ; 2 uses
  %.not.i = icmp eq i64 %.130.i.i20.i, 0
  br i1 %.not.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.l
  %i.bi = icmp samesign ugt i64 %.130.i.i20.i, 3
  br i1 %i.bi, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i", label %._crit_edge.thread.i, !llvm.loop !31

.lr.ph.i:                                         ; preds = %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i", %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ] ; 3 uses
  %.sroa.0.155.i.a = phi ptr [ %i.cb, %bb.l ], [ %i.bh, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ] ; 4 uses
  %.sroa.7.154.i.a = phi i64 [ %i.ca, %bb.l ], [ %i.bg, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.155.i.a, i64 %.sroa.7.154.i.a ; 3 uses
  %i.bk = icmp samesign eq i64 %.sroa.7.154.i.a, 0
  br i1 %i.bk, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i", label %.lr.ph131, !prof !30

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next.i32.i = add nuw nsw i64 %indvars.iv.i28.i131, 7
  %i.bl = icmp eq ptr %i.bu, %i.bj
  br i1 %i.bl, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i", label %.lr.ph131, !prof !24, !llvm.loop !25

.lr.ph131:                                        ; preds = %.lr.ph.i, %bb.h
  %.029.i.i30.i133 = phi i64 [ %.130.i.i30.i, %bb.h ], [ 0, %.lr.ph.i ]
  %.031.i.i29.i132 = phi ptr [ %i.bu, %bb.h ], [ %.sroa.0.155.i.a, %.lr.ph.i ] ; 3 uses
  %indvars.iv.i28.i131 = phi i64 [ %indvars.iv.next.i32.i, %bb.h ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.bm = load i8, ptr %.031.i.i29.i132, align 1, !tbaa !27 ; 2 uses
  %i.bn = and i8 %i.bm, 127                       ; 3 uses
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = icmp samesign ugt i64 %indvars.iv.i28.i131, 62
  br i1 %i.bp, label %bb.i, label %bb.j, !prof !28

bb.i:                                             ; preds = %.lr.ph131
  %.not44.i.i33.i = icmp eq i64 %indvars.iv.i28.i131, 63
  %.not.i.i34.i = icmp samesign ugt i8 %i.bn, 1
  %i.bq = icmp ne i8 %i.bn, 0
  %or.cond43.i.i35.i = select i1 %.not44.i.i33.i, i1 %.not.i.i34.i, i1 %i.bq
  br i1 %or.cond43.i.i35.i, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i", label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph131
  %i.br = icmp samesign ult i64 %indvars.iv.i28.i131, 64
  %i.bs = shl i64 %i.bo, %indvars.iv.i28.i131
  %i.bt = select i1 %i.br, i64 %i.bs, i64 0, !prof !29
  %.130.i.i30.i = add i64 %i.bt, %.029.i.i30.i133 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.031.i.i29.i132, i64 1 ; 3 uses
  %i.bv = icmp slt i8 %i.bm, 0
  br i1 %i.bv, label %bb.h, label %"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge", !llvm.loop !25

"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge": ; preds = %bb.j
  br label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i", !llvm.loop !25

"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i": ; preds = %bb.h, %bb.i, %"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge", %.lr.ph.i
  %.132.i.i31.i = phi ptr [ %i.bu, %"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge" ], [ %i.bj, %.lr.ph.i ], [ %i.bj, %bb.h ], [ %.031.i.i29.i132, %bb.i ]
  %.3.i.i32.i = phi i64 [ %.130.i.i30.i, %"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge" ], [ 0, %.lr.ph.i ], [ 0, %bb.i ], [ 0, %bb.h ]
  %i.bw = ptrtoint ptr %.132.i.i31.i to i64
  %i.bx = ptrtoint ptr %.sroa.0.155.i.a to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = and i64 %i.by, 4294967295               ; 2 uses
  %i.ca = sub i64 %.sroa.7.154.i.a, %i.bz         ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.155.i.a, i64 %i.bz ; 3 uses
  %i.cc = icmp ult i64 %indvars.iv.i, 3
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i"
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  store i64 %.3.i.i32.i, ptr %i.cd, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i"
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.ce = and i64 %indvars.iv.next.i, 4294967295
  %i.cf = icmp ugt i64 %.130.i.i20.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !32

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i", %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i"
  %.sroa.0.1.lcssa80.i = phi ptr [ %i.cb, %._crit_edge.i ], [ %i.ba, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i" ], [ %i.bh, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ] ; 31 uses
  %.sroa.7.1.lcssa78.i = phi i64 [ %i.ca, %._crit_edge.i ], [ %i.az, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i" ], [ %i.bg, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ] ; 31 uses
  %i.cg = icmp eq i64 %.130.i.i.i, 1
  br i1 %i.cg, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i", label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i
  %i.ch = load i64, ptr %3, align 8, !tbaa !13    ; 6 uses
  %i.ci = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_0clEm"(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %i.ch)
  br i1 %i.ci, label %bb.n, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.n:                                             ; preds = %bb.m
  switch i64 %.130.i.i.i, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i" [
    i64 7, label %bb.o
    i64 2, label %bb.u
    i64 8, label %bb.w
    i64 3, label %bb.ag
    i64 4, label %bb.aj
  ]

bb.o:                                             ; preds = %bb.n
  %i.cj = load i64, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %i.ck = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.cj)
  br i1 %i.ck, label %bb.p, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !8   ; 2 uses
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.co = sub i64 %i.ch, %i.cn                    ; 2 uses
  %i.cp = sub i64 %i.cj, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cq, align 1 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cp ; 2 uses
  %.0.copyload.i.i.i.i.i.i17.i.i.i = load i32, ptr %i.cr, align 1 ; 4 uses
  %i.cs = and i32 %.0.copyload.i.i.i.i.i.i.i.i.i, -1627389952
  %.not.i.i.i.i = icmp eq i32 %i.cs, -1879048192
  br i1 %.not.i.i.i.i, label %bb.q, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.q:                                             ; preds = %bb.p
  %i.ct = lshr i32 %.0.copyload.i.i.i.i.i.i.i.i.i, 29
  %i.cu = and i32 %i.ct, 3
  %i.cv = lshr i32 %.0.copyload.i.i.i.i.i.i.i.i.i, 3
  %i.cw = and i32 %i.cv, 2097148
  %i.cx = or disjoint i32 %i.cu, %i.cw
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 12
  %i.da = and i32 %.0.copyload.i.i.i.i.i.i17.i.i.i, -4194304
  %.not.i18.i.i.i = icmp eq i32 %i.da, -1862270976
  br i1 %.not.i18.i.i.i, label %bb.r, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.r:                                             ; preds = %bb.q
  %i.db = lshr i32 %.0.copyload.i.i.i.i.i.i17.i.i.i, 5
  %i.dc = xor i32 %i.db, %.0.copyload.i.i.i.i.i.i.i.i.i
  %i.dd = and i32 %i.dc, 31
  %.not.i.i37.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i37.i, label %bb.s, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.s:                                             ; preds = %bb.r
  %i.de = lshr i32 %.0.copyload.i.i.i.i.i.i17.i.i.i, 10
  %i.df = and i32 %i.de, 4095
  %i.dg = call noundef i64 @_ZNK3lld5macho12InputSection5getVAEm(ptr noundef nonnull align 8 dereferenceable(112) %i.cm, i64 noundef 0) #9
  %i.dh = add i64 %i.dg, %i.co                    ; 2 uses
  %i.di = and i64 %i.dh, 4294963200
  %i.dj = add nuw nsw i64 %i.di, %i.cz
  %i.dk = zext nneg i32 %i.df to i64
  %i.dl = sub i64 %i.dk, %i.dh
  %i.dm = add i64 %i.dj, %i.dl                    ; 2 uses
  %sext.i.i.i = shl i64 %i.dm, 32
  %i.dn = ashr exact i64 %sext.i.i.i, 32
  %i.do = add nsw i64 %i.dn, 1048576
  %i.dp = icmp ult i64 %i.do, 2097152
  br i1 %i.dp, label %bb.t, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.t:                                             ; preds = %bb.s
  %i.dq = trunc i64 %i.dm to i32                  ; 2 uses
  %i.dr = shl i32 %i.dq, 3
  %i.ds = and i32 %i.dr, 16777184
  %i.dt = shl i32 %i.dq, 29
  %i.du = and i32 %i.dt, 1610612736
  %i.dv = and i32 %.0.copyload.i.i.i.i.i.i17.i.i.i, 268435487
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = or disjoint i32 %i.dw, %i.ds
  store i32 %i.dx, ptr %i.cq, align 1
  store i32 -721215457, ptr %i.cr, align 1
  br label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.u:                                             ; preds = %bb.n
  %i.dy = load i64, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %i.dz = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.dy)
  br i1 %i.dz, label %bb.v, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.v:                                             ; preds = %bb.u
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ed = sub i64 %i.ch, %i.ec
  %i.ee = sub i64 %i.dy, %i.ec
  call fastcc void @_ZL12applyAdrpLdrPhPKN3lld5macho18ConcatInputSectionEmm(ptr noundef %i.ea, ptr noundef %i.eb, i64 noundef %i.ed, i64 noundef %i.ee)
  br label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.w:                                             ; preds = %bb.n
  %i.ef = load i64, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %i.eg = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.ef)
  br i1 %i.eg, label %bb.x, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.x:                                             ; preds = %bb.w
  %i.eh = load ptr, ptr %i.d, align 8, !tbaa !8   ; 3 uses
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.ej = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ek = sub i64 %i.ch, %i.ej                    ; 3 uses
  %i.el = sub i64 %i.ef, %i.ej                    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.el ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i2.i.i = load i32, ptr %i.em, align 1 ; 9 uses
  %i.en = and i32 %.0.copyload.i.i.i.i.i.i.i2.i.i, -4194304
  %.not.i.i3.i.i = icmp eq i32 %i.en, -1862270976
  br i1 %.not.i.i3.i.i, label %bb.y, label %_ZL8parseAddjRN12_GLOBAL__N_13AddE.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ek ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.eo, align 1 ; 4 uses
  %i.ep = and i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -1627389952
  %.not.i.i.i.i.i = icmp eq i32 %i.ep, -1879048192
  br i1 %.not.i.i.i.i.i, label %bb.z, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.z:                                             ; preds = %bb.y
  %i.eq = lshr i32 %.0.copyload.i.i.i.i.i.i.i2.i.i, 5
  %i.er = xor i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i, %i.eq
  %i.es = and i32 %i.er, 31
  %.not.i11.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.not.i11.i.i.i, label %bb.aa, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.aa:                                            ; preds = %bb.z
  %i.et = lshr i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 29
  %i.eu = and i32 %i.et, 3
  %i.ev = lshr i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 3
  %i.ew = and i32 %i.ev, 2097148
  %i.ex = or disjoint i32 %i.eu, %i.ew
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 12
  %i.fa = lshr i32 %.0.copyload.i.i.i.i.i.i.i2.i.i, 10
  %i.fb = and i32 %i.fa, 4095
  %i.fc = call noundef i64 @_ZNK3lld5macho12InputSection5getVAEm(ptr noundef nonnull align 8 dereferenceable(112) %i.ei, i64 noundef 0) #9
  %i.fd = add i64 %i.fc, %i.ek                    ; 2 uses
  %i.fe = and i64 %i.fd, 4294963200
  %i.ff = add nuw nsw i64 %i.fe, %i.ez
  %i.fg = zext nneg i32 %i.fb to i64
  %i.fh = sub i64 %i.fg, %i.fd
  %i.fi = add i64 %i.ff, %i.fh                    ; 2 uses
  %sext.i.i.i.i = shl i64 %i.fi, 32
  %i.fj = ashr exact i64 %sext.i.i.i.i, 32
  %i.fk = add nsw i64 %i.fj, 1048576
  %i.fl = icmp ult i64 %i.fk, 2097152
  br i1 %i.fl, label %bb.ab, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.ab:                                            ; preds = %bb.aa
  %i.fm = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fn = shl i32 %i.fm, 3
  %i.fo = and i32 %i.fn, 16777184
  %i.fp = shl i32 %i.fm, 29
  %i.fq = and i32 %i.fp, 1610612736
  %i.fr = and i32 %.0.copyload.i.i.i.i.i.i.i2.i.i, 268435487
  %i.fs = or disjoint i32 %i.fq, %i.fr
  %i.ft = or disjoint i32 %i.fs, %i.fo
  store i32 %i.ft, ptr %i.eo, align 1
  store i32 -721215457, ptr %i.em, align 1
  br label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

_ZL8parseAddjRN12_GLOBAL__N_13AddE.exit.i.i.i:    ; preds = %bb.x
  %i.fu = lshr i32 %.0.copyload.i.i.i.i.i.i.i2.i.i, 22
  %i.fv = and i32 %i.fu, 3                        ; 2 uses
  %i.fw = and i32 %.0.copyload.i.i.i.i.i.i.i2.i.i, 1069547520
  %i.fx = icmp eq i32 %i.fw, 960495616
  %i.fy = and i32 %.0.copyload.i.i.i.i.i.i.i2.i.i, 1065353216
  %i.fz = icmp eq i32 %i.fy, 964689920
  %or.cond.i.i.i = or i1 %i.fx, %i.fz
  br i1 %or.cond.i.i.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZL8parseAddjRN12_GLOBAL__N_13AddE.exit.i.i.i
  %i.ga = and i32 %.0.copyload.i.i.i.i.i.i.i2.i.i, 1061158912
  %i.gb = icmp eq i32 %i.ga, 1027604480
  br i1 %i.gb, label %bb.ad, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.ad:                                            ; preds = %bb.ac
  %i.gc = icmp eq i32 %i.fv, 1
  br i1 %i.gc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gd = icmp ult i32 %.0.copyload.i.i.i.i.i.i.i2.i.i, 1073741824
  %i.ge = icmp eq i32 %i.fv, 3
  %or.cond.i.i.i.i = and i1 %i.gd, %i.ge
  br i1 %or.cond.i.i.i.i, label %bb.af, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.af:                                            ; preds = %bb.ae, %bb.ad, %_ZL8parseAddjRN12_GLOBAL__N_13AddE.exit.i.i.i
  call fastcc void @_ZL12applyAdrpLdrPhPKN3lld5macho18ConcatInputSectionEmm(ptr noundef nonnull %i.eh, ptr noundef %i.ei, i64 noundef %i.ek, i64 noundef %i.el)
  br label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.ag:                                            ; preds = %bb.n
  %i.gf = load i64, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %i.gg = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.gf)
  br i1 %i.gg, label %bb.ah, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.ah:                                            ; preds = %bb.ag
  %i.gh = load i64, ptr %i.p, align 8, !tbaa !13  ; 2 uses
  %i.gi = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.gh)
  br i1 %i.gi, label %bb.ai, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.ai:                                            ; preds = %bb.ah
  %i.gj = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.gl = load i64, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.gm = sub i64 %i.ch, %i.gl
  %i.gn = sub i64 %i.gf, %i.gl
  %i.go = sub i64 %i.gh, %i.gl
  call fastcc void @_ZL15applyAdrpAddLdrPhPKN3lld5macho18ConcatInputSectionEmmm(ptr noundef %i.gj, ptr noundef %i.gk, i64 noundef %i.gm, i64 noundef %i.gn, i64 noundef %i.go)
  br label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.aj:                                            ; preds = %bb.n
  %i.gp = load i64, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %i.gq = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.gp)
  br i1 %i.gq, label %bb.ak, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.ak:                                            ; preds = %bb.aj
  %i.gr = load i64, ptr %i.p, align 8, !tbaa !13  ; 2 uses
  %i.gs = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.gr)
  br i1 %i.gs, label %bb.al, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.al:                                            ; preds = %bb.ak
  %i.gt = load ptr, ptr %i.d, align 8, !tbaa !8   ; 4 uses
  %i.gu = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.gv = load i64, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.gw = sub i64 %i.ch, %i.gv                    ; 2 uses
  %i.gx = sub i64 %i.gp, %i.gv                    ; 3 uses
  %i.gy = sub i64 %i.gr, %i.gv                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gx
  %.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.gz, align 1 ; 7 uses
  %i.ha = and i32 %.0.copyload.i.i.i.i.i.i.i.i, -4194304
  %.not.i.i38.i = icmp eq i32 %i.ha, -1862270976
  br i1 %.not.i.i38.i, label %bb.am, label %_ZL8parseAddjRN12_GLOBAL__N_13AddE.exit.i.i

bb.am:                                            ; preds = %bb.al
  call fastcc void @_ZL15applyAdrpAddLdrPhPKN3lld5macho18ConcatInputSectionEmmm(ptr noundef nonnull %i.gt, ptr noundef %i.gu, i64 noundef %i.gw, i64 noundef %i.gx, i64 noundef %i.gy)
  br label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

_ZL8parseAddjRN12_GLOBAL__N_13AddE.exit.i.i:      ; preds = %bb.al
  %i.hb = lshr i32 %.0.copyload.i.i.i.i.i.i.i.i, 22
  %i.hc = and i32 %i.hb, 3                        ; 2 uses
  %i.hd = and i32 %.0.copyload.i.i.i.i.i.i.i.i, 1069547520
  %i.he = icmp eq i32 %i.hd, 960495616
  %i.hf = and i32 %.0.copyload.i.i.i.i.i.i.i.i, 1065353216
  %i.hg = icmp eq i32 %i.hf, 964689920
  %or.cond.i.i = or i1 %i.he, %i.hg
  br i1 %or.cond.i.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %_ZL8parseAddjRN12_GLOBAL__N_13AddE.exit.i.i
  %i.hh = and i32 %.0.copyload.i.i.i.i.i.i.i.i, 1061158912
  %i.hi = icmp eq i32 %i.hh, 1027604480
  br i1 %i.hi, label %bb.ao, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.ao:                                            ; preds = %bb.an
  %i.hj = icmp eq i32 %i.hc, 1
  br i1 %i.hj, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hk = icmp ult i32 %.0.copyload.i.i.i.i.i.i.i.i, 1073741824
  %i.hl = icmp eq i32 %i.hc, 3
  %or.cond.i.i39.i = and i1 %i.hk, %i.hl
  br i1 %or.cond.i.i39.i, label %bb.aq, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %_ZL8parseAddjRN12_GLOBAL__N_13AddE.exit.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gy
  %.0.copyload.i.i.i.i.i.i16.i.i = load i32, ptr %i.hm, align 1 ; 6 uses
  %i.hn = lshr i32 %.0.copyload.i.i.i.i.i.i16.i.i, 5
  %i.ho = lshr i32 %.0.copyload.i.i.i.i.i.i16.i.i, 22
  %i.hp = and i32 %i.ho, 3                        ; 2 uses
  %i.hq = and i32 %.0.copyload.i.i.i.i.i.i16.i.i, 1069547520
  %i.hr = icmp eq i32 %i.hq, 960495616
  %i.hs = and i32 %.0.copyload.i.i.i.i.i.i16.i.i, 1065353216
  %i.ht = icmp eq i32 %i.hs, 964689920
  %or.cond29.i.i = or i1 %i.hr, %i.ht
  br i1 %or.cond29.i.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hu = and i32 %.0.copyload.i.i.i.i.i.i16.i.i, 1061158912
  %i.hv = icmp eq i32 %i.hu, 1027604480
  br i1 %i.hv, label %bb.as, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.as:                                            ; preds = %bb.ar
  %i.hw = icmp eq i32 %i.hp, 1
  br i1 %i.hw, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hx = icmp ult i32 %.0.copyload.i.i.i.i.i.i16.i.i, 1073741824
  %i.hy = icmp eq i32 %i.hp, 3
  %or.cond.i18.i.i = and i1 %i.hx, %i.hy
  br i1 %or.cond.i18.i.i, label %bb.au, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %i.hz = xor i32 %i.hn, %.0.copyload.i.i.i.i.i.i.i.i
  %i.ia = and i32 %i.hz, 31
  %.not.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i, label %bb.av, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

bb.av:                                            ; preds = %bb.au
  call fastcc void @_ZL12applyAdrpLdrPhPKN3lld5macho18ConcatInputSectionEmm(ptr noundef nonnull %i.gt, ptr noundef %i.gu, i64 noundef %i.gw, i64 noundef %i.gx)
  br label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i"

"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i": ; preds = %._crit_edge.thread.i, %bb.av, %bb.au, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %._crit_edge.i
  %.1 = phi i1 [ %.0, %._crit_edge.i ], [ %.0, %bb.n ], [ %.0, %bb.t ], [ %.0, %bb.s ], [ %.0, %bb.r ], [ %.0, %bb.q ], [ %.0, %bb.p ], [ %.0, %bb.o ], [ %.0, %bb.v ], [ %.0, %bb.u ], [ %.0, %bb.ab ], [ %.0, %bb.aa ], [ %.0, %bb.z ], [ %.0, %bb.y ], [ %.0, %bb.af ], [ %.0, %bb.ae ], [ %.0, %bb.ac ], [ %.0, %bb.w ], [ %.0, %bb.ai ], [ %.0, %bb.ah ], [ %.0, %bb.ag ], [ %.0, %bb.am ], [ %.0, %bb.av ], [ %.0, %bb.au ], [ %.0, %bb.at ], [ %.0, %bb.ar ], [ %.0, %bb.ap ], [ %.0, %bb.an ], [ %.0, %bb.ak ], [ %.0, %bb.aj ], [ %.0, %bb.m ], [ true, %._crit_edge.thread.i ] ; 2 uses
  %.sroa.0.1.lcssa81.i = phi ptr [ %i.cb, %._crit_edge.i ], [ %.sroa.0.1.lcssa80.i, %bb.n ], [ %.sroa.0.1.lcssa80.i, %bb.t ], [ %.sroa.0.1.lcssa80.i, %bb.s ], [ %.sroa.0.1.lcssa80.i, %bb.r ], [ %.sroa.0.1.lcssa80.i, %bb.q ], [ %.sroa.0.1.lcssa80.i, %bb.p ], [ %.sroa.0.1.lcssa80.i, %bb.o ], [ %.sroa.0.1.lcssa80.i, %bb.v ], [ %.sroa.0.1.lcssa80.i, %bb.u ], [ %.sroa.0.1.lcssa80.i, %bb.ab ], [ %.sroa.0.1.lcssa80.i, %bb.aa ], [ %.sroa.0.1.lcssa80.i, %bb.z ], [ %.sroa.0.1.lcssa80.i, %bb.y ], [ %.sroa.0.1.lcssa80.i, %bb.af ], [ %.sroa.0.1.lcssa80.i, %bb.ae ], [ %.sroa.0.1.lcssa80.i, %bb.ac ], [ %.sroa.0.1.lcssa80.i, %bb.w ], [ %.sroa.0.1.lcssa80.i, %bb.ai ], [ %.sroa.0.1.lcssa80.i, %bb.ah ], [ %.sroa.0.1.lcssa80.i, %bb.ag ], [ %.sroa.0.1.lcssa80.i, %bb.am ], [ %.sroa.0.1.lcssa80.i, %bb.av ], [ %.sroa.0.1.lcssa80.i, %bb.au ], [ %.sroa.0.1.lcssa80.i, %bb.at ], [ %.sroa.0.1.lcssa80.i, %bb.ar ], [ %.sroa.0.1.lcssa80.i, %bb.ap ], [ %.sroa.0.1.lcssa80.i, %bb.an ], [ %.sroa.0.1.lcssa80.i, %bb.ak ], [ %.sroa.0.1.lcssa80.i, %bb.aj ], [ %.sroa.0.1.lcssa80.i, %bb.m ], [ %.sroa.0.1.lcssa80.i, %._crit_edge.thread.i ]
  %.sroa.7.1.lcssa79.i = phi i64 [ %i.ca, %._crit_edge.i ], [ %.sroa.7.1.lcssa78.i, %bb.n ], [ %.sroa.7.1.lcssa78.i, %bb.t ], [ %.sroa.7.1.lcssa78.i, %bb.s ], [ %.sroa.7.1.lcssa78.i, %bb.r ], [ %.sroa.7.1.lcssa78.i, %bb.q ], [ %.sroa.7.1.lcssa78.i, %bb.p ], [ %.sroa.7.1.lcssa78.i, %bb.o ], [ %.sroa.7.1.lcssa78.i, %bb.v ], [ %.sroa.7.1.lcssa78.i, %bb.u ], [ %.sroa.7.1.lcssa78.i, %bb.ab ], [ %.sroa.7.1.lcssa78.i, %bb.aa ], [ %.sroa.7.1.lcssa78.i, %bb.z ], [ %.sroa.7.1.lcssa78.i, %bb.y ], [ %.sroa.7.1.lcssa78.i, %bb.af ], [ %.sroa.7.1.lcssa78.i, %bb.ae ], [ %.sroa.7.1.lcssa78.i, %bb.ac ], [ %.sroa.7.1.lcssa78.i, %bb.w ], [ %.sroa.7.1.lcssa78.i, %bb.ai ], [ %.sroa.7.1.lcssa78.i, %bb.ah ], [ %.sroa.7.1.lcssa78.i, %bb.ag ], [ %.sroa.7.1.lcssa78.i, %bb.am ], [ %.sroa.7.1.lcssa78.i, %bb.av ], [ %.sroa.7.1.lcssa78.i, %bb.au ], [ %.sroa.7.1.lcssa78.i, %bb.at ], [ %.sroa.7.1.lcssa78.i, %bb.ar ], [ %.sroa.7.1.lcssa78.i, %bb.ap ], [ %.sroa.7.1.lcssa78.i, %bb.an ], [ %.sroa.7.1.lcssa78.i, %bb.ak ], [ %.sroa.7.1.lcssa78.i, %bb.aj ], [ %.sroa.7.1.lcssa78.i, %bb.m ], [ %.sroa.7.1.lcssa78.i, %._crit_edge.thread.i ] ; 2 uses
  %i.ib = icmp eq i64 %.sroa.7.1.lcssa79.i, 0
  br i1 %i.ib, label %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_.exit", label %.lr.ph

"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_.exit": ; preds = %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit.i", %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i", %bb.d, %bb.b
  %.2 = phi i1 [ %.0, %bb.d ], [ %.0, %bb.b ], [ %.0, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit.i" ], [ %.1, %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_2clEmN4llvm8ArrayRefImEE.exit.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br i1 %.2, label %.lr.ph59.i, label %bb.bo

.lr.ph59.i:                                       ; preds = %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i", %.lr.ph59.i
  %.sroa.0.057.i = phi ptr [ %i.f, %.lr.ph59.i ], [ %.sroa.0.1.lcssa.i, %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i" ] ; 4 uses
  %.sroa.7.056.i = phi i64 [ %i.g, %.lr.ph59.i ], [ %.sroa.7.1.lcssa.i, %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i" ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.057.i, i64 %.sroa.7.056.i ; 4 uses
  br label %bb.ax

bb.aw:                                            ; preds = %bb.az
  %indvars.iv.next.i.i9 = add nuw nsw i64 %indvars.iv.i.i5143, 7
  %i.ie = icmp eq ptr %i.in, %i.id
  br i1 %i.ie, label %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_.exit", label %bb.ax, !prof !24, !llvm.loop !25

bb.ax:                                            ; preds = %.lr.ph143, %bb.aw
  %.029.i.i.i7145 = phi i64 [ 0, %.lr.ph143 ], [ %.130.i.i.i8, %bb.aw ]
  %.031.i.i.i6144 = phi ptr [ %.sroa.0.057.i, %.lr.ph143 ], [ %i.in, %bb.aw ] ; 2 uses
  %indvars.iv.i.i5143 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next.i.i9, %bb.aw ] ; 5 uses
  %i.if = load i8, ptr %.031.i.i.i6144, align 1, !tbaa !27 ; 2 uses
  %i.ig = and i8 %i.if, 127                       ; 3 uses
  %i.ih = zext nneg i8 %i.ig to i64
  %i.ii = icmp samesign ugt i64 %indvars.iv.i.i5143, 62
  br i1 %i.ii, label %bb.ay, label %bb.az, !prof !28

bb.ay:                                            ; preds = %bb.ax
  %.not44.i.i.i35 = icmp eq i64 %indvars.iv.i.i5143, 63
  %.not.i.i.i36 = icmp samesign ugt i8 %i.ig, 1
  %i.ij = icmp ne i8 %i.ig, 0
  %or.cond43.i.i.i37 = select i1 %.not44.i.i.i35, i1 %.not.i.i.i36, i1 %i.ij
  br i1 %or.cond43.i.i.i37, label %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_.exit", label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ik = icmp samesign ult i64 %indvars.iv.i.i5143, 64
  %i.il = shl i64 %i.ih, %indvars.iv.i.i5143
  %i.im = select i1 %i.ik, i64 %i.il, i64 0, !prof !29
  %.130.i.i.i8 = add i64 %i.im, %.029.i.i.i7145   ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.031.i.i.i6144, i64 1 ; 3 uses
  %i.io = icmp slt i8 %i.if, 0
  br i1 %i.io, label %bb.aw, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit.i", !llvm.loop !25

"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit.i": ; preds = %bb.az
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %.sroa.0.057.i to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = and i64 %i.ir, 4294967295               ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.057.i, i64 %i.is ; 5 uses
  %i.iu = icmp eq i64 %.130.i.i.i8, 0
  br i1 %i.iu, label %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_.exit", label %.preheader.preheader

.preheader.preheader:                             ; preds = %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit.i"
  %i.iv = icmp samesign eq i64 %i.is, %.sroa.7.056.i
  br i1 %i.iv, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i", label %.lr.ph149, !prof !30

.preheader:                                       ; preds = %bb.bb
  %indvars.iv.next.i21.i14 = add nuw nsw i64 %indvars.iv.i17.i10149, 7
  %i.iw = icmp eq ptr %i.jf, %i.id
  br i1 %i.iw, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i", label %.lr.ph149, !prof !24, !llvm.loop !25

.lr.ph149:                                        ; preds = %.preheader.preheader, %.preheader
  %.029.i.i19.i12151 = phi i64 [ %.130.i.i20.i12, %.preheader ], [ 0, %.preheader.preheader ]
  %.031.i.i18.i11150 = phi ptr [ %i.jf, %.preheader ], [ %i.it, %.preheader.preheader ] ; 3 uses
  %indvars.iv.i17.i10149 = phi i64 [ %indvars.iv.next.i21.i14, %.preheader ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.ix = load i8, ptr %.031.i.i18.i11150, align 1, !tbaa !27 ; 2 uses
  %i.iy = and i8 %i.ix, 127                       ; 3 uses
  %i.iz = zext nneg i8 %i.iy to i64
  %i.ja = icmp samesign ugt i64 %indvars.iv.i17.i10149, 62
  br i1 %i.ja, label %bb.ba, label %bb.bb, !prof !28

bb.ba:                                            ; preds = %.lr.ph149
  %.not44.i.i23.i31 = icmp eq i64 %indvars.iv.i17.i10149, 63
  %.not.i.i24.i32 = icmp samesign ugt i8 %i.iy, 1
  %i.jb = icmp ne i8 %i.iy, 0
  %or.cond43.i.i25.i33 = select i1 %.not44.i.i23.i31, i1 %.not.i.i24.i32, i1 %i.jb
  br i1 %or.cond43.i.i25.i33, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i", label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph149
  %i.jc = icmp samesign ult i64 %indvars.iv.i17.i10149, 64
  %i.jd = shl i64 %i.iz, %indvars.iv.i17.i10149
  %i.je = select i1 %i.jc, i64 %i.jd, i64 0, !prof !29
  %.130.i.i20.i12 = add i64 %i.je, %.029.i.i19.i12151 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.031.i.i18.i11150, i64 1 ; 3 uses
  %i.jg = icmp slt i8 %i.ix, 0
  br i1 %i.jg, label %.preheader, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i", !llvm.loop !25

"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i": ; preds = %.preheader, %bb.ba, %.preheader.preheader
  %.132.i.i21.ph.i34 = phi ptr [ %i.id, %.preheader.preheader ], [ %i.id, %.preheader ], [ %.031.i.i18.i11150, %bb.ba ]
  %i.jh = ptrtoint ptr %.132.i.i21.ph.i34 to i64
  %i.ji = ptrtoint ptr %i.it to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = and i64 %i.jj, 4294967295               ; 2 uses
  %i.jl = add nuw nsw i64 %i.is, %i.jk
  %i.jm = sub i64 %.sroa.7.056.i, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.jk
  br label %._crit_edge.i23

"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i": ; preds = %bb.bb
  %i.jo = ptrtoint ptr %i.jf to i64
  %i.jp = ptrtoint ptr %i.it to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = and i64 %i.jq, 4294967295               ; 2 uses
  %i.js = add nuw nsw i64 %i.is, %i.jr
  %i.jt = sub i64 %.sroa.7.056.i, %i.js           ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.jr ; 2 uses
  %.not.i13 = icmp eq i64 %.130.i.i20.i12, 0
  br i1 %.not.i13, label %._crit_edge.i23, label %.lr.ph.i14

._crit_edge.i23.loopexit:                         ; preds = %bb.bg
  %i.jv = icmp samesign ult i64 %.130.i.i20.i12, 4
  br label %._crit_edge.i23

._crit_edge.i23:                                  ; preds = %._crit_edge.i23.loopexit, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i", %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i"
  %.3.i.i2269.i = phi i1 [ true, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ], [ true, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i" ], [ %i.jv, %._crit_edge.i23.loopexit ]
  %.sroa.7.1.lcssa.i = phi i64 [ %i.jt, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ], [ %i.jm, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i" ], [ %i.kn, %._crit_edge.i23.loopexit ] ; 2 uses
  %.sroa.0.1.lcssa.i = phi ptr [ %i.ju, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ], [ %i.jn, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.thread.i" ], [ %i.ko, %._crit_edge.i23.loopexit ]
  %.not.i.i24 = icmp eq i64 %.130.i.i.i8, 1
  %or.cond.i = select i1 %.3.i.i2269.i, i1 %.not.i.i24, i1 false
  br i1 %or.cond.i, label %bb.bh, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i", !llvm.loop !33

.lr.ph.i14:                                       ; preds = %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i", %bb.bg
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i22, %bb.bg ], [ 0, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ] ; 3 uses
  %.sroa.0.153.i = phi ptr [ %i.ko, %bb.bg ], [ %i.ju, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ] ; 4 uses
  %.sroa.7.152.i = phi i64 [ %i.kn, %bb.bg ], [ %i.jt, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit26.i" ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.153.i, i64 %.sroa.7.152.i ; 3 uses
  %i.jx = icmp samesign eq i64 %.sroa.7.152.i, 0
  br i1 %i.jx, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i", label %.lr.ph155, !prof !30

bb.bc:                                            ; preds = %bb.be
  %indvars.iv.next.i32.i22 = add nuw nsw i64 %indvars.iv.i28.i18155, 7
  %i.jy = icmp eq ptr %i.kh, %i.jw
  br i1 %i.jy, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i", label %.lr.ph155, !prof !24, !llvm.loop !25

.lr.ph155:                                        ; preds = %.lr.ph.i14, %bb.bc
  %.029.i.i30.i20157 = phi i64 [ %.130.i.i30.i19, %bb.bc ], [ 0, %.lr.ph.i14 ]
  %.031.i.i29.i19156 = phi ptr [ %i.kh, %bb.bc ], [ %.sroa.0.153.i, %.lr.ph.i14 ] ; 3 uses
  %indvars.iv.i28.i18155 = phi i64 [ %indvars.iv.next.i32.i22, %bb.bc ], [ 0, %.lr.ph.i14 ] ; 5 uses
  %i.jz = load i8, ptr %.031.i.i29.i19156, align 1, !tbaa !27 ; 2 uses
  %i.ka = and i8 %i.jz, 127                       ; 3 uses
  %i.kb = zext nneg i8 %i.ka to i64
  %i.kc = icmp samesign ugt i64 %indvars.iv.i28.i18155, 62
  br i1 %i.kc, label %bb.bd, label %bb.be, !prof !28

bb.bd:                                            ; preds = %.lr.ph155
  %.not44.i.i33.i28 = icmp eq i64 %indvars.iv.i28.i18155, 63
  %.not.i.i34.i29 = icmp samesign ugt i8 %i.ka, 1
  %i.kd = icmp ne i8 %i.ka, 0
  %or.cond43.i.i35.i30 = select i1 %.not44.i.i33.i28, i1 %.not.i.i34.i29, i1 %i.kd
  br i1 %or.cond43.i.i35.i30, label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i", label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph155
  %i.ke = icmp samesign ult i64 %indvars.iv.i28.i18155, 64
  %i.kf = shl i64 %i.kb, %indvars.iv.i28.i18155
  %i.kg = select i1 %i.ke, i64 %i.kf, i64 0, !prof !29
  %.130.i.i30.i19 = add i64 %i.kg, %.029.i.i30.i20157 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.031.i.i29.i19156, i64 1 ; 3 uses
  %i.ki = icmp slt i8 %i.jz, 0
  br i1 %i.ki, label %bb.bc, label %"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge", !llvm.loop !25

"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge": ; preds = %bb.be
  br label %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i", !llvm.loop !25

"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i": ; preds = %bb.bc, %bb.bd, %"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge", %.lr.ph.i14
  %.132.i.i31.i20 = phi ptr [ %i.kh, %"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge" ], [ %i.jw, %.lr.ph.i14 ], [ %i.jw, %bb.bc ], [ %.031.i.i29.i19156, %bb.bd ]
  %.3.i.i32.i21 = phi i64 [ %.130.i.i30.i19, %"._ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i_crit_edge" ], [ 0, %.lr.ph.i14 ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  %i.kj = ptrtoint ptr %.132.i.i31.i20 to i64
  %i.kk = ptrtoint ptr %.sroa.0.153.i to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = and i64 %i.kl, 4294967295               ; 2 uses
  %i.kn = sub i64 %.sroa.7.152.i, %i.km           ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.153.i, i64 %i.km ; 2 uses
  %i.kp = icmp ult i64 %indvars.iv.i15, 3
  br i1 %i.kp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i"
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i15
  store i64 %.3.i.i32.i21, ptr %i.kq, align 8, !tbaa !13
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit36.i"
  %indvars.iv.next.i22 = add i64 %indvars.iv.i15, 1 ; 2 uses
  %i.kr = and i64 %indvars.iv.next.i22, 4294967295
  %i.ks = icmp ugt i64 %.130.i.i20.i12, %i.kr
  br i1 %i.ks, label %.lr.ph.i14, label %._crit_edge.i23.loopexit, !llvm.loop !34

bb.bh:                                            ; preds = %._crit_edge.i23
  %i.kt = load i64, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.ku = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_0clEm"(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %i.kt)
  br i1 %i.ku, label %bb.bi, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i"

bb.bi:                                            ; preds = %bb.bh
  %i.kv = load i64, ptr %i.ic, align 8, !tbaa !13 ; 2 uses
  %i.kw = call fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_1clEm"(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.kv)
  br i1 %i.kw, label %bb.bj, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i"

bb.bj:                                            ; preds = %bb.bi
  %i.kx = load ptr, ptr %i.d, align 8, !tbaa !8   ; 2 uses
  %i.ky = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.kz = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.la = sub i64 %i.kt, %i.kz                    ; 2 uses
  %i.lb = sub i64 %i.kv, %i.kz                    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.la
  %.0.copyload.i.i.i.i.i.i.i.i.i25 = load i32, ptr %i.lc, align 1 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.lb ; 2 uses
  %.0.copyload.i.i.i.i.i.i14.i.i.i = load i32, ptr %i.ld, align 1 ; 4 uses
  %i.le = and i32 %.0.copyload.i.i.i.i.i.i.i.i.i25, -1627389952
  %.not.i.i.i.i26 = icmp eq i32 %i.le, -1879048192
  br i1 %.not.i.i.i.i26, label %bb.bk, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i"

bb.bk:                                            ; preds = %bb.bj
  %i.lf = lshr i32 %.0.copyload.i.i.i.i.i.i.i.i.i25, 29
  %i.lg = and i32 %i.lf, 3
  %i.lh = lshr i32 %.0.copyload.i.i.i.i.i.i.i.i.i25, 3
  %i.li = and i32 %i.lh, 2097148
  %i.lj = or disjoint i32 %i.lg, %i.li
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = shl nuw i64 %i.lk, 43
  %i.lm = ashr exact i64 %i.ll, 31
  %i.ln = and i32 %.0.copyload.i.i.i.i.i.i14.i.i.i, -1627389952
  %.not.i15.i.i.i = icmp eq i32 %i.ln, -1879048192
  br i1 %.not.i15.i.i.i, label %bb.bl, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i"

bb.bl:                                            ; preds = %bb.bk
  %i.lo = xor i32 %.0.copyload.i.i.i.i.i.i14.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i25
  %i.lp = and i32 %i.lo, 31
  %.not.i.i37.i27 = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i37.i27, label %bb.bm, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i"

bb.bm:                                            ; preds = %bb.bl
  %i.lq = lshr i32 %.0.copyload.i.i.i.i.i.i14.i.i.i, 29
  %i.lr = and i32 %i.lq, 3
  %i.ls = lshr i32 %.0.copyload.i.i.i.i.i.i14.i.i.i, 3
  %i.lt = and i32 %i.ls, 2097148
  %i.lu = or disjoint i32 %i.lr, %i.lt
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = shl nuw i64 %i.lv, 43
  %i.lx = ashr exact i64 %i.lw, 31
  %i.ly = call noundef i64 @_ZNK3lld5macho12InputSection5getVAEm(ptr noundef nonnull align 8 dereferenceable(112) %i.ky, i64 noundef 0) #9
  %i.lz = add i64 %i.ly, %i.la
  %i.ma = and i64 %i.lz, -4096
  %i.mb = add i64 %i.ma, %i.lm
  %i.mc = call noundef i64 @_ZNK3lld5macho12InputSection5getVAEm(ptr noundef nonnull align 8 dereferenceable(112) %i.ky, i64 noundef 0) #9
  %i.md = add i64 %i.mc, %i.lb
  %i.me = and i64 %i.md, -4096
  %i.mf = add i64 %i.me, %i.lx
  %.not13.i.i.i = icmp eq i64 %i.mb, %i.mf
  br i1 %.not13.i.i.i, label %bb.bn, label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i"

bb.bn:                                            ; preds = %bb.bm
  store i32 -721215457, ptr %i.ld, align 1
  br label %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i"

"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i": ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %._crit_edge.i23
  %i.mg = icmp eq i64 %.sroa.7.1.lcssa.i, 0
  br i1 %i.mg, label %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_.exit", label %.lr.ph143

"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_.exit": ; preds = %"_ZZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_ENKUlvE_clEv.exit.i", %"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_3clEmN4llvm8ArrayRefImEE.exit.i", %bb.ay, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.bo

bb.bo:                                            ; preds = %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_2EvN4llvm8ArrayRefIhEET_.exit", %"_ZL11forEachHintIZN3lld5macho22applyOptimizationHintsEPhRKNS1_7ObjFileEE3$_3EvN4llvm8ArrayRefIhEET_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.bp

bb.bp:                                            ; preds = %bb.a, %bb.bo
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare { ptr, i64 } @_ZNK3lld5macho7ObjFile20getOptimizationHintsEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZZN3lld5macho22applyOptimizationHintsEPhRKNS0_7ObjFileEENK3$_0clEm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !37, !align !38 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39, !nonnull !37, !align !38
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not16 = icmp ult i64 %1, %i.e
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = add i64 %i.g, %i.e
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %_ZN4llvm16dyn_cast_or_nullIN3lld5macho18ConcatInputSectionENS2_12InputSectionEEEDaPT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42, !nonnull !37, !align !38 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43   ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_ZN4llvm16dyn_cast_or_nullIN3lld5macho18ConcatInputSectionENS2_12InputSectionEEEDaPT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN3lld5macho7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %"_ZN4llvm11upper_boundIRKSt6vectorIPN3lld5macho7SectionESaIS5_EERmZZNS3_22applyOptimizationHintsEPhRKNS3_7ObjFileEENK3$_0clEmEUlmPKS4_E_EEDaOT_OT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN3lld5macho7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.e, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN3lld5macho7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.07.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN3lld5macho7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %.sroa.02.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN3lld5macho7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.v = lshr i64 %.07.i.i.i, 1                   ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.06.i.i.i, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr i8, ptr %i.x, i64 48
  %.val.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !47
  %i.z = icmp ult i64 %1, %.val.i.i.i.i           ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = xor i64 %i.v, -1
  %i.ac = add nsw i64 %.07.i.i.i, %i.ab
  %.sroa.02.1.i.i.i = select i1 %i.z, ptr %.sroa.02.06.i.i.i, ptr %i.aa ; 2 uses
  %.1.i.i.i = select i1 %i.z, i64 %i.v, i64 %i.ac ; 2 uses
  %i.ad = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN3lld5macho7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %"_ZN4llvm11upper_boundIRKSt6vectorIPN3lld5macho7SectionESaIS5_EERmZZNS3_22applyOptimizationHintsEPhRKNS3_7ObjFileEENK3$_0clEmEUlmPKS4_E_EEDaOT_OT0_T1_.exit", !llvm.loop !57

"_ZN4llvm11upper_boundIRKSt6vectorIPN3lld5macho7SectionESaIS5_EERmZZNS3_22applyOptimizationHintsEPhRKNS3_7ObjFileEENK3$_0clEmEUlmPKS4_E_EEDaOT_OT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN3lld5macho7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.e
  %.sroa.02.0.lcssa.i.i.i = phi ptr [ %i.m, %bb.e ], [ %.sroa.02.1.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN3lld5macho7SectionESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ]
  %i.ae = getelementptr inbounds i8, ptr %.sroa.02.0.lcssa.i.i.i, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %_ZN4llvm16dyn_cast_or_nullIN3lld5macho18ConcatInputSectionENS2_12InputSectionEEEDaPT0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %"_ZN4llvm11upper_boundIRKSt6vectorIPN3lld5macho7SectionESaIS5_EERmZZNS3_22applyOptimizationHintsEPhRKNS3_7ObjFileEENK3$_0clEmEUlmPKS4_E_EEDaOT_OT0_T1_.exit"
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !47 ; 2 uses
  %i.an = sub i64 %1, %i.am
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 4                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3lld5macho10SubsectionESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %"_ZN4llvm11upper_boundIRKSt6vectorIN3lld5macho10SubsectionESaIS4_EEmZZNS3_22applyOptimizationHintsEPhRKNS3_7ObjFileEENK3$_0clEmEUlmS4_E_EEDaOT_OT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3lld5macho10SubsectionESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3lld5macho10SubsectionESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.07.i.i.i25 = phi i64 [ %.1.i.i.i30, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3lld5macho10SubsectionESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ar, %bb.f ] ; 2 uses
end_hunk_0
