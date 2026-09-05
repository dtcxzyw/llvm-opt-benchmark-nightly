Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WebAssemblyDebugValueManager?download=true
inline.NumInlined: 961
inline.NumDeleted: 486
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::SmallVector.165" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.166" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.166" = type { [16 x i8] }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"struct.llvm::SmallVectorStorage" = type { [8 x i8] }
%"class.llvm::SmallVector.212" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.213" }
%"struct.llvm::SmallVectorStorage.213" = type { [64 x i8] }
%"class.llvm::SmallDenseMap" = type { i32, %union.anon.215 }
%union.anon.215 = type { %"struct.llvm::SmallDenseMap<llvm::DebugVariable, llvm::SmallVector<llvm::MachineInstr *, 2>>::LargeRep", [272 x i8] }
%"struct.llvm::SmallDenseMap<llvm::DebugVariable, llvm::SmallVector<llvm::MachineInstr *, 2>>::LargeRep" = type { ptr, ptr, i32 }
%"class.llvm::DebugVariable" = type { ptr, %"class.std::optional.216", ptr }
%"class.std::optional.216" = type { %"struct.std::_Optional_base.217" }
%"struct.std::_Optional_base.217" = type { %"struct.std::_Optional_payload.219" }
%"struct.std::_Optional_payload.219" = type { %"struct.std::_Optional_payload_base.base.221", [7 x i8] }
%"struct.std::_Optional_payload_base.base.221" = type <{ %"union.std::_Optional_payload_base<llvm::DbgVariableFragmentInfo>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::DbgVariableFragmentInfo>::_Storage" = type { %"struct.llvm::DbgVariableFragmentInfo" }
%"struct.llvm::DbgVariableFragmentInfo" = type { i64, i64 }
%"class.llvm::DenseMapIterator" = type { ptr, ptr, ptr, ptr }
%"class.llvm::SmallVector.230" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage.231" }
%"struct.llvm::SmallVectorStorage.231" = type { [48 x i8] }
%"class.llvm::iterator_range.232" = type { %"class.llvm::filter_iterator_impl", %"class.llvm::filter_iterator_impl" }
%"class.llvm::filter_iterator_impl" = type { %"class.llvm::filter_iterator_base" }
%"class.llvm::filter_iterator_base" = type { %"class.llvm::iterator_adaptor_base", ptr, %"class.std::function" }
%"class.llvm::iterator_adaptor_base" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.std::array" = type { [20 x i8] }

$_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEED2Ev = comdat any

$_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE4swapERS3_ = comdat any

$_ZSt9__find_ifIPKN4llvm14MachineOperandEN9__gnu_cxx5__ops10_Iter_predIZNKS0_12MachineInstr21hasDebugOperandForRegENS0_8RegisterEEUlRS2_E_EEET_SC_SC_T0_St26random_access_iterator_tag = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPSB_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPSB_ = comdat any

$_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E8moveFromERSC_ = comdat any

$_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEEaSEOS3_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E7find_asIS2_EENS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEERKT_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

@_ZN4llvm28WebAssemblyDebugValueManagerC1EPNS_12MachineInstrE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm28WebAssemblyDebugValueManagerC2EPNS_12MachineInstrE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm28WebAssemblyDebugValueManagerC2EPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(36) initializes((0, 8)) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.165", align 8 ; 9 uses
  store ptr %1, ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #12
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !251, !nonnull !150, !align !252
  %i.h = tail call noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140) %i.g) #12
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !167  ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 255
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !168
  store i32 %i.o, ptr %i.e, align 8, !tbaa !169
  %i.p = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i32 0, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 2, ptr %i.u, align 4, !tbaa !30
  %.sroa.06.0.copyload = load i32, ptr %i.e, align 8, !tbaa !169 ; 3 uses
  %i.v = icmp slt i32 %.sroa.06.0.copyload, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.x = and i32 %.sroa.06.0.copyload, 2147483647
  %i.y = zext nneg i32 %i.x to i64
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  %i.ad = zext nneg i32 %.sroa.06.0.copyload to i64
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %.0.in.i.i.i = select i1 %i.v, ptr %i.ab, ptr %i.af
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !253 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %.0.i.i.i, align 8
  %i.ah = and i32 %i.ag, 16777216
  %.not4.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not4.i.i.i, label %.lr.ph, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.e ], [ %.0.i.i.i, %bb.d ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !168 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.ai = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.aj = and i32 %i.ai, 16777216
  %.not1.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not1.i.i.i.i, label %.lr.ph, label %.preheader.i.i.i, !llvm.loop !248

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.d ], [ %storemerge.i.i.i.i, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i32, ptr %i.t, align 8, !tbaa !29
  %i.al = icmp eq i32 %.pre, 0
  br i1 %i.al, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !172      ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %.not3948 = icmp eq ptr %4, %7
  br i1 %.not3948, label %.loopexit, label %.lr.ph50

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.a, %.lr.ph
  %.sroa.033.047 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph ], [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.033.047, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !255 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 52
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !174
  %i.aq = and i32 %i.ap, -2
  %spec.select.i = icmp eq i32 %i.aq, 14
  br i1 %spec.select.i, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !173
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !173
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.g, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %bb.f
  %i.av = load i32, ptr %i.t, align 8, !tbaa !29  ; 2 uses
  %i.aw = load i32, ptr %i.u, align 4, !tbaa !30
  %.not.i22 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i22, label %bb.i, label %bb.h, !prof !175

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.an)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %2, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store ptr %i.an, ptr %i.az, align 1
  %i.ba = load i32, ptr %i.t, align 8, !tbaa !29
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.t, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.i, %bb.h, %bb.f, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !255
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %.pn.i.i = phi ptr [ %.sroa.033.047, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit ], [ %storemerge.i.i, %.backedge ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !168 ; 5 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = load i32, ptr %storemerge.i.i, align 8
  %i.be = and i32 %i.bd, 16777216
  %.not1.i.i = icmp eq i32 %i.be, 0
  br i1 %.not1.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.a, label %.backedge

.backedge:                                        ; preds = %bb.k, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.a
  br label %bb.j, !llvm.loop !249

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i.a: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !255
  %i.bh = icmp eq ptr %i.bg, %i.bc
  br i1 %i.bh, label %.backedge, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit, !llvm.loop !249

.lr.ph50:                                         ; preds = %.preheader.preheader, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.027.049 = phi ptr [ %i.cq, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %4, %.preheader.preheader ] ; 11 uses
  %.sroa.01.0.copyload = load i32, ptr %i.e, align 8, !tbaa !169
  %i.bi = call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.027.049, i32 %.sroa.01.0.copyload, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %.not40 = icmp eq i32 %i.bi, -1
  br i1 %.not40, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph50
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.027.049, i64 52
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !174 ; 2 uses
  %i.bl = and i32 %i.bk, -2
  %spec.select.i23 = icmp eq i32 %i.bl, 14
  br i1 %spec.select.i23, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 8, !tbaa !169
  %i.bm = icmp eq i32 %i.bk, 14                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.027.049, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !167
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.027.049, i64 40
  %i.bq = load i24, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp ne i24 %i.bq, 0
  %..i.i.i = zext i1 %i.br to i64
  %i.bs = zext i24 %i.bq to i64
  %i.bt = add nsw i64 %i.bs, -2
  %.sroa.5.0.i.i = select i1 %i.bm, i64 %..i.i.i, i64 %i.bt
  %.sroa.05.0.idx.i.i = select i1 %i.bm, i64 0, i64 64
  %.sroa.05.0.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.05.0.idx.i.i ; 2 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %.sroa.05.0.i.i, i64 %.sroa.5.0.i.i ; 2 uses
  %i.bv = call noundef ptr @_ZSt9__find_ifIPKN4llvm14MachineOperandEN9__gnu_cxx5__ops10_Iter_predIZNKS0_12MachineInstr21hasDebugOperandForRegENS0_8RegisterEEUlRS2_E_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr noundef %.sroa.05.0.i.i, ptr noundef %i.bu, i32 %.sroa.0.0.copyload)
  %.not41 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not41, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = load i32, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.bx = load i32, ptr %i.d, align 4, !tbaa !30
  %.not.i24 = icmp ult i32 %i.bw, %i.bx
  br i1 %.not.i24, label %bb.p, label %bb.o, !prof !175

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sroa.027.049)
  %.pre56 = load i32, ptr %i.c, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit25

bb.p:                                             ; preds = %bb.n
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  store ptr %.sroa.027.049, ptr %i.ca, align 1
  %i.cb = load i32, ptr %i.c, align 8, !tbaa !29
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cc, ptr %i.c, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit25

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit25: ; preds = %bb.o, %bb.p
  %i.cd = phi i32 [ %.pre56, %bb.o ], [ %i.cc, %bb.p ]
  %i.ce = load i32, ptr %i.t, align 8, !tbaa !29
  %i.cf = icmp eq i32 %i.cd, %i.ce
  br i1 %i.cf, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.m, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit25
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.027.049, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i26 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i26, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.027.049, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !176
  %i.cj = and i32 %i.ci, 8
  %.not34.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.cl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.027.049, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !172 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 44
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !176
  %i.co = and i32 %i.cn, 8
  %.not3.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.q, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.027.049, %bb.q ], [ %.sroa.027.049, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.cl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !172 ; 2 uses
  %.not39 = icmp eq ptr %i.cq, %7
  br i1 %.not39, label %.loopexit, label %.lr.ph50, !llvm.loop !250

.loopexit:                                        ; preds = %.preheader.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit25, %.lr.ph50, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.c, %.preheader.preheader, %._crit_edge
  %i.cr = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.s
  br i1 %i.cs, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.cr) #12
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit: ; preds = %.loopexit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.a, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit
  ret void
}

declare noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm28WebAssemblyDebugValueManager22getSinkableDebugValuesEPNS_12MachineInstrE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.212", align 8 ; 14 uses
  %4 = alloca %"class.llvm::SmallDenseMap", align 8 ; 10 uses
  %5 = alloca %"class.llvm::DebugVariable", align 8 ; 7 uses
  %6 = alloca %"class.llvm::DebugVariable", align 8 ; 7 uses
  %7 = alloca %"class.llvm::DenseMapIterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %0, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !30
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  store i32 0, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i32 8, ptr %i.i, align 4, !tbaa !30
  %i.j = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !173  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !173  ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %.preheader.preheader, label %bb.h

.preheader.preheader:                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !172  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %.not152166 = icmp eq ptr %i.q, %i.r
  br i1 %.not152166, label %.critedge, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader.preheader, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.0135.0167 = phi ptr [ %i.an, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %i.q, %.preheader.preheader ] ; 10 uses
  %i.s = icmp eq ptr %.sroa.0135.0167, %2
  br i1 %i.s, label %.critedge65, label %bb.d

bb.d:                                             ; preds = %.lr.ph168
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0135.0167, i64 52
  %i.u = load i32, ptr %i.t, align 4, !tbaa !174
  %i.v = and i32 %i.u, -2
  %spec.select.i = icmp eq i32 %i.v, 14
  br i1 %spec.select.i, label %bb.e, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.x = load i32, ptr %i.i, align 4, !tbaa !30
  %.not.i70 = icmp ult i32 %i.w, %i.x
  br i1 %.not.i70, label %bb.g, label %bb.f, !prof !175

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %.sroa.0135.0167)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %bb.e
  %i.y = zext i32 %i.w to i64
  %i.z = load ptr, ptr %3, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  store ptr %.sroa.0135.0167, ptr %i.aa, align 1
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !29
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.h, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.g, %bb.f, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0135.0167) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0135.0167, align 8
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0135.0167, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !176
  %i.ag = and i32 %i.af, 8
  %.not34.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.ai, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.0135.0167, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !172 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !176
  %i.al = and i32 %i.ak, 8
  %.not3.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0135.0167, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit ], [ %.sroa.0135.0167, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.ai, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !172 ; 2 uses
  %.not152 = icmp eq ptr %i.an, %i.r
  br i1 %.not152, label %.critedge, label %.lr.ph168, !llvm.loop !256

.critedge:                                        ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %.preheader.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ao, ptr %0, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.aq, align 4, !tbaa !30
  br label %bb.ay

bb.h:                                             ; preds = %bb.c
  %i.ar = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock11isSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.l, ptr noundef %i.n) #12
  br i1 %i.ar, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit74, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %0, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.au, align 4, !tbaa !30
  br label %bb.ay

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit74: ; preds = %bb.h
  %i.av = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !172 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !173
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %.not150159 = icmp eq ptr %i.ax, %i.ba
  br i1 %.not150159, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit87, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit74
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !173
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %.sroa.0127.0161 = load ptr, ptr %i.bc, align 8, !tbaa !172 ; 2 uses
  %.not151162 = icmp eq ptr %.sroa.0127.0161, %2
  br i1 %.not151162, label %.critedge65, label %.lr.ph165

.lr.ph:                                           ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit74, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit87
  %.sroa.0131.0160 = phi ptr [ %i.bx, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit87 ], [ %i.ax, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit74 ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0131.0160, i64 52
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !174
  %i.bf = and i32 %i.be, -2
  %spec.select.i75 = icmp eq i32 %i.bf, 14
  br i1 %spec.select.i75, label %bb.j, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit77

bb.j:                                             ; preds = %.lr.ph
  %i.bg = load i32, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %i.bh = load i32, ptr %i.i, align 4, !tbaa !30
  %.not.i76 = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i76, label %bb.l, label %bb.k, !prof !175

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %.sroa.0131.0160)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit77

bb.l:                                             ; preds = %bb.j
  %i.bi = zext i32 %i.bg to i64
  %i.bj = load ptr, ptr %3, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi
  store ptr %.sroa.0131.0160, ptr %i.bk, align 1
  %i.bl = load i32, ptr %i.h, align 8, !tbaa !29
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.h, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit77

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit77: ; preds = %bb.l, %bb.k, %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0131.0160) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i79 = load i64, ptr %.sroa.0131.0160, align 8
  %i.bn = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i79, 4
  %.not.i.i.i80 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i80, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i82, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit87

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i82: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit77
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0131.0160, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !176
  %i.bq = and i32 %i.bp, 8
  %.not34.i.i.i83 = icmp eq i32 %i.bq, 0
  br i1 %.not34.i.i.i83, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit87, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i84

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i84: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i82, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i84
  %.sroa.0.05.i.i.i85 = phi ptr [ %i.bs, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i84 ], [ %.sroa.0131.0160, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i82 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i85, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !172 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 44
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !176
  %i.bv = and i32 %i.bu, 8
  %.not3.i.i.i86 = icmp eq i32 %i.bv, 0
  br i1 %.not3.i.i.i86, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit87, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i84, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit87: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i84, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit77, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i82
  %.sroa.0.1.i.i.i81 = phi ptr [ %.sroa.0131.0160, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit77 ], [ %.sroa.0131.0160, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i82 ], [ %i.bs, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i84 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i81, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !172 ; 2 uses
  %.not150 = icmp eq ptr %i.bx, %i.ba
  br i1 %.not150, label %._crit_edge, label %.lr.ph, !llvm.loop !257

.lr.ph165:                                        ; preds = %._crit_edge, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit100
  %.sroa.0127.0163 = phi ptr [ %.sroa.0127.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit100 ], [ %.sroa.0127.0161, %._crit_edge ] ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0127.0163, i64 52
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !174
  %i.ca = and i32 %i.bz, -2
  %spec.select.i88 = icmp eq i32 %i.ca, 14
  br i1 %spec.select.i88, label %bb.m, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit90

bb.m:                                             ; preds = %.lr.ph165
  %i.cb = load i32, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %i.cc = load i32, ptr %i.i, align 4, !tbaa !30
  %.not.i89 = icmp ult i32 %i.cb, %i.cc
  br i1 %.not.i89, label %bb.o, label %bb.n, !prof !175

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %.sroa.0127.0163)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit90

bb.o:                                             ; preds = %bb.m
  %i.cd = zext i32 %i.cb to i64
  %i.ce = load ptr, ptr %3, align 8, !tbaa !28
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  store ptr %.sroa.0127.0163, ptr %i.cf, align 1
  %i.cg = load i32, ptr %i.h, align 8, !tbaa !29
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.h, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit90

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit90: ; preds = %bb.o, %bb.n, %.lr.ph165
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0127.0163) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i92 = load i64, ptr %.sroa.0127.0163, align 8
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i92, 4
  %.not.i.i.i93 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i93, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i95, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit100

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i95: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit90
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0127.0163, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !176
  %i.cl = and i32 %i.ck, 8
  %.not34.i.i.i96 = icmp eq i32 %i.cl, 0
  br i1 %.not34.i.i.i96, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit100, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i95, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97
  %.sroa.0.05.i.i.i98 = phi ptr [ %i.cn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97 ], [ %.sroa.0127.0163, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i95 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i98, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !172 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !176
  %i.cq = and i32 %i.cp, 8
  %.not3.i.i.i99 = icmp eq i32 %i.cq, 0
  br i1 %.not3.i.i.i99, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit100, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit100: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit90, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i95
  %.sroa.0.1.i.i.i94 = phi ptr [ %.sroa.0127.0163, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit90 ], [ %.sroa.0127.0163, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i95 ], [ %i.cn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i97 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i94, i64 8
  %.sroa.0127.0 = load ptr, ptr %i.cr, align 8, !tbaa !172 ; 2 uses
  %.not151 = icmp eq ptr %.sroa.0127.0, %2
  br i1 %.not151, label %.critedge65, label %.lr.ph165, !llvm.loop !258

.critedge65:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit100, %.lr.ph168, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 296
  store i32 1, ptr %4, align 8
  store i32 0, ptr %i.cs, align 8
  %i.ct = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.cu = load i32, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %.idx = shl nuw nsw i64 %i.cv, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx
  %.not177 = icmp eq i32 %i.cu, 0
  br i1 %.not177, label %._crit_edge180, label %.lr.ph179

.lr.ph179:                                        ; preds = %.critedge65
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.p

._crit_edge180:                                   ; preds = %bb.ad, %.critedge65
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.da, ptr %0, align 8, !tbaa !28
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i32 0, ptr %i.db, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.dc, align 4, !tbaa !30
  %i.dd = load ptr, ptr %1, align 8, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !173
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !220
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !170
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.dl = load i32, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %.idx191 = shl nuw nsw i64 %i.dm, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx191
  %.not61186 = icmp eq i32 %i.dl, 0
  br i1 %.not61186, label %._crit_edge190, label %.lr.ph189

.lr.ph189:                                        ; preds = %._crit_edge180
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.ae

bb.p:                                             ; preds = %.lr.ph179, %bb.ad
  %.055178 = phi ptr [ %i.ct, %.lr.ph179 ], [ %i.gn, %bb.ad ] ; 2 uses
  %i.dt = load ptr, ptr %.055178, align 8, !tbaa !221 ; 12 uses
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !28  ; 4 uses
  %i.dv = load i32, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %.idx4.i = shl nuw nsw i64 %i.dw, 3             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx4.i
  %i.dy = lshr i64 %i.dw, 2                       ; 2 uses
  %.not.i101 = icmp eq i64 %i.dy, 0
  br i1 %.not.i101, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p
  %i.dz = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.du, i64 %i.dz
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i ], [ %i.em, %bb.u ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i ], [ %i.el, %bb.u ] ; 9 uses
  %i.ea = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !221
  %i.eb = icmp eq ptr %i.ea, %i.dt
  br i1 %i.eb, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ec = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !221
  %i.ee = icmp eq ptr %i.ed, %i.dt
  br i1 %i.ee, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !221
  %i.eh = icmp eq ptr %i.eg, %i.dt
  br i1 %i.eh, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit229.a, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !221
  %i.ek = icmp eq ptr %i.ej, %i.dt
  br i1 %i.ek, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit231, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.em = add nsw i64 %.047.i.i.i.i, -1
  %i.en = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.en, label %bb.q, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !259

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.u
  %i.eo = and i32 %i.dv, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.p
  %.pre-phi56.i.i.i.i = phi i32 [ %i.eo, %._crit_edge.loopexit.i.i.i.i ], [ %i.dv, %bb.p ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.du, %bb.p ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.thread [
    i32 3, label %bb.v
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ep = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !221
  %i.eq = icmp eq ptr %i.ep, %i.dt
  br i1 %i.eq, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.w
  %.1.i.i.i.i = phi ptr [ %i.er, %bb.w ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.es = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !221
  %i.et = icmp eq ptr %i.es, %i.dt
  br i1 %i.et, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.x
  %.2.i.i.i.i = phi ptr [ %i.eu, %bb.x ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ev = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !221
  %i.ew = icmp eq ptr %i.ev, %i.dt
  br i1 %i.ew, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit229.a: ; preds = %bb.s
  %i.ey = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit231: ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit: ; preds = %bb.q, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit229.a, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit231, %bb.v, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.v ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.ez, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit231 ], [ %i.ey, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit229.a ], [ %i.ex, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.q ]
  %.not153 = icmp eq ptr %.028.i.i.i.i, %i.dx
  br i1 %.not153, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.thread, label %bb.ad

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.fa = call noundef ptr @_ZNK4llvm12MachineInstr16getDebugVariableEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dt) #12
  %i.fb = call noundef ptr @_ZNK4llvm12MachineInstr18getDebugExpressionEv(ptr noundef nonnull align 8 dereferenceable(80) %i.dt) #12 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !222 ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -16 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8            ; 3 uses
  %i.fg = and i64 %i.ff, 2
  %.not.i.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i:      ; preds = %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.thread
  %i.fh = and i64 %i.ff, 960
  %i.fi = icmp eq i64 %i.fh, 128
  br i1 %i.fi, label %bb.y, label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i: ; preds = %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit.thread
  %i.fj = getelementptr inbounds i8, ptr %i.fd, i64 -24
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !29
  %i.fl = icmp eq i32 %i.fk, 2
  br i1 %i.fl, label %.thread.i.i, label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

.thread.i.i:                                      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i
  %i.fm = getelementptr inbounds i8, ptr %i.fd, i64 -32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !28
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.y:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i
  %i.fo = lshr i64 %i.ff, 2
  %i.fp = and i64 %i.fo, 15
  %i.fq = sub nsw i64 0, %i.fp
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fq
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.y, %.thread.i.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.fr, %bb.y ], [ %i.fn, %.thread.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !268
  br label %_ZNK4llvm10DILocation12getInlinedAtEv.exit

_ZNK4llvm10DILocation12getInlinedAtEv.exit:       ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i
  %.0.i.i = phi ptr [ %i.ft, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i ]
  store ptr %i.fa, ptr %5, align 8, !tbaa !229
  %.not.i102 = icmp eq ptr %i.fb, null
  br i1 %.not.i102, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm10DILocation12getInlinedAtEv.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !271, !noalias !272 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !273, !noalias !272
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ga
  call void @_ZN4llvm12DIExpression15getFragmentInfoENS0_16expr_op_iteratorES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.216") align 8 %i.cx, ptr %i.fv, ptr %i.gb) #12
  br label %_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit

bb.aa:                                            ; preds = %_ZNK4llvm10DILocation12getInlinedAtEv.exit
  store i8 0, ptr %i.cy, align 8, !tbaa !230
  br label %_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit

_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit: ; preds = %bb.z, %bb.aa
  store ptr %.0.i.i, ptr %i.cz, align 8, !tbaa !231
  %i.gc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.gc, 0 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 40 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 48 ; 3 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !29 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 52
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !30
  %.not.i103 = icmp ult i32 %i.gf, %i.gh
  br i1 %.not.i103, label %bb.ac, label %bb.ab, !prof !175

bb.ab:                                            ; preds = %_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull %i.dt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit104

bb.ac:                                            ; preds = %_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit
  %i.gi = zext i32 %i.gf to i64
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !28
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gi
  store ptr %i.dt, ptr %i.gk, align 1
  %i.gl = load i32, ptr %i.ge, align 8, !tbaa !29
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %i.ge, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit104

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit104: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit104, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEES3_EEbOT_RKT0_.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %.055178, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gn, %i.cw
  br i1 %.not, label %._crit_edge180, label %bb.p

bb.ae:                                            ; preds = %.lr.ph189, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117
  %.054187 = phi ptr [ %i.dk, %.lr.ph189 ], [ %i.kx, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117 ] ; 2 uses
  %i.go = load ptr, ptr %.054187, align 8, !tbaa !221 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.gp = call noundef ptr @_ZNK4llvm12MachineInstr16getDebugVariableEv(ptr noundef nonnull align 8 dereferenceable(80) %i.go) #12
  %i.gq = call noundef ptr @_ZNK4llvm12MachineInstr18getDebugExpressionEv(ptr noundef nonnull align 8 dereferenceable(80) %i.go) #12 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !222 ; 3 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -16 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8            ; 3 uses
  %i.gv = and i64 %i.gu, 2
  %.not.i.i.i.i105 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i.i.i105, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i111, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i106

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i111:   ; preds = %bb.ae
  %i.gw = and i64 %i.gu, 960
  %i.gx = icmp eq i64 %i.gw, 128
  br i1 %i.gx, label %bb.af, label %_ZNK4llvm10DILocation12getInlinedAtEv.exit112

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i106: ; preds = %bb.ae
  %i.gy = getelementptr inbounds i8, ptr %i.gs, i64 -24
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !29
  %i.ha = icmp eq i32 %i.gz, 2
  br i1 %i.ha, label %.thread.i.i108, label %_ZNK4llvm10DILocation12getInlinedAtEv.exit112

.thread.i.i108:                                   ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i106
  %i.hb = getelementptr inbounds i8, ptr %i.gs, i64 -32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !28
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i109

bb.af:                                            ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i111
  %i.hd = lshr i64 %i.gu, 2
  %i.he = and i64 %i.hd, 15
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hf
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i109

_ZNK4llvm6MDNode10getOperandEj.exit.i.i109:       ; preds = %bb.af, %.thread.i.i108
  %.sroa.0.0.i.i.i.i110 = phi ptr [ %i.hg, %bb.af ], [ %i.hc, %.thread.i.i108 ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i110, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !268
  br label %_ZNK4llvm10DILocation12getInlinedAtEv.exit112

_ZNK4llvm10DILocation12getInlinedAtEv.exit112:    ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i111, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i106, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i109
  %.0.i.i107 = phi ptr [ %i.hi, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i109 ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i111 ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i106 ]
  store ptr %i.gp, ptr %6, align 8, !tbaa !229
  %.not.i113 = icmp eq ptr %i.gq, null
  br i1 %.not.i113, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm10DILocation12getInlinedAtEv.exit112
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !271, !noalias !274 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !273, !noalias !274
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hp
  call void @_ZN4llvm12DIExpression15getFragmentInfoENS0_16expr_op_iteratorES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.216") align 8 %i.do, ptr %i.hk, ptr %i.hq) #12
  br label %_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit114

bb.ah:                                            ; preds = %_ZNK4llvm10DILocation12getInlinedAtEv.exit112
  store i8 0, ptr %i.dp, align 8, !tbaa !230
  br label %_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit114

_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit114: ; preds = %bb.ag, %bb.ah
  store ptr %.0.i.i107, ptr %i.dq, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E7find_asIS2_EENS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::DenseMapIterator") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(40) %6)
  %i.hr = load i32, ptr %4, align 8, !noalias !275
  %i.hs = and i32 %i.hr, 1
  %.not.i.i.i.i115 = icmp eq i32 %i.hs, 0         ; 2 uses
  %i.ht = load ptr, ptr %i.dr, align 8, !noalias !275
  %i.hu = select i1 %.not.i.i.i.i115, ptr %i.ht, ptr %i.dr
  %i.hv = load i32, ptr %i.ds, align 8, !noalias !275
  %i.hw = select i1 %.not.i.i.i.i115, i32 %i.hv, i32 4
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [72 x i8], ptr %i.hu, i64 %i.hx
  %i.hz = load ptr, ptr %7, align 8, !tbaa !234   ; 3 uses
  %i.ia = icmp eq ptr %i.hz, %i.hy
  br i1 %i.ia, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit114
  %i.ib = load i32, ptr %i.db, align 8, !tbaa !29 ; 2 uses
  %i.ic = load i32, ptr %i.dc, align 4, !tbaa !30
  %.not.i116 = icmp ult i32 %i.ib, %i.ic
  br i1 %.not.i116, label %bb.ak, label %bb.aj, !prof !175

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.go)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.ak:                                            ; preds = %bb.ai
  %i.id = zext i32 %i.ib to i64
  %i.ie = load ptr, ptr %0, align 8, !tbaa !28
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.id
  store ptr %i.go, ptr %i.if, align 1
  %i.ig = load i32, ptr %i.db, align 8, !tbaa !29
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.db, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.al:                                            ; preds = %_ZN4llvm13DebugVariableC2EPKNS_15DILocalVariableEPKNS_12DIExpressionEPKNS_10DILocationE.exit114
  %i.ii = load ptr, ptr %1, align 8, !tbaa !27
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 52
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !174
  %.off.i = add i32 %i.ik, -753
  %switch.i = icmp ult i32 %.off.i, 8
  br i1 %switch.i, label %bb.am, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.am:                                            ; preds = %bb.al
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !28 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.io = load i32, ptr %i.in, align 8, !tbaa !29 ; 2 uses
  %i.ip = zext i32 %i.io to i64
  %.idx192 = shl nuw nsw i64 %i.ip, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 %.idx192
  %.not62181 = icmp eq i32 %i.io, 0
  br i1 %.not62181, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.am, %_ZL17isSameScalarConstPKN4llvm12MachineInstrES2_.exit
  %.052182 = phi ptr [ %i.kp, %_ZL17isSameScalarConstPKN4llvm12MachineInstrES2_.exit ], [ %i.im, %bb.am ] ; 2 uses
  %i.ir = load ptr, ptr %.052182, align 8, !tbaa !221 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 52
  %i.it = load i32, ptr %i.is, align 4, !tbaa !174
  %i.iu = icmp eq i32 %i.it, 14
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !167
  %.sroa.05.0.idx.i.i = select i1 %i.iu, i64 0, i64 64
  %.sroa.05.0.i.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.sroa.05.0.idx.i.i ; 2 uses
  %i.ix = load i32, ptr %.sroa.05.0.i.i, align 8
  %i.iy = and i32 %i.ix, 255
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.an, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.an:                                            ; preds = %.lr.ph184
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !168
  %i.jc = call noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.dj, i32 %i.jb) #12 ; 3 uses
  %.not63 = icmp eq ptr %i.jc, null
  br i1 %.not63, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jd = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 52
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !174 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 52
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !174 ; 2 uses
  %.not.i118 = icmp eq i32 %i.jf, %i.jh
  %.off.i.i = add i32 %i.jf, -753
  %.off.i19.i = add i32 %i.jh, -753
  %i.ji = or i32 %.off.i19.i, %.off.i.i
  %i.jj = icmp ult i32 %i.ji, 8
  %or.cond23.i = and i1 %.not.i118, %i.jj
  br i1 %or.cond23.i, label %bb.ap, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.ap:                                            ; preds = %bb.ao
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !167 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !167 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32 ; 3 uses
  %i.jq = load i32, ptr %i.jm, align 8
  %trunc.i = trunc i32 %i.jq to i8
  switch i8 %trunc.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117 [
    i8 1, label %bb.aq
    i8 3, label %bb.as
    i8 10, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.jr = load i32, ptr %i.jp, align 8
  %i.js = and i32 %i.jr, 255
  %i.jt = icmp eq i32 %i.js, 1
  br i1 %i.jt, label %bb.ar, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.ar:                                            ; preds = %bb.aq
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !168
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !168
  %i.jy = icmp eq i64 %i.jv, %i.jx
  br i1 %i.jy, label %_ZL17isSameScalarConstPKN4llvm12MachineInstrES2_.exit, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.as:                                            ; preds = %bb.ap
  %i.jz = load i32, ptr %i.jp, align 8
  %i.ka = and i32 %i.jz, 255
  %i.kb = icmp eq i32 %i.ka, 3
  br i1 %i.kb, label %bb.at, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.at:                                            ; preds = %bb.as
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !168
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !168
  %i.kg = icmp eq ptr %i.kd, %i.kf
  br i1 %i.kg, label %_ZL17isSameScalarConstPKN4llvm12MachineInstrES2_.exit, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.au:                                            ; preds = %bb.ap
  %i.kh = load i32, ptr %i.jp, align 8
  %i.ki = and i32 %i.kh, 255
  %i.kj = icmp eq i32 %i.ki, 10
  br i1 %i.kj, label %bb.av, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.av:                                            ; preds = %bb.au
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !168
  %i.km = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !168
  %i.ko = icmp eq ptr %i.kl, %i.kn
  br i1 %i.ko, label %_ZL17isSameScalarConstPKN4llvm12MachineInstrES2_.exit, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

_ZL17isSameScalarConstPKN4llvm12MachineInstrES2_.exit: ; preds = %bb.av, %bb.ar, %bb.at
  %i.kp = getelementptr inbounds nuw i8, ptr %.052182, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %i.kp, %i.iq
  br i1 %.not62, label %._crit_edge185, label %.lr.ph184

._crit_edge185:                                   ; preds = %_ZL17isSameScalarConstPKN4llvm12MachineInstrES2_.exit, %bb.am
  %i.kq = load i32, ptr %i.db, align 8, !tbaa !29 ; 2 uses
  %i.kr = load i32, ptr %i.dc, align 4, !tbaa !30
  %.not.i119 = icmp ult i32 %i.kq, %i.kr
  br i1 %.not.i119, label %bb.ax, label %bb.aw, !prof !175

bb.aw:                                            ; preds = %._crit_edge185
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.go)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

bb.ax:                                            ; preds = %._crit_edge185
  %i.ks = zext i32 %i.kq to i64
  %i.kt = load ptr, ptr %0, align 8, !tbaa !28
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ks
  store ptr %i.go, ptr %i.ku, align 1
  %i.kv = load i32, ptr %i.db, align 8, !tbaa !29
  %i.kw = add i32 %i.kv, 1
  store i32 %i.kw, ptr %i.db, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117: ; preds = %.lr.ph184, %bb.an, %bb.ao, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ax, %bb.aw, %bb.ak, %bb.aj, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.kx = getelementptr inbounds nuw i8, ptr %.054187, i64 8 ; 2 uses
  %.not61 = icmp eq ptr %i.kx, %i.dn
  br i1 %.not61, label %._crit_edge190, label %bb.ae

._crit_edge190:                                   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit117, %._crit_edge180
  call void @_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge, %._crit_edge190, %bb.i
  %i.ky = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.g
  br i1 %i.kz, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef %i.ky) #12
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj8EED2Ev.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock11isSuccessorEPKS0_(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm12MachineInstr16getDebugVariableEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm12MachineInstr18getDebugExpressionEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !169  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.y) #12
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i5.i, -1
  %i.ac = and i32 %i.ab, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !276

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !277

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ad = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.d, label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17deallocateBucketsEv.exit

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEv.exit
  %i.af = load i32, ptr %i.c, align 8, !tbaa !168 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !168
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 72
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #12
  br label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E10destroyAllEv.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm28WebAssemblyDebugValueManager17isInsertSamePlaceEPNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %.preheader.preheader, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread

.preheader.preheader:                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !172  ; 3 uses
  %.not1122 = icmp eq ptr %i.g, %1
  br i1 %.not1122, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29   ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %.idx4.i = shl nuw nsw i64 %i.l, 3              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx4.i ; 2 uses
  %i.n = lshr i64 %i.l, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.i, i64 %i.o ; 5 uses
  %i.p = and i32 %i.k, 3
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %._crit_edge.i.i.i.i.us

._crit_edge.i.i.i.i.us:                           ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us, %.lr.ph.split.us
  %.sroa.06.023.us = phi ptr [ %i.g, %.lr.ph.split.us ], [ %i.ai, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us ] ; 9 uses
  switch i32 %i.k, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread [
    i32 3, label %bb.b
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.us
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.us
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.us
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !221
  %i.s = icmp eq ptr %i.r, %.sroa.06.023.us
  br i1 %i.s, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.us, label %._crit_edge._crit_edge.i.i.i.i.us

._crit_edge._crit_edge.i.i.i.i.us:                ; preds = %bb.b, %._crit_edge.i.i.i.i.us
  %.1.i.i.i.i.us = phi ptr [ %i.i, %._crit_edge.i.i.i.i.us ], [ %i.q, %bb.b ] ; 3 uses
  %i.t = load ptr, ptr %.1.i.i.i.i.us, align 8, !tbaa !221
  %i.u = icmp eq ptr %i.t, %.sroa.06.023.us
  br i1 %i.u, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.us
  %i.v = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.us, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.us

._crit_edge._crit_edge52.i.i.i.i.us:              ; preds = %bb.c, %._crit_edge.i.i.i.i.us
  %.2.i.i.i.i.us = phi ptr [ %i.v, %bb.c ], [ %i.i, %._crit_edge.i.i.i.i.us ] ; 2 uses
  %i.w = load ptr, ptr %.2.i.i.i.i.us, align 8, !tbaa !221
  %i.x = icmp eq ptr %i.w, %.sroa.06.023.us
  br i1 %i.x, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.us, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.us: ; preds = %._crit_edge._crit_edge52.i.i.i.i.us, %._crit_edge._crit_edge.i.i.i.i.us, %bb.b
  %.028.i.i.i.i.us = phi ptr [ %.1.i.i.i.i.us, %._crit_edge._crit_edge.i.i.i.i.us ], [ %i.i, %bb.b ], [ %.2.i.i.i.i.us, %._crit_edge._crit_edge52.i.i.i.i.us ]
  %.not12.us = icmp eq ptr %.028.i.i.i.i.us, %i.m
  br i1 %.not12.us, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.023.us) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.us = load i64, ptr %.sroa.06.023.us, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.us, 4
  %.not.i.i.i.us = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.023.us, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !176
  %i.ab = and i32 %i.aa, 8
  %.not34.i.i.i.us = icmp eq i32 %i.ab, 0
  br i1 %.not34.i.i.i.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us
  %.sroa.0.05.i.i.i.us = phi ptr [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us ], [ %.sroa.06.023.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.us, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !172 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !176
  %i.ag = and i32 %i.af, 8
  %.not3.i.i.i.us = icmp eq i32 %i.ag, 0
  br i1 %.not3.i.i.i.us, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us, %bb.d
  %.sroa.0.1.i.i.i.us = phi ptr [ %.sroa.06.023.us, %bb.d ], [ %.sroa.06.023.us, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.us ], [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.us, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !172 ; 2 uses
  %.not11.us = icmp eq ptr %i.ai, %1
  br i1 %.not11.us, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread, label %._crit_edge.i.i.i.i.us, !llvm.loop !278

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %scevgep.i.i.i.i, i64 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.06.023 = phi ptr [ %i.g, %.lr.ph.split ], [ %i.bs, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ] ; 13 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %i.aw, %bb.i ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.av, %bb.i ] ; 9 uses
  %i.ak = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !221
  %i.al = icmp eq ptr %i.ak, %.sroa.06.023
  br i1 %i.al, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !221
  %i.ao = icmp eq ptr %i.an, %.sroa.06.023
  br i1 %i.ao, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !221
  %i.ar = icmp eq ptr %i.aq, %.sroa.06.023
  br i1 %i.ar, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit46, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !221
  %i.au = icmp eq ptr %i.at, %.sroa.06.023
  br i1 %i.au, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit48, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.aw = add nsw i64 %.047.i.i.i.i, -1
  %i.ax = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.ax, label %bb.e, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !279

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  switch i32 %i.p, label %default.unreachable [
    i32 3, label %bb.j
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
    i32 0, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread
  ]

bb.j:                                             ; preds = %._crit_edge.loopexit.i.i.i.i
  %i.ay = load ptr, ptr %scevgep.i.i.i.i, align 8, !tbaa !221
  %i.az = icmp eq ptr %i.ay, %.sroa.06.023
  br i1 %i.az, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit, label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.j, %._crit_edge.loopexit.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ba = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !221
  %i.bb = icmp eq ptr %i.ba, %.sroa.06.023
  br i1 %i.bb, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.k
  %.2.i.i.i.i = phi ptr [ %i.bc, %bb.k ], [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ] ; 2 uses
  %i.bd = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !221
  %i.be = icmp eq ptr %i.bd, %.sroa.06.023
  br i1 %i.be, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit46: ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit48: ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit: ; preds = %bb.e, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit46, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit48, %bb.j, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %scevgep.i.i.i.i, %bb.j ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.bh, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit48 ], [ %i.bg, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit46 ], [ %i.bf, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.e ]
  %.not12 = icmp eq ptr %.028.i.i.i.i, %i.m
  br i1 %.not12, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.023) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.06.023, align 8
  %i.bi = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.023, i64 44
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !176
  %i.bl = and i32 %i.bk, 8
  %.not34.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.bn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %.sroa.06.023, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !172 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !176
  %i.bq = and i32 %i.bp, 8
  %.not3.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %bb.l, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.06.023, %bb.l ], [ %.sroa.06.023, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.bn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !172 ; 2 uses
  %.not11 = icmp eq ptr %i.bs, %1
  br i1 %.not11, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !278

default.unreachable:                              ; preds = %._crit_edge.loopexit.i.i.i.i
  unreachable

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.loopexit.i.i.i.i, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %._crit_edge._crit_edge52.i.i.i.i.us, %._crit_edge.i.i.i.i.us, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.us, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us, %.preheader.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader.preheader ], [ false, %._crit_edge._crit_edge52.i.i.i.i.us ], [ false, %._crit_edge.i.i.i.i.us ], [ false, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit.us ], [ true, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.us ], [ false, %._crit_edge._crit_edge52.i.i.i.i ], [ false, %._crit_edge.loopexit.i.i.i.i ], [ false, %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_12MachineInstrELj1EEENS_26MachineInstrBundleIteratorIS2_Lb0EEEEEbOT_RKT0_.exit ], [ true, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm28WebAssemblyDebugValueManager4sinkEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm28WebAssemblyDebugValueManager17isInsertSamePlaceEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1)
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZNK4llvm28WebAssemblyDebugValueManager22getSinkableDebugValuesEPNS_12MachineInstrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1)
  %i.f = load ptr, ptr %0, align 8, !tbaa !27     ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173  ; 2 uses
  %.not = icmp eq ptr %i.h, %i.c
  br i1 %.not, label %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %.sroa.016.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !235
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.08.012.i = load ptr, ptr %i.j, align 8, !tbaa !172 ; 2 uses
  %.not13.not.i = icmp eq ptr %.sroa.08.012.i, %i.k
  br i1 %.not13.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.08.014.i = phi ptr [ %.sroa.08.0.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.08.012.i, %bb.c ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222
  %i.n = icmp eq ptr %i.m, %.sroa.016.0.copyload
  br i1 %i.n, label %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.014.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.08.014.i, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !176
  %i.r = and i32 %i.q, 8
  %.not34.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.t, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.08.014.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !172  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !176
  %i.w = and i32 %i.v, 8
  %.not3.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %bb.d
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.08.014.i, %bb.d ], [ %.sroa.08.014.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.t, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.08.0.i = load ptr, ptr %i.x, align 8, !tbaa !172 ; 2 uses
  %.not.not.i = icmp eq ptr %.sroa.08.0.i, %i.k
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.c
  store ptr null, ptr %i.i, align 8, !tbaa !235
  br label %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit

_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit: ; preds = %.lr.ph.i, %.loopexit, %bb.b
  %.not.i = icmp eq ptr %1, %i.f
  br i1 %.not.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !176
  %i.ab = and i32 %i.aa, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.f, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !172 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !176
  %i.ag = and i32 %i.af, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %.preheader.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.f, %.preheader.i ], [ %i.f, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !172 ; 7 uses
  %i.aj = icmp eq ptr %i.f, %i.ai
  %i.ak = icmp eq ptr %1, %i.ai
  %or.cond.i.i.i = or i1 %i.aj, %i.ak
  br i1 %or.cond.i.i.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr nonnull %i.f, ptr %i.ai) #12
  %.0.copyload.i.i.i.i.i.i.i.i.i.i5.i = load i64, ptr %i.ai, align 8
  %i.an = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i5.i, -8 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.ap = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i, -8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ai, ptr %i.ar, align 8, !tbaa !172
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.as = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8
  %i.at = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i, 7
  %i.au = or disjoint i64 %i.at, %i.as
  store i64 %i.au, ptr %i.ai, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.av = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %1, ptr %i.ax, align 8, !tbaa !172
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.ay = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i, 7
  %i.az = or disjoint i64 %i.ay, %i.av
  store i64 %i.az, ptr %i.f, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.f, ptr %i.ba, align 8, !tbaa !172
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.bb = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i, 7
  %i.bc = or disjoint i64 %i.bb, %i.an
  store i64 %i.bc, ptr %1, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit: ; preds = %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !29 ; 2 uses
  %.not.i33 = icmp eq i32 %i.bf, 0
  br i1 %.not.i33, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.bg, ptr %3, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 1, ptr %i.bi, align 4, !tbaa !30
  %i.bj = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !29 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.idx = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  %.not3143 = icmp eq i32 %i.bl, 0
  br i1 %.not3143, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.f
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.bp = zext i32 %i.bf to i64
  %.idx5063 = shl nuw nsw i64 %i.bp, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx5063
  br label %.lr.ph48.preheader

.lr.ph:                                           ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %.pre = load i32, ptr %i.be, align 8, !tbaa !29 ; 2 uses
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.bt = zext i32 %.pre to i64
  %.idx50 = shl nuw nsw i64 %i.bt, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx50
  %.not3245 = icmp eq i32 %.pre, 0
  br i1 %.not3245, label %._crit_edge49, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %._crit_edge.thread, %._crit_edge
  %i.bv = phi ptr [ %i.bq, %._crit_edge.thread ], [ %i.bu, %._crit_edge ]
  %i.bw = phi ptr [ %i.bo, %._crit_edge.thread ], [ %i.bs, %._crit_edge ]
  br label %.lr.ph48

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %.02944 = phi ptr [ %i.bj, %.lr.ph ], [ %i.cp, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit ] ; 2 uses
  %i.bx = load ptr, ptr %.02944, align 8, !tbaa !221
  %i.by = call noundef ptr @_ZN4llvm15MachineFunction17CloneMachineInstrEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef %i.bx) #12 ; 8 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef %i.by) #12
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.bz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %1, ptr %i.cb, align 8, !tbaa !172
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.by, align 8
  %i.cc = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.cd = or disjoint i64 %i.cc, %i.bz
  store i64 %i.cd, ptr %i.by, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.by, ptr %i.ce, align 8, !tbaa !172
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.cf = ptrtoint ptr %i.by to i64
  %i.cg = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.ch = or disjoint i64 %i.cg, %i.cf
  store i64 %i.ch, ptr %1, align 8
  %i.ci = load i32, ptr %i.bh, align 8, !tbaa !29 ; 2 uses
  %i.cj = load i32, ptr %i.bi, align 4, !tbaa !30
  %.not.i34 = icmp ult i32 %i.ci, %i.cj
  br i1 %.not.i34, label %bb.i, label %bb.h, !prof !175

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.by)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ck = zext i32 %i.ci to i64
  %i.cl = load ptr, ptr %3, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  store ptr %i.by, ptr %i.cm, align 1
  %i.cn = load i32, ptr %i.bh, align 8, !tbaa !29
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.bh, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.h, %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.02944, i64 8 ; 2 uses
  %.not31 = icmp eq ptr %i.cp, %i.bn
  br i1 %.not31, label %._crit_edge, label %bb.g

._crit_edge49:                                    ; preds = %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, %._crit_edge
  call void @_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.cq = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bg
  br i1 %i.cr, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge49
  call void @free(ptr noundef %i.cq) #12
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit: ; preds = %._crit_edge49, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.m

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit
  %.046 = phi ptr [ %i.dk, %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit ], [ %i.bw, %.lr.ph48.preheader ] ; 2 uses
  %i.cs = load ptr, ptr %.046, align 8, !tbaa !221 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 52
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !174
  %i.cv = icmp eq i32 %i.cu, 14                   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !167
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cz = load i24, ptr %i.cy, align 8            ; 2 uses
  %i.da = icmp ne i24 %i.cz, 0
  %..i.i.i = zext i1 %i.da to i64
  %i.db = zext i24 %i.cz to i64
  %i.dc = add nsw i64 %i.db, -2
  %.sroa.5.0.i.i = select i1 %i.cv, i64 %..i.i.i, i64 %i.dc ; 2 uses
  %.sroa.05.0.idx.i.i = select i1 %i.cv, i64 0, i64 64
  %.sroa.05.0.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.05.0.idx.i.i ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.5.0.i.i, 5
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 %.idx.i
  %.not11.i = icmp eq i64 %.sroa.5.0.i.i, 0
  br i1 %.not11.i, label %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.lr.ph48, %bb.l
  %.012.i = phi ptr [ %i.dj, %bb.l ], [ %.sroa.05.0.i.i, %.lr.ph48 ] ; 5 uses
  %i.de = load i32, ptr %.012.i, align 8
  %i.df = and i32 %i.de, 255
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i35
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.012.i, i32 0) #12
  %i.dh = load i32, ptr %.012.i, align 8
  %i.di = and i32 %i.dh, -1048321
  store i32 %i.di, ptr %.012.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i35
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i, i64 32 ; 2 uses
  %.not.i36 = icmp eq ptr %i.dj, %i.dd
  br i1 %.not.i36, label %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, label %.lr.ph.i35

_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit: ; preds = %bb.l, %.lr.ph48
  %i.dk = getelementptr inbounds nuw i8, ptr %.046, i64 8 ; 2 uses
  %.not32 = icmp eq ptr %i.dk, %i.bv
  br i1 %.not32, label %._crit_edge49, label %.lr.ph48

bb.m:                                             ; preds = %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_.exit, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit
  %i.dl = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit37, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.dl) #12
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit37

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit37: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit37
  ret void
}

declare noundef ptr @_ZN4llvm15MachineFunction17CloneMachineInstrEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %0, align 8, !tbaa !236
  store ptr %i.b, ptr %1, align 8, !tbaa !236
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !169
  %i.k = load i32, ptr %i.i, align 8, !tbaa !169
  store i32 %i.k, ptr %i.h, align 8, !tbaa !169
  store i32 %i.j, ptr %i.i, align 8, !tbaa !169
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !169
  %i.o = load i32, ptr %i.m, align 4, !tbaa !169
  store i32 %i.o, ptr %i.l, align 4, !tbaa !169
  store i32 %i.n, ptr %i.m, align 4, !tbaa !169
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = icmp ugt i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %i.q to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c, i64 noundef %i.u, i64 noundef 8) #12
  br label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit: ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !30
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit40

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit
  %i.aa = zext i32 %i.w to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef 8) #12
  %.pre = load i32, ptr %i.v, align 8, !tbaa !29
  br label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit40

_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit40: ; preds = %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit, %bb.g
  %i.ac = phi i32 [ %i.w, %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit ], [ %.pre, %bb.g ] ; 6 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !29  ; 6 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp ugt i32 %i.ac, %i.ae
  %spec.select43 = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.ae) ; 5 uses
  %spec.select = zext i32 %spec.select43 to i64   ; 10 uses
  %.not48 = icmp eq i32 %spec.select43, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit40
  %i.ah = load ptr, ptr %0, align 8, !tbaa !28    ; 6 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !28    ; 6 uses
  %min.iters.check = icmp ult i32 %spec.select43, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aj = shl nuw nsw i64 %spec.select, 3         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.aj
  %scevgep59 = getelementptr i8, ptr %i.ai, i64 %i.aj
  %bound0 = icmp ult ptr %i.ah, %scevgep59
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %spec.select, 4294967292       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !221, !alias.scope !285, !noalias !286
  %wide.load60 = load <2 x ptr>, ptr %i.am, align 8, !tbaa !221, !alias.scope !285, !noalias !286
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load61 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !221, !alias.scope !286
  %wide.load62 = load <2 x ptr>, ptr %i.an, align 8, !tbaa !221, !alias.scope !286
  store <2 x ptr> %wide.load61, ptr %i.ak, align 8, !tbaa !221, !alias.scope !285, !noalias !286
  store <2 x ptr> %wide.load62, ptr %i.am, align 8, !tbaa !221, !alias.scope !285, !noalias !286
  store <2 x ptr> %wide.load, ptr %i.al, align 8, !tbaa !221, !alias.scope !286
  store <2 x ptr> %wide.load60, ptr %i.an, align 8, !tbaa !221, !alias.scope !286
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %spec.select
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.03649.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %spec.select, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.03649.ph ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.03649.ph ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !221
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !221
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !221
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !221
  %i.at = or disjoint i64 %.03649.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03649.unr = phi i64 [ %.03649.ph, %scalar.ph.preheader ], [ %i.at, %scalar.ph.prol ]
  %i.au = add nsw i64 %spec.select, -1
  %i.av = icmp eq i64 %.03649.ph, %i.au
  br i1 %i.av, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE7reserveEm.exit40
  br i1 %i.ag, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_copyIPS2_S5_EEvT_S6_T0_.exit, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03649 = phi i64 [ %i.bf, %scalar.ph ], [ %.03649.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.03649 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.03649 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !221
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !221
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !221
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !221
  %i.ba = add nuw nsw i64 %.03649, 1              ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ba ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !221
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !221
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !221
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !221
  %i.bf = add nuw nsw i64 %.03649, 2              ; 2 uses
  %.not.1 = icmp eq i64 %i.bf, %spec.select
  br i1 %.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !284

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_copyIPS2_S5_EEvT_S6_T0_.exit: ; preds = %._crit_edge
  %i.bg = sub nuw i32 %i.ac, %i.ae
  %i.bh = load ptr, ptr %0, align 8, !tbaa !28
  %.idx45 = shl nuw nsw i64 %spec.select, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx45
  %i.bj = load ptr, ptr %1, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.af
  %i.bl = sub nuw nsw i64 %i.ad, %spec.select
  %gepdiff46 = shl nuw nsw i64 %i.bl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 8 %i.bi, i64 %gepdiff46, i1 false)
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !29
  %i.bn = add i32 %i.bg, %i.bm
  store i32 %i.bn, ptr %i.p, align 8, !tbaa !29
  store i32 %spec.select43, ptr %i.v, align 8, !tbaa !29
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.bo = icmp ugt i32 %i.ae, %i.ac
  br i1 %i.bo, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_copyIPS2_S5_EEvT_S6_T0_.exit42, label %bb.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_copyIPS2_S5_EEvT_S6_T0_.exit42: ; preds = %bb.h
  %i.bp = sub nuw i32 %i.ae, %i.ac
  %i.bq = load ptr, ptr %1, align 8, !tbaa !28
  %.idx44 = shl nuw nsw i64 %spec.select, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx44
  %i.bs = load ptr, ptr %0, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ad
  %i.bu = sub nuw nsw i64 %i.af, %spec.select
  %gepdiff = shl nuw nsw i64 %i.bu, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 8 %i.br, i64 %gepdiff, i1 false)
  %i.bv = load i32, ptr %i.v, align 8, !tbaa !29
  %i.bw = add i32 %i.bp, %i.bv
  store i32 %i.bw, ptr %i.v, align 8, !tbaa !29
  store i32 %spec.select43, ptr %i.p, align 8, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_copyIPS2_S5_EEvT_S6_T0_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_copyIPS2_S5_EEvT_S6_T0_.exit42, %bb.h, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm28WebAssemblyDebugValueManager9cloneSinkEPNS_12MachineInstrENS_8RegisterEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, ptr noundef %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.230", align 8 ; 9 uses
  %5 = alloca %"class.llvm::SmallVector", align 8 ; 7 uses
  %6 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %7 = alloca %"class.llvm::iterator_range.232", align 8 ; 11 uses
  %8 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 12 uses
  %9 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZNK4llvm28WebAssemblyDebugValueManager22getSinkableDebugValuesEPNS_12MachineInstrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.g, align 4, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EEC2EONS_15SmallVectorImplIS2_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EEC2EONS_15SmallVectorImplIS2_EE.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EEC2EONS_15SmallVectorImplIS2_EE.exit: ; preds = %bb.a, %bb.b
  %i.k = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EEC2EONS_15SmallVectorImplIS2_EE.exit
  call void @free(ptr noundef %i.k) #12
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj6EEC2EONS_15SmallVectorImplIS2_EE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br i1 %3, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !27
  %i.o = call noundef ptr @_ZN4llvm15MachineFunction17CloneMachineInstrEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef %i.n) #12 ; 8 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !173
  %.not = icmp eq ptr %i.r, %i.b
  br i1 %.not, label %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.023.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !235
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.08.012.i = load ptr, ptr %i.t, align 8, !tbaa !172 ; 2 uses
  %.not13.not.i = icmp eq ptr %.sroa.08.012.i, %i.u
  br i1 %.not13.not.i, label %.loopexit65, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.08.014.i = phi ptr [ %.sroa.08.0.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.08.012.i, %bb.e ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !222
  %i.x = icmp eq ptr %i.w, %.sroa.023.0.copyload
  br i1 %i.x, label %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.014.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.08.014.i, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !176
  %i.ab = and i32 %i.aa, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.08.014.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !172 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !176
  %i.ag = and i32 %i.af, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %bb.f
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.08.014.i, %bb.f ], [ %.sroa.08.014.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.08.0.i = load ptr, ptr %i.ah, align 8, !tbaa !172 ; 2 uses
  %.not.not.i = icmp eq ptr %.sroa.08.0.i, %i.u
  br i1 %.not.not.i, label %.loopexit65, label %.lr.ph.i

.loopexit65:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr null, ptr %i.ai, align 8, !tbaa !235
  br label %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit

_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit: ; preds = %.lr.ph.i, %.loopexit65, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !31
  %i.al = icmp ne i32 %2, %i.ak
  %i.am = icmp ne i32 %2, 0
  %or.cond = and i1 %i.am, %i.al
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !167
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i32 %2) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZL15hasSameDebugLocPKN4llvm17MachineBasicBlockENS_8DebugLocE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef %i.o) #12
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.aq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %1, ptr %i.as, align 8, !tbaa !172
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.at = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.au = or disjoint i64 %i.at, %i.aq
  store i64 %i.au, ptr %i.o, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.o, ptr %i.av, align 8, !tbaa !172
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.aw = ptrtoint ptr %i.o to i64
  %i.ax = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.ay = or disjoint i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %1, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.ba, 0
  %.pre81 = load ptr, ptr %4, align 8, !tbaa !28  ; 3 uses
  br i1 %.not.i, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bb, ptr %6, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 1, ptr %i.bd, align 4, !tbaa !30
  %i.be = load i32, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre81, i64 %.idx
  %.not4166 = icmp eq i32 %i.be, 0
  br i1 %.not4166, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %.pre79.pre = load ptr, ptr %6, align 8, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.pre79 = phi ptr [ %.pre79.pre, %._crit_edge.loopexit ], [ %i.bb, %bb.j ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !31
  %i.bk = icmp ne i32 %2, %i.bj
  %i.bl = icmp ne i32 %2, 0
  %or.cond63 = and i1 %i.bl, %i.bk
  br i1 %or.cond63, label %bb.n, label %.loopexit

bb.k:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit
  %.03967 = phi ptr [ %.pre81, %.lr.ph ], [ %i.ce, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit ] ; 2 uses
  %i.bm = load ptr, ptr %.03967, align 8, !tbaa !221
  %i.bn = call noundef ptr @_ZN4llvm15MachineFunction17CloneMachineInstrEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef %i.bm) #12 ; 8 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef %i.bn) #12
  %.0.copyload.i.i.i.i.i.i.i.i.i43 = load i64, ptr %1, align 8
  %i.bo = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i43, -8 ; 2 uses
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %1, ptr %i.bq, align 8, !tbaa !172
  %.0.copyload.i.i.i.i9.i.i.i.i.i44 = load i64, ptr %i.bn, align 8
  %i.br = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i44, 7
  %i.bs = or disjoint i64 %i.br, %i.bo
  store i64 %i.bs, ptr %i.bn, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bn, ptr %i.bt, align 8, !tbaa !172
  %.0.copyload.i.i.i.i10.i.i.i.i.i45 = load i64, ptr %1, align 8
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i45, 7
  %i.bw = or disjoint i64 %i.bv, %i.bu
  store i64 %i.bw, ptr %1, align 8
  %i.bx = load i32, ptr %i.bc, align 8, !tbaa !29 ; 2 uses
  %i.by = load i32, ptr %i.bd, align 4, !tbaa !30
  %.not.i46 = icmp ult i32 %i.bx, %i.by
  br i1 %.not.i46, label %bb.m, label %bb.l, !prof !175

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.bn)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

bb.m:                                             ; preds = %bb.k
  %i.bz = zext i32 %i.bx to i64
  %i.ca = load ptr, ptr %6, align 8, !tbaa !28
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.bn, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.bc, align 8, !tbaa !29
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.bc, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit: ; preds = %bb.l, %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %.03967, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.ce, %i.bg
  br i1 %.not41, label %._crit_edge.loopexit, label %bb.k

bb.n:                                             ; preds = %._crit_edge
  %i.cf = load i32, ptr %i.bc, align 8, !tbaa !29 ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %.idx75 = shl nuw nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre79, i64 %.idx75
  %.not4271 = icmp eq i32 %i.cf, 0
  br i1 %.not4271, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph74, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit
  %.072 = phi ptr [ %.pre79, %.lr.ph74 ], [ %i.du, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit ] ; 2 uses
  %i.cw = load ptr, ptr %.072, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %.sroa.01.0.copyload = load i32, ptr %i.bi, align 8, !tbaa !169
  call void @_ZN4llvm12MachineInstr22getDebugOperandsForRegENS_8RegisterE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.232") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.cw, i32 %.sroa.01.0.copyload) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.cx = load i64, ptr %7, align 8, !noalias !293
  store i64 %i.cx, ptr %8, align 8, !alias.scope !293
  %i.cy = load ptr, ptr %i.cj, align 8, !tbaa !241, !noalias !293
  store ptr %i.cy, ptr %i.ci, align 8, !tbaa !241, !alias.scope !293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i8 0, i64 32, i1 false), !alias.scope !293
  %i.cz = load ptr, ptr %i.cl, align 8, !tbaa !242, !noalias !293 ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i32 noundef 2) #12, !inline_history !2 ; 0 uses
  %i.db = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !236, !noalias !293
  store <2 x ptr> %i.db, ptr %i.co, align 8, !tbaa !236, !alias.scope !293
  br label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit

_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.dc = load i64, ptr %i.cp, align 8, !noalias !294 ; 2 uses
  store i64 %i.dc, ptr %9, align 8, !alias.scope !294
  %i.dd = load ptr, ptr %i.cr, align 8, !tbaa !241, !noalias !294
  store ptr %i.dd, ptr %i.cq, align 8, !tbaa !241, !alias.scope !294
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i8 0, i64 32, i1 false), !alias.scope !294
  %i.de = load ptr, ptr %i.ct, align 8, !tbaa !242, !noalias !294 ; 2 uses
  %.not.i.i.not.i.i.i.i47 = icmp eq ptr %i.de, null
  %i.df = inttoptr i64 %i.dc to ptr
  br i1 %.not.i.i.not.i.i.i.i47, label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit
  %i.dg = call noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i32 noundef 2) #12, !inline_history !3 ; 0 uses
  %i.dh = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !236, !noalias !294
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !242, !noalias !294
  store <2 x ptr> %i.dh, ptr %i.cv, align 8, !tbaa !236, !alias.scope !294
  %.pre = load ptr, ptr %9, align 8, !tbaa !243
  br label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit

_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit: ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit, %bb.q
  %i.dj = phi ptr [ null, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit ], [ %i.di, %bb.q ]
  %i.dk = phi ptr [ %i.df, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit ], [ %.pre, %bb.q ]
  %i.dl = load ptr, ptr %8, align 8, !tbaa !243   ; 2 uses
  %.not6468 = icmp eq ptr %i.dl, %i.dk
  br i1 %.not6468, label %._crit_edge70, label %.lr.ph69

._crit_edge70.loopexit:                           ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit
  %.pre77 = load ptr, ptr %i.cv, align 8, !tbaa !242
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit
  %i.dm = phi ptr [ %.pre77, %._crit_edge70.loopexit ], [ %i.dj, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit ] ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i48, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge70
  %i.dn = call noundef zeroext i1 %i.dm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i32 noundef 3) #12, !inline_history !4 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit: ; preds = %._crit_edge70, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.do = load ptr, ptr %i.co, align 8, !tbaa !242 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.do, null
  br i1 %.not.i.i49, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit50, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit
  %i.dp = call noundef zeroext i1 %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i32 noundef 3) #12, !inline_history !4 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit50

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit50: ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.dq = load ptr, ptr %i.ct, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit50
  %i.dr = call noundef zeroext i1 %i.dq(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i32 noundef 3) #12, !inline_history !5 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i: ; preds = %bb.t, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit50
  %i.ds = load ptr, ptr %i.cl, align 8, !tbaa !242 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i1.i, label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i
  %i.dt = call noundef zeroext i1 %i.ds(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i32 noundef 3) #12, !inline_history !5 ; 0 uses
  br label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit

_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit: ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.du = getelementptr inbounds nuw i8, ptr %.072, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.du, %i.ch
  br i1 %.not42, label %.loopexit.loopexit, label %bb.o

.lr.ph69:                                         ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit
  %i.dv = phi ptr [ %i.ef, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit ], [ %i.dl, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit ]
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i32 %2) #12
  %i.dw = load ptr, ptr %8, align 8, !tbaa !243
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32 ; 4 uses
  store ptr %i.dx, ptr %8, align 8, !tbaa !243
  %i.dy = load ptr, ptr %i.ci, align 8, !tbaa !241
  %.not1.i.i = icmp eq ptr %i.dx, %i.dy
  br i1 %.not1.i.i, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph69, %bb.w
  %i.dz = phi ptr [ %i.ed, %bb.w ], [ %i.dx, %.lr.ph69 ]
  %i.ea = load ptr, ptr %i.co, align 8, !tbaa !242
  %.not.i.i.i.i51 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i51, label %bb.v, label %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  call void @_ZSt25__throw_bad_function_callv() #13
  unreachable

_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.eb = load ptr, ptr %i.cn, align 8, !tbaa !244
  %i.ec = call noundef zeroext i1 %i.eb(ptr noundef nonnull align 8 dereferenceable(32) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %i.dz) #12, !inline_history !6
  %.pre76.pre = load ptr, ptr %8, align 8, !tbaa !243 ; 2 uses
  br i1 %i.ec, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre76.pre, i64 32 ; 4 uses
  store ptr %i.ed, ptr %8, align 8, !tbaa !243
  %i.ee = load ptr, ptr %i.ci, align 8, !tbaa !241
  %.not.i.i52 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i52, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit: ; preds = %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i, %bb.w, %.lr.ph69
  %i.ef = phi ptr [ %i.dx, %.lr.ph69 ], [ %.pre76.pre, %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i ], [ %i.ed, %bb.w ] ; 2 uses
  %i.eg = load ptr, ptr %9, align 8, !tbaa !243
  %.not64 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not64, label %._crit_edge70.loopexit, label %.lr.ph69

.loopexit.loopexit:                               ; preds = %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit
  %.pre78 = load ptr, ptr %6, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n, %._crit_edge
  %i.eh = phi ptr [ %.pre78, %.loopexit.loopexit ], [ %.pre79, %bb.n ], [ %.pre79, %._crit_edge ] ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.bb
  br i1 %i.ei, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit53, label %bb.x

bb.x:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.eh) #12
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit53

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj1EED2Ev.exit53: ; preds = %.loopexit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.pre80 = load ptr, ptr %4, align 8, !tbaa !28
  br label %bb.y
end_hunk_0
begin_hunk_1_@_ZN4llvm28WebAssemblyDebugValueManager9updateRegENS_8RegisterE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br label %bb.c

._crit_edge27:                                    ; preds = %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit, %bb.b
  store i32 %1, ptr %i.a, align 8, !tbaa !169
  %i.y = load ptr, ptr %0, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !167
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 %1) #12
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph26, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit
  %.024 = phi ptr [ %i.f, %.lr.ph26 ], [ %i.az, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit ] ; 2 uses
  %i.ab = load ptr, ptr %.024, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.sroa.02.0.copyload = load i32, ptr %i.a, align 8, !tbaa !169
  call void @_ZN4llvm12MachineInstr22getDebugOperandsForRegENS_8RegisterE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.232") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i32 %.sroa.02.0.copyload) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.ac = load i64, ptr %2, align 8, !noalias !299
  store i64 %i.ac, ptr %3, align 8, !alias.scope !299
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !241, !noalias !299
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !241, !alias.scope !299
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false), !alias.scope !299
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !242, !noalias !299 ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 2) #12, !inline_history !2 ; 0 uses
  %i.ag = load <2 x ptr>, ptr %i.n, align 8, !tbaa !236, !noalias !299
  store <2 x ptr> %i.ag, ptr %i.q, align 8, !tbaa !236, !alias.scope !299
  br label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit

_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.ah = load i64, ptr %i.r, align 8, !noalias !300 ; 2 uses
  store i64 %i.ah, ptr %4, align 8, !alias.scope !300
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !241, !noalias !300
  store ptr %i.ai, ptr %i.s, align 8, !tbaa !241, !alias.scope !300
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false), !alias.scope !300
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !242, !noalias !300 ; 2 uses
  %.not.i.i.not.i.i.i.i13 = icmp eq ptr %i.aj, null
  %i.ak = inttoptr i64 %i.ah to ptr
  br i1 %.not.i.i.not.i.i.i.i13, label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit
  %i.al = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 2) #12, !inline_history !3 ; 0 uses
  %i.am = load <2 x ptr>, ptr %i.v, align 8, !tbaa !236, !noalias !300
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !242, !noalias !300
  store <2 x ptr> %i.am, ptr %i.x, align 8, !tbaa !236, !alias.scope !300
  %.pre = load ptr, ptr %4, align 8, !tbaa !243
  br label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit

_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit: ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit, %bb.e
  %i.ao = phi ptr [ null, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit ], [ %i.an, %bb.e ]
  %i.ap = phi ptr [ %i.ak, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit ], [ %.pre, %bb.e ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !243   ; 2 uses
  %.not2122 = icmp eq ptr %i.aq, %i.ap
  br i1 %.not2122, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit
  %.pre29 = load ptr, ptr %i.x, align 8, !tbaa !242
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit
  %i.ar = phi ptr [ %.pre29, %._crit_edge.loopexit ], [ %i.ao, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3) #12, !inline_history !4 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !242 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit
  %i.au = call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i32 noundef 3) #12, !inline_history !4 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15: ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15
  %i.aw = call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3) #12, !inline_history !5 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i: ; preds = %bb.h, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !242 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i, label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i
  %i.ay = call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3) #12, !inline_history !5 ; 0 uses
  br label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit

_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit: ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.az = getelementptr inbounds nuw i8, ptr %.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.j
  br i1 %.not, label %._crit_edge27, label %bb.c

.lr.ph:                                           ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit
  %i.ba = phi ptr [ %i.bk, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit ], [ %i.aq, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit ]
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i32 %1) #12
  %i.bb = load ptr, ptr %3, align 8, !tbaa !243
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 4 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !243
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !241
  %.not1.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not1.i.i, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %bb.k
  %i.be = phi ptr [ %i.bi, %bb.k ], [ %i.bc, %.lr.ph ]
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !242
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  call void @_ZSt25__throw_bad_function_callv() #13
  unreachable

_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !244
  %i.bh = call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.be) #12, !inline_history !6
  %.pre28.pre = load ptr, ptr %3, align 8, !tbaa !243 ; 2 uses
  br i1 %i.bh, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre28.pre, i64 32 ; 4 uses
  store ptr %i.bi, ptr %3, align 8, !tbaa !243
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !241
  %.not.i.i16 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i16, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit: ; preds = %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i, %bb.k, %.lr.ph
  %i.bk = phi ptr [ %i.bc, %.lr.ph ], [ %.pre28.pre, %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i ], [ %i.bi, %bb.k ] ; 2 uses
  %i.bl = load ptr, ptr %4, align 8, !tbaa !243
  %.not21 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not21, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %._crit_edge27, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm28WebAssemblyDebugValueManager16replaceWithLocalEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.232", align 8 ; 11 uses
  %3 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 12 uses
  %4 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not21 = icmp eq i32 %i.d, 0
  br i1 %.not21, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.v = zext i32 %1 to i64
  br label %bb.b

._crit_edge25:                                    ; preds = %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph24, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit
  %.022 = phi ptr [ %i.b, %.lr.ph24 ], [ %i.bh, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit ] ; 2 uses
  %i.w = load ptr, ptr %.022, align 8, !tbaa !221 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !174
  %i.z = icmp eq i32 %i.y, 14
  br i1 %i.z, label %_ZNK4llvm12MachineInstr16isDebugOffsetImmEv.exit.i, label %_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit.thread

_ZNK4llvm12MachineInstr16isDebugOffsetImmEv.exit.i: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 255
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit, label %_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit.thread

_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit: ; preds = %_ZNK4llvm12MachineInstr16isDebugOffsetImmEv.exit.i
  %i.ag = load i32, ptr %i.ab, align 8
  %.fr18 = freeze i32 %i.ag
  %i.ah = and i32 %.fr18, 255
  %i.ai = icmp eq i32 %i.ah, 0
  %spec.select = select i1 %i.ai, i32 4, i32 0
  br label %_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit.thread

_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit.thread: ; preds = %_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit, %bb.b, %_ZNK4llvm12MachineInstr16isDebugOffsetImmEv.exit.i
  %i.aj = phi i32 [ 0, %bb.b ], [ %spec.select, %_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit ], [ 0, %_ZNK4llvm12MachineInstr16isDebugOffsetImmEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.sroa.0.0.copyload = load i32, ptr %i.g, align 8, !tbaa !169
  call void @_ZN4llvm12MachineInstr22getDebugOperandsForRegENS_8RegisterE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.232") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.w, i32 %.sroa.0.0.copyload) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ak = load i64, ptr %2, align 8, !noalias !305
  store i64 %i.ak, ptr %3, align 8, !alias.scope !305
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !241, !noalias !305
  store ptr %i.al, ptr %i.h, align 8, !tbaa !241, !alias.scope !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false), !alias.scope !305
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !242, !noalias !305 ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit.thread
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 2) #12, !inline_history !2 ; 0 uses
  %i.ao = load <2 x ptr>, ptr %i.k, align 8, !tbaa !236, !noalias !305
  store <2 x ptr> %i.ao, ptr %i.n, align 8, !tbaa !236, !alias.scope !305
  br label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit

_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit: ; preds = %_ZNK4llvm12MachineInstr20isIndirectDebugValueEv.exit.thread, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.ap = load i64, ptr %i.o, align 8, !noalias !306 ; 2 uses
  store i64 %i.ap, ptr %4, align 8, !alias.scope !306
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !241, !noalias !306
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !241, !alias.scope !306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false), !alias.scope !306
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !242, !noalias !306 ; 2 uses
  %.not.i.i.not.i.i.i.i13 = icmp eq ptr %i.ar, null
  %i.as = inttoptr i64 %i.ap to ptr
  br i1 %.not.i.i.not.i.i.i.i13, label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit
  %i.at = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 2) #12, !inline_history !3 ; 0 uses
  %i.au = load <2 x ptr>, ptr %i.s, align 8, !tbaa !236, !noalias !306
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !242, !noalias !306
  store <2 x ptr> %i.au, ptr %i.u, align 8, !tbaa !236, !alias.scope !306
  %.pre = load ptr, ptr %4, align 8, !tbaa !243
  br label %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit

_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit: ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit, %bb.d
  %i.aw = phi ptr [ null, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit ], [ %i.av, %bb.d ]
  %i.ax = phi ptr [ %i.as, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv.exit ], [ %.pre, %bb.d ]
  %i.ay = load ptr, ptr %3, align 8, !tbaa !243   ; 2 uses
  %.not1920 = icmp eq ptr %i.ay, %i.ax
  br i1 %.not1920, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit
  %.pre27 = load ptr, ptr %i.u, align 8, !tbaa !242
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit
  %i.az = phi ptr [ %.pre27, %._crit_edge.loopexit ], [ %i.aw, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ba = call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3) #12, !inline_history !4 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit: ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !242 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i14, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit
  %i.bc = call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef 3) #12, !inline_history !4 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15: ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !242 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15
  %i.be = call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3) #12, !inline_history !5 ; 0 uses
  br label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i: ; preds = %bb.g, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit15
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !242 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i, label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3) #12, !inline_history !5 ; 0 uses
  br label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit

_ZN4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEED2Ev.exit: ; preds = %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagED2Ev.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.bh = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.f
  br i1 %.not, label %._crit_edge25, label %bb.b

.lr.ph:                                           ; preds = %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit
  %i.bi = phi ptr [ %i.bs, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit ], [ %i.ay, %_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv.exit ]
  call void @_ZN4llvm14MachineOperand19ChangeToTargetIndexEjlj(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i32 noundef %i.aj, i64 noundef %i.v, i32 noundef 0) #12
  %i.bj = load ptr, ptr %3, align 8, !tbaa !243
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 4 uses
  store ptr %i.bk, ptr %3, align 8, !tbaa !243
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !241
  %.not1.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not1.i.i, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %bb.j
  %i.bm = phi ptr [ %i.bq, %bb.j ], [ %i.bk, %.lr.ph ]
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !242
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  call void @_ZSt25__throw_bad_function_callv() #13
  unreachable

_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !244
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.bm) #12, !inline_history !6
  %.pre26.pre = load ptr, ptr %3, align 8, !tbaa !243 ; 2 uses
  br i1 %i.bp, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre26.pre, i64 32 ; 4 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !243
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !241
  %.not.i.i16 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i16, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEppEv.exit: ; preds = %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i, %bb.j, %.lr.ph
  %i.bs = phi ptr [ %i.bk, %.lr.ph ], [ %.pre26.pre, %_ZNKSt8functionIFbRN4llvm14MachineOperandEEEclES2_.exit.i.i ], [ %i.bq, %bb.j ] ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !243
  %.not19 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not19, label %._crit_edge.loopexit, label %.lr.ph
}

declare void @_ZN4llvm14MachineOperand19ChangeToTargetIndexEjlj(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm28WebAssemblyDebugValueManager9removeDefEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = tail call noundef ptr @_ZN4llvm12MachineInstr16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #12 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not8 = icmp eq i32 %i.f, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit
  %.09 = phi ptr [ %i.aa, %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %.09, align 8, !tbaa !221  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !174
  %i.l = icmp eq i32 %i.k, 14                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !167
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.p = load i24, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp ne i24 %i.p, 0
  %..i.i.i = zext i1 %i.q to i64
  %i.r = zext i24 %i.p to i64
  %i.s = add nsw i64 %i.r, -2
  %.sroa.5.0.i.i = select i1 %i.l, i64 %..i.i.i, i64 %i.s ; 2 uses
  %.sroa.05.0.idx.i.i = select i1 %i.l, i64 0, i64 64
  %.sroa.05.0.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.05.0.idx.i.i ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.5.0.i.i, 5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i.i, i64 %.idx.i
  %.not11.i = icmp eq i64 %.sroa.5.0.i.i, 0
  br i1 %.not11.i, label %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.c
  %.012.i = phi ptr [ %i.z, %bb.c ], [ %.sroa.05.0.i.i, %.lr.ph ] ; 5 uses
  %i.u = load i32, ptr %.012.i, align 8
  %i.v = and i32 %i.u, 255
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.012.i, i32 0) #12
  %i.x = load i32, ptr %.012.i, align 8
  %i.y = and i32 %i.x, -1048321
  store i32 %i.y, ptr %.012.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i, label %_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit, label %.lr.ph.i

_ZN4llvm12MachineInstr18setDebugValueUndefEv.exit: ; preds = %bb.c, %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef ptr @_ZN4llvm12MachineInstr16removeFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt9__find_ifIPKN4llvm14MachineOperandEN9__gnu_cxx5__ops10_Iter_predIZNKS0_12MachineInstr21hasDebugOperandForRegENS0_8RegisterEEUlRS2_E_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 7                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = and i64 %i.c, -128
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.047 = phi i64 [ %i.am, %bb.e ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.02946 = phi ptr [ %i.al, %bb.e ], [ %0, %.lr.ph.preheader ] ; 13 uses
  %i.g = load i32, ptr %.02946, align 8
  %i.h = and i32 %i.g, 255
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.02946, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, %2
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.02946, i64 32
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 255
  %i.q = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.02946, i64 36
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, %2
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %.loopexit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.02946, i64 64
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 255
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.02946, i64 68
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, %2
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %.loopexit.loopexit.split.loop.exit54, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946, i64 96
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 255
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946, i64 100
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %2
  %i.ak = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %i.ak, label %.loopexit.loopexit.split.loop.exit56, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.02946, i64 128
  %i.am = add nsw i64 %.047, -1
  %i.an = icmp sgt i64 %.047, 1
  br i1 %i.an, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !307

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %scevgep to i64
  %.pre52 = sub i64 %i.a, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi53 = phi i64 [ %.pre52, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.029.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.ao = ashr exact i64 %.pre-phi53, 5
  switch i64 %i.ao, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.ap = load i32, ptr %.029.lcssa, align 8
  %i.aq = and i32 %i.ap, 255
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp eq i32 %i.at, %2
  %i.av = select i1 %i.ar, i1 %i.au, i1 false
  br i1 %i.av, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.1 = phi ptr [ %i.aw, %bb.g ], [ %.029.lcssa, %._crit_edge ] ; 4 uses
  %i.ax = load i32, ptr %.1, align 8
  %i.ay = and i32 %i.ax, 255
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.bb, %2
  %i.bd = select i1 %i.az, i1 %i.bc, i1 false
  br i1 %i.bd, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.1, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.2 = phi ptr [ %i.be, %bb.i ], [ %.029.lcssa, %._crit_edge ] ; 3 uses
  %i.bf = load i32, ptr %.2, align 8
  %i.bg = and i32 %i.bf, 255
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp eq i32 %i.bj, %2
  %i.bl = select i1 %i.bh, i1 %i.bk, i1 false
  br i1 %i.bl, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %.02946, i64 32
  br label %.loopexit

.loopexit.loopexit.split.loop.exit54:             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %.02946, i64 64
  br label %.loopexit

.loopexit.loopexit.split.loop.exit56:             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %.02946, i64 96
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit54, %.loopexit.loopexit.split.loop.exit56, %bb.j, %bb.h, %bb.f, %bb.k
  %.028 = phi ptr [ %.1, %bb.h ], [ %1, %bb.k ], [ %.2, %bb.j ], [ %.029.lcssa, %bb.f ], [ %i.bo, %.loopexit.loopexit.split.loop.exit56 ], [ %i.bm, %.loopexit.loopexit.split.loop.exit ], [ %i.bn, %.loopexit.loopexit.split.loop.exit54 ], [ %.02946, %.lr.ph ]
  ret ptr %.028
}

declare void @_ZN4llvm12DIExpression15getFragmentInfoENS0_16expr_op_iteratorES1_(ptr dead_on_unwind writable sret(%"class.std::optional.216") align 8, ptr, ptr) local_unnamed_addr #1

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr) local_unnamed_addr #1

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #12
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = load i32, ptr %i.a, align 8, !tbaa !29
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !29
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !29
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.b = load i32, ptr %0, align 8, !noalias !312
  %i.c = and i32 %i.b, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !312
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !312
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !noalias !312
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 2 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %i.n = trunc nuw i8 %.sroa.5.0.copyload.i.i to i1
  %i.o = shl i64 %.sroa.04.0.copyload.i.i, 16
  %i.p = and i64 %.sroa.4.0.copyload.i.i, 65535
  %i.q = or disjoint i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %.0.i.i = select i1 %i.n, i32 %i.r, i32 0
  %i.s = load ptr, ptr %1, align 8, !tbaa !229
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %i.s, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.0.i.i, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  store ptr %i.u, ptr %i.w, align 4
  %i.x = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 20) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.y = trunc i64 %i.x to i32
  %i.z = xor i32 %i.y, -313160499
  %.024.i = and i32 %i.z, %i.l                    ; 3 uses
  %i.aa = zext i32 %.024.i to i64                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !169
  %i.af = and i32 %.024.i, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !245

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.ai, %i.l                     ; 3 uses
  %i.aj = zext i32 %.0.i to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i, i64 %i.aj ; 2 uses
  %i.al = lshr i64 %i.aj, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !169
  %i.ao = and i32 %.0.i, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit, !prof !246, !llvm.loop !8

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ar = phi ptr [ %i.ak, %bb.c ], [ %i.ab, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.as = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ar)
  br i1 %i.as, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPSB_.exit, label %bb.c, !prof !175

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ], [ %i.ak, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !247
  %i.at = load i32, ptr %0, align 8               ; 2 uses
  %i.au = and i32 %i.at, 1                        ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.au, 0
  %i.av = load i32, ptr %i.h, align 8
  %i.aw = select i1 %.not.i.i.i4, i32 %i.av, i32 4 ; 2 uses
  %i.ax = shl i32 %i.at, 1
  %i.ay = and i32 %i.ax, -4
  %i.az = add i32 %i.ay, 4
  %i.ba = mul i32 %i.aw, 3
  %.not.i = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E22findBucketForInsertionIS2_EEPSB_RKT_SF_.exit, label %bb.d, !prof !175

bb.d:                                             ; preds = %.loopexit
  %i.bb = shl i32 %i.aw, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bb)
  %i.bc = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !247
  %.pre6.i = and i32 %.pre.i, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E22findBucketForInsertionIS2_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E22findBucketForInsertionIS2_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.au, %.loopexit ]
  %i.bd = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 7 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.be = load ptr, ptr %i.f, align 8
  %i.bf = select i1 %.not.i.i.i.i, ptr %i.be, ptr %i.j
  %i.bg = load ptr, ptr %i.d, align 8
  %i.bh = select i1 %.not.i.i.i.i, ptr %i.bg, ptr %i.d
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 72                ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 31
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = lshr i64 %i.bl, 5
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !169
  %i.bs = or i32 %i.bo, %i.br
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !169
  %i.bt = load i32, ptr %0, align 8               ; 2 uses
  %i.bu = and i32 %i.bt, -2
  %i.bv = add i32 %i.bu, 2
  %i.bw = and i32 %i.bt, 1
  %i.bx = or disjoint i32 %i.bv, %i.bw
  store i32 %i.bx, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i32 0, ptr %i.ca, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  store i32 2, ptr %i.cb, align 4, !tbaa !30
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E22findBucketForInsertionIS2_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.bd, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E22findBucketForInsertionIS2_EEPSB_RKT_SF_.exit ], [ %i.ar, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E22findBucketForInsertionIS2_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E15LookupBucketForIS2_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.a = load i32, ptr %0, align 8, !noalias !317
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !317
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !317
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !317
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.04.0.copyload.i = load i64, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.m = trunc nuw i8 %.sroa.5.0.copyload.i to i1
  %i.n = shl i64 %.sroa.04.0.copyload.i, 16
  %i.o = and i64 %.sroa.4.0.copyload.i, 65535
  %i.p = or disjoint i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %.0.i = select i1 %i.m, i32 %i.q, i32 0
  %i.r = load ptr, ptr %1, align 8, !tbaa !229
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.r, ptr %3, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %i.t, ptr %i.v, align 4
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 20) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -313160499
  %.024 = and i32 %i.y, %i.k                      ; 3 uses
  %i.z = zext i32 %.024 to i64                    ; 2 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !169
  %i.ae = and i32 %.024, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !245

bb.c:                                             ; preds = %.lr.ph
  %i.ah = add nuw i32 %.025, 1
  %.0 = and i32 %i.ah, %i.k                       ; 3 uses
  %i.ai = zext i32 %.0 to i64                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !169
  %i.an = and i32 %.0, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph, label %.thread, !prof !246, !llvm.loop !8

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aq = phi ptr [ %i.aj, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ar = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.aq) ; 3 uses
  br i1 %i.ar, label %.thread, label %bb.c, !prof !175

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ], [ %i.aj, %bb.c ], [ %i.aq, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ar, %bb.c ], [ %i.ar, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !247
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %0, align 8, !tbaa !318
  %i.f = load ptr, ptr %1, align 8, !tbaa !318
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK4llvm13DebugVariableeqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !230, !range !319, !noundef !150 ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !230, !range !319, !noundef !150
  %i.m = icmp eq i8 %i.i, %i.l                    ; 2 uses
  %brmerge.not.i.i.i.i.i = and i1 %i.m, %i.j
  br i1 %brmerge.not.i.i.i.i.i, label %.split.i.i.i.i, label %_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.a, align 8, !tbaa !320
  %i.q = load i64, ptr %i.c, align 8, !tbaa !320
  %i.r = icmp eq i64 %i.p, %i.q
  %i.s = load i64, ptr %i.n, align 8
  %i.t = load i64, ptr %i.o, align 8
  %i.u = icmp eq i64 %i.s, %i.t
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %bb.c, label %_ZNK4llvm13DebugVariableeqERKS0_.exit

_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i: ; preds = %bb.b
  br i1 %i.m, label %bb.c, label %_ZNK4llvm13DebugVariableeqERKS0_.exit

bb.c:                                             ; preds = %_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i, %.split.i.i.i.i
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !235
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !235
  %i.y = icmp eq ptr %i.w, %i.x
  br label %_ZNK4llvm13DebugVariableeqERKS0_.exit

_ZNK4llvm13DebugVariableeqERKS0_.exit:            ; preds = %bb.a, %.split.i.i.i.i, %_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i, %bb.c
  %i.z = phi i1 [ false, %bb.a ], [ false, %_ZSteqIN4llvm23DbgVariableFragmentInfoES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS3_ERKSC_IS6_E.exit.i.i.i.i ], [ %i.y, %bb.c ], [ false, %.split.i.i.i.i ]
  ret i1 %i.z
}

declare noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 296
  br label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEEC2EjNS_12DenseMapBaseISB_S1_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 72                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !168
  br label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEEC2EjNS_12DenseMapBaseISB_S1_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEEC2EjNS_12DenseMapBaseISB_S1_S5_S7_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(304) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEEC2EjNS_12DenseMapBaseISB_S1_S5_S7_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !322
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !168
  br label %bb.b

_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEEC2EjNS_12DenseMapBaseISB_S1_S5_S7_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 72               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !168
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !168
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !168
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 296
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(304) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE13maybeMoveFastEOSB_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E24initWithExactBucketCountEj.exit
  call void @_ZN4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEEaSEOS3_:bb.a
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !28     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #12
  %.pre = load ptr, ptr %1, align 8, !tbaa !28
  br label %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !169
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !169
  store ptr %i.c, ptr %1, align 8, !tbaa !28
  store i32 0, ptr %i.k, align 4, !tbaa !30
  store i32 0, ptr %i.j, align 8, !tbaa !29
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.h
  ], !prof !326

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !221
  store ptr %i.t, ptr %i.s, align 8, !tbaa !221
  br label %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !29
  store i32 0, ptr %i.m, align 8, !tbaa !29
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #12
  br label %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !327

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !221
  store ptr %i.z, ptr %i.y, align 8, !tbaa !221
  br label %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit34

_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !29
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !28
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !29
  store i32 0, ptr %i.m, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPPN4llvm12MachineInstrES3_ET0_T_S5_S4_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIPNS_12MachineInstrEE12assignRemoteEOS3_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E7find_asIS2_EENS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEERKT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::DenseMapIterator") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.a = load i32, ptr %1, align 8, !noalias !336
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !336
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !336
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !noalias !336
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.d, ptr %i.c
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i.i.i, -1               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.m = trunc nuw i8 %.sroa.5.0.copyload.i.i.i to i1
  %i.n = shl i64 %.sroa.04.0.copyload.i.i.i, 16
  %i.o = and i64 %.sroa.4.0.copyload.i.i.i, 65535
  %i.p = or disjoint i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %.0.i.i.i = select i1 %i.m, i32 %i.q, i32 0
  %i.r = load ptr, ptr %2, align 8, !tbaa !229
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.r, ptr %3, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i.i.i, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %i.t, ptr %i.v, align 4
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 20) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -313160499
  %.017.i.i = and i32 %i.y, %i.k                  ; 3 uses
  %i.z = zext i32 %.017.i.i to i64                ; 2 uses
  %i.aa = lshr i64 %i.z, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !169
  %i.ad = and i32 %.017.i.i, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.i, label %.loopexit, !prof !245

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ag = add nuw i32 %.018.i.i, 1
  %.0.i.i = and i32 %i.ag, %i.k                   ; 3 uses
  %i.ah = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !169
  %i.al = and i32 %.0.i.i, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i, label %.loopexit, !prof !246

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.ao = phi i64 [ %i.ah, %bb.c ], [ %i.z, %bb.b ]
  %.018.i.i = phi i32 [ %.0.i.i, %bb.c ], [ %.017.i.i, %bb.b ]
  %i.ap = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i, i64 %i.ao ; 2 uses
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_13DebugVariableEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.ap)
  br i1 %i.aq, label %bb.d, label %bb.c, !prof !175

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ar = load i32, ptr %1, align 8, !noalias !337
  %i.as = and i32 %i.ar, 1
  %.not.i.i.i.i5 = icmp eq i32 %i.as, 0           ; 3 uses
  %i.at = load ptr, ptr %i.c, align 8, !noalias !337
  %i.au = select i1 %.not.i.i.i.i5, ptr %i.at, ptr %i.c ; 2 uses
  %i.av = load ptr, ptr %i.e, align 8, !noalias !337
  %i.aw = select i1 %.not.i.i.i.i5, ptr %i.av, ptr %i.i
  %i.ax = load i32, ptr %i.g, align 8, !noalias !337
  %i.ay = select i1 %.not.i.i.i.i5, i32 %i.ax, i32 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [72 x i8], ptr %i.au, i64 %i.az
  br label %bb.e

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %i.bb = load i32, ptr %1, align 8, !noalias !338
  %i.bc = and i32 %i.bb, 1
  %.not.i.i.i.i6 = icmp eq i32 %i.bc, 0           ; 3 uses
  %i.bd = load ptr, ptr %i.c, align 8, !noalias !338
  %i.be = select i1 %.not.i.i.i.i6, ptr %i.bd, ptr %i.c ; 2 uses
  %i.bf = load ptr, ptr %i.e, align 8, !noalias !338
  %i.bg = select i1 %.not.i.i.i.i6, ptr %i.bf, ptr %i.i
  %i.bh = load i32, ptr %i.g, align 8, !noalias !338
  %i.bi = select i1 %.not.i.i.i.i6, i32 %i.bh, i32 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %i.be, i64 %i.bj ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %.lcssa.sink = phi ptr [ %i.ap, %bb.d ], [ %i.bk, %.loopexit ]
  %.sink17 = phi ptr [ %i.ba, %bb.d ], [ %i.bk, %.loopexit ]
  %.sink15 = phi ptr [ %i.au, %bb.d ], [ %i.be, %.loopexit ]
  %.sink = phi ptr [ %i.aw, %bb.d ], [ %i.bg, %.loopexit ]
  store ptr %.lcssa.sink, ptr %0, align 8, !tbaa !234
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink17, ptr %i.bl, align 8, !tbaa !339
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink15, ptr %i.bm, align 8, !tbaa !340
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.bn, align 8, !tbaa !341
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !171}
!1 = distinct !{!1, !171}
!2 = distinct !{null, null, null, null}
!3 = distinct !{null, null, null, null}
!4 = distinct !{null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{!7, !171}
!8 = distinct !{!8, !171}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 _ZTSN4llvm12MachineInstrE", !17, i64 0}
!19 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !17, i64 0, !14, i64 8, !14, i64 12}
!20 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_12MachineInstrEvEE", !19, i64 0}
!21 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EEE", !20, i64 0}
!22 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_12MachineInstrEEE", !21, i64 0}
!23 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_12MachineInstrELj1EEE", !13, i64 0}
!24 = !{!"_ZTSN4llvm11SmallVectorIPNS_12MachineInstrELj1EEE", !22, i64 0, !23, i64 16}
!25 = !{!"_ZTSN4llvm8RegisterE", !14, i64 0}
!26 = !{!"_ZTSN4llvm28WebAssemblyDebugValueManagerE", !18, i64 0, !24, i64 8, !25, i64 32}
!27 = !{!26, !18, i64 0}
!28 = !{!19, !17, i64 0}
!29 = !{!19, !14, i64 8}
!30 = !{!19, !14, i64 12}
!31 = !{!25, !14, i64 0}
!32 = !{!"p1 _ZTSN4llvm8FunctionE", !17, i64 0}
!33 = !{!"p1 _ZTSN4llvm13TargetMachineE", !17, i64 0}
!34 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !17, i64 0}
!35 = !{!"p1 _ZTSN4llvm9MCContextE", !17, i64 0}
!36 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !17, i64 0}
!37 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !17, i64 0}
!38 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !17, i64 0}
!39 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !17, i64 0}
!40 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !17, i64 0}
!41 = !{!"p1 _ZTSN4llvm9MCSectionE", !17, i64 0}
!42 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !17, i64 0}
!43 = !{!"any p2 pointer", !17, i64 0}
!44 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !43, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !47, i64 0}
!49 = !{!"p1 omnipotent char", !17, i64 0}
!50 = !{!"long", !13, i64 0}
!51 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !19, i64 0}
!52 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !51, i64 0}
!53 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !52, i64 0}
!54 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !13, i64 0}
!55 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !53, i64 0, !54, i64 16}
!56 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !19, i64 0}
!57 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !56, i64 0}
!58 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !57, i64 0}
!59 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !58, i64 0}
!60 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !49, i64 0, !50, i64 8, !55, i64 16, !59, i64 64}
!61 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !17, i64 0}
!62 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !61, i64 0}
!63 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !19, i64 0}
!64 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !63, i64 0}
!65 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !64, i64 0}
!66 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !13, i64 0}
!67 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !65, i64 0, !66, i64 16}
!68 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !67, i64 0}
!69 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !17, i64 0}
!70 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !69, i64 0}
!71 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !17, i64 0}
!72 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !71, i64 0, !71, i64 8}
!73 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !72, i64 0}
!74 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !73, i64 0}
!75 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !74, i64 0}
!76 = !{!"_ZTSN4llvm12simple_ilistINS_17MachineBasicBlockEJEEE", !75, i64 0}
!77 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !76, i64 0}
!78 = !{!"_ZTSN4llvm6iplistINS_17MachineBasicBlockEJEEE", !77, i64 0}
!79 = !{!"_ZTSN4llvm5AlignE", !13, i64 0}
!80 = !{!"bool", !13, i64 0}
!81 = !{!"_ZTSSt12_Base_bitsetILm1EE", !50, i64 0}
!82 = !{!"_ZTSSt6bitsetILm12EE", !81, i64 0}
!83 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !82, i64 0}
!84 = !{!"p1 _ZTSN4llvm24PseudoSourceValueManagerE", !17, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm24PseudoSourceValueManagerELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !89, i64 0}
!91 = !{!"p1 _ZTSN4llvm16MCCFIInstructionE", !17, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !94, i64 0}
!96 = !{!"p2 _ZTSN4llvm8MCSymbolE", !43, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorIPN4llvm8MCSymbolESaIS2_EE", !99, i64 0}
!101 = !{!"p1 _ZTSN4llvm14LandingPadInfoE", !17, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!103 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE12_Vector_implE", !102, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorIN4llvm14LandingPadInfoESaIS1_EE", !104, i64 0}
!106 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolENS_11SmallVectorIjLj4EEEEE", !17, i64 0}
!107 = !{!"p1 int", !17, i64 0}
!108 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !106, i64 0, !107, i64 8, !14, i64 16, !14, i64 20}
!109 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockEjEE", !17, i64 0}
!110 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !109, i64 0, !107, i64 8, !14, i64 16, !14, i64 20}
!111 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolEjEE", !17, i64 0}
!112 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !111, i64 0, !107, i64 8, !14, i64 16, !14, i64 20}
!113 = !{!"p1 _ZTSSt4pairIPN4llvm8MCSymbolEPNS0_6MDNodeEE", !17, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !116, i64 0}
!118 = !{!"_ZTSN4llvm17BasicBlockSectionE", !13, i64 0}
!119 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10UniqueBBIDENS_11SmallVectorIjLj12EEEEE", !17, i64 0}
!120 = !{!"_ZTSN4llvm8DenseMapINS_10UniqueBBIDENS_11SmallVectorIjLj12EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !119, i64 0, !107, i64 8, !14, i64 16, !14, i64 20}
!121 = !{!"p2 _ZTSN4llvm11GlobalValueE", !43, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!123 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE12_Vector_implE", !122, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE", !123, i64 0}
!125 = !{!"_ZTSSt6vectorIPKN4llvm11GlobalValueESaIS3_EE", !124, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!127 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !126, i64 0}
!128 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !127, i64 0}
!129 = !{!"_ZTSSt6vectorIjSaIjEE", !128, i64 0}
!130 = !{!"_ZTSN4llvm13EHPersonalityE", !13, i64 0}
!131 = !{!"p1 _ZTSN4llvm15MachineFunction8DelegateE", !17, i64 0}
!132 = !{!"p1 _ZTSN4llvm19GISelChangeObserverE", !17, i64 0}
!133 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoEEE", !17, i64 0}
!134 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !133, i64 0, !107, i64 8, !14, i64 16, !14, i64 20}
!135 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoEEE", !17, i64 0}
!136 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !135, i64 0, !107, i64 8, !14, i64 16, !14, i64 20}
!137 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15MachineFunction15VariableDbgInfoEvEE", !19, i64 0}
!138 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15MachineFunction15VariableDbgInfoELb1EEE", !137, i64 0}
!139 = !{!"_ZTSN4llvm15SmallVectorImplINS_15MachineFunction15VariableDbgInfoEEE", !138, i64 0}
!140 = !{!"_ZTSN4llvm18SmallVectorStorageINS_15MachineFunction15VariableDbgInfoELj4EEE", !13, i64 0}
!141 = !{!"_ZTSN4llvm11SmallVectorINS_15MachineFunction15VariableDbgInfoELj4EEE", !139, i64 0, !140, i64 16}
!142 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15MachineFunction17DebugSubstitutionEvEE", !19, i64 0}
!143 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EEE", !142, i64 0}
!144 = !{!"_ZTSN4llvm15SmallVectorImplINS_15MachineFunction17DebugSubstitutionEEE", !143, i64 0}
!145 = !{!"_ZTSN4llvm18SmallVectorStorageINS_15MachineFunction17DebugSubstitutionELj8EEE", !13, i64 0}
!146 = !{!"_ZTSN4llvm11SmallVectorINS_15MachineFunction17DebugSubstitutionELj8EEE", !144, i64 0, !145, i64 16}
!147 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjNS_15MachineFunction19DebugPHIRegallocPosEEE", !17, i64 0}
!148 = !{!"_ZTSN4llvm8DenseMapIjNS_15MachineFunction19DebugPHIRegallocPosENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEE", !147, i64 0, !107, i64 8, !14, i64 16, !14, i64 20}
!149 = !{!"_ZTSN4llvm15MachineFunctionE", !32, i64 0, !33, i64 8, !34, i64 16, !35, i64 24, !36, i64 32, !37, i64 40, !38, i64 48, !39, i64 56, !40, i64 64, !41, i64 72, !42, i64 80, !48, i64 88, !14, i64 112, !14, i64 116, !60, i64 120, !62, i64 200, !68, i64 208, !70, i64 288, !78, i64 296, !14, i64 312, !79, i64 316, !80, i64 317, !80, i64 318, !80, i64 319, !83, i64 320, !90, i64 328, !95, i64 336, !100, i64 360, !100, i64 384, !105, i64 408, !108, i64 432, !110, i64 456, !112, i64 480, !117, i64 504, !80, i64 528, !80, i64 529, !80, i64 530, !80, i64 531, !80, i64 532, !80, i64 533, !80, i64 534, !14, i64 536, !118, i64 540, !120, i64 544, !125, i64 568, !129, i64 592, !129, i64 616, !130, i64 640, !131, i64 648, !132, i64 656, !134, i64 664, !136, i64 688, !141, i64 712, !14, i64 856, !146, i64 864, !148, i64 1040, !80, i64 1064}
!150 = !{}
!151 = !{!"_ZTSN4llvm6detail13PunnedPointerIPNS_15ilist_node_baseILb1EvEEEE", !13, i64 0}
!152 = !{!"_ZTSN4llvm14PointerIntPairIPNS_15ilist_node_baseILb1EvEELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !151, i64 0}
!153 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb1EvEE", !17, i64 0}
!154 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb1EvEELb1EEE", !152, i64 0, !153, i64 8}
!155 = !{!"_ZTSN4llvm15ilist_node_baseILb1EvEE", !154, i64 0}
!156 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !155, i64 0}
!157 = !{!"_ZTSN4llvm10ilist_nodeINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !156, i64 0}
!158 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_12MachineInstrENS_17MachineBasicBlockEJNS_23ilist_sentinel_trackingILb1EEEEEE", !157, i64 0}
!159 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !17, i64 0}
!160 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !17, i64 0}
!161 = !{!"p1 _ZTSN4llvm14MachineOperandE", !17, i64 0}
!162 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EE8CapacityE", !13, i64 0}
!163 = !{!"_ZTSN4llvm14PointerSumTypeINS_12MachineInstr20ExtraInfoInlineKindsEJNS_20PointerSumTypeMemberILm0EPNS_17MachineMemOperandENS_21PointerLikeTypeTraitsIS5_EEEENS3_ILm1EPNS_8MCSymbolENS6_ISA_EEEENS3_ILm2ESA_SB_EENS3_ILm3EPNS1_9ExtraInfoENS6_ISF_EEEEEEE", !13, i64 0}
!164 = !{!"p1 _ZTSN4llvm10DILocationE", !17, i64 0}
!165 = !{!"_ZTSN4llvm8DebugLocE", !164, i64 0}
!166 = !{!"_ZTSN4llvm12MachineInstrE", !158, i64 0, !159, i64 16, !160, i64 24, !161, i64 32, !14, i64 40, !162, i64 43, !14, i64 44, !13, i64 48, !14, i64 52, !14, i64 56, !163, i64 64, !165, i64 72}
!167 = !{!166, !161, i64 32}
!168 = !{!13, !13, i64 0}
!169 = !{!14, !14, i64 0}
!170 = !{!149, !36, i64 32}
!171 = !{!"llvm.loop.mustprogress"}
!172 = !{!154, !153, i64 8}
!173 = !{!166, !160, i64 24}
!174 = !{!166, !14, i64 52}
!175 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!176 = !{!166, !14, i64 44}
!177 = !{!"_ZTSN4llvm10ilist_nodeINS_17MachineBasicBlockEJEEE", !74, i64 0}
!178 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_17MachineBasicBlockENS_15MachineFunctionEJEEE", !177, i64 0}
!179 = !{!"p1 _ZTSN4llvm10BasicBlockE", !17, i64 0}
!180 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !17, i64 0}
!181 = !{!"_ZTSN4llvm12ilist_traitsINS_12MachineInstrEEE", !160, i64 0}
!182 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !156, i64 0}
!183 = !{!"_ZTSN4llvm12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !182, i64 0}
!184 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEEE", !181, i64 0, !183, i64 8}
!185 = !{!"_ZTSN4llvm6iplistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !184, i64 0}
!186 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_17MachineBasicBlockEvEE", !19, i64 0}
!187 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EEE", !186, i64 0}
!188 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEEE", !187, i64 0}
!189 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj4EEE", !13, i64 0}
!190 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEE", !188, i64 0, !189, i64 16}
!191 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj2EEE", !13, i64 0}
!192 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEE", !188, i64 0, !191, i64 16}
!193 = !{!"p1 _ZTSN4llvm17BranchProbabilityE", !17, i64 0}
!194 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE17_Vector_impl_dataE", !193, i64 0, !193, i64 8, !193, i64 16}
!195 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE12_Vector_implE", !194, i64 0}
!196 = !{!"_ZTSSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE", !195, i64 0}
!197 = !{!"_ZTSSt6vectorIN4llvm17BranchProbabilityESaIS1_EE", !196, i64 0}
!198 = !{!"_ZTSSt22_Optional_payload_baseImE", !13, i64 0, !80, i64 8}
!199 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !198, i64 0}
!200 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !199, i64 0}
!201 = !{!"_ZTSSt8optionalImE", !200, i64 0}
!202 = !{!"p1 _ZTSN4llvm17MachineBasicBlock16RegisterMaskPairE", !17, i64 0}
!203 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_Vector_impl_dataE", !202, i64 0, !202, i64 8, !202, i64 16}
!204 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_Vector_implE", !203, i64 0}
!205 = !{!"_ZTSSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !204, i64 0}
!206 = !{!"_ZTSSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !205, i64 0}
!207 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm10UniqueBBIDEE", !13, i64 0, !80, i64 8}
!208 = !{!"_ZTSSt17_Optional_payloadIN4llvm10UniqueBBIDELb1ELb1ELb1EE", !207, i64 0}
!209 = !{!"_ZTSSt14_Optional_baseIN4llvm10UniqueBBIDELb1ELb1EE", !208, i64 0}
!210 = !{!"_ZTSSt8optionalIN4llvm10UniqueBBIDEE", !209, i64 0}
!211 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !19, i64 0}
!212 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !211, i64 0}
!213 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !212, i64 0}
!214 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj12EEE", !13, i64 0}
!215 = !{!"_ZTSN4llvm11SmallVectorIjLj12EEE", !213, i64 0, !214, i64 16}
!216 = !{!"_ZTSN4llvm12MBBSectionID11SectionTypeE", !13, i64 0}
!217 = !{!"_ZTSN4llvm12MBBSectionIDE", !216, i64 0, !14, i64 4}
!218 = !{!"p1 _ZTSN4llvm8MCSymbolE", !17, i64 0}
!219 = !{!"_ZTSN4llvm17MachineBasicBlockE", !178, i64 0, !179, i64 16, !14, i64 24, !14, i64 28, !180, i64 32, !185, i64 40, !190, i64 64, !192, i64 112, !197, i64 144, !201, i64 168, !206, i64 184, !79, i64 208, !14, i64 212, !80, i64 216, !80, i64 217, !14, i64 220, !179, i64 224, !80, i64 232, !80, i64 233, !80, i64 234, !80, i64 235, !80, i64 236, !210, i64 240, !215, i64 256, !217, i64 320, !80, i64 328, !80, i64 329, !80, i64 330, !218, i64 336, !218, i64 344, !218, i64 352}
!220 = !{!219, !180, i64 32}
!221 = !{!18, !18, i64 0}
!222 = !{!165, !164, i64 0}
!223 = !{!"p1 _ZTSN4llvm15DILocalVariableE", !17, i64 0}
!224 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm23DbgVariableFragmentInfoEE", !13, i64 0, !80, i64 16}
!225 = !{!"_ZTSSt17_Optional_payloadIN4llvm23DbgVariableFragmentInfoELb1ELb1ELb1EE", !224, i64 0}
!226 = !{!"_ZTSSt14_Optional_baseIN4llvm23DbgVariableFragmentInfoELb1ELb1EE", !225, i64 0}
!227 = !{!"_ZTSSt8optionalIN4llvm23DbgVariableFragmentInfoEE", !226, i64 0}
!228 = !{!"_ZTSN4llvm13DebugVariableE", !223, i64 0, !227, i64 8, !164, i64 32}
!229 = !{!228, !223, i64 0}
!230 = !{!224, !80, i64 16}
!231 = !{!228, !164, i64 32}
!232 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEEEE", !17, i64 0}
!233 = !{!"_ZTSN4llvm16DenseMapIteratorINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EELb0EEE", !232, i64 0, !232, i64 8, !232, i64 16, !107, i64 24}
!234 = !{!233, !232, i64 0}
!235 = !{!164, !164, i64 0}
!236 = !{!17, !17, i64 0}
!237 = !{!"_ZTSN4llvm21iterator_adaptor_baseINS_20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEES3_S8_S2_lS3_S5_EE", !161, i64 0}
!238 = !{!"_ZTSSt14_Function_base", !13, i64 0, !17, i64 16}
!239 = !{!"_ZTSSt8functionIFbRN4llvm14MachineOperandEEE", !238, i64 0, !17, i64 24}
!240 = !{!"_ZTSN4llvm20filter_iterator_baseIPNS_14MachineOperandESt8functionIFbRS1_EESt26bidirectional_iterator_tagEE", !237, i64 0, !161, i64 8, !239, i64 16}
!241 = !{!240, !161, i64 8}
!242 = !{!238, !17, i64 16}
!243 = !{!237, !161, i64 0}
!244 = !{!239, !17, i64 24}
!245 = !{!"branch_weights", i32 1, i32 1999}
!246 = !{!"branch_weights", i32 0, i32 1}
!247 = !{!232, !232, i64 0}
!248 = distinct !{!248, !171}
!249 = distinct !{!249, !171}
!250 = distinct !{!250, !171}
!251 = !{!149, !32, i64 0}
!252 = !{i64 8}
!253 = !{!161, !161, i64 0}
!254 = !{!"_ZTSN4llvm14MachineOperandE", !14, i64 0, !14, i64 1, !14, i64 2, !14, i64 3, !14, i64 3, !14, i64 3, !14, i64 3, !14, i64 3, !14, i64 3, !14, i64 3, !14, i64 3, !13, i64 4, !18, i64 8, !13, i64 16}
!255 = !{!254, !18, i64 8}
!256 = distinct !{!256, !171}
!257 = distinct !{!257, !171}
!258 = distinct !{!258, !171}
!259 = distinct !{!259, !171}
!260 = distinct !{!260, !"_ZNK4llvm12DIExpression15getFragmentInfoEv"}
!261 = distinct !{!261, !260, !"_ZNK4llvm12DIExpression15getFragmentInfoEv: argument 0"}
!262 = distinct !{!262, !"_ZNK4llvm12DIExpression15getFragmentInfoEv"}
!263 = distinct !{!263, !262, !"_ZNK4llvm12DIExpression15getFragmentInfoEv: argument 0"}
!264 = distinct !{!264, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E3endEv"}
!265 = distinct !{!265, !264, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E3endEv: argument 0"}
!266 = !{!"p1 _ZTSN4llvm8MetadataE", !17, i64 0}
!267 = !{!"_ZTSN4llvm9MDOperandE", !266, i64 0}
!268 = !{!267, !266, i64 0}
!269 = !{!"p1 long", !17, i64 0}
!270 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!271 = !{!270, !269, i64 0}
!272 = !{!261}
!273 = !{!270, !269, i64 8}
!274 = !{!263}
!275 = !{!265}
!276 = distinct !{!276, !171}
!277 = distinct !{!277, !171}
!278 = distinct !{!278, !171}
!279 = distinct !{!279, !171}
!280 = distinct !{!280, !"LVerDomain"}
!281 = distinct !{!281, !280}
!282 = distinct !{!282, !280}
!283 = distinct !{!283, !171, !287, !288}
!284 = distinct !{!284, !171, !287}
!285 = !{!281}
!286 = !{!282}
!287 = !{!"llvm.loop.isvectorized", i32 1}
!288 = !{!"llvm.loop.unroll.runtime.disable"}
!289 = distinct !{!289, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv"}
!290 = distinct !{!290, !289, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv: argument 0"}
!291 = distinct !{!291, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv"}
!292 = distinct !{!292, !291, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv: argument 0"}
!293 = !{!290}
!294 = !{!292}
!295 = distinct !{!295, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv"}
!296 = distinct !{!296, !295, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv: argument 0"}
!297 = distinct !{!297, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv"}
!298 = distinct !{!298, !297, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv: argument 0"}
!299 = !{!296}
!300 = !{!298}
!301 = distinct !{!301, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv"}
!302 = distinct !{!302, !301, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE5beginEv: argument 0"}
!303 = distinct !{!303, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv"}
!304 = distinct !{!304, !303, !"_ZNK4llvm14iterator_rangeINS_20filter_iterator_implIPNS_14MachineOperandESt8functionIFbRS2_EESt26bidirectional_iterator_tagEEE3endEv: argument 0"}
!305 = !{!302}
!306 = !{!304}
!307 = distinct !{!307, !171}
!308 = distinct !{!308, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E6getRepEv"}
!309 = distinct !{!309, !308, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E6getRepEv: argument 0"}
!310 = distinct !{!310, !"_ZNK4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE6getRepEv"}
!311 = distinct !{!311, !310, !"_ZNK4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE6getRepEv: argument 0"}
!312 = !{!311, !309}
!313 = distinct !{!313, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E6getRepEv"}
!314 = distinct !{!314, !313, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E6getRepEv: argument 0"}
!315 = distinct !{!315, !"_ZNK4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE6getRepEv"}
!316 = distinct !{!316, !315, !"_ZNK4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE6getRepEv: argument 0"}
!317 = !{!316, !314}
!318 = !{!223, !223, i64 0}
!319 = !{i8 0, i8 2}
!320 = !{!50, !50, i64 0}
!321 = !{!107, !107, i64 0}
!322 = !{i64 0, i64 8, !247, i64 8, i64 8, !321, i64 16, i64 4, !169}
!323 = distinct !{!323, !171}
!324 = distinct !{!324, !171}
!325 = distinct !{!325, !171}
!326 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!327 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!328 = distinct !{!328, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E6getRepEv"}
!329 = distinct !{!329, !328, !"_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E6getRepEv: argument 0"}
!330 = distinct !{!330, !"_ZNK4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE6getRepEv"}
!331 = distinct !{!331, !330, !"_ZNK4llvm13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S5_EEE6getRepEv: argument 0"}
!332 = distinct !{!332, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E12makeIteratorEPSB_"}
!333 = distinct !{!333, !332, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E12makeIteratorEPSB_: argument 0"}
!334 = distinct !{!334, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E3endEv"}
!335 = distinct !{!335, !334, !"_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_13DebugVariableENS_11SmallVectorIPNS_12MachineInstrELj2EEELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E3endEv: argument 0"}
!336 = !{!331, !329}
!337 = !{!333}
!338 = !{!335}
!339 = !{!233, !232, i64 8}
!340 = !{!233, !232, i64 16}
!341 = !{!233, !107, i64 24}
end_hunk_2
