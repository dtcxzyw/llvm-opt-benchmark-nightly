Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopUnrollAnalyzer?download=true
inline.NumInlined: 513
inline.NumDeleted: 310
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type { %"union.std::_Optional_payload_base<llvm::APInt>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::APInt>::_Storage" = type { %"class.llvm::APInt" }
%"class.llvm::APInt" = type <{ %union.anon, i32, [4 x i8] }>
%union.anon = type { i64 }
%"struct.llvm::UnrolledInstAnalyzer::SimplifiedAddress" = type { ptr, %"class.llvm::APInt" }
%"struct.llvm::SimplifyQuery" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.llvm::InstrInfoQuery", i8, i8, [5 x i8] }>
%"struct.llvm::InstrInfoQuery" = type { i8 }
%"class.llvm::DenseMap.50" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }

$_ZN4llvm5APIntaSERKS0_ = comdat any

$_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_20UnrolledInstAnalyzer17SimplifiedAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_20UnrolledInstAnalyzer17SimplifiedAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_20UnrolledInstAnalyzer17SimplifiedAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_20UnrolledInstAnalyzer17SimplifiedAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm20UnrolledInstAnalyzer20simplifyInstWithSCEVEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::optional", align 8     ; 7 uses
  %3 = alloca %"struct.llvm::UnrolledInstAnalyzer::SimplifiedAddress", align 8 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74, !nonnull !19, !align !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm15ScalarEvolution10isSCEVableEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %i.e, ptr noundef %i.g) #9
  br i1 %i.h, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !74, !nonnull !19, !align !20
  %i.j = tail call noundef ptr @_ZN4llvm15ScalarEvolution7getSCEVEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1152) %i.i, ptr noundef nonnull %1) #9 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !79
  %i.m = icmp ne i16 %i.l, 0
  %.not42 = icmp eq ptr %i.j, null                ; 2 uses
  %.not = or i1 %.not42, %i.m
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27, !nonnull !19, !align !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %1, ptr %i.a, align 8, !tbaa !29
  %i.r = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %i.o, ptr %i.s, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.p

.critedge:                                        ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #9
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !74, !nonnull !19, !align !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution15isLoopInvariantEPKNS_4SCEVEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %i.w, ptr noundef nonnull %i.j, ptr noundef %i.y) #9
  br i1 %i.z, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %i.aa = load i16, ptr %i.k, align 8, !tbaa !79
  %i.ab = icmp ne i16 %i.aa, 8
  %.not31 = or i1 %.not42, %i.ab
  br i1 %.not31, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !30
  %.not32 = icmp eq ptr %i.ad, %i.af
  br i1 %.not32, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !74, !nonnull !19, !align !20
  %i.ai = tail call noundef ptr @_ZNK4llvm14SCEVAddRecExpr19evaluateAtIterationEPKNS_4SCEVERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(1152) %i.ah) #9 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !79
  %i.al = icmp ne i16 %i.ak, 0
  %.not33.not44 = icmp eq ptr %i.ai, null
  %.not33.not = or i1 %.not33.not44, %i.al
  br i1 %.not33.not, label %.critedge36, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !27, !nonnull !19, !align !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr %1, ptr %i.b, align 8, !tbaa !29
  %i.aq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i39 = extractvalue { ptr, i8 } %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i39, i64 8
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.p

.critedge36:                                      ; preds = %bb.g
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !74, !nonnull !19, !align !20
  %i.at = tail call noundef ptr @_ZN4llvm15ScalarEvolution14getPointerBaseEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152) %i.as, ptr noundef nonnull %i.j) #9 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i16, ptr %i.au, align 8, !tbaa !79
  %.not45 = icmp eq i16 %i.av, 16
  br i1 %.not45, label %bb.i, label %bb.p

bb.i:                                             ; preds = %.critedge36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !74, !nonnull !19, !align !20
  call void @_ZN4llvm15ScalarEvolution25computeConstantDifferenceEPKNS_4SCEVES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1152) %i.aw, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.at) #9
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !89, !range !90, !noundef !19
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.j, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 1, ptr %i.bb, align 8, !tbaa !33
  store i64 0, ptr %i.ba, align 8, !tbaa !34
  %i.bc = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !95
  store ptr %i.bd, ptr %3, align 8, !tbaa !36
  %i.be = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntaSERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef nonnull align 8 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr %1, ptr %i.c, align 8, !tbaa !29
  %i.bf = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_20UnrolledInstAnalyzer17SimplifiedAddressENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i41 = extractvalue { ptr, i8 } %i.bf, 0 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i41, i64 8
  %i.bh = load ptr, ptr %3, align 8, !tbaa !36
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i41, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i41, i64 24 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !33
  %i.bl = icmp ult i32 %i.bk, 65
  br i1 %i.bl, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !34 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.bo = load i64, ptr %i.ba, align 8
  store i64 %i.bo, ptr %i.bi, align 8
  %i.bp = load i32, ptr %i.bb, align 8, !tbaa !33
  store i32 %i.bp, ptr %i.bj, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.pre = load i8, ptr %i.ax, align 8, !tbaa !89, !range !90
  %i.bq = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.ax, align 8, !tbaa !89
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 64
  %or.cond.i.i.i = select i1 %i.bq, i1 %6, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.br) #10
  br label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit: ; preds = %bb.i, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %bb.c, %bb.d, %.critedge36, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit, %bb.e, %bb.f, %bb.a
  %.7 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ true, %bb.c ], [ false, %bb.e ], [ false, %bb.f ], [ false, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit ], [ false, %.critedge36 ], [ true, %bb.h ]
  ret i1 %.7
}

declare noundef zeroext i1 @_ZNK4llvm15ScalarEvolution10isSCEVableEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_ZN4llvm15ScalarEvolution7getSCEVEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4llvm15ScalarEvolution15isLoopInvariantEPKNS_4SCEVEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm14SCEVAddRecExpr19evaluateAtIterationEPKNS_4SCEVERNS_15ScalarEvolutionE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1152)) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm15ScalarEvolution14getPointerBaseEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef) local_unnamed_addr #1

declare void @_ZN4llvm15ScalarEvolution25computeConstantDifferenceEPKNS_4SCEVES3_(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntaSERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !34
  store i64 %i.g, ptr %0, align 8, !tbaa !34
  %i.h = load i32, ptr %i.d, align 8, !tbaa !33
  store i32 %i.h, ptr %i.a, align 8, !tbaa !33
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm20UnrolledInstAnalyzer19visitBinaryOperatorERNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::SimplifyQuery", align 8 ; 8 uses
  %3 = alloca %"struct.llvm::SimplifyQuery", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 8 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 -32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 8 uses
  %i.f = load i8, ptr %i.c, align 8, !tbaa !42
  %i.g = icmp ult i8 %i.f, 23
  br i1 %i.g, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27, !nonnull !19, !align !20 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45, !noalias !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46, !noalias !104 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47, !noalias !104 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %i.n, -1                         ; 2 uses
  %i.q = ptrtoint ptr %i.c to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.p, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !48
  %i.aa = and i32 %i.v, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit.thread, !prof !49

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.ad = phi i64 [ %i.aj, %bb.d ], [ %i.w, %bb.c ]
  %.017.i.i = phi i32 [ %i.ai, %bb.d ], [ %i.v, %bb.c ]
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.ag = icmp eq ptr %i.c, %i.af
  br i1 %i.ag, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit, label %bb.d, !prof !50

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ah = add nuw i32 %.017.i.i, 1
  %i.ai = and i32 %i.ah, %i.p                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !48
  %i.an = and i32 %i.ai, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit.thread, !prof !51

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit: ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  %spec.select = select i1 %.not, ptr %i.c, ptr %i.ar
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit.thread

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit.thread: ; preds = %bb.d, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit, %bb.c, %bb.b, %bb.a
  %.038 = phi ptr [ %i.c, %bb.a ], [ %spec.select, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit ], [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.d ] ; 2 uses
  %i.as = load i8, ptr %i.e, align 8, !tbaa !42
  %i.at = icmp ult i8 %i.as, 23
  br i1 %i.at, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27, !nonnull !19, !align !20 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45, !noalias !105
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46, !noalias !105 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !47, !noalias !105 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = add i32 %i.ba, -1                       ; 2 uses
  %i.bd = ptrtoint ptr %i.e to i64
  %i.be = mul i64 %i.bd, -4658895280553007687     ; 2 uses
  %i.bf = lshr i64 %i.be, 31
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = and i32 %i.bc, %i.bh                    ; 3 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !48
  %i.bn = and i32 %i.bi, 31
  %i.bo = lshr i32 %i.bm, %i.bn
  %i.bp = trunc i32 %i.bo to i1
  br i1 %i.bp, label %.lr.ph.i.i27, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29.thread, !prof !49

.lr.ph.i.i27:                                     ; preds = %bb.f, %bb.g
  %i.bq = phi i64 [ %i.bw, %bb.g ], [ %i.bj, %bb.f ]
  %.017.i.i28 = phi i32 [ %i.bv, %bb.g ], [ %i.bi, %bb.f ]
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !29
  %i.bt = icmp eq ptr %i.e, %i.bs
  br i1 %i.bt, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29, label %bb.g, !prof !50

bb.g:                                             ; preds = %.lr.ph.i.i27
  %i.bu = add nuw i32 %.017.i.i28, 1
  %i.bv = and i32 %i.bu, %i.bc                    ; 3 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = lshr i64 %i.bw, 5
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !48
  %i.ca = and i32 %i.bv, 31
  %i.cb = lshr i32 %i.bz, %i.ca
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %.lr.ph.i.i27, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29.thread, !prof !51

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29: ; preds = %.lr.ph.i.i27
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !29 ; 2 uses
  %.not24 = icmp eq ptr %i.ce, null
  %spec.select41 = select i1 %.not24, ptr %i.e, ptr %i.ce
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29.thread

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29.thread: ; preds = %bb.g, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29, %bb.f, %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit.thread
  %.037 = phi ptr [ %i.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit.thread ], [ %spec.select41, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29 ], [ %i.e, %bb.f ], [ %i.e, %bb.e ], [ %i.e, %bb.g ] ; 2 uses
  %i.cf = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #9 ; 2 uses
  %i.cg = tail call noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.ch = load i8, ptr %1, align 8, !tbaa !42
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -30                  ; 2 uses
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit29.thread
  %i.ck = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN4llvm14FPMathOperator20getFastMathFlagsImplEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %.sroa.0.0.copyload.i = load i32, ptr %i.ck, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
end_hunk_0
