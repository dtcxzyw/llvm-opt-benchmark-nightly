Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGISelMatcherOpt?download=true
inline.NumInlined: 1479
inline.NumDeleted: 679
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, llvm::MVT>, std::_Select1st<std::pair<const unsigned int, llvm::MVT>>, std::less<unsigned int>>::_Alloc_node" = type { ptr }
%"struct.llvm::ValueTypeByHwMode" = type <{ %"struct.llvm::InfoByHwMode.87", i32, [4 x i8] }>
%"struct.llvm::InfoByHwMode.87" = type { %"class.std::map.88", ptr }
%"class.std::map.88" = type { %"class.std::_Rb_tree.89" }
%"class.std::_Rb_tree.89" = type { %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, llvm::MVT>, std::_Select1st<std::pair<const unsigned int, llvm::MVT>>, std::less<unsigned int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, llvm::MVT>, std::_Select1st<std::pair<const unsigned int, llvm::MVT>>, std::less<unsigned int>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.llvm::SmallVector.136" = type { %"class.llvm::SmallVectorImpl.80", %"struct.llvm::SmallVectorStorage.137" }
%"class.llvm::SmallVectorImpl.80" = type { %"class.llvm::SmallVectorTemplateBase.81" }
%"class.llvm::SmallVectorTemplateBase.81" = type { %"class.llvm::SmallVectorTemplateCommon.82" }
%"class.llvm::SmallVectorTemplateCommon.82" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.137" = type { [128 x i8] }
%"class.llvm::MatcherList" = type <{ %"class.llvm::MatcherBase", i32, [4 x i8] }>
%"class.llvm::MatcherBase" = type { ptr }
%"class.llvm::SmallVector.144" = type { %"class.llvm::SmallVectorImpl.145", %"struct.llvm::SmallVectorStorage.148" }
%"class.llvm::SmallVectorImpl.145" = type { %"class.llvm::SmallVectorTemplateBase.146" }
%"class.llvm::SmallVectorTemplateBase.146" = type { %"class.llvm::SmallVectorTemplateCommon.147" }
%"class.llvm::SmallVectorTemplateCommon.147" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.148" = type { [192 x i8] }
%"class.llvm::DenseMap.156" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.158" = type { %"class.llvm::SmallVectorImpl.159", %"struct.llvm::SmallVectorStorage.162" }
%"class.llvm::SmallVectorImpl.159" = type { %"class.llvm::SmallVectorTemplateBase.160" }
%"class.llvm::SmallVectorTemplateBase.160" = type { %"class.llvm::SmallVectorTemplateCommon.161" }
%"class.llvm::SmallVectorTemplateCommon.161" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.162" = type { [192 x i8] }
%"class.llvm::MVT" = type { i16 }
%"class.llvm::SmallVector.165" = type { %"class.llvm::SmallVectorImpl.80", %"struct.llvm::SmallVectorStorage.166" }
%"struct.llvm::SmallVectorStorage.166" = type { [16 x i8] }

$_ZN4llvm17ValueTypeByHwModeC2ERKS0_ = comdat any

$_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZN4llvm15SmallVectorImplINS_17ValueTypeByHwModeEE6appendIPKS1_vEEvT_S6_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_17ValueTypeByHwModeELb0EE4growEm = comdat any

$_ZN4llvm15SmallVectorImplINS_11MatcherListEE6insertISt13move_iteratorIPS1_EvEES5_S5_T_S7_ = comdat any

$_ZN4llvm15SmallVectorImplINS_11MatcherListEE6appendISt13move_iteratorIPS1_EvEEvT_S7_ = comdat any

$_ZN4llvm17SwitchTypeMatcherC2EONS_15SmallVectorImplISt4pairINS_3MVTENS_11MatcherListEEEE = comdat any

$_ZN4llvm17ValueTypeByHwModeC2ENS_3MVTE = comdat any

$_ZN4llvm16CheckTypeMatcherC2ENS_17ValueTypeByHwModeEj = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm = comdat any

$_ZN4llvm15SmallVectorImplINS_11MatcherListEEaSEOS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE18growAndEmplaceBackIJS4_S5_EEERS6_DpOT_ = comdat any

$_ZN4llvm15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEaSEOS7_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E15LookupBucketForIjEEbRKT_RPS6_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8moveFromERS7_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_3MVTENS_11MatcherListEELb0EE18growAndEmplaceBackIJRS2_S3_EEERS4_DpOT_ = comdat any

$_ZN4llvm15SmallVectorImplISt4pairINS_3MVTENS_11MatcherListEEEaSEOS5_ = comdat any

$_ZNSt3mapIjN4llvm3MVTESt4lessIjESaISt4pairIKjS1_EEE11try_emplaceIJRS1_EEES4_ISt17_Rb_tree_iteratorIS6_EbEOjDpOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm18RecordChildMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm21CheckChildTypeMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm21CheckChildSameMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm24CheckChildIntegerMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm26CheckChild2CondCodeMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm18MoveSiblingMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm18MorphNodeToMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm21EmitNodeMatcherCommonE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm12ScopeMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm19SwitchOpcodeMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm17SwitchTypeMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN4llvm16CheckTypeMatcherE = external unnamed_addr constant { [8 x ptr] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15OptimizeMatcherERNS_11MatcherListERKNS_18CodeGenDAGPatternsE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(1348) %1) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZL13ContractNodesRN4llvm11MatcherListERKNS_18CodeGenDAGPatternsE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(1348) %1)
  tail call fastcc void @_ZL11FactorNodesRN4llvm11MatcherListE(ptr noundef nonnull align 8 dereferenceable(12) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL13ContractNodesRN4llvm11MatcherListERKNS_18CodeGenDAGPatternsE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(1348) %1) unnamed_addr #0 {
.lr.ph.i:
  %2 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, llvm::MVT>, std::_Select1st<std::pair<const unsigned int, llvm::MVT>>, std::less<unsigned int>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, llvm::MVT>, std::_Select1st<std::pair<const unsigned int, llvm::MVT>>, std::less<unsigned int>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, llvm::MVT>, std::_Select1st<std::pair<const unsigned int, llvm::MVT>>, std::less<unsigned int>>::_Alloc_node", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.llvm::ValueTypeByHwMode", align 8 ; 10 uses
  %6 = alloca %"struct.llvm::ValueTypeByHwMode", align 8 ; 10 uses
  %7 = alloca %"struct.llvm::ValueTypeByHwMode", align 8 ; 10 uses
  %8 = alloca %"struct.llvm::ValueTypeByHwMode", align 8 ; 4 uses
  %9 = alloca %"struct.llvm::ValueTypeByHwMode", align 8 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread824, label %.lr.ph898

.lr.ph898:                                        ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !30 ; 2 uses
  %.not1041 = icmp eq i32 %i.ae, 0
  br i1 %.not1041, label %._crit_edge1047, label %.critedge362

._crit_edge1047:                                  ; preds = %select.unfold, %.lr.ph898
  %.sroa.0697.0894.lcssa = phi ptr [ %i.f, %.lr.ph898 ], [ %.sroa.0697.32, %select.unfold ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0697.0894.lcssa, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %.not339899 = icmp eq i32 %i.ag, 0
  br i1 %.not339899, label %.thread824, label %.lr.ph902

.lr.ph902:                                        ; preds = %._crit_edge1047
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0697.0894.lcssa, i64 16
  %i.ai = zext i32 %i.ag to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph902, %bb.a
  %indvars.iv910 = phi i64 [ 0, %.lr.ph902 ], [ %indvars.iv.next911, %bb.a ] ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv910
  call fastcc void @_ZL13ContractNodesRN4llvm11MatcherListERKNS_18CodeGenDAGPatternsE(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(1348) %1)
  %indvars.iv.next911 = add nuw nsw i64 %indvars.iv910, 1 ; 2 uses
  %.not339 = icmp eq i64 %indvars.iv.next911, %i.ai
  br i1 %.not339, label %.thread824, label %bb.a, !llvm.loop !95

.critedge362:                                     ; preds = %.lr.ph898, %select.unfold
  %i.al = phi i32 [ %i.wx, %select.unfold ], [ %i.ae, %.lr.ph898 ] ; 2 uses
  %i.am = phi ptr [ %i.ww, %select.unfold ], [ %i.ad, %.lr.ph898 ] ; 2 uses
  %.sroa.0697.08941044 = phi ptr [ %.sroa.0697.32, %select.unfold ], [ %i.f, %.lr.ph898 ] ; 33 uses
  %.sroa.0277.08961042 = phi ptr [ %.sroa.0277.1, %select.unfold ], [ %0, %.lr.ph898 ] ; 62 uses
  %.not830 = icmp eq i32 %i.al, 5
  %.pre927.pre929.pre.pre.pre.pre932 = load ptr, ptr %.sroa.0697.08941044, align 8, !tbaa !27 ; 15 uses
  br i1 %.not830, label %.lr.ph.i392, label %bb.y

.lr.ph.i392:                                      ; preds = %.critedge362
  %i.an = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 16 ; 5 uses
  %10 = load i32, ptr %i.an, align 8, !tbaa !30   ; 2 uses
  %11 = icmp ne i32 %10, 1
  %.not341831 = icmp eq ptr %.pre927.pre929.pre.pre.pre.pre932, null ; 5 uses
  %.not341 = or i1 %11, %.not341831
  br i1 %.not341, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i392
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941044, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !102
  %i.aq = icmp ult i32 %i.ap, 8
  br i1 %i.aq, label %bb.c, label %.thread987.thread

.thread987.thread:                                ; preds = %bb.b
  %.pre9351017 = load ptr, ptr %.sroa.0697.08941044, align 8, !tbaa !27
  br label %.thread724

bb.c:                                             ; preds = %bb.b
  %i.ar = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14 ; 9 uses
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !102
  %i.at = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !107
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 2, ptr %i.ax, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm18RecordChildMatcherE, i64 16), ptr %i.ar, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 3 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !110
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !111 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !38
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.bf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #15 ; 2 uses
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !111
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !38
  store i64 %i.bg, ptr %i.ba, align 8, !tbaa !113
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.bh = phi ptr [ %i.bf, %bb.d ], [ %i.ba, %bb.c ] ; 2 uses
  switch i64 %i.bd, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !113
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !113
  br label %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bb, i64 %i.bd, i1 false)
  br label %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit

_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !112
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !111
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %i.av, ptr %i.bn, align 8, !tbaa !114
  %.pre = load i32, ptr %i.an, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit, %.lr.ph.i392
  %i.bo = phi i32 [ %.pre, %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit ], [ %10, %.lr.ph.i392 ] ; 2 uses
  %.0310 = phi ptr [ %i.ar, %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit ], [ null, %.lr.ph.i392 ] ; 3 uses
  %i.bp = icmp ne i32 %i.bo, 14
  %.not342 = or i1 %i.bp, %.not341831
  br i1 %.not342, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941044, i64 12 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !102
  %i.bs = icmp ult i32 %i.br, 8
  br i1 %i.bs, label %bb.i, label %.thread987

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 88
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !52
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.j, label %.thread987

bb.j:                                             ; preds = %bb.i
  %i.bw = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #14 ; 13 uses
  %i.bx = load i32, ptr %i.bq, align 4, !tbaa !102
  store i32 0, ptr %i.g, align 8, !tbaa !53
  store ptr null, ptr %i.h, align 8, !tbaa !54
  store ptr %i.g, ptr %i.i, align 8, !tbaa !55
  store ptr %i.g, ptr %i.j, align 8, !tbaa !56
  store i64 0, ptr %i.k, align 8, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !54 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm17ValueTypeByHwModeC2ERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %5, ptr %4, align 8, !tbaa !59
  %i.ca = call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.k ], [ %i.cc, %bb.l ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i, label %bb.l, !llvm.loop !0

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i: ; preds = %bb.l
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i = phi ptr [ %i.ca, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i ], [ %i.ce, %bb.m ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !62 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i8.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i, label %bb.m, !llvm.loop !1

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i: ; preds = %bb.m
  store ptr %.0.i.i7.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !61
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 64
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !57 ; 2 uses
  store i64 %i.cg, ptr %i.k, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !61
  br label %_ZN4llvm17ValueTypeByHwModeC2ERKS0_.exit

_ZN4llvm17ValueTypeByHwModeC2ERKS0_.exit:         ; preds = %bb.j, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i
  %i.ch = phi i64 [ 0, %bb.j ], [ %i.cg, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i ]
  %i.ci = phi ptr [ %i.g, %bb.j ], [ %.0.i.i7.i.i.i.i.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i ]
  %i.cj = phi ptr [ %i.g, %bb.j ], [ %.0.i.i.i.i.i.i.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i ]
  %i.ck = phi ptr [ null, %bb.j ], [ %i.ca, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyERKSA_.exit.i.i.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !63 ; 2 uses
  store ptr %i.cm, ptr %i.l, align 8, !tbaa !63
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 80
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !64 ; 2 uses
  store i32 %i.co, ptr %i.m, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr null, ptr %i.cp, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i32 16, ptr %i.cq, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm21CheckChildTypeMatcherE, i64 16), ptr %i.bw, align 8, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store i32 %i.bx, ptr %i.cr, align 4, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm17ValueTypeByHwModeC2ERKS0_.exit
  %i.ct = load i32, ptr %i.g, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store ptr %i.ck, ptr %i.cu, align 8, !tbaa !54
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !67
  store ptr null, ptr %i.h, align 8, !tbaa !54
  store ptr %i.g, ptr %i.i, align 8, !tbaa !55
  store ptr %i.g, ptr %i.j, align 8, !tbaa !56
  store i64 0, ptr %i.k, align 8, !tbaa !57
  br label %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit

bb.o:                                             ; preds = %_ZN4llvm17ValueTypeByHwModeC2ERKS0_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store ptr null, ptr %i.cw, align 8, !tbaa !54
  br label %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit

_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit: ; preds = %bb.n, %bb.o
  %.sink914 = phi ptr [ %i.cs, %bb.o ], [ %i.cj, %bb.n ]
  %.sink913 = phi ptr [ %i.cs, %bb.o ], [ %i.ci, %bb.n ]
  %.sink = phi i64 [ 0, %bb.o ], [ %i.ch, %bb.n ]
  %.sink.i.i.i.i.i.i.i = phi i32 [ 0, %bb.o ], [ %i.ct, %bb.n ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store ptr %.sink914, ptr %i.cx, align 8, !tbaa !55
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store ptr %.sink913, ptr %i.cy, align 8, !tbaa !56
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  store i64 %.sink, ptr %i.cz, align 8, !tbaa !57
  store i32 %.sink.i.i.i.i.i.i.i, ptr %i.cs, align 8, !tbaa !53
  %i.da = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store ptr %i.cm, ptr %i.da, align 8, !tbaa !63
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  store i32 %i.co, ptr %i.db, align 8, !tbaa !64
  call void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef null)
  %.pre921 = load i32, ptr %i.an, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit, %bb.g
  %i.dc = phi i32 [ %.pre921, %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit ], [ %i.bo, %bb.g ] ; 2 uses
  %.1311 = phi ptr [ %i.bw, %_ZN4llvm21CheckChildTypeMatcherC2EjNS_17ValueTypeByHwModeE.exit ], [ %.0310, %bb.g ] ; 2 uses
  %i.dd = icmp ne i32 %i.dc, 8
  %.not343 = or i1 %i.dd, %.not341831
  br i1 %.not343, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941044, i64 12 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !102
  %i.dg = icmp ult i32 %i.df, 4
  br i1 %i.dg, label %bb.r, label %.thread987

bb.r:                                             ; preds = %bb.q
  %i.dh = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 6 uses
  %i.di = load i32, ptr %i.de, align 4, !tbaa !102
  %i.dj = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !116
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr null, ptr %i.dl, align 8, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 9, ptr %i.dm, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm21CheckChildSameMatcherE, i64 16), ptr %i.dh, align 8, !tbaa !37
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store i32 %i.di, ptr %i.dn, align 4, !tbaa !118
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i32 %i.dk, ptr %i.do, align 8, !tbaa !119
  %.pre922 = load i32, ptr %i.an, align 8, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.dp = phi i32 [ %.pre922, %bb.r ], [ %i.dc, %bb.p ] ; 2 uses
  %.2312 = phi ptr [ %i.dh, %bb.r ], [ %.1311, %bb.p ] ; 2 uses
  %i.dq = icmp ne i32 %i.dp, 17
  %.not344 = or i1 %i.dq, %.not341831
  br i1 %.not344, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941044, i64 12 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !102
  %i.dt = icmp ult i32 %i.ds, 5
  br i1 %i.dt, label %bb.u, label %.thread987

bb.u:                                             ; preds = %bb.t
  %i.du = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 6 uses
  %i.dv = load i32, ptr %i.dr, align 4, !tbaa !102
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 24
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !121
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr null, ptr %i.dy, align 8, !tbaa !27
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i32 18, ptr %i.dz, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm24CheckChildIntegerMatcherE, i64 16), ptr %i.du, align 8, !tbaa !37
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  store i32 %i.dv, ptr %i.ea, align 4, !tbaa !123
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i64 %i.dx, ptr %i.eb, align 8, !tbaa !124
  %.pre923 = load i32, ptr %i.an, align 8, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.ec = phi i32 [ %.pre923, %bb.u ], [ %i.dp, %bb.s ]
  %.3313 = phi ptr [ %i.du, %bb.u ], [ %.2312, %bb.s ] ; 2 uses
  %i.ed = icmp ne i32 %i.ec, 19
  %.not345 = or i1 %i.ed, %.not341831
  br i1 %.not345, label %.thread987, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941044, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !102
  %i.eg = icmp eq i32 %i.ef, 2
  br i1 %i.eg, label %.thread, label %.thread987

.thread:                                          ; preds = %bb.w
  %i.eh = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #14 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 24
  %.sroa.0.0.copyload.i403 = load ptr, ptr %i.ei, align 8, !tbaa !125
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre.pre932, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr null, ptr %i.ej, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i32 20, ptr %i.ek, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm26CheckChild2CondCodeMatcherE, i64 16), ptr %i.eh, align 8, !tbaa !37
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store ptr %.sroa.0.0.copyload.i403, ptr %i.el, align 8, !tbaa !125
  %.sroa.2.0..sroa_idx.i404 = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i404, align 8, !tbaa !38
  %.pre934 = load ptr, ptr %.sroa.0697.08941044, align 8, !tbaa !27
  br label %bb.x

.thread987:                                       ; preds = %bb.h, %bb.i, %bb.q, %bb.t, %bb.w, %bb.v
  %.3313990 = phi ptr [ %.3313, %bb.v ], [ %.3313, %bb.w ], [ %.2312, %bb.t ], [ %.1311, %bb.q ], [ %.0310, %bb.i ], [ %.0310, %bb.h ] ; 2 uses
  %.not346 = icmp eq ptr %.3313990, null
  %.pre935 = load ptr, ptr %.sroa.0697.08941044, align 8, !tbaa !27 ; 2 uses
  br i1 %.not346, label %.thread724, label %bb.x

.thread724:                                       ; preds = %.thread987.thread, %.thread987
  %.pre9351018 = phi ptr [ %.pre9351017, %.thread987.thread ], [ %.pre935, %.thread987 ]
  %.pr = load i32, ptr %i.am, align 8, !tbaa !30
  br label %bb.y

bb.x:                                             ; preds = %.thread, %.thread987
  %i.em = phi ptr [ %.pre934, %.thread ], [ %.pre935, %.thread987 ] ; 3 uses
  %.4314721 = phi ptr [ %i.eh, %.thread ], [ %.3313990, %.thread987 ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !27
  store ptr %i.eo, ptr %.sroa.0697.08941044, align 8, !tbaa !27
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !37
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(20) %i.em) #15, !inline_history !2
  %i.es = load ptr, ptr %.sroa.0277.08961042, align 8, !tbaa !27
  %i.et = getelementptr inbounds nuw i8, ptr %.4314721, i64 8 ; 2 uses
  store ptr %i.es, ptr %i.et, align 8, !tbaa !27
  store ptr %.4314721, ptr %.sroa.0277.08961042, align 8, !tbaa !27
  br label %select.unfold

bb.y:                                             ; preds = %.thread724, %.critedge362
  %.pre927.pre929.pre.pre.pre = phi ptr [ %.pre9351018, %.thread724 ], [ %.pre927.pre929.pre.pre.pre.pre932, %.critedge362 ] ; 57 uses
  %i.eu = phi i32 [ %.pr, %.thread724 ], [ %i.al, %.critedge362 ] ; 2 uses
  switch i32 %i.eu, label %.critedge368 [
    i32 7, label %.lr.ph.i406
    i32 6, label %.lr.ph.i424
    i32 5, label %.lr.ph.i598
    i32 33, label %.lr.ph.i619
  ]

.lr.ph.i406:                                      ; preds = %bb.y
  %i.ev = icmp eq ptr %.pre927.pre929.pre.pre.pre, null
  %i.ew = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !30
  %i.ey = icmp ne i32 %i.ex, 5
  %.not833 = or i1 %i.ey, %i.ev
  br i1 %.not833, label %.critedge.thread, label %.lr.ph.i414

.lr.ph.i414:                                      ; preds = %.lr.ph.i406
  %i.ez = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre, i64 8
  %i.fa = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre, i64 20
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !102
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 8 uses
  store ptr null, ptr %i.fd, align 8, !tbaa !27
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i32 6, ptr %i.fe, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm18MoveSiblingMatcherE, i64 16), ptr %i.fa, align 8, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  store i32 %i.fc, ptr %i.ff, align 4, !tbaa !127
  %i.fg = load ptr, ptr %.sroa.0277.08961042, align 8, !tbaa !27
  store ptr %i.fg, ptr %i.fd, align 8, !tbaa !27
  store ptr %i.fa, ptr %.sroa.0277.08961042, align 8, !tbaa !27
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !27 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = icmp eq ptr %i.fh, null                 ; 2 uses
  %spec.select.i.i418 = select i1 %i.fj, ptr null, ptr %i.fi ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %spec.select.i.i418, i64 -8
  %i.fl = select i1 %i.fj, ptr null, ptr %i.fk    ; 3 uses
  %.not16.i = icmp eq ptr %i.fd, %spec.select.i.i418
  br i1 %.not16.i, label %select.unfold, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i414
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !27 ; 2 uses
  %.not.i420 = icmp eq ptr %i.fm, %i.fl
  br i1 %.not.i420, label %select.unfold, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.fl, ptr %i.fd, align 8, !tbaa !27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.i = phi ptr [ %i.fm, %bb.aa ], [ %i.fo, %bb.ab ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !27 ; 2 uses
  %i.fp = load ptr, ptr %.0.i, align 8, !tbaa !37
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(20) %.0.i) #15, !inline_history !96
  %.not12.i = icmp eq ptr %i.fo, %i.fl
  br i1 %.not12.i, label %select.unfold, label %bb.ab, !llvm.loop !97

.lr.ph.i424:                                      ; preds = %bb.y
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre, i64 8 ; 7 uses
  %i.ft = icmp eq ptr %.pre927.pre929.pre.pre.pre, null ; 6 uses
  %spec.select.i.i428 = select i1 %i.ft, ptr null, ptr %i.fs ; 4 uses
  %i.fu = getelementptr inbounds i8, ptr %spec.select.i.i428, i64 -8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre, i64 16
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !30 ; 6 uses
  %i.fx = icmp ne i32 %i.fw, 1
  %.not349 = or i1 %i.ft, %i.fx
  br i1 %.not349, label %.thread742, label %.lr.ph.i432

.lr.ph.i432:                                      ; preds = %.lr.ph.i424
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !27 ; 8 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 5 uses
  %i.ga = icmp eq ptr %i.fy, null                 ; 2 uses
  %spec.select.i.i436 = select i1 %i.ga, ptr null, ptr %i.fz ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %spec.select.i.i436, i64 -8 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !30 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 7
  br i1 %i.ge, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %.lr.ph.i432
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0697.08941044, i64 12 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !127
  %i.gh = icmp ult i32 %i.gg, 8
  br i1 %i.gh, label %bb.ad, label %.critedge.thread

bb.ad:                                            ; preds = %bb.ac
  %i.gi = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14 ; 9 uses
  %i.gj = load i32, ptr %i.gf, align 4, !tbaa !127
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre, i64 24
  %i.gl = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre, i64 56
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !107
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  store ptr null, ptr %i.gn, align 8, !tbaa !27
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i32 2, ptr %i.go, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm18RecordChildMatcherE, i64 16), ptr %i.gi, align 8, !tbaa !37
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store i32 %i.gj, ptr %i.gp, align 4, !tbaa !109
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 3 uses
  store ptr %i.gr, ptr %i.gq, align 8, !tbaa !110
  %i.gs = load ptr, ptr %i.gk, align 8, !tbaa !111 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre927.pre929.pre.pre.pre, i64 32
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.gu, ptr %i.b, align 8, !tbaa !38
  %i.gv = icmp ugt i64 %i.gu, 15
  br i1 %i.gv, label %bb.ae, label %._crit_edge.i.i.i438

bb.ae:                                            ; preds = %bb.ad
  %i.gw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gq, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #15 ; 2 uses
  store ptr %i.gw, ptr %i.gq, align 8, !tbaa !111
  %i.gx = load i64, ptr %i.b, align 8, !tbaa !38
  store i64 %i.gx, ptr %i.gr, align 8, !tbaa !113
  br label %._crit_edge.i.i.i438

._crit_edge.i.i.i438:                             ; preds = %bb.ae, %bb.ad
  %i.gy = phi ptr [ %i.gw, %bb.ae ], [ %i.gr, %bb.ad ] ; 2 uses
  switch i64 %i.gu, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i438
  %i.gz = load i8, ptr %i.gs, align 1, !tbaa !113
  store i8 %i.gz, ptr %i.gy, align 1, !tbaa !113
  br label %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439

bb.ag:                                            ; preds = %._crit_edge.i.i.i438
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gy, ptr align 1 %i.gs, i64 %i.gu, i1 false)
  br label %_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439

_ZN4llvm18RecordChildMatcherC2EjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit439: ; preds = %._crit_edge.i.i.i438, %bb.af, %bb.ag
  %i.ha = load i64, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !112
  %i.hc = load ptr, ptr %i.gq, align 8, !tbaa !111
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.ha
  store i8 0, ptr %i.hd, align 1, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.he = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  store i32 %i.gm, ptr %i.he, align 8, !tbaa !114
end_hunk_0
begin_hunk_1_@_ZL13ContractNodesRN4llvm11MatcherListERKNS_18CodeGenDAGPatternsE:.lr.ph.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uu, i64 252
  store i32 6, ptr %i.vl, align 4, !tbaa !71
  %.idx.i.i.i = shl nuw nsw i64 %i.ut, 2
  %i.vm = icmp ugt i32 %i.us, 6
  br i1 %i.vm, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i: ; preds = %.critedge370
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.vi, ptr noundef nonnull %i.vj, i64 noundef %i.ut, i64 noundef 4) #15
  %.pre8.pre.i.i.i.i = load i32, ptr %i.vk, align 8, !tbaa !32
  %i.vn = zext i32 %.pre8.pre.i.i.i.i to i64
  %.pre.i.i = load ptr, ptr %i.vi, align 8, !tbaa !33
  br label %bb.cy

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i: ; preds = %.critedge370
  %.not.i.i.i.i.i = icmp eq i32 %i.us, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm18MorphNodeToMatcherC2ERKNS_18CodeGenInstructionENS_8ArrayRefINS_17ValueTypeByHwModeEEENS4_IjEEbbbbiRKNS_14PatternToMatchE.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i
  %i.vo = phi ptr [ %.pre.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i ], [ %i.vj, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i ]
  %.pre8.i5.i.i.i = phi i64 [ %i.vn, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.thread.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i ]
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %.pre8.i5.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vp, ptr align 4 %i.uq, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.vk, align 8, !tbaa !32
  br label %_ZN4llvm18MorphNodeToMatcherC2ERKNS_18CodeGenInstructionENS_8ArrayRefINS_17ValueTypeByHwModeEEENS4_IjEEbbbbiRKNS_14PatternToMatchE.exit

_ZN4llvm18MorphNodeToMatcherC2ERKNS_18CodeGenInstructionENS_8ArrayRefINS_17ValueTypeByHwModeEEENS4_IjEEbbbbiRKNS_14PatternToMatchE.exit: ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i, %bb.cy
  %i.vq = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.cy ]
  %i.vr = add i32 %i.vq, %i.us
  store i32 %i.vr, ptr %i.vk, align 8, !tbaa !32
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uu, i64 280
  store <4 x i8> %i.ux, ptr %i.vs, align 8, !tbaa !157
  %i.vt = getelementptr inbounds nuw i8, ptr %i.uu, i64 284
  store i32 %i.uz, ptr %i.vt, align 4, !tbaa !158
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm18MorphNodeToMatcherE, i64 16), ptr %i.uu, align 8, !tbaa !37
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uu, i64 288
  store ptr %i.tr, ptr %i.vu, align 8, !tbaa !160
  %i.vv = load ptr, ptr %i.ui, align 8, !tbaa !27 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = icmp eq ptr %i.vv, null                 ; 2 uses
  %spec.select.i.i635 = select i1 %i.vx, ptr null, ptr %i.vw ; 2 uses
  %i.vy = getelementptr inbounds i8, ptr %spec.select.i.i635, i64 -8
  %i.vz = select i1 %i.vx, ptr null, ptr %i.vy    ; 3 uses
  %.not16.i637 = icmp eq ptr %.sroa.0277.08961042, %spec.select.i.i635
  %.pre925 = load ptr, ptr %.sroa.0277.08961042, align 8, !tbaa !27 ; 3 uses
  %.not.i638 = icmp eq ptr %.pre925, %i.vz
  %or.cond = select i1 %.not16.i637, i1 true, i1 %.not.i638
  br i1 %or.cond, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit642, label %bb.cz

bb.cz:                                            ; preds = %_ZN4llvm18MorphNodeToMatcherC2ERKNS_18CodeGenInstructionENS_8ArrayRefINS_17ValueTypeByHwModeEEENS4_IjEEbbbbiRKNS_14PatternToMatchE.exit
  store ptr %i.vz, ptr %.sroa.0277.08961042, align 8, !tbaa !27
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %bb.cz
  %.0.i639 = phi ptr [ %.pre925, %bb.cz ], [ %i.wb, %bb.da ] ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.0.i639, i64 8
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !27 ; 2 uses
  %i.wc = load ptr, ptr %.0.i639, align 8, !tbaa !37
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(20) %.0.i639) #15, !inline_history !96
  %.not12.i640 = icmp eq ptr %i.wb, %i.vz
  br i1 %.not12.i640, label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit642.loopexit, label %bb.da, !llvm.loop !97

_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit642.loopexit: ; preds = %bb.da
  %.pre924 = load ptr, ptr %.sroa.0277.08961042, align 8, !tbaa !27
  br label %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit642

_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit642: ; preds = %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit642.loopexit, %_ZN4llvm18MorphNodeToMatcherC2ERKNS_18CodeGenInstructionENS_8ArrayRefINS_17ValueTypeByHwModeEEENS4_IjEEbbbbiRKNS_14PatternToMatchE.exit
  %i.wf = phi ptr [ %.pre924, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit642.loopexit ], [ %.pre925, %_ZN4llvm18MorphNodeToMatcherC2ERKNS_18CodeGenInstructionENS_8ArrayRefINS_17ValueTypeByHwModeEEENS4_IjEEbbbbiRKNS_14PatternToMatchE.exit ]
  store ptr %i.wf, ptr %i.va, align 8, !tbaa !27
  store ptr %i.uu, ptr %.sroa.0277.08961042, align 8, !tbaa !27
  br label %.thread824

.critedge368:                                     ; preds = %bb.y, %..critedge368thread-pre-split_crit_edge
  %.pre927 = phi ptr [ %.pre927.pre.pre, %..critedge368thread-pre-split_crit_edge ], [ %.pre927.pre929.pre.pre.pre, %bb.y ] ; 7 uses
  %i.wg = phi i32 [ %.pr822.pre, %..critedge368thread-pre-split_crit_edge ], [ %i.eu, %bb.y ]
  %i.wh = icmp eq i32 %i.wg, 1
  br i1 %i.wh, label %.lr.ph.i644, label %.critedge

.lr.ph.i644:                                      ; preds = %.critedge368
  %i.wi = getelementptr inbounds nuw i8, ptr %.pre927, i64 16
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !30
  %i.wk = icmp eq i32 %i.wj, 12
  br i1 %i.wk, label %bb.db, label %.critedge.thread

bb.db:                                            ; preds = %.lr.ph.i644
  %i.wl = getelementptr inbounds nuw i8, ptr %.pre927, i64 8 ; 3 uses
  %i.wm = icmp ne ptr %.sroa.0277.08961042, %.sroa.0697.08941044
  %i.wn = icmp ne ptr %.sroa.0277.08961042, %i.wl
  %or.cond.i = select i1 %i.wm, i1 %i.wn, i1 false
  br i1 %or.cond.i, label %.lr.ph.i652.thread, label %.lr.ph.i652

.lr.ph.i652.thread:                               ; preds = %bb.db
  %i.wo = load ptr, ptr %i.wl, align 8, !tbaa !27
  store ptr %i.wo, ptr %.sroa.0697.08941044, align 8, !tbaa !27
  %i.wp = load ptr, ptr %.sroa.0277.08961042, align 8, !tbaa !27
  store ptr %i.wp, ptr %i.wl, align 8, !tbaa !27
  store ptr %.pre927, ptr %.sroa.0277.08961042, align 8, !tbaa !27
  %i.wq = getelementptr inbounds nuw i8, ptr %.pre927, i64 8
  br label %select.unfold

.lr.ph.i652:                                      ; preds = %bb.db
  %.pre928 = load ptr, ptr %.sroa.0277.08961042, align 8, !tbaa !27 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.pre928, i64 8
  %i.ws = icmp eq ptr %.pre928, null
  br i1 %i.ws, label %.thread824, label %select.unfold, !llvm.loop !100

.critedge.thread:                                 ; preds = %bb.bk, %bb.ac, %bb.ak, %bb.al, %bb.am, %.lr.ph.i448, %bb.az, %bb.ba, %.lr.ph.i476, %bb.bp, %bb.bq, %bb.br, %.lr.ph.i515, %.lr.ph.i644, %.lr.ph.i619, %.lr.ph.i598, %.thread796, %.lr.ph.i406, %.lr.ph.i571, %bb.ci, %bb.ch, %bb.cg, %.lr.ph.i537, %bb.bw, %bb.cb
  %.pre9271007.ph = phi ptr [ %.pre927.pre929.pre.pre.pre, %bb.cb ], [ %.pre927.pre929.pre.pre.pre, %bb.bw ], [ %.pre927.pre929.pre.pre.pre, %.lr.ph.i537 ], [ %.pre927.pre929.pre.pre.pre, %bb.cg ], [ %.pre927.pre929.pre.pre.pre, %bb.ch ], [ %.pre927.pre929.pre.pre.pre, %bb.ci ], [ %.pre927.pre929.pre.pre.pre, %.lr.ph.i571 ], [ %.pre927.pre929.pre.pre.pre, %.lr.ph.i406 ], [ %.pre927.pre929.pre.pre.pre, %.thread796 ], [ %.pre927.pre929.pre.pre.pre, %.lr.ph.i598 ], [ %.pre927.pre929.pre.pre.pre, %.lr.ph.i619 ], [ %.pre927, %.lr.ph.i644 ], [ %.pre927.pre929.pre.pre.pre, %.lr.ph.i515 ], [ %.pre927.pre929.pre.pre.pre, %bb.br ], [ %.pre927.pre929.pre.pre.pre, %bb.bq ], [ %.pre927.pre929.pre.pre.pre, %bb.bp ], [ %.pre927.pre929.pre.pre.pre, %.lr.ph.i476 ], [ %.pre927.pre929.pre.pre.pre, %bb.ba ], [ %.pre927.pre929.pre.pre.pre, %bb.az ], [ %.pre927.pre929.pre.pre.pre, %.lr.ph.i448 ], [ %.pre927.pre929.pre.pre.pre, %bb.am ], [ %.pre927.pre929.pre.pre.pre, %bb.al ], [ %.pre927.pre929.pre.pre.pre, %bb.ak ], [ %.pre927.pre929.pre.pre.pre, %bb.ac ], [ %.pre927.pre929.pre.pre.pre, %bb.bk ]
  %i.wt = getelementptr inbounds nuw i8, ptr %.pre9271007.ph, i64 8
  br label %select.unfold

.critedge:                                        ; preds = %.critedge368
  %i.wu = icmp eq ptr %.pre927, null
  %i.wv = getelementptr inbounds nuw i8, ptr %.pre927, i64 8
  br i1 %i.wu, label %.thread824, label %select.unfold

select.unfold:                                    ; preds = %bb.cq, %bb.ab, %bb.co, %bb.cn, %.critedge.thread, %.lr.ph.i652.thread, %.critedge, %.lr.ph.i652, %.thread819, %.lr.ph.i414, %bb.z, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit568, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit582, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit526, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit472, %.loopexit841, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit445, %.loopexit, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit512, %bb.x
  %.sroa.0697.32 = phi ptr [ %i.su, %.thread819 ], [ %i.wr, %.lr.ph.i652 ], [ %i.wv, %.critedge ], [ %spec.select.i.i505, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit512 ], [ %spec.select.i.i428, %bb.co ], [ %spec.select.i.i541, %.loopexit ], [ %i.et, %bb.x ], [ %spec.select.i.i561, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit568 ], [ %spec.select.i.i575, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit582 ], [ %spec.select.i.i519, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit526 ], [ %spec.select.i.i452, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit472 ], [ %spec.select.i.i480, %.loopexit841 ], [ %spec.select.i.i436, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit445 ], [ %i.fd, %.lr.ph.i414 ], [ %i.fd, %bb.z ], [ %i.wt, %.critedge.thread ], [ %i.wq, %.lr.ph.i652.thread ], [ %i.fd, %bb.ab ], [ %spec.select.i.i428, %bb.cn ], [ %spec.select.i.i428, %bb.cq ] ; 3 uses
  %.sroa.0277.1 = phi ptr [ %.sroa.0277.08961042, %.thread819 ], [ %.sroa.0277.08961042, %.lr.ph.i652 ], [ %.sroa.0697.08941044, %.critedge ], [ %.sroa.0277.08961042, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit512 ], [ %.sroa.0277.08961042, %bb.co ], [ %.sroa.0277.08961042, %.loopexit ], [ %.sroa.0277.08961042, %bb.x ], [ %.sroa.0277.08961042, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit568 ], [ %.sroa.0277.08961042, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit582 ], [ %.sroa.0277.08961042, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit526 ], [ %.sroa.0277.08961042, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit472 ], [ %.sroa.0277.08961042, %.loopexit841 ], [ %.sroa.0277.08961042, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit445 ], [ %.sroa.0277.08961042, %.lr.ph.i414 ], [ %.sroa.0277.08961042, %bb.z ], [ %.sroa.0697.08941044, %.critedge.thread ], [ %.sroa.0277.08961042, %.lr.ph.i652.thread ], [ %.sroa.0277.08961042, %bb.ab ], [ %.sroa.0277.08961042, %bb.cn ], [ %.sroa.0277.08961042, %bb.cq ]
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.0697.32, i64 8 ; 2 uses
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq i32 %i.wx, 0
  br i1 %.not, label %._crit_edge1047, label %.critedge362

.thread824:                                       ; preds = %.critedge, %.lr.ph.i652, %.thread819, %bb.a, %.lr.ph.i, %._crit_edge1047, %_ZN4llvm11MatcherList11erase_afterENS0_13iterator_implILb0EEES2_.exit642
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL11FactorNodesRN4llvm11MatcherListE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0) unnamed_addr #0 {
.lr.ph.i:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.llvm::SmallVector.136", align 8 ; 29 uses
  %2 = alloca %"class.llvm::MatcherList", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.144", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::DenseMap.156", align 8 ; 6 uses
  %5 = alloca %"class.llvm::SmallVector.158", align 8 ; 16 uses
  %6 = alloca %"class.llvm::MVT", align 2         ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.165", align 8 ; 10 uses
  %8 = alloca %"struct.llvm::ValueTypeByHwMode", align 8 ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !27     ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit627, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  %.not876 = icmp eq i32 %i.h, 0
  br i1 %.not876, label %.lr.ph._crit_edge, label %select.unfold

.lr.ph:                                           ; preds = %select.unfold
  %i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.lr.ph._crit_edge.loopexit, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph.preheader, %.lr.ph
  %.pn856877 = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0566.0644 = getelementptr inbounds nuw i8, ptr %.pn856877, i64 8
  %i.k = load ptr, ptr %.sroa.0566.0644, align 8, !tbaa !27 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit627, label %.lr.ph

.lr.ph._crit_edge.loopexit:                       ; preds = %.lr.ph
  %.sroa.0566.0644.le = getelementptr inbounds nuw i8, ptr %.pn856877, i64 8
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph._crit_edge.loopexit, %.lr.ph.preheader
  %.sroa.0217.0645.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0566.0644.le, %.lr.ph._crit_edge.loopexit ] ; 18 uses
  %.pn856.lcssa = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.k, %.lr.ph._crit_edge.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn856.lcssa, i64 24 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pn856.lcssa, i64 32 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = shl nuw nsw i64 %i.q, 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 2 uses
  %.not262681 = icmp eq i32 %i.p, 0
  br i1 %.not262681, label %.thread604, label %.lr.ph685

.lr.ph685:                                        ; preds = %.lr.ph._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph685, %bb.aq
  %.0229683 = phi ptr [ %i.r, %.lr.ph685 ], [ %.1230, %bb.aq ] ; 7 uses
  %.0233682 = phi ptr [ %i.n, %.lr.ph685 ], [ %i.x, %bb.aq ] ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0233682, i64 16 ; 7 uses
  %i.y = icmp eq ptr %i.x, %.0229683
  br i1 %i.y, label %.thread604.loopexit, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i: ; preds = %bb.a
  %i.z = load ptr, ptr %.0233682, align 8, !tbaa !73 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr %i.s, ptr %1, align 8, !tbaa !33
  store i32 8, ptr %i.u, align 4, !tbaa !71
  store ptr null, ptr %i.s, align 8, !tbaa !27
  %i.aa = load ptr, ptr %.0233682, align 8, !tbaa !73 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.lr.ph648, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !27
  store ptr null, ptr %.0233682, align 8, !tbaa !73
  br label %.lr.ph648

.lr.ph648:                                        ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0233682, i64 8 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !74
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !74
  store i32 0, ptr %i.ac, align 8, !tbaa !74
  store i32 1, ptr %i.t, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph648, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit293
  %.0235647 = phi ptr [ %i.x, %.lr.ph648 ], [ %i.an, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit293 ] ; 9 uses
  %i.af = load ptr, ptr %.0235647, align 8, !tbaa !73 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !30
  %i.ai = load i32, ptr %i.ae, align 8, !tbaa !30
  %.not.i285 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not.i285, label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit, label %.critedge

_ZNK4llvm7Matcher7isEqualEPKS0_.exit:             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(20) %i.af, ptr noundef nonnull %i.z) #15, !inline_history !161
  br i1 %i.am, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.0235647, i64 16 ; 3 uses
  %i.ao = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.ar = load i32, ptr %i.u, align 4, !tbaa !71
  %.not.i.i.not.i286 = icmp ult i32 %i.ao, %i.ar
  %.pre3.i287 = load ptr, ptr %1, align 8, !tbaa !33 ; 4 uses
  br i1 %.not.i.i.not.i286, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i291, label %bb.e, !prof !75

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.pre3.i287, i64 %i.ap
  %i.at = icmp uge ptr %.0235647, %.pre3.i287
  %i.au = icmp ult ptr %.0235647, %i.as
  %spec.select.i.i.i.i.i288 = and i1 %i.at, %i.au
  br i1 %spec.select.i.i.i.i.i288, label %bb.f, label %.critedge.i.i.i289, !prof !176

bb.f:                                             ; preds = %bb.e
  %i.av = ptrtoint ptr %.0235647 to i64
  %i.aw = ptrtoint ptr %.pre3.i287 to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.aq)
  %i.ay = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.ax
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i291

.critedge.i.i.i289:                               ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ba = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.s, i64 noundef %i.aq, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #15 ; 7 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !33    ; 8 uses
  %i.bc = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %.idx.i.i = shl nuw nsw i64 %i.bd, 4            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i, label %.lr.ph.i.i.i.i.i.i.i512.preheader

.lr.ph.i.i.i.i.i.i.i512.preheader:                ; preds = %.critedge.i.i.i289
  %i.bf = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.bg = and i64 %i.bf, 16
  %lcmp.mod.not.not = icmp eq i64 %i.bg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i512.prol, label %.lr.ph.i.i.i.i.i.i.i512.prol.loopexit

.lr.ph.i.i.i.i.i.i.i512.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i512.preheader
  store ptr null, ptr %i.ba, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !74
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !73 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.prol, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i512.prol
  store ptr %i.bi, ptr %i.ba, align 8, !tbaa !27
  store ptr null, ptr %i.bb, align 8, !tbaa !73
  br label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.prol

_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.prol: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i512.prol
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !74
  store i32 %i.bl, ptr %i.bh, align 8, !tbaa !74
  store i32 0, ptr %i.bk, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  br label %.lr.ph.i.i.i.i.i.i.i512.prol.loopexit

.lr.ph.i.i.i.i.i.i.i512.prol.loopexit:            ; preds = %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i512.preheader
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i512.preheader ], [ %i.bn, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i.unr = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i512.preheader ], [ %i.bm, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.prol ]
  %i.bo = icmp eq i64 %i.bf, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i512

.lr.ph.i.i.i.i.i.i.i512:                          ; preds = %.lr.ph.i.i.i.i.i.i.i512.prol.loopexit, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.cc, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1 ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i512.prol.loopexit ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.cb, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1 ], [ %.sroa.04.08.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i512.prol.loopexit ] ; 6 uses
  store ptr null, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !74
  %i.bq = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i512
  store ptr %i.bq, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !27
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !73
  br label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i512
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !74
  store i32 %i.bt, ptr %i.bp, align 8, !tbaa !74
  store i32 0, ptr %i.bs, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  store ptr null, ptr %i.bv, align 8, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 24 ; 2 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !74
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !73 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1, label %bb.i

bb.i:                                             ; preds = %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !27
  store ptr null, ptr %i.bu, align 8, !tbaa !73
  br label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1

_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1: ; preds = %bb.i, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !74
  store i32 %i.ca, ptr %i.bw, align 8, !tbaa !74
  store i32 0, ptr %i.bz, align 8, !tbaa !74
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i513.1 = icmp eq ptr %i.cb, %i.be
  br i1 %.not.i.i.i.i.i.i.i513.1, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i512, !llvm.loop !3

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i512.prol.loopexit
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZN4llvm11MatcherListD2Ev.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cd, %_ZN4llvm11MatcherListD2Ev.exit.i.i.i ], [ %i.be, %.lr.ph.i.i.i.preheader ]
  %i.cd = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !73 ; 2 uses
  %.not5.i.i.i.i.i514 = icmp eq ptr %i.ce, null
  br i1 %.not5.i.i.i.i.i514, label %_ZN4llvm11MatcherListD2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i515

.lr.ph.i.i.i.i.i515:                              ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i515
  %.06.i.i.i.i.i516 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i515 ], [ %i.ce, %.lr.ph.i.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i516, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !27 ; 2 uses
  %i.ch = load ptr, ptr %.06.i.i.i.i.i516, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(20) %.06.i.i.i.i.i516) #15, !inline_history !4
  %.not.i.i.i.i.i517 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i517, label %_ZN4llvm11MatcherListD2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i515, !llvm.loop !5

_ZN4llvm11MatcherListD2Ev.exit.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i515, %.lr.ph.i.i.i
  %.not.i.i.i518 = icmp eq ptr %i.bb, %i.cd
  br i1 %.not.i.i.i518, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i: ; preds = %_ZN4llvm11MatcherListD2Ev.exit.i.i.i
  %.pre.i519 = load ptr, ptr %1, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i, %.critedge.i.i.i289
  %i.ck = phi ptr [ %.pre.i519, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i ], [ %i.bb, %.critedge.i.i.i289 ] ; 2 uses
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !38
  %i.cm = icmp eq ptr %i.ck, %i.s
  br i1 %i.cm, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i
  call void @free(ptr noundef %i.ck) #15
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i, %bb.j
  store ptr %i.ba, ptr %1, align 8, !tbaa !33
  %i.cn = trunc i64 %i.cl to i32
  store i32 %i.cn, ptr %i.u, align 4, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i291

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i291: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit, %bb.f, %bb.d
  %i.co = phi ptr [ %.pre3.i287, %bb.d ], [ %i.ay, %bb.f ], [ %i.ba, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit ]
  %.016.i.i.i292 = phi ptr [ %.0235647, %bb.d ], [ %i.az, %bb.f ], [ %.0235647, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit ] ; 3 uses
  %i.cp = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cq ; 3 uses
  store ptr null, ptr %i.cr, align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  store i32 0, ptr %i.cs, align 8, !tbaa !74
  %i.ct = load ptr, ptr %.016.i.i.i292, align 8, !tbaa !73 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit293, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i291
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !27
  store ptr null, ptr %.016.i.i.i292, align 8, !tbaa !73
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit293

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit293: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i291, %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %.016.i.i.i292, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !74
  store i32 %i.cw, ptr %i.cs, align 8, !tbaa !74
  store i32 0, ptr %i.cv, align 8, !tbaa !74
  %i.cx = add i32 %i.cp, 1
  store i32 %i.cx, ptr %i.t, align 8, !tbaa !32
  %.not263 = icmp eq ptr %i.an, %.0229683
  br i1 %.not263, label %.critedge, label %bb.c, !llvm.loop !162

.critedge:                                        ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit293, %bb.c
  %.0235.lcssa.ph = phi ptr [ %.0235647, %_ZNK4llvm7Matcher7isEqualEPKS0_.exit ], [ %i.an, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit293 ], [ %.0235647, %bb.c ] ; 3 uses
  %.not264657 = icmp eq ptr %.0235.lcssa.ph, %.0229683
  br i1 %.not264657, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591, label %.lr.ph661

.lr.ph661:                                        ; preds = %.critedge
  %i.cy = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph661, %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit
  %.1236660 = phi ptr [ %.0235.lcssa.ph, %.lr.ph661 ], [ %.2237, %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit ] ; 27 uses
  %.0239658 = phi ptr [ %i.x, %.lr.ph661 ], [ %.1240, %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit ] ; 16 uses
  %i.cz = load ptr, ptr %.1236660, align 8, !tbaa !73 ; 6 uses
  %i.da = load i32, ptr %i.cy, align 8, !tbaa !30 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !30 ; 2 uses
  %.not.i295 = icmp eq i32 %i.da, %i.dc
  br i1 %.not.i295, label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297, label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread

_ZNK4llvm7Matcher7isEqualEPKS0_.exit297:          ; preds = %bb.l
  %i.dd = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(20) %i.z, ptr noundef nonnull %i.cz) #15, !inline_history !161
  br i1 %i.dg, label %bb.m, label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297._ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread_crit_edge

_ZNK4llvm7Matcher7isEqualEPKS0_.exit297._ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread_crit_edge: ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297
  %.pre = load i32, ptr %i.cy, align 8, !tbaa !30
  %.pre743 = load i32, ptr %i.db, align 8, !tbaa !30
  br label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread

bb.m:                                             ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297
  %i.dh = getelementptr inbounds nuw i8, ptr %.1236660, i64 16
  %i.di = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %i.dl = load i32, ptr %i.u, align 4, !tbaa !71
  %.not.i.i.not.i298 = icmp ult i32 %i.di, %i.dl
  %.pre3.i299 = load ptr, ptr %1, align 8, !tbaa !33 ; 4 uses
  br i1 %.not.i.i.not.i298, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i303, label %bb.n, !prof !75

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %.pre3.i299, i64 %i.dj
  %i.dn = icmp uge ptr %.1236660, %.pre3.i299
  %i.do = icmp ult ptr %.1236660, %i.dm
  %spec.select.i.i.i.i.i300 = and i1 %i.dn, %i.do
  br i1 %spec.select.i.i.i.i.i300, label %bb.o, label %.critedge.i.i.i301, !prof !176

bb.o:                                             ; preds = %bb.n
  %i.dp = ptrtoint ptr %.1236660 to i64
  %i.dq = ptrtoint ptr %.pre3.i299 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.dk)
  %i.ds = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %i.dr
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i303

.critedge.i.i.i301:                               ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.du = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.s, i64 noundef %i.dk, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15 ; 7 uses
  %i.dv = load ptr, ptr %1, align 8, !tbaa !33    ; 8 uses
  %i.dw = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %.idx.i.i520 = shl nuw nsw i64 %i.dx, 4         ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx.i.i520 ; 2 uses
  %.not7.i.i.i.i.i.i.i521 = icmp eq i32 %i.dw, 0
  br i1 %.not7.i.i.i.i.i.i.i521, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i537, label %.lr.ph.i.i.i.i.i.i.i522.preheader

.lr.ph.i.i.i.i.i.i.i522.preheader:                ; preds = %.critedge.i.i.i301
  %i.dz = add nsw i64 %.idx.i.i520, -16           ; 2 uses
  %i.ea = and i64 %i.dz, 16
  %lcmp.mod900.not.not = icmp eq i64 %i.ea, 0
  br i1 %lcmp.mod900.not.not, label %.lr.ph.i.i.i.i.i.i.i522.prol, label %.lr.ph.i.i.i.i.i.i.i522.prol.loopexit

.lr.ph.i.i.i.i.i.i.i522.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i522.preheader
  store ptr null, ptr %i.du, align 8, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  store i32 0, ptr %i.eb, align 8, !tbaa !74
  %i.ec = load ptr, ptr %i.dv, align 8, !tbaa !73 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.prol, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i522.prol
  store ptr %i.ec, ptr %i.du, align 8, !tbaa !27
  store ptr null, ptr %i.dv, align 8, !tbaa !73
  br label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.prol

_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.prol: ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i522.prol
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !74
  store i32 %i.ef, ptr %i.eb, align 8, !tbaa !74
  store i32 0, ptr %i.ee, align 8, !tbaa !74
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  br label %.lr.ph.i.i.i.i.i.i.i522.prol.loopexit

.lr.ph.i.i.i.i.i.i.i522.prol.loopexit:            ; preds = %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.prol, %.lr.ph.i.i.i.i.i.i.i522.preheader
  %.09.i.i.i.i.i.i.i523.unr = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i522.preheader ], [ %i.eh, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.prol ]
  %.sroa.04.08.i.i.i.i.i.i.i524.unr = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i522.preheader ], [ %i.eg, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.prol ]
  %i.ei = icmp eq i64 %i.dz, 0
  br i1 %i.ei, label %.lr.ph.i.i.i527.preheader, label %.lr.ph.i.i.i.i.i.i.i522

.lr.ph.i.i.i.i.i.i.i522:                          ; preds = %.lr.ph.i.i.i.i.i.i.i522.prol.loopexit, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.1
  %.09.i.i.i.i.i.i.i523 = phi ptr [ %i.ew, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.1 ], [ %.09.i.i.i.i.i.i.i523.unr, %.lr.ph.i.i.i.i.i.i.i522.prol.loopexit ] ; 6 uses
  %.sroa.04.08.i.i.i.i.i.i.i524 = phi ptr [ %i.ev, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.1 ], [ %.sroa.04.08.i.i.i.i.i.i.i524.unr, %.lr.ph.i.i.i.i.i.i.i522.prol.loopexit ] ; 6 uses
  store ptr null, ptr %.09.i.i.i.i.i.i.i523, align 8, !tbaa !27
  %i.ej = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i523, i64 8 ; 2 uses
  store i32 0, ptr %i.ej, align 8, !tbaa !74
  %i.ek = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i524, align 8, !tbaa !73 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i522
  store ptr %i.ek, ptr %.09.i.i.i.i.i.i.i523, align 8, !tbaa !27
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i.i524, align 8, !tbaa !73
  br label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525

_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i522
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i524, i64 8 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !74
  store i32 %i.en, ptr %i.ej, align 8, !tbaa !74
  store i32 0, ptr %i.em, align 8, !tbaa !74
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i524, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i523, i64 16 ; 2 uses
  store ptr null, ptr %i.ep, align 8, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i523, i64 24 ; 2 uses
  store i32 0, ptr %i.eq, align 8, !tbaa !74
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !73 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.1, label %bb.r

bb.r:                                             ; preds = %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !27
  store ptr null, ptr %i.eo, align 8, !tbaa !73
  br label %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.1

_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.1: ; preds = %bb.r, %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i524, i64 24 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !74
  store i32 %i.eu, ptr %i.eq, align 8, !tbaa !74
  store i32 0, ptr %i.et, align 8, !tbaa !74
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i524, i64 32 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i523, i64 32
  %.not.i.i.i.i.i.i.i526.1 = icmp eq ptr %i.ev, %i.dy
  br i1 %.not.i.i.i.i.i.i.i526.1, label %.lr.ph.i.i.i527.preheader, label %.lr.ph.i.i.i.i.i.i.i522, !llvm.loop !3

.lr.ph.i.i.i527.preheader:                        ; preds = %_ZSt10_ConstructIN4llvm11MatcherListEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i525.1, %.lr.ph.i.i.i.i.i.i.i522.prol.loopexit
  br label %.lr.ph.i.i.i527

.lr.ph.i.i.i527:                                  ; preds = %.lr.ph.i.i.i527.preheader, %_ZN4llvm11MatcherListD2Ev.exit.i.i.i533
  %.05.i.i.i528 = phi ptr [ %i.ex, %_ZN4llvm11MatcherListD2Ev.exit.i.i.i533 ], [ %i.dy, %.lr.ph.i.i.i527.preheader ]
  %i.ex = getelementptr inbounds i8, ptr %.05.i.i.i528, i64 -16 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !73 ; 2 uses
  %.not5.i.i.i.i.i529 = icmp eq ptr %i.ey, null
  br i1 %.not5.i.i.i.i.i529, label %_ZN4llvm11MatcherListD2Ev.exit.i.i.i533, label %.lr.ph.i.i.i.i.i530

.lr.ph.i.i.i.i.i530:                              ; preds = %.lr.ph.i.i.i527, %.lr.ph.i.i.i.i.i530
  %.06.i.i.i.i.i531 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i530 ], [ %i.ey, %.lr.ph.i.i.i527 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i531, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !27 ; 2 uses
  %i.fb = load ptr, ptr %.06.i.i.i.i.i531, align 8, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(20) %.06.i.i.i.i.i531) #15, !inline_history !4
  %.not.i.i.i.i.i532 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i532, label %_ZN4llvm11MatcherListD2Ev.exit.i.i.i533, label %.lr.ph.i.i.i.i.i530, !llvm.loop !5

_ZN4llvm11MatcherListD2Ev.exit.i.i.i533:          ; preds = %.lr.ph.i.i.i.i.i530, %.lr.ph.i.i.i527
  %.not.i.i.i534 = icmp eq ptr %i.dv, %i.ex
  br i1 %.not.i.i.i534, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i535, label %.lr.ph.i.i.i527, !llvm.loop !6

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i535: ; preds = %_ZN4llvm11MatcherListD2Ev.exit.i.i.i533
  %.pre.i536 = load ptr, ptr %1, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i537

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i537: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i535, %.critedge.i.i.i301
  %i.fe = phi ptr [ %.pre.i536, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.loopexit.i535 ], [ %i.dv, %.critedge.i.i.i301 ] ; 2 uses
  %i.ff = load i64, ptr %i.a, align 8, !tbaa !38
  %i.fg = icmp eq ptr %i.fe, %i.s
  br i1 %i.fg, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit538, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i537
  call void @free(ptr noundef %i.fe) #15
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit538

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit538: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE19moveElementsForGrowEPS1_.exit.i537, %bb.s
  store ptr %i.du, ptr %1, align 8, !tbaa !33
  %i.fh = trunc i64 %i.ff to i32
  store i32 %i.fh, ptr %i.u, align 4, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i303

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i303: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit538, %bb.o, %bb.m
  %i.fi = phi ptr [ %.pre3.i299, %bb.m ], [ %i.ds, %bb.o ], [ %i.du, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit538 ]
  %.016.i.i.i304 = phi ptr [ %.1236660, %bb.m ], [ %i.dt, %bb.o ], [ %.1236660, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm.exit538 ] ; 3 uses
  %i.fj = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.fk ; 3 uses
  store ptr null, ptr %i.fl, align 8, !tbaa !27
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  store i32 0, ptr %i.fm, align 8, !tbaa !74
  %i.fn = load ptr, ptr %.016.i.i.i304, align 8, !tbaa !73 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit305, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i303
  store ptr %i.fn, ptr %i.fl, align 8, !tbaa !27
  store ptr null, ptr %.016.i.i.i304, align 8, !tbaa !73
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit305

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit305: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i303, %bb.t
  %i.fp = getelementptr inbounds nuw i8, ptr %.016.i.i.i304, i64 8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !74
  store i32 %i.fq, ptr %i.fm, align 8, !tbaa !74
  store i32 0, ptr %i.fp, align 8, !tbaa !74
  %i.fr = add i32 %i.fj, 1
  store i32 %i.fr, ptr %i.t, align 8, !tbaa !32
  br label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit, !llvm.loop !163

_ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread:   ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297._ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread_crit_edge, %bb.l
  %i.fs = phi i32 [ %.pre743, %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297._ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread_crit_edge ], [ %i.dc, %bb.l ]
  %i.ft = phi i32 [ %.pre, %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297._ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread_crit_edge ], [ %i.da, %bb.l ]
  %i.fu = icmp slt i32 %i.ft, %i.fs
  br i1 %i.fu, label %.split, label %_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit

.split:                                           ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread
  %i.fv = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call noundef zeroext i1 %i.fx(ptr noundef nonnull align 8 dereferenceable(20) %i.z, ptr noundef nonnull %i.cz) #15, !inline_history !164
  br i1 %i.fy, label %bb.u, label %bb.y

_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit:    ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit297.thread
  %i.fz = load ptr, ptr %i.cz, align 8, !tbaa !37
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = call noundef zeroext i1 %i.gb(ptr noundef nonnull align 8 dereferenceable(20) %i.cz, ptr noundef nonnull align 8 dereferenceable(20) %i.z) #15, !inline_history !164
  br i1 %i.gc, label %bb.u, label %bb.y

bb.u:                                             ; preds = %.split, %_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit
  %.not266 = icmp eq ptr %.1236660, %.0239658
  br i1 %.not266, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gd = load ptr, ptr %.0239658, align 8, !tbaa !73 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.gd, null
  br i1 %.not5.i.i, label %_ZN4llvm11MatcherList5clearEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.gf, %.lr.ph.i.i ], [ %i.gd, %bb.v ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !27 ; 2 uses
  %i.gg = load ptr, ptr %.06.i.i, align 8, !tbaa !37
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(20) %.06.i.i) #15, !inline_history !7
  %.not.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i, label %_ZN4llvm11MatcherList5clearEv.exit.i, label %.lr.ph.i.i, !llvm.loop !5

_ZN4llvm11MatcherList5clearEv.exit.i:             ; preds = %.lr.ph.i.i, %bb.v
  store ptr null, ptr %.0239658, align 8, !tbaa !73
  %i.gj = getelementptr inbounds nuw i8, ptr %.0239658, i64 8 ; 2 uses
  store i32 0, ptr %i.gj, align 8, !tbaa !74
  %i.gk = load ptr, ptr %.1236660, align 8, !tbaa !73 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZN4llvm11MatcherListaSEOS0_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11MatcherList5clearEv.exit.i
  store ptr %i.gk, ptr %.0239658, align 8, !tbaa !27
  store ptr null, ptr %.1236660, align 8, !tbaa !73
  br label %_ZN4llvm11MatcherListaSEOS0_.exit

_ZN4llvm11MatcherListaSEOS0_.exit:                ; preds = %_ZN4llvm11MatcherList5clearEv.exit.i, %bb.w
  %i.gm = getelementptr inbounds nuw i8, ptr %.1236660, i64 8 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !74
  store i32 %i.gn, ptr %i.gj, align 8, !tbaa !74
  store i32 0, ptr %i.gm, align 8, !tbaa !74
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11MatcherListaSEOS0_.exit, %bb.u
  %i.go = getelementptr inbounds nuw i8, ptr %.1236660, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %.0239658, i64 16
  br label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit, !llvm.loop !163

bb.y:                                             ; preds = %.split, %_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit
  %i.gq = load i32, ptr %i.cy, align 8, !tbaa !30 ; 3 uses
  switch i32 %i.gq, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591 [
    i32 8, label %bb.z
    i32 9, label %bb.z
    i32 10, label %bb.z
    i32 11, label %bb.z
    i32 12, label %bb.z
    i32 14, label %bb.z
    i32 16, label %bb.z
    i32 17, label %bb.z
    i32 18, label %bb.z
    i32 19, label %bb.z
    i32 20, label %bb.z
    i32 21, label %bb.z
    i32 23, label %bb.z
    i32 24, label %bb.z
    i32 25, label %bb.z
    i32 26, label %bb.z
    i32 27, label %bb.z
    i32 1, label %bb.z
    i32 2, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  %i.gr = load ptr, ptr %.1236660, align 8, !tbaa !27 ; 5 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591, label %.lr.ph.i308.preheader

.lr.ph.i308.preheader:                            ; preds = %bb.z
  %.sroa.03.013.i652 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !30
  %i.gv = icmp eq i32 %i.gu, %i.gq
  br i1 %i.gv, label %.lr.ph.i308._crit_edge, label %select.unfold.i

.lr.ph.i308:                                      ; preds = %select.unfold.i
  %.sroa.03.013.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !30
  %i.gy = icmp eq i32 %i.gx, %i.gq
  br i1 %i.gy, label %.lr.ph.i308._crit_edge, label %select.unfold.i

select.unfold.i:                                  ; preds = %.lr.ph.i308.preheader, %.lr.ph.i308
  %.sroa.03.013.i653 = phi ptr [ %.sroa.03.013.i, %.lr.ph.i308 ], [ %.sroa.03.013.i652, %.lr.ph.i308.preheader ] ; 2 uses
  %i.gz = load ptr, ptr %.sroa.03.013.i653, align 8, !tbaa !27 ; 4 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591, label %.lr.ph.i308

.lr.ph.i308._crit_edge:                           ; preds = %.lr.ph.i308, %.lr.ph.i308.preheader
  %.pn.i.lcssa = phi ptr [ %i.gr, %.lr.ph.i308.preheader ], [ %i.gz, %.lr.ph.i308 ] ; 11 uses
  %.sroa.07.012.i.lcssa = phi ptr [ %.1236660, %.lr.ph.i308.preheader ], [ %.sroa.03.013.i653, %.lr.ph.i308 ] ; 3 uses
  %.sroa.03.013.i.lcssa = phi ptr [ %.sroa.03.013.i652, %.lr.ph.i308.preheader ], [ %.sroa.03.013.i, %.lr.ph.i308 ]
  %.not265 = icmp eq ptr %.pn.i.lcssa, %i.cz
  br i1 %.not265, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i308._crit_edge
  %i.hb = icmp eq ptr %.pn.i.lcssa, %i.gr
  br i1 %i.hb, label %.loopexit.thread, label %.lr.ph.i310

.loopexit.thread:                                 ; preds = %bb.aa
  %i.hc = getelementptr inbounds nuw i8, ptr %.pn.i.lcssa, i64 16
  br label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313

.lr.ph.i310:                                      ; preds = %bb.aa, %bb.ab
  %.sroa.01.07.i = phi ptr [ %i.hh, %bb.ab ], [ %.sroa.03.013.i652, %bb.aa ] ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %.sroa.01.07.i, i64 -8
  %i.he = call noundef zeroext i1 @_ZNK4llvm7Matcher17canMoveBeforeNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(20) %.pn.i.lcssa, ptr noundef nonnull %i.hd) #15
  br i1 %i.he, label %bb.ab, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591

bb.ab:                                            ; preds = %.lr.ph.i310
  %i.hf = load ptr, ptr %.sroa.01.07.i, align 8, !tbaa !27 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %spec.select.i3.i = select i1 %i.hg, ptr null, ptr %i.hh ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i3.i) ]
  %i.hi = icmp eq ptr %.sroa.03.013.i.lcssa, %spec.select.i3.i
  br i1 %i.hi, label %.loopexit, label %.lr.ph.i310, !llvm.loop !165

.loopexit:                                        ; preds = %bb.ab
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn.i.lcssa, i64 16
  %.pre744 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !30
  %.pre745 = load i32, ptr %i.cy, align 8, !tbaa !30 ; 2 uses
  %i.hj = icmp eq i32 %.pre744, %.pre745
  %i.hk = getelementptr inbounds nuw i8, ptr %.pn.i.lcssa, i64 16 ; 2 uses
  br i1 %i.hj, label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313, label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread

_ZNK4llvm7Matcher7isEqualEPKS0_.exit313:          ; preds = %.loopexit.thread, %.loopexit
  %i.hl = phi ptr [ %i.hc, %.loopexit.thread ], [ %i.hk, %.loopexit ]
  %i.hm = load ptr, ptr %.pn.i.lcssa, align 8, !tbaa !37
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = call noundef zeroext i1 %i.ho(ptr noundef nonnull align 8 dereferenceable(20) %.pn.i.lcssa, ptr noundef nonnull %i.z) #15, !inline_history !161
  br i1 %i.hp, label %.critedge5, label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313._ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread_crit_edge

_ZNK4llvm7Matcher7isEqualEPKS0_.exit313._ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread_crit_edge: ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313
  %.pre746 = load i32, ptr %i.cy, align 8, !tbaa !30
  br label %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread

_ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread:   ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313._ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread_crit_edge, %.loopexit
  %i.hq = phi ptr [ %i.hl, %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313._ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread_crit_edge ], [ %i.hk, %.loopexit ]
  %i.hr = phi i32 [ %.pre746, %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313._ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread_crit_edge ], [ %.pre745, %.loopexit ]
  %i.hs = load i32, ptr %i.hq, align 8, !tbaa !30
  %i.ht = icmp slt i32 %i.hs, %i.hr
  br i1 %i.ht, label %.split587, label %_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit315

.split587:                                        ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread
  %i.hu = load ptr, ptr %.pn.i.lcssa, align 8, !tbaa !37
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = call noundef zeroext i1 %i.hw(ptr noundef nonnull align 8 dereferenceable(20) %.pn.i.lcssa, ptr noundef nonnull %i.z) #15, !inline_history !164
  br i1 %i.hx, label %.critedge5, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591

_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit315: ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313.thread
  %i.hy = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = call noundef zeroext i1 %i.ia(ptr noundef nonnull align 8 dereferenceable(20) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %.pn.i.lcssa) #15, !inline_history !164
  br i1 %i.ib, label %.critedge5, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591

.critedge5:                                       ; preds = %_ZNK4llvm7Matcher7isEqualEPKS0_.exit313, %.split587, %_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit315
  %i.ic = load ptr, ptr %.sroa.07.012.i.lcssa, align 8, !tbaa !27 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 3 uses
  %i.ie = icmp eq ptr %i.ic, null
  %spec.select.i.i.i = select i1 %i.ie, ptr null, ptr %i.id ; 2 uses
  %i.if = icmp ne ptr %.1236660, %.sroa.07.012.i.lcssa
  %i.ig = icmp ne ptr %.1236660, %spec.select.i.i.i
  %or.cond.i = select i1 %i.if, i1 %i.ig, i1 false
  br i1 %or.cond.i, label %bb.ac, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit, !llvm.loop !163

bb.ac:                                            ; preds = %.critedge5
  %i.ih = load ptr, ptr %i.id, align 8, !tbaa !27
  store ptr %i.ih, ptr %.sroa.07.012.i.lcssa, align 8, !tbaa !27
  %i.ii = load ptr, ptr %.1236660, align 8, !tbaa !27
  store ptr %i.ii, ptr %i.id, align 8, !tbaa !27
  %i.ij = getelementptr inbounds i8, ptr %spec.select.i.i.i, i64 -8
  store ptr %i.ij, ptr %.1236660, align 8, !tbaa !27
  br label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit, !llvm.loop !163

_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit: ; preds = %.critedge5, %bb.ac, %bb.x, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit305
  %.1240 = phi ptr [ %.0239658, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit305 ], [ %i.gp, %bb.x ], [ %.0239658, %.critedge5 ], [ %.0239658, %bb.ac ] ; 2 uses
  %.2237 = phi ptr [ %i.dh, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit305 ], [ %i.go, %bb.x ], [ %.1236660, %.critedge5 ], [ %.1236660, %bb.ac ] ; 3 uses
  %.not264 = icmp eq ptr %.2237, %.0229683
  br i1 %.not264, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591, label %bb.l

_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591: ; preds = %bb.z, %.lr.ph.i308._crit_edge, %_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit315, %.split587, %bb.y, %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit, %select.unfold.i, %.lr.ph.i310, %.critedge
  %.0239638 = phi ptr [ %.0239658, %select.unfold.i ], [ %.0239658, %.lr.ph.i310 ], [ %i.x, %.critedge ], [ %.0239658, %bb.z ], [ %.0239658, %.lr.ph.i308._crit_edge ], [ %.0239658, %_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit315 ], [ %.0239658, %.split587 ], [ %.0239658, %bb.y ], [ %.1240, %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit ] ; 3 uses
  %.1236635 = phi ptr [ %.1236660, %select.unfold.i ], [ %.1236660, %.lr.ph.i310 ], [ %.0235.lcssa.ph, %.critedge ], [ %.1236660, %bb.z ], [ %.1236660, %.lr.ph.i308._crit_edge ], [ %.1236660, %_ZNK4llvm7Matcher15isContradictoryEPKS0_.exit315 ], [ %.1236660, %.split587 ], [ %.1236660, %bb.y ], [ %.2237, %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit ] ; 3 uses
  %.not268 = icmp eq ptr %.1236635, %.0239638
  br i1 %.not268, label %_ZSt4moveIPN4llvm11MatcherListES2_ET0_T_S4_S3_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591
  %i.ik = ptrtoint ptr %.0229683 to i64
  %i.il = ptrtoint ptr %.1236635 to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = ashr exact i64 %i.im, 4                 ; 2 uses
  %i.io = icmp sgt i64 %i.in, 0
  br i1 %i.io, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm11MatcherListES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad, %_ZN4llvm11MatcherListaSEOS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.jc, %_ZN4llvm11MatcherListaSEOS0_.exit.i.i.i.i.i ], [ %i.in, %bb.ad ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.jb, %_ZN4llvm11MatcherListaSEOS0_.exit.i.i.i.i.i ], [ %.0239638, %bb.ad ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ja, %_ZN4llvm11MatcherListaSEOS0_.exit.i.i.i.i.i ], [ %.1236635, %bb.ad ] ; 4 uses
  %i.ip = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN4llvm11MatcherList5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ip, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !27 ; 2 uses
  %i.is = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !37
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(20) %.06.i.i.i.i.i.i.i) #15, !inline_history !8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm11MatcherList5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !5

_ZN4llvm11MatcherList5clearEv.exit.i.i.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  store ptr null, ptr %.0811.i.i.i.i.i, align 8, !tbaa !73
  %i.iv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  store i32 0, ptr %i.iv, align 8, !tbaa !74
  %i.iw = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %_ZN4llvm11MatcherListaSEOS0_.exit.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11MatcherList5clearEv.exit.i.i.i.i.i.i
  store ptr %i.iw, ptr %.0811.i.i.i.i.i, align 8, !tbaa !27
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !73
  br label %_ZN4llvm11MatcherListaSEOS0_.exit.i.i.i.i.i

_ZN4llvm11MatcherListaSEOS0_.exit.i.i.i.i.i:      ; preds = %bb.ae, %_ZN4llvm11MatcherList5clearEv.exit.i.i.i.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !74
  store i32 %i.iz, ptr %i.iv, align 8, !tbaa !74
  store i32 0, ptr %i.iy, align 8, !tbaa !74
  %i.ja = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.jc = add nsw i64 %.012.i.i.i.i.i, -1
  %i.jd = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.jd, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm11MatcherListES2_ET0_T_S4_S3_.exit, !llvm.loop !9

_ZSt4moveIPN4llvm11MatcherListES2_ET0_T_S4_S3_.exit: ; preds = %_ZN4llvm11MatcherListaSEOS0_.exit.i.i.i.i.i, %bb.ad, %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591
  %.1230 = phi ptr [ %.0229683, %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit.thread591 ], [ %.0239638, %bb.ad ], [ %i.jb, %_ZN4llvm11MatcherListaSEOS0_.exit.i.i.i.i.i ] ; 2 uses
  %i.je = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %i.jf = icmp eq i32 %i.je, 1
  %i.jg = load ptr, ptr %1, align 8, !tbaa !33    ; 12 uses
  br i1 %i.jf, label %bb.af, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit326

bb.af:                                            ; preds = %_ZSt4moveIPN4llvm11MatcherListES2_ET0_T_S4_S3_.exit
  %i.jh = load ptr, ptr %.0233682, align 8, !tbaa !73 ; 2 uses
  %.not5.i.i317 = icmp eq ptr %i.jh, null
  br i1 %.not5.i.i317, label %_ZN4llvm11MatcherList5clearEv.exit.i321, label %.lr.ph.i.i318

.lr.ph.i.i318:                                    ; preds = %bb.af, %.lr.ph.i.i318
  %.06.i.i319 = phi ptr [ %i.jj, %.lr.ph.i.i318 ], [ %i.jh, %bb.af ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.06.i.i319, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !27 ; 2 uses
  %i.jk = load ptr, ptr %.06.i.i319, align 8, !tbaa !37
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(20) %.06.i.i319) #15, !inline_history !7
  %.not.i.i320 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i320, label %_ZN4llvm11MatcherList5clearEv.exit.i321, label %.lr.ph.i.i318, !llvm.loop !5

_ZN4llvm11MatcherList5clearEv.exit.i321:          ; preds = %.lr.ph.i.i318, %bb.af
  store ptr null, ptr %.0233682, align 8, !tbaa !73
  store i32 0, ptr %i.ac, align 8, !tbaa !74
  %i.jn = load ptr, ptr %i.jg, align 8, !tbaa !73 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZN4llvm11MatcherListaSEOS0_.exit322, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11MatcherList5clearEv.exit.i321
  store ptr %i.jn, ptr %.0233682, align 8, !tbaa !27
  store ptr null, ptr %i.jg, align 8, !tbaa !73
  br label %_ZN4llvm11MatcherListaSEOS0_.exit322

_ZN4llvm11MatcherListaSEOS0_.exit322:             ; preds = %_ZN4llvm11MatcherList5clearEv.exit.i321, %bb.ag
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !74
  store i32 %i.jq, ptr %i.ac, align 8, !tbaa !74
  store i32 0, ptr %i.jp, align 8, !tbaa !74
  br label %bb.ao

_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit326: ; preds = %_ZSt4moveIPN4llvm11MatcherListES2_ET0_T_S4_S3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr null, ptr %2, align 8, !tbaa !27
  store i32 0, ptr %i.w, align 8, !tbaa !74
  %i.jr = load ptr, ptr %i.jg, align 8, !tbaa !27 ; 2 uses
  %i.js = icmp eq ptr %i.jr, null
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 3 uses
  %spec.select.i.i.i324 = select i1 %i.js, ptr null, ptr %i.jt
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !27
  store ptr %i.ju, ptr %i.jg, align 8, !tbaa !27
  %i.jv = load ptr, ptr %2, align 8, !tbaa !27
  store ptr %i.jv, ptr %i.jt, align 8, !tbaa !27
  %i.jw = getelementptr inbounds i8, ptr %spec.select.i.i.i324, i64 -8
  store ptr %i.jw, ptr %2, align 8, !tbaa !27
  %.pre747 = load ptr, ptr %i.jg, align 8, !tbaa !73 ; 5 uses
  %i.jx = icmp eq ptr %.pre747, null
  br i1 %i.jx, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit326
  %i.jy = getelementptr inbounds nuw i8, ptr %.pre747, i64 16
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !30
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %_ZN4llvm11MatcherListC2EOS0_.exit, label %.thread

_ZN4llvm11MatcherListC2EOS0_.exit:                ; preds = %bb.ah
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.pre747, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !33 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr null, ptr %i.jg, align 8, !tbaa !73
  store i32 0, ptr %i.kb, align 8, !tbaa !74
  %i.kf = load ptr, ptr %i.kd, align 8, !tbaa !73 ; 2 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %_ZN4llvm11MatcherListaSEOS0_.exit335, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm11MatcherListC2EOS0_.exit
  store ptr %i.kf, ptr %i.jg, align 8, !tbaa !27
  store ptr null, ptr %i.kd, align 8, !tbaa !73
  br label %_ZN4llvm11MatcherListaSEOS0_.exit335

_ZN4llvm11MatcherListaSEOS0_.exit335:             ; preds = %_ZN4llvm11MatcherListC2EOS0_.exit, %bb.ai
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !74
  store i32 %i.ki, ptr %i.kb, align 8, !tbaa !74
  store i32 0, ptr %i.kh, align 8, !tbaa !74
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %.pre747, i64 32 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !32
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.kd, i64 %i.km
  %i.ko = call noundef ptr @_ZN4llvm15SmallVectorImplINS_11MatcherListEE6insertISt13move_iteratorIPS1_EvEES5_S5_T_S7_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ke, ptr nonnull %i.kj, ptr nonnull %i.kn)
  %i.kp = load i32, ptr %i.kk, align 8, !tbaa !32
  br label %.lr.ph.i.i337

.lr.ph.i.i337:                                    ; preds = %_ZN4llvm11MatcherListaSEOS0_.exit335, %.lr.ph.i.i337
  %.06.i.i338 = phi ptr [ %i.kr, %.lr.ph.i.i337 ], [ %.pre747, %_ZN4llvm11MatcherListaSEOS0_.exit335 ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.06.i.i338, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !27 ; 2 uses
  %i.ks = load ptr, ptr %.06.i.i338, align 8, !tbaa !37
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8
  call void %i.ku(ptr noundef nonnull align 8 dereferenceable(20) %.06.i.i338) #15, !inline_history !166
  %.not.i.i339 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i339, label %_ZN4llvm11MatcherListD2Ev.exit.loopexit, label %.lr.ph.i.i337, !llvm.loop !5

.thread:                                          ; preds = %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_S2_.exit326, %bb.ah
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  br label %_ZN4llvm11MatcherListD2Ev.exit

_ZN4llvm11MatcherListD2Ev.exit.loopexit:          ; preds = %.lr.ph.i.i337
  %i.kw = zext i32 %i.kp to i64
  %i.kx = getelementptr [16 x i8], ptr %i.ko, i64 %i.kw
  %i.ky = getelementptr i8, ptr %i.kx, i64 -16
  %.pre748 = load ptr, ptr %1, align 8, !tbaa !33
end_hunk_1
begin_hunk_2_@_ZL11FactorNodesRN4llvm11MatcherListE:.lr.ph.i
  %.0252690 = phi ptr [ %i.qw, %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416 ], [ %i.ok, %bb.ay ] ; 3 uses
  %i.pp = trunc nuw i8 %.0247692 to i1
  br i1 %i.pp, label %bb.az, label %.critedge7

bb.az:                                            ; preds = %.lr.ph694.a
  %i.pq = load ptr, ptr %.0252690, align 8, !tbaa !73
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !30
  %i.pt = icmp eq i32 %i.ps, 12
  %spec.select = zext i1 %i.pt to i8
  br label %.critedge7

.critedge7:                                       ; preds = %.lr.ph694.a, %bb.az
  %.1248 = phi i8 [ %spec.select, %bb.az ], [ 0, %.lr.ph694.a ] ; 2 uses
  %i.pu = trunc nuw i8 %.0249691 to i1
  br i1 %i.pu, label %bb.ba, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416

bb.ba:                                            ; preds = %.critedge7
  %i.pv = load ptr, ptr %.0252690, align 8, !tbaa !27 ; 4 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416, label %.lr.ph.i401

.lr.ph.i401:                                      ; preds = %bb.ba, %select.unfold.i405
  %.pn.i402 = phi ptr [ %i.qa, %select.unfold.i405 ], [ %i.pv, %bb.ba ] ; 7 uses
  %.sroa.03.013.i404 = getelementptr inbounds nuw i8, ptr %.pn.i402, i64 8 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.pn.i402, i64 16
  %i.py = load i32, ptr %i.px, align 8, !tbaa !30
  %i.pz = icmp eq i32 %i.py, 14
  br i1 %i.pz, label %bb.bb, label %select.unfold.i405

select.unfold.i405:                               ; preds = %.lr.ph.i401
  %i.qa = load ptr, ptr %.sroa.03.013.i404, align 8, !tbaa !27 ; 2 uses
  %i.qb = icmp eq ptr %i.qa, null
  br i1 %i.qb, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416, label %.lr.ph.i401

bb.bb:                                            ; preds = %.lr.ph.i401
  %i.qc = getelementptr inbounds nuw i8, ptr %.pn.i402, i64 64
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !57
  %i.qe = icmp eq i64 %i.qd, 1
  br i1 %i.qe, label %_ZNK4llvm12InfoByHwModeINS_3MVTEE8isSimpleEv.exit, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416

_ZNK4llvm12InfoByHwModeINS_3MVTEE8isSimpleEv.exit: ; preds = %bb.bb
  %i.qf = getelementptr inbounds nuw i8, ptr %.pn.i402, i64 48
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !55 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 32
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !79
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %bb.bc, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416

bb.bc:                                            ; preds = %_ZNK4llvm12InfoByHwModeINS_3MVTEE8isSimpleEv.exit
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 36
  %i.ql = load i16, ptr %i.qk, align 4, !tbaa !177
  switch i16 %i.ql, label %bb.bd [
    i16 271, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416
    i16 264, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.qm = getelementptr inbounds nuw i8, ptr %.pn.i402, i64 88
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !52
  %.not281 = icmp eq i32 %i.qn, 0
  br i1 %.not281, label %bb.be, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416

bb.be:                                            ; preds = %bb.bd
  %i.qo = icmp eq ptr %.pn.i402, %i.pv
  br i1 %i.qo, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416, label %.lr.ph.i412

.lr.ph.i412:                                      ; preds = %bb.be
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %.lr.ph.i412
  %.sroa.01.07.i413 = phi ptr [ %i.qp, %.lr.ph.i412 ], [ %i.qu, %bb.bg ] ; 2 uses
  %i.qq = getelementptr inbounds i8, ptr %.sroa.01.07.i413, i64 -8
  %i.qr = call noundef zeroext i1 @_ZNK4llvm7Matcher17canMoveBeforeNodeEPKS0_(ptr noundef nonnull align 8 dereferenceable(20) %.pn.i402, ptr noundef nonnull %i.qq) #15
  br i1 %i.qr, label %bb.bg, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416

bb.bg:                                            ; preds = %bb.bf
  %i.qs = load ptr, ptr %.sroa.01.07.i413, align 8, !tbaa !27 ; 2 uses
  %i.qt = icmp eq ptr %i.qs, null
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 2 uses
  %spec.select.i3.i415 = select i1 %i.qt, ptr null, ptr %i.qu ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i3.i415) ]
  %i.qv = icmp eq ptr %.sroa.03.013.i404, %spec.select.i3.i415
  br i1 %i.qv, label %_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416, label %bb.bf, !llvm.loop !165

_ZL14canMoveToFrontRKN4llvm11MatcherListENS0_13iterator_implILb1EEE.exit416: ; preds = %select.unfold.i405, %bb.bg, %bb.bf, %bb.bc, %bb.bc, %bb.be, %bb.bb, %bb.ba, %bb.bd, %_ZNK4llvm12InfoByHwModeINS_3MVTEE8isSimpleEv.exit, %.critedge7
  %.2251 = phi i8 [ 0, %.critedge7 ], [ 0, %bb.bb ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bc ], [ 0, %_ZNK4llvm12InfoByHwModeINS_3MVTEE8isSimpleEv.exit ], [ 1, %bb.be ], [ 0, %bb.ba ], [ 0, %bb.bf ], [ 1, %bb.bg ], [ 0, %select.unfold.i405 ] ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.0252690, i64 16 ; 2 uses
  %.not272 = icmp eq ptr %i.qw, %i.pn
  br i1 %.not272, label %._crit_edge695.a, label %.lr.ph694.a

._crit_edge695.thread:                            ; preds = %bb.ay, %._crit_edge695.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.qx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.qx, ptr %3, align 8, !tbaa !33
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.qy, align 8, !tbaa !32
  %i.qz = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 8, ptr %i.qz, align 4, !tbaa !71
  %i.ra = load ptr, ptr %i.m, align 8, !tbaa !33  ; 2 uses
  %i.rb = load i32, ptr %i.o, align 8, !tbaa !32  ; 2 uses
  %i.rc = zext i32 %i.rb to i64
  %.idx723 = shl nuw nsw i64 %i.rc, 4
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.idx723
  %.not279714 = icmp eq i32 %i.rb, 0
  br i1 %.not279714, label %._crit_edge718, label %.lr.ph717

._crit_edge718:                                   ; preds = %_ZN4llvm15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEE12emplace_backIJS4_S5_EEERS6_DpOT_.exit, %._crit_edge695.thread
  %i.re = load ptr, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !27
  store ptr %i.rg, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  %i.rh = load ptr, ptr %i.re, align 8, !tbaa !37
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(20) %i.re) #15, !inline_history !2
  %i.rk = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #14 ; 9 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 3 uses
  store ptr null, ptr %i.rl, align 8, !tbaa !27
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  store i32 13, ptr %i.rm, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm19SwitchOpcodeMatcherE, i64 16), ptr %i.rk, align 8, !tbaa !37
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 24 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 40
  store ptr %i.ro, ptr %i.rn, align 8, !tbaa !33
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  store i32 0, ptr %i.rp, align 8, !tbaa !32
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 36
  store i32 8, ptr %i.rq, align 4, !tbaa !71
  %i.rr = load i32, ptr %i.qy, align 8, !tbaa !32
  %.not.i.i.i418 = icmp eq i32 %i.rr, 0
  br i1 %.not.i.i.i418, label %_ZN4llvm19SwitchOpcodeMatcherC2EONS_15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEE.exit.thread, label %_ZN4llvm19SwitchOpcodeMatcherC2EONS_15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEE.exit

_ZN4llvm19SwitchOpcodeMatcherC2EONS_15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEE.exit.thread: ; preds = %._crit_edge718
  %i.rs = load ptr, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  store ptr %i.rs, ptr %i.rl, align 8, !tbaa !27
  store ptr %i.rk, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  %i.rt = load ptr, ptr %3, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm19SwitchOpcodeMatcherC2EONS_15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEE.exit: ; preds = %._crit_edge718
  %i.ru = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(208) %i.rn, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %.pr616 = load i32, ptr %i.qy, align 8, !tbaa !32 ; 2 uses
  %i.rv = load ptr, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  store ptr %i.rv, ptr %i.rl, align 8, !tbaa !27
  store ptr %i.rk, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  %i.rw = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not4.i.i419 = icmp eq i32 %.pr616, 0
  br i1 %.not4.i.i419, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i420

.lr.ph.i.preheader.i420:                          ; preds = %_ZN4llvm19SwitchOpcodeMatcherC2EONS_15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEE.exit
  %i.rx = zext i32 %.pr616 to i64
  %.idx.i421 = mul nuw nsw i64 %i.rx, 24
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 %.idx.i421
  br label %.lr.ph.i.i422

.lr.ph.i.i422:                                    ; preds = %_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEED2Ev.exit.i.i, %.lr.ph.i.preheader.i420
  %.05.i.i423 = phi ptr [ %i.rz, %_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEED2Ev.exit.i.i ], [ %i.ry, %.lr.ph.i.preheader.i420 ] ; 2 uses
  %i.rz = getelementptr inbounds i8, ptr %.05.i.i423, i64 -24 ; 2 uses
  %i.sa = getelementptr inbounds i8, ptr %.05.i.i423, i64 -16
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !73 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.sb, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i424

.lr.ph.i.i.i.i.i424:                              ; preds = %.lr.ph.i.i422, %.lr.ph.i.i.i.i.i424
  %.06.i.i.i.i.i = phi ptr [ %i.sd, %.lr.ph.i.i.i.i.i424 ], [ %i.sb, %.lr.ph.i.i422 ] ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !27 ; 2 uses
  %i.se = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !37
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8
  call void %i.sg(ptr noundef nonnull align 8 dereferenceable(20) %.06.i.i.i.i.i) #15, !inline_history !173
  %.not.i.i.i.i.i = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEED2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i424, !llvm.loop !5

_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i424, %.lr.ph.i.i422
  %.not.i.i425 = icmp eq ptr %i.rw, %i.rz
  br i1 %.not.i.i425, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i422, !llvm.loop !10

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEED2Ev.exit.i.i
  %.pre.i426 = load ptr, ptr %3, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm19SwitchOpcodeMatcherC2EONS_15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEE.exit.thread, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZN4llvm19SwitchOpcodeMatcherC2EONS_15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEE.exit
  %i.sh = phi ptr [ %.pre.i426, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.rw, %_ZN4llvm19SwitchOpcodeMatcherC2EONS_15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEE.exit ], [ %i.rt, %_ZN4llvm19SwitchOpcodeMatcherC2EONS_15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEEE.exit.thread ] ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.qx
  br i1 %i.si, label %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.i
  call void @free(ptr noundef %i.sh) #15
  br label %_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapINS_17EmptyStringSetTagENS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.bh, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE13destroy_rangeEPS6_S8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.loopexit627

.lr.ph717:                                        ; preds = %._crit_edge695.thread, %_ZN4llvm15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEE12emplace_backIJS4_S5_EEERS6_DpOT_.exit
  %.0253715 = phi ptr [ %i.tc, %_ZN4llvm15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEE12emplace_backIJS4_S5_EEERS6_DpOT_.exit ], [ %i.ra, %._crit_edge695.thread ] ; 7 uses
  %i.sj = load ptr, ptr %.0253715, align 8, !tbaa !73 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  %9 = load ptr, ptr %i.sk, align 8, !tbaa !179, !nonnull !69, !align !70 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %10, align 8, !tbaa !27
  store ptr %i.sl, ptr %.0253715, align 8, !tbaa !27
  %i.sm = load ptr, ptr %i.sj, align 8, !tbaa !37
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.so = load ptr, ptr %i.sn, align 8
  call void %i.so(ptr noundef nonnull align 8 dereferenceable(20) %i.sj) #15, !inline_history !2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr %9, ptr %i.c, align 8, !tbaa !81
  %i.sp = load i32, ptr %i.qy, align 8, !tbaa !32 ; 3 uses
  %i.sq = load i32, ptr %i.qz, align 4, !tbaa !71
  %.not.i433 = icmp ult i32 %i.sp, %i.sq
  br i1 %.not.i433, label %bb.bj, label %bb.bi, !prof !75

bb.bi:                                            ; preds = %.lr.ph717
  %i.sr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEELb0EE18growAndEmplaceBackIJS4_S5_EEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %.0253715) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEE12emplace_backIJS4_S5_EEERS6_DpOT_.exit

bb.bj:                                            ; preds = %.lr.ph717
  %i.ss = zext i32 %i.sp to i64
  %i.st = load ptr, ptr %3, align 8, !tbaa !33
  %i.su = getelementptr inbounds nuw [24 x i8], ptr %i.st, i64 %i.ss ; 3 uses
  store ptr %9, ptr %i.su, align 8, !tbaa !83
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  store ptr null, ptr %i.sv, align 8, !tbaa !27
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16 ; 2 uses
  store i32 0, ptr %i.sw, align 8, !tbaa !74
  %i.sx = load ptr, ptr %.0253715, align 8, !tbaa !73 ; 2 uses
  %i.sy = icmp eq ptr %i.sx, null
  br i1 %i.sy, label %_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEEC2IS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.sx, ptr %i.sv, align 8, !tbaa !27
  store ptr null, ptr %.0253715, align 8, !tbaa !73
  br label %_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEEC2IS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit.i

_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEEC2IS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit.i: ; preds = %bb.bk, %bb.bj
  %i.sz = getelementptr inbounds nuw i8, ptr %.0253715, i64 8 ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !74
  store i32 %i.ta, ptr %i.sw, align 8, !tbaa !74
  store i32 0, ptr %i.sz, align 8, !tbaa !74
  %i.tb = add nuw i32 %i.sp, 1
  store i32 %i.tb, ptr %i.qy, align 8, !tbaa !32
  br label %_ZN4llvm15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEE12emplace_backIJS4_S5_EEERS6_DpOT_.exit

_ZN4llvm15SmallVectorImplISt4pairIPKNS_10SDNodeInfoENS_11MatcherListEEE12emplace_backIJS4_S5_EEERS6_DpOT_.exit: ; preds = %bb.bi, %_ZNSt4pairIPKN4llvm10SDNodeInfoENS0_11MatcherListEEC2IS3_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.tc = getelementptr inbounds nuw i8, ptr %.0253715, i64 16 ; 2 uses
  %.not279 = icmp eq ptr %i.tc, %i.rd
  br i1 %.not279, label %._crit_edge718, label %.lr.ph717

bb.bl:                                            ; preds = %._crit_edge695.a
  %i.td = trunc nuw i8 %.2251 to i1
  br i1 %i.td, label %bb.bm, label %.loopexit627

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.te = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.te, ptr %5, align 8, !tbaa !33
  %i.tf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.tf, align 8, !tbaa !32
  %i.tg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 8, ptr %i.tg, align 4, !tbaa !71
  %i.th = load ptr, ptr %i.m, align 8, !tbaa !33  ; 2 uses
  %i.ti = load i32, ptr %i.o, align 8, !tbaa !32  ; 2 uses
  %i.tj = zext i32 %i.ti to i64
  %.idx721 = shl nuw nsw i64 %i.tj, 4
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 %.idx721
  %.not273702 = icmp eq i32 %i.ti, 0
  br i1 %.not273702, label %._crit_edge707, label %.lr.ph706

.lr.ph706:                                        ; preds = %bb.bm
  %i.tl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.to = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  br label %bb.bn

._crit_edge707:                                   ; preds = %_ZN4llvm11MatcherListD2Ev.exit483, %bb.bm
  %i.tp = load ptr, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !27
  store ptr %i.tr, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  %i.ts = load ptr, ptr %i.tp, align 8, !tbaa !37
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(20) %i.tp) #15, !inline_history !2
  %i.tv = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.tw = load i32, ptr %i.tf, align 8, !tbaa !32 ; 2 uses
  %i.tx = zext i32 %i.tw to i64
  %.idx722 = mul nuw nsw i64 %i.tx, 24
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 %.idx722
  %.not274708 = icmp eq i32 %i.tw, 0
  br i1 %.not274708, label %._crit_edge712.thread, label %.lr.ph711

bb.bn:                                            ; preds = %.lr.ph706, %_ZN4llvm11MatcherListD2Ev.exit483
  %.0246703 = phi ptr [ %i.th, %.lr.ph706 ], [ %i.zb, %_ZN4llvm11MatcherListD2Ev.exit483 ] ; 15 uses
  %i.tz = load ptr, ptr %.0246703, align 8, !tbaa !27, !nonnull !69, !noundef !69 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !30
  %i.uc = icmp eq i32 %i.ub, 14
  br i1 %i.uc, label %_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446, label %select.unfold.i441

select.unfold.i441:                               ; preds = %bb.bn, %select.unfold.i441
  %.pn = phi ptr [ %i.ud, %select.unfold.i441 ], [ %i.tz, %bb.bn ] ; 2 uses
  %.sroa.03.013.i440699 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.ud = load ptr, ptr %.sroa.03.013.i440699, align 8, !tbaa !27, !nonnull !69, !noundef !69 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !30
  %i.ug = icmp eq i32 %i.uf, 14
  br i1 %i.ug, label %_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446.loopexit, label %select.unfold.i441

_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446.loopexit: ; preds = %select.unfold.i441
  %.sroa.03.013.i440699.le = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  br label %_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446

_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446: ; preds = %_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446.loopexit, %bb.bn
  %.sroa.07.012.i439.lcssa = phi ptr [ %.0246703, %bb.bn ], [ %.sroa.03.013.i440699.le, %_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446.loopexit ]
  %i.uh = phi ptr [ %i.tz, %bb.bn ], [ %i.ud, %_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 48
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !55
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 36
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !84
  store i16 %i.ul, ptr %6, align 2, !tbaa !84
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !27
  store ptr %i.un, ptr %.sroa.07.012.i439.lcssa, align 8, !tbaa !27
  %i.uo = load ptr, ptr %i.uh, align 8, !tbaa !37
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uq = load ptr, ptr %i.up, align 8
  call void %i.uq(ptr noundef nonnull align 8 dereferenceable(20) %i.uh) #15, !inline_history !2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.ur = load i16, ptr %6, align 2, !tbaa !177
  %i.us = zext i16 %i.ur to i32
  store i32 %i.us, ptr %i.d, align 4, !tbaa !68
  %i.ut = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ut, 0
  %i.uu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !68 ; 2 uses
  %.not276 = icmp eq i32 %i.uv, 0
  br i1 %.not276, label %bb.bx, label %bb.bo

bb.bo:                                            ; preds = %_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446
  %i.uw = add i32 %i.uv, -1
  %i.ux = zext i32 %i.uw to i64
  %i.uy = load ptr, ptr %5, align 8, !tbaa !33    ; 3 uses
  %i.uz = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %i.ux
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !73 ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %11 = load i32, ptr %i.vc, align 8, !tbaa !30
  %12 = icmp ne i32 %11, 0
  %.not277610 = icmp eq ptr %i.vb, null
  %.not277 = or i1 %.not277610, %12
  br i1 %.not277, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i455, label %bb.bs

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i455: ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %i.tl, ptr %7, align 8, !tbaa !33
  store i32 0, ptr %i.tm, align 8, !tbaa !32
  store i32 1, ptr %i.tn, align 4, !tbaa !71
  %i.vd = load i32, ptr %i.uu, align 4, !tbaa !68
  %i.ve = add i32 %i.vd, -1
  %i.vf = zext i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %i.vf ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 2 uses
  store ptr null, ptr %i.tl, align 8, !tbaa !27
  store i32 0, ptr %i.to, align 8, !tbaa !74
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !73 ; 2 uses
  %i.vj = icmp eq ptr %i.vi, null
  br i1 %i.vj, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit457, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i455
  store ptr %i.vi, ptr %i.tl, align 8, !tbaa !27
  store ptr null, ptr %i.vh, align 8, !tbaa !73
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit457

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit457: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i455, %bb.bp
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 16 ; 2 uses
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !74
  store i32 %i.vl, ptr %i.to, align 8, !tbaa !74
  store i32 0, ptr %i.vk, align 8, !tbaa !74
  store i32 1, ptr %i.tm, align 8, !tbaa !32
  %i.vm = load i32, ptr %i.uu, align 4, !tbaa !68
  %i.vn = add i32 %i.vm, -1
  %i.vo = zext i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8 ; 2 uses
  %i.vr = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #14 ; 8 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8 ; 2 uses
  store ptr null, ptr %i.vs, align 8, !tbaa !27
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  store i32 0, ptr %i.vt, align 8, !tbaa !30
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm12ScopeMatcherE, i64 16), ptr %i.vr, align 8, !tbaa !37
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 24 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 40
  store ptr %i.vv, ptr %i.vu, align 8, !tbaa !33
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vr, i64 32
  store i32 0, ptr %i.vw, align 8, !tbaa !32
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vr, i64 36
  store i32 4, ptr %i.vx, align 4, !tbaa !71
  %i.vy = load i32, ptr %i.tm, align 8, !tbaa !32
  %.not.i.i.i458 = icmp eq i32 %i.vy, 0
  br i1 %.not.i.i.i458, label %_ZN4llvm12ScopeMatcherC2EONS_15SmallVectorImplINS_11MatcherListEEE.exit459, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit457
  %i.vz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_11MatcherListEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(80) %i.vu, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 0 uses
  %.pre752 = load i32, ptr %i.tm, align 8, !tbaa !32
  br label %_ZN4llvm12ScopeMatcherC2EONS_15SmallVectorImplINS_11MatcherListEEE.exit459

_ZN4llvm12ScopeMatcherC2EONS_15SmallVectorImplINS_11MatcherListEEE.exit459: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit457, %bb.bq
  %i.wa = phi i32 [ 0, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit457 ], [ %.pre752, %bb.bq ] ; 2 uses
  %i.wb = load ptr, ptr %i.vq, align 8, !tbaa !27
  store ptr %i.wb, ptr %i.vs, align 8, !tbaa !27
  store ptr %i.vr, ptr %i.vq, align 8, !tbaa !27
  %i.wc = load i32, ptr %i.uu, align 4, !tbaa !68
  %i.wd = add i32 %i.wc, -1
  %i.we = zext i32 %i.wd to i64
  %i.wf = load ptr, ptr %5, align 8, !tbaa !33
  %i.wg = getelementptr inbounds nuw [24 x i8], ptr %i.wf, i64 %i.we
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !73
  %i.wj = load ptr, ptr %7, align 8, !tbaa !33    ; 3 uses
  %.not4.i.i461 = icmp eq i32 %i.wa, 0
  br i1 %.not4.i.i461, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE13destroy_rangeEPS1_S3_.exit.i474, label %.lr.ph.i.preheader.i462

.lr.ph.i.preheader.i462:                          ; preds = %_ZN4llvm12ScopeMatcherC2EONS_15SmallVectorImplINS_11MatcherListEEE.exit459
  %i.wk = zext i32 %i.wa to i64
  %.idx.i463 = shl nuw nsw i64 %i.wk, 4
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.idx.i463
  br label %.lr.ph.i.i464

.lr.ph.i.i464:                                    ; preds = %_ZN4llvm11MatcherListD2Ev.exit.i.i470, %.lr.ph.i.preheader.i462
  %.05.i.i465 = phi ptr [ %i.wm, %_ZN4llvm11MatcherListD2Ev.exit.i.i470 ], [ %i.wl, %.lr.ph.i.preheader.i462 ]
  %i.wm = getelementptr inbounds i8, ptr %.05.i.i465, i64 -16 ; 3 uses
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !73 ; 2 uses
  %.not5.i.i.i.i466 = icmp eq ptr %i.wn, null
  br i1 %.not5.i.i.i.i466, label %_ZN4llvm11MatcherListD2Ev.exit.i.i470, label %.lr.ph.i.i.i.i467

.lr.ph.i.i.i.i467:                                ; preds = %.lr.ph.i.i464, %.lr.ph.i.i.i.i467
  %.06.i.i.i.i468 = phi ptr [ %i.wp, %.lr.ph.i.i.i.i467 ], [ %i.wn, %.lr.ph.i.i464 ] ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i468, i64 8
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !27 ; 2 uses
  %i.wq = load ptr, ptr %.06.i.i.i.i468, align 8, !tbaa !37
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8
  call void %i.ws(ptr noundef nonnull align 8 dereferenceable(20) %.06.i.i.i.i468) #15, !inline_history !174
  %.not.i.i.i.i469 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i.i.i469, label %_ZN4llvm11MatcherListD2Ev.exit.i.i470, label %.lr.ph.i.i.i.i467, !llvm.loop !5

_ZN4llvm11MatcherListD2Ev.exit.i.i470:            ; preds = %.lr.ph.i.i.i.i467, %.lr.ph.i.i464
  %.not.i.i471.a = icmp eq ptr %i.wj, %i.wm
  br i1 %.not.i.i471.a, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i472, label %.lr.ph.i.i464, !llvm.loop !6

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i472: ; preds = %_ZN4llvm11MatcherListD2Ev.exit.i.i470
  %.pre.i473 = load ptr, ptr %7, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE13destroy_rangeEPS1_S3_.exit.i474

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE13destroy_rangeEPS1_S3_.exit.i474: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i472, %_ZN4llvm12ScopeMatcherC2EONS_15SmallVectorImplINS_11MatcherListEEE.exit459
  %i.wt = phi ptr [ %.pre.i473, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i472 ], [ %i.wj, %_ZN4llvm12ScopeMatcherC2EONS_15SmallVectorImplINS_11MatcherListEEE.exit459 ] ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.tl
  br i1 %i.wu, label %_ZN4llvm11SmallVectorINS_11MatcherListELj1EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE13destroy_rangeEPS1_S3_.exit.i474
  call void @free(ptr noundef %i.wt) #15
  br label %_ZN4llvm11SmallVectorINS_11MatcherListELj1EED2Ev.exit

_ZN4llvm11SmallVectorINS_11MatcherListELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE13destroy_rangeEPS1_S3_.exit.i474, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvm11SmallVectorINS_11MatcherListELj1EED2Ev.exit, %bb.bo
  %.0242 = phi ptr [ %i.vb, %bb.bo ], [ %i.wi, %_ZN4llvm11SmallVectorINS_11MatcherListELj1EED2Ev.exit ] ; 4 uses
  %i.wv = load ptr, ptr %.0246703, align 8, !tbaa !73 ; 5 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !30
  %i.wy = icmp ne i32 %i.wx, 0
  %.not278611 = icmp eq ptr %i.wv, null
  %.not623 = or i1 %.not278611, %i.wy
  br i1 %.not623, label %bb.bt, label %_ZN4llvm11MatcherListC2EOS0_.exit477

_ZN4llvm11MatcherListC2EOS0_.exit477:             ; preds = %bb.bs
  store ptr null, ptr %.0246703, align 8, !tbaa !73
  %i.wz = getelementptr inbounds nuw i8, ptr %.0246703, i64 8
  store i32 0, ptr %i.wz, align 8, !tbaa !74
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.xb = getelementptr inbounds nuw i8, ptr %.0242, i64 24
  %i.xc = load ptr, ptr %i.xa, align 8, !tbaa !33 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wv, i64 32
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !32
  %i.xf = zext i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw [16 x i8], ptr %i.xc, i64 %i.xf
  call void @_ZN4llvm15SmallVectorImplINS_11MatcherListEE6appendISt13move_iteratorIPS1_EvEEvT_S7_(ptr noundef nonnull align 8 dereferenceable(16) %i.xb, ptr %i.xc, ptr %i.xg)
  br label %.lr.ph.i.i479

.lr.ph.i.i479:                                    ; preds = %_ZN4llvm11MatcherListC2EOS0_.exit477, %.lr.ph.i.i479
  %.06.i.i480 = phi ptr [ %i.xi, %.lr.ph.i.i479 ], [ %i.wv, %_ZN4llvm11MatcherListC2EOS0_.exit477 ] ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.06.i.i480, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !27 ; 2 uses
  %i.xj = load ptr, ptr %.06.i.i480, align 8, !tbaa !37
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8
  call void %i.xl(ptr noundef nonnull align 8 dereferenceable(20) %.06.i.i480) #15, !inline_history !166
  %.not.i.i481 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i481, label %_ZN4llvm11MatcherListD2Ev.exit483, label %.lr.ph.i.i479, !llvm.loop !5

bb.bt:                                            ; preds = %bb.bs
  %i.xm = getelementptr inbounds nuw i8, ptr %.0242, i64 24 ; 5 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.0242, i64 32 ; 3 uses
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !32 ; 2 uses
  %i.xp = zext i32 %i.xo to i64                   ; 2 uses
  %i.xq = add nuw nsw i64 %i.xp, 1                ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.0242, i64 36
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !71
  %.not.i.i.not.i484 = icmp ult i32 %i.xo, %i.xs
  %.pre3.i485 = load ptr, ptr %i.xm, align 8, !tbaa !33 ; 4 uses
  br i1 %.not.i.i.not.i484, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i489, label %bb.bu, !prof !75

bb.bu:                                            ; preds = %bb.bt
  %i.xt = getelementptr inbounds nuw [16 x i8], ptr %.pre3.i485, i64 %i.xp
  %i.xu = icmp uge ptr %.0246703, %.pre3.i485
  %i.xv = icmp ult ptr %.0246703, %i.xt
  %spec.select.i.i.i.i.i486 = and i1 %i.xu, %i.xv
  br i1 %spec.select.i.i.i.i.i486, label %bb.bv, label %.critedge.i.i.i487, !prof !176

bb.bv:                                            ; preds = %bb.bu
  %i.xw = ptrtoint ptr %.0246703 to i64
  %i.xx = ptrtoint ptr %.pre3.i485 to i64
  %i.xy = sub i64 %i.xw, %i.xx
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.xm, i64 noundef %i.xq)
  %i.xz = load ptr, ptr %i.xm, align 8, !tbaa !33 ; 2 uses
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 %i.xy
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i489

.critedge.i.i.i487:                               ; preds = %bb.bu
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.xm, i64 noundef %i.xq)
  %.pre.i488.a = load ptr, ptr %i.xm, align 8, !tbaa !33
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i489

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i489: ; preds = %.critedge.i.i.i487, %bb.bv, %bb.bt
  %i.yb = phi ptr [ %.pre3.i485, %bb.bt ], [ %i.xz, %bb.bv ], [ %.pre.i488.a, %.critedge.i.i.i487 ]
  %.016.i.i.i490 = phi ptr [ %.0246703, %bb.bt ], [ %i.ya, %bb.bv ], [ %.0246703, %.critedge.i.i.i487 ] ; 3 uses
  %i.yc = load i32, ptr %i.xn, align 8, !tbaa !32 ; 2 uses
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [16 x i8], ptr %i.yb, i64 %i.yd ; 3 uses
  store ptr null, ptr %i.ye, align 8, !tbaa !27
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8 ; 2 uses
  store i32 0, ptr %i.yf, align 8, !tbaa !74
  %i.yg = load ptr, ptr %.016.i.i.i490, align 8, !tbaa !73 ; 2 uses
  %i.yh = icmp eq ptr %i.yg, null
  br i1 %i.yh, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit491, label %bb.bw

bb.bw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i489
  store ptr %i.yg, ptr %i.ye, align 8, !tbaa !27
  store ptr null, ptr %.016.i.i.i490, align 8, !tbaa !73
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit491

_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit491: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE28reserveForParamAndGetAddressERS1_m.exit.i489, %bb.bw
  %i.yi = getelementptr inbounds nuw i8, ptr %.016.i.i.i490, i64 8 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !74
  store i32 %i.yj, ptr %i.yf, align 8, !tbaa !74
  store i32 0, ptr %i.yi, align 8, !tbaa !74
  %i.yk = add i32 %i.yc, 1
  store i32 %i.yk, ptr %i.xn, align 8, !tbaa !32
  br label %_ZN4llvm11MatcherListD2Ev.exit483

bb.bx:                                            ; preds = %_ZL16FindNodeWithKindRN4llvm11MatcherListENS_7Matcher6KindTyE.exit446
  %i.yl = load i32, ptr %i.tf, align 8, !tbaa !32
  %i.ym = add i32 %i.yl, 1
  store i32 %i.ym, ptr %i.uu, align 4, !tbaa !68
  %i.yn = load i32, ptr %i.tf, align 8, !tbaa !32 ; 3 uses
  %i.yo = load i32, ptr %i.tg, align 4, !tbaa !71
  %.not.i492 = icmp ult i32 %i.yn, %i.yo
  br i1 %.not.i492, label %bb.bz, label %bb.by, !prof !75

bb.by:                                            ; preds = %bb.bx
  %i.yp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_3MVTENS_11MatcherListEELb0EE18growAndEmplaceBackIJRS2_S3_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 8 dereferenceable(12) %.0246703) ; 0 uses
  br label %_ZN4llvm11MatcherListD2Ev.exit483

bb.bz:                                            ; preds = %bb.bx
  %i.yq = zext i32 %i.yn to i64
  %i.yr = load ptr, ptr %5, align 8, !tbaa !33
  %i.ys = getelementptr inbounds nuw [24 x i8], ptr %i.yr, i64 %i.yq ; 3 uses
  %i.yt = load i16, ptr %6, align 2, !tbaa !84
  store i16 %i.yt, ptr %i.ys, align 8, !tbaa !84
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 8 ; 2 uses
  store ptr null, ptr %i.yu, align 8, !tbaa !27
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 16 ; 2 uses
  store i32 0, ptr %i.yv, align 8, !tbaa !74
  %i.yw = load ptr, ptr %.0246703, align 8, !tbaa !73 ; 2 uses
  %i.yx = icmp eq ptr %i.yw, null
  br i1 %i.yx, label %_ZNSt4pairIN4llvm3MVTENS0_11MatcherListEEC2IRS1_S2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.yw, ptr %i.yu, align 8, !tbaa !27
  store ptr null, ptr %.0246703, align 8, !tbaa !73
  br label %_ZNSt4pairIN4llvm3MVTENS0_11MatcherListEEC2IRS1_S2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit.i

_ZNSt4pairIN4llvm3MVTENS0_11MatcherListEEC2IRS1_S2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit.i: ; preds = %bb.ca, %bb.bz
  %i.yy = getelementptr inbounds nuw i8, ptr %.0246703, i64 8 ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !74
  store i32 %i.yz, ptr %i.yv, align 8, !tbaa !74
  store i32 0, ptr %i.yy, align 8, !tbaa !74
  %i.za = add nuw i32 %i.yn, 1
  store i32 %i.za, ptr %i.tf, align 8, !tbaa !32
  br label %_ZN4llvm11MatcherListD2Ev.exit483

_ZN4llvm11MatcherListD2Ev.exit483:                ; preds = %.lr.ph.i.i479, %_ZNSt4pairIN4llvm3MVTENS0_11MatcherListEEC2IRS1_S2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_.exit.i, %bb.by, %_ZN4llvm23SmallVectorTemplateBaseINS_11MatcherListELb0EE9push_backEOS1_.exit491
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.zb = getelementptr inbounds nuw i8, ptr %.0246703, i64 16 ; 2 uses
  %.not273 = icmp eq ptr %i.zb, %i.tk
  br i1 %.not273, label %._crit_edge707, label %bb.bn

._crit_edge712:                                   ; preds = %bb.cc
  %.pre753 = load i32, ptr %i.tf, align 8, !tbaa !32
  %i.zc = icmp eq i32 %.pre753, 1
  br i1 %i.zc, label %bb.cd, label %._crit_edge712.thread

.lr.ph711:                                        ; preds = %._crit_edge707, %bb.cc
  %.0234709 = phi ptr [ %i.zi, %bb.cc ], [ %i.tv, %._crit_edge707 ] ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.0234709, i64 8 ; 2 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !73
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !30
  %i.zh = icmp eq i32 %i.zg, 0
  br i1 %i.zh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph711
  call fastcc void @_ZL11FactorNodesRN4llvm11MatcherListE(ptr noundef nonnull align 8 dereferenceable(12) %i.zd)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph711
  %i.zi = getelementptr inbounds nuw i8, ptr %.0234709, i64 24 ; 2 uses
  %.not274 = icmp eq ptr %i.zi, %i.ty
  br i1 %.not274, label %._crit_edge712, label %.lr.ph711

._crit_edge712.thread:                            ; preds = %._crit_edge707, %._crit_edge712
  %i.zj = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #14 ; 3 uses
  call void @_ZN4llvm17SwitchTypeMatcherC2EONS_15SmallVectorImplISt4pairINS_3MVTENS_11MatcherListEEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.zj, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.zk = load ptr, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  store ptr %i.zk, ptr %i.zl, align 8, !tbaa !27
  store ptr %i.zj, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  %.pre754 = load ptr, ptr %5, align 8, !tbaa !33
  br label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_.exit500

bb.cd:                                            ; preds = %._crit_edge712
  %i.zm = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #14 ; 3 uses
  %i.zn = load ptr, ptr %5, align 8, !tbaa !33
  %.sroa.010.0.copyload = load i16, ptr %i.zn, align 8, !tbaa !84
  call void @_ZN4llvm17ValueTypeByHwModeC2ENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(60) %8, i16 %.sroa.010.0.copyload)
  call void @_ZN4llvm16CheckTypeMatcherC2ENS_17ValueTypeByHwModeEj(ptr noundef nonnull align 8 dereferenceable(92) %i.zm, ptr nofree noundef nonnull align 8 dereferenceable(64) %8, i32 noundef 0)
  %i.zo = load ptr, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zm, i64 8 ; 3 uses
  store ptr %i.zo, ptr %i.zp, align 8, !tbaa !27
  store ptr %i.zm, ptr %.sroa.0217.0645.lcssa, align 8, !tbaa !27
  %i.zq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !54
  call void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm3MVTEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.zr)
  %i.zs = load ptr, ptr %5, align 8, !tbaa !33    ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 8 ; 3 uses
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !27 ; 3 uses
  %i.zv = icmp eq ptr %i.zu, null
  br i1 %i.zv, label %_ZN4llvm11MatcherList12splice_afterENS0_13iterator_implILb0EEERS0_.exit500, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.zw = load ptr, ptr %i.zp, align 8, !tbaa !27 ; 2 uses
  %.not.i495 = icmp eq ptr %i.zw, null
  br i1 %.not.i495, label %bb.cg, label %.preheader.i496thread-pre-split

.preheader.i496thread-pre-split:                  ; preds = %bb.ce, %.preheader.i496thread-pre-split
  %i.zx = phi ptr [ %.pr618, %.preheader.i496thread-pre-split ], [ %i.zu, %bb.ce ] ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %.pr618 = load ptr, ptr %i.zy, align 8, !tbaa !27 ; 2 uses
  %.not6.i498 = icmp eq ptr %.pr618, null
  br i1 %.not6.i498, label %bb.cf, label %.preheader.i496thread-pre-split, !llvm.loop !172

bb.cf:                                            ; preds = %.preheader.i496thread-pre-split
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
end_hunk_2
