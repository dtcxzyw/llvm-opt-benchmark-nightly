Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/atomdata?download=true
inline.NumInlined: 1593
inline.NumDeleted: 777
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 45
begin_hunk_0
@.str.5 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Unsupported nbnxn_atomdata_t format\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/nbnxm/atomdata.cpp\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"size_t(numExclusionFilters) <= sizeof(T) * 8\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"The filters should fit in the type\00", align 1
@__PRETTY_FUNCTION__._ZZN3gmxL19setExclusionFiltersIjEEvPSt6vectorIT_NS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEENS_15NbnxmKernelTypeEENKUlvE_clEv = private unnamed_addr constant [114 x i8] c"auto gmx::setExclusionFilters(AlignedVector<unsigned int> *, const NbnxmKernelType)::(lambda)::operator()() const\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Unsupported packing width\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"There are %d atom types in the system%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c", adding one for nbnxn_atomdata_t\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"GMX_LJCOMB_TOL\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Combination rules: geometric %s Lorentz-Berthelot %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"Using full Lennard-Jones parameter combination matrix\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Using %s Lennard-Jones combination rule\00", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"With NxN kernels not more than 64 energy groups are supported\0A\00", align 1
@.str.21 = private unnamed_addr constant [90 x i8] c"!usingLJPme || !ljCombinationRule || ljCombinationRule.value() == LJCombinationRule::None\00", align 1
@.str.22 = private unnamed_addr constant [69 x i8] c"Only one of ljCombinationRule and pmeLJCombinationRule can be active\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmxL26nbnxn_atomdata_params_initERKNS_8MDLoggerEPNS_16nbnxn_atomdata_t6ParamsENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES8_NS_8ArrayRefIKfEEbiENK3$_0clEv" = private unnamed_addr constant [248 x i8] c"auto gmx::nbnxn_atomdata_params_init(const MDLogger &, nbnxn_atomdata_t::Params *, const NbnxmKernelType, const std::optional<LJCombinationRule> &, const LJCombinationRule, ArrayRef<const real>, const bool, const int)::(lambda)::operator()() const\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"size_t(numTypes) * size_t(numTypes) * 2 == nbfp.size()\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"The size of nbfp should be two times a square number\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"With addFillerAtomType=false atom-type numTypes-1 should have params 0\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Unknown combination rule\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"numEnergyGroups == 1\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"GPU kernels do not support energy groups\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.33 = private unnamed_addr constant [15 x i8] c"begin_ <= end_\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"A range should have begin<=end\00", align 1
@__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv = private unnamed_addr constant [80 x i8] c"auto gmx::Range<int>::Range(const int, const int)::(lambda)::operator()() const\00", align 1
@.str.35 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/api/legacy/include/gromacs/utility/range.h\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"add_f_to_f called with nout>1 and locality!=eatAll\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Unsupported force format\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx16nbnxn_atomdata_t12reduceForcesENS_12AtomLocalityERKNS_7GridSetENS_8ArrayRefINS_11BasicVectorIfEEEEENK3$_0clEv" = private unnamed_addr constant [124 x i8] c"auto gmx::nbnxn_atomdata_t::reduceForces(const AtomLocality, const GridSet &, ArrayRef<RVec>)::(lambda)::operator()() const\00", align 1
@switch.table._ZN3gmx16nbnxn_atomdata_tC2ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii = private unnamed_addr constant [8 x i8] c"\00\04\04\04\08\08\01\00", align 4

@_ZN3gmx23nbnxn_atomdata_output_tC1ENS_15NbnxmKernelTypeEiNS_13PinningPolicyE = unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN3gmx23nbnxn_atomdata_output_tC2ENS_15NbnxmKernelTypeEiNS_13PinningPolicyE
@_ZN3gmx23nbnxn_atomdata_output_tC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx23nbnxn_atomdata_output_tC2EOS0_
@_ZN3gmx23nbnxn_atomdata_output_tD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx23nbnxn_atomdata_output_tD2Ev
@_ZN3gmx16nbnxn_atomdata_t9SimdMasksC1ENS_15NbnxmKernelTypeE = unnamed_addr alias void (ptr, i32), ptr @_ZN3gmx16nbnxn_atomdata_t9SimdMasksC2ENS_15NbnxmKernelTypeE
@_ZN3gmx16nbnxn_atomdata_t6ParamsC1ENS_13PinningPolicyE = unnamed_addr alias void (ptr, i32), ptr @_ZN3gmx16nbnxn_atomdata_t6ParamsC2ENS_13PinningPolicyE
@_ZN3gmx16nbnxn_atomdata_tC1ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii = unnamed_addr alias void (ptr, i32, ptr, i32, ptr, i32, ptr, i1, i32, i32), ptr @_ZN3gmx16nbnxn_atomdata_tC2ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii
@_ZN3gmx16nbnxn_atomdata_tD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx16nbnxn_atomdata_tD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN3gmx17enumValueToStringENS_17LJCombinationRuleE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3gmx17enumValueToStringENS_17LJCombinationRuleEE24s_ljCombinationRuleNames, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16nbnxn_atomdata_t22resizeCoordinateBufferEii(ptr noundef nonnull align 8 dereferenceable(656) initializes((408, 412)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 %1, ptr %i.a, align 8, !tbaa !72
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %1, ptr %i.c, align 4, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.e = load i32, ptr %i.d, align 8, !tbaa !74
  %i.f = mul nsw i32 %i.e, %1
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.g
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.r = sub nuw nsw i64 %i.g, %i.o
  tail call void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.r)
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.o, %i.g
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.t, ptr %i.i, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !76   ; 9 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = icmp ult i64 %i.h, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.h, 2305843009213693951        ; 2 uses
  %i.p = icmp ule i64 %i.m, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %.not23 = icmp ult i64 %i.m, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.c, i8 0, i64 %i.q, i1 false), !tbaa !79
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %i.q
  store ptr %scevgep.i, ptr %i.b, align 8, !tbaa !75
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.o, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #33
  unreachable

_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.h
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2305843009213693951) ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u) #22 ; 10 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.e, label %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28

bb.e:                                             ; preds = %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.y = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
  unreachable

_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28: ; preds = %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.g ; 2 uses
  %i.aa = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 %i.aa, i1 false), !tbaa !79
  %.not10.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %i.ab = add i64 %i.e, -4
  %i.ac = sub i64 %i.ab, %i.f                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 28
  %i.af = sub i64 %i.f, %i.w
  %diff.check = icmp ugt i64 %i.af, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.ac, 124
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 24
  %n.vec = and i64 %i.ae, 9223372036854775776     ; 4 uses
  %i.ah = shl i64 %n.vec, 2                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.d, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ak ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.d, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.al = getelementptr i8, ptr %next.gep34, i64 32
  %i.am = getelementptr i8, ptr %next.gep34, i64 64
  %i.an = getelementptr i8, ptr %next.gep34, i64 96
  %wide.load = load <8 x float>, ptr %next.gep34, align 4, !tbaa !79, !alias.scope !213, !noalias !212
  %wide.load35 = load <8 x float>, ptr %i.al, align 4, !tbaa !79, !alias.scope !213, !noalias !212
  %wide.load36 = load <8 x float>, ptr %i.am, align 4, !tbaa !79, !alias.scope !213, !noalias !212
  %wide.load37 = load <8 x float>, ptr %i.an, align 4, !tbaa !79, !alias.scope !213, !noalias !212
  %i.ao = getelementptr i8, ptr %next.gep, i64 32
  %i.ap = getelementptr i8, ptr %next.gep, i64 64
  %i.aq = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %wide.load, ptr %next.gep, align 4, !tbaa !79, !alias.scope !212, !noalias !213
  store <8 x float> %wide.load35, ptr %i.ao, align 4, !tbaa !79, !alias.scope !212, !noalias !213
  store <8 x float> %wide.load36, ptr %i.ap, align 4, !tbaa !79, !alias.scope !212, !noalias !213
  store <8 x float> %wide.load37, ptr %i.aq, align 4, !tbaa !79, !alias.scope !212, !noalias !213
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.ae, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec39, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.v, i64 %i.as
  %i.au = getelementptr i8, ptr %i.d, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.av = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.v, i64 %i.av
  %next.gep42 = getelementptr i8, ptr %i.d, i64 %i.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %wide.load43 = load <8 x float>, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !213, !noalias !212
  store <8 x float> %wide.load43, ptr %next.gep41, align 4, !tbaa !79, !alias.scope !212, !noalias !213
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.ae, %n.vec39
  br i1 %cmp.n45, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.ax = load float, ptr %.0911.i.i.i, align 4, !tbaa !79, !alias.scope !213, !noalias !212
  store float %i.ax, ptr %.012.i.i.i, align 4, !tbaa !79, !alias.scope !212, !noalias !213
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ay, %i.c
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !211

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.d, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.d) #22
  br label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, %bb.f
  store ptr %i.v, ptr %i.a, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %1
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store ptr %i.bb, ptr %i.i, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #34
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 4 dereferenceable(5), i64 noundef) local_unnamed_addr #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 4 dereferenceable(5), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16nbnxn_atomdata_t18resizeForceBuffersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72
  %i.c = add nsw i32 %i.b, 15
  %i.d = sdiv i32 %i.c, 16
  %i.e = shl nsw i32 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !214  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !214  ; 2 uses
  %.not7 = icmp eq ptr %i.g, %i.i
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 468
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit
  %.sroa.04.08 = phi ptr [ %i.g, %.lr.ph ], [ %i.z, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit ] ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !86
  %i.l = mul nsw i32 %i.e, %i.k
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75   ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 3 uses
  %i.v = icmp ult i64 %i.u, %i.m
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = sub nuw nsw i64 %i.m, %i.u
  tail call void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08, i64 noundef %i.w)
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.x = icmp ugt i64 %i.u, %i.m
  br i1 %i.x, label %bb.e, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.m ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %i.o, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 144 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx23nbnxn_atomdata_output_tC2ENS_15NbnxmKernelTypeEiNS_13PinningPolicyE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN3gmx16nbnxn_atomdata_t9SimdMasksC2ENS_15NbnxmKernelTypeE:bb.a

bb.g:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit23
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmxL19setExclusionFiltersIjEEvPSt6vectorIT_NS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEENS_15NbnxmKernelTypeEENKUlvE_clEv, ptr noundef nonnull @.str.7, i32 noundef 420) #33
          to label %.noexc24 unwind label %bb.f

.noexc24:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !106  ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.q
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = sub nuw nsw i64 %i.q, %i.z
  invoke void @_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ab)
          to label %.lr.ph.i unwind label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.ac = icmp ugt i64 %i.z, %i.q
  br i1 %i.ac, label %bb.k, label %.lr.ph.i

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.q ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.ad
  br i1 %.not.i.i.i, label %.lr.ph.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !106
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k, %bb.l, %bb.i
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !107
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i
  %index = phi i64 [ 0, %.lr.ph.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.lr.ph.i ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.af = shl nuw <8 x i32> splat (i32 1), %vec.ind
  %i.ag = shl nuw <8 x i32> splat (i32 1), %step.add
  %i.ah = shl nuw <8 x i32> splat (i32 1), %step.add.2
  %i.ai = shl nuw <8 x i32> splat (i32 1), %step.add.3
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store <8 x i32> %i.af, ptr %i.aj, align 4, !tbaa !93
  store <8 x i32> %i.ag, ptr %i.ak, align 4, !tbaa !93
  store <8 x i32> %i.ah, ptr %i.al, align 4, !tbaa !93
  store <8 x i32> %i.ai, ptr %i.am, align 4, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.an = icmp eq i64 %index.next, %i.q
  br i1 %i.an, label %_ZN3gmxL19setExclusionFiltersIjEEvPSt6vectorIT_NS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEENS_15NbnxmKernelTypeE.exit, label %vector.body, !llvm.loop !241

_ZN3gmxL19setExclusionFiltersIjEEvPSt6vectorIT_NS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEENS_15NbnxmKernelTypeE.exit: ; preds = %vector.body, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #34
  unreachable

_ZNSt12_Vector_baseImN3gmx9AllocatorImNS0_23AlignedAllocationPolicyEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #34
  unreachable

_ZNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !91     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !248
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !79
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !105
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #33
  unreachable

_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef %i.t) ; 10 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.e, label %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28

bb.e:                                             ; preds = %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
  unreachable

_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28: ; preds = %_ZNKSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.z = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.z, i1 false), !tbaa !79
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %i.aa = add i64 %i.d, -4
  %i.ab = sub i64 %i.aa, %i.e                     ; 3 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 28
  %i.ae = sub i64 %i.e, %i.v
  %diff.check = icmp ugt i64 %i.ae, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.ab, 124
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 4 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.u, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.aj ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.c, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.ak = getelementptr i8, ptr %next.gep34, i64 32
  %i.al = getelementptr i8, ptr %next.gep34, i64 64
  %i.am = getelementptr i8, ptr %next.gep34, i64 96
  %wide.load = load <8 x float>, ptr %next.gep34, align 4, !tbaa !79, !alias.scope !250, !noalias !249
  %wide.load35 = load <8 x float>, ptr %i.ak, align 4, !tbaa !79, !alias.scope !250, !noalias !249
  %wide.load36 = load <8 x float>, ptr %i.al, align 4, !tbaa !79, !alias.scope !250, !noalias !249
  %wide.load37 = load <8 x float>, ptr %i.am, align 4, !tbaa !79, !alias.scope !250, !noalias !249
  %i.an = getelementptr i8, ptr %next.gep, i64 32
  %i.ao = getelementptr i8, ptr %next.gep, i64 64
  %i.ap = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %wide.load, ptr %next.gep, align 4, !tbaa !79, !alias.scope !249, !noalias !250
  store <8 x float> %wide.load35, ptr %i.an, align 4, !tbaa !79, !alias.scope !249, !noalias !250
  store <8 x float> %wide.load36, ptr %i.ao, align 4, !tbaa !79, !alias.scope !249, !noalias !250
  store <8 x float> %wide.load37, ptr %i.ap, align 4, !tbaa !79, !alias.scope !249, !noalias !250
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.ad, 9223372036854775800   ; 3 uses
  %i.ar = shl i64 %n.vec39, 2                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.u, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.c, i64 %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.u, i64 %i.au
  %next.gep42 = getelementptr i8, ptr %i.c, i64 %i.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %wide.load43 = load <8 x float>, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !250, !noalias !249
  store <8 x float> %wide.load43, ptr %next.gep41, align 4, !tbaa !79, !alias.scope !249, !noalias !250
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !246

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.ad, %n.vec39
  br i1 %cmp.n45, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.aw = load float, ptr %.0911.i.i.i, align 4, !tbaa !79, !alias.scope !250, !noalias !249
  store float %i.aw, ptr %.012.i.i.i, align 4, !tbaa !79, !alias.scope !249, !noalias !250
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !247

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPfm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit
  tail call void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPfS5_S5_RS3_.exit, %bb.f
  store ptr %i.u, ptr %0, align 8, !tbaa !91
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !105
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !248
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !257
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPjmN3gmx9AllocatorIjNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPjmN3gmx9AllocatorIjNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !93
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !106
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #33
  unreachable

_ZNKSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef %i.t) ; 10 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.e, label %_ZSt27__uninitialized_default_n_aIPjmN3gmx9AllocatorIjNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28

bb.e:                                             ; preds = %_ZNKSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
  unreachable

_ZSt27__uninitialized_default_n_aIPjmN3gmx9AllocatorIjNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28: ; preds = %_ZNKSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.z = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.z, i1 false), !tbaa !93
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPjS5_S5_RS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt27__uninitialized_default_n_aIPjmN3gmx9AllocatorIjNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %i.aa = add i64 %i.d, -4
  %i.ab = sub i64 %i.aa, %i.e                     ; 3 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 28
  %i.ae = sub i64 %i.e, %i.v
  %diff.check = icmp ugt i64 %i.ae, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.ab, 124
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 4 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.u, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.aj ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.c, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.ak = getelementptr i8, ptr %next.gep34, i64 32
  %i.al = getelementptr i8, ptr %next.gep34, i64 64
  %i.am = getelementptr i8, ptr %next.gep34, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep34, align 4, !tbaa !93, !alias.scope !259, !noalias !258
  %wide.load35 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !93, !alias.scope !259, !noalias !258
  %wide.load36 = load <8 x i32>, ptr %i.al, align 4, !tbaa !93, !alias.scope !259, !noalias !258
  %wide.load37 = load <8 x i32>, ptr %i.am, align 4, !tbaa !93, !alias.scope !259, !noalias !258
  %i.an = getelementptr i8, ptr %next.gep, i64 32
  %i.ao = getelementptr i8, ptr %next.gep, i64 64
  %i.ap = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !93, !alias.scope !258, !noalias !259
  store <8 x i32> %wide.load35, ptr %i.an, align 4, !tbaa !93, !alias.scope !258, !noalias !259
  store <8 x i32> %wide.load36, ptr %i.ao, align 4, !tbaa !93, !alias.scope !258, !noalias !259
  store <8 x i32> %wide.load37, ptr %i.ap, align 4, !tbaa !93, !alias.scope !258, !noalias !259
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !254

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPjS5_S5_RS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.ad, 9223372036854775800   ; 3 uses
  %i.ar = shl i64 %n.vec39, 2                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.u, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.c, i64 %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.u, i64 %i.au
  %next.gep42 = getelementptr i8, ptr %i.c, i64 %i.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %wide.load43 = load <8 x i32>, ptr %next.gep42, align 4, !tbaa !93, !alias.scope !259, !noalias !258
  store <8 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !93, !alias.scope !258, !noalias !259
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !255

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.ad, %n.vec39
  br i1 %cmp.n45, label %_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPjS5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.aw = load i32, ptr %.0911.i.i.i, align 4, !tbaa !93, !alias.scope !259, !noalias !258
  store i32 %i.aw, ptr %.012.i.i.i, align 4, !tbaa !93, !alias.scope !258, !noalias !259
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPjS5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !256

_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPjS5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt27__uninitialized_default_n_aIPjmN3gmx9AllocatorIjNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPjm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPjS5_S5_RS3_.exit
  tail call void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPjS5_S5_RS3_.exit, %bb.f
  store ptr %i.u, ptr %0, align 8, !tbaa !107
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !106
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !257
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmN3gmx9AllocatorIjNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIjN3gmx9AllocatorIjNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16nbnxn_atomdata_t6ParamsC2ENS_13PinningPolicyE(ptr noundef nonnull align 8 dereferenceable(408) initializes((0, 4), (8, 40)) %0, i32 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEEC2ESt16initializer_listIfERKS3_.exit:
  %2 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 4 uses
  %3 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %4 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %5 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %6 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %7 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %8 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %9 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %10 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %11 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  %12 = alloca %"class.gmx::HostAllocationPolicy", align 8 ; 5 uses
  store i32 0, ptr %0, align 8, !tbaa !109
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %2, i32 noundef %1, i1 noundef zeroext false)
  %.sroa.0232.0.copyload = load i40, ptr %2, align 8
  %.sroa.0232.0.insert.ext = zext i40 %.sroa.0232.0.copyload to i64
  store i64 %.sroa.0232.0.insert.ext, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %3, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEEC2ESt16initializer_listIfERKS3_.exit
  %.sroa.0229.0.copyload = load i40, ptr %3, align 8
  %.sroa.0229.0.insert.ext = zext i40 %.sroa.0229.0.copyload to i64
  store i64 %.sroa.0229.0.insert.ext, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %4, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.b unwind label %.body54

bb.b:                                             ; preds = %bb.a
  %.sroa.0226.0.copyload = load i40, ptr %4, align 8
  %.sroa.0226.0.insert.ext = zext i40 %.sroa.0226.0.copyload to i64
  store i64 %.sroa.0226.0.insert.ext, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %5, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.c unwind label %.body68

bb.c:                                             ; preds = %bb.b
  %.sroa.0223.0.copyload = load i40, ptr %5, align 8
  %.sroa.0223.0.insert.ext = zext i40 %.sroa.0223.0.copyload to i64
  store i64 %.sroa.0223.0.insert.ext, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %6, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.d unwind label %.body83

bb.d:                                             ; preds = %bb.c
  %.sroa.0220.0.copyload = load i40, ptr %6, align 8
  %.sroa.0220.0.insert.ext = zext i40 %.sroa.0220.0.copyload to i64
  store i64 %.sroa.0220.0.insert.ext, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %7, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.e unwind label %.body98

bb.e:                                             ; preds = %bb.d
  %.sroa.0217.0.copyload = load i40, ptr %7, align 8
  %.sroa.0217.0.insert.ext = zext i40 %.sroa.0217.0.copyload to i64
  store i64 %.sroa.0217.0.insert.ext, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %8, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.f unwind label %.body113

bb.f:                                             ; preds = %bb.e
  %.sroa.0214.0.copyload = load i40, ptr %8, align 8
  %.sroa.0214.0.insert.ext = zext i40 %.sroa.0214.0.copyload to i64
  store i64 %.sroa.0214.0.insert.ext, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN3gmx20HostAllocationPolicyC1ENS_13PinningPolicyEb(ptr noundef nonnull align 4 dereferenceable(5) %9, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.g unwind label %.body128

bb.g:                                             ; preds = %bb.f
  %.sroa.0211.0.copyload = load i40, ptr %9, align 8
  %.sroa.0211.0.insert.ext = zext i40 %.sroa.0211.0.copyload to i64
end_hunk_1
begin_hunk_2_@_ZN3gmx16nbnxn_atomdata_tC2ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii:bb.a
  %i.bw = ashr exact i64 %i.bv, 2                 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %i.bo
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = sub nuw nsw i64 %i.bo, %i.bw
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 noundef %i.bz)
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.n
  %.pre.i = load i32, ptr %0, align 8, !tbaa !109
  %.pre284.i = shl nsw i32 %.pre.i, 1
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ca = icmp ugt i64 %i.bw, %i.bo
  br i1 %i.ca, label %bb.p, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bo ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.br, %i.cb
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.cb, ptr %i.bq, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %.noexc43
  %.pre-phi.i = phi i32 [ %.pre284.i, %.noexc43 ], [ %i.bm, %bb.o ], [ %i.bm, %bb.p ], [ %i.bm, %bb.q ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cd = sext i32 %.pre-phi.i to i64             ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 11 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !75 ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !76 ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2                 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.cd
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i
  %i.cn = sub nuw nsw i64 %i.cd, %i.cl
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 noundef %i.cn)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i
  %i.co = icmp ugt i64 %i.cl, %i.cd
  br i1 %i.co, label %bb.t, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cd ; 2 uses
  %.not.i.i217.i = icmp eq ptr %i.cg, %i.cp
  br i1 %.not.i.i217.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.cp, ptr %i.cf, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i: ; preds = %bb.r, %bb.u, %bb.t, %bb.s
  %i.cq = call ptr @getenv(ptr noundef nonnull @.str.15) #22 ; 2 uses
  %.not207.i = icmp eq ptr %i.cq, null
  br i1 %.not207.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i
  %i.cr = call double @strtod(ptr noundef nonnull captures(none) %i.cq, ptr noundef null) #22
  %i.cs = fptrunc double %i.cr to float
  %i.ct = fpext float %i.cs to double
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i
  %.0192.i = phi double [ %i.ct, %bb.v ], [ f0x3EE4F8B580000000, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit218.i ] ; 4 uses
  %i.cu = icmp sgt i32 %i.af, 0
  br i1 %i.cu, label %.lr.ph.i, label %.preheader249.i

.lr.ph.i:                                         ; preds = %bb.w
  %.0184215.i = shl nuw i32 %i.af, 1
  %i.cv = add i32 %.0184215.i, 2
  %wide.trip.count275.i = zext nneg i32 %i.af to i64
  br label %bb.x

.preheader249.i:                                  ; preds = %bb.ab, %bb.w
  %.0185.lcssa.i = phi i8 [ 1, %bb.w ], [ %.1186.i, %bb.ab ] ; 2 uses
  %i.cw = load i32, ptr %0, align 8, !tbaa !109   ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.preheader.preheader.i, label %._crit_edge264.i

.preheader.preheader.i:                           ; preds = %.preheader249.i
  %.0182214.i = shl i32 %i.af, 1
  %i.cy = add i32 %.0182214.i, 2
  br label %.preheader.i

bb.x:                                             ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv273.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next274.i, %bb.ab ] ; 4 uses
  %.0185251.i = phi i8 [ 1, %.lr.ph.i ], [ %.1186.i, %bb.ab ]
  %i.cz = trunc nuw nsw i64 %indvars.iv273.i to i32
  %i.da = mul i32 %i.cv, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %i.n, i64 %i.db
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !79
  %i.de = fdiv <2 x float> %i.dd, <float 6.000000e+00, float 1.200000e+01> ; 3 uses
  %i.df = extractelement <2 x float> %i.de, i64 0 ; 3 uses
  %i.dg = fcmp ogt float %i.df, 0.000000e+00
  %i.dh = extractelement <2 x float> %i.de, i64 1 ; 3 uses
  %i.di = fcmp ogt float %i.dh, 0.000000e+00
  %or.cond.i = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dj = fdiv float %i.dh, %i.df
  %i.dk = call noundef float @cbrtf(float noundef %i.dj) #37
  %i.dl = call noundef float @sqrtf(float noundef %i.dk) #22
  %i.dm = load ptr, ptr %i.ce, align 8, !tbaa !76
  %.idx348.i = shl nuw nsw i64 %indvars.iv273.i, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx348.i ; 2 uses
  store float %i.dl, ptr %i.dn, align 4, !tbaa !79
  %i.do = fpext float %i.df to double             ; 2 uses
  %i.dp = fmul nnan double %i.do, 2.500000e-01
  %i.dq = fmul double %i.dp, %i.do
  %i.dr = fpext float %i.dh to double
  %i.ds = fdiv double %i.dq, %i.dr
  %i.dt = fptrunc double %i.ds to float
  br label %.sink.split.i

bb.z:                                             ; preds = %bb.x
  %i.du = fcmp oeq <2 x float> %i.de, zeroinitializer ; 2 uses
  %i.dv = extractelement <2 x i1> %i.du, i64 0
  %i.dw = extractelement <2 x i1> %i.du, i64 1
  %or.cond3.i = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond3.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dx = load ptr, ptr %i.ce, align 8, !tbaa !76
  %.idx347.i = shl nuw nsw i64 %indvars.iv273.i, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx347.i ; 2 uses
  store float 0.000000e+00, ptr %i.dy, align 4, !tbaa !79
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aa, %bb.y
  %.sink354.i = phi ptr [ %i.dy, %bb.aa ], [ %i.dn, %bb.y ]
  %.sink.i = phi float [ 0.000000e+00, %bb.aa ], [ %i.dt, %bb.y ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sink354.i, i64 4
  store float %.sink.i, ptr %i.dz, align 4, !tbaa !79
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i, %bb.z
  %.1186.i = phi i8 [ 0, %bb.z ], [ %.0185251.i, %.sink.split.i ] ; 2 uses
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i, 1 ; 2 uses
  %exitcond276.not.i = icmp eq i64 %indvars.iv.next274.i, %wide.trip.count275.i
  br i1 %exitcond276.not.i, label %.preheader249.i, label %bb.x, !llvm.loop !262

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.ea = phi i32 [ %i.cw, %.preheader.preheader.i ], [ %i.fu, %._crit_edge.i ] ; 11 uses
  %indvars.iv282.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next283.i, %._crit_edge.i ] ; 6 uses
  %.2187261.i = phi i8 [ %.0185.lcssa.i, %.preheader.preheader.i ], [ %.3188.lcssa.i, %._crit_edge.i ] ; 6 uses
  %.0189260.i = phi i8 [ 1, %.preheader.preheader.i ], [ %.1190.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph256.i, label %._crit_edge.i

.lr.ph256.i:                                      ; preds = %.preheader.i
  %i.ec = icmp slt i64 %indvars.iv282.i, %i.ag
  %i.ed = mul nuw nsw i64 %indvars.iv282.i, %i.ag ; 2 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv282.i to i32 ; 3 uses
  %i.ef = add nsw i64 %i.ed, %indvars.iv282.i
  %.idx = shl i64 %i.ef, 3
  %i.eg = getelementptr i8, ptr %i.n, i64 %.idx   ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %i.ei = shl nuw nsw i64 %indvars.iv282.i, 1     ; 3 uses
  %.fr.i = freeze i1 %i.ec
  br i1 %.fr.i, label %.lr.ph256.split.i, label %.lr.ph256.split.us.i

.lr.ph256.split.us.i:                             ; preds = %.lr.ph256.i
  %i.ej = load ptr, ptr %i.bp, align 8, !tbaa !76 ; 7 uses
  %i.ek = mul nuw nsw i32 %i.ea, %i.ee            ; 2 uses
  %i.el = shl nuw nsw i32 %i.ek, 1
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr [4 x i8], ptr %i.ej, i64 %i.em
  store <2 x float> zeroinitializer, ptr %i.en, align 4, !tbaa !79
  %exitcond278.peel.not.i = icmp eq i32 %i.ea, 1
  br i1 %exitcond278.peel.not.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph256.split.us.i
  %i.eo = zext nneg i32 %i.ek to i64              ; 6 uses
  %i.ep = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.eq = add nsw i64 %i.ep, -1                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.ea, 5
  br i1 %min.iters.check, label %.peel.next.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check182 = icmp ult i32 %i.ea, 33
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.er = and i64 %i.eq, 28
  %n.vec = and i64 %i.eq, -32                     ; 4 uses
  %i.es = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.et = or disjoint i64 %index, 1
  %i.eu = or disjoint i64 %index, 9
  %i.ev = or disjoint i64 %index, 17
  %i.ew = or disjoint i64 %index, 25
  %i.ex = add nuw nsw i64 %i.et, %i.eo
  %i.ey = add nuw nsw i64 %i.eu, %i.eo
  %i.ez = add nuw nsw i64 %i.ev, %i.eo
  %i.fa = add nuw nsw i64 %i.ew, %i.eo
  %i.fb = shl i64 %i.ex, 3
  %i.fc = shl i64 %i.ey, 3
  %i.fd = shl i64 %i.ez, 3
  %i.fe = shl i64 %i.fa, 3
  %i.ff = getelementptr i8, ptr %i.ej, i64 %i.fb
  %i.fg = getelementptr i8, ptr %i.ej, i64 %i.fc
  %i.fh = getelementptr i8, ptr %i.ej, i64 %i.fd
  %i.fi = getelementptr i8, ptr %i.ej, i64 %i.fe
  store <16 x float> zeroinitializer, ptr %i.ff, align 4, !tbaa !79
  store <16 x float> zeroinitializer, ptr %i.fg, align 4, !tbaa !79
  store <16 x float> zeroinitializer, ptr %i.fh, align 4, !tbaa !79
  store <16 x float> zeroinitializer, ptr %i.fi, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.er, 0
  br i1 %min.epilog.iters.check, label %.peel.next.i.preheader, label %vec.epilog.ph, !prof !120

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec183 = and i64 %i.eq, -4                   ; 3 uses
  %i.fk = or disjoint i64 %n.vec183, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index184 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next185, %vec.epilog.vector.body ] ; 2 uses
  %i.fl = or disjoint i64 %index184, 1
  %i.fm = add nuw nsw i64 %i.fl, %i.eo
  %i.fn = shl i64 %i.fm, 3
  %i.fo = getelementptr i8, ptr %i.ej, i64 %i.fn
  store <8 x float> zeroinitializer, ptr %i.fo, align 4, !tbaa !79
  %index.next185 = add nuw i64 %index184, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next185, %n.vec183
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !264

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n186 = icmp eq i64 %i.eq, %n.vec183
  br i1 %cmp.n186, label %._crit_edge.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.es, %vec.epilog.iter.check ], [ %i.fk, %vec.epilog.middle.block ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %.peel.next.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next.i ], [ %indvars.iv.ph, %.peel.next.i.preheader ] ; 2 uses
  %i.fq = add nuw nsw i64 %indvars.iv, %i.eo
  %.idx169 = shl i64 %i.fq, 3
  %i.fr = getelementptr i8, ptr %i.ej, i64 %.idx169
  store <2 x float> zeroinitializer, ptr %i.fr, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond278.not.i = icmp eq i64 %indvars.iv.next, %i.ep
  br i1 %exitcond278.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !265

._crit_edge264.loopexit.i:                        ; preds = %._crit_edge.i
  %i.fs = trunc nuw i8 %.1190.lcssa.i to i1
  br label %._crit_edge264.i

._crit_edge264.i:                                 ; preds = %._crit_edge264.loopexit.i, %.preheader249.i
  %.0189.lcssa.i = phi i1 [ true, %.preheader249.i ], [ %i.fs, %._crit_edge264.loopexit.i ] ; 2 uses
  %.2187.lcssa.i = phi i8 [ %.0185.lcssa.i, %.preheader249.i ], [ %.3188.lcssa.i, %._crit_edge264.loopexit.i ] ; 2 uses
  %i.ft = load ptr, ptr @debug, align 8, !tbaa !285 ; 2 uses
  %.not208.i = icmp eq ptr %i.ft, null
  br i1 %.not208.i, label %bb.ap, label %bb.ao

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.an, %middle.block, %vec.epilog.middle.block, %.lr.ph256.split.us.i, %.preheader.i
  %i.fu = phi i32 [ %i.ea, %.preheader.i ], [ 1, %.lr.ph256.split.us.i ], [ %i.ea, %middle.block ], [ %i.ji, %bb.an ], [ %i.ea, %vec.epilog.middle.block ], [ %i.ea, %.peel.next.i ] ; 2 uses
  %.1190.lcssa.i = phi i8 [ %.0189260.i, %.preheader.i ], [ %.0189260.i, %.lr.ph256.split.us.i ], [ %.0189260.i, %middle.block ], [ %.2191.i, %bb.an ], [ %.0189260.i, %vec.epilog.middle.block ], [ %.0189260.i, %.peel.next.i ] ; 2 uses
  %.3188.lcssa.i = phi i8 [ %.2187261.i, %.preheader.i ], [ %.2187261.i, %.lr.ph256.split.us.i ], [ %.2187261.i, %middle.block ], [ %.4.i, %bb.an ], [ %.2187261.i, %vec.epilog.middle.block ], [ %.2187261.i, %.peel.next.i ] ; 2 uses
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv.next283.i, %i.fv
  br i1 %i.fw, label %.preheader.i, label %._crit_edge264.loopexit.i, !llvm.loop !266

.lr.ph256.split.i:                                ; preds = %.lr.ph256.i, %bb.an
  %indvars.iv280.i = phi i64 [ %indvars.iv.next281.i, %bb.an ], [ 0, %.lr.ph256.i ] ; 7 uses
  %i.fx = phi i32 [ %i.ji, %bb.an ], [ %i.ea, %.lr.ph256.i ] ; 2 uses
  %.3188254.i = phi i8 [ %.4.i, %bb.an ], [ %.2187261.i, %.lr.ph256.i ] ; 2 uses
  %.1190253.i = phi i8 [ %.2191.i, %bb.an ], [ %.0189260.i, %.lr.ph256.i ] ; 2 uses
  %i.fy = icmp slt i64 %indvars.iv280.i, %i.ag
  br i1 %i.fy, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %.lr.ph256.split.i
  %i.fz = add nsw i64 %indvars.iv280.i, %i.ed
  %.idx349.i = shl i64 %i.fz, 3
  %i.ga = getelementptr i8, ptr %i.n, i64 %.idx349.i
  %i.gb = load <2 x float>, ptr %i.ga, align 4, !tbaa !79 ; 6 uses
  %i.gc = mul nuw nsw i32 %i.fx, %i.ee
  %i.gd = trunc nuw nsw i64 %indvars.iv280.i to i32 ; 2 uses
  %i.ge = add nsw i32 %i.gc, %i.gd
  %i.gf = shl nsw i32 %i.ge, 1
  %i.gg = sext i32 %i.gf to i64
  %i.gh = load ptr, ptr %i.bp, align 8, !tbaa !76
  %i.gi = getelementptr [4 x i8], ptr %i.gh, i64 %i.gg
  store <2 x float> %i.gb, ptr %i.gi, align 4, !tbaa !79
  %i.gj = trunc nuw i8 %.1190253.i to i1
  br i1 %i.gj, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %foldExtExtBinop = fmul <2 x float> %i.gb, %i.gb
  %i.gk = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gl = fpext float %i.gk to double
  %i.gm = load float, ptr %i.eg, align 4, !tbaa !79
  %i.gn = mul i32 %i.cy, %i.gd
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr [4 x i8], ptr %i.n, i64 %i.go ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !79
  %i.gr = fmul float %i.gm, %i.gq
  %i.gs = fpext float %i.gr to double
  %i.gt = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.gl, double noundef %i.gs, double noundef %.0192.i)
          to label %.noexc45 unwind label %.loopexit

.noexc45:                                         ; preds = %bb.ad
  br i1 %i.gt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.noexc45
  %foldExtExtBinop221 = fmul <2 x float> %i.gb, %i.gb
  %i.gu = extractelement <2 x float> %foldExtExtBinop221, i64 1
  %i.gv = fpext float %i.gu to double
  %i.gw = load float, ptr %i.eh, align 4, !tbaa !79
  %i.gx = getelementptr i8, ptr %i.gp, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !79
  %i.gz = fmul float %i.gw, %i.gy
  %i.ha = fpext float %i.gz to double
  %i.hb = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.gv, double noundef %i.ha, double noundef %.0192.i)
          to label %.noexc46 unwind label %.loopexit

.noexc46:                                         ; preds = %bb.ae
  %i.hc = zext i1 %i.hb to i8
  br label %bb.af

bb.af:                                            ; preds = %.noexc46, %.noexc45, %bb.ac
  %i.hd = phi i8 [ 0, %.noexc45 ], [ 0, %bb.ac ], [ %i.hc, %.noexc46 ] ; 6 uses
  %i.he = fdiv <2 x float> %i.gb, <float 6.000000e+00, float 1.200000e+01> ; 3 uses
  %i.hf = trunc nuw i8 %.3188254.i to i1
  br i1 %i.hf, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.hg = extractelement <2 x float> %i.he, i64 0 ; 3 uses
  %i.hh = fcmp oeq float %i.hg, 0.000000e+00
  %i.hi = extractelement <2 x float> %i.he, i64 1 ; 3 uses
  %i.hj = fcmp oeq float %i.hi, 0.000000e+00
  %or.cond5.i = select i1 %i.hh, i1 %i.hj, i1 false
  br i1 %or.cond5.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.hk = load ptr, ptr %i.ce, align 8, !tbaa !76 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ei
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !79
  %i.ho = fcmp oeq float %i.hn, 0.000000e+00
  br i1 %i.ho, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.idx350.i = shl nuw nsw i64 %indvars.iv280.i, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx350.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !79
  %i.hs = fcmp oeq float %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.ht = fcmp ogt <2 x float> %i.he, zeroinitializer ; 2 uses
  %i.hu = extractelement <2 x i1> %i.ht, i64 0
  %i.hv = extractelement <2 x i1> %i.ht, i64 1
  %or.cond7.i = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %or.cond7.i, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.hw = fdiv float %i.hi, %i.hg
  %i.hx = call noundef float @cbrtf(float noundef %i.hw) #37
  %i.hy = call noundef float @sqrtf(float noundef %i.hx) #22
  %i.hz = fpext float %i.hy to double
  %i.ia = load ptr, ptr %i.ce, align 8, !tbaa !76 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ei
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !79
  %i.id = shl nuw nsw i64 %indvars.iv280.i, 1     ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !79
  %i.ig = fadd float %i.ic, %i.if
  %i.ih = fpext float %i.ig to double
  %i.ii = fmul double %i.ih, 5.000000e-01
  %i.ij = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.hz, double noundef %i.ii, double noundef %.0192.i)
          to label %.noexc47 unwind label %.loopexit

.noexc47:                                         ; preds = %bb.ak
end_hunk_2
begin_hunk_3_@_ZN3gmx18nbnxn_atomdata_setEPNS_16nbnxn_atomdata_tERKNS_7GridSetENS_8ArrayRefIKiEES7_NS5_IKfEES9_S7_b:bb.a
  call void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 noundef %i.bt)
  %.pre87.i = load ptr, ptr %i.i, align 8, !tbaa !140
  %.pre88.i = load i32, ptr %i.q, align 8, !tbaa !162 ; 2 uses
  %.pre89.i = load ptr, ptr %i.p, align 8, !tbaa !163 ; 2 uses
  %.phi.trans.insert.i = sext i32 %.pre88.i to i64 ; 2 uses
  %.phi.trans.insert90.i = getelementptr [376 x i8], ptr %.pre89.i, i64 %.phi.trans.insert.i ; 3 uses
  %.phi.trans.insert91.i = getelementptr i8, ptr %.phi.trans.insert90.i, i64 -276
  %.pre92.i = load i32, ptr %.phi.trans.insert91.i, align 4, !tbaa !185
  %.phi.trans.insert93.i = getelementptr i8, ptr %.phi.trans.insert90.i, i64 -280
  %.pre94.i = load i32, ptr %.phi.trans.insert93.i, align 8, !tbaa !186
  %.phi.trans.insert95.i = getelementptr i8, ptr %.phi.trans.insert90.i, i64 -364
  %.pre96.i = load i32, ptr %.phi.trans.insert95.i, align 4, !tbaa !187
  %.pre101.i = add nsw i32 %.pre94.i, %.pre92.i
  %.pre103.i = mul nsw i32 %.pre101.i, %.pre96.i
  %.pre105.i = sext i32 %.pre103.i to i64
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit39.i

bb.h:                                             ; preds = %bb.f
  %i.bu = icmp ugt i64 %i.bq, %i.bi
  br i1 %i.bu, label %bb.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit39.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bi ; 2 uses
  %.not.i.i38.i = icmp eq ptr %i.bl, %i.bv
  br i1 %.not.i.i38.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit39.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bv, ptr %i.bk, align 8, !tbaa !188
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit39.i

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit39.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.pre-phi106.i = phi i64 [ %.pre105.i, %bb.g ], [ %i.bi, %bb.h ], [ %i.bi, %bb.i ], [ %i.bi, %bb.j ] ; 4 uses
  %.pre-phi100.i = phi i64 [ %.phi.trans.insert.i, %bb.g ], [ %i.ay, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %bb.j ] ; 3 uses
  %i.bw = phi ptr [ %.pre89.i, %bb.g ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ %i.ax, %bb.j ] ; 3 uses
  %i.bx = phi i32 [ %.pre88.i, %bb.g ], [ %i.aw, %bb.h ], [ %i.aw, %bb.i ], [ %i.aw, %bb.j ] ; 3 uses
  %i.by = phi ptr [ %.pre87.i, %bb.g ], [ %i.av, %bb.h ], [ %i.av, %bb.i ], [ %i.av, %bb.j ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 304
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 312 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !188 ; 2 uses
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !111 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2                 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %.pre-phi106.i
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit39.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 296
  %i.cj = sub nuw nsw i64 %.pre-phi106.i, %i.cg
  call void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 noundef %i.cj)
  %.pre97.i = load ptr, ptr %i.p, align 8, !tbaa !163
  %.pre98.i = load i32, ptr %i.q, align 8, !tbaa !162 ; 2 uses
  %.pre107.i = sext i32 %.pre98.i to i64
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit41.i

bb.l:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit39.i
  %i.ck = icmp ugt i64 %i.cg, %.pre-phi106.i
  br i1 %i.ck, label %bb.m, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit41.i

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.pre-phi106.i ; 2 uses
  %.not.i.i40.i = icmp eq ptr %i.cb, %i.cl
  br i1 %.not.i.i40.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit41.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.cl, ptr %i.ca, align 8, !tbaa !188
  br label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit41.i

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit41.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.pre-phi108.i = phi i64 [ %.pre107.i, %bb.k ], [ %.pre-phi100.i, %bb.l ], [ %.pre-phi100.i, %bb.m ], [ %.pre-phi100.i, %bb.n ]
  %i.cm = phi i32 [ %.pre98.i, %bb.k ], [ %i.bx, %bb.l ], [ %i.bx, %bb.m ], [ %i.bx, %bb.n ]
  %i.cn = phi ptr [ %.pre97.i, %bb.k ], [ %i.bw, %bb.l ], [ %i.bw, %bb.m ], [ %i.bw, %bb.n ] ; 3 uses
  %.not.i.i42.i = icmp eq ptr %i.cn, null
  %.idx.i = mul nuw nsw i64 %.pre-phi108.i, 376
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i
  %.not768284.i = icmp eq i32 %i.cm, 0
  %.not7682.i = select i1 %.not.i.i42.i, i1 true, i1 %.not768284.i
  br i1 %.not7682.i, label %_ZN3gmxL28nbnxn_atomdata_set_atomtypesEPNS_16nbnxn_atomdata_t6ParamsERKNS_7GridSetENS_8ArrayRefIKiEES8_b.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit41.i
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cq = load ptr, ptr %12, align 8              ; 9 uses
  %i.cr = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 208
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 304
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge81.i, %.preheader.lr.ph.i
  %.sroa.067.083.i = phi ptr [ %i.cn, %.preheader.lr.ph.i ], [ %i.dj, %._crit_edge81.i ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.067.083.i, i64 88 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.067.083.i, i64 92 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !93
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !93
  %i.cy = mul nsw i32 %i.cx, %i.cw
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph80.i, label %._crit_edge81.i

.lr.ph80.i:                                       ; preds = %.preheader.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.067.083.i, i64 152
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !111
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.067.083.i, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.067.083.i, i64 100
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !111
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.067.083.i, i64 120
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !111
  %i.dh = load ptr, ptr %i.cs, align 8, !tbaa !111
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !111
  br label %bb.o

._crit_edge81.i:                                  ; preds = %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit64.i, %.preheader.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.067.083.i, i64 376 ; 2 uses
  %.not76.i = icmp eq ptr %i.dj, %i.co
  br i1 %.not76.i, label %_ZN3gmxL28nbnxn_atomdata_set_atomtypesEPNS_16nbnxn_atomdata_t6ParamsERKNS_7GridSetENS_8ArrayRefIKiEES8_b.exit, label %.preheader.i

bb.o:                                             ; preds = %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit64.i, %.lr.ph80.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph80.i ], [ %indvars.iv.next.i, %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit64.i ] ; 3 uses
  %i.dk = getelementptr [4 x i8], ptr %i.db, i64 %indvars.iv.i ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !93
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !93 ; 2 uses
  %i.do = sub i32 %i.dm, %i.dn
  %i.dp = load i32, ptr %i.dc, align 4, !tbaa !187 ; 2 uses
  %i.dq = mul i32 %i.do, %i.dp                    ; 6 uses
  %i.dr = load i32, ptr %i.dd, align 4, !tbaa !185
  %i.ds = add nsw i32 %i.dr, %i.dn
  %i.dt = mul nsw i32 %i.ds, %i.dp
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.du ; 18 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !93 ; 8 uses
  %i.dy = load i32, ptr %i.cr, align 8, !tbaa !109
  %i.dz = add nsw i32 %i.dy, -1                   ; 3 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.du ; 12 uses
  %i.eb = icmp sgt i32 %i.dx, 0
  br i1 %i.eb, label %.lr.ph.preheader.i.i, label %.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %wide.trip.count.i.i = zext nneg i32 %i.dx to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.ec = icmp ult i32 %i.dx, 8
  br i1 %i.ec, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483640
  br label %.lr.ph.i.i

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod190 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i.i.epil
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !93
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !93
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i.i.epil
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !93
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i, label %.lr.ph.i.i.epil, !llvm.loop !307

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.o
  %.015.lcssa.i.i = phi i64 [ 0, %bb.o ], [ %wide.trip.count.i.i, %.lr.ph.i.i.epil ], [ %wide.trip.count.i.i, %.preheader.i.i.loopexit.unr-lcssa ] ; 5 uses
  %i.ej = icmp slt i32 %i.dx, %i.dq
  br i1 %i.ej, label %iter.check173, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit.i

iter.check173:                                    ; preds = %.preheader.i.i
  %i.ek = xor i32 %i.dx, -1
  %i.el = add i32 %i.dq, %i.ek                    ; 3 uses
  %i.em = zext i32 %i.el to i64
  %i.en = add nuw nsw i64 %i.em, 1                ; 5 uses
  %min.iters.check159 = icmp ult i32 %i.el, 3
  br i1 %min.iters.check159, label %.lr.ph21.i.i.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %iter.check173
  %min.iters.check161 = icmp ult i32 %i.el, 31
  br i1 %min.iters.check161, label %vec.epilog.ph177, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %i.eo = and i64 %i.en, 28
  %n.vec163 = and i64 %i.en, 8589934560           ; 5 uses
  %i.ep = add nuw nsw i64 %.015.lcssa.i.i, %n.vec163
  %i.eq = trunc i64 %n.vec163 to i32
  %i.er = add i32 %i.dx, %i.eq
  %broadcast.splatinsert164 = insertelement <8 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat165 = shufflevector <8 x i32> %broadcast.splatinsert164, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.015.lcssa.i.i
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph162
  %index167 = phi i64 [ 0, %vector.ph162 ], [ %index.next168, %vector.body166 ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index167 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  store <8 x i32> %broadcast.splat165, ptr %i.et, align 4, !tbaa !93
  store <8 x i32> %broadcast.splat165, ptr %i.eu, align 4, !tbaa !93
  store <8 x i32> %broadcast.splat165, ptr %i.ev, align 4, !tbaa !93
  store <8 x i32> %broadcast.splat165, ptr %i.ew, align 4, !tbaa !93
  %index.next168 = add nuw i64 %index167, 32      ; 2 uses
  %i.ex = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.ex, label %middle.block169, label %vector.body166, !llvm.loop !308

middle.block169:                                  ; preds = %vector.body166
  %cmp.n170 = icmp eq i64 %i.en, %n.vec163
  br i1 %cmp.n170, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit.i, label %vec.epilog.iter.check175

vec.epilog.iter.check175:                         ; preds = %middle.block169
  %min.epilog.iters.check176 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check176, label %.lr.ph21.i.i.preheader, label %vec.epilog.ph177, !prof !120

vec.epilog.ph177:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check175
  %vec.epilog.resume.val171 = phi i64 [ %n.vec163, %vec.epilog.iter.check175 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec178 = and i64 %i.en, 8589934588           ; 4 uses
  %i.ey = add nuw nsw i64 %.015.lcssa.i.i, %n.vec178
  %i.ez = trunc i64 %n.vec178 to i32
  %i.fa = add i32 %i.dx, %i.ez
  %broadcast.splatinsert179 = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat180 = shufflevector <4 x i32> %broadcast.splatinsert179, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.015.lcssa.i.i
  br label %vec.epilog.vector.body181

vec.epilog.vector.body181:                        ; preds = %vec.epilog.vector.body181, %vec.epilog.ph177
  %index182 = phi i64 [ %vec.epilog.resume.val171, %vec.epilog.ph177 ], [ %index.next183, %vec.epilog.vector.body181 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index182
  store <4 x i32> %broadcast.splat180, ptr %i.fc, align 4, !tbaa !93
  %index.next183 = add nuw i64 %index182, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next183, %n.vec178
  br i1 %i.fd, label %vec.epilog.middle.block184, label %vec.epilog.vector.body181, !llvm.loop !309

vec.epilog.middle.block184:                       ; preds = %vec.epilog.vector.body181
  %cmp.n185 = icmp eq i64 %i.en, %n.vec178
  br i1 %cmp.n185, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit.i, label %.lr.ph21.i.i.preheader

.lr.ph21.i.i.preheader:                           ; preds = %iter.check173, %vec.epilog.iter.check175, %vec.epilog.middle.block184
  %indvars.iv25.i.i.ph = phi i64 [ %.015.lcssa.i.i, %iter.check173 ], [ %i.ep, %vec.epilog.iter.check175 ], [ %i.ey, %vec.epilog.middle.block184 ]
  %.020.i.i.ph = phi i32 [ %i.dx, %iter.check173 ], [ %i.er, %vec.epilog.iter.check175 ], [ %i.fa, %vec.epilog.middle.block184 ]
  br label %.lr.ph21.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !93
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !93
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i.i
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !93
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !93
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !93
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !93
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i.i.1
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !93
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !93
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i.1
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !93
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i.i.2
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !93
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !93
  %indvars.iv.next.i.i.3 = or disjoint i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i.2
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !93
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i.i.3
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !93
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !93
  %indvars.iv.next.i.i.4 = or disjoint i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i.3
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !93
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i.i.4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !93
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !93
  %indvars.iv.next.i.i.5 = or disjoint i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i.4
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !93
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i.i.5
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !93
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !93
  %indvars.iv.next.i.i.6 = or disjoint i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i.5
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !93
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i.i.6
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !93
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !93
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i.i.6
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !93
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph21.i.i:                                     ; preds = %.lr.ph21.i.i.preheader, %.lr.ph21.i.i
  %indvars.iv25.i.i = phi i64 [ %indvars.iv.next26.i.i, %.lr.ph21.i.i ], [ %indvars.iv25.i.i.ph, %.lr.ph21.i.i.preheader ] ; 2 uses
  %.020.i.i = phi i32 [ %i.hb, %.lr.ph21.i.i ], [ %.020.i.i.ph, %.lr.ph21.i.i.preheader ]
  %indvars.iv.next26.i.i = add nuw nsw i64 %indvars.iv25.i.i, 1
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv25.i.i
  store i32 %i.dz, ptr %i.ha, align 4, !tbaa !93
  %i.hb = add nsw i32 %.020.i.i, 1                ; 2 uses
  %exitcond28.not.i.i = icmp eq i32 %i.hb, %i.dq
  br i1 %exitcond28.not.i.i, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit.i, label %.lr.ph21.i.i, !llvm.loop !310

_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit.i: ; preds = %.lr.ph21.i.i, %middle.block169, %vec.epilog.middle.block184, %.preheader.i.i
  %i.hc = load i32, ptr %i.dw, align 4, !tbaa !93 ; 8 uses
  %i.hd = load i32, ptr %i.cr, align 8, !tbaa !109
  %i.he = add nsw i32 %i.hd, -1                   ; 3 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.du ; 12 uses
  %i.hg = icmp sgt i32 %i.hc, 0
  br i1 %i.hg, label %.lr.ph.preheader.i57.i, label %.preheader.i50.i

.lr.ph.preheader.i57.i:                           ; preds = %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit.i
  %wide.trip.count.i58.i = zext nneg i32 %i.hc to i64 ; 4 uses
  %xtraiter191 = and i64 %wide.trip.count.i58.i, 7 ; 3 uses
  %i.hh = icmp ult i32 %i.hc, 8
  br i1 %i.hh, label %.lr.ph.i59.i.epil.preheader, label %.lr.ph.preheader.i57.i.new

.lr.ph.preheader.i57.i.new:                       ; preds = %.lr.ph.preheader.i57.i
  %unroll_iter195 = and i64 %wide.trip.count.i58.i, 2147483640
  br label %.lr.ph.i59.i

.preheader.i50.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i59.i
  %lcmp.mod193.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod193.not, label %.preheader.i50.i, label %.lr.ph.i59.i.epil.preheader

.lr.ph.i59.i.epil.preheader:                      ; preds = %.preheader.i50.i.loopexit.unr-lcssa, %.lr.ph.preheader.i57.i
  %indvars.iv.i60.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i57.i ], [ %indvars.iv.next.i61.i.7, %.preheader.i50.i.loopexit.unr-lcssa ]
  %lcmp.mod194 = icmp ne i64 %xtraiter191, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph.i59.i.epil

.lr.ph.i59.i.epil:                                ; preds = %.lr.ph.i59.i.epil, %.lr.ph.i59.i.epil.preheader
  %indvars.iv.i60.i.epil = phi i64 [ %indvars.iv.i60.i.epil.init, %.lr.ph.i59.i.epil.preheader ], [ %indvars.iv.next.i61.i.epil, %.lr.ph.i59.i.epil ] ; 3 uses
  %epil.iter192 = phi i64 [ 0, %.lr.ph.i59.i.epil.preheader ], [ %epil.iter192.next, %.lr.ph.i59.i.epil ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i60.i.epil
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !93
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !93
  %indvars.iv.next.i61.i.epil = add nuw nsw i64 %indvars.iv.i60.i.epil, 1
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i60.i.epil
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !93
  %epil.iter192.next = add i64 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i64 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %.preheader.i50.i, label %.lr.ph.i59.i.epil, !llvm.loop !311

.preheader.i50.i:                                 ; preds = %.preheader.i50.i.loopexit.unr-lcssa, %.lr.ph.i59.i.epil, %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit.i
  %.015.lcssa.i51.i = phi i64 [ 0, %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit.i ], [ %wide.trip.count.i58.i, %.lr.ph.i59.i.epil ], [ %wide.trip.count.i58.i, %.preheader.i50.i.loopexit.unr-lcssa ] ; 5 uses
  %i.ho = icmp slt i32 %i.hc, %i.dq
  br i1 %i.ho, label %iter.check, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit64.i

iter.check:                                       ; preds = %.preheader.i50.i
  %i.hp = xor i32 %i.hc, -1
  %i.hq = add i32 %i.dq, %i.hp                    ; 3 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.hq, 3
  br i1 %min.iters.check, label %.lr.ph21.i52.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check149 = icmp ult i32 %i.hq, 31
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ht = and i64 %i.hs, 28
  %n.vec = and i64 %i.hs, 8589934560              ; 5 uses
  %i.hu = add nuw nsw i64 %.015.lcssa.i51.i, %n.vec
  %i.hv = trunc i64 %n.vec to i32
  %i.hw = add i32 %i.hc, %i.hv
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %.015.lcssa.i51.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 96
  store <8 x i32> %broadcast.splat, ptr %i.hy, align 4, !tbaa !93
  store <8 x i32> %broadcast.splat, ptr %i.hz, align 4, !tbaa !93
  store <8 x i32> %broadcast.splat, ptr %i.ia, align 4, !tbaa !93
  store <8 x i32> %broadcast.splat, ptr %i.ib, align 4, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hs, %n.vec
  br i1 %cmp.n, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit64.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ht, 0
  br i1 %min.epilog.iters.check, label %.lr.ph21.i52.i.preheader, label %vec.epilog.ph, !prof !120

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.hs, 8589934588           ; 4 uses
  %i.id = add nuw nsw i64 %.015.lcssa.i51.i, %n.vec151
  %i.ie = trunc i64 %n.vec151 to i32
  %i.if = add i32 %i.hc, %i.ie
  %broadcast.splatinsert152 = insertelement <4 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat153 = shufflevector <4 x i32> %broadcast.splatinsert152, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %.015.lcssa.i51.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %index154
  store <4 x i32> %broadcast.splat153, ptr %i.ih, align 4, !tbaa !93
  %index.next155 = add nuw i64 %index154, 4       ; 2 uses
  %i.ii = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.ii, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !313

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n156 = icmp eq i64 %i.hs, %n.vec151
  br i1 %cmp.n156, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit64.i, label %.lr.ph21.i52.i.preheader

.lr.ph21.i52.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv25.i53.i.ph = phi i64 [ %.015.lcssa.i51.i, %iter.check ], [ %i.hu, %vec.epilog.iter.check ], [ %i.id, %vec.epilog.middle.block ]
  %.020.i54.i.ph = phi i32 [ %i.hc, %iter.check ], [ %i.hw, %vec.epilog.iter.check ], [ %i.if, %vec.epilog.middle.block ]
  br label %.lr.ph21.i52.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i, %.lr.ph.preheader.i57.i.new
  %indvars.iv.i60.i = phi i64 [ 0, %.lr.ph.preheader.i57.i.new ], [ %indvars.iv.next.i61.i.7, %.lr.ph.i59.i ] ; 10 uses
  %niter196 = phi i64 [ 0, %.lr.ph.preheader.i57.i.new ], [ %niter196.next.7, %.lr.ph.i59.i ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i60.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !93
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %4, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !93
  %indvars.iv.next.i61.i = or disjoint i64 %indvars.iv.i60.i, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.i60.i
  store i32 %i.in, ptr %i.io, align 4, !tbaa !93
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i61.i
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !93
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !93
  %indvars.iv.next.i61.i.1 = or disjoint i64 %indvars.iv.i60.i, 2 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i61.i
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !93
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i61.i.1
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !93
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !93
  %indvars.iv.next.i61.i.2 = or disjoint i64 %indvars.iv.i60.i, 3 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i61.i.1
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !93
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i61.i.2
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !93
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !93
  %indvars.iv.next.i61.i.3 = or disjoint i64 %indvars.iv.i60.i, 4 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i61.i.2
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !93
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i61.i.3
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !93
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !93
  %indvars.iv.next.i61.i.4 = or disjoint i64 %indvars.iv.i60.i, 5 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i61.i.3
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !93
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i61.i.4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !93
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !93
  %indvars.iv.next.i61.i.5 = or disjoint i64 %indvars.iv.i60.i, 6 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i61.i.4
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !93
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i61.i.5
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !93
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !93
  %indvars.iv.next.i61.i.6 = or disjoint i64 %indvars.iv.i60.i, 7 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i61.i.5
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !93
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i61.i.6
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !93
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %4, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !93
  %indvars.iv.next.i61.i.7 = add nuw nsw i64 %indvars.iv.i60.i, 8 ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next.i61.i.6
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !93
  %niter196.next.7 = add i64 %niter196, 8         ; 2 uses
  %niter196.ncmp.7 = icmp eq i64 %niter196.next.7, %unroll_iter195
  br i1 %niter196.ncmp.7, label %.preheader.i50.i.loopexit.unr-lcssa, label %.lr.ph.i59.i, !llvm.loop !1

.lr.ph21.i52.i:                                   ; preds = %.lr.ph21.i52.i.preheader, %.lr.ph21.i52.i
  %indvars.iv25.i53.i = phi i64 [ %indvars.iv.next26.i55.i, %.lr.ph21.i52.i ], [ %indvars.iv25.i53.i.ph, %.lr.ph21.i52.i.preheader ] ; 2 uses
  %.020.i54.i = phi i32 [ %i.kg, %.lr.ph21.i52.i ], [ %.020.i54.i.ph, %.lr.ph21.i52.i.preheader ]
  %indvars.iv.next26.i55.i = add nuw nsw i64 %indvars.iv25.i53.i, 1
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv25.i53.i
  store i32 %i.he, ptr %i.kf, align 4, !tbaa !93
  %i.kg = add nsw i32 %.020.i54.i, 1              ; 2 uses
  %exitcond28.not.i56.i = icmp eq i32 %i.kg, %i.dq
  br i1 %exitcond28.not.i56.i, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit64.i, label %.lr.ph21.i52.i, !llvm.loop !314

_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit64.i: ; preds = %.lr.ph21.i52.i, %middle.block, %vec.epilog.middle.block, %.preheader.i50.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.kh = load i32, ptr %i.cu, align 8, !tbaa !93
  %i.ki = load i32, ptr %i.cv, align 4, !tbaa !93
  %i.kj = mul nsw i32 %i.ki, %i.kh
  %i.kk = sext i32 %i.kj to i64
  %i.kl = icmp slt i64 %indvars.iv.next.i, %i.kk
  br i1 %i.kl, label %bb.o, label %._crit_edge81.i, !llvm.loop !315

_ZN3gmxL28nbnxn_atomdata_set_atomtypesEPNS_16nbnxn_atomdata_t6ParamsERKNS_7GridSetENS_8ArrayRefIKiEES8_b.exit: ; preds = %._crit_edge81.i, %._crit_edge.i, %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE6resizeEm.exit41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.km = load ptr, ptr %6, align 8, !tbaa !118   ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !118
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = ptrtoint ptr %i.km to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kr
  %i.kt = load ptr, ptr %7, align 8, !tbaa !118   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.km, ptr %11, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ks, ptr %i.ku, align 8
  store ptr %0, ptr %i.h, align 8, !tbaa !190
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !129
  %.not.i16 = icmp eq i32 %i.kw, 1
  br i1 %.not.i16, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN3gmxL28nbnxn_atomdata_set_atomtypesEPNS_16nbnxn_atomdata_t6ParamsERKNS_7GridSetENS_8ArrayRefIKiEES8_b.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !72
  %i.kz = sext i32 %i.ky to i64                   ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !75 ; 2 uses
  %i.ld = load ptr, ptr %i.la, align 8, !tbaa !76 ; 2 uses
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf
  %i.lh = ashr exact i64 %i.lg, 2                 ; 3 uses
  %i.li = icmp ult i64 %i.lh, %i.kz
  br i1 %i.li, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.lk = sub nuw nsw i64 %i.kz, %i.lh
  call void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.lj, i64 noundef %i.lk)
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ll = icmp ugt i64 %i.lh, %i.kz
  br i1 %i.ll, label %bb.s, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

bb.s:                                             ; preds = %bb.r
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.kz ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.lc, %i.lm
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.lm, ptr %i.lb, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %_ZN3gmxL28nbnxn_atomdata_set_atomtypesEPNS_16nbnxn_atomdata_t6ParamsERKNS_7GridSetENS_8ArrayRefIKiEES8_b.exit
  %i.ln = load ptr, ptr %i.p, align 8, !tbaa !163 ; 3 uses
  %i.lo = load i32, ptr %i.q, align 8, !tbaa !162 ; 2 uses
  %i.lp = sext i32 %i.lo to i64
  %.not.i.i47.i = icmp eq ptr %i.ln, null
end_hunk_3
begin_hunk_4_@_ZN3gmx18nbnxn_atomdata_setEPNS_16nbnxn_atomdata_tERKNS_7GridSetENS_8ArrayRefIKiEES7_NS5_IKfEES9_S7_b:bb.a
  %.not11.i = select i1 %.not.i.i.i47, i1 true, i1 %.not1118.i
  br i1 %.not11.i, label %_ZN3gmxL31nbnxn_atomdata_set_energygroupsERKNS_7GridSetENS_8ArrayRefIKiEEPNS_22EnergyGroupsPerClusterE.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.bd, %_ZN3gmx22EnergyGroupsPerCluster18resizeEnergyGroupsEi.exit.i
  %.sroa.0.012.i = phi ptr [ %i.anb, %_ZN3gmx22EnergyGroupsPerCluster18resizeEnergyGroupsEi.exit.i ], [ %i.aly, %bb.bd ] ; 5 uses
  %i.amc = load ptr, ptr %i.a, align 8, !tbaa !124 ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 100
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !185
  %i.amf = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 96
  %i.amg = load i32, ptr %i.amf, align 8, !tbaa !186
  %i.amh = add nsw i32 %i.amg, %i.ame
  %i.ami = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 12
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !187
  %i.amk = mul nsw i32 %i.amh, %i.amj
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amc, i64 8 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amc, i64 36
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !197
  %i.amo = sdiv i32 %i.amk, %i.amn
  %i.amp = sext i32 %i.amo to i64                 ; 4 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amc, i64 16 ; 2 uses
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !198 ; 2 uses
  %i.ams = load ptr, ptr %i.aml, align 8, !tbaa !126 ; 2 uses
  %i.amt = ptrtoint ptr %i.amr to i64
  %i.amu = ptrtoint ptr %i.ams to i64
  %i.amv = sub i64 %i.amt, %i.amu
  %i.amw = ashr exact i64 %i.amv, 2               ; 3 uses
  %i.amx = icmp ult i64 %i.amw, %i.amp
  br i1 %i.amx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i49
  %i.amy = sub nuw nsw i64 %i.amp, %i.amw
  call void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aml, i64 noundef %i.amy)
  br label %_ZN3gmx22EnergyGroupsPerCluster18resizeEnergyGroupsEi.exit.i

bb.bf:                                            ; preds = %.lr.ph.i49
  %i.amz = icmp ugt i64 %i.amw, %i.amp
  br i1 %i.amz, label %bb.bg, label %_ZN3gmx22EnergyGroupsPerCluster18resizeEnergyGroupsEi.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.ams, i64 %i.amp ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.amr, %i.ana
  br i1 %.not.i.i.i.i, label %_ZN3gmx22EnergyGroupsPerCluster18resizeEnergyGroupsEi.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.ana, ptr %i.amq, align 8, !tbaa !198
  br label %_ZN3gmx22EnergyGroupsPerCluster18resizeEnergyGroupsEi.exit.i

_ZN3gmx22EnergyGroupsPerCluster18resizeEnergyGroupsEi.exit.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.n, i32 %i.alx)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN3gmxL31nbnxn_atomdata_set_energygroupsERKNS_7GridSetENS_8ArrayRefIKiEEPNS_22EnergyGroupsPerClusterE.omp_outlined, ptr nonnull %.sroa.0.012.i, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(232) %1, ptr nonnull %10)
  %i.anb = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 376 ; 2 uses
  %.not.i50 = icmp eq ptr %i.anb, %i.amb
  br i1 %.not.i50, label %_ZN3gmxL31nbnxn_atomdata_set_energygroupsERKNS_7GridSetENS_8ArrayRefIKiEEPNS_22EnergyGroupsPerClusterE.exit, label %.lr.ph.i49

_ZN3gmxL31nbnxn_atomdata_set_energygroupsERKNS_7GridSetENS_8ArrayRefIKiEEPNS_22EnergyGroupsPerClusterE.exit: ; preds = %_ZN3gmx22EnergyGroupsPerCluster18resizeEnergyGroupsEi.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN3gmxL31nbnxn_atomdata_set_energygroupsERKNS_7GridSetENS_8ArrayRefIKiEEPNS_22EnergyGroupsPerClusterE.exit, %_ZN3gmxL31nbnxn_atomdata_set_ljcombparamsEPNS_16nbnxn_atomdata_t6ParamsEiRKNS_7GridSetEb.exit
  ret void
}

declare noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmxL28nbnxn_atomdata_set_atomtypesEPNS_16nbnxn_atomdata_t6ParamsERKNS_7GridSetENS_8ArrayRefIKiEES8_b.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !93
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.k, ptr %i.b, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !93
  %i.l = load i32, ptr %0, align 4, !tbaa !93     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !93
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 2 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !93
  %i.o = load i32, ptr %i.a, align 4, !tbaa !93   ; 2 uses
  %.not24 = icmp sgt i32 %i.o, %i.n
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111
  %i.x = load ptr, ptr %4, align 8, !tbaa !192    ; 9 uses
  %i.y = load ptr, ptr %5, align 8, !tbaa !140    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !111
  %i.ab = sext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit ] ; 4 uses
  %i.ac = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !93 ; 2 uses
  %i.ag = sub i32 %i.ae, %i.af
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !187 ; 2 uses
  %i.ai = mul i32 %i.ag, %i.ah                    ; 3 uses
  %i.aj = load i32, ptr %i.s, align 4, !tbaa !185
  %i.ak = add nsw i32 %i.aj, %i.af
  %i.al = mul nsw i32 %i.ak, %i.ah
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.am ; 9 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !93 ; 8 uses
  %i.aq = load i32, ptr %i.y, align 8, !tbaa !109
  %i.ar = add nsw i32 %i.aq, -1                   ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.am ; 12 uses
  %i.at = icmp sgt i32 %i.ap, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.ap to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.au = icmp ult i32 %i.ap, 8
  br i1 %i.au, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.7, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.epil
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !93
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !93
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.epil
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !93
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !324

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.c
  %.015.lcssa.i = phi i64 [ 0, %bb.c ], [ %wide.trip.count.i, %.lr.ph.i.epil ], [ %wide.trip.count.i, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %i.bb = icmp slt i32 %i.ap, %i.ai
  br i1 %i.bb, label %iter.check, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit

iter.check:                                       ; preds = %.preheader.i
  %i.bc = xor i32 %i.ap, -1
  %i.bd = add i32 %i.ai, %i.bc                    ; 3 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bd, 3
  br i1 %min.iters.check, label %.lr.ph21.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i32 %i.bd, 31
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bg = and i64 %i.bf, 28
  %n.vec = and i64 %i.bf, 8589934560              ; 5 uses
  %i.bh = add nuw nsw i64 %.015.lcssa.i, %n.vec
  %i.bi = trunc i64 %n.vec to i32
  %i.bj = add i32 %i.ap, %i.bi
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.015.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <8 x i32> %broadcast.splat, ptr %i.bl, align 4, !tbaa !93
  store <8 x i32> %broadcast.splat, ptr %i.bm, align 4, !tbaa !93
  store <8 x i32> %broadcast.splat, ptr %i.bn, align 4, !tbaa !93
  store <8 x i32> %broadcast.splat, ptr %i.bo, align 4, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !325

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph21.i.preheader, label %vec.epilog.ph, !prof !120

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.bf, 8589934588            ; 4 uses
  %i.bq = add nuw nsw i64 %.015.lcssa.i, %n.vec32
  %i.br = trunc i64 %n.vec32 to i32
  %i.bs = add i32 %i.ap, %i.br
  %broadcast.splatinsert33 = insertelement <4 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat34 = shufflevector <4 x i32> %broadcast.splatinsert33, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.015.lcssa.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index35
  store <4 x i32> %broadcast.splat34, ptr %i.bu, align 4, !tbaa !93
  %index.next36 = add nuw i64 %index35, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next36, %n.vec32
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !326

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.bf, %n.vec32
  br i1 %cmp.n37, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit, label %.lr.ph21.i.preheader

.lr.ph21.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv25.i.ph = phi i64 [ %.015.lcssa.i, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %.020.i.ph = phi i32 [ %i.ap, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.lr.ph21.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.7, %.lr.ph.i ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !93
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !93
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !93
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !93
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !93
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !93
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.1
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !93
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !93
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.1
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !93
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.2
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !93
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !93
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.2
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !93
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.3
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !93
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !93
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.3
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !93
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !93
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !93
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.4
  store i32 %i.de, ptr %i.df, align 4, !tbaa !93
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.5
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !93
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !93
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.5
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !93
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.6
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !93
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !93
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next.i.6
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !93
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.preheader, %.lr.ph21.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.lr.ph21.i ], [ %indvars.iv25.i.ph, %.lr.ph21.i.preheader ] ; 2 uses
  %.020.i = phi i32 [ %i.dt, %.lr.ph21.i ], [ %.020.i.ph, %.lr.ph21.i.preheader ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv25.i
  store i32 %i.ar, ptr %i.ds, align 4, !tbaa !93
  %i.dt = add nsw i32 %.020.i, 1                  ; 2 uses
  %exitcond28.not.i = icmp eq i32 %i.dt, %i.ai
  br i1 %exitcond28.not.i, label %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit, label %.lr.ph21.i, !llvm.loop !327

_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit:  ; preds = %.lr.ph21.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.du = load i32, ptr %i.b, align 4, !tbaa !93
  %i.dv = sext i32 %i.du to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.dv
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN3gmxL20copy_int_to_nbat_intEPKiiiS1_iPi.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #22

; Function Attrs: nounwind
declare !callback !200 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188  ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !111  ; 9 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !334
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 2                   ; 2 uses
  %i.n = icmp ult i64 %i.h, 2305843009213693952
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.h, 2305843009213693951        ; 2 uses
  %i.p = icmp ule i64 %i.m, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %.not23 = icmp ult i64 %i.m, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.c, i8 0, i64 %i.q, i1 false), !tbaa !93
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %i.q
  store ptr %scevgep.i, ptr %i.b, align 8, !tbaa !188
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.o, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #33
  unreachable

_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.h
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2305843009213693951) ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noundef ptr @_ZNK3gmx20HostAllocationPolicy6mallocEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.u) #22 ; 10 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.e, label %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28

bb.e:                                             ; preds = %_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.y = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
  unreachable

_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28: ; preds = %_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.g ; 2 uses
  %i.aa = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 0, i64 %i.aa, i1 false), !tbaa !93
  %.not10.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %i.ab = add i64 %i.e, -4
  %i.ac = sub i64 %i.ab, %i.f                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 28
  %i.af = sub i64 %i.f, %i.w
  %diff.check = icmp ugt i64 %i.af, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.ac, 124
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 24
  %n.vec = and i64 %i.ae, 9223372036854775776     ; 4 uses
  %i.ah = shl i64 %n.vec, 2                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.d, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ak ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.d, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.al = getelementptr i8, ptr %next.gep34, i64 32
  %i.am = getelementptr i8, ptr %next.gep34, i64 64
  %i.an = getelementptr i8, ptr %next.gep34, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep34, align 4, !tbaa !93, !alias.scope !336, !noalias !335
  %wide.load35 = load <8 x i32>, ptr %i.al, align 4, !tbaa !93, !alias.scope !336, !noalias !335
  %wide.load36 = load <8 x i32>, ptr %i.am, align 4, !tbaa !93, !alias.scope !336, !noalias !335
  %wide.load37 = load <8 x i32>, ptr %i.an, align 4, !tbaa !93, !alias.scope !336, !noalias !335
  %i.ao = getelementptr i8, ptr %next.gep, i64 32
  %i.ap = getelementptr i8, ptr %next.gep, i64 64
  %i.aq = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !93, !alias.scope !335, !noalias !336
  store <8 x i32> %wide.load35, ptr %i.ao, align 4, !tbaa !93, !alias.scope !335, !noalias !336
  store <8 x i32> %wide.load36, ptr %i.ap, align 4, !tbaa !93, !alias.scope !335, !noalias !336
  store <8 x i32> %wide.load37, ptr %i.aq, align 4, !tbaa !93, !alias.scope !335, !noalias !336
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !331

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.ae, 9223372036854775800   ; 3 uses
  %i.as = shl i64 %n.vec39, 2                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.v, i64 %i.as
  %i.au = getelementptr i8, ptr %i.d, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.av = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.v, i64 %i.av
  %next.gep42 = getelementptr i8, ptr %i.d, i64 %i.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %wide.load43 = load <8 x i32>, ptr %next.gep42, align 4, !tbaa !93, !alias.scope !336, !noalias !335
  store <8 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !93, !alias.scope !335, !noalias !336
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !332

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.ae, %n.vec39
  br i1 %cmp.n45, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ax = load i32, ptr %.0911.i.i.i, align 4, !tbaa !93, !alias.scope !336, !noalias !335
  store i32 %i.ax, ptr %.012.i.i.i, align 4, !tbaa !93, !alias.scope !335, !noalias !336
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ay, %i.c
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !333

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.d, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE13_M_deallocateEPim.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit
  tail call void @_ZNK3gmx20HostAllocationPolicy4freeEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.d) #22
  br label %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, %bb.f
  store ptr %i.v, ptr %i.a, align 8, !tbaa !111
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %1
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !188
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store ptr %i.bb, ptr %i.i, align 8, !tbaa !334
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_20HostAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmxL26nbnxn_atomdata_set_chargesEPNS_16nbnxn_atomdata_tERKNS_7GridSetENS_8ArrayRefIKfEES7_b.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %5) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !93
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.k, ptr %i.b, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !93
  %i.l = load i32, ptr %0, align 4, !tbaa !93     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !93
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 3 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !93
  %i.o = load i32, ptr %i.a, align 4, !tbaa !93   ; 2 uses
  %.not81 = icmp sgt i32 %i.o, %i.n
  br i1 %.not81, label %._crit_edge, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.q = load i32, ptr %i.p, align 4, !tbaa !185  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !187  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111  ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !190    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  %i.z = load i32, ptr %i.y, align 8, !tbaa !129
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.ac = sext i32 %i.o to i64                    ; 2 uses
  %i.ad = add nsw i32 %i.n, 1                     ; 2 uses
  br i1 %i.aa, label %.lr.ph83.split.us, label %.lr.ph83.split

.lr.ph83.split.us:                                ; preds = %.lr.ph83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 480
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.us, %.lr.ph83.split.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.loopexit.us ], [ %i.ac, %.lr.ph83.split.us ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv97 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !93 ; 2 uses
  %i.ai = add nsw i32 %i.ah, %i.q
  %i.aj = mul nsw i32 %i.ai, %i.u                 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv97
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !93 ; 8 uses
  %i.am = getelementptr i8, ptr %i.ag, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !93
  %i.ao = sub i32 %i.an, %i.ah
  %i.ap = mul i32 %i.ao, %i.u                     ; 3 uses
  %i.aq = shl nsw i32 %i.aj, 2
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 3 uses
  %i.au = icmp sgt i32 %i.al, 0
  br i1 %i.au, label %.lr.ph76.us, label %.preheader.us

bb.d:                                             ; preds = %bb.d, %.lr.ph76.us.new
  %indvars.iv91 = phi i64 [ 0, %.lr.ph76.us.new ], [ %indvars.iv.next92.7, %bb.d ] ; 9 uses
  %.05474.us = phi ptr [ %i.at, %.lr.ph76.us.new ], [ %i.df, %bb.d ] ; 9 uses
  %niter140 = phi i64 [ 0, %.lr.ph76.us.new ], [ %niter140.next.7, %bb.d ]
  %gep112 = getelementptr [4 x i8], ptr %invariant.gep111, i64 %indvars.iv91
  %i.av = load i32, ptr %gep112, align 4, !tbaa !93
  %i.aw = sext i32 %i.av to i64
  %i.ax = load i64, ptr %4, align 8
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load float, ptr %i.az, align 4, !tbaa !79
  store float %i.ba, ptr %.05474.us, align 4, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %.05474.us, i64 16
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep111, i64 %indvars.iv91
  %gep112.1 = getelementptr i8, ptr %i.bc, i64 4
  %i.bd = load i32, ptr %gep112.1, align 4, !tbaa !93
  %i.be = sext i32 %i.bd to i64
  %i.bf = load i64, ptr %4, align 8
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.be
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !79
  store float %i.bi, ptr %i.bb, align 4, !tbaa !79
  %i.bj = getelementptr inbounds nuw i8, ptr %.05474.us, i64 32
  %i.bk = getelementptr [4 x i8], ptr %invariant.gep111, i64 %indvars.iv91
  %gep112.2 = getelementptr i8, ptr %i.bk, i64 8
  %i.bl = load i32, ptr %gep112.2, align 4, !tbaa !93
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load i64, ptr %4, align 8
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bm
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !79
  store float %i.bq, ptr %i.bj, align 4, !tbaa !79
  %i.br = getelementptr inbounds nuw i8, ptr %.05474.us, i64 48
  %i.bs = getelementptr [4 x i8], ptr %invariant.gep111, i64 %indvars.iv91
  %gep112.3 = getelementptr i8, ptr %i.bs, i64 12
  %i.bt = load i32, ptr %gep112.3, align 4, !tbaa !93
  %i.bu = sext i32 %i.bt to i64
  %i.bv = load i64, ptr %4, align 8
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bu
  %i.by = load float, ptr %i.bx, align 4, !tbaa !79
  store float %i.by, ptr %i.br, align 4, !tbaa !79
  %i.bz = getelementptr inbounds nuw i8, ptr %.05474.us, i64 64
  %i.ca = getelementptr [4 x i8], ptr %invariant.gep111, i64 %indvars.iv91
  %gep112.4 = getelementptr i8, ptr %i.ca, i64 16
  %i.cb = load i32, ptr %gep112.4, align 4, !tbaa !93
  %i.cc = sext i32 %i.cb to i64
  %i.cd = load i64, ptr %4, align 8
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cc
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !79
  store float %i.cg, ptr %i.bz, align 4, !tbaa !79
  %i.ch = getelementptr inbounds nuw i8, ptr %.05474.us, i64 80
  %i.ci = getelementptr [4 x i8], ptr %invariant.gep111, i64 %indvars.iv91
  %gep112.5 = getelementptr i8, ptr %i.ci, i64 20
  %i.cj = load i32, ptr %gep112.5, align 4, !tbaa !93
  %i.ck = sext i32 %i.cj to i64
  %i.cl = load i64, ptr %4, align 8
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.ck
  %i.co = load float, ptr %i.cn, align 4, !tbaa !79
  store float %i.co, ptr %i.ch, align 4, !tbaa !79
  %i.cp = getelementptr inbounds nuw i8, ptr %.05474.us, i64 96
  %i.cq = getelementptr [4 x i8], ptr %invariant.gep111, i64 %indvars.iv91
  %gep112.6 = getelementptr i8, ptr %i.cq, i64 24
  %i.cr = load i32, ptr %gep112.6, align 4, !tbaa !93
  %i.cs = sext i32 %i.cr to i64
  %i.ct = load i64, ptr %4, align 8
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cs
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !79
  store float %i.cw, ptr %i.cp, align 4, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %.05474.us, i64 112
  %i.cy = getelementptr [4 x i8], ptr %invariant.gep111, i64 %indvars.iv91
  %gep112.7 = getelementptr i8, ptr %i.cy, i64 28
  %i.cz = load i32, ptr %gep112.7, align 4, !tbaa !93
  %i.da = sext i32 %i.cz to i64
  %i.db = load i64, ptr %4, align 8
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.da
  %i.de = load float, ptr %i.dd, align 4, !tbaa !79
  store float %i.de, ptr %i.cx, align 4, !tbaa !79
  %i.df = getelementptr inbounds nuw i8, ptr %.05474.us, i64 128 ; 3 uses
  %indvars.iv.next92.7 = add nuw nsw i64 %indvars.iv91, 8 ; 2 uses
  %niter140.next.7 = add i64 %niter140, 8         ; 2 uses
  %niter140.ncmp.7 = icmp eq i64 %niter140.next.7, %unroll_iter139
  br i1 %niter140.ncmp.7, label %.preheader.us.loopexit.unr-lcssa, label %bb.d, !llvm.loop !337

.lr.ph80.us:                                      ; preds = %.lr.ph80.us.preheader, %.lr.ph80.us
  %.05279.us = phi i32 [ %i.dh, %.lr.ph80.us ], [ %.05279.us.ph, %.lr.ph80.us.preheader ]
  %.15578.us = phi ptr [ %i.dg, %.lr.ph80.us ], [ %.15578.us.ph, %.lr.ph80.us.preheader ] ; 2 uses
  store float 0.000000e+00, ptr %.15578.us, align 4, !tbaa !79
  %i.dg = getelementptr inbounds nuw i8, ptr %.15578.us, i64 16
  %i.dh = add nsw i32 %.05279.us, 1               ; 2 uses
  %exitcond96.not = icmp eq i32 %i.dh, %i.ap
  br i1 %exitcond96.not, label %.loopexit.us, label %.lr.ph80.us, !llvm.loop !338

.preheader.us.loopexit.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod136.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod136.not, label %.preheader.us, label %.epil.preheader133

.epil.preheader133:                               ; preds = %.preheader.us.loopexit.unr-lcssa, %.lr.ph76.us
  %indvars.iv91.epil.init = phi i64 [ 0, %.lr.ph76.us ], [ %indvars.iv.next92.7, %.preheader.us.loopexit.unr-lcssa ]
  %.05474.us.epil.init = phi ptr [ %i.at, %.lr.ph76.us ], [ %i.df, %.preheader.us.loopexit.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter134, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader133
  %indvars.iv91.epil = phi i64 [ %indvars.iv91.epil.init, %.epil.preheader133 ], [ %indvars.iv.next92.epil, %bb.e ] ; 2 uses
  %.05474.us.epil = phi ptr [ %.05474.us.epil.init, %.epil.preheader133 ], [ %i.do, %bb.e ] ; 2 uses
  %epil.iter135 = phi i64 [ 0, %.epil.preheader133 ], [ %epil.iter135.next, %bb.e ]
  %gep112.epil = getelementptr [4 x i8], ptr %invariant.gep111, i64 %indvars.iv91.epil
  %i.di = load i32, ptr %gep112.epil, align 4, !tbaa !93
  %i.dj = sext i32 %i.di to i64
  %i.dk = load i64, ptr %4, align 8
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dj
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !79
  store float %i.dn, ptr %.05474.us.epil, align 4, !tbaa !79
  %i.do = getelementptr inbounds nuw i8, ptr %.05474.us.epil, i64 16 ; 2 uses
  %indvars.iv.next92.epil = add nuw nsw i64 %indvars.iv91.epil, 1
  %epil.iter135.next = add i64 %epil.iter135, 1   ; 2 uses
  %epil.iter135.cmp.not = icmp eq i64 %epil.iter135.next, %xtraiter134
  br i1 %epil.iter135.cmp.not, label %.preheader.us, label %bb.e, !llvm.loop !339

.preheader.us:                                    ; preds = %.preheader.us.loopexit.unr-lcssa, %bb.e, %bb.c
  %.054.lcssa.us = phi ptr [ %i.at, %bb.c ], [ %i.df, %.preheader.us.loopexit.unr-lcssa ], [ %i.do, %bb.e ] ; 5 uses
  %i.dp = icmp slt i32 %i.al, %i.ap
  br i1 %i.dp, label %iter.check, label %.loopexit.us

iter.check:                                       ; preds = %.preheader.us
  %i.dq = xor i32 %i.al, -1
  %i.dr = add i32 %i.ap, %i.dq                    ; 3 uses
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dr, 3
  br i1 %min.iters.check, label %.lr.ph80.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check115 = icmp ult i32 %i.dr, 31
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.du = and i64 %i.dt, 28
  %n.vec = and i64 %i.dt, 8589934560              ; 5 uses
  %i.dv = trunc i64 %n.vec to i32
  %i.dw = add i32 %i.al, %i.dv
  %i.dx = shl nuw nsw i64 %n.vec, 4
  %i.dy = getelementptr i8, ptr %.054.lcssa.us, i64 %i.dx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.054.lcssa.us, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 16, i64 32, i64 48, i64 64, i64 80, i64 96, i64 112> ; 4 uses
  %step.add126 = getelementptr i8, <8 x ptr> %vector.gep, i64 128
  %step.add.2127 = getelementptr i8, <8 x ptr> %vector.gep, i64 256
  %step.add.3128 = getelementptr i8, <8 x ptr> %vector.gep, i64 384
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %vector.gep, <8 x i1> splat (i1 true)), !tbaa !79
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %step.add126, <8 x i1> splat (i1 true)), !tbaa !79
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %step.add.2127, <8 x i1> splat (i1 true)), !tbaa !79
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %step.add.3128, <8 x i1> splat (i1 true)), !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check, label %.lr.ph80.us.preheader, label %vec.epilog.ph, !prof !120

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val116 = phi ptr [ %i.dy, %vec.epilog.iter.check ], [ %.054.lcssa.us, %vector.main.loop.iter.check ]
  %n.vec117 = and i64 %i.dt, 8589934588           ; 4 uses
  %i.ea = trunc i64 %n.vec117 to i32
  %i.eb = add i32 %i.al, %i.ea
  %i.ec = shl nuw nsw i64 %n.vec117, 4
  %i.ed = getelementptr i8, ptr %.054.lcssa.us, i64 %i.ec
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ]
  %pointer.phi119 = phi ptr [ %bc.resume.val116, %vec.epilog.ph ], [ %ptr.ind122, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep120 = getelementptr i8, ptr %pointer.phi119, <4 x i64> <i64 0, i64 16, i64 32, i64 48>
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %vector.gep120, <4 x i1> splat (i1 true)), !tbaa !79
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %ptr.ind122 = getelementptr i8, ptr %pointer.phi119, i64 64
  %i.ee = icmp eq i64 %index.next121, %n.vec117
  br i1 %i.ee, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !341

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %i.dt, %n.vec117
  br i1 %cmp.n123, label %.loopexit.us, label %.lr.ph80.us.preheader

.lr.ph80.us.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05279.us.ph = phi i32 [ %i.al, %iter.check ], [ %i.dw, %vec.epilog.iter.check ], [ %i.eb, %vec.epilog.middle.block ]
  %.15578.us.ph = phi ptr [ %.054.lcssa.us, %iter.check ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  br label %.lr.ph80.us

.loopexit.us:                                     ; preds = %.lr.ph80.us, %middle.block, %vec.epilog.middle.block, %.preheader.us
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %lftr.wideiv100 = trunc i64 %indvars.iv.next98 to i32
  %exitcond101.not = icmp eq i32 %i.ad, %lftr.wideiv100
  br i1 %exitcond101.not, label %._crit_edge, label %bb.c

.lr.ph76.us:                                      ; preds = %bb.c
  %i.ef = load ptr, ptr %i.ab, align 8, !tbaa !111
  %i.eg = sext i32 %i.aj to i64
  %wide.trip.count94 = zext nneg i32 %i.al to i64 ; 2 uses
  %invariant.gep111 = getelementptr [4 x i8], ptr %i.ef, i64 %i.eg ; 9 uses
  %xtraiter134 = and i64 %wide.trip.count94, 7    ; 3 uses
  %i.eh = icmp ult i32 %i.al, 8
  br i1 %i.eh, label %.epil.preheader133, label %.lr.ph76.us.new

.lr.ph76.us.new:                                  ; preds = %.lr.ph76.us
  %unroll_iter139 = and i64 %wide.trip.count94, 2147483640
  br label %bb.d

.lr.ph83.split:                                   ; preds = %.lr.ph83
  %i.ei = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph83.split, %.loopexit68
  %indvars.iv87 = phi i64 [ %i.ac, %.lr.ph83.split ], [ %indvars.iv.next88, %.loopexit68 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv87 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !93 ; 2 uses
  %i.em = add nsw i32 %i.el, %i.q
  %i.en = mul nsw i32 %i.em, %i.u
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv87
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !93 ; 5 uses
  %i.eq = getelementptr i8, ptr %i.ek, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !93
  %i.es = sub i32 %i.er, %i.el
  %i.et = mul i32 %i.es, %i.u                     ; 2 uses
  %i.eu = sext i32 %i.en to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.eu ; 3 uses
  %i.ew = icmp sgt i32 %i.ep, 0
  br i1 %i.ew, label %.lr.ph, label %.preheader67

.lr.ph:                                           ; preds = %bb.f
  %i.ex = load ptr, ptr %i.ab, align 8, !tbaa !111
  %wide.trip.count = zext nneg i32 %i.ep to i64   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ex, i64 %i.eu ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.ey = icmp ult i32 %i.ep, 8
  br i1 %i.ey, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.h

.preheader67.loopexit.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader67, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader67.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %.preheader67.loopexit.unr-lcssa ]
  %.05169.epil.init = phi ptr [ %i.ev, %.lr.ph ], [ %i.hw, %.preheader67.loopexit.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod132)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 2 uses
  %.05169.epil = phi ptr [ %.05169.epil.init, %.epil.preheader ], [ %i.ff, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  %i.ez = load i32, ptr %gep.epil, align 4, !tbaa !93
  %i.fa = sext i32 %i.ez to i64
  %i.fb = load i64, ptr %4, align 8
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fa
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !79
  store float %i.fe, ptr %.05169.epil, align 4, !tbaa !79
  %i.ff = getelementptr inbounds nuw i8, ptr %.05169.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader67, label %bb.g, !llvm.loop !342

.preheader67:                                     ; preds = %.preheader67.loopexit.unr-lcssa, %bb.g, %bb.f
  %.051.lcssa = phi ptr [ %i.ev, %bb.f ], [ %i.hw, %.preheader67.loopexit.unr-lcssa ], [ %i.ff, %bb.g ]
  %i.fg = icmp slt i32 %i.ep, %i.et
  br i1 %i.fg, label %.lr.ph73.preheader, label %.loopexit68

.lr.ph73.preheader:                               ; preds = %.preheader67
  %i.fh = xor i32 %i.ep, -1
  %i.fi = add i32 %i.et, %i.fh
  %i.fj = zext i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 2
  %i.fl = add nuw nsw i64 %i.fk, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.051.lcssa, i8 0, i64 %i.fl, i1 false), !tbaa !79
  br label %.loopexit68

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.h ] ; 9 uses
  %.05169 = phi ptr [ %i.ev, %.lr.ph.new ], [ %i.hw, %bb.h ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.h ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fm = load i32, ptr %gep, align 4, !tbaa !93
  %i.fn = sext i32 %i.fm to i64
  %i.fo = load i64, ptr %4, align 8
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fn
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !79
  store float %i.fr, ptr %.05169, align 4, !tbaa !79
  %i.fs = getelementptr inbounds nuw i8, ptr %.05169, i64 4
  %i.ft = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ft, i64 4
  %i.fu = load i32, ptr %gep.1, align 4, !tbaa !93
  %i.fv = sext i32 %i.fu to i64
  %i.fw = load i64, ptr %4, align 8
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.fv
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !79
  store float %i.fz, ptr %i.fs, align 4, !tbaa !79
  %i.ga = getelementptr inbounds nuw i8, ptr %.05169, i64 8
  %i.gb = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.2 = getelementptr i8, ptr %i.gb, i64 8
  %i.gc = load i32, ptr %gep.2, align 4, !tbaa !93
  %i.gd = sext i32 %i.gc to i64
  %i.ge = load i64, ptr %4, align 8
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.gd
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !79
  store float %i.gh, ptr %i.ga, align 4, !tbaa !79
  %i.gi = getelementptr inbounds nuw i8, ptr %.05169, i64 12
  %i.gj = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.3 = getelementptr i8, ptr %i.gj, i64 12
  %i.gk = load i32, ptr %gep.3, align 4, !tbaa !93
  %i.gl = sext i32 %i.gk to i64
  %i.gm = load i64, ptr %4, align 8
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.gl
  %i.gp = load float, ptr %i.go, align 4, !tbaa !79
  store float %i.gp, ptr %i.gi, align 4, !tbaa !79
  %i.gq = getelementptr inbounds nuw i8, ptr %.05169, i64 16
  %i.gr = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.4 = getelementptr i8, ptr %i.gr, i64 16
  %i.gs = load i32, ptr %gep.4, align 4, !tbaa !93
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load i64, ptr %4, align 8
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gt
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !79
  store float %i.gx, ptr %i.gq, align 4, !tbaa !79
end_hunk_4
begin_hunk_5_@_ZN3gmxL23copy_lj_to_nbat_lj_combILi8EEEvNS_8ArrayRefIKfEEPKiiPf:bb.a
  %i.o = extractelement <4 x i32> %i.n, i64 0
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !79
  store float %i.r, ptr %i.e, align 4, !tbaa !79
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !79
  store float %i.t, ptr %i.f, align 4, !tbaa !79
  %i.u = extractelement <4 x i32> %i.n, i64 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !79
  store float %i.x, ptr %i.h, align 4, !tbaa !79
  %i.y = getelementptr i8, ptr %i.w, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !79
  store float %i.z, ptr %i.i, align 4, !tbaa !79
  %i.aa = extractelement <4 x i32> %i.n, i64 2
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !79
  store float %i.ad, ptr %i.k, align 4, !tbaa !79
  %i.ae = getelementptr i8, ptr %i.ac, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !79
  store float %i.af, ptr %i.l, align 4, !tbaa !79
  %i.ag = extractelement <4 x i32> %i.n, i64 3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !79
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.c ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store float %i.aj, ptr %i.al, align 4, !tbaa !79
  %i.am = getelementptr i8, ptr %i.ai, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store float %i.an, ptr %i.ao, align 4, !tbaa !79
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.c ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.c ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.c ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.ba = load <4 x i32>, ptr %i.aq, align 4, !tbaa !93
  %i.bb = shl nsw <4 x i32> %i.ba, splat (i32 1)  ; 4 uses
  %i.bc = extractelement <4 x i32> %i.bb, i64 0
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %0, i64 %i.bd ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !79
  store float %i.bf, ptr %i.as, align 4, !tbaa !79
  %i.bg = getelementptr i8, ptr %i.be, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !79
  store float %i.bh, ptr %i.at, align 4, !tbaa !79
  %i.bi = extractelement <4 x i32> %i.bb, i64 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr %0, i64 %i.bj ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !79
  store float %i.bl, ptr %i.av, align 4, !tbaa !79
  %i.bm = getelementptr i8, ptr %i.bk, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !79
  store float %i.bn, ptr %i.aw, align 4, !tbaa !79
  %i.bo = extractelement <4 x i32> %i.bb, i64 2
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr %0, i64 %i.bp ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !79
  store float %i.br, ptr %i.ay, align 4, !tbaa !79
  %i.bs = getelementptr i8, ptr %i.bq, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !79
  store float %i.bt, ptr %i.az, align 4, !tbaa !79
  %i.bu = extractelement <4 x i32> %i.bb, i64 3
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %i.bv ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !79
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.c ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  store float %i.bx, ptr %i.bz, align 4, !tbaa !79
  %i.ca = getelementptr i8, ptr %i.bw, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !79
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 60
  store float %i.cb, ptr %i.cc, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.cd = icmp samesign ult i64 %indvars.iv.next, %i.b
  br i1 %i.cd, label %.preheader, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmxL31nbnxn_atomdata_set_energygroupsERKNS_7GridSetENS_8ArrayRefIKiEEPNS_22EnergyGroupsPerClusterE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !93
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.k, ptr %i.b, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !93
  %i.l = load i32, ptr %0, align 4, !tbaa !93     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.m = load i32, ptr %i.b, align 4, !tbaa !93
  %i.n = call i32 @llvm.smin.i32(i32 %i.m, i32 %i.k) ; 3 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !93
  %i.o = load i32, ptr %i.a, align 4, !tbaa !93   ; 2 uses
  %.not26 = icmp sgt i32 %i.o, %i.n
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.t = load ptr, ptr %3, align 8, !tbaa !124    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = load ptr, ptr %5, align 8, !tbaa !192    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = sext i32 %i.o to i64
  %broadcast.splatinsert = insertelement <8 x ptr> poison, ptr %i.t, i64 0
  %broadcast.splat = shufflevector <8 x ptr> %broadcast.splatinsert, <8 x ptr> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert56 = insertelement <8 x ptr> poison, ptr %i.t, i64 0
  %broadcast.splat57 = shufflevector <8 x ptr> %broadcast.splatinsert56, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit
  %i.ab = phi i32 [ %i.n, %.lr.ph ], [ %i.de, %_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit ]
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit ] ; 3 uses
  %i.ac = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !93 ; 2 uses
  %i.ag = sub nsw i32 %i.ae, %i.af
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !187 ; 2 uses
  %i.ai = mul nsw i32 %i.ag, %i.ah
  %i.aj = load i32, ptr %i.s, align 4, !tbaa !185
  %i.ak = add nsw i32 %i.aj, %i.af
  %i.al = mul nsw i32 %i.ak, %i.ah                ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = sext i32 %i.ai to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.am
  %i.ap = load i32, ptr %i.x, align 4, !tbaa !197
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sdiv i64 %i.an, %i.aq                   ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader.lr.ph.i, label %_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.au = load i32, ptr %i.y, align 8, !tbaa !352
  %i.av = ashr i32 %i.al, %i.au
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !126
  %i.ax = sext i32 %i.av to i64
  %wide.trip.count28.i = and i64 %i.ar, 2147483647
  %invariant.gep32.i = getelementptr [4 x i8], ptr %i.aw, i64 %i.ax
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv25.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next26.i, %._crit_edge.i ] ; 3 uses
  %i.ay = load i32, ptr %i.x, align 4, !tbaa !197 ; 5 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.ba = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.bb = mul nuw nsw i32 %i.ay, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %wide.trip.count.i = zext nneg i32 %i.ay to i64 ; 6 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bc ; 3 uses
  %min.iters.check = icmp ult i32 %i.ay, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i32 %i.ay, 32
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bd = and i64 %wide.trip.count.i, 24
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi34 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi50, %vector.body ]
  %vec.phi35 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi51, %vector.body ]
  %vec.phi36 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi52, %vector.body ]
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %wide.load = load <8 x i32>, ptr %i.be, align 4, !tbaa !93 ; 2 uses
  %wide.load37 = load <8 x i32>, ptr %i.bf, align 4, !tbaa !93 ; 2 uses
  %wide.load38 = load <8 x i32>, ptr %i.bg, align 4, !tbaa !93 ; 2 uses
  %wide.load39 = load <8 x i32>, ptr %i.bh, align 4, !tbaa !93 ; 2 uses
  %i.bi = icmp sgt <8 x i32> %wide.load, splat (i32 -1) ; 3 uses
  %i.bj = icmp sgt <8 x i32> %wide.load37, splat (i32 -1) ; 3 uses
  %i.bk = icmp sgt <8 x i32> %wide.load38, splat (i32 -1) ; 3 uses
  %i.bl = icmp sgt <8 x i32> %wide.load39, splat (i32 -1) ; 3 uses
  %i.bm = zext nneg <8 x i32> %wide.load to <8 x i64>
  %i.bn = zext nneg <8 x i32> %wide.load37 to <8 x i64>
  %i.bo = zext nneg <8 x i32> %wide.load38 to <8 x i64>
  %i.bp = zext nneg <8 x i32> %wide.load39 to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.w, <8 x i64> %i.bm
  %wide.gep40 = getelementptr inbounds nuw [4 x i8], ptr %i.w, <8 x i64> %i.bn
  %wide.gep41 = getelementptr inbounds nuw [4 x i8], ptr %i.w, <8 x i64> %i.bo
  %wide.gep42 = getelementptr inbounds nuw [4 x i8], ptr %i.w, <8 x i64> %i.bp
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.bi, <8 x i32> poison), !tbaa !93
  %wide.masked.gather43 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep40, <8 x i1> %i.bj, <8 x i32> poison), !tbaa !93
  %wide.masked.gather44 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep41, <8 x i1> %i.bk, <8 x i32> poison), !tbaa !93
  %wide.masked.gather45 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep42, <8 x i1> %i.bl, <8 x i32> poison), !tbaa !93
  %i.bq = and <8 x i32> %wide.masked.gather, splat (i32 255)
  %i.br = and <8 x i32> %wide.masked.gather43, splat (i32 255)
  %i.bs = and <8 x i32> %wide.masked.gather44, splat (i32 255)
  %i.bt = and <8 x i32> %wide.masked.gather45, splat (i32 255)
  %wide.masked.gather46 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat, <8 x i1> %i.bi, <8 x i32> poison), !tbaa !353
  %wide.masked.gather47 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat, <8 x i1> %i.bj, <8 x i32> poison), !tbaa !353
  %wide.masked.gather48 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat, <8 x i1> %i.bk, <8 x i32> poison), !tbaa !353
  %wide.masked.gather49 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat, <8 x i1> %i.bl, <8 x i32> poison), !tbaa !353
  %i.bu = mul nsw <8 x i32> %wide.masked.gather46, %vec.ind
  %i.bv = mul nsw <8 x i32> %wide.masked.gather47, %step.add
  %i.bw = mul nsw <8 x i32> %wide.masked.gather48, %step.add.2
  %i.bx = mul nsw <8 x i32> %wide.masked.gather49, %step.add.3
  %i.by = shl <8 x i32> %i.bq, %i.bu
  %i.bz = shl <8 x i32> %i.br, %i.bv
  %i.ca = shl <8 x i32> %i.bs, %i.bw
  %i.cb = shl <8 x i32> %i.bt, %i.bx
  %i.cc = select <8 x i1> %i.bi, <8 x i32> %i.by, <8 x i32> zeroinitializer
  %predphi = or <8 x i32> %vec.phi, %i.cc         ; 2 uses
  %i.cd = select <8 x i1> %i.bj, <8 x i32> %i.bz, <8 x i32> zeroinitializer
  %predphi50 = or <8 x i32> %vec.phi34, %i.cd     ; 2 uses
  %i.ce = select <8 x i1> %i.bk, <8 x i32> %i.ca, <8 x i32> zeroinitializer
  %predphi51 = or <8 x i32> %vec.phi35, %i.ce     ; 2 uses
  %i.cf = select <8 x i1> %i.bl, <8 x i32> %i.cb, <8 x i32> zeroinitializer
  %predphi52 = or <8 x i32> %vec.phi36, %i.cf     ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i32> %predphi50, %predphi
  %bin.rdx53 = or <8 x i32> %predphi51, %bin.rdx
  %bin.rdx54 = or <8 x i32> %predphi52, %bin.rdx53
  %i.ch = call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %bin.rdx54) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.ch, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.ci = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.cj = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert58 = insertelement <8 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat59 = shufflevector <8 x i32> %broadcast.splatinsert58, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat59, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi61 = phi <8 x i32> [ %i.ci, %vec.epilog.ph ], [ %predphi67, %vec.epilog.vector.body ]
  %vec.ind62 = phi <8 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next69, %vec.epilog.vector.body ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index60
  %wide.load63 = load <8 x i32>, ptr %i.ck, align 4, !tbaa !93 ; 2 uses
  %i.cl = icmp sgt <8 x i32> %wide.load63, splat (i32 -1) ; 3 uses
  %i.cm = zext nneg <8 x i32> %wide.load63 to <8 x i64>
  %wide.gep64 = getelementptr inbounds nuw [4 x i8], ptr %i.w, <8 x i64> %i.cm
  %wide.masked.gather65 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep64, <8 x i1> %i.cl, <8 x i32> poison), !tbaa !93
  %i.cn = and <8 x i32> %wide.masked.gather65, splat (i32 255)
  %wide.masked.gather66 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %broadcast.splat57, <8 x i1> %i.cl, <8 x i32> poison), !tbaa !353
  %i.co = mul nsw <8 x i32> %wide.masked.gather66, %vec.ind62
  %i.cp = shl <8 x i32> %i.cn, %i.co
  %i.cq = select <8 x i1> %i.cl, <8 x i32> %i.cp, <8 x i32> zeroinitializer
  %predphi67 = or <8 x i32> %vec.phi61, %i.cq     ; 2 uses
  %index.next68 = add nuw i64 %index60, 8         ; 2 uses
  %vec.ind.next69 = add <8 x i32> %vec.ind62, splat (i32 8)
  %i.cr = icmp eq i64 %index.next68, %n.vec55
  br i1 %i.cr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !349

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cs = call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %predphi67) ; 2 uses
  %cmp.n70 = icmp eq i64 %n.vec55, %wide.trip.count.i
  br i1 %cmp.n70, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec55, %vec.epilog.middle.block ]
  %.01520.i.ph = phi i32 [ 0, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %bb.e, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.015.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.cs, %vec.epilog.middle.block ], [ %i.ch, %middle.block ], [ %.1.i, %bb.e ]
  %gep33.i = getelementptr [4 x i8], ptr %invariant.gep32.i, i64 %indvars.iv25.i
  store i32 %.015.lcssa.i, ptr %gep33.i, align 4, !tbaa !93
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit.loopexit, label %.preheader.i, !llvm.loop !350

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.01520.i = phi i32 [ %.1.i, %bb.e ], [ %.01520.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ct = load i32, ptr %gep.i, align 4, !tbaa !93 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vec.epilog.scalar.ph
  %i.cv = zext nneg i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !93
  %i.cy = and i32 %i.cx, 255
  %i.cz = load i32, ptr %i.t, align 8, !tbaa !353
  %i.da = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.db = mul nsw i32 %i.cz, %i.da
  %i.dc = shl i32 %i.cy, %i.db
  %i.dd = or i32 %i.dc, %.01520.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %vec.epilog.scalar.ph
  %.1.i = phi i32 [ %i.dd, %bb.d ], [ %.01520.i, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !351

_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %i.b, align 4, !tbaa !93
  br label %_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit

_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit: ; preds = %_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit.loopexit, %bb.c
  %i.de = phi i32 [ %.pre, %_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit.loopexit ], [ %i.ab, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.df = sext i32 %i.de to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.df
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN3gmx22EnergyGroupsPerCluster15setEnergyGroupsENS_8ArrayRefIKiEES3_ii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !198  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !126    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !360
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !93
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !198
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #33
  unreachable

_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef %i.t) ; 10 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %bb.e, label %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28

bb.e:                                             ; preds = %_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !81
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
  unreachable

_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28: ; preds = %_ZNKSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.z = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.z, i1 false), !tbaa !93
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %iter.check

iter.check:                                       ; preds = %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %i.aa = add i64 %i.d, -4
  %i.ab = sub i64 %i.aa, %i.e                     ; 3 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 28
  %i.ae = sub i64 %i.e, %i.v
  %diff.check = icmp ugt i64 %i.ae, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.ab, 124
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, 9223372036854775776     ; 4 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.u, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.aj ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.c, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.ak = getelementptr i8, ptr %next.gep34, i64 32
  %i.al = getelementptr i8, ptr %next.gep34, i64 64
  %i.am = getelementptr i8, ptr %next.gep34, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep34, align 4, !tbaa !93, !alias.scope !362, !noalias !361
  %wide.load35 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !93, !alias.scope !362, !noalias !361
  %wide.load36 = load <8 x i32>, ptr %i.al, align 4, !tbaa !93, !alias.scope !362, !noalias !361
  %wide.load37 = load <8 x i32>, ptr %i.am, align 4, !tbaa !93, !alias.scope !362, !noalias !361
  %i.an = getelementptr i8, ptr %next.gep, i64 32
  %i.ao = getelementptr i8, ptr %next.gep, i64 64
  %i.ap = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !93, !alias.scope !361, !noalias !362
  store <8 x i32> %wide.load35, ptr %i.an, align 4, !tbaa !93, !alias.scope !361, !noalias !362
  store <8 x i32> %wide.load36, ptr %i.ao, align 4, !tbaa !93, !alias.scope !361, !noalias !362
  store <8 x i32> %wide.load37, ptr %i.ap, align 4, !tbaa !93, !alias.scope !361, !noalias !362
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.ad, 9223372036854775800   ; 3 uses
  %i.ar = shl i64 %n.vec39, 2                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.u, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.c, i64 %i.ar
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.au = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.u, i64 %i.au
  %next.gep42 = getelementptr i8, ptr %i.c, i64 %i.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %wide.load43 = load <8 x i32>, ptr %next.gep42, align 4, !tbaa !93, !alias.scope !362, !noalias !361
  store <8 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !93, !alias.scope !361, !noalias !362
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !358

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.ad, %n.vec39
  br i1 %cmp.n45, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.aw = load i32, ptr %.0911.i.i.i, align 4, !tbaa !93, !alias.scope !362, !noalias !361
  store i32 %i.aw, ptr %.012.i.i.i, align 4, !tbaa !93, !alias.scope !361, !noalias !362
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !359

_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit28
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPim.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit
  tail call void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE11_S_relocateEPiS5_S5_RS3_.exit, %bb.f
  store ptr %i.u, ptr %0, align 8, !tbaa !126
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !198
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !360
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimN3gmx9AllocatorIiNS1_23AlignedAllocationPolicyEEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx28nbnxn_atomdata_copy_shiftvecESt8optionalIbENS_8ArrayRefIKNS_11BasicVectorIfEEEEPNS_16nbnxn_atomdata_tE(i16 %0, ptr %1, ptr %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #24 {
bb.a:
  %i.a = and i16 %0, 256
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %_ZNRSt8optionalIbE5valueEv.exit

_ZNRSt8optionalIbE5valueEv.exit:                  ; preds = %bb.a
  %.sroa.06.0.extract.trunc = trunc i16 %0 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 424
  store i8 %.sroa.06.0.extract.trunc, ptr %i.b, align 8, !tbaa !364
  br label %bb.b

bb.b:                                             ; preds = %_ZNRSt8optionalIbE5valueEv.exit, %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN3gmx12ArrayRefIterIKNS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_NS0_9AllocatorIS3_NS0_20HostAllocationPolicyEEEEEEET0_T_SG_SF_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !365
  %i.i = udiv exact i64 %i.e, 12
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.048.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.07.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !137
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12
  %i.l = add nsw i64 %.048.i.i.i.i.i, -1
  %i.m = icmp samesign ugt i64 %.048.i.i.i.i.i, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN3gmx12ArrayRefIterIKNS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_NS0_9AllocatorIS3_NS0_20HostAllocationPolicyEEEEEEET0_T_SG_SF_.exit, !llvm.loop !363

_ZSt4copyIN3gmx12ArrayRefIterIKNS0_11BasicVectorIfEEEEN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_NS0_9AllocatorIS3_NS0_20HostAllocationPolicyEEEEEEET0_T_SG_SF_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx31nbnxn_atomdata_copy_x_to_nbat_xERKNS_7GridSetENS_12AtomLocalityEPA3_KfPNS_16nbnxn_atomdata_tE(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.gmx::Range", align 8        ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %2, ptr %i.a, align 8, !tbaa !92
  store ptr %3, ptr %i.b, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.g = load i8, ptr %i.f, align 1, !tbaa !201, !range !119, !noundef !122
  store i8 %i.g, ptr %i.c, align 1, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3 = load i32, ptr %i.i, align 8
  switch i32 %1, label %_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit [
    i32 2, label %bb.d
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.04.i = phi i32 [ 1, %bb.c ], [ 0, %bb.a ]     ; 2 uses
  %i.j = sext i32 %.val3 to i64
  %.not.i.i5.i = icmp eq ptr %.val, null
  %i.k = getelementptr inbounds nuw [376 x i8], ptr %.val, i64 %i.j
  %spec.select.i.i6.i = select i1 %.not.i.i5.i, ptr null, ptr %i.k
  %i.l = ptrtoint ptr %spec.select.i.i6.i to i64
  %i.m = ptrtoint ptr %.val to i64
  %i.n = sub i64 %i.l, %i.m
  %.0.in.i = sdiv exact i64 %i.n, 376             ; 2 uses
  %.0.i = trunc i64 %.0.in.i to i32
  %.not.i.i = icmp sgt i32 %.04.i, %.0.i
  br i1 %.not.i.i, label %bb.e, label %_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.35, i32 noundef 111) #33
  unreachable

_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit: ; preds = %bb.a, %bb.b, %bb.d
  %.08.i = phi i64 [ %.0.in.i, %bb.d ], [ 1, %bb.b ], [ 0, %bb.a ]
  %.047.i = phi i32 [ %.04.i, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sroa.2.0.insert.ext.i = shl i64 %.08.i, 32
  %.sroa.03.0.insert.ext.i = zext nneg i32 %.047.i to i64
  %.sroa.03.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.ext.i, %.sroa.03.0.insert.ext.i
  store i64 %.sroa.03.0.insert.insert.i, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.o = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 2) ; 2 uses
  store i32 %i.o, ptr %i.d, align 4, !tbaa !93
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.o)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN3gmx31nbnxn_atomdata_copy_x_to_nbat_xERKNS_7GridSetENS_12AtomLocalityEPA3_KfPNS_16nbnxn_atomdata_tE.omp_outlined, ptr nonnull %i.d, ptr nonnull %4, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx31nbnxn_atomdata_copy_x_to_nbat_xERKNS_7GridSetENS_12AtomLocalityEPA3_KfPNS_16nbnxn_atomdata_tE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #21 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !93     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.g, ptr %i.b, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !93
  %i.h = load i32, ptr %0, align 4, !tbaa !93     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !93
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !93
  %i.k = load i32, ptr %i.a, align 4, !tbaa !93   ; 2 uses
  %.not67 = icmp sgt i32 %i.k, %i.j
  br i1 %.not67, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.o = load i32, ptr %3, align 4, !tbaa !203
  %i.p = load i32, ptr %i.l, align 4, !tbaa !204
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %._crit_edge71, label %.lr.ph70.split

.lr.ph70.split:                                   ; preds = %.lr.ph70, %._crit_edge
  %i.r = phi i32 [ %i.v, %._crit_edge ], [ %i.j, %.lr.ph70 ]
  %.068 = phi i32 [ %.pre78, %._crit_edge ], [ %i.k, %.lr.ph70 ] ; 3 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !203    ; 2 uses
  %i.t = load i32, ptr %i.l, align 4, !tbaa !204  ; 2 uses
  %.not6065 = icmp eq i32 %i.s, %i.t
  %.pre78 = add nsw i32 %.068, 1                  ; 2 uses
  br i1 %.not6065, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph70.split
  %i.u = sext i32 %i.s to i64
  %8 = insertelement <2 x i32> poison, i32 %.068, i64 0
  %9 = insertelement <2 x i32> %8, i32 %.pre78, i64 1
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN3gmxL23copyXToNbatXForGridPartERKNS_4GridERKNS_5RangeIiEEPA3_KfPNS_16nbnxn_atomdata_tE.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !93
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph70.split, %._crit_edge.loopexit
  %i.v = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.r, %.lr.ph70.split ] ; 2 uses
  %.not.not = icmp slt i32 %.068, %i.v
  br i1 %.not.not, label %.lr.ph70.split, label %._crit_edge71, !llvm.loop !366

bb.c:                                             ; preds = %.lr.ph, %_ZN3gmxL23copyXToNbatXForGridPartERKNS_4GridERKNS_5RangeIiEEPA3_KfPNS_16nbnxn_atomdata_tE.exit
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZN3gmxL23copyXToNbatXForGridPartERKNS_4GridERKNS_5RangeIiEEPA3_KfPNS_16nbnxn_atomdata_tE.exit ] ; 2 uses
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !163
  %i.x = getelementptr inbounds nuw [376 x i8], ptr %i.w, i64 %indvars.iv ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 92
  %i.aa = load i32, ptr %2, align 4, !tbaa !93    ; 2 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !93
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !93
  %i.ad = mul nsw i32 %i.ab, %i.ac
  %i.ae = add i32 %i.aa, -1
  %10 = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %11 = shufflevector <2 x i32> %10, <2 x i32> poison, <2 x i32> zeroinitializer
  %12 = mul nsw <2 x i32> %11, %9
  %13 = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <2 x i32> zeroinitializer
  %15 = add <2 x i32> %14, %12
  %i.af = insertelement <2 x i32> poison, i32 %i.aa, i64 0
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ah = sdiv <2 x i32> %15, %i.ag               ; 2 uses
  %i.ai = load i8, ptr %5, align 1, !tbaa !115, !range !119, !noundef !122
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = extractelement <2 x i32> %i.ah, i64 0   ; 8 uses
  %i.al = extractelement <2 x i32> %i.ah, i64 1   ; 8 uses
  %.not.i = icmp sgt i32 %i.ak, %i.al             ; 2 uses
  br i1 %i.aj, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i, label %bb.e, label %_ZN3gmx5RangeIiEC2Eii.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.35, i32 noundef 111) #33
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  unreachable

_ZN3gmx5RangeIiEC2Eii.exit:                       ; preds = %bb.d
  %i.am = load ptr, ptr %6, align 8, !tbaa !92    ; 22 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !190   ; 5 uses
  %.not14.i = icmp eq i32 %i.ak, %i.al
  br i1 %.not14.i, label %_ZN3gmxL23copyXToNbatXForGridPartERKNS_4GridERKNS_5RangeIiEEPA3_KfPNS_16nbnxn_atomdata_tE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3gmx5RangeIiEC2Eii.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !111 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !187 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.at = load i32, ptr %i.as, align 4, !tbaa !185 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 416
  %i.av = load i32, ptr %i.au, align 8, !tbaa !129
  %invariant.gep.2.i38.i = getelementptr i8, ptr %i.am, i64 8 ; 12 uses
  %invariant.gep.1.i39.i = getelementptr i8, ptr %i.am, i64 4 ; 12 uses
  switch i32 %i.av, label %_ZN3gmxL23copyXToNbatXForGridPartERKNS_4GridERKNS_5RangeIiEEPA3_KfPNS_16nbnxn_atomdata_tE.exit [
    i32 0, label %.lr.ph.split.us.i
    i32 1, label %.lr.ph.split.us16.i
    i32 2, label %.lr.ph.split.us20.i
    i32 3, label %.lr.ph.split.us24.i
  ]

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 480
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !76 ; 4 uses
  %i.ay = sext i32 %i.ak to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us.i, %.lr.ph.split.us.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us.i ], [ %i.ay, %.lr.ph.split.us.i ] ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv39.i ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !93
  %i.bc = load i32, ptr %i.az, align 4, !tbaa !93 ; 2 uses
  %i.bd = sub nsw i32 %i.bb, %i.bc
  %i.be = mul nsw i32 %i.bd, %i.ar                ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader.i.us.i, label %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %bb.f
  %i.bg = add nsw i32 %i.bc, %i.at
  %i.bh = mul nsw i32 %i.bg, %i.ar                ; 2 uses
  %i.bi = add nsw i32 %i.bh, %i.be
  %i.bj = sext i32 %i.bh to i64                   ; 8 uses
  %i.bk = sext i32 %i.bi to i64                   ; 3 uses
  %i.bl = add nsw i64 %i.bj, 1
  %i.bm = call i64 @llvm.smax.i64(i64 %i.bl, i64 %i.bk)
  %i.bn = sub i64 %i.bm, %i.bj                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bn, 8
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.us.i
  %i.bo = mul nsw i64 %i.bj, 12                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bo
  %i.bp = add nsw i64 %i.bj, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.bp, i64 %i.bk)
  %i.bq = mul nsw i64 %smax, 12                   ; 2 uses
  %scevgep100 = getelementptr i8, ptr %i.ax, i64 %i.bq
  %scevgep101 = getelementptr i8, ptr %i.am, i64 %i.bo
  %scevgep102 = getelementptr i8, ptr %i.am, i64 %i.bq
  %bound0 = icmp ult ptr %scevgep, %scevgep102
  %bound1 = icmp ult ptr %scevgep101, %scevgep100
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, -8                      ; 3 uses
  %i.br = add i64 %n.vec, %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = add i64 %index, %i.bj                   ; 2 uses
  %i.bt = getelementptr inbounds [12 x i8], ptr %i.am, i64 %i.bs
  %wide.vec = load <24 x float>, ptr %i.bt, align 4, !tbaa !79, !alias.scope !379
  %i.bu = mul nsw i64 %i.bs, 12
  %i.bv = getelementptr inbounds i8, ptr %i.ax, i64 %i.bu
  store <24 x float> %wide.vec, ptr %i.bv, align 4, !tbaa !79, !alias.scope !380, !noalias !379
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !370

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.us.i, %middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.preheader.i.us.i ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %.lr.ph.i.us.i ], [ %indvars.iv.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 3 uses
  %i.bx = getelementptr inbounds [12 x i8], ptr %i.am, i64 %indvars.iv.i.us.i ; 3 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !79
  %.idx.i.us.i = mul nsw i64 %indvars.iv.i.us.i, 12
  %i.bz = getelementptr inbounds i8, ptr %i.ax, i64 %.idx.i.us.i ; 3 uses
  store float %i.by, ptr %i.bz, align 4, !tbaa !79
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !79
  %i.cc = getelementptr i8, ptr %i.bz, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !79
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !79
  %i.cf = getelementptr i8, ptr %i.bz, i64 8
  store float %i.ce, ptr %i.cf, align 4, !tbaa !79
  %indvars.iv.next.i.us.i = add nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %i.cg = icmp slt i64 %indvars.iv.next.i.us.i, %i.bk
  br i1 %i.cg, label %.lr.ph.i.us.i, label %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us.i, !llvm.loop !371

_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us.i: ; preds = %.lr.ph.i.us.i, %middle.block, %bb.f
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %i.ch = trunc nsw i64 %indvars.iv.next40.i to i32
  %.not.us.i = icmp eq i32 %i.al, %i.ch
  br i1 %.not.us.i, label %_ZN3gmxL23copyXToNbatXForGridPartERKNS_4GridERKNS_5RangeIiEEPA3_KfPNS_16nbnxn_atomdata_tE.exit, label %bb.f

.lr.ph.split.us16.i:                              ; preds = %.lr.ph.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 480
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !76 ; 4 uses
  %i.ck = sext i32 %i.ak to i64
  %scevgep107 = getelementptr i8, ptr %i.cj, i64 -4
  br label %bb.g

bb.g:                                             ; preds = %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us18.i, %.lr.ph.split.us16.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us18.i ], [ %i.ck, %.lr.ph.split.us16.i ] ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv36.i ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !93
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !93 ; 2 uses
  %i.cp = sub nsw i32 %i.cn, %i.co
  %i.cq = mul nsw i32 %i.cp, %i.ar                ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.preheader.i26.us.i, label %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us18.i

.lr.ph.preheader.i26.us.i:                        ; preds = %bb.g
  %i.cs = add nsw i32 %i.co, %i.at
  %i.ct = mul nsw i32 %i.cs, %i.ar                ; 2 uses
  %i.cu = add nsw i32 %i.ct, %i.cq
  %i.cv = sext i32 %i.ct to i64                   ; 10 uses
  %i.cw = sext i32 %i.cu to i64                   ; 3 uses
  %i.cx = add nsw i64 %i.cv, 1
  %i.cy = call i64 @llvm.smax.i64(i64 %i.cx, i64 %i.cw)
  %i.cz = sub i64 %i.cy, %i.cv                    ; 3 uses
  %min.iters.check116 = icmp ult i64 %i.cz, 8
  br i1 %min.iters.check116, label %.lr.ph.i27.us.i.preheader, label %vector.memcheck105

vector.memcheck105:                               ; preds = %.lr.ph.preheader.i26.us.i
  %i.da = shl nsw i64 %i.cv, 4
  %scevgep106 = getelementptr i8, ptr %i.cj, i64 %i.da
  %i.db = add nsw i64 %i.cv, 1
  %smax108 = call i64 @llvm.smax.i64(i64 %i.db, i64 %i.cw) ; 2 uses
  %i.dc = shl nsw i64 %smax108, 4
  %scevgep109 = getelementptr i8, ptr %scevgep107, i64 %i.dc
  %i.dd = mul nsw i64 %i.cv, 12
  %scevgep110 = getelementptr i8, ptr %i.am, i64 %i.dd
  %i.de = mul nsw i64 %smax108, 12
  %scevgep111 = getelementptr i8, ptr %i.am, i64 %i.de
  %bound0112 = icmp ult ptr %scevgep106, %scevgep111
  %bound1113 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %.lr.ph.i27.us.i.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck105
  %n.vec118 = and i64 %i.cz, -8                   ; 3 uses
  %i.df = add i64 %n.vec118, %i.cv
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.cv, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.gep = getelementptr [12 x i8], ptr %i.am, i64 %i.cv
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next127, %vector.body119 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph117 ], [ %vec.ind.next, %vector.body119 ] ; 2 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %index120
  %wide.vec121 = load <24 x float>, ptr %gep, align 4, !tbaa !79, !alias.scope !381 ; 3 uses
  %strided.vec122 = shufflevector <24 x float> %wide.vec121, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec123 = shufflevector <24 x float> %wide.vec121, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec124 = shufflevector <24 x float> %wide.vec121, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.dg = shl nsw <8 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds i8, ptr %i.cj, <8 x i64> %i.dg ; 3 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec122, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !79, !alias.scope !382, !noalias !381
end_hunk_5
