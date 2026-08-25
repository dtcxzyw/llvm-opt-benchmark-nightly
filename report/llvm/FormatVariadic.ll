Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FormatVariadic?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [112 x i8] }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<llvm::ReplacementItem>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::ReplacementItem>::_Storage" = type { %"struct.llvm::ReplacementItem" }
%"struct.llvm::ReplacementItem" = type { i32, %"class.llvm::StringRef", i32, i32, i32, i8, %"class.llvm::StringRef" }

$_ZN4llvm23SmallVectorTemplateBaseINS_15ReplacementItemELb1EE18growAndEmplaceBackIJRS1_EEES4_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_15ReplacementItemELb1EE15growAndPushBackERKS1_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [65 x i8] c"Unterminated brace sequence. Escape with {{ for a literal brace.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" \09\0A\0B\0C\0D\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19formatv_object_base17parseFormatStringENS_9StringRefEmb(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr %1, i64 %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 20 uses
  %.sroa.10.i.i = alloca [19 x i8], align 1       ; 4 uses
  %10 = alloca %"class.std::optional", align 8    ; 13 uses
  %.sroa.38 = alloca [19 x i8], align 1           ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 2, ptr %i.e, align 4, !tbaa !12
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.10.40..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.i.i, i64 3
  %.sroa.83.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.13.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.18.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %.sroa.23.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.sroa.28.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.33.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 36
  %.sroa.38.0..sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 37
  %.sroa.38.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.38, i64 3
  %.sroa.38.3..sroa_idx35 = getelementptr inbounds nuw i8, ptr %.sroa.38, i64 3
  %.sroa.38.3..sroa_idx36 = getelementptr inbounds nuw i8, ptr %.sroa.38, i64 3
  %.sroa.38.3..sroa_idx37 = getelementptr inbounds nuw i8, ptr %.sroa.38, i64 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm15SmallVectorImplINS_15ReplacementItemEE12emplace_backIJRS1_EEES4_DpOT_.exit
  %.017 = phi i32 [ 0, %.lr.ph ], [ %.2, %_ZN4llvm15SmallVectorImplINS_15ReplacementItemEE12emplace_backIJRS1_EEES4_DpOT_.exit ] ; 4 uses
  %.sroa.0.016 = phi ptr [ %1, %.lr.ph ], [ %.sroa.487.0, %_ZN4llvm15SmallVectorImplINS_15ReplacementItemEE12emplace_backIJRS1_EEES4_DpOT_.exit ] ; 15 uses
  %.sroa.3.015 = phi i64 [ %2, %.lr.ph ], [ %.sroa.54.0, %_ZN4llvm15SmallVectorImplINS_15ReplacementItemEE12emplace_backIJRS1_EEES4_DpOT_.exit ] ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  store i8 0, ptr %i.g, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.38)
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.l = load i8, ptr %.sroa.0.016, align 1, !tbaa !19, !noalias !16
  %.not.i = icmp eq i8 %i.l, 123
  br i1 %.not.i, label %.lr.ph.i.i.i.i.preheader.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

.lr.ph.i.i.i.i.preheader.preheader:               ; preds = %bb.b
  %i.m = add i64 %.sroa.3.015, -1                 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i, label %.lr.ph.i.i.ithread-pre-split.i.lr.ph, !llvm.loop !20

.lr.ph.i.i.ithread-pre-split.i.lr.ph:             ; preds = %.lr.ph.i.i.i.i.preheader.preheader
  br label %.lr.ph.i.i.ithread-pre-split.i, !llvm.loop !20

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.b
  %i.o = call ptr @memchr(ptr noundef nonnull %.sroa.0.016, i32 noundef 123, i64 noundef %.sroa.3.015) #8, !noalias !16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.sroa.0.016 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = call i64 @llvm.umin.i64(i64 %.sroa.3.015, i64 %i.r)
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, i64 %.sroa.3.015, i64 %i.s ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 %.1.i.i.i.i
  %i.u = sub i64 %.sroa.3.015, %.1.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.38.3..sroa_idx, i8 0, i64 16, i1 false), !alias.scope !16
  br label %_ZL26splitLiteralAndReplacementN4llvm9StringRefE.exit

.lr.ph.i.i.ithread-pre-split.i:                   ; preds = %.lr.ph.i.i.ithread-pre-split.i.lr.ph, %.lr.ph.i.i.i.i.preheader
  %i.v = phi i64 [ %i.m, %.lr.ph.i.i.ithread-pre-split.i.lr.ph ], [ %i.z, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.013.i.i.i.i1433 = phi ptr [ %.sroa.0.016, %.lr.ph.i.i.ithread-pre-split.i.lr.ph ], [ %i.w, %.lr.ph.i.i.i.i.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i1433, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.w, align 1, !tbaa !19, !noalias !16
  %i.x = icmp eq i8 %.pr.i, 123
  br i1 %i.x, label %.lr.ph.i.i.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.ithread-pre-split.i
  %i.y = sub i64 %.sroa.3.015, %i.v
  %11 = call i64 @llvm.umin.i64(i64 %.sroa.3.015, i64 %i.y)
  br label %_ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.ithread-pre-split.i
  %i.z = add i64 %i.v, -1                         ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i.preheader._ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i.loopexit_crit_edge, label %.lr.ph.i.i.ithread-pre-split.i, !llvm.loop !20

.lr.ph.i.i.i.i.preheader._ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i.loopexit_crit_edge: ; preds = %.lr.ph.i.i.i.i.preheader
  br label %_ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i, !llvm.loop !20

_ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.preheader, %.lr.ph.i.i.i.i.preheader._ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i.loopexit_crit_edge, %bb.c
  %.sroa.speculated.i.i.i = phi i64 [ %11, %bb.c ], [ %.sroa.3.015, %.lr.ph.i.i.i.i.preheader._ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i.loopexit_crit_edge ], [ %.sroa.3.015, %.lr.ph.i.i.i.i.preheader.preheader ] ; 3 uses
  %i.ab = icmp ugt i64 %.sroa.speculated.i.i.i, 1
  br i1 %i.ab, label %bb.d, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i28.i

bb.d:                                             ; preds = %_ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i
  %i.ac = lshr i64 %.sroa.speculated.i.i.i, 1
  %..i.i = call i64 @llvm.umin.i64(i64 %i.ac, i64 %.sroa.3.015)
  %i.ad = and i64 %.sroa.speculated.i.i.i, -2
  %.sroa.speculated4.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.015, i64 %i.ad) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 %.sroa.speculated4.i.i.i
  %i.af = sub i64 %.sroa.3.015, %.sroa.speculated4.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.38.3..sroa_idx37, i8 0, i64 16, i1 false), !alias.scope !16
  br label %_ZL26splitLiteralAndReplacementN4llvm9StringRefE.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i28.i: ; preds = %_ZNK4llvm9StringRef10take_whileENS_12function_refIFbcEEE.exit.i
  %i.ag = call ptr @memchr(ptr noundef nonnull %.sroa.0.016, i32 noundef 125, i64 noundef %.sroa.3.015) #8, !noalias !16 ; 2 uses
  %.not.i.i.i29.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i29.i, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.i

_ZNK4llvm9StringRef13find_first_ofEcm.exit30.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i28.i
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %.sroa.0.016 to i64        ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 5 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i, label %bb.e

_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i: ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i28.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.38.3..sroa_idx36, i8 0, i64 16, i1 false), !alias.scope !16
  br label %_ZL26splitLiteralAndReplacementN4llvm9StringRefE.exit

bb.e:                                             ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.i
  %.not139.i = icmp eq i64 %.sroa.3.015, 1
  br i1 %.not139.i, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i33.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i33.i: ; preds = %bb.e
  %i.al = add i64 %.sroa.3.015, -1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 1
  %i.an = call ptr @memchr(ptr noundef nonnull %i.am, i32 noundef 123, i64 noundef %i.al) #8, !noalias !16 ; 2 uses
  %.not.i.i.i34.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i34.i, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.i

_ZNK4llvm9StringRef13find_first_ofEcm.exit35.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i33.i
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.ai                    ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.aj
  br i1 %i.aq, label %bb.f, label %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i

bb.f:                                             ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.i
  %.sroa.speculated.i37.i = call i64 @llvm.umin.i64(i64 %.sroa.3.015, i64 %i.ap) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 %.sroa.speculated.i37.i
  %i.as = sub i64 %.sroa.3.015, %.sroa.speculated.i37.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.38.3..sroa_idx35, i8 0, i64 16, i1 false), !alias.scope !16
  br label %_ZL26splitLiteralAndReplacementN4llvm9StringRefE.exit

_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i: ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i33.i, %bb.e
  %i.at = icmp ugt i64 %i.aj, %.sroa.3.015
  %.sroa.speculate.load.false.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %.sroa.speculated.i45.i = select i1 %i.at, i64 %.sroa.3.015, i64 %.sroa.speculate.load.false.sroa.speculated.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 1
  %i.av = add i64 %.sroa.speculated.i45.i, -1     ; 2 uses
  %i.aw = add nuw i64 %i.aj, 1
  %.sroa.speculated4.i48.i = call i64 @llvm.umin.i64(i64 %.sroa.3.015, i64 %i.aw) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 %.sroa.speculated4.i48.i
  %i.ay = sub i64 %.sroa.3.015, %.sroa.speculated4.i48.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !16
  store ptr %i.au, ptr %8, align 8, !noalias !22
  store i64 %i.av, ptr %i.h, align 8, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8, !noalias !22
  %i.az = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr nonnull @.str.1, i64 2, i64 noundef 0) #8, !noalias !25
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.av)
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !26, !noalias !22 ; 2 uses
  %.sroa.speculated4.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ba, i64 %.sroa.speculated.i.i.i.i) ; 2 uses
  %i.bb = load ptr, ptr %8, align 8, !tbaa !30, !noalias !22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.speculated4.i.i.i.i.i.i
  %i.bd = sub i64 %i.ba, %.sroa.speculated4.i.i.i.i.i.i ; 2 uses
  store ptr %i.bc, ptr %7, align 8, !noalias !22
  store i64 %i.bd, ptr %i.i, align 8, !noalias !22
  %i.be = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull @.str.1, i64 2, i64 noundef -1) #8, !noalias !25
  %i.bf = add i64 %i.be, 1
  %i.bg = call i64 @llvm.usub.sat.i64(i64 %i.bd, i64 %i.bf)
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !26, !noalias !22 ; 2 uses
  %i.bi = sub i64 %i.bh, %i.bg
  %i.bj = load ptr, ptr %7, align 8, !tbaa !30, !noalias !22
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bi) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8, !noalias !22
  store ptr %i.bj, ptr %9, align 8, !noalias !22
  store i64 %.sroa.speculated.i.i.i.i.i.i, ptr %i.j, align 8, !noalias !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !noalias !22
  %i.bk = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @.str.2, i64 6, i64 noundef 0) #8, !noalias !25
  %.sroa.speculated.i.i52.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 %.sroa.speculated.i.i.i.i.i.i)
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !26, !noalias !22 ; 2 uses
  %.sroa.speculated4.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bl, i64 %.sroa.speculated.i.i52.i) ; 2 uses
  %i.bm = load ptr, ptr %9, align 8, !tbaa !30, !noalias !22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.speculated4.i.i.i.i.i
  %i.bo = sub i64 %i.bl, %.sroa.speculated4.i.i.i.i.i
  store ptr %i.bn, ptr %9, align 8, !tbaa !31, !noalias !22
  store i64 %i.bo, ptr %i.j, align 8, !tbaa !32, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !22
  %i.bp = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #8, !noalias !25
  %i.bq = load i64, ptr %i.b, align 8, !noalias !22 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.bq, 4294967295
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = select i1 %i.bp, i1 true, i1 %.not.i.i.i
  %.047.i.i = select i1 %i.bs, i32 -1, i32 %i.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !22
  %i.bt = load i64, ptr %i.j, align 8, !tbaa !26, !noalias !22 ; 4 uses
  %.not.i.i.i53.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i53.i, label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.i.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i:  ; preds = %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i
  %.pre.i.i.i = load ptr, ptr %9, align 8, !tbaa !30, !noalias !22 ; 4 uses
  %lhsc.i.i = load i8, ptr %.pre.i.i.i, align 1, !noalias !25
  %i.bu = icmp eq i8 %lhsc.i.i, 44
  br i1 %i.bu, label %bb.g, label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.i.i

bb.g:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 1 ; 3 uses
  %i.bw = add i64 %i.bt, -1                       ; 3 uses
  store ptr %i.bv, ptr %9, align 8, !tbaa !31, !noalias !22
  store i64 %i.bw, ptr %i.j, align 8, !tbaa !32, !noalias !22
  switch i64 %i.bw, label %bb.h [
    i64 0, label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.i.i
    i64 1, label %_ZL16translateLocCharc.exit21.i.i.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 2 ; 4 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !19, !noalias !25
  switch i8 %i.by, label %bb.l [
    i8 45, label %bb.k
    i8 61, label %bb.i
    i8 43, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ 0, %bb.h ], [ 1, %bb.i ], [ 2, %bb.j ]
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !19, !noalias !25
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 3
  br label %_ZL16translateLocCharc.exit21.sink.split.i.i.i

bb.l:                                             ; preds = %bb.h
  %i.cb = load i8, ptr %i.bv, align 1, !tbaa !19, !noalias !25
  switch i8 %i.cb, label %_ZL16translateLocCharc.exit21.i.i.i [
    i8 45, label %_ZL16translateLocCharc.exit21.sink.split.i.i.i
    i8 61, label %bb.m
    i8 43, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  br label %_ZL16translateLocCharc.exit21.sink.split.i.i.i

bb.n:                                             ; preds = %bb.l
  br label %_ZL16translateLocCharc.exit21.sink.split.i.i.i

_ZL16translateLocCharc.exit21.sink.split.i.i.i:   ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i.i = phi i64 [ -3, %bb.k ], [ -2, %bb.n ], [ -2, %bb.m ], [ -2, %bb.l ]
  %.245.i.i = phi i32 [ %.sroa.4.0.i.ph.i.i.i, %bb.k ], [ 2, %bb.n ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.2.i.i = phi i8 [ %i.bz, %bb.k ], [ 32, %bb.n ], [ 32, %bb.m ], [ 32, %bb.l ]
  %.sink41.i.i.i = phi ptr [ %i.ca, %bb.k ], [ %i.bx, %bb.n ], [ %i.bx, %bb.m ], [ %i.bx, %bb.l ]
  %i.cc = add i64 %.sink.i.i, %i.bt
  store ptr %.sink41.i.i.i, ptr %9, align 8, !tbaa !31, !noalias !22
  store i64 %i.cc, ptr %i.j, align 8, !tbaa !32, !noalias !22
  br label %_ZL16translateLocCharc.exit21.i.i.i

_ZL16translateLocCharc.exit21.i.i.i:              ; preds = %_ZL16translateLocCharc.exit21.sink.split.i.i.i, %bb.l, %bb.g
  %.144.i.i = phi i32 [ 2, %bb.l ], [ %.245.i.i, %_ZL16translateLocCharc.exit21.sink.split.i.i.i ], [ 2, %bb.g ]
  %.1.i.i = phi i8 [ 32, %bb.l ], [ %.2.i.i, %_ZL16translateLocCharc.exit21.sink.split.i.i.i ], [ 32, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8, !noalias !22
  %i.cd = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #8, !noalias !25
  br i1 %i.cd, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZL16translateLocCharc.exit21.i.i.i
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !33, !noalias !22 ; 2 uses
  %.not.i.i6.i.i = icmp ult i64 %i.ce, 4294967296
  br i1 %.not.i.i6.i.i, label %_ZL18consumeFieldLayoutRN4llvm9StringRefERNS_10AlignStyleERjRc.exit.i.i, label %bb.p

_ZL18consumeFieldLayoutRN4llvm9StringRefERNS_10AlignStyleERjRc.exit.i.i: ; preds = %bb.o
  %i.cf = trunc nuw i64 %i.ce to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8, !noalias !22
  %.pre.i54.i = load i64, ptr %i.j, align 8, !tbaa !26, !noalias !22
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.i.i

bb.p:                                             ; preds = %bb.o, %_ZL16translateLocCharc.exit21.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8, !noalias !22
  br label %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i

_ZN4llvm9StringRef13consume_frontES0_.exit.thread.i.i: ; preds = %_ZL18consumeFieldLayoutRN4llvm9StringRefERNS_10AlignStyleERjRc.exit.i.i, %bb.g, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i, %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i
  %i.cg = phi i64 [ %.pre.i54.i, %_ZL18consumeFieldLayoutRN4llvm9StringRefERNS_10AlignStyleERjRc.exit.i.i ], [ 0, %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i ], [ %i.bt, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i ], [ %i.bw, %bb.g ]
  %.043.i.i = phi i32 [ %.144.i.i, %_ZL18consumeFieldLayoutRN4llvm9StringRefERNS_10AlignStyleERjRc.exit.i.i ], [ 2, %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i ], [ 2, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i ], [ 2, %bb.g ]
  %.040.i.i = phi i32 [ %i.cf, %_ZL18consumeFieldLayoutRN4llvm9StringRefERNS_10AlignStyleERjRc.exit.i.i ], [ 0, %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i ], [ 0, %bb.g ]
  %.0.i.i = phi i8 [ %.1.i.i, %_ZL18consumeFieldLayoutRN4llvm9StringRefERNS_10AlignStyleERjRc.exit.i.i ], [ 32, %_ZNK4llvm9StringRef13find_first_ofEcm.exit35.thread.i ], [ 32, %_ZNK4llvm9StringRef11starts_withES0_.exit.i.i.i ], [ 32, %bb.g ]
  %i.ch = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @.str.2, i64 6, i64 noundef 0) #8, !noalias !25
  %.sroa.speculated.i9.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cg) ; 2 uses
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !26, !noalias !22 ; 3 uses
  %.sroa.speculated4.i.i.i10.i.i = call i64 @llvm.umin.i64(i64 %i.ci, i64 %.sroa.speculated.i9.i.i) ; 2 uses
  %i.cj = load ptr, ptr %9, align 8, !tbaa !30, !noalias !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.speculated4.i.i.i10.i.i ; 3 uses
  %i.cl = sub i64 %i.ci, %.sroa.speculated4.i.i.i10.i.i ; 4 uses
  store ptr %i.ck, ptr %9, align 8, !tbaa !31, !noalias !22
  store i64 %i.cl, ptr %i.j, align 8, !tbaa !32, !noalias !22
  %.not.i.i13.not.i.i = icmp ugt i64 %i.ci, %.sroa.speculated.i9.i.i
  br i1 %.not.i.i13.not.i.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i15.i.i, label %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i15.i.i: ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.i.i
  %lhsc54.i.i = load i8, ptr %i.ck, align 1, !noalias !25
  %i.cm = icmp eq i8 %lhsc54.i.i, 58
  br i1 %i.cm, label %bb.q, label %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i

bb.q:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.co = add i64 %i.cl, -1
  store ptr %i.cn, ptr %9, align 8, !tbaa !31, !noalias !22
  store i64 %i.co, ptr %i.j, align 8, !tbaa !32, !noalias !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !noalias !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !22
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i

_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i: ; preds = %bb.q, %_ZNK4llvm9StringRef11starts_withES0_.exit.i15.i.i, %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.i.i
  %i.cp = phi i64 [ %i.cl, %_ZN4llvm9StringRef13consume_frontES0_.exit.thread.i.i ], [ %i.cl, %_ZNK4llvm9StringRef11starts_withES0_.exit.i15.i.i ], [ 0, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8, !noalias !22
  %i.cq = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @.str.2, i64 6, i64 noundef 0) #8, !noalias !25
  %.sroa.speculated.i.i19.i.i = call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cp)
  %i.cr = load i64, ptr %i.j, align 8, !tbaa !26, !noalias !22 ; 2 uses
  %.sroa.speculated4.i.i.i.i20.i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 %.sroa.speculated.i.i19.i.i) ; 2 uses
  %i.cs = load ptr, ptr %9, align 8, !tbaa !30, !noalias !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.speculated4.i.i.i.i20.i.i
  %i.cu = sub i64 %i.cr, %.sroa.speculated4.i.i.i.i20.i.i ; 2 uses
  store ptr %i.ct, ptr %6, align 8, !noalias !22
  store i64 %i.cu, ptr %i.k, align 8, !noalias !22
  %i.cv = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull @.str.2, i64 6, i64 noundef -1) #8, !noalias !25
  %i.cw = add i64 %i.cv, 1
  %i.cx = call i64 @llvm.usub.sat.i64(i64 %i.cu, i64 %i.cw)
  %i.cy = load i64, ptr %i.k, align 8, !tbaa !26, !noalias !22 ; 2 uses
  %i.cz = sub i64 %i.cy, %i.cx
  %.sroa.speculated.i.i.i.i21.i.i = call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8, !noalias !22
  %i.da = icmp eq i64 %.sroa.speculated.i.i.i.i21.i.i, 0
  br i1 %i.da, label %bb.r, label %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i

bb.r:                                             ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %8, align 8, !tbaa !31, !noalias !22
  %.sroa.2.0.copyload.i.i = load i64, ptr %i.h, align 8, !tbaa !32, !noalias !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.10.40..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !noalias !16
  br label %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i

_ZL20parseReplacementItemN4llvm9StringRefE.exit.i: ; preds = %bb.r, %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i, %bb.p
  %.sroa.8.0.i = phi i32 [ %.043.i.i, %bb.r ], [ undef, %bb.p ], [ undef, %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i ]
  %.sroa.7.0.i = phi i32 [ %.040.i.i, %bb.r ], [ undef, %bb.p ], [ undef, %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i ]
  %.sroa.6.0.i = phi i32 [ %.047.i.i, %bb.r ], [ undef, %bb.p ], [ undef, %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i ]
  %.sroa.5.0.i = phi i64 [ %.sroa.2.0.copyload.i.i, %bb.r ], [ undef, %bb.p ], [ undef, %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i ]
  %.sroa.455.0.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.r ], [ undef, %bb.p ], [ undef, %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i ]
  %.sroa.9.0.i = phi i8 [ %.0.i.i, %bb.r ], [ undef, %bb.p ], [ undef, %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i ]
  %.sroa.11.0.i = phi i8 [ 1, %bb.r ], [ 0, %bb.p ], [ 0, %_ZN4llvm9StringRef13consume_frontES0_.exit18.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8, !noalias !22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.38, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.10.i.i, i64 19, i1 false)
  br label %_ZL26splitLiteralAndReplacementN4llvm9StringRefE.exit

_ZL26splitLiteralAndReplacementN4llvm9StringRefE.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.d, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i, %bb.f, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i
  %.sroa.33.0 = phi i8 [ 0, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ 0, %bb.d ], [ %.sroa.9.0.i, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ 0, %bb.f ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ]
  %.sroa.28.0 = phi i32 [ 2, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ 2, %bb.d ], [ %.sroa.8.0.i, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ 2, %bb.f ], [ 2, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ]
  %.sroa.23.0 = phi i32 [ 0, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ 0, %bb.d ], [ %.sroa.7.0.i, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ 0, %bb.f ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ]
  %.sroa.18.0 = phi i32 [ 0, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ 0, %bb.d ], [ %.sroa.6.0.i, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ 0, %bb.f ], [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ] ; 2 uses
  %.sroa.13.0 = phi i64 [ 64, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ %..i.i, %bb.d ], [ %.sroa.5.0.i, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ %.sroa.speculated.i37.i, %bb.f ], [ %.1.i.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ]
  %.sroa.83.0 = phi ptr [ @.str, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ %.sroa.0.016, %bb.d ], [ %.sroa.455.0.i, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ %.sroa.0.016, %bb.f ], [ %.sroa.0.016, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ]
  %.sroa.43.0 = phi i8 [ 1, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ 1, %bb.d ], [ %.sroa.11.0.i, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ 1, %bb.f ], [ 1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ] ; 2 uses
  %i.db = phi i1 [ false, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ false, %bb.d ], [ true, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ false, %bb.f ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ]
  %.sroa.02.0 = phi i32 [ 1, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ 1, %bb.d ], [ 0, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ 1, %bb.f ], [ 1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ]
  %.sroa.54.0 = phi i64 [ 0, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ %i.af, %bb.d ], [ %i.ay, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ %i.as, %bb.f ], [ %i.u, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ] ; 2 uses
  %.sroa.487.0 = phi ptr [ null, %_ZNK4llvm9StringRef13find_first_ofEcm.exit30.thread.i ], [ %i.ae, %bb.d ], [ %i.ax, %_ZL20parseReplacementItemN4llvm9StringRefE.exit.i ], [ %i.ar, %bb.f ], [ %i.t, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  store i32 %.sroa.02.0, ptr %10, align 8
  store ptr %.sroa.83.0, ptr %.sroa.83.0..sroa.4.8..sroa_idx, align 8
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa.4.8..sroa_idx, align 8
  store i32 %.sroa.18.0, ptr %.sroa.18.0..sroa.4.8..sroa_idx, align 8
  store i32 %.sroa.23.0, ptr %.sroa.23.0..sroa.4.8..sroa_idx, align 4
  store i32 %.sroa.28.0, ptr %.sroa.28.0..sroa.4.8..sroa_idx, align 8
  store i8 %.sroa.33.0, ptr %.sroa.33.0..sroa.4.8..sroa_idx, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.38.0..sroa.4.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.38, i64 19, i1 false)
  store i8 %.sroa.43.0, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  %i.dc = trunc nuw i8 %.sroa.43.0 to i1
  br i1 %i.dc, label %bb.s, label %_ZN4llvm15SmallVectorImplINS_15ReplacementItemEE12emplace_backIJRS1_EEES4_DpOT_.exit, !llvm.loop !35

bb.s:                                             ; preds = %_ZL26splitLiteralAndReplacementN4llvm9StringRefE.exit
  %i.dd = icmp eq i32 %.sroa.18.0, -1
  %or.cond = select i1 %i.db, i1 %i.dd, i1 false
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.de = add i32 %.017, 1
  store i32 %.017, ptr %.sroa.18.0..sroa.4.8..sroa_idx, align 8, !tbaa !36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1 = phi i32 [ %i.de, %bb.t ], [ %.017, %bb.s ] ; 2 uses
  %i.df = load i32, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.dg = load i32, ptr %i.e, align 4, !tbaa !12
  %.not.i1 = icmp ult i32 %i.df, %i.dg
  br i1 %.not.i1, label %bb.w, label %bb.v, !prof !40

bb.v:                                             ; preds = %bb.u
  %i.dh = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_15ReplacementItemELb1EE18growAndEmplaceBackIJRS1_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %10) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_15ReplacementItemEE12emplace_backIJRS1_EEES4_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.di = zext i32 %i.df to i64
  %i.dj = load ptr, ptr %0, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw [56 x i8], ptr %i.dj, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dk, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !41
  %i.dl = load i32, ptr %i.d, align 8, !tbaa !11
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.d, align 8, !tbaa !11
  br label %_ZN4llvm15SmallVectorImplINS_15ReplacementItemEE12emplace_backIJRS1_EEES4_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_15ReplacementItemEE12emplace_backIJRS1_EEES4_DpOT_.exit: ; preds = %bb.w, %bb.v, %_ZL26splitLiteralAndReplacementN4llvm9StringRefE.exit
  %.2 = phi i32 [ %.017, %_ZL26splitLiteralAndReplacementN4llvm9StringRefE.exit ], [ %.1, %bb.v ], [ %.1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.dn = icmp eq i64 %.sroa.54.0, 0
  br i1 %i.dn, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm15SmallVectorImplINS_15ReplacementItemEE12emplace_backIJRS1_EEES4_DpOT_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_15ReplacementItemELb1EE18growAndEmplaceBackIJRS1_EEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::ReplacementItem", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_15ReplacementItemELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15ReplacementItemELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !11
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15ReplacementItemELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_15ReplacementItemELb1EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -56
  ret ptr %i.n
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_15ReplacementItemELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::ReplacementItem", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 56) #8
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !5, i64 8}
!12 = !{!9, !5, i64 12}
!13 = !{!14, !15, i64 56}
!14 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm15ReplacementItemEE", !6, i64 0, !15, i64 56}
!15 = !{!"bool", !6, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZL26splitLiteralAndReplacementN4llvm9StringRefE: argument 0"}
!18 = distinct !{!18, !"_ZL26splitLiteralAndReplacementN4llvm9StringRefE"}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !17}
!23 = distinct !{!23, !24, !"_ZL20parseReplacementItemN4llvm9StringRefE: argument 0"}
!24 = distinct !{!24, !"_ZL20parseReplacementItemN4llvm9StringRefE"}
!25 = !{!23}
!26 = !{!27, !29, i64 8}
end_hunk_0
