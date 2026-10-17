Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/move-optimizer?download=true
inline.NumInlined: 893
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::pair.24" = type { %"struct.v8::internal::compiler::(anonymous namespace)::MoveKey", i64 }
%"struct.v8::internal::compiler::(anonymous namespace)::MoveKey" = type { %"class.v8::internal::compiler::InstructionOperand", %"class.v8::internal::compiler::InstructionOperand" }
%"class.v8::internal::compiler::InstructionOperand" = type { i64 }
%"class.v8::internal::SmallZoneMap.20" = type { %"class.v8::base::SmallMap.21" }
%"class.v8::base::SmallMap.21" = type { i64, %"class.v8::internal::ZoneMapInit.22", %union.anon.23 }
%"class.v8::internal::ZoneMapInit.22" = type { ptr }
%union.anon.23 = type { [16 x %"struct.std::pair.24"] }
%"struct.std::pair" = type <{ %"struct.v8::internal::compiler::(anonymous namespace)::MoveKey", [8 x i8] }>
%"class.v8::internal::SmallZoneMap" = type { %"class.v8::base::SmallMap" }
%"class.v8::base::SmallMap" = type { i64, %"class.v8::internal::ZoneMapInit", %union.anon }
%"class.v8::internal::ZoneMapInit" = type { ptr }
%union.anon = type { %"class.v8::internal::ZoneMap", [328 x i8] }
%"class.v8::internal::ZoneMap" = type { %"class.std::map" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<v8::internal::compiler::(anonymous namespace)::MoveKey, std::pair<const v8::internal::compiler::(anonymous namespace)::MoveKey, Dummy>, std::_Select1st<std::pair<const v8::internal::compiler::(anonymous namespace)::MoveKey, Dummy>>, std::less<v8::internal::compiler::(anonymous namespace)::MoveKey>, v8::internal::ZoneAllocator<std::pair<const v8::internal::compiler::(anonymous namespace)::MoveKey, Dummy>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<v8::internal::compiler::(anonymous namespace)::MoveKey, std::pair<const v8::internal::compiler::(anonymous namespace)::MoveKey, Dummy>, std::_Select1st<std::pair<const v8::internal::compiler::(anonymous namespace)::MoveKey, Dummy>>, std::less<v8::internal::compiler::(anonymous namespace)::MoveKey>, v8::internal::ZoneAllocator<std::pair<const v8::internal::compiler::(anonymous namespace)::MoveKey, Dummy>>>::_Rb_tree_impl" = type { %"class.v8::internal::ZoneAllocator.16", [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.v8::internal::ZoneAllocator.16" = type { ptr }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.v8::internal::compiler::ParallelMove" = type { %"class.v8::internal::ZoneVector" }
%"class.v8::internal::ZoneVector" = type { ptr, ptr, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { ptr }
%union.Storage = type { [16 x %"struct.std::pair"] }
%union.Storage.51 = type { [16 x %"struct.std::pair.24"] }

$_ZN2v88internal8compiler12ParallelMove7AddMoveERKNS1_18InstructionOperandES5_PNS0_4ZoneE = comdat any

$_ZN2v88internal10ZoneVectorINS0_8compiler18InstructionOperandEE4GrowEm = comdat any

$_ZN2v88internal10ZoneVectorIPNS0_8compiler12MoveOperandsEE4GrowEm = comdat any

$_ZSt16__introsort_loopIPPN2v88internal8compiler12MoveOperandsElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS3_SA_EEEEvT_SE_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPPN2v88internal8compiler12MoveOperandsEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS3_SA_EEEEvT_SE_T0_ = comdat any

$_ZSt11__make_heapIPPN2v88internal8compiler12MoveOperandsEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbPKS3_SA_EEEEvT_SE_RT0_ = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"length < std::numeric_limits<size_t>::max() / sizeof(T)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"i <= size_\00", align 1

@_ZN2v88internal8compiler13MoveOptimizerC1EPNS0_4ZoneEPNS1_19InstructionSequenceE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN2v88internal8compiler13MoveOptimizerC2EPNS0_4ZoneEPNS1_19InstructionSequenceE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal8compiler13MoveOptimizerC2EPNS0_4ZoneEPNS1_19InstructionSequenceE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(112) initializes((0, 112)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13MoveOptimizer3RunEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not54 = icmp eq ptr %i.d, %i.f
  br i1 %.not54, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.g = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not4956 = icmp eq ptr %i.k, %i.m
  br i1 %.not4956, label %._crit_edge70, label %.lr.ph59

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04255 = phi ptr [ %i.o, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr %.04255, align 8
  tail call void @_ZN2v88internal8compiler13MoveOptimizer12CompressGapsEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.04255, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge60:                                    ; preds = %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit
  %.pre76 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre76, i64 16
  %.pre77 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %.pre77, i64 8
  %.pre79 = load ptr, ptr %.phi.trans.insert78, align 8 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %.pre77, i64 16
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8 ; 2 uses
  %.not5066 = icmp eq ptr %.pre79, %.pre81
  br i1 %.not5066, label %._crit_edge70, label %.lr.ph69

.lr.ph59:                                         ; preds = %._crit_edge, %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit
  %.04857 = phi ptr [ %i.ag, %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit ], [ %i.k, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.04857, align 8           ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 116
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add i32 %i.t, -1                         ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = sext i32 %i.r to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  tail call void @_ZN2v88internal8compiler13MoveOptimizer27RemoveClobberedDestinationsEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.aa)
  %.not.not14.i = icmp slt i32 %i.r, %i.u
  br i1 %.not.not14.i, label %.lr.ph.preheader.i, label %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph59
  %wide.trip.count.i = sext i32 %i.u to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.w, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %.01315.i = phi ptr [ %i.aa, %.lr.ph.preheader.i ], [ %i.af, %.lr.ph.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  tail call void @_ZN2v88internal8compiler13MoveOptimizer12MigrateMovesEPNS1_11InstructionES4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.af, ptr noundef %.01315.i)
  tail call void @_ZN2v88internal8compiler13MoveOptimizer27RemoveClobberedDestinationsEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.af)
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit, label %.lr.ph.i, !llvm.loop !0

_ZN2v88internal8compiler13MoveOptimizer13CompressBlockEPNS1_16InstructionBlockE.exit: ; preds = %.lr.ph.i, %.lr.ph59
  %i.ag = getelementptr inbounds nuw i8, ptr %.04857, i64 8 ; 2 uses
  %.not49 = icmp eq ptr %i.ag, %i.m
  br i1 %.not49, label %._crit_edge60, label %.lr.ph59

._crit_edge70.loopexit:                           ; preds = %.critedge
  %.pre82 = load ptr, ptr %i.a, align 8
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge, %._crit_edge70.loopexit, %._crit_edge60
  %i.ah = phi ptr [ %.pre82, %._crit_edge70.loopexit ], [ %.pre76, %._crit_edge60 ], [ %i.g, %._crit_edge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 216
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not5171 = icmp eq ptr %i.aj, %i.al
  br i1 %.not5171, label %._crit_edge75, label %.lr.ph74

.lr.ph69:                                         ; preds = %._crit_edge60, %.critedge
  %.04767 = phi ptr [ %i.bk, %.critedge ], [ %.pre79, %._crit_edge60 ] ; 2 uses
  %i.am = load ptr, ptr %.04767, align 8          ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 5
  br i1 %i.au, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph69
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 124
  %i.aw = load i16, ptr %i.av, align 4
  %i.ax = trunc i16 %i.aw to i1
  br i1 %i.ax, label %.loopexit, label %1

1:                                                ; preds = %bb.b
  %.not5261 = icmp eq ptr %i.aq, %i.ao
  br i1 %.not5261, label %.critedge, label %.lr.ph65

.lr.ph65:                                         ; preds = %1
  %i.ay = load ptr, ptr %i.a, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.04362, i64 4 ; 2 uses
  %.not52 = icmp eq ptr %i.bd, %i.ao
  br i1 %.not52, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph65, %bb.c
  %.04362 = phi ptr [ %i.aq, %.lr.ph65 ], [ %i.bd, %bb.c ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.04362, align 4
  %i.be = sext i32 %.sroa.0.0.copyload to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 124
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = trunc i16 %i.bi to i1
  br i1 %i.bj, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b
  tail call void @_ZN2v88internal8compiler13MoveOptimizer13OptimizeMergeEPNS1_16InstructionBlockE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %i.am)
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %1, %.lr.ph69, %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr %.04767, i64 8 ; 2 uses
  %.not50 = icmp eq ptr %i.bk, %.pre81
  br i1 %.not50, label %._crit_edge70.loopexit, label %.lr.ph69

._crit_edge75:                                    ; preds = %.lr.ph74, %._crit_edge70
  ret void

.lr.ph74:                                         ; preds = %._crit_edge70, %.lr.ph74
  %.072 = phi ptr [ %i.bm, %.lr.ph74 ], [ %i.aj, %._crit_edge70 ] ; 2 uses
  %i.bl = load ptr, ptr %.072, align 8
  tail call void @_ZN2v88internal8compiler13MoveOptimizer13FinalizeMovesEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %.072, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.bm, %i.al
  br i1 %.not51, label %._crit_edge75, label %.lr.ph74
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler13MoveOptimizer12CompressGapsEPNS1_11InstructionE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not39.i = icmp eq ptr %i.e, %i.g
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i
  %.040.i = phi ptr [ %i.ak, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.040.i, align 8           ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 5 uses
  %i.j = and i64 %i.i, 7                          ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = icmp eq i64 %i.j, 4
  br i1 %i.m, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %i.j, 4
  br i1 %i.n, label %bb.e, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = and i64 %i.i, 8
  %i.p = icmp eq i64 %i.o, 0
  %i.q = and i64 %i.i, 3840
  %i.r = icmp ne i64 %i.q, 0
  %i.s = and i1 %i.r, %i.p
  %i.t = and i64 %i.i, -4088
  %i.u = select i1 %i.s, i64 288, i64 0
  %i.v = or disjoint i64 %i.t, %i.u
  %i.w = or disjoint i64 %i.v, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.02.i.i.i.i = phi i64 [ %i.w, %bb.e ], [ %i.i, %bb.d ]
  %i.x = load i64, ptr %i.l, align 8              ; 5 uses
  %i.y = and i64 %i.x, 7
  %i.z = icmp samesign ugt i64 %i.y, 4
  br i1 %i.z, label %bb.f, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i

bb.f:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i
  %i.aa = and i64 %i.x, 8
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = and i64 %i.x, 3840
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = and i1 %i.ad, %i.ab
  %i.af = and i64 %i.x, -4088
  %i.ag = select i1 %i.ae, i64 288, i64 0
  %i.ah = or disjoint i64 %i.af, %i.ag
  %i.ai = or disjoint i64 %i.ah, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i: ; preds = %bb.f, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i
  %.02.i4.i.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.x, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.i ]
  %i.aj = icmp eq i64 %.02.i.i.i.i, %.02.i4.i.i.i
  br i1 %i.aj, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i, label %bb.n

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i, %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.040.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.g
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.i
  %.pre.i = load ptr, ptr %i.d, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %i.al = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.e, %bb.b ]
  store ptr %i.al, ptr %i.f, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not39.1.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not39.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.h, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i
  %.040.1.i = phi ptr [ %i.bw, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i ], [ %i.aq, %bb.h ] ; 2 uses
  %i.at = load ptr, ptr %.040.1.i, align 8        ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 5 uses
  %i.av = and i64 %i.au, 7                        ; 3 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.1.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = icmp eq i64 %i.av, 4
  br i1 %i.ay, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp samesign ugt i64 %i.av, 4
  br i1 %i.az, label %bb.k, label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i

bb.k:                                             ; preds = %bb.j
  %i.ba = and i64 %i.au, 8
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = and i64 %i.au, 3840
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = and i1 %i.bd, %i.bb
  %i.bf = and i64 %i.au, -4088
  %i.bg = select i1 %i.be, i64 288, i64 0
  %i.bh = or disjoint i64 %i.bf, %i.bg
  %i.bi = or disjoint i64 %i.bh, 5
  br label %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i

_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i: ; preds = %bb.k, %bb.j
  %.02.i.i.i.1.i = phi i64 [ %i.bi, %bb.k ], [ %i.au, %bb.j ]
  %i.bj = load i64, ptr %i.ax, align 8            ; 5 uses
  %i.bk = and i64 %i.bj, 7
  %i.bl = icmp samesign ugt i64 %i.bk, 4
  br i1 %i.bl, label %bb.l, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i

bb.l:                                             ; preds = %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i
  %i.bm = and i64 %i.bj, 8
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = and i64 %i.bj, 3840
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = and i1 %i.bp, %i.bn
  %i.br = and i64 %i.bj, -4088
  %i.bs = select i1 %i.bq, i64 288, i64 0
  %i.bt = or disjoint i64 %i.br, %i.bs
  %i.bu = or disjoint i64 %i.bt, 5
  br label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i: ; preds = %bb.l, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i
  %.02.i4.i.i.1.i = phi i64 [ %i.bu, %bb.l ], [ %i.bj, %_ZNK2v88internal8compiler18InstructionOperand21GetCanonicalizedValueEv.exit.i.i.1.i ]
  %i.bv = icmp eq i64 %.02.i.i.i.1.i, %.02.i4.i.i.1.i
  br i1 %i.bv, label %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i, label %bb.m

_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i: ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i, %.lr.ph.1.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.040.1.i, i64 8 ; 2 uses
  %.not.1.i = icmp eq ptr %i.bw, %i.as
  br i1 %.not.1.i, label %._crit_edge.loopexit.1.i, label %.lr.ph.1.i

._crit_edge.loopexit.1.i:                         ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.thread.1.i
  %.pre48.i = load ptr, ptr %i.ap, align 8
  br label %._crit_edge.1.i

._crit_edge.1.i:                                  ; preds = %._crit_edge.loopexit.1.i, %bb.h
  %i.bx = phi ptr [ %.pre48.i, %._crit_edge.loopexit.1.i ], [ %i.aq, %bb.h ]
  store ptr %i.bx, ptr %i.ar, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread

bb.m:                                             ; preds = %bb.i, %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.1.i
  %i.by = load <2 x ptr>, ptr %i.a, align 8
  %i.bz = shufflevector <2 x ptr> %i.by, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bz, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread

bb.n:                                             ; preds = %_ZNK2v88internal8compiler12MoveOperands11IsRedundantEv.exit.i, %bb.c
  %i.ca = load ptr, ptr %i.a, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void @_ZN2v88internal8compiler13MoveOptimizer13CompressMovesEPNS1_12ParallelMoveEPNS0_10ZoneVectorIPNS1_12MoveOperandsEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.ca, ptr noundef %i.cc)
  br label %_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_121FindFirstNonEmptySlotEPKNS1_11InstructionE.exit.thread: ; preds = %._crit_edge.1.i, %bb.g, %bb.n, %bb.m
  ret void
end_hunk_0
