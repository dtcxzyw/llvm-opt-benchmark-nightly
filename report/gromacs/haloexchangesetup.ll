Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/haloexchangesetup?download=true
inline.NumInlined: 706
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.gmx::BasicVector" = type { [3 x i32] }
%struct.tmpi_status_ = type { i32, i32, i32, i64, i32 }
%"struct.std::array.206" = type { [3 x %"class.gmx::BasicVector.6"] }
%"class.gmx::BasicVector.6" = type { [3 x float] }
%"class.std::vector.357" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"struct.gmx::GridDimensions" = type { %"class.gmx::BasicVector.6", %"class.gmx::BasicVector.6", %"class.gmx::BasicVector.6", float, float, [2 x float], [2 x float], [2 x i32] }
%"class.gmx::ArrayRef.361" = type { %"struct.gmx::ArrayRefIter.362", %"struct.gmx::ArrayRefIter.362" }
%"struct.gmx::ArrayRefIter.362" = type { ptr }
%"class.gmx::ArrayRef.374" = type { %"struct.gmx::ArrayRefIter.375", %"struct.gmx::ArrayRefIter.375" }
%"struct.gmx::ArrayRefIter.375" = type { ptr }

$_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE17_M_realloc_insertIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorI12tmpi_status_SaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

@debug = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"zone %d domainShift %d %d %d pbc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"int(domainPairComm_.size()) == totNumDomainsInZones - 1\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"We should have as many comm entries as non-local domains\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx12HaloExchange26checkDomainRangeAllocationERK12gmx_domdec_tRKNS_11BasicVectorIiEEENK3$_0clEv" = private unnamed_addr constant [117 x i8] c"auto gmx::HaloExchange::checkDomainRangeAllocation(const gmx_domdec_t &, const IVec &)::(lambda)::operator()() const\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/domdec/haloexchangesetup.cpp\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Setting up DD communication, range\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.9 = private unnamed_addr constant [66 x i8] c"Finished setting up DD communication, domain atom receive counts:\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"zone %d:\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"!isDlbOn(comm.dlbState)\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"DLB is not supported here yet\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx12HaloExchange5setupEP12gmx_domdec_tP7t_stateRK11gmx_ddbox_tP10t_forcerecbENK3$_0clEv" = private unnamed_addr constant [134 x i8] c"auto gmx::HaloExchange::setup(gmx_domdec_t *, t_state *, const gmx_ddbox_t &, t_forcerec *, const bool)::(lambda)::operator()() const\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"rangeType == Type::Home || rangeType > lastTypeSet_\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"Can only set either home or a larger type than the last one\00", align 1
@__PRETTY_FUNCTION__._ZZN12DDAtomRanges6setEndENS_4TypeEiENKUlvE_clEv = private unnamed_addr constant [67 x i8] c"auto DDAtomRanges::setEnd(Type, int)::(lambda)::operator()() const\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/domdec/domdec_internal.h\00", align 1
@TMPI_BYTE = external local_unnamed_addr constant ptr, align 8

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx12HaloExchange26checkDomainRangeAllocationERK12gmx_domdec_tRKNS_11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"class.gmx::BasicVector", align 8  ; 14 uses
  %5 = alloca %"class.gmx::BasicVector", align 8  ; 6 uses
  %6 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca [3 x i32], align 8                ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !119  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph
  %.ph = phi i32 [ %.pre, %.thread ], [ %i.h, %.lr.ph ]
  %indvars.iv.ph = phi i64 [ %indvars.iv.next177, %.thread ], [ 0, %.lr.ph ]
  %.071119.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph ]
  %.072118.ph = phi i32 [ %i.v, %.thread ], [ 1, %.lr.ph ]
  %i.k = sext i32 %.ph to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c
  br i1 %.071119.ph, label %._crit_edge.thread, label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit

bb.b:                                             ; preds = %.outer, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.outer ] ; 5 uses
  %.072118 = phi i32 [ %i.r, %bb.c ], [ %.072118.ph, %.outer ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !120  ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !120  ; 2 uses
  %i.p = icmp sgt i32 %i.m, %i.o
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.o, 1
  %i.r = mul nsw i32 %i.q, %.072118               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !252

.thread:                                          ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.m, ptr %i.t, align 4, !tbaa !120
  %.pre = load i32, ptr %i.g, align 8, !tbaa !119 ; 2 uses
  %i.u = add nsw i32 %i.m, 1
  %i.v = mul nsw i32 %i.u, %.072118               ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = sext i32 %.pre to i64
  %i.x = icmp slt i64 %indvars.iv.next177, %i.w
  br i1 %i.x, label %.outer, label %._crit_edge.thread, !llvm.loop !252

._crit_edge.thread:                               ; preds = %.thread, %._crit_edge
  %i.y = phi i32 [ %i.r, %._crit_edge ], [ %i.v, %.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !124
  tail call void @_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef %i.aa) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !125 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph138, label %._crit_edge139

.lr.ph138:                                        ; preds = %._crit_edge.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 164
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 172
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 44
  br label %bb.d

._crit_edge139:                                   ; preds = %._crit_edge135, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !126
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !124
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 240               ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add nsw i32 %i.y, -1
  %i.az = icmp eq i32 %i.ay, %i.ax
  br i1 %i.az, label %bb.t, label %bb.s

bb.d:                                             ; preds = %.lr.ph138, %._crit_edge135
  %i.ba = phi i32 [ %i.ac, %.lr.ph138 ], [ %i.cu, %._crit_edge135 ]
  %storemerge136 = phi i32 [ 1, %.lr.ph138 ], [ %i.cw, %._crit_edge135 ] ; 2 uses
  %i.bb = sext i32 %storemerge136 to i64
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.bb ; 11 uses
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !119 ; 4 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %iter.check, label %.lr.ph134.preheader

iter.check:                                       ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.bd to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.bd, 8
  br i1 %min.iters.check, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check197 = icmp ult i32 %i.bd, 32
  br i1 %min.iters.check197, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi198 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi213, %vector.body ]
  %vec.phi199 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi214, %vector.body ]
  %vec.phi200 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi215, %vector.body ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %wide.load = load <8 x i32>, ptr %i.bg, align 4, !tbaa !120
  %wide.load201 = load <8 x i32>, ptr %i.bh, align 4, !tbaa !120
  %wide.load202 = load <8 x i32>, ptr %i.bi, align 4, !tbaa !120
  %wide.load203 = load <8 x i32>, ptr %i.bj, align 4, !tbaa !120
  %i.bk = sext <8 x i32> %wide.load to <8 x i64>
  %i.bl = sext <8 x i32> %wide.load201 to <8 x i64>
  %i.bm = sext <8 x i32> %wide.load202 to <8 x i64>
  %i.bn = sext <8 x i32> %wide.load203 to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bc, <8 x i64> %i.bk
  %wide.gep204 = getelementptr inbounds nuw [4 x i8], ptr %i.bc, <8 x i64> %i.bl
  %wide.gep205 = getelementptr inbounds nuw [4 x i8], ptr %i.bc, <8 x i64> %i.bm
  %wide.gep206 = getelementptr inbounds nuw [4 x i8], ptr %i.bc, <8 x i64> %i.bn
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather207 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep204, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather208 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep205, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather209 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep206, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %i.bo = icmp sgt <8 x i32> %wide.masked.gather, zeroinitializer
  %i.bp = icmp sgt <8 x i32> %wide.masked.gather207, zeroinitializer
  %i.bq = icmp sgt <8 x i32> %wide.masked.gather208, zeroinitializer
  %i.br = icmp sgt <8 x i32> %wide.masked.gather209, zeroinitializer
  %i.bs = getelementptr [4 x i8], ptr %i.j, i64 %index ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 32
  %i.bu = getelementptr i8, ptr %i.bs, i64 64
  %i.bv = getelementptr i8, ptr %i.bs, i64 96
  %i.bw = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bs, <8 x i1> %i.bo, <8 x i32> splat (i32 1)), !tbaa !120
  %i.bx = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bt, <8 x i1> %i.bp, <8 x i32> splat (i32 1)), !tbaa !120
  %i.by = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bu, <8 x i1> %i.bq, <8 x i32> splat (i32 1)), !tbaa !120
  %i.bz = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bv, <8 x i1> %i.br, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi = mul <8 x i32> %vec.phi, %i.bw        ; 2 uses
  %predphi213 = mul <8 x i32> %vec.phi198, %i.bx  ; 2 uses
  %predphi214 = mul <8 x i32> %vec.phi199, %i.by  ; 2 uses
  %predphi215 = mul <8 x i32> %vec.phi200, %i.bz  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !253

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i32> %predphi213, %predphi
  %bin.rdx216 = mul <8 x i32> %predphi214, %bin.rdx
  %bin.rdx217 = mul <8 x i32> %predphi215, %bin.rdx216
  %i.cb = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %bin.rdx217) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.cb, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec218 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.cc = insertelement <8 x i32> <i32 poison, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index219 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next226, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi220 = phi <8 x i32> [ %i.cc, %vec.epilog.ph ], [ %predphi225, %vec.epilog.vector.body ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index219
  %wide.load221 = load <8 x i32>, ptr %i.cd, align 4, !tbaa !120
  %i.ce = sext <8 x i32> %wide.load221 to <8 x i64>
  %wide.gep222 = getelementptr inbounds nuw [4 x i8], ptr %i.bc, <8 x i64> %i.ce
  %wide.masked.gather223 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %i.cf = icmp sgt <8 x i32> %wide.masked.gather223, zeroinitializer
  %i.cg = getelementptr [4 x i8], ptr %i.j, i64 %index219
  %i.ch = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.cg, <8 x i1> %i.cf, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi225 = mul <8 x i32> %vec.phi220, %i.ch  ; 2 uses
  %index.next226 = add nuw i64 %index219, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next226, %n.vec218
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !254

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cj = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %predphi225) ; 2 uses
  %cmp.n227 = icmp eq i64 %n.vec218, %wide.trip.count
  br i1 %cmp.n227, label %.preheader, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv140.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec218, %vec.epilog.middle.block ]
  %.074122.ph = phi i32 [ 1, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  br label %.lr.ph124

.preheader:                                       ; preds = %bb.f, %vec.epilog.middle.block, %middle.block
  %.175.lcssa = phi i32 [ %i.cj, %vec.epilog.middle.block ], [ %i.cb, %middle.block ], [ %.175, %bb.f ] ; 2 uses
  %i.ck = icmp sgt i32 %.175.lcssa, 0
  br i1 %i.ck, label %.lr.ph134.preheader, label %._crit_edge135

.lr.ph134.preheader:                              ; preds = %bb.d, %.preheader
  %.074.lcssa181 = phi i32 [ %.175.lcssa, %.preheader ], [ 1, %bb.d ]
  br label %.lr.ph134

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %bb.f
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %bb.f ], [ %indvars.iv140.ph, %.lr.ph124.preheader ] ; 3 uses
  %.074122 = phi i32 [ %.175, %bb.f ], [ %.074122.ph, %.lr.ph124.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv140
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !120
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !120
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph124
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv140
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !120
  %i.ct = mul nsw i32 %i.cs, %.074122
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph124, %bb.e
  %.175 = phi i32 [ %i.ct, %bb.e ], [ %.074122, %.lr.ph124 ] ; 2 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph124, !llvm.loop !255

._crit_edge135.loopexit:                          ; preds = %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit
  %.pre156 = load i32, ptr %i.a, align 4, !tbaa !120
  %.pre157 = load i32, ptr %i.ab, align 8, !tbaa !125
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge135.loopexit, %.preheader
  %i.cu = phi i32 [ %.pre157, %._crit_edge135.loopexit ], [ %i.ba, %.preheader ] ; 2 uses
  %i.cv = phi i32 [ %.pre156, %._crit_edge135.loopexit ], [ %storemerge136, %.preheader ]
  %i.cw = add nsw i32 %i.cv, 1                    ; 3 uses
  store i32 %i.cw, ptr %i.a, align 4, !tbaa !120
  %i.cx = icmp slt i32 %i.cw, %i.cu
  br i1 %i.cx, label %bb.d, label %._crit_edge139, !llvm.loop !256

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit
  %.077133 = phi i32 [ %i.hb, %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit ], [ 0, %.lr.ph134.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 0, ptr %4, align 8, !tbaa !120
  store i32 0, ptr %i.ag, align 4, !tbaa !120
  store i32 0, ptr %i.ah, align 8, !tbaa !120
  %i.cy = load i32, ptr %i.g, align 8, !tbaa !119 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph130.preheader, label %._crit_edge131

.lr.ph130.preheader:                              ; preds = %.lr.ph134
  %i.da = zext nneg i32 %i.cy to i64              ; 3 uses
  %xtraiter = and i64 %i.da, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol

.lr.ph130.prol:                                   ; preds = %.lr.ph130.preheader, %bb.h
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %bb.h ], [ %i.da, %.lr.ph130.preheader ]
  %.078127.prol = phi i32 [ %.179.prol, %bb.h ], [ %.077133, %.lr.ph130.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.h ], [ 0, %.lr.ph130.preheader ]
  %indvars.iv.next144.prol = add nsw i64 %indvars.iv143.prol, -1 ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.prol
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !120
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !120
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph130.prol
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.prol
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !120 ; 2 uses
  %i.dj = srem i32 %.078127.prol, %i.di
  %i.dk = add nsw i32 %i.dj, 1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.dd
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !120
  %i.dm = sdiv i32 %.078127.prol, %i.di
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph130.prol
  %.179.prol = phi i32 [ %i.dm, %bb.g ], [ %.078127.prol, %.lr.ph130.prol ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol, !llvm.loop !257

.lr.ph130.prol.loopexit:                          ; preds = %bb.h, %.lr.ph130.preheader
  %indvars.iv143.unr = phi i64 [ %i.da, %.lr.ph130.preheader ], [ %indvars.iv.next144.prol, %bb.h ]
  %.078127.unr = phi i32 [ %.077133, %.lr.ph130.preheader ], [ %.179.prol, %bb.h ]
  %i.dn = icmp ult i32 %i.cy, 4
  br i1 %i.dn, label %._crit_edge131.loopexit, label %.lr.ph130

._crit_edge131.loopexit:                          ; preds = %bb.n, %.lr.ph130.prol.loopexit
  %10 = load <2 x i32>, ptr %4, align 8, !tbaa !120
  %.pre153 = load i32, ptr %i.ah, align 8, !tbaa !120
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %._crit_edge131.loopexit, %.lr.ph134
  %11 = phi i32 [ %.pre153, %._crit_edge131.loopexit ], [ 0, %.lr.ph134 ] ; 2 uses
  %12 = phi <2 x i32> [ %10, %._crit_edge131.loopexit ], [ zeroinitializer, %.lr.ph134 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %13 = load <1 x i32>, ptr %i.ai, align 4
  %14 = load <1 x i32>, ptr %7, align 8
  %15 = load i32, ptr %i.aj, align 4, !tbaa !120  ; 2 uses
  %16 = load <1 x i32>, ptr %i.ak, align 4
  %17 = load <1 x i32>, ptr %8, align 8
  %18 = load <1 x i32>, ptr %9, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %19 = sub i32 %15, %11
  %20 = add nsw i32 %11, %15
  %21 = insertelement <2 x i32> poison, i32 %19, i64 0
  %22 = insertelement <2 x i32> %21, i32 %20, i64 1
  %23 = shufflevector <1 x i32> %18, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %24 = add nsw <2 x i32> %22, %23
  %25 = srem <2 x i32> %24, %23                   ; 2 uses
  %i.do = extractelement <2 x i32> %25, i64 0
  store i32 %i.do, ptr %.sroa.217.0..sroa_idx, align 8
  %26 = shufflevector <1 x i32> %13, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %27 = shufflevector <2 x i32> %12, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %28 = sub <2 x i32> %26, %27
  %29 = add nsw <2 x i32> %26, %27
  %30 = shufflevector <2 x i32> %29, <2 x i32> %28, <2 x i32> <i32 0, i32 3>
  %31 = shufflevector <1 x i32> %14, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %32 = shufflevector <2 x i32> %12, <2 x i32> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %33 = sub <2 x i32> %31, %32
  %34 = add nsw <2 x i32> %31, %32
  %35 = shufflevector <2 x i32> %34, <2 x i32> %33, <2 x i32> <i32 0, i32 3>
  %36 = shufflevector <1 x i32> %16, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = add nsw <2 x i32> %30, %36
  %37 = srem <2 x i32> %i.dp, %36
  %38 = shufflevector <1 x i32> %17, <1 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dq = add nsw <2 x i32> %35, %38
  %i.dr = srem <2 x i32> %i.dq, %38
  %39 = zext <2 x i32> %i.dr to <2 x i64>
  %40 = shl nuw <2 x i64> %39, splat (i64 32)
  %41 = zext <2 x i32> %37 to <2 x i64>
  %42 = or disjoint <2 x i64> %40, %41            ; 2 uses
  %43 = extractelement <2 x i64> %42, i64 1
  store i64 %43, ptr %5, align 8
  %44 = extractelement <2 x i64> %42, i64 0
  store i64 %44, ptr %6, align 8
  %i.ds = extractelement <2 x i32> %25, i64 1
  store i32 %i.ds, ptr %.sroa.29.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.dt = call noundef i32 @_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 4 dereferenceable(12) %5)
  store i32 %i.dt, ptr %i.b, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.du = call noundef i32 @_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 4 dereferenceable(12) %6)
  store i32 %i.du, ptr %i.c, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.dv = load i32, ptr %i.ah, align 8, !tbaa !120 ; 3 uses
  %i.dw = load <2 x i32>, ptr %i.ai, align 4, !tbaa !120
  %i.dx = load <2 x i32>, ptr %4, align 8, !tbaa !120 ; 3 uses
  %i.dy = sub nsw <2 x i32> %i.dw, %i.dx
  %i.dz = load <2 x i32>, ptr %5, align 8
  %i.ea = icmp eq <2 x i32> %i.dz, %i.dy          ; 3 uses
  %i.eb = extractelement <2 x i1> %i.ea, i64 0
  %i.ec = extractelement <2 x i1> %i.ea, i64 1
  %or.cond = select i1 %i.eb, i1 %i.ec, i1 false
  %.pre154 = load i32, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !120 ; 2 uses
  br i1 %or.cond, label %bb.i, label %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge

._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge: ; preds = %._crit_edge131
  %.pre155 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !120
  %.pre158 = sub nsw i32 %.pre155, %i.dv
  br label %_ZNK3gmx11BasicVectorIiEneERKS1_.exit

bb.i:                                             ; preds = %._crit_edge131
  %i.ed = load i32, ptr %i.aj, align 4, !tbaa !120
  %i.ee = sub nsw i32 %i.ed, %i.dv                ; 2 uses
  %i.ef = icmp ne i32 %.pre154, %i.ee
  %i.eg = zext i1 %i.ef to i8
  br label %_ZNK3gmx11BasicVectorIiEneERKS1_.exit

_ZNK3gmx11BasicVectorIiEneERKS1_.exit:            ; preds = %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge, %bb.i
  %.pre-phi = phi i32 [ %.pre158, %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge ], [ %i.ee, %bb.i ]
  %i.eh = phi i8 [ 1, %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge ], [ %i.eg, %bb.i ] ; 2 uses
  store i8 %i.eh, ptr %i.d, align 1, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.ei = xor <2 x i1> %i.ea, splat (i1 true)
  %i.ej = zext <2 x i1> %i.ei to <2 x i32>
  store <2 x i32> %i.ej, ptr %i.e, align 8, !tbaa !120
  %.not82.2 = icmp ne i32 %.pre154, %.pre-phi
  %i.ek = zext i1 %.not82.2 to i32
  store i32 %i.ek, ptr %i.ap, align 8, !tbaa !120
  %i.el = load ptr, ptr @debug, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %i.el, null
  br i1 %.not, label %bb.p, label %bb.o

.lr.ph130:                                        ; preds = %.lr.ph130.prol.loopexit, %bb.n
  %indvars.iv143 = phi i64 [ %indvars.iv.next144.3, %bb.n ], [ %indvars.iv143.unr, %.lr.ph130.prol.loopexit ] ; 5 uses
  %.078127 = phi i32 [ %.179.3, %bb.n ], [ %.078127.unr, %.lr.ph130.prol.loopexit ] ; 3 uses
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144
  %i.en = load i32, ptr %i.em, align 4, !tbaa !120
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !120
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %bb.j, label %.lr.ph130.1

bb.j:                                             ; preds = %.lr.ph130
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144
  %i.et = load i32, ptr %i.es, align 4, !tbaa !120 ; 2 uses
  %i.eu = srem i32 %.078127, %i.et
  %i.ev = add nsw i32 %i.eu, 1
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.eo
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !120
  %i.ex = sdiv i32 %.078127, %i.et
  br label %.lr.ph130.1

.lr.ph130.1:                                      ; preds = %.lr.ph130, %bb.j
  %.179 = phi i32 [ %i.ex, %bb.j ], [ %.078127, %.lr.ph130 ] ; 3 uses
  %indvars.iv.next144.1 = add nsw i64 %indvars.iv143, -2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.1
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !120
  %i.fa = sext i32 %i.ez to i64                   ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !120
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %bb.k, label %.lr.ph130.2

bb.k:                                             ; preds = %.lr.ph130.1
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.1
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !120 ; 2 uses
  %i.fg = srem i32 %.179, %i.ff
  %i.fh = add nsw i32 %i.fg, 1
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fa
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !120
  %i.fj = sdiv i32 %.179, %i.ff
  br label %.lr.ph130.2

.lr.ph130.2:                                      ; preds = %bb.k, %.lr.ph130.1
  %.179.1 = phi i32 [ %i.fj, %bb.k ], [ %.179, %.lr.ph130.1 ] ; 3 uses
  %indvars.iv.next144.2 = add nsw i64 %indvars.iv143, -3 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.2
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !120
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !120
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %bb.l, label %.lr.ph130.3

bb.l:                                             ; preds = %.lr.ph130.2
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.2
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !120 ; 2 uses
  %i.fs = srem i32 %.179.1, %i.fr
  %i.ft = add nsw i32 %i.fs, 1
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fm
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !120
  %i.fv = sdiv i32 %.179.1, %i.fr
  br label %.lr.ph130.3

.lr.ph130.3:                                      ; preds = %bb.l, %.lr.ph130.2
  %.179.2 = phi i32 [ %i.fv, %bb.l ], [ %.179.1, %.lr.ph130.2 ] ; 3 uses
  %indvars.iv.next144.3 = add nsw i64 %indvars.iv143, -4 ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.3
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !120
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !120
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph130.3
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.3
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !120 ; 2 uses
  %i.ge = srem i32 %.179.2, %i.gd
  %i.gf = add nsw i32 %i.ge, 1
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fy
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !120
  %i.gh = sdiv i32 %.179.2, %i.gd
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph130.3
  %.179.3 = phi i32 [ %i.gh, %bb.m ], [ %.179.2, %.lr.ph130.3 ]
  %i.gi = icmp sgt i64 %indvars.iv143, 4
  br i1 %i.gi, label %.lr.ph130, label %._crit_edge131.loopexit, !llvm.loop !258

bb.o:                                             ; preds = %_ZNK3gmx11BasicVectorIiEneERKS1_.exit
  %i.gj = load i32, ptr %i.a, align 4, !tbaa !120
  %i.gk = zext nneg i8 %i.eh to i32
  %i.gl = extractelement <2 x i32> %i.dx, i64 0
  %i.gm = extractelement <2 x i32> %i.dx, i64 1
  %i.gn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.el, ptr noundef nonnull @.str, i32 noundef %i.gj, i32 noundef %i.gl, i32 noundef %i.gm, i32 noundef %i.dv, i32 noundef %i.gk) #13 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK3gmx11BasicVectorIiEneERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.go = load ptr, ptr %i.al, align 8, !tbaa !260 ; 2 uses
  store ptr %i.go, ptr %i.f, align 8, !tbaa !134
  %i.gp = load ptr, ptr %i.am, align 8, !tbaa !126 ; 3 uses
  %i.gq = load ptr, ptr %i.an, align 8, !tbaa !135
  %.not.i109 = icmp eq ptr %i.gp, %i.gq
  br i1 %.not.i109, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.gr = load i32, ptr %i.b, align 4, !tbaa !120
  %i.gs = load i32, ptr %i.c, align 4, !tbaa !120
  %i.gt = load i32, ptr %i.a, align 4, !tbaa !120
  %i.gu = load i32, ptr %0, align 8, !tbaa !137
  %i.gv = load i8, ptr %i.d, align 1, !tbaa !131, !range !138, !noundef !139
  %i.gw = trunc nuw i8 %i.gv to i1
  %i.gx = load <2 x i32>, ptr %i.e, align 8, !tbaa !120
  store <2 x i32> %i.gx, ptr %3, align 8, !tbaa !120
  %i.gy = load i32, ptr %i.ap, align 8, !tbaa !120
  store i32 %i.gy, ptr %i.ao, align 8, !tbaa !120
  call void @_ZN3gmx14DomainPairCommC1EiiiRKNS_11BasicVectorIiEE7PbcTypebS2_P10tmpi_comm_(ptr noundef nonnull align 8 dereferenceable(240) %i.gp, i32 noundef %i.gr, i32 noundef %i.gs, i32 noundef %i.gt, ptr noundef nonnull align 4 dereferenceable(12) %4, i32 noundef %i.gu, i1 noundef zeroext %i.gw, ptr noundef nonnull byval(%"class.gmx::BasicVector") align 8 %3, ptr noundef %i.go)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gz = load ptr, ptr %i.am, align 8, !tbaa !126
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 240
  store ptr %i.ha, ptr %i.am, align 8, !tbaa !126
  br label %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit

bb.r:                                             ; preds = %bb.p
  call void @_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE17_M_realloc_insertIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.gp, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit

_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.hb = add nuw nsw i32 %.077133, 1             ; 2 uses
  %exitcond150.not = icmp eq i32 %i.hb, %.074.lcssa181
  br i1 %exitcond150.not, label %._crit_edge135.loopexit, label %.lr.ph134, !llvm.loop !259

bb.s:                                             ; preds = %._crit_edge139
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12HaloExchange26checkDomainRangeAllocationERK12gmx_domdec_tRKNS_11BasicVectorIiEEENK3$_0clEv", ptr noundef nonnull @.str.4, i32 noundef 328) #20
  unreachable

bb.t:                                             ; preds = %._crit_edge139
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %sext = shl i64 %i.aw, 32
  %i.hd = ashr exact i64 %sext, 32                ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !142 ; 2 uses
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !143 ; 2 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = ashr exact i64 %i.hj, 5                 ; 3 uses
  %i.hl = icmp ult i64 %i.hk, %i.hd
  br i1 %i.hl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hm = sub nuw nsw i64 %i.hd, %i.hk
  call void @_ZNSt6vectorI12tmpi_status_SaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 noundef %i.hm)
end_hunk_0
