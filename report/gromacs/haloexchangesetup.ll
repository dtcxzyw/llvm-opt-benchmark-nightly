inline.NumInlined: 706
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
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
  %4 = alloca %"class.gmx::BasicVector", align 8  ; 12 uses
  %5 = alloca %"class.gmx::BasicVector", align 8  ; 6 uses
  %6 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca [3 x i32], align 8                ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !9    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %_ZNSt6vectorI12tmpi_status_SaIS0_EE6resizeEm.exit

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
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
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !121

.thread:                                          ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.m, ptr %i.t, align 4, !tbaa !120
  %.pre = load i32, ptr %i.g, align 8, !tbaa !9   ; 2 uses
  %i.u = add nsw i32 %i.m, 1
  %i.v = mul nsw i32 %i.u, %.072118               ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = sext i32 %.pre to i64
  %i.x = icmp slt i64 %indvars.iv.next177, %i.w
  br i1 %i.x, label %.outer, label %._crit_edge.thread, !llvm.loop !121

._crit_edge.thread:                               ; preds = %.thread, %._crit_edge
  %i.y = phi i32 [ %i.r, %._crit_edge ], [ %i.v, %.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !123
  tail call void @_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef %i.aa) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !126 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %.lr.ph138, label %._crit_edge139

.lr.ph138:                                        ; preds = %._crit_edge.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 172
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 44
  br label %bb.d

._crit_edge139:                                   ; preds = %._crit_edge135, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !123
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 240               ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add nsw i32 %i.y, -1
  %i.bc = icmp eq i32 %i.bb, %i.ba
  br i1 %i.bc, label %bb.q, label %bb.p

bb.d:                                             ; preds = %.lr.ph138, %._crit_edge135
  %i.bd = phi i32 [ %i.ac, %.lr.ph138 ], [ %i.cv, %._crit_edge135 ]
  %storemerge136 = phi i32 [ 1, %.lr.ph138 ], [ %i.cx, %._crit_edge135 ] ; 2 uses
  %i.be = sext i32 %storemerge136 to i64
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.be ; 9 uses
  %i.bg = load i32, ptr %i.g, align 8, !tbaa !9   ; 4 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %iter.check, label %.lr.ph134.preheader

iter.check:                                       ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.bg to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.bg, 8
  br i1 %min.iters.check, label %.lr.ph124.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check197 = icmp ult i32 %i.bg, 32
  br i1 %min.iters.check197, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi198 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi213, %vector.body ]
  %vec.phi199 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi214.a, %vector.body ]
  %vec.phi200 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %predphi215, %vector.body ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %wide.load = load <8 x i32>, ptr %i.bj, align 4, !tbaa !120
  %wide.load201 = load <8 x i32>, ptr %i.bk, align 4, !tbaa !120
  %wide.load202 = load <8 x i32>, ptr %i.bl, align 4, !tbaa !120
  %wide.load203 = load <8 x i32>, ptr %i.bm, align 4, !tbaa !120
  %i.bn = sext <8 x i32> %wide.load to <8 x i64>
  %i.bo = sext <8 x i32> %wide.load201 to <8 x i64>
  %i.bp = sext <8 x i32> %wide.load202 to <8 x i64>
  %i.bq = sext <8 x i32> %wide.load203 to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.bn
  %wide.gep204 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.bo
  %wide.gep205 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.bp
  %wide.gep206 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.bq
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather207 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep204, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather208 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep205, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %wide.masked.gather209 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep206, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %i.br = icmp sgt <8 x i32> %wide.masked.gather, zeroinitializer
  %i.bs = icmp sgt <8 x i32> %wide.masked.gather207, zeroinitializer
  %i.bt = icmp sgt <8 x i32> %wide.masked.gather208, zeroinitializer
  %i.bu = icmp sgt <8 x i32> %wide.masked.gather209, zeroinitializer
  %i.bv = getelementptr [4 x i8], ptr %i.j, i64 %index ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = getelementptr i8, ptr %i.bv, i64 64
  %i.by = getelementptr i8, ptr %i.bv, i64 96
  %i.bz = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bv, <8 x i1> %i.br, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi = mul <8 x i32> %vec.phi, %i.bz        ; 2 uses
  %i.ca = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bw, <8 x i1> %i.bs, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi213 = mul <8 x i32> %vec.phi198, %i.ca  ; 2 uses
  %7 = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.bx, <8 x i1> %i.bt, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi214.a = mul <8 x i32> %vec.phi199, %7   ; 2 uses
  %8 = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.by, <8 x i1> %i.bu, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi215 = mul <8 x i32> %vec.phi200, %8     ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i32> %predphi213, %predphi
  %bin.rdx216 = mul <8 x i32> %predphi214.a, %bin.rdx
  %bin.rdx217 = mul <8 x i32> %predphi215, %bin.rdx216
  %i.cc = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %bin.rdx217) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph124.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.cc, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec218 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.cd = insertelement <8 x i32> <i32 poison, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index219 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next226, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi220 = phi <8 x i32> [ %i.cd, %vec.epilog.ph ], [ %predphi225, %vec.epilog.vector.body ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index219
  %wide.load221 = load <8 x i32>, ptr %i.ce, align 4, !tbaa !120
  %i.cf = sext <8 x i32> %wide.load221 to <8 x i64>
  %wide.gep222 = getelementptr inbounds nuw [4 x i8], ptr %i.bf, <8 x i64> %i.cf
  %wide.masked.gather223 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !120
  %i.cg = icmp sgt <8 x i32> %wide.masked.gather223, zeroinitializer
  %i.ch = getelementptr [4 x i8], ptr %i.j, i64 %index219
  %i.ci = call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 8 %i.ch, <8 x i1> %i.cg, <8 x i32> splat (i32 1)), !tbaa !120
  %predphi225 = mul <8 x i32> %vec.phi220, %i.ci  ; 2 uses
  %index.next226 = add nuw i64 %index219, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next226, %n.vec218
  br i1 %i.cj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !132

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ck = call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %predphi225) ; 2 uses
  %cmp.n227 = icmp eq i64 %n.vec218, %wide.trip.count
  br i1 %cmp.n227, label %.preheader, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv140.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec218, %vec.epilog.middle.block ]
  %.074122.ph = phi i32 [ 1, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph124

.preheader:                                       ; preds = %bb.f, %vec.epilog.middle.block, %middle.block
  %.175.lcssa = phi i32 [ %i.ck, %vec.epilog.middle.block ], [ %i.cc, %middle.block ], [ %.175, %bb.f ] ; 2 uses
  %i.cl = icmp sgt i32 %.175.lcssa, 0
  br i1 %i.cl, label %.lr.ph134.preheader, label %._crit_edge135

.lr.ph134.preheader:                              ; preds = %bb.d, %.preheader
  %.074.lcssa181 = phi i32 [ %.175.lcssa, %.preheader ], [ 1, %bb.d ]
  br label %.lr.ph134

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %bb.f
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %bb.f ], [ %indvars.iv140.ph, %.lr.ph124.preheader ] ; 3 uses
  %.074122 = phi i32 [ %.175, %bb.f ], [ %.074122.ph, %.lr.ph124.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv140
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !120
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !120
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph124
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv140
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !120
  %i.cu = mul nsw i32 %i.ct, %.074122
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph124, %bb.e
  %.175 = phi i32 [ %i.cu, %bb.e ], [ %.074122, %.lr.ph124 ] ; 2 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph124, !llvm.loop !133

._crit_edge135.loopexit:                          ; preds = %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit
  %.pre156 = load i32, ptr %i.a, align 4, !tbaa !120
  %.pre157 = load i32, ptr %i.ab, align 8, !tbaa !126
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge135.loopexit, %.preheader
  %i.cv = phi i32 [ %.pre157, %._crit_edge135.loopexit ], [ %i.bd, %.preheader ] ; 2 uses
  %i.cw = phi i32 [ %.pre156, %._crit_edge135.loopexit ], [ %storemerge136, %.preheader ]
  %i.cx = add nsw i32 %i.cw, 1                    ; 3 uses
  store i32 %i.cx, ptr %i.a, align 4, !tbaa !120
  %i.cy = icmp slt i32 %i.cx, %i.cv
  br i1 %i.cy, label %bb.d, label %._crit_edge139, !llvm.loop !134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit
  %.077133 = phi i32 [ %i.ha, %_ZNSt6vectorIN3gmx14DomainPairCommESaIS1_EE12emplace_backIJRKiS6_RiRNS0_11BasicVectorIiEER7PbcTypeRKbRA3_iP10tmpi_comm_EEERS1_DpOT_.exit ], [ 0, %.lr.ph134.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 0, ptr %4, align 8, !tbaa !120
  store i32 0, ptr %i.ag, align 4, !tbaa !120
  store i32 0, ptr %i.ah, align 8, !tbaa !120
  %i.cz = load i32, ptr %i.g, align 8, !tbaa !9   ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph130.preheader, label %._crit_edge131

.lr.ph130.preheader:                              ; preds = %.lr.ph134
  %i.db = zext nneg i32 %i.cz to i64              ; 3 uses
  %xtraiter = and i64 %i.db, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol

.lr.ph130.prol:                                   ; preds = %.lr.ph130.preheader
  %indvars.iv.next144.prol = add nsw i64 %i.db, -1 ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next144.prol
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !120
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !120
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %bb.g, label %.lr.ph130.prol.loopexit

bb.g:                                             ; preds = %.lr.ph130.prol
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next144.prol
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !120 ; 2 uses
  %i.dk = srem i32 %.077133, %i.dj
  %i.dl = add nuw nsw i32 %i.dk, 1
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.de
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !120
  %i.dn = sdiv i32 %.077133, %i.dj
  br label %.lr.ph130.prol.loopexit

.lr.ph130.prol.loopexit:                          ; preds = %.lr.ph130.prol, %bb.g, %.lr.ph130.preheader
  %indvars.iv143.unr = phi i64 [ %i.db, %.lr.ph130.preheader ], [ %indvars.iv.next144.prol, %bb.g ], [ %indvars.iv.next144.prol, %.lr.ph130.prol ]
  %.078127.unr = phi i32 [ %.077133, %.lr.ph130.preheader ], [ %i.dn, %bb.g ], [ %.077133, %.lr.ph130.prol ]
  %i.do = icmp eq i32 %i.cz, 1
  br i1 %i.do, label %._crit_edge131.loopexit, label %.lr.ph130

._crit_edge131.loopexit:                          ; preds = %bb.k, %.lr.ph130.prol.loopexit
  %.pre151 = load i32, ptr %4, align 8, !tbaa !120
  %.pre152 = load i32, ptr %i.ag, align 4, !tbaa !120
  %.pre153 = load i32, ptr %i.ah, align 8, !tbaa !120
  br label %._crit_edge131

._crit_edge131:                                   ; preds = %._crit_edge131.loopexit, %.lr.ph134
  %i.dp = phi i32 [ %.pre153, %._crit_edge131.loopexit ], [ 0, %.lr.ph134 ] ; 2 uses
  %i.dq = phi i32 [ %.pre152, %._crit_edge131.loopexit ], [ 0, %.lr.ph134 ] ; 2 uses
  %i.dr = phi i32 [ %.pre151, %._crit_edge131.loopexit ], [ 0, %.lr.ph134 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ds = load i32, ptr %i.ai, align 4, !tbaa !120 ; 2 uses
  %i.dt = sub i32 %i.ds, %i.dr
  %i.du = load i32, ptr %i.aj, align 8, !tbaa !120 ; 2 uses
  %i.dv = sub i32 %i.du, %i.dq
  %i.dw = load i32, ptr %i.ak, align 4, !tbaa !120 ; 2 uses
  %i.dx = sub i32 %i.dw, %i.dp
  %i.dy = load i32, ptr %i.al, align 4, !tbaa !120 ; 4 uses
  %i.dz = add nsw i32 %i.dt, %i.dy
  %i.ea = srem i32 %i.dz, %i.dy
  %i.eb = load i32, ptr %i.am, align 8, !tbaa !120 ; 4 uses
  %i.ec = add nsw i32 %i.dv, %i.eb
  %i.ed = srem i32 %i.ec, %i.eb
  %i.ee = load i32, ptr %i.an, align 4, !tbaa !120 ; 4 uses
  %i.ef = add nsw i32 %i.dx, %i.ee
  %i.eg = srem i32 %i.ef, %i.ee
  %.sroa.0.sroa.4.0.insert.ext.i = zext i32 %i.ed to i64
  %.sroa.0.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %i.ea to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %5, align 8
  store i32 %i.eg, ptr %.sroa.217.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.eh = add nsw i32 %i.dr, %i.ds
  %i.ei = add nsw i32 %i.dq, %i.du
  %i.ej = add nsw i32 %i.dp, %i.dw
  %i.ek = add nsw i32 %i.eh, %i.dy
  %i.el = srem i32 %i.ek, %i.dy
  %i.em = add nsw i32 %i.ei, %i.eb
  %i.en = srem i32 %i.em, %i.eb
  %i.eo = add nsw i32 %i.ej, %i.ee
  %i.ep = srem i32 %i.eo, %i.ee
  %.sroa.0.sroa.4.0.insert.ext.i97 = zext i32 %i.en to i64
  %.sroa.0.sroa.4.0.insert.shift.i98 = shl nuw i64 %.sroa.0.sroa.4.0.insert.ext.i97, 32
  %.sroa.0.sroa.0.0.insert.ext.i99 = zext i32 %i.el to i64
  %.sroa.0.sroa.0.0.insert.insert.i100 = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift.i98, %.sroa.0.sroa.0.0.insert.ext.i99
  store i64 %.sroa.0.sroa.0.0.insert.insert.i100, ptr %6, align 8
  store i32 %i.ep, ptr %.sroa.29.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.eq = call noundef i32 @_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 4 dereferenceable(12) %5)
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.er = call noundef i32 @_Z17ddRankFromDDCoordRK12gmx_domdec_tRKN3gmx11BasicVectorIiEE(ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef nonnull align 4 dereferenceable(12) %6)
  store i32 %i.er, ptr %i.c, align 4, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.es = load i32, ptr %i.ah, align 8, !tbaa !120 ; 3 uses
  %i.et = load <2 x i32>, ptr %i.ai, align 4, !tbaa !120
  %i.eu = load <2 x i32>, ptr %4, align 8, !tbaa !120 ; 3 uses
  %i.ev = sub nsw <2 x i32> %i.et, %i.eu          ; 2 uses
  %i.ew = load <2 x i32>, ptr %5, align 8         ; 2 uses
  %i.ex = icmp eq <2 x i32> %i.ew, %i.ev          ; 2 uses
  %i.ey = extractelement <2 x i1> %i.ex, i64 0
  %i.ez = extractelement <2 x i1> %i.ex, i64 1
  %or.cond = select i1 %i.ey, i1 %i.ez, i1 false
  %.pre154 = load i32, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !120 ; 2 uses
  br i1 %or.cond, label %bb.h, label %._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge

._crit_edge131._ZNK3gmx11BasicVectorIiEneERKS1_.exit_crit_edge: ; preds = %._crit_edge131
  %.pre155 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !120
  %.pre158 = sub nsw i32 %.pre155, %i.es
  br label %_ZNK3gmx11BasicVectorIiEneERKS1_.exit
end_hunk_0
