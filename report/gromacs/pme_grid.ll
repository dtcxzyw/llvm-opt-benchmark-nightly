Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_grid?download=true
inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%struct.tmpi_status_ = type { i32, i32, i32, i64, i32 }
%"class.gmx::ArrayRef" = type { %"struct.gmx::ArrayRefIter", %"struct.gmx::ArrayRefIter" }
%"struct.gmx::ArrayRefIter" = type { ptr }
%"class.gmx::ArrayRef.88" = type { %"struct.gmx::ArrayRefIter.89", %"struct.gmx::ArrayRefIter.89" }
%"struct.gmx::ArrayRefIter.89" = type { ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.96" }
%"class.std::unique_ptr.96" = type { %"struct.std::__uniq_ptr_data.97" }
%"struct.std::__uniq_ptr_data.97" = type { %"class.std::__uniq_ptr_impl.98" }
%"class.std::__uniq_ptr_impl.98" = type { %"class.std::tuple.99" }
%"class.std::tuple.99" = type { %"struct.std::_Tuple_impl.100" }
%"struct.std::_Tuple_impl.100" = type { %"struct.std::_Head_base.103" }
%"struct.std::_Head_base.103" = type { ptr }
%"class.std::allocator.93" = type { i8 }
%"class.std::tuple.112" = type { %"struct.std::_Tuple_impl.113" }
%"struct.std::_Tuple_impl.113" = type { %"struct.std::_Tuple_impl.114", %"struct.std::_Head_base.116" }
%"struct.std::_Tuple_impl.114" = type { %"struct.std::_Head_base.115" }
%"struct.std::_Head_base.115" = type { %"class.std::vector.33" }
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Head_base.116" = type { %"class.std::vector.28" }
%"class.std::vector.28" = type { %"struct.std::_Vector_base.29" }
%"struct.std::_Vector_base.29" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm = comdat any

$_ZNSt6vectorI9pmegrid_tSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

@debug = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [64 x i8] c"PME send rank %d %d -> %d grid start %d Communicating %d to %d\0A\00", align 1
@TMPI_FLOAT = external local_unnamed_addr constant ptr, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"PME recv rank %d %d <- %d grid start %d Communicating %d to %d\0A\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"pmegrid thread local division: %d x %d x %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"pmegrid %d %d %d max thread pmegrid %d %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"pmegrid thread grid communication range in %c: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/ewald/pme_grid.cpp\00", align 1
@.str.7 = private unnamed_addr constant [107 x i8] c"Too many threads for PME (%d) compared to the number of grid lines, reduce the number of threads doing PME\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"!gridsStorage.empty()\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Need storage\00", align 1
@"__PRETTY_FUNCTION__._ZZ13pmegrids_initP10pmegrids_tiiiiibiiiN3gmx8ArrayRefISt6vectorIfNS1_9AllocatorIfNS1_23AlignedAllocationPolicyEEEEEEENK3$_0clEv" = private unnamed_addr constant [149 x i8] c"auto pmegrids_init(pmegrids_t *, int, int, int, int, int, gmx_bool, int, int, int, gmx::ArrayRef<AlignedVector<real>>)::(lambda)::operator()() const\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"pmegrid_init call with an unaligned z size\00", align 1
@"__PRETTY_FUNCTION__._ZZL12pmegrid_initP9pmegrid_tiiiiiiiiibiPSt6vectorIfN3gmx9AllocatorIfNS2_23AlignedAllocationPolicyEEEEENK3$_0clEv" = private unnamed_addr constant [144 x i8] c"auto pmegrid_init(pmegrid_t *, int, int, int, int, int, int, int, int, int, gmx_bool, int, AlignedVector<real> *)::(lambda)::operator()() const\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str.16 = private unnamed_addr constant [80 x i8] c"reinterpret_cast<std::uintptr_t>(gridStorage->data()) % (4 * sizeof(real)) == 0\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Start of memoryView should be SIMD4 aligned\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"gridStoragePtr->size() >= gridSize\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"We should have sufficient storage\00", align 1
@__PRETTY_FUNCTION__._ZZN9pmegrid_t14setGridStorageEPSt6vectorIfN3gmx9AllocatorIfNS1_23AlignedAllocationPolicyEEEEmENKUlvE_clEv = private unnamed_addr constant [92 x i8] c"auto pmegrid_t::setGridStorage(AlignedVector<real> *, size_t)::(lambda)::operator()() const\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/ewald/pme_internal.h\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"GMX_PME_THREAD_DIVISION\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"%20d %20d %20d\00", align 1
@.str.23 = private unnamed_addr constant [88 x i8] c"PME grid thread division (%d x %d x %d) does not match the total number of threads (%d)\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"gridsStorage.ssize() == 1 + nthread\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Expect 1 + #thread grids in the storage\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z16gmx_sum_qgrid_ddP9gmx_pme_tN3gmx8ArrayRefIfEEi(ptr nofree noundef readonly captures(none) %0, ptr %1, ptr nofree readnone captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %4 = alloca %struct.tmpi_status_, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !196  ; 2 uses
  %.not292 = icmp eq ptr %i.f, %i.g
  br i1 %.not292, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = icmp eq i32 %3, 0                        ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 796 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.q = load ptr, ptr @TMPI_FLOAT, align 8       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %. = select i1 %i.h, i64 4, i64 16
  %.356 = select i1 %i.h, i64 8, i64 20
  %.357 = select i1 %i.h, i64 16, i64 4
  %.358 = select i1 %i.h, i64 20, i64 8
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge274, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !195
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !196  ; 2 uses
  %.not293 = icmp eq ptr %i.u, %i.v
  br i1 %.not293, label %._crit_edge291, label %.lr.ph290

.lr.ph290:                                        ; preds = %.preheader
  %i.w = icmp eq i32 %3, 0                        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.ad = load ptr, ptr @TMPI_FLOAT, align 8      ; 2 uses
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %._crit_edge274
  %i.ae = phi ptr [ %i.g, %.lr.ph ], [ %i.kj, %._crit_edge274 ]
  %.0194284 = phi i64 [ 0, %.lr.ph ], [ %i.kh, %._crit_edge274 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [28 x i8], ptr %i.ae, i64 %.0194284 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %.359 = select i1 %i.h, ptr %i.af, ptr %i.ag
  %.360 = select i1 %i.h, ptr %i.ag, ptr %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.356
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.357
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %.358
  %.0196 = load i32, ptr %.360, align 4, !tbaa !10 ; 2 uses
  %.0197 = load i32, ptr %.359, align 4, !tbaa !10 ; 2 uses
  %.0210 = load i32, ptr %i.aj, align 4, !tbaa !10 ; 2 uses
  %.0212 = load i32, ptr %i.ai, align 4, !tbaa !10 ; 4 uses
  %.0214 = load i32, ptr %i.ah, align 4, !tbaa !10 ; 2 uses
  %.0208 = load i32, ptr %i.ak, align 4, !tbaa !10 ; 5 uses
  %i.al = load ptr, ptr @debug, align 8, !tbaa !12 ; 2 uses
  %.not220 = icmp eq ptr %i.al, null
  br i1 %.not220, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load i32, ptr %i.i, align 4, !tbaa !197
  %i.an = load i32, ptr %i.j, align 4, !tbaa !202
  %i.ao = load i32, ptr %i.k, align 8, !tbaa !203 ; 2 uses
  %i.ap = sub nsw i32 %.0214, %i.ao               ; 2 uses
  %i.aq = add nsw i32 %i.ap, %.0212
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.al, ptr noundef nonnull @.str, i32 noundef %i.am, i32 noundef %i.an, i32 noundef %.0197, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.aq) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = load i32, ptr %i.l, align 4, !tbaa !103 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  %i.au = icmp sgt i32 %.0212, 0
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  %.pre = load i32, ptr %i.m, align 8, !tbaa !104 ; 5 uses
  br i1 %or.cond, label %.preheader232.lr.ph.split, label %._crit_edge.split

.preheader232.lr.ph.split:                        ; preds = %bb.d
  %i.av = load i32, ptr %i.k, align 8, !tbaa !203
  %invariant.op = sub i32 %.0214, %i.av
  %i.aw = icmp sgt i32 %.pre, 0
  br i1 %i.aw, label %.preheader232.lr.ph.split.split.us, label %._crit_edge.split

.preheader232.lr.ph.split.split.us:               ; preds = %.preheader232.lr.ph.split
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !105
  %i.ay = load i32, ptr %i.o, align 4, !tbaa !106
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !107 ; 8 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %wide.trip.count = zext nneg i32 %.pre to i64   ; 9 uses
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check417 = icmp ult i32 %.pre, 4
  %i.bc = trunc nsw i64 %i.bb to i32
  %i.bd = icmp ugt i64 %i.bb, 4294967295
  %min.iters.check421 = icmp ult i32 %.pre, 32
  %i.be = and i64 %wide.trip.count, 28
  %n.vec423 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %cmp.n432 = icmp eq i64 %n.vec423, %wide.trip.count
  %min.epilog.iters.check436 = icmp eq i64 %i.be, 0
  %n.vec439 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %cmp.n445 = icmp eq i64 %n.vec439, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader232.us

.preheader232.us:                                 ; preds = %._crit_edge239.split.us.us, %.preheader232.lr.ph.split.split.us
  %.0199244.us = phi i64 [ 0, %.preheader232.lr.ph.split.split.us ], [ %indvars.iv.next.lcssa, %._crit_edge239.split.us.us ]
  %.0205242.us = phi i32 [ 0, %.preheader232.lr.ph.split.split.us ], [ %i.do, %._crit_edge239.split.us.us ] ; 2 uses
  %i.bf = mul i32 %i.ax, %.0205242.us
  %invariant.op241.us = add i32 %invariant.op, %i.bf
  br label %iter.check433

iter.check433:                                    ; preds = %._crit_edge.us.us, %.preheader232.us
  %.1200237.us.us = phi i64 [ %.0199244.us, %.preheader232.us ], [ %indvars.iv.next.lcssa, %._crit_edge.us.us ] ; 8 uses
  %.0203236.us.us = phi i32 [ 0, %.preheader232.us ], [ %i.dn, %._crit_edge.us.us ] ; 2 uses
  %reass.add229.us.reass.us = add i32 %.0203236.us.us, %invariant.op241.us
  %reass.mul230.us.us = mul i32 %reass.add229.us.reass.us, %i.ay ; 10 uses
  br i1 %min.iters.check417, label %vec.epilog.scalar.ph435.preheader, label %vector.scevcheck414

vector.scevcheck414:                              ; preds = %iter.check433
  %i.bg = add i32 %reass.mul230.us.us, %i.bc
  %i.bh = icmp slt i32 %i.bg, %reass.mul230.us.us
  %i.bi = or i1 %i.bh, %i.bd
  br i1 %i.bi, label %vec.epilog.scalar.ph435.preheader, label %vector.memcheck418

vector.memcheck418:                               ; preds = %vector.scevcheck414
  %5 = shl i64 %.1200237.us.us, 2
  %i.bj = sext i32 %reass.mul230.us.us to i64
  %6 = shl nsw i64 %i.bj, 2
  %7 = add i64 %5, %i.ba
  %i.bk = add i64 %6, %i.a
  %8 = sub i64 %i.bk, %7
  %diff.check419 = icmp ugt i64 %8, -128
  br i1 %diff.check419, label %vec.epilog.scalar.ph435.preheader, label %vector.main.loop.iter.check420

vector.main.loop.iter.check420:                   ; preds = %vector.memcheck418
  br i1 %min.iters.check421, label %vec.epilog.ph437, label %vector.ph422

vector.ph422:                                     ; preds = %vector.main.loop.iter.check420
  %i.bl = add i64 %.1200237.us.us, %n.vec423      ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.az, i64 %.1200237.us.us
  br label %vector.body424

vector.body424:                                   ; preds = %vector.ph422, %vector.body424
  %index425 = phi i64 [ 0, %vector.ph422 ], [ %index.next430, %vector.body424 ] ; 3 uses
  %i.bn = trunc nuw nsw i64 %index425 to i32
  %i.bo = add i32 %reass.mul230.us.us, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bp ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %wide.load426 = load <8 x float>, ptr %i.bq, align 4, !tbaa !108
  %wide.load427 = load <8 x float>, ptr %i.br, align 4, !tbaa !108
  %wide.load428 = load <8 x float>, ptr %i.bs, align 4, !tbaa !108
  %wide.load429 = load <8 x float>, ptr %i.bt, align 4, !tbaa !108
  %i.bu = getelementptr [4 x i8], ptr %i.bm, i64 %index425 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  store <8 x float> %wide.load426, ptr %i.bu, align 4, !tbaa !108
  store <8 x float> %wide.load427, ptr %i.bv, align 4, !tbaa !108
  store <8 x float> %wide.load428, ptr %i.bw, align 4, !tbaa !108
  store <8 x float> %wide.load429, ptr %i.bx, align 4, !tbaa !108
  %index.next430 = add nuw i64 %index425, 32      ; 2 uses
  %i.by = icmp eq i64 %index.next430, %n.vec423
  br i1 %i.by, label %middle.block431, label %vector.body424, !llvm.loop !165

middle.block431:                                  ; preds = %vector.body424
  br i1 %cmp.n432, label %._crit_edge.us.us, label %vec.epilog.iter.check434

vec.epilog.iter.check434:                         ; preds = %middle.block431
  br i1 %min.epilog.iters.check436, label %vec.epilog.scalar.ph435.preheader, label %vec.epilog.ph437, !prof !112

vec.epilog.ph437:                                 ; preds = %vector.main.loop.iter.check420, %vec.epilog.iter.check434
  %vec.epilog.resume.val438 = phi i64 [ %n.vec423, %vec.epilog.iter.check434 ], [ 0, %vector.main.loop.iter.check420 ]
  %i.bz = add i64 %.1200237.us.us, %n.vec439      ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %i.az, i64 %.1200237.us.us
  br label %vec.epilog.vector.body440

vec.epilog.vector.body440:                        ; preds = %vec.epilog.vector.body440, %vec.epilog.ph437
  %index441 = phi i64 [ %vec.epilog.resume.val438, %vec.epilog.ph437 ], [ %index.next443, %vec.epilog.vector.body440 ] ; 3 uses
  %i.cb = trunc nuw nsw i64 %index441 to i32
  %i.cc = add i32 %reass.mul230.us.us, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cd
  %wide.load442 = load <4 x float>, ptr %i.ce, align 4, !tbaa !108
  %i.cf = getelementptr [4 x i8], ptr %i.ca, i64 %index441
  store <4 x float> %wide.load442, ptr %i.cf, align 4, !tbaa !108
  %index.next443 = add nuw i64 %index441, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next443, %n.vec439
  br i1 %i.cg, label %vec.epilog.middle.block444, label %vec.epilog.vector.body440, !llvm.loop !166

vec.epilog.middle.block444:                       ; preds = %vec.epilog.vector.body440
  br i1 %cmp.n445, label %._crit_edge.us.us, label %vec.epilog.scalar.ph435.preheader

vec.epilog.scalar.ph435.preheader:                ; preds = %iter.check433, %vector.scevcheck414, %vector.memcheck418, %vec.epilog.iter.check434, %vec.epilog.middle.block444
  %indvars.iv298.ph = phi i64 [ 0, %iter.check433 ], [ 0, %vector.scevcheck414 ], [ 0, %vector.memcheck418 ], [ %n.vec423, %vec.epilog.iter.check434 ], [ %n.vec439, %vec.epilog.middle.block444 ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %.1200237.us.us, %iter.check433 ], [ %.1200237.us.us, %vector.scevcheck414 ], [ %.1200237.us.us, %vector.memcheck418 ], [ %i.bl, %vec.epilog.iter.check434 ], [ %i.bz, %vec.epilog.middle.block444 ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph435.prol.loopexit, label %vec.epilog.scalar.ph435.prol

vec.epilog.scalar.ph435.prol:                     ; preds = %vec.epilog.scalar.ph435.preheader, %vec.epilog.scalar.ph435.prol
  %indvars.iv298.prol = phi i64 [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph435.prol ], [ %indvars.iv298.ph, %vec.epilog.scalar.ph435.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph435.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph435.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph435.prol ], [ 0, %vec.epilog.scalar.ph435.preheader ]
  %i.ch = trunc nuw nsw i64 %indvars.iv298.prol to i32
  %i.ci = add i32 %reass.mul230.us.us, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !108
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.prol
  store float %i.cl, ptr %i.cm, align 4, !tbaa !108
  %indvars.iv.next299.prol = add nuw nsw i64 %indvars.iv298.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph435.prol.loopexit, label %vec.epilog.scalar.ph435.prol, !llvm.loop !167

vec.epilog.scalar.ph435.prol.loopexit:            ; preds = %vec.epilog.scalar.ph435.prol, %vec.epilog.scalar.ph435.preheader
  %indvars.iv.next.lcssa491.unr = phi i64 [ poison, %vec.epilog.scalar.ph435.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph435.prol ]
  %indvars.iv298.unr = phi i64 [ %indvars.iv298.ph, %vec.epilog.scalar.ph435.preheader ], [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph435.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph435.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph435.prol ]
  %i.cn = sub nsw i64 %indvars.iv298.ph, %wide.trip.count
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %._crit_edge.us.us, label %vec.epilog.scalar.ph435.preheader.new

vec.epilog.scalar.ph435.preheader.new:            ; preds = %vec.epilog.scalar.ph435.prol.loopexit
  %invariant.op503 = add i32 1, %reass.mul230.us.us
  %invariant.op504 = add i32 2, %reass.mul230.us.us
  %invariant.op506 = add i32 3, %reass.mul230.us.us
  br label %vec.epilog.scalar.ph435

vec.epilog.scalar.ph435:                          ; preds = %vec.epilog.scalar.ph435, %vec.epilog.scalar.ph435.preheader.new
  %indvars.iv298 = phi i64 [ %indvars.iv298.unr, %vec.epilog.scalar.ph435.preheader.new ], [ %indvars.iv.next299.3, %vec.epilog.scalar.ph435 ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph435.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph435 ] ; 5 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv298 to i32
  %i.cq = add i32 %reass.mul230.us.us, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !108
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store float %i.ct, ptr %i.cu, align 4, !tbaa !108
  %i.cv = trunc i64 %indvars.iv298 to i32
  %.reass = add i32 %i.cv, %invariant.op503
  %i.cw = sext i32 %.reass to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !108
  %i.cz = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.da = getelementptr i8, ptr %i.cz, i64 4
  store float %i.cy, ptr %i.da, align 4, !tbaa !108
  %i.db = trunc i64 %indvars.iv298 to i32
  %.reass505 = add i32 %i.db, %invariant.op504
  %i.dc = sext i32 %.reass505 to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !108
  %i.df = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  store float %i.de, ptr %i.dg, align 4, !tbaa !108
  %i.dh = trunc i64 %indvars.iv298 to i32
  %.reass507 = add i32 %i.dh, %invariant.op506
  %i.di = sext i32 %.reass507 to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !108
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.dm = getelementptr i8, ptr %i.dl, i64 12
  store float %i.dk, ptr %i.dm, align 4, !tbaa !108
  %indvars.iv.next299.3 = add nuw nsw i64 %indvars.iv298, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next299.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph435, !llvm.loop !168

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph435.prol.loopexit, %vec.epilog.scalar.ph435, %vec.epilog.middle.block444, %middle.block431
  %indvars.iv.next.lcssa = phi i64 [ %i.bz, %vec.epilog.middle.block444 ], [ %i.bl, %middle.block431 ], [ %indvars.iv.next.lcssa491.unr, %vec.epilog.scalar.ph435.prol.loopexit ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph435 ] ; 2 uses
  %i.dn = add nuw nsw i32 %.0203236.us.us, 1      ; 2 uses
  %exitcond303.not = icmp eq i32 %i.dn, %.0212
  br i1 %exitcond303.not, label %._crit_edge239.split.us.us, label %iter.check433, !llvm.loop !169

._crit_edge239.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.do = add nuw nsw i32 %.0205242.us, 1         ; 2 uses
  %exitcond304.not = icmp eq i32 %i.do, %i.as
  br i1 %exitcond304.not, label %._crit_edge.split, label %.preheader232.us, !llvm.loop !170

._crit_edge.split:                                ; preds = %._crit_edge239.split.us.us, %.preheader232.lr.ph.split, %bb.d
  %i.dp = mul nsw i32 %.pre, %i.as                ; 2 uses
  %i.dq = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.dr = mul nsw i32 %i.dp, %.0212
  %i.ds = trunc i64 %.0194284 to i32              ; 2 uses
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.du = mul nsw i32 %i.dp, %.0208
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !204
  %i.dw = call noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %i.dq, i32 noundef %i.dr, ptr noundef %i.q, i32 noundef %.0197, i32 noundef %i.ds, ptr noundef %i.dt, i32 noundef %i.du, ptr noundef %i.q, i32 noundef %.0196, i32 noundef %i.ds, ptr noundef %i.dv, ptr noundef nonnull %4) ; 0 uses
  %i.dx = load ptr, ptr @debug, align 8, !tbaa !12 ; 2 uses
  %.not221 = icmp eq ptr %i.dx, null
  br i1 %.not221, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.split
  %i.dy = load i32, ptr %i.i, align 4, !tbaa !197
  %i.dz = load i32, ptr %i.j, align 4, !tbaa !202
  %i.ea = load i32, ptr %i.k, align 8, !tbaa !203 ; 2 uses
  %i.eb = sub nsw i32 %.0210, %i.ea               ; 2 uses
  %i.ec = add nsw i32 %i.eb, %.0208
  %i.ed = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.dx, ptr noundef nonnull @.str.1, i32 noundef %i.dy, i32 noundef %i.dz, i32 noundef %.0196, i32 noundef %i.ea, i32 noundef %i.eb, i32 noundef %i.ec) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.split
  %i.ee = load i32, ptr %i.l, align 4, !tbaa !103 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  %i.eg = icmp sgt i32 %.0208, 0
  %or.cond355 = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond355, label %.preheader231.lr.ph.split.us, label %._crit_edge274

.preheader231.lr.ph.split.us:                     ; preds = %bb.f
  %i.eh = load i32, ptr %i.k, align 8, !tbaa !203
  %invariant.op259.us = sub i32 %.0210, %i.eh     ; 2 uses
  %i.ei = load i32, ptr %i.m, align 8, !tbaa !104 ; 6 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.preheader231.lr.ph.split.us.split.us, label %._crit_edge274

.preheader231.lr.ph.split.us.split.us:            ; preds = %.preheader231.lr.ph.split.us
  %i.ek = load ptr, ptr %i.r, align 8, !tbaa !107 ; 17 uses
  %9 = ptrtoaddr ptr %i.ek to i64
  %i.el = load i32, ptr %i.n, align 8, !tbaa !105 ; 2 uses
  %i.em = load i32, ptr %i.o, align 4, !tbaa !106 ; 2 uses
  %wide.trip.count323 = zext nneg i32 %i.ei to i64 ; 18 uses
  %10 = add nsw i64 %wide.trip.count323, -1       ; 4 uses
  br i1 %i.h, label %.preheader231.us.us.us.preheader, label %.preheader231.us.us.preheader

.preheader231.us.us.preheader:                    ; preds = %.preheader231.lr.ph.split.us.split.us
  %min.iters.check384 = icmp ult i32 %i.ei, 4
  %i.en = trunc nsw i64 %10 to i32
  %i.eo = icmp ugt i64 %10, 4294967295
  %min.iters.check387 = icmp ult i32 %i.ei, 32
  %i.ep = and i64 %wide.trip.count323, 28
  %n.vec389 = and i64 %wide.trip.count323, 2147483616 ; 5 uses
  %cmp.n398 = icmp eq i64 %n.vec389, %wide.trip.count323
  %min.epilog.iters.check402 = icmp eq i64 %i.ep, 0
  %n.vec405 = and i64 %wide.trip.count323, 2147483644 ; 4 uses
  %cmp.n411 = icmp eq i64 %n.vec405, %wide.trip.count323
  %xtraiter494 = and i64 %wide.trip.count323, 3   ; 2 uses
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  br label %.preheader231.us.us

.preheader231.us.us.us.preheader:                 ; preds = %.preheader231.lr.ph.split.us.split.us
  %i.eq = shl nuw nsw i64 %wide.trip.count323, 2  ; 2 uses
  %min.iters.check = icmp ult i32 %i.ei, 4
  %i.er = trunc nsw i64 %10 to i32
  %i.es = icmp ugt i64 %10, 4294967295
  %invariant.gep = getelementptr i8, ptr %i.ek, i64 %i.eq
  %invariant.gep520 = getelementptr i8, ptr %1, i64 %i.eq
  %min.iters.check367 = icmp ult i32 %i.ei, 32
  %i.et = and i64 %wide.trip.count323, 28
  %n.vec = and i64 %wide.trip.count323, 2147483616 ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count323
  %min.epilog.iters.check = icmp eq i64 %i.et, 0
  %n.vec375 = and i64 %wide.trip.count323, 2147483644 ; 4 uses
  %cmp.n380 = icmp eq i64 %n.vec375, %wide.trip.count323
  %xtraiter497 = and i64 %wide.trip.count323, 3   ; 2 uses
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  br label %.preheader231.us.us.us

.preheader231.us.us.us:                           ; preds = %.preheader231.us.us.us.preheader, %._crit_edge257.split.us.split.us.us.us.us
  %.3273.us.us.us = phi i64 [ %indvars.iv.next317.lcssa, %._crit_edge257.split.us.split.us.us.us.us ], [ 0, %.preheader231.us.us.us.preheader ]
  %.1206270.us.us.us = phi i32 [ %i.hv, %._crit_edge257.split.us.split.us.us.us.us ], [ 0, %.preheader231.us.us.us.preheader ] ; 2 uses
  %i.eu = mul i32 %i.el, %.1206270.us.us.us
  %invariant.op269.us.us.us = add i32 %invariant.op259.us, %i.eu
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge252.split.us.us.us.us.us.us, %.preheader231.us.us.us
  %.4255.us.us.us.us.us = phi i64 [ %.3273.us.us.us, %.preheader231.us.us.us ], [ %indvars.iv.next317.lcssa, %._crit_edge252.split.us.us.us.us.us.us ] ; 8 uses
  %.1204254.us.us.us.us.us = phi i32 [ 0, %.preheader231.us.us.us ], [ %i.hu, %._crit_edge252.split.us.us.us.us.us.us ] ; 2 uses
  %reass.add226.us.us.us.reass.us.us.us = add i32 %.1204254.us.us.us.us.us, %invariant.op269.us.us.us
  %reass.mul227.us.us.us.us.us.us = mul i32 %reass.add226.us.us.us.reass.us.us.us, %i.em ; 10 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ev = add i32 %reass.mul227.us.us.us.us.us.us, %i.er
  %i.ew = icmp slt i32 %i.ev, %reass.mul227.us.us.us.us.us.us
  %i.ex = or i1 %i.ew, %i.es
  br i1 %i.ex, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ey = shl i64 %.4255.us.us.us.us.us, 2        ; 2 uses
  %i.ez = getelementptr nuw i8, ptr %i.ek, i64 %i.ey
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ey
  %i.fa = sext i32 %reass.mul227.us.us.us.us.us.us to i64
  %i.fb = shl nsw i64 %i.fa, 2                    ; 2 uses
  %i.fc = getelementptr i8, ptr %1, i64 %i.fb
  %gep521 = getelementptr i8, ptr %invariant.gep520, i64 %i.fb
  %bound0 = icmp ult ptr %i.ez, %gep521
  %bound1 = icmp ult ptr %i.fc, %gep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check367, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fd = add i64 %.4255.us.us.us.us.us, %n.vec   ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.ek, i64 %.4255.us.us.us.us.us
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ff = getelementptr [4 x i8], ptr %i.fe, i64 %index ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 96
  %wide.load = load <8 x float>, ptr %i.ff, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load368 = load <8 x float>, ptr %i.fg, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load369 = load <8 x float>, ptr %i.fh, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load370 = load <8 x float>, ptr %i.fi, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %i.fj = trunc nuw nsw i64 %index to i32
  %i.fk = add i32 %reass.mul227.us.us.us.us.us.us, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fl ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 64 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 96 ; 2 uses
  %wide.load371 = load <8 x float>, ptr %i.fm, align 4, !tbaa !108, !alias.scope !206
  %wide.load372 = load <8 x float>, ptr %i.fn, align 4, !tbaa !108, !alias.scope !206
  %wide.load373 = load <8 x float>, ptr %i.fo, align 4, !tbaa !108, !alias.scope !206
  %wide.load374 = load <8 x float>, ptr %i.fp, align 4, !tbaa !108, !alias.scope !206
  %i.fq = fadd <8 x float> %wide.load, %wide.load371
  %i.fr = fadd <8 x float> %wide.load368, %wide.load372
  %i.fs = fadd <8 x float> %wide.load369, %wide.load373
  %i.ft = fadd <8 x float> %wide.load370, %wide.load374
  store <8 x float> %i.fq, ptr %i.fm, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.fr, ptr %i.fn, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.fs, ptr %i.fo, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.ft, ptr %i.fp, align 4, !tbaa !108, !alias.scope !206
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fv = add i64 %.4255.us.us.us.us.us, %n.vec375 ; 2 uses
  %i.fw = getelementptr [4 x i8], ptr %i.ek, i64 %.4255.us.us.us.us.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next379, %vec.epilog.vector.body ] ; 3 uses
  %i.fx = getelementptr [4 x i8], ptr %i.fw, i64 %index376
  %wide.load377 = load <4 x float>, ptr %i.fx, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %i.fy = trunc nuw nsw i64 %index376 to i32
  %i.fz = add i32 %reass.mul227.us.us.us.us.us.us, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ga ; 2 uses
  %wide.load378 = load <4 x float>, ptr %i.gb, align 4, !tbaa !108, !alias.scope !206
  %i.gc = fadd <4 x float> %wide.load377, %wide.load378
  store <4 x float> %i.gc, ptr %i.gb, align 4, !tbaa !108, !alias.scope !206
  %index.next379 = add nuw i64 %index376, 4       ; 2 uses
  %i.gd = icmp eq i64 %index.next379, %n.vec375
  br i1 %i.gd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n380, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv318.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec375, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv316.ph = phi i64 [ %.4255.us.us.us.us.us, %iter.check ], [ %.4255.us.us.us.us.us, %vector.scevcheck ], [ %.4255.us.us.us.us.us, %vector.memcheck ], [ %i.fd, %vec.epilog.iter.check ], [ %i.fv, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod498.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv318.prol = phi i64 [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv316.prol = phi i64 [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter499 = phi i64 [ %prol.iter499.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv316.prol
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !108
  %i.gg = trunc nuw nsw i64 %indvars.iv318.prol to i32
  %i.gh = add i32 %reass.mul227.us.us.us.us.us.us, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gi ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !108
  %i.gl = fadd float %i.gf, %i.gk
  store float %i.gl, ptr %i.gj, align 4, !tbaa !108
  %indvars.iv.next317.prol = add nsw i64 %indvars.iv316.prol, 1 ; 3 uses
  %indvars.iv.next319.prol = add nuw nsw i64 %indvars.iv318.prol, 1 ; 2 uses
  %prol.iter499.next = add i64 %prol.iter499, 1   ; 2 uses
  %prol.iter499.cmp.not = icmp eq i64 %prol.iter499.next, %xtraiter497
  br i1 %prol.iter499.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !176

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next317.lcssa493.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv318.unr = phi i64 [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv316.unr = phi i64 [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %i.gm = sub nsw i64 %indvars.iv318.ph, %wide.trip.count323
  %i.gn = icmp ugt i64 %i.gm, -4
  br i1 %i.gn, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op514.a = add i32 1, %reass.mul227.us.us.us.us.us.us
  %invariant.op516.a = add i32 2, %reass.mul227.us.us.us.us.us.us
  %invariant.op518 = add i32 3, %reass.mul227.us.us.us.us.us.us
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv318 = phi i64 [ %indvars.iv318.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next319.3, %vec.epilog.scalar.ph ] ; 5 uses
  %indvars.iv316 = phi i64 [ %indvars.iv316.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next317.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv316
  %i.gp = load float, ptr %i.go, align 4, !tbaa !108
  %i.gq = trunc nuw nsw i64 %indvars.iv318 to i32
  %i.gr = add i32 %reass.mul227.us.us.us.us.us.us, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gs ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !108
  %i.gv = fadd float %i.gp, %i.gu
  store float %i.gv, ptr %i.gt, align 4, !tbaa !108
  %i.gw = getelementptr [4 x i8], ptr %i.ek, i64 %indvars.iv316
  %i.gx = getelementptr i8, ptr %i.gw, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !108
  %i.gz = trunc i64 %indvars.iv318 to i32
  %.reass515.a = add i32 %i.gz, %invariant.op514.a
  %i.ha = sext i32 %.reass515.a to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ha ; 2 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !108
  %i.hd = fadd float %i.gy, %i.hc
  store float %i.hd, ptr %i.hb, align 4, !tbaa !108
  %i.he = getelementptr [4 x i8], ptr %i.ek, i64 %indvars.iv316
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !108
  %i.hh = trunc i64 %indvars.iv318 to i32
  %.reass517.a = add i32 %i.hh, %invariant.op516.a
  %i.hi = sext i32 %.reass517.a to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hi ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !108
  %i.hl = fadd float %i.hg, %i.hk
  store float %i.hl, ptr %i.hj, align 4, !tbaa !108
  %i.hm = getelementptr [4 x i8], ptr %i.ek, i64 %indvars.iv316
  %i.hn = getelementptr i8, ptr %i.hm, i64 12
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !108
  %i.hp = trunc i64 %indvars.iv318 to i32
  %.reass519 = add i32 %i.hp, %invariant.op518
  %i.hq = sext i32 %.reass519 to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hq ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !108
  %i.ht = fadd float %i.ho, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !108
  %indvars.iv.next317.3 = add nsw i64 %indvars.iv316, 4 ; 2 uses
  %indvars.iv.next319.3 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %exitcond324.not.3 = icmp eq i64 %indvars.iv.next319.3, %wide.trip.count323
  br i1 %exitcond324.not.3, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph, !llvm.loop !177

._crit_edge252.split.us.us.us.us.us.us:           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next317.lcssa = phi i64 [ %i.fv, %vec.epilog.middle.block ], [ %i.fd, %middle.block ], [ %indvars.iv.next317.lcssa493.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next317.3, %vec.epilog.scalar.ph ] ; 2 uses
  %i.hu = add nuw nsw i32 %.1204254.us.us.us.us.us, 1 ; 2 uses
  %exitcond325.not = icmp eq i32 %i.hu, %.0208
  br i1 %exitcond325.not, label %._crit_edge257.split.us.split.us.us.us.us, label %iter.check, !llvm.loop !178

._crit_edge257.split.us.split.us.us.us.us:        ; preds = %._crit_edge252.split.us.us.us.us.us.us
  %i.hv = add nuw nsw i32 %.1206270.us.us.us, 1   ; 2 uses
  %exitcond326.not = icmp eq i32 %i.hv, %i.ee
  br i1 %exitcond326.not, label %._crit_edge274, label %.preheader231.us.us.us, !llvm.loop !179

.preheader231.us.us:                              ; preds = %.preheader231.us.us.preheader, %._crit_edge257.split.us.split.us282.us
  %.3273.us.us = phi i64 [ %indvars.iv.next306.lcssa, %._crit_edge257.split.us.split.us282.us ], [ 0, %.preheader231.us.us.preheader ]
  %.1206270.us.us = phi i32 [ %i.kg, %._crit_edge257.split.us.split.us282.us ], [ 0, %.preheader231.us.us.preheader ] ; 2 uses
  %i.hw = mul i32 %i.el, %.1206270.us.us
  %invariant.op268.us.us = add i32 %invariant.op259.us, %i.hw
  br label %iter.check399

iter.check399:                                    ; preds = %._crit_edge252.split.us264.us.us, %.preheader231.us.us
  %.4255.us.us280.us = phi i64 [ %.3273.us.us, %.preheader231.us.us ], [ %indvars.iv.next306.lcssa, %._crit_edge252.split.us264.us.us ] ; 8 uses
  %.1204254.us.us281.us = phi i32 [ 0, %.preheader231.us.us ], [ %i.kf, %._crit_edge252.split.us264.us.us ] ; 2 uses
  %reass.add.us.reass.us.us = add i32 %.1204254.us.us281.us, %invariant.op268.us.us
  %reass.mul.us.us.us = mul i32 %reass.add.us.reass.us.us, %i.em ; 10 uses
  br i1 %min.iters.check384, label %vec.epilog.scalar.ph401.preheader, label %vector.scevcheck382

vector.scevcheck382:                              ; preds = %iter.check399
  %i.hx = add i32 %reass.mul.us.us.us, %i.en
  %i.hy = icmp slt i32 %i.hx, %reass.mul.us.us.us
  %i.hz = or i1 %i.hy, %i.eo
  br i1 %i.hz, label %vec.epilog.scalar.ph401.preheader, label %vector.memcheck385

vector.memcheck385:                               ; preds = %vector.scevcheck382
  %i.ia = sext i32 %reass.mul.us.us.us to i64
  %11 = shl nsw i64 %i.ia, 2
  %i.ib = shl i64 %.4255.us.us280.us, 2
  %12 = add i64 %11, %i.a
  %i.ic = add i64 %i.ib, %9
  %13 = sub i64 %i.ic, %12
  %diff.check = icmp ugt i64 %13, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph401.preheader, label %vector.main.loop.iter.check386

vector.main.loop.iter.check386:                   ; preds = %vector.memcheck385
  br i1 %min.iters.check387, label %vec.epilog.ph403, label %vector.ph388

vector.ph388:                                     ; preds = %vector.main.loop.iter.check386
  %i.id = add i64 %.4255.us.us280.us, %n.vec389   ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %i.ek, i64 %.4255.us.us280.us
  br label %vector.body390

vector.body390:                                   ; preds = %vector.ph388, %vector.body390
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next396, %vector.body390 ] ; 3 uses
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %index391 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 96
  %wide.load392 = load <8 x float>, ptr %i.if, align 4, !tbaa !108
  %wide.load393 = load <8 x float>, ptr %i.ig, align 4, !tbaa !108
  %wide.load394 = load <8 x float>, ptr %i.ih, align 4, !tbaa !108
  %wide.load395 = load <8 x float>, ptr %i.ii, align 4, !tbaa !108
  %i.ij = trunc nuw nsw i64 %index391 to i32
  %i.ik = add i32 %reass.mul.us.us.us, %i.ij
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %1, i64 %i.il ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 96
  store <8 x float> %wide.load392, ptr %i.im, align 4, !tbaa !108
  store <8 x float> %wide.load393, ptr %i.in, align 4, !tbaa !108
  store <8 x float> %wide.load394, ptr %i.io, align 4, !tbaa !108
  store <8 x float> %wide.load395, ptr %i.ip, align 4, !tbaa !108
  %index.next396 = add nuw i64 %index391, 32      ; 2 uses
  %i.iq = icmp eq i64 %index.next396, %n.vec389
  br i1 %i.iq, label %middle.block397, label %vector.body390, !llvm.loop !180

middle.block397:                                  ; preds = %vector.body390
  br i1 %cmp.n398, label %._crit_edge252.split.us264.us.us, label %vec.epilog.iter.check400

vec.epilog.iter.check400:                         ; preds = %middle.block397
  br i1 %min.epilog.iters.check402, label %vec.epilog.scalar.ph401.preheader, label %vec.epilog.ph403, !prof !112

vec.epilog.ph403:                                 ; preds = %vector.main.loop.iter.check386, %vec.epilog.iter.check400
  %vec.epilog.resume.val404 = phi i64 [ %n.vec389, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check386 ]
  %i.ir = add i64 %.4255.us.us280.us, %n.vec405   ; 2 uses
  %i.is = getelementptr [4 x i8], ptr %i.ek, i64 %.4255.us.us280.us
  br label %vec.epilog.vector.body406

vec.epilog.vector.body406:                        ; preds = %vec.epilog.vector.body406, %vec.epilog.ph403
  %index407 = phi i64 [ %vec.epilog.resume.val404, %vec.epilog.ph403 ], [ %index.next409, %vec.epilog.vector.body406 ] ; 3 uses
  %i.it = getelementptr [4 x i8], ptr %i.is, i64 %index407
  %wide.load408 = load <4 x float>, ptr %i.it, align 4, !tbaa !108
  %i.iu = trunc nuw nsw i64 %index407 to i32
  %i.iv = add i32 %reass.mul.us.us.us, %i.iu
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iw
  store <4 x float> %wide.load408, ptr %i.ix, align 4, !tbaa !108
  %index.next409 = add nuw i64 %index407, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next409, %n.vec405
  br i1 %i.iy, label %vec.epilog.middle.block410, label %vec.epilog.vector.body406, !llvm.loop !181

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body406
  br i1 %cmp.n411, label %._crit_edge252.split.us264.us.us, label %vec.epilog.scalar.ph401.preheader

vec.epilog.scalar.ph401.preheader:                ; preds = %iter.check399, %vector.scevcheck382, %vector.memcheck385, %vec.epilog.iter.check400, %vec.epilog.middle.block410
  %indvars.iv307.ph = phi i64 [ 0, %iter.check399 ], [ 0, %vector.scevcheck382 ], [ 0, %vector.memcheck385 ], [ %n.vec389, %vec.epilog.iter.check400 ], [ %n.vec405, %vec.epilog.middle.block410 ] ; 3 uses
  %indvars.iv305.ph = phi i64 [ %.4255.us.us280.us, %iter.check399 ], [ %.4255.us.us280.us, %vector.scevcheck382 ], [ %.4255.us.us280.us, %vector.memcheck385 ], [ %i.id, %vec.epilog.iter.check400 ], [ %i.ir, %vec.epilog.middle.block410 ] ; 2 uses
  br i1 %lcmp.mod495.not, label %vec.epilog.scalar.ph401.prol.loopexit, label %vec.epilog.scalar.ph401.prol

vec.epilog.scalar.ph401.prol:                     ; preds = %vec.epilog.scalar.ph401.preheader, %vec.epilog.scalar.ph401.prol
  %indvars.iv307.prol = phi i64 [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph401.prol ], [ %indvars.iv307.ph, %vec.epilog.scalar.ph401.preheader ] ; 2 uses
  %indvars.iv305.prol = phi i64 [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph401.prol ], [ %indvars.iv305.ph, %vec.epilog.scalar.ph401.preheader ] ; 2 uses
  %prol.iter496 = phi i64 [ %prol.iter496.next, %vec.epilog.scalar.ph401.prol ], [ 0, %vec.epilog.scalar.ph401.preheader ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv305.prol
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !108
  %i.jb = trunc nuw nsw i64 %indvars.iv307.prol to i32
  %i.jc = add i32 %reass.mul.us.us.us, %i.jb
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jd
  store float %i.ja, ptr %i.je, align 4, !tbaa !108
  %indvars.iv.next306.prol = add nsw i64 %indvars.iv305.prol, 1 ; 3 uses
  %indvars.iv.next308.prol = add nuw nsw i64 %indvars.iv307.prol, 1 ; 2 uses
  %prol.iter496.next = add i64 %prol.iter496, 1   ; 2 uses
  %prol.iter496.cmp.not = icmp eq i64 %prol.iter496.next, %xtraiter494
  br i1 %prol.iter496.cmp.not, label %vec.epilog.scalar.ph401.prol.loopexit, label %vec.epilog.scalar.ph401.prol, !llvm.loop !182

vec.epilog.scalar.ph401.prol.loopexit:            ; preds = %vec.epilog.scalar.ph401.prol, %vec.epilog.scalar.ph401.preheader
  %indvars.iv.next306.lcssa492.unr = phi i64 [ poison, %vec.epilog.scalar.ph401.preheader ], [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph401.prol ]
  %indvars.iv307.unr = phi i64 [ %indvars.iv307.ph, %vec.epilog.scalar.ph401.preheader ], [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph401.prol ]
  %indvars.iv305.unr = phi i64 [ %indvars.iv305.ph, %vec.epilog.scalar.ph401.preheader ], [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph401.prol ]
  %i.jf = sub nsw i64 %indvars.iv307.ph, %wide.trip.count323
  %i.jg = icmp ugt i64 %i.jf, -4
  br i1 %i.jg, label %._crit_edge252.split.us264.us.us, label %vec.epilog.scalar.ph401.preheader.new

vec.epilog.scalar.ph401.preheader.new:            ; preds = %vec.epilog.scalar.ph401.prol.loopexit
  %invariant.op508 = add i32 1, %reass.mul.us.us.us
  %invariant.op510 = add i32 2, %reass.mul.us.us.us
  %invariant.op512 = add i32 3, %reass.mul.us.us.us
  br label %vec.epilog.scalar.ph401

vec.epilog.scalar.ph401:                          ; preds = %vec.epilog.scalar.ph401, %vec.epilog.scalar.ph401.preheader.new
  %indvars.iv307 = phi i64 [ %indvars.iv307.unr, %vec.epilog.scalar.ph401.preheader.new ], [ %indvars.iv.next308.3, %vec.epilog.scalar.ph401 ] ; 5 uses
  %indvars.iv305 = phi i64 [ %indvars.iv305.unr, %vec.epilog.scalar.ph401.preheader.new ], [ %indvars.iv.next306.3, %vec.epilog.scalar.ph401 ] ; 5 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv305
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !108
  %i.jj = trunc nuw nsw i64 %indvars.iv307 to i32
  %i.jk = add i32 %reass.mul.us.us.us, %i.jj
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jl
  store float %i.ji, ptr %i.jm, align 4, !tbaa !108
  %i.jn = getelementptr [4 x i8], ptr %i.ek, i64 %indvars.iv305
  %i.jo = getelementptr i8, ptr %i.jn, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !108
  %i.jq = trunc i64 %indvars.iv307 to i32
  %.reass509 = add i32 %i.jq, %invariant.op508
  %i.jr = sext i32 %.reass509 to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jr
  store float %i.jp, ptr %i.js, align 4, !tbaa !108
  %i.jt = getelementptr [4 x i8], ptr %i.ek, i64 %indvars.iv305
  %i.ju = getelementptr i8, ptr %i.jt, i64 8
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !108
  %i.jw = trunc i64 %indvars.iv307 to i32
  %.reass511 = add i32 %i.jw, %invariant.op510
  %i.jx = sext i32 %.reass511 to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jx
  store float %i.jv, ptr %i.jy, align 4, !tbaa !108
  %i.jz = getelementptr [4 x i8], ptr %i.ek, i64 %indvars.iv305
  %i.ka = getelementptr i8, ptr %i.jz, i64 12
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !108
  %i.kc = trunc i64 %indvars.iv307 to i32
  %.reass513 = add i32 %i.kc, %invariant.op512
  %i.kd = sext i32 %.reass513 to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kd
  store float %i.kb, ptr %i.ke, align 4, !tbaa !108
  %indvars.iv.next306.3 = add nsw i64 %indvars.iv305, 4 ; 2 uses
  %indvars.iv.next308.3 = add nuw nsw i64 %indvars.iv307, 4 ; 2 uses
  %exitcond313.not.3 = icmp eq i64 %indvars.iv.next308.3, %wide.trip.count323
  br i1 %exitcond313.not.3, label %._crit_edge252.split.us264.us.us, label %vec.epilog.scalar.ph401, !llvm.loop !183

._crit_edge252.split.us264.us.us:                 ; preds = %vec.epilog.scalar.ph401.prol.loopexit, %vec.epilog.scalar.ph401, %vec.epilog.middle.block410, %middle.block397
  %indvars.iv.next306.lcssa = phi i64 [ %i.ir, %vec.epilog.middle.block410 ], [ %i.id, %middle.block397 ], [ %indvars.iv.next306.lcssa492.unr, %vec.epilog.scalar.ph401.prol.loopexit ], [ %indvars.iv.next306.3, %vec.epilog.scalar.ph401 ] ; 2 uses
  %i.kf = add nuw nsw i32 %.1204254.us.us281.us, 1 ; 2 uses
  %exitcond314.not = icmp eq i32 %i.kf, %.0208
  br i1 %exitcond314.not, label %._crit_edge257.split.us.split.us282.us, label %iter.check399, !llvm.loop !178

._crit_edge257.split.us.split.us282.us:           ; preds = %._crit_edge252.split.us264.us.us
  %i.kg = add nuw nsw i32 %.1206270.us.us, 1      ; 2 uses
  %exitcond315.not = icmp eq i32 %i.kg, %i.ee
  br i1 %exitcond315.not, label %._crit_edge274, label %.preheader231.us.us, !llvm.loop !179

._crit_edge274:                                   ; preds = %._crit_edge257.split.us.split.us282.us, %._crit_edge257.split.us.split.us.us.us.us, %.preheader231.lr.ph.split.us, %bb.f
  %i.kh = add nuw i64 %.0194284, 1                ; 2 uses
  %i.ki = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.kj = load ptr, ptr %i.d, align 8, !tbaa !196 ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = sdiv exact i64 %i.km, 28
  %i.ko = icmp ult i64 %i.kh, %i.kn
  br i1 %i.ko, label %bb.b, label %.preheader, !llvm.loop !184

._crit_edge291:                                   ; preds = %.loopexit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void

bb.g:                                             ; preds = %.lr.ph290, %.loopexit
  %i.kp = phi ptr [ %i.v, %.lr.ph290 ], [ %i.pl, %.loopexit ]
  %.0289 = phi i64 [ 0, %.lr.ph290 ], [ %i.pj, %.loopexit ] ; 3 uses
  %i.kq = getelementptr inbounds nuw [28 x i8], ptr %i.kp, i64 %.0289 ; 11 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 12 ; 2 uses
  %.pre333 = load i32, ptr %i.y, align 8, !tbaa !105 ; 2 uses
  %.pre334 = load i32, ptr %i.z, align 4, !tbaa !106 ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !208
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 20
  %i.kx = load ptr, ptr %i.aa, align 8, !tbaa !107
  %.pre332 = load i32, ptr %i.x, align 4, !tbaa !209
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kq, i64 20
  %i.la = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !210 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ld = load i32, ptr %i.x, align 4, !tbaa !209 ; 2 uses
  %i.le = sub nsw i32 %i.lb, %i.ld
  %i.lf = mul i32 %i.le, %.pre333
  %i.lg = mul i32 %i.lf, %.pre334
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %1, i64 %i.lh
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.lj = phi i32 [ %.pre332, %bb.h ], [ %i.ld, %bb.i ] ; 2 uses
  %.1215.in = phi ptr [ %i.ks, %bb.h ], [ %i.ky, %bb.i ]
end_hunk_0
begin_hunk_1_@_Z16gmx_sum_qgrid_ddP9gmx_pme_tN3gmx8ArrayRefIfEEi:bb.a
  %wide.load471 = load <8 x float>, ptr %i.nd, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  %i.ne = fadd <8 x float> %wide.load464, %wide.load468
  %i.nf = fadd <8 x float> %wide.load465, %wide.load469
  %i.ng = fadd <8 x float> %wide.load466, %wide.load470
  %i.nh = fadd <8 x float> %wide.load467, %wide.load471
  store <8 x float> %i.ne, ptr %i.na, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  store <8 x float> %i.nf, ptr %i.nb, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  store <8 x float> %i.ng, ptr %i.nc, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  store <8 x float> %i.nh, ptr %i.nd, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  %index.next472 = add nuw i64 %index463, 32      ; 2 uses
  %i.ni = icmp eq i64 %index.next472, %n.vec461
  br i1 %i.ni, label %middle.block473, label %vector.body462, !llvm.loop !188

middle.block473:                                  ; preds = %vector.body462
  %cmp.n474 = icmp eq i64 %n.vec461, %wide.trip.count330
  br i1 %cmp.n474, label %.loopexit, label %vec.epilog.iter.check476

vec.epilog.iter.check476:                         ; preds = %middle.block473
  %min.epilog.iters.check478 = icmp eq i64 %i.mv, 0
  br i1 %min.epilog.iters.check478, label %vec.epilog.scalar.ph477.preheader, label %vec.epilog.ph479, !prof !112

vec.epilog.ph479:                                 ; preds = %vector.main.loop.iter.check458, %vec.epilog.iter.check476
  %vec.epilog.resume.val480 = phi i64 [ %n.vec461, %vec.epilog.iter.check476 ], [ 0, %vector.main.loop.iter.check458 ]
  %n.vec481 = and i64 %wide.trip.count330, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body482

vec.epilog.vector.body482:                        ; preds = %vec.epilog.vector.body482, %vec.epilog.ph479
  %index483 = phi i64 [ %vec.epilog.resume.val480, %vec.epilog.ph479 ], [ %index.next486, %vec.epilog.vector.body482 ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %index483
  %wide.load484 = load <4 x float>, ptr %i.nj, align 4, !tbaa !108, !alias.scope !211
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %index483 ; 2 uses
  %wide.load485 = load <4 x float>, ptr %i.nk, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  %i.nl = fadd <4 x float> %wide.load484, %wide.load485
  store <4 x float> %i.nl, ptr %i.nk, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  %index.next486 = add nuw i64 %index483, 4       ; 2 uses
  %i.nm = icmp eq i64 %index.next486, %n.vec481
  br i1 %i.nm, label %vec.epilog.middle.block487, label %vec.epilog.vector.body482, !llvm.loop !189

vec.epilog.middle.block487:                       ; preds = %vec.epilog.vector.body482
  %cmp.n488 = icmp eq i64 %n.vec481, %wide.trip.count330
  br i1 %cmp.n488, label %.loopexit, label %vec.epilog.scalar.ph477.preheader

vec.epilog.scalar.ph477.preheader:                ; preds = %iter.check475, %vector.memcheck454, %vec.epilog.iter.check476, %vec.epilog.middle.block487
  %indvars.iv327.ph = phi i64 [ 0, %iter.check475 ], [ 0, %vector.memcheck454 ], [ %n.vec461, %vec.epilog.iter.check476 ], [ %n.vec481, %vec.epilog.middle.block487 ] ; 4 uses
  %i.nn = sub nsw i64 %wide.trip.count330, %indvars.iv327.ph
  %xtraiter500 = and i64 %i.nn, 7                 ; 2 uses
  %lcmp.mod501.not = icmp eq i64 %xtraiter500, 0
  br i1 %lcmp.mod501.not, label %vec.epilog.scalar.ph477.prol.loopexit, label %vec.epilog.scalar.ph477.prol

vec.epilog.scalar.ph477.prol:                     ; preds = %vec.epilog.scalar.ph477.preheader, %vec.epilog.scalar.ph477.prol
  %indvars.iv327.prol = phi i64 [ %indvars.iv.next328.prol, %vec.epilog.scalar.ph477.prol ], [ %indvars.iv327.ph, %vec.epilog.scalar.ph477.preheader ] ; 3 uses
  %prol.iter502 = phi i64 [ %prol.iter502.next, %vec.epilog.scalar.ph477.prol ], [ 0, %vec.epilog.scalar.ph477.preheader ]
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv327.prol
  %i.np = load float, ptr %i.no, align 4, !tbaa !108
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv327.prol ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !108
  %i.ns = fadd float %i.np, %i.nr
  store float %i.ns, ptr %i.nq, align 4, !tbaa !108
  %indvars.iv.next328.prol = add nuw nsw i64 %indvars.iv327.prol, 1 ; 2 uses
  %prol.iter502.next = add i64 %prol.iter502, 1   ; 2 uses
  %prol.iter502.cmp.not = icmp eq i64 %prol.iter502.next, %xtraiter500
  br i1 %prol.iter502.cmp.not, label %vec.epilog.scalar.ph477.prol.loopexit, label %vec.epilog.scalar.ph477.prol, !llvm.loop !190

vec.epilog.scalar.ph477.prol.loopexit:            ; preds = %vec.epilog.scalar.ph477.prol, %vec.epilog.scalar.ph477.preheader
  %indvars.iv327.unr = phi i64 [ %indvars.iv327.ph, %vec.epilog.scalar.ph477.preheader ], [ %indvars.iv.next328.prol, %vec.epilog.scalar.ph477.prol ]
  %i.nt = sub nsw i64 %indvars.iv327.ph, %wide.trip.count330
  %i.nu = icmp ugt i64 %i.nt, -8
  br i1 %i.nu, label %.loopexit, label %vec.epilog.scalar.ph477

vec.epilog.scalar.ph477:                          ; preds = %vec.epilog.scalar.ph477.prol.loopexit, %vec.epilog.scalar.ph477
  %indvars.iv327 = phi i64 [ %indvars.iv.next328.7, %vec.epilog.scalar.ph477 ], [ %indvars.iv327.unr, %vec.epilog.scalar.ph477.prol.loopexit ] ; 10 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv327
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !108
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv327 ; 2 uses
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !108
  %i.nz = fadd float %i.nw, %i.ny
  store float %i.nz, ptr %i.nx, align 4, !tbaa !108
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next328
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !108
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next328 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !108
  %i.oe = fadd float %i.ob, %i.od
  store float %i.oe, ptr %i.oc, align 4, !tbaa !108
  %indvars.iv.next328.1 = add nuw nsw i64 %indvars.iv327, 2 ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next328.1
  %i.og = load float, ptr %i.of, align 4, !tbaa !108
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next328.1 ; 2 uses
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !108
  %i.oj = fadd float %i.og, %i.oi
  store float %i.oj, ptr %i.oh, align 4, !tbaa !108
  %indvars.iv.next328.2 = add nuw nsw i64 %indvars.iv327, 3 ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next328.2
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !108
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next328.2 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !108
  %i.oo = fadd float %i.ol, %i.on
  store float %i.oo, ptr %i.om, align 4, !tbaa !108
  %indvars.iv.next328.3 = add nuw nsw i64 %indvars.iv327, 4 ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next328.3
  %i.oq = load float, ptr %i.op, align 4, !tbaa !108
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next328.3 ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !108
  %i.ot = fadd float %i.oq, %i.os
  store float %i.ot, ptr %i.or, align 4, !tbaa !108
  %indvars.iv.next328.4 = add nuw nsw i64 %indvars.iv327, 5 ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next328.4
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !108
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next328.4 ; 2 uses
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !108
  %i.oy = fadd float %i.ov, %i.ox
  store float %i.oy, ptr %i.ow, align 4, !tbaa !108
  %indvars.iv.next328.5 = add nuw nsw i64 %indvars.iv327, 6 ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next328.5
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !108
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next328.5 ; 2 uses
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !108
  %i.pd = fadd float %i.pa, %i.pc
  store float %i.pd, ptr %i.pb, align 4, !tbaa !108
  %indvars.iv.next328.6 = add nuw nsw i64 %indvars.iv327, 7 ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.next328.6
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !108
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %indvars.iv.next328.6 ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !108
  %i.pi = fadd float %i.pf, %i.ph
  store float %i.pi, ptr %i.pg, align 4, !tbaa !108
  %indvars.iv.next328.7 = add nuw nsw i64 %indvars.iv327, 8 ; 2 uses
  %exitcond331.not.7 = icmp eq i64 %indvars.iv.next328.7, %wide.trip.count330
  br i1 %exitcond331.not.7, label %.loopexit, label %vec.epilog.scalar.ph477, !llvm.loop !191

.loopexit:                                        ; preds = %vec.epilog.scalar.ph477.prol.loopexit, %vec.epilog.scalar.ph477, %middle.block473, %vec.epilog.middle.block487, %bb.m, %bb.l
  %i.pj = add nuw i64 %.0289, 1                   ; 2 uses
  %i.pk = load ptr, ptr %i.t, align 8, !tbaa !195
  %i.pl = load ptr, ptr %i.s, align 8, !tbaa !196 ; 2 uses
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = sdiv exact i64 %i.po, 28
  %i.pq = icmp ult i64 %i.pj, %i.pp
  br i1 %i.pq, label %bb.g, label %._crit_edge291, !llvm.loop !192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z23copy_pmegrid_to_fftgridPK9gmx_pme_tP14PmeAndFftGrids(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 3 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119  ; 8 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136  ; 8 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !137
  %i.m = call noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.q = load i32, ptr %i.p, align 4, !tbaa !106
  %i.r = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.preheader26.lr.ph, label %._crit_edge31.split

.preheader26.lr.ph:                               ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10   ; 2 uses
  %i.v = icmp slt i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i32, ptr %i.w, align 4              ; 4 uses
  %i.y = icmp slt i32 %i.x, 1
  %brmerge = select i1 %i.v, i1 true, i1 %i.y
  br i1 %brmerge, label %._crit_edge31.split, label %.preheader26.preheader

.preheader26.preheader:                           ; preds = %.preheader26.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load i32, ptr %i.aa, align 4
  %.pre37 = load i32, ptr %i.z, align 4
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 9 uses
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.x, 4
  %i.ac = trunc nsw i64 %i.ab to i32              ; 2 uses
  %i.ad = icmp ugt i64 %i.ab, 4294967295
  %min.iters.check42 = icmp ult i32 %i.x, 32
  %i.ae = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  %n.vec46 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n50 = icmp eq i64 %n.vec46, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader26.preheader, %._crit_edge29
  %.02330 = phi i32 [ %i.dg, %._crit_edge29 ], [ 0, %.preheader26.preheader ] ; 3 uses
  %i.af = mul i32 %.02330, %i.o
  %i.ag = mul i32 %.pre, %.02330
  br label %iter.check

iter.check:                                       ; preds = %.preheader26, %._crit_edge
  %.02228 = phi i32 [ 0, %.preheader26 ], [ %i.df, %._crit_edge ] ; 3 uses
  %reass.add = add i32 %.02228, %i.af
  %reass.mul = mul i32 %reass.add, %i.q           ; 10 uses
  %reass.add24 = add i32 %i.ag, %.02228
  %reass.mul25 = mul i32 %reass.add24, %.pre37    ; 10 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ah = add i32 %reass.mul25, %i.ac
  %i.ai = icmp slt i32 %i.ah, %reass.mul25
  %i.aj = add i32 %reass.mul, %i.ac
  %i.ak = icmp slt i32 %i.aj, %reass.mul
  %i.al = or i1 %i.ak, %i.ad
  %i.am = or i1 %i.ai, %i.al
  br i1 %i.am, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.an = sext i32 %reass.mul25 to i64
  %2 = shl nsw i64 %i.an, 2
  %i.ao = sext i32 %reass.mul to i64
  %3 = shl nsw i64 %i.ao, 2
  %4 = add i64 %2, %i.j
  %i.ap = add i64 %3, %i.g
  %5 = sub i64 %i.ap, %4
  %diff.check = icmp ugt i64 %5, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.aq = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.ar = add i32 %reass.mul, %i.aq
  %i.as = add i32 %reass.mul25, %i.aq
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %wide.load = load <8 x float>, ptr %i.au, align 4, !tbaa !108
  %wide.load43 = load <8 x float>, ptr %i.av, align 4, !tbaa !108
  %wide.load44 = load <8 x float>, ptr %i.aw, align 4, !tbaa !108
  %wide.load45 = load <8 x float>, ptr %i.ax, align 4, !tbaa !108
  %i.ay = sext i32 %i.as to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ay ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store <8 x float> %wide.load, ptr %i.az, align 4, !tbaa !108
  store <8 x float> %wide.load43, ptr %i.ba, align 4, !tbaa !108
  store <8 x float> %wide.load44, ptr %i.bb, align 4, !tbaa !108
  store <8 x float> %wide.load45, ptr %i.bc, align 4, !tbaa !108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %i.be = trunc nuw nsw i64 %index47 to i32       ; 2 uses
  %i.bf = add i32 %reass.mul, %i.be
  %i.bg = add i32 %reass.mul25, %i.be
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bh
  %wide.load48 = load <4 x float>, ptr %i.bi, align 4, !tbaa !108
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bj
  store <4 x float> %wide.load48, ptr %i.bk, align 4, !tbaa !108
  %index.next49 = add nuw i64 %index47, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next49, %n.vec46
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !214

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n50, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bm = trunc nuw nsw i64 %indvars.iv.prol to i32 ; 2 uses
  %i.bn = add i32 %reass.mul, %i.bm
  %i.bo = add i32 %reass.mul25, %i.bm
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !108
  %i.bs = sext i32 %i.bo to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bs
  store float %i.br, ptr %i.bt, align 4, !tbaa !108
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !215

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bu = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bx = add i32 %reass.mul, %i.bw
  %i.by = add i32 %reass.mul25, %i.bw
  %i.bz = sext i32 %i.bx to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !108
  %i.cc = sext i32 %i.by to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.cc
  store float %i.cb, ptr %i.cd, align 4, !tbaa !108
  %i.ce = trunc i64 %indvars.iv to i32
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  %i.cg = add i32 %reass.mul, %i.cf
  %i.ch = add i32 %reass.mul25, %i.cf
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !108
  %i.cl = sext i32 %i.ch to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.cl
  store float %i.ck, ptr %i.cm, align 4, !tbaa !108
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = add i32 %i.cn, 2                        ; 2 uses
  %i.cp = add i32 %reass.mul, %i.co
  %i.cq = add i32 %reass.mul25, %i.co
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !108
  %i.cu = sext i32 %i.cq to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.cu
  store float %i.ct, ptr %i.cv, align 4, !tbaa !108
  %i.cw = trunc i64 %indvars.iv to i32
  %i.cx = add i32 %i.cw, 3                        ; 2 uses
  %i.cy = add i32 %reass.mul, %i.cx
  %i.cz = add i32 %reass.mul25, %i.cx
  %i.da = sext i32 %i.cy to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !108
  %i.dd = sext i32 %i.cz to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dd
  store float %i.dc, ptr %i.de, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !216

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.df = add nuw nsw i32 %.02228, 1              ; 2 uses
  %exitcond35.not = icmp eq i32 %i.df, %i.u
  br i1 %exitcond35.not, label %._crit_edge29, label %iter.check, !llvm.loop !217

._crit_edge29:                                    ; preds = %._crit_edge
  %i.dg = add nuw nsw i32 %.02330, 1              ; 2 uses
  %exitcond36.not = icmp eq i32 %i.dg, %i.r
  br i1 %exitcond36.not, label %._crit_edge31.split, label %.preheader26, !llvm.loop !218

._crit_edge31.split:                              ; preds = %._crit_edge29, %.preheader26.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

declare noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z23copy_fftgrid_to_pmegridPK9gmx_pme_tP14PmeAndFftGridsii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 3 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 2 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119  ; 2 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !137
  %i.m = call noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.q = load i32, ptr %i.p, align 4, !tbaa !106
  %i.r = load i32, ptr %i.a, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10   ; 4 uses
  %i.u = mul i32 %i.t, %i.r                       ; 2 uses
  %i.v = mul i32 %i.u, %3
  %i.w = add nsw i32 %3, 1
  %i.x = mul i32 %i.u, %i.w
  %i.y = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %i.x, i64 1
  %i.aa = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.ab = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ac = sdiv <2 x i32> %i.z, %i.ab              ; 2 uses
  %i.ad = extractelement <2 x i32> %i.ac, i64 0   ; 2 uses
  %i.ae = extractelement <2 x i32> %i.ac, i64 1   ; 2 uses
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph32, label %._crit_edge33.split

.lr.ph32:                                         ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10 ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge33.split

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %wide.trip.count = zext nneg i32 %i.al to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %i.al, 4
  %min.iters.check42 = icmp ult i32 %i.al, 32
  %i.an = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  %n.vec46 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n50 = icmp eq i64 %n.vec46, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %.02830 = phi i32 [ %i.by, %._crit_edge ], [ %i.ad, %.lr.ph.preheader ] ; 3 uses
  %i.ao = sdiv i32 %.02830, %i.t                  ; 3 uses
  %i.ap = mul nsw i32 %i.ao, %i.t                 ; 0 uses
  %.recomposed = srem i32 %.02830, %i.t           ; 2 uses
  %i.aq = mul nsw i32 %i.ao, %i.o
  %i.ar = add nsw i32 %.recomposed, %i.aq
  %i.as = mul nsw i32 %i.ar, %i.q
  %i.at = mul nsw i32 %i.ah, %i.ao
  %i.au = add nsw i32 %i.at, %.recomposed
  %i.av = mul nsw i32 %i.au, %i.aj
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = sext i32 %i.as to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.e, i64 %i.aw ; 11 uses
  %invariant.gep40 = getelementptr [4 x i8], ptr %i.i, i64 %i.ax ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = shl nsw i64 %i.ax, 2
  %i.ay = shl nsw i64 %i.aw, 2
  %5 = add i64 %4, %i.j
  %i.az = add i64 %i.ay, %i.f
  %6 = sub i64 %i.az, %5
  %diff.check = icmp ugt i64 %6, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ba = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %i.bc = getelementptr i8, ptr %i.ba, i64 64
  %i.bd = getelementptr i8, ptr %i.ba, i64 96
  %wide.load = load <8 x float>, ptr %i.ba, align 4, !tbaa !108
  %wide.load43 = load <8 x float>, ptr %i.bb, align 4, !tbaa !108
  %wide.load44 = load <8 x float>, ptr %i.bc, align 4, !tbaa !108
  %wide.load45 = load <8 x float>, ptr %i.bd, align 4, !tbaa !108
  %i.be = getelementptr [4 x i8], ptr %invariant.gep40, i64 %index ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  %i.bg = getelementptr i8, ptr %i.be, i64 64
  %i.bh = getelementptr i8, ptr %i.be, i64 96
  store <8 x float> %wide.load, ptr %i.be, align 4, !tbaa !108
  store <8 x float> %wide.load43, ptr %i.bf, align 4, !tbaa !108
  store <8 x float> %wide.load44, ptr %i.bg, align 4, !tbaa !108
  store <8 x float> %wide.load45, ptr %i.bh, align 4, !tbaa !108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %i.bj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index47
  %wide.load48 = load <4 x float>, ptr %i.bj, align 4, !tbaa !108
  %i.bk = getelementptr [4 x i8], ptr %invariant.gep40, i64 %index47
  store <4 x float> %wide.load48, ptr %i.bk, align 4, !tbaa !108
  %index.next49 = add nuw i64 %index47, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next49, %n.vec46
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !220

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n50, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 4 uses
  %i.bm = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bn = load float, ptr %gep.prol, align 4, !tbaa !108
  %gep41.prol = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.prol
  store float %i.bn, ptr %gep41.prol, align 4, !tbaa !108
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !221

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bo = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bp = icmp ugt i64 %i.bo, -8
  br i1 %i.bp, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bq = load float, ptr %gep, align 4, !tbaa !108
  %gep41 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv
  store float %i.bq, ptr %gep41, align 4, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.br = load float, ptr %gep.1, align 4, !tbaa !108
  %gep41.1 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next
  store float %i.br, ptr %gep41.1, align 4, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bs = load float, ptr %gep.2, align 4, !tbaa !108
  %gep41.2 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.1
  store float %i.bs, ptr %gep41.2, align 4, !tbaa !108
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bt = load float, ptr %gep.3, align 4, !tbaa !108
  %gep41.3 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.2
  store float %i.bt, ptr %gep41.3, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.bu = load float, ptr %gep.4, align 4, !tbaa !108
  %gep41.4 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.3
  store float %i.bu, ptr %gep41.4, align 4, !tbaa !108
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bv = load float, ptr %gep.5, align 4, !tbaa !108
  %gep41.5 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.4
  store float %i.bv, ptr %gep41.5, align 4, !tbaa !108
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bw = load float, ptr %gep.6, align 4, !tbaa !108
  %gep41.6 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.5
  store float %i.bw, ptr %gep41.6, align 4, !tbaa !108
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bx = load float, ptr %gep.7, align 4, !tbaa !108
  %gep41.7 = getelementptr [4 x i8], ptr %invariant.gep40, i64 %indvars.iv.next.6
  store float %i.bx, ptr %gep41.7, align 4, !tbaa !108
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !222

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.by = add nsw i32 %.02830, 1                  ; 2 uses
  %exitcond36.not = icmp eq i32 %i.by, %i.ae
  br i1 %exitcond36.not, label %._crit_edge33.split, label %iter.check, !llvm.loop !223

._crit_edge33.split:                              ; preds = %._crit_edge, %.lr.ph32, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z21wrap_periodic_pmegridPK9gmx_pme_tN3gmx8ArrayRefIfEE(ptr nofree noundef readonly captures(none) %0, ptr nofree captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !138
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !139  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !104  ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !105  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.j = load i32, ptr %i.i, align 4, !tbaa !106  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !140  ; 4 uses
  %i.m = add i32 %i.l, -1                         ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.o = load i32, ptr %i.n, align 4, !tbaa !103  ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader87.lr.ph, label %._crit_edge92.split.thread

.preheader87.lr.ph:                               ; preds = %bb.a
  %i.q = icmp slt i32 %i.h, 1
  %i.r = icmp slt i32 %i.l, 2
  %brmerge = select i1 %i.q, i1 true, i1 %i.r
  br i1 %brmerge, label %._crit_edge92.split.thread161, label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %.preheader87.lr.ph
  %i.s = sext i32 %i.j to i64                     ; 3 uses
  %i.t = sext i32 %i.f to i64                     ; 2 uses
  %i.u = zext nneg i32 %i.h to i64
  %wide.trip.count125 = zext nneg i32 %i.o to i64
  %wide.trip.count120 = zext nneg i32 %i.h to i64 ; 3 uses
  %wide.trip.count = zext i32 %i.m to i64         ; 9 uses
  %invariant.gep163 = getelementptr [4 x i8], ptr %1, i64 %i.t
  %i.v = add nuw nsw i64 %wide.trip.count120, 4611686018427387903
  %i.w = mul i64 %i.v, %i.s
  %i.x = shl i64 %i.w, 2                          ; 2 uses
  %i.y = shl nsw i64 %i.t, 2                      ; 2 uses
  %i.z = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %i.aa = mul nsw i64 %i.s, %wide.trip.count120
  %i.ab = shl i64 %i.aa, 2
  %i.ac = getelementptr i8, ptr %1, i64 %i.x
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.y
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.z
  %i.af = getelementptr i8, ptr %1, i64 %i.y
  %i.ag = getelementptr i8, ptr %1, i64 %i.x
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.z
  %min.iters.check = icmp ult i32 %i.m, 4
  %stride.check = icmp slt i32 %i.j, 0
  %min.iters.check179 = icmp ult i32 %i.m, 32
  %i.ai = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  %n.vec187 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n192 = icmp eq i64 %n.vec187, %wide.trip.count
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge90
  %indvars.iv122 = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next123, %._crit_edge90 ] ; 3 uses
  %i.aj = mul i64 %i.ab, %indvars.iv122           ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.aj
  %scevgep176 = getelementptr i8, ptr %i.af, i64 %i.aj
  %scevgep177 = getelementptr i8, ptr %i.ah, i64 %i.aj
  %scevgep178 = getelementptr i8, ptr %1, i64 %i.aj
  %i.ak = mul nuw nsw i64 %indvars.iv122, %i.u
  %bound0 = icmp ult ptr %scevgep178, %scevgep
end_hunk_1
