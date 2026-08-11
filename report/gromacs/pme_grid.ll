inline.NumInlined: 401
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !13   ; 2 uses
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
  %i.ae = phi ptr [ %i.g, %.lr.ph ], [ %i.lk, %._crit_edge274 ]
  %.0194284 = phi i64 [ 0, %.lr.ph ], [ %i.li, %._crit_edge274 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [28 x i8], ptr %i.ae, i64 %.0194284 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 2 uses
  %.359 = select i1 %i.h, ptr %i.af, ptr %i.ag
  %.360 = select i1 %i.h, ptr %i.ag, ptr %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.356
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.357
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %.358
  %.0196 = load i32, ptr %i.ah, align 4, !tbaa !14 ; 3 uses
  %.0197 = load i32, ptr %.360, align 4, !tbaa !14 ; 2 uses
  %.0199 = load i32, ptr %.359, align 4, !tbaa !14 ; 2 uses
  %.0212 = load i32, ptr %i.aj, align 4, !tbaa !14 ; 4 uses
  %.0214 = load i32, ptr %i.ai, align 4, !tbaa !14 ; 4 uses
  %.0210 = load i32, ptr %i.ak, align 4, !tbaa !14 ; 5 uses
  %i.al = load ptr, ptr @debug, align 8, !tbaa !15 ; 2 uses
  %.not220 = icmp eq ptr %i.al, null
  br i1 %.not220, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load i32, ptr %i.i, align 4, !tbaa !17
  %i.an = load i32, ptr %i.j, align 4, !tbaa !108
  %i.ao = load i32, ptr %i.k, align 8, !tbaa !113 ; 2 uses
  %i.ap = sub nsw i32 %.0196, %i.ao               ; 2 uses
  %i.aq = add nsw i32 %i.ap, %.0214
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.al, ptr noundef nonnull @.str, i32 noundef %i.am, i32 noundef %i.an, i32 noundef %.0199, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef %i.aq) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = load i32, ptr %i.l, align 4, !tbaa !114 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  %i.au = icmp sgt i32 %.0214, 0
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  %.pre = load i32, ptr %i.m, align 8, !tbaa !115 ; 5 uses
  br i1 %or.cond, label %.preheader232.lr.ph.split, label %._crit_edge.split

.preheader232.lr.ph.split:                        ; preds = %bb.d
  %i.av = load i32, ptr %i.k, align 8, !tbaa !113 ; 2 uses
  %invariant.op = sub i32 %.0196, %i.av
  %i.aw = icmp sgt i32 %.pre, 0
  br i1 %i.aw, label %.preheader232.lr.ph.split.split.us, label %._crit_edge.split

.preheader232.lr.ph.split.split.us:               ; preds = %.preheader232.lr.ph.split
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !116 ; 3 uses
  %i.ay = load i32, ptr %i.o, align 4, !tbaa !117 ; 6 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !118 ; 8 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %wide.trip.count = zext nneg i32 %.pre to i64   ; 9 uses
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bc = sub i32 %.0196, %i.av
  %i.bd = mul i32 %i.ay, %i.bc                    ; 2 uses
  %i.be = mul i32 %i.ax, %i.ay
  %i.bf = mul i32 %i.ax, %i.ay
  %min.iters.check417 = icmp ult i32 %.pre, 8
  %i.bg = trunc nsw i64 %i.bb to i32
  %i.bh = icmp ugt i64 %i.bb, 4294967295
  %min.iters.check419 = icmp ult i32 %.pre, 32
  %i.bi = and i64 %wide.trip.count, 24
  %n.vec421 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %cmp.n430 = icmp eq i64 %n.vec421, %wide.trip.count
  %min.epilog.iters.check435 = icmp eq i64 %i.bi, 0
  %n.vec437 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %cmp.n443 = icmp eq i64 %n.vec437, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader232.us

.preheader232.us:                                 ; preds = %._crit_edge239.split.us.us, %.preheader232.lr.ph.split.split.us
  %.0201244.us = phi i64 [ 0, %.preheader232.lr.ph.split.split.us ], [ %indvars.iv.next.lcssa, %._crit_edge239.split.us.us ]
  %.0207242.us = phi i32 [ 0, %.preheader232.lr.ph.split.split.us ], [ %i.dw, %._crit_edge239.split.us.us ] ; 4 uses
  %i.bj = mul i32 %i.bf, %.0207242.us
  %i.bk = add i32 %i.bd, %i.bj
  %i.bl = mul i32 %i.be, %.0207242.us
  %i.bm = add i32 %i.bd, %i.bl
  %i.bn = mul i32 %i.ax, %.0207242.us
  %invariant.op241.us = add i32 %invariant.op, %i.bn
  br label %iter.check432

iter.check432:                                    ; preds = %._crit_edge.us.us, %.preheader232.us
  %.1202237.us.us = phi i64 [ %.0201244.us, %.preheader232.us ], [ %indvars.iv.next.lcssa, %._crit_edge.us.us ] ; 8 uses
  %.0205236.us.us.a = phi i32 [ 0, %.preheader232.us ], [ %i.dv, %._crit_edge.us.us ] ; 4 uses
  %5 = mul i32 %i.ay, %.0205236.us.us.a
  %6 = add i32 %i.bk, %5
  %i.bo = sext i32 %6 to i64
  %7 = shl nsw i64 %i.bo, 2
  %reass.add229.us.reass.us = add i32 %.0205236.us.us.a, %invariant.op241.us
  %reass.mul230.us.us = mul i32 %reass.add229.us.reass.us, %i.ay ; 7 uses
  br i1 %min.iters.check417, label %vec.epilog.scalar.ph433.preheader, label %vector.scevcheck414

vector.scevcheck414:                              ; preds = %iter.check432
  %8 = mul i32 %i.ay, %.0205236.us.us.a
  %9 = add i32 %i.bm, %8                          ; 2 uses
  %10 = add i32 %9, %i.bg
  %11 = icmp slt i32 %10, %9
  %12 = or i1 %11, %i.bh
  br i1 %12, label %vec.epilog.scalar.ph433.preheader, label %vector.memcheck415

vector.memcheck415:                               ; preds = %vector.scevcheck414
  %i.bp = shl i64 %.1202237.us.us, 2
  %i.bq = add i64 %i.bp, %i.ba
  %i.br = add i64 %7, %i.a
  %i.bs = sub i64 %i.br, %i.bq
  %diff.check416 = icmp ugt i64 %i.bs, -128
  br i1 %diff.check416, label %vec.epilog.scalar.ph433.preheader, label %vector.main.loop.iter.check418

vector.main.loop.iter.check418:                   ; preds = %vector.memcheck415
  br i1 %min.iters.check419, label %vec.epilog.ph436, label %vector.ph420

vector.ph420:                                     ; preds = %vector.main.loop.iter.check418
  %i.bt = add i64 %.1202237.us.us, %n.vec421      ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.az, i64 %.1202237.us.us
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next428, %vector.body422 ] ; 3 uses
  %i.bv = trunc nuw nsw i64 %index423 to i32
  %i.bw = add i32 %reass.mul230.us.us, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bx ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %wide.load424 = load <8 x float>, ptr %i.by, align 4, !tbaa !119
  %wide.load425 = load <8 x float>, ptr %i.bz, align 4, !tbaa !119
  %wide.load426 = load <8 x float>, ptr %i.ca, align 4, !tbaa !119
  %wide.load427 = load <8 x float>, ptr %i.cb, align 4, !tbaa !119
  %i.cc = getelementptr [4 x i8], ptr %i.bu, i64 %index423 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  store <8 x float> %wide.load424, ptr %i.cc, align 4, !tbaa !119
  store <8 x float> %wide.load425, ptr %i.cd, align 4, !tbaa !119
  store <8 x float> %wide.load426, ptr %i.ce, align 4, !tbaa !119
  store <8 x float> %wide.load427, ptr %i.cf, align 4, !tbaa !119
  %index.next428 = add nuw i64 %index423, 32      ; 2 uses
  %i.cg = icmp eq i64 %index.next428, %n.vec421
  br i1 %i.cg, label %middle.block429, label %vector.body422, !llvm.loop !120

middle.block429:                                  ; preds = %vector.body422
  br i1 %cmp.n430, label %._crit_edge.us.us, label %vec.epilog.iter.check434

vec.epilog.iter.check434:                         ; preds = %middle.block429
  br i1 %min.epilog.iters.check435, label %vec.epilog.scalar.ph433.preheader, label %vec.epilog.ph436, !prof !124

vec.epilog.ph436:                                 ; preds = %vector.main.loop.iter.check418, %vec.epilog.iter.check434
  %vec.epilog.resume.val431 = phi i64 [ %n.vec421, %vec.epilog.iter.check434 ], [ 0, %vector.main.loop.iter.check418 ]
  %i.ch = add i64 %.1202237.us.us, %n.vec437      ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %i.az, i64 %.1202237.us.us
  br label %vec.epilog.vector.body438

vec.epilog.vector.body438:                        ; preds = %vec.epilog.vector.body438, %vec.epilog.ph436
  %index439 = phi i64 [ %vec.epilog.resume.val431, %vec.epilog.ph436 ], [ %index.next441, %vec.epilog.vector.body438 ] ; 3 uses
  %i.cj = trunc nuw nsw i64 %index439 to i32
  %i.ck = add i32 %reass.mul230.us.us, %i.cj
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cl
  %wide.load440 = load <8 x float>, ptr %i.cm, align 4, !tbaa !119
  %i.cn = getelementptr [4 x i8], ptr %i.ci, i64 %index439
  store <8 x float> %wide.load440, ptr %i.cn, align 4, !tbaa !119
  %index.next441 = add nuw i64 %index439, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next441, %n.vec437
  br i1 %i.co, label %vec.epilog.middle.block442, label %vec.epilog.vector.body438, !llvm.loop !125

vec.epilog.middle.block442:                       ; preds = %vec.epilog.vector.body438
  br i1 %cmp.n443, label %._crit_edge.us.us, label %vec.epilog.scalar.ph433.preheader

vec.epilog.scalar.ph433.preheader:                ; preds = %vector.memcheck415, %vector.scevcheck414, %iter.check432, %vec.epilog.iter.check434, %vec.epilog.middle.block442
  %indvars.iv298.ph = phi i64 [ 0, %iter.check432 ], [ 0, %vector.scevcheck414 ], [ 0, %vector.memcheck415 ], [ %n.vec421, %vec.epilog.iter.check434 ], [ %n.vec437, %vec.epilog.middle.block442 ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %.1202237.us.us, %iter.check432 ], [ %.1202237.us.us, %vector.scevcheck414 ], [ %.1202237.us.us, %vector.memcheck415 ], [ %i.bt, %vec.epilog.iter.check434 ], [ %i.ch, %vec.epilog.middle.block442 ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph433.prol.loopexit, label %vec.epilog.scalar.ph433.prol

vec.epilog.scalar.ph433.prol:                     ; preds = %vec.epilog.scalar.ph433.preheader, %vec.epilog.scalar.ph433.prol
  %indvars.iv298.prol.a = phi i64 [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph433.prol ], [ %indvars.iv298.ph, %vec.epilog.scalar.ph433.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph433.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph433.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph433.prol ], [ 0, %vec.epilog.scalar.ph433.preheader ]
  %i.cp = trunc nuw nsw i64 %indvars.iv298.prol.a to i32
  %i.cq = add i32 %reass.mul230.us.us, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !119
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.prol
  store float %i.ct, ptr %i.cu, align 4, !tbaa !119
  %indvars.iv.next299.prol = add nuw nsw i64 %indvars.iv298.prol.a, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph433.prol.loopexit, label %vec.epilog.scalar.ph433.prol, !llvm.loop !126

vec.epilog.scalar.ph433.prol.loopexit:            ; preds = %vec.epilog.scalar.ph433.prol, %vec.epilog.scalar.ph433.preheader
  %indvars.iv.next.lcssa485.unr = phi i64 [ poison, %vec.epilog.scalar.ph433.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph433.prol ]
  %indvars.iv298.unr.a = phi i64 [ %indvars.iv298.ph, %vec.epilog.scalar.ph433.preheader ], [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph433.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph433.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph433.prol ]
  %i.cv = sub nsw i64 %indvars.iv298.ph, %wide.trip.count
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %._crit_edge.us.us, label %vec.epilog.scalar.ph433.preheader.new

vec.epilog.scalar.ph433.preheader.new:            ; preds = %vec.epilog.scalar.ph433.prol.loopexit
  %invariant.op497 = add i32 1, %reass.mul230.us.us
  %invariant.op498 = add i32 2, %reass.mul230.us.us
  %invariant.op500 = add i32 3, %reass.mul230.us.us
  br label %vec.epilog.scalar.ph433

vec.epilog.scalar.ph433:                          ; preds = %vec.epilog.scalar.ph433, %vec.epilog.scalar.ph433.preheader.new
  %indvars.iv298.a = phi i64 [ %indvars.iv298.unr.a, %vec.epilog.scalar.ph433.preheader.new ], [ %indvars.iv.next299.3, %vec.epilog.scalar.ph433 ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph433.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph433 ] ; 5 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv298.a to i32
  %i.cy = add i32 %reass.mul230.us.us, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !119
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store float %i.db, ptr %i.dc, align 4, !tbaa !119
  %i.dd = trunc i64 %indvars.iv298.a to i32
  %.reass = add i32 %i.dd, %invariant.op497
  %i.de = sext i32 %.reass to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %1, i64 %i.de
  %i.dg = load float, ptr %i.df, align 4, !tbaa !119
  %i.dh = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.di = getelementptr i8, ptr %i.dh, i64 4
  store float %i.dg, ptr %i.di, align 4, !tbaa !119
  %i.dj = trunc i64 %indvars.iv298.a to i32
  %.reass499 = add i32 %i.dj, %invariant.op498
  %i.dk = sext i32 %.reass499 to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !119
  %i.dn = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  store float %i.dm, ptr %i.do, align 4, !tbaa !119
  %i.dp = trunc i64 %indvars.iv298.a to i32
  %.reass501 = add i32 %i.dp, %invariant.op500
  %i.dq = sext i32 %.reass501 to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !119
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.du = getelementptr i8, ptr %i.dt, i64 12
  store float %i.ds, ptr %i.du, align 4, !tbaa !119
  %indvars.iv.next299.3 = add nuw nsw i64 %indvars.iv298.a, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next299.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph433, !llvm.loop !128

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph433.prol.loopexit, %vec.epilog.scalar.ph433, %vec.epilog.middle.block442, %middle.block429
  %indvars.iv.next.lcssa = phi i64 [ %i.ch, %vec.epilog.middle.block442 ], [ %i.bt, %middle.block429 ], [ %indvars.iv.next.lcssa485.unr, %vec.epilog.scalar.ph433.prol.loopexit ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph433 ] ; 2 uses
  %i.dv = add nuw nsw i32 %.0205236.us.us.a, 1    ; 2 uses
  %exitcond303.not = icmp eq i32 %i.dv, %.0214
  br i1 %exitcond303.not, label %._crit_edge239.split.us.us, label %iter.check432, !llvm.loop !129

._crit_edge239.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.dw = add nuw nsw i32 %.0207242.us, 1         ; 2 uses
  %exitcond304.not = icmp eq i32 %i.dw, %i.as
  br i1 %exitcond304.not, label %._crit_edge.split, label %.preheader232.us, !llvm.loop !130

._crit_edge.split:                                ; preds = %._crit_edge239.split.us.us, %.preheader232.lr.ph.split, %bb.d
  %i.dx = mul nsw i32 %.pre, %i.as                ; 2 uses
  %i.dy = load ptr, ptr %i.p, align 8, !tbaa !118
  %i.dz = mul nsw i32 %i.dx, %.0214
  %i.ea = trunc i64 %.0194284 to i32              ; 2 uses
  %i.eb = load ptr, ptr %i.r, align 8, !tbaa !118
  %i.ec = mul nsw i32 %i.dx, %.0210
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !131
  %i.ee = call noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %i.dy, i32 noundef %i.dz, ptr noundef %i.q, i32 noundef %.0199, i32 noundef %i.ea, ptr noundef %i.eb, i32 noundef %i.ec, ptr noundef %i.q, i32 noundef %.0197, i32 noundef %i.ea, ptr noundef %i.ed, ptr noundef nonnull %4) ; 0 uses
  %i.ef = load ptr, ptr @debug, align 8, !tbaa !15 ; 2 uses
  %.not221 = icmp eq ptr %i.ef, null
  br i1 %.not221, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.split
  %i.eg = load i32, ptr %i.i, align 4, !tbaa !17
  %i.eh = load i32, ptr %i.j, align 4, !tbaa !108
  %i.ei = load i32, ptr %i.k, align 8, !tbaa !113 ; 2 uses
  %i.ej = sub nsw i32 %.0212, %i.ei               ; 2 uses
  %i.ek = add nsw i32 %i.ej, %.0210
  %i.el = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ef, ptr noundef nonnull @.str.1, i32 noundef %i.eg, i32 noundef %i.eh, i32 noundef %.0197, i32 noundef %i.ei, i32 noundef %i.ej, i32 noundef %i.ek) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.split
  %i.em = load i32, ptr %i.l, align 4, !tbaa !114 ; 3 uses
  %i.en = icmp sgt i32 %i.em, 0
  %i.eo = icmp sgt i32 %.0210, 0
  %or.cond355 = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond355, label %.preheader231.lr.ph.split.us, label %._crit_edge274

.preheader231.lr.ph.split.us:                     ; preds = %bb.f
  %i.ep = load i32, ptr %i.k, align 8, !tbaa !113 ; 3 uses
  %invariant.op259.us = sub i32 %.0212, %i.ep     ; 2 uses
  %i.eq = load i32, ptr %i.m, align 8, !tbaa !115 ; 6 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.preheader231.lr.ph.split.us.split.us, label %._crit_edge274

.preheader231.lr.ph.split.us.split.us:            ; preds = %.preheader231.lr.ph.split.us
  %i.es = load ptr, ptr %i.r, align 8, !tbaa !118 ; 17 uses
  %i.et = load i32, ptr %i.n, align 8, !tbaa !116 ; 6 uses
  %i.eu = load i32, ptr %i.o, align 4, !tbaa !117 ; 12 uses
  %wide.trip.count323 = zext nneg i32 %i.eq to i64 ; 19 uses
  br i1 %i.h, label %.preheader231.us.us.us.preheader, label %.preheader231.us.us.preheader

.preheader231.us.us.preheader:                    ; preds = %.preheader231.lr.ph.split.us.split.us
  %i.ev = ptrtoaddr ptr %i.es to i64
  %i.ew = add nsw i64 %wide.trip.count323, -1     ; 2 uses
  %i.ex = sub i32 %.0212, %i.ep
  %i.ey = mul i32 %i.eu, %i.ex                    ; 2 uses
  %i.ez = mul i32 %i.et, %i.eu
  %i.fa = mul i32 %i.et, %i.eu
  %min.iters.check385 = icmp ult i32 %i.eq, 8
  %i.fb = trunc nsw i64 %i.ew to i32
  %i.fc = icmp ugt i64 %i.ew, 4294967295
  %min.iters.check387 = icmp ult i32 %i.eq, 32
  %i.fd = and i64 %wide.trip.count323, 24
  %n.vec389 = and i64 %wide.trip.count323, 2147483616 ; 5 uses
  %cmp.n398 = icmp eq i64 %n.vec389, %wide.trip.count323
  %min.epilog.iters.check403 = icmp eq i64 %i.fd, 0
  %n.vec405 = and i64 %wide.trip.count323, 2147483640 ; 4 uses
  %cmp.n411 = icmp eq i64 %n.vec405, %wide.trip.count323
  %xtraiter488 = and i64 %wide.trip.count323, 3   ; 2 uses
  %lcmp.mod489.not = icmp eq i64 %xtraiter488, 0
  br label %.preheader231.us.us

.preheader231.us.us.us.preheader:                 ; preds = %.preheader231.lr.ph.split.us.split.us
  %i.fe = add nsw i64 %wide.trip.count323, -1     ; 2 uses
  %i.ff = sub i32 %.0212, %i.ep
  %i.fg = mul i32 %i.eu, %i.ff                    ; 2 uses
  %i.fh = mul i32 %i.et, %i.eu
  %i.fi = shl nuw nsw i64 %wide.trip.count323, 2  ; 2 uses
  %scevgep362 = getelementptr i8, ptr %i.es, i64 %i.fi
  %i.fj = mul i32 %i.et, %i.eu
  %scevgep365 = getelementptr i8, ptr %1, i64 %i.fi
  %min.iters.check = icmp ult i32 %i.eq, 8
  %i.fk = trunc nsw i64 %i.fe to i32
  %i.fl = icmp ugt i64 %i.fe, 4294967295
  %min.iters.check367 = icmp ult i32 %i.eq, 32
  %i.fm = and i64 %wide.trip.count323, 24
  %n.vec = and i64 %wide.trip.count323, 2147483616 ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count323
  %min.epilog.iters.check = icmp eq i64 %i.fm, 0
  %n.vec375 = and i64 %wide.trip.count323, 2147483640 ; 4 uses
  %cmp.n380 = icmp eq i64 %n.vec375, %wide.trip.count323
  %xtraiter491 = and i64 %wide.trip.count323, 3   ; 2 uses
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  br label %.preheader231.us.us.us

.preheader231.us.us.us:                           ; preds = %.preheader231.us.us.us.preheader, %._crit_edge257.split.us.split.us.us.us.us
  %.3273.us.us.us = phi i64 [ %indvars.iv.next317.lcssa, %._crit_edge257.split.us.split.us.us.us.us ], [ 0, %.preheader231.us.us.us.preheader ]
  %.1208270.us.us.us = phi i32 [ %i.it, %._crit_edge257.split.us.split.us.us.us.us ], [ 0, %.preheader231.us.us.us.preheader ] ; 4 uses
  %i.fn = mul i32 %i.fj, %.1208270.us.us.us
  %i.fo = add i32 %i.fg, %i.fn
  %i.fp = mul i32 %i.fh, %.1208270.us.us.us
  %i.fq = add i32 %i.fg, %i.fp
  %i.fr = mul i32 %i.et, %.1208270.us.us.us
  %invariant.op269.us.us.us = add i32 %invariant.op259.us, %i.fr
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge252.split.us.us.us.us.us.us, %.preheader231.us.us.us
  %.4255.us.us.us.us.us = phi i64 [ %.3273.us.us.us, %.preheader231.us.us.us ], [ %indvars.iv.next317.lcssa, %._crit_edge252.split.us.us.us.us.us.us ] ; 8 uses
  %.1206254.us.us.us.us.us = phi i32 [ 0, %.preheader231.us.us.us ], [ %i.is, %._crit_edge252.split.us.us.us.us.us.us ] ; 4 uses
  %i.fs = mul i32 %i.eu, %.1206254.us.us.us.us.us
  %i.ft = add i32 %i.fo, %i.fs
  %i.fu = sext i32 %i.ft to i64
  %i.fv = shl nsw i64 %i.fu, 2                    ; 2 uses
  %scevgep364 = getelementptr i8, ptr %1, i64 %i.fv
  %scevgep366 = getelementptr i8, ptr %scevgep365, i64 %i.fv
  %reass.add226.us.us.us.reass.us.us.us = add i32 %.1206254.us.us.us.us.us, %invariant.op269.us.us.us
  %reass.mul227.us.us.us.us.us.us = mul i32 %reass.add226.us.us.us.reass.us.us.us, %i.eu ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fw = mul i32 %i.eu, %.1206254.us.us.us.us.us
  %i.fx = add i32 %i.fq, %i.fw                    ; 2 uses
  %i.fy = add i32 %i.fx, %i.fk
  %i.fz = icmp slt i32 %i.fy, %i.fx
  %i.ga = or i1 %i.fz, %i.fl
  br i1 %i.ga, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %13 = shl i64 %.4255.us.us.us.us.us, 2          ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.es, i64 %13
  %scevgep363 = getelementptr i8, ptr %scevgep362, i64 %13
  %bound0 = icmp ult ptr %scevgep, %scevgep366
  %bound1 = icmp ult ptr %scevgep364, %scevgep363
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check367, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gb = add i64 %.4255.us.us.us.us.us, %n.vec   ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %i.es, i64 %.4255.us.us.us.us.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gd = getelementptr [4 x i8], ptr %i.gc, i64 %index ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 96
  %wide.load = load <8 x float>, ptr %i.gd, align 4, !tbaa !119, !alias.scope !132, !noalias !135
  %wide.load368 = load <8 x float>, ptr %i.ge, align 4, !tbaa !119, !alias.scope !132, !noalias !135
  %wide.load369 = load <8 x float>, ptr %i.gf, align 4, !tbaa !119, !alias.scope !132, !noalias !135
  %wide.load370 = load <8 x float>, ptr %i.gg, align 4, !tbaa !119, !alias.scope !132, !noalias !135
  %i.gh = trunc nuw nsw i64 %index to i32
  %i.gi = add i32 %reass.mul227.us.us.us.us.us.us, %i.gh
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gj ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 64 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 96 ; 2 uses
  %wide.load371 = load <8 x float>, ptr %i.gk, align 4, !tbaa !119, !alias.scope !135
  %wide.load372 = load <8 x float>, ptr %i.gl, align 4, !tbaa !119, !alias.scope !135
  %wide.load373 = load <8 x float>, ptr %i.gm, align 4, !tbaa !119, !alias.scope !135
  %wide.load374 = load <8 x float>, ptr %i.gn, align 4, !tbaa !119, !alias.scope !135
  %i.go = fadd <8 x float> %wide.load, %wide.load371
  %i.gp = fadd <8 x float> %wide.load368, %wide.load372
  %i.gq = fadd <8 x float> %wide.load369, %wide.load373
  %i.gr = fadd <8 x float> %wide.load370, %wide.load374
  store <8 x float> %i.go, ptr %i.gk, align 4, !tbaa !119, !alias.scope !135
  store <8 x float> %i.gp, ptr %i.gl, align 4, !tbaa !119, !alias.scope !135
  store <8 x float> %i.gq, ptr %i.gm, align 4, !tbaa !119, !alias.scope !135
  store <8 x float> %i.gr, ptr %i.gn, align 4, !tbaa !119, !alias.scope !135
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !124

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gt = add i64 %.4255.us.us.us.us.us, %n.vec375 ; 2 uses
  %i.gu = getelementptr [4 x i8], ptr %i.es, i64 %.4255.us.us.us.us.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next379, %vec.epilog.vector.body ] ; 3 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gu, i64 %index376
  %wide.load377 = load <8 x float>, ptr %i.gv, align 4, !tbaa !119, !alias.scope !132, !noalias !135
  %i.gw = trunc nuw nsw i64 %index376 to i32
  %i.gx = add i32 %reass.mul227.us.us.us.us.us.us, %i.gw
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gy ; 2 uses
  %wide.load378 = load <8 x float>, ptr %i.gz, align 4, !tbaa !119, !alias.scope !135
  %i.ha = fadd <8 x float> %wide.load377, %wide.load378
  store <8 x float> %i.ha, ptr %i.gz, align 4, !tbaa !119, !alias.scope !135
  %index.next379 = add nuw i64 %index376, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next379, %n.vec375
  br i1 %i.hb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n380, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv318.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec375, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv316.ph = phi i64 [ %.4255.us.us.us.us.us, %iter.check ], [ %.4255.us.us.us.us.us, %vector.scevcheck ], [ %.4255.us.us.us.us.us, %vector.memcheck ], [ %i.gb, %vec.epilog.iter.check ], [ %i.gt, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod492.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv318.prol = phi i64 [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv316.prol = phi i64 [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter493 = phi i64 [ %prol.iter493.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv316.prol
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !119
  %i.he = trunc nuw nsw i64 %indvars.iv318.prol to i32
  %i.hf = add i32 %reass.mul227.us.us.us.us.us.us, %i.he
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hg ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !119
  %i.hj = fadd float %i.hd, %i.hi
  store float %i.hj, ptr %i.hh, align 4, !tbaa !119
  %indvars.iv.next317.prol = add nsw i64 %indvars.iv316.prol, 1 ; 3 uses
  %indvars.iv.next319.prol = add nuw nsw i64 %indvars.iv318.prol, 1 ; 2 uses
  %prol.iter493.next = add i64 %prol.iter493, 1   ; 2 uses
  %prol.iter493.cmp.not = icmp eq i64 %prol.iter493.next, %xtraiter491
  br i1 %prol.iter493.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !139

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next317.lcssa487.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv318.unr = phi i64 [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv316.unr = phi i64 [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %i.hk = sub nsw i64 %indvars.iv318.ph, %wide.trip.count323
  %i.hl = icmp ugt i64 %i.hk, -4
  br i1 %i.hl, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op508 = add i32 1, %reass.mul227.us.us.us.us.us.us
  %invariant.op510 = add i32 2, %reass.mul227.us.us.us.us.us.us
  %invariant.op512 = add i32 3, %reass.mul227.us.us.us.us.us.us
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv318 = phi i64 [ %indvars.iv318.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next319.3, %vec.epilog.scalar.ph ] ; 5 uses
  %indvars.iv316 = phi i64 [ %indvars.iv316.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next317.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv316
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !119
  %i.ho = trunc nuw nsw i64 %indvars.iv318 to i32
  %i.hp = add i32 %reass.mul227.us.us.us.us.us.us, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hq ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !119
  %i.ht = fadd float %i.hn, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !119
  %i.hu = getelementptr [4 x i8], ptr %i.es, i64 %indvars.iv316
  %i.hv = getelementptr i8, ptr %i.hu, i64 4
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !119
  %i.hx = trunc i64 %indvars.iv318 to i32
  %.reass509 = add i32 %i.hx, %invariant.op508
  %i.hy = sext i32 %.reass509 to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hy ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !119
  %i.ib = fadd float %i.hw, %i.ia
  store float %i.ib, ptr %i.hz, align 4, !tbaa !119
  %i.ic = getelementptr [4 x i8], ptr %i.es, i64 %indvars.iv316
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !119
  %i.if = trunc i64 %indvars.iv318 to i32
  %.reass511 = add i32 %i.if, %invariant.op510
  %i.ig = sext i32 %.reass511 to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ig ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !119
  %i.ij = fadd float %i.ie, %i.ii
  store float %i.ij, ptr %i.ih, align 4, !tbaa !119
  %i.ik = getelementptr [4 x i8], ptr %i.es, i64 %indvars.iv316
  %i.il = getelementptr i8, ptr %i.ik, i64 12
  %i.im = load float, ptr %i.il, align 4, !tbaa !119
  %i.in = trunc i64 %indvars.iv318 to i32
  %.reass513 = add i32 %i.in, %invariant.op512
  %i.io = sext i32 %.reass513 to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %1, i64 %i.io ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !119
  %i.ir = fadd float %i.im, %i.iq
  store float %i.ir, ptr %i.ip, align 4, !tbaa !119
  %indvars.iv.next317.3 = add nsw i64 %indvars.iv316, 4 ; 2 uses
  %indvars.iv.next319.3 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %exitcond324.not.3 = icmp eq i64 %indvars.iv.next319.3, %wide.trip.count323
  br i1 %exitcond324.not.3, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph, !llvm.loop !140

._crit_edge252.split.us.us.us.us.us.us:           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next317.lcssa = phi i64 [ %i.gt, %vec.epilog.middle.block ], [ %i.gb, %middle.block ], [ %indvars.iv.next317.lcssa487.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next317.3, %vec.epilog.scalar.ph ] ; 2 uses
  %i.is = add nuw nsw i32 %.1206254.us.us.us.us.us, 1 ; 2 uses
  %exitcond325.not = icmp eq i32 %i.is, %.0210
  br i1 %exitcond325.not, label %._crit_edge257.split.us.split.us.us.us.us, label %iter.check, !llvm.loop !141

._crit_edge257.split.us.split.us.us.us.us:        ; preds = %._crit_edge252.split.us.us.us.us.us.us
  %i.it = add nuw nsw i32 %.1208270.us.us.us, 1   ; 2 uses
  %exitcond326.not = icmp eq i32 %i.it, %i.em
  br i1 %exitcond326.not, label %._crit_edge274, label %.preheader231.us.us.us, !llvm.loop !142

.preheader231.us.us:                              ; preds = %.preheader231.us.us.preheader, %._crit_edge257.split.us.split.us281.us
  %.3273.us.us = phi i64 [ %indvars.iv.next306.lcssa, %._crit_edge257.split.us.split.us281.us ], [ 0, %.preheader231.us.us.preheader ]
  %.1208270.us.us = phi i32 [ %i.lh, %._crit_edge257.split.us.split.us281.us ], [ 0, %.preheader231.us.us.preheader ] ; 4 uses
  %i.iu = mul i32 %i.fa, %.1208270.us.us
  %i.iv = add i32 %i.ey, %i.iu
  %i.iw = mul i32 %i.ez, %.1208270.us.us
  %i.ix = add i32 %i.ey, %i.iw
  %i.iy = mul i32 %i.et, %.1208270.us.us
  %invariant.op268.us.us = add i32 %invariant.op259.us, %i.iy
  br label %iter.check400

iter.check400:                                    ; preds = %.preheader231.us.us, %._crit_edge252.split.us263.us.us
  %.4255.us.us279.us = phi i64 [ %.3273.us.us, %.preheader231.us.us ], [ %indvars.iv.next306.lcssa, %._crit_edge252.split.us263.us.us ] ; 8 uses
  %.1206254.us.us280.us.a = phi i32 [ 0, %.preheader231.us.us ], [ %i.lg, %._crit_edge252.split.us263.us.us ] ; 4 uses
  %14 = mul i32 %i.eu, %.1206254.us.us280.us.a
  %15 = add i32 %i.iv, %14
  %i.iz = sext i32 %15 to i64
  %16 = shl nsw i64 %i.iz, 2
  %reass.add.us.reass.us.us = add i32 %.1206254.us.us280.us.a, %invariant.op268.us.us
  %reass.mul.us.us.us = mul i32 %reass.add.us.reass.us.us, %i.eu ; 7 uses
  br i1 %min.iters.check385, label %vec.epilog.scalar.ph401.preheader, label %vector.scevcheck383

vector.scevcheck383:                              ; preds = %iter.check400
  %17 = mul i32 %i.eu, %.1206254.us.us280.us.a
  %18 = add i32 %i.ix, %17                        ; 2 uses
  %19 = add i32 %18, %i.fb
  %20 = icmp slt i32 %19, %18
  %21 = or i1 %20, %i.fc
  br i1 %21, label %vec.epilog.scalar.ph401.preheader, label %vector.memcheck384

vector.memcheck384:                               ; preds = %vector.scevcheck383
  %i.ja = shl i64 %.4255.us.us279.us, 2
  %i.jb = add i64 %16, %i.a
  %i.jc = add i64 %i.ja, %i.ev
  %i.jd = sub i64 %i.jc, %i.jb
  %diff.check = icmp ugt i64 %i.jd, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph401.preheader, label %vector.main.loop.iter.check386

vector.main.loop.iter.check386:                   ; preds = %vector.memcheck384
  br i1 %min.iters.check387, label %vec.epilog.ph404, label %vector.ph388

vector.ph388:                                     ; preds = %vector.main.loop.iter.check386
  %i.je = add i64 %.4255.us.us279.us, %n.vec389   ; 2 uses
  %i.jf = getelementptr [4 x i8], ptr %i.es, i64 %.4255.us.us279.us
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next396, %vector.body390 ] ; 3 uses
  %i.jg = getelementptr [4 x i8], ptr %i.jf, i64 %index391 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 96
  %wide.load392 = load <8 x float>, ptr %i.jg, align 4, !tbaa !119
  %wide.load393 = load <8 x float>, ptr %i.jh, align 4, !tbaa !119
  %wide.load394 = load <8 x float>, ptr %i.ji, align 4, !tbaa !119
  %wide.load395 = load <8 x float>, ptr %i.jj, align 4, !tbaa !119
  %i.jk = trunc nuw nsw i64 %index391 to i32
  %i.jl = add i32 %reass.mul.us.us.us, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jm ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 96
  store <8 x float> %wide.load392, ptr %i.jn, align 4, !tbaa !119
  store <8 x float> %wide.load393, ptr %i.jo, align 4, !tbaa !119
  store <8 x float> %wide.load394, ptr %i.jp, align 4, !tbaa !119
  store <8 x float> %wide.load395, ptr %i.jq, align 4, !tbaa !119
  %index.next396 = add nuw i64 %index391, 32      ; 2 uses
  %i.jr = icmp eq i64 %index.next396, %n.vec389
  br i1 %i.jr, label %middle.block397, label %vector.body390, !llvm.loop !143

middle.block397:                                  ; preds = %vector.body390
  br i1 %cmp.n398, label %._crit_edge252.split.us263.us.us, label %vec.epilog.iter.check402

vec.epilog.iter.check402:                         ; preds = %middle.block397
  br i1 %min.epilog.iters.check403, label %vec.epilog.scalar.ph401.preheader, label %vec.epilog.ph404, !prof !124

vec.epilog.ph404:                                 ; preds = %vector.main.loop.iter.check386, %vec.epilog.iter.check402
  %vec.epilog.resume.val399 = phi i64 [ %n.vec389, %vec.epilog.iter.check402 ], [ 0, %vector.main.loop.iter.check386 ]
  %i.js = add i64 %.4255.us.us279.us, %n.vec405   ; 2 uses
  %i.jt = getelementptr [4 x i8], ptr %i.es, i64 %.4255.us.us279.us
  br label %vec.epilog.vector.body406

vec.epilog.vector.body406:                        ; preds = %vec.epilog.vector.body406, %vec.epilog.ph404
  %index407 = phi i64 [ %vec.epilog.resume.val399, %vec.epilog.ph404 ], [ %index.next409, %vec.epilog.vector.body406 ] ; 3 uses
  %i.ju = getelementptr [4 x i8], ptr %i.jt, i64 %index407
  %wide.load408 = load <8 x float>, ptr %i.ju, align 4, !tbaa !119
  %i.jv = trunc nuw nsw i64 %index407 to i32
  %i.jw = add i32 %reass.mul.us.us.us, %i.jv
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jx
  store <8 x float> %wide.load408, ptr %i.jy, align 4, !tbaa !119
  %index.next409 = add nuw i64 %index407, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next409, %n.vec405
  br i1 %i.jz, label %vec.epilog.middle.block410, label %vec.epilog.vector.body406, !llvm.loop !144

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body406
  br i1 %cmp.n411, label %._crit_edge252.split.us263.us.us, label %vec.epilog.scalar.ph401.preheader

vec.epilog.scalar.ph401.preheader:                ; preds = %vector.memcheck384, %vector.scevcheck383, %iter.check400, %vec.epilog.iter.check402, %vec.epilog.middle.block410
  %indvars.iv307.ph = phi i64 [ 0, %iter.check400 ], [ 0, %vector.scevcheck383 ], [ 0, %vector.memcheck384 ], [ %n.vec389, %vec.epilog.iter.check402 ], [ %n.vec405, %vec.epilog.middle.block410 ] ; 3 uses
  %indvars.iv305.ph = phi i64 [ %.4255.us.us279.us, %iter.check400 ], [ %.4255.us.us279.us, %vector.scevcheck383 ], [ %.4255.us.us279.us, %vector.memcheck384 ], [ %i.je, %vec.epilog.iter.check402 ], [ %i.js, %vec.epilog.middle.block410 ] ; 2 uses
  br i1 %lcmp.mod489.not, label %vec.epilog.scalar.ph401.prol.loopexit, label %vec.epilog.scalar.ph401.prol

vec.epilog.scalar.ph401.prol:                     ; preds = %vec.epilog.scalar.ph401.preheader, %vec.epilog.scalar.ph401.prol
  %indvars.iv307.prol = phi i64 [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph401.prol ], [ %indvars.iv307.ph, %vec.epilog.scalar.ph401.preheader ] ; 2 uses
  %indvars.iv305.prol = phi i64 [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph401.prol ], [ %indvars.iv305.ph, %vec.epilog.scalar.ph401.preheader ] ; 2 uses
  %prol.iter490 = phi i64 [ %prol.iter490.next, %vec.epilog.scalar.ph401.prol ], [ 0, %vec.epilog.scalar.ph401.preheader ]
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv305.prol
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !119
  %i.kc = trunc nuw nsw i64 %indvars.iv307.prol to i32
  %i.kd = add i32 %reass.mul.us.us.us, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ke
  store float %i.kb, ptr %i.kf, align 4, !tbaa !119
  %indvars.iv.next306.prol = add nsw i64 %indvars.iv305.prol, 1 ; 3 uses
  %indvars.iv.next308.prol = add nuw nsw i64 %indvars.iv307.prol, 1 ; 2 uses
  %prol.iter490.next = add i64 %prol.iter490, 1   ; 2 uses
  %prol.iter490.cmp.not = icmp eq i64 %prol.iter490.next, %xtraiter488
  br i1 %prol.iter490.cmp.not, label %vec.epilog.scalar.ph401.prol.loopexit, label %vec.epilog.scalar.ph401.prol, !llvm.loop !145

vec.epilog.scalar.ph401.prol.loopexit:            ; preds = %vec.epilog.scalar.ph401.prol, %vec.epilog.scalar.ph401.preheader
  %indvars.iv.next306.lcssa486.unr = phi i64 [ poison, %vec.epilog.scalar.ph401.preheader ], [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph401.prol ]
  %indvars.iv307.unr = phi i64 [ %indvars.iv307.ph, %vec.epilog.scalar.ph401.preheader ], [ %indvars.iv.next308.prol, %vec.epilog.scalar.ph401.prol ]
  %indvars.iv305.unr = phi i64 [ %indvars.iv305.ph, %vec.epilog.scalar.ph401.preheader ], [ %indvars.iv.next306.prol, %vec.epilog.scalar.ph401.prol ]
  %i.kg = sub nsw i64 %indvars.iv307.ph, %wide.trip.count323
  %i.kh = icmp ugt i64 %i.kg, -4
  br i1 %i.kh, label %._crit_edge252.split.us263.us.us, label %vec.epilog.scalar.ph401.preheader.new

vec.epilog.scalar.ph401.preheader.new:            ; preds = %vec.epilog.scalar.ph401.prol.loopexit
  %invariant.op502 = add i32 1, %reass.mul.us.us.us
  %invariant.op504 = add i32 2, %reass.mul.us.us.us
  %invariant.op506 = add i32 3, %reass.mul.us.us.us
  br label %vec.epilog.scalar.ph401

vec.epilog.scalar.ph401:                          ; preds = %vec.epilog.scalar.ph401, %vec.epilog.scalar.ph401.preheader.new
  %indvars.iv307 = phi i64 [ %indvars.iv307.unr, %vec.epilog.scalar.ph401.preheader.new ], [ %indvars.iv.next308.3, %vec.epilog.scalar.ph401 ] ; 5 uses
  %indvars.iv305 = phi i64 [ %indvars.iv305.unr, %vec.epilog.scalar.ph401.preheader.new ], [ %indvars.iv.next306.3, %vec.epilog.scalar.ph401 ] ; 5 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv305
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !119
  %i.kk = trunc nuw nsw i64 %indvars.iv307 to i32
  %i.kl = add i32 %reass.mul.us.us.us, %i.kk
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.km
  store float %i.kj, ptr %i.kn, align 4, !tbaa !119
  %i.ko = getelementptr [4 x i8], ptr %i.es, i64 %indvars.iv305
  %i.kp = getelementptr i8, ptr %i.ko, i64 4
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !119
  %i.kr = trunc i64 %indvars.iv307 to i32
  %.reass503 = add i32 %i.kr, %invariant.op502
  %i.ks = sext i32 %.reass503 to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ks
  store float %i.kq, ptr %i.kt, align 4, !tbaa !119
  %i.ku = getelementptr [4 x i8], ptr %i.es, i64 %indvars.iv305
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !119
  %i.kx = trunc i64 %indvars.iv307 to i32
  %.reass505 = add i32 %i.kx, %invariant.op504
  %i.ky = sext i32 %.reass505 to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ky
  store float %i.kw, ptr %i.kz, align 4, !tbaa !119
  %i.la = getelementptr [4 x i8], ptr %i.es, i64 %indvars.iv305
  %i.lb = getelementptr i8, ptr %i.la, i64 12
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !119
  %i.ld = trunc i64 %indvars.iv307 to i32
  %.reass507 = add i32 %i.ld, %invariant.op506
  %i.le = sext i32 %.reass507 to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.le
  store float %i.lc, ptr %i.lf, align 4, !tbaa !119
  %indvars.iv.next306.3 = add nsw i64 %indvars.iv305, 4 ; 2 uses
  %indvars.iv.next308.3 = add nuw nsw i64 %indvars.iv307, 4 ; 2 uses
  %exitcond313.not.3 = icmp eq i64 %indvars.iv.next308.3, %wide.trip.count323
  br i1 %exitcond313.not.3, label %._crit_edge252.split.us263.us.us, label %vec.epilog.scalar.ph401, !llvm.loop !146

._crit_edge252.split.us263.us.us:                 ; preds = %vec.epilog.scalar.ph401.prol.loopexit, %vec.epilog.scalar.ph401, %vec.epilog.middle.block410, %middle.block397
  %indvars.iv.next306.lcssa = phi i64 [ %i.js, %vec.epilog.middle.block410 ], [ %i.je, %middle.block397 ], [ %indvars.iv.next306.lcssa486.unr, %vec.epilog.scalar.ph401.prol.loopexit ], [ %indvars.iv.next306.3, %vec.epilog.scalar.ph401 ] ; 2 uses
  %i.lg = add nuw nsw i32 %.1206254.us.us280.us.a, 1 ; 2 uses
  %exitcond314.not = icmp eq i32 %i.lg, %.0210
  br i1 %exitcond314.not, label %._crit_edge257.split.us.split.us281.us, label %iter.check400, !llvm.loop !141

._crit_edge257.split.us.split.us281.us:           ; preds = %._crit_edge252.split.us263.us.us
  %i.lh = add nuw nsw i32 %.1208270.us.us, 1      ; 2 uses
  %exitcond315.not = icmp eq i32 %i.lh, %i.em
  br i1 %exitcond315.not, label %._crit_edge274, label %.preheader231.us.us, !llvm.loop !142

._crit_edge274:                                   ; preds = %._crit_edge257.split.us.split.us281.us, %._crit_edge257.split.us.split.us.us.us.us, %.preheader231.lr.ph.split.us, %bb.f
  %i.li = add nuw i64 %.0194284, 1                ; 2 uses
  %i.lj = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.lk = load ptr, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = sdiv exact i64 %i.ln, 28
  %i.lp = icmp ult i64 %i.li, %i.lo
  br i1 %i.lp, label %bb.b, label %.preheader, !llvm.loop !147

._crit_edge291:                                   ; preds = %.loopexit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void

bb.g:                                             ; preds = %.lr.ph290, %.loopexit
  %i.lq = phi ptr [ %i.v, %.lr.ph290 ], [ %i.qk, %.loopexit ]
  %.0289 = phi i64 [ 0, %.lr.ph290 ], [ %i.qi, %.loopexit ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [28 x i8], ptr %i.lq, i64 %.0289 ; 11 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 12 ; 2 uses
  %.pre333 = load i32, ptr %i.y, align 8, !tbaa !116 ; 2 uses
  %.pre334 = load i32, ptr %i.z, align 4, !tbaa !117 ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !148
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 20
  %i.ly = load ptr, ptr %i.aa, align 8, !tbaa !118
  %.pre332 = load i32, ptr %i.x, align 4, !tbaa !150
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lr, i64 20
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !151 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.me = load i32, ptr %i.x, align 4, !tbaa !150 ; 2 uses
  %i.mf = sub nsw i32 %i.mc, %i.me
  %i.mg = mul i32 %i.mf, %.pre333
  %i.mh = mul i32 %i.mg, %.pre334
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.mi
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.mk = phi i32 [ %.pre332, %bb.h ], [ %i.me, %bb.i ] ; 2 uses
  %.1215.in = phi ptr [ %i.lu, %bb.h ], [ %i.ma, %bb.i ]
  %.1213 = phi i32 [ %i.lw, %bb.h ], [ %i.mc, %bb.i ] ; 2 uses
  %.1211.in = phi ptr [ %i.lx, %bb.h ], [ %i.md, %bb.i ]
  %.1200.in = phi ptr [ %i.lr, %bb.h ], [ %i.ls, %bb.i ]
  %.1198.in = phi ptr [ %i.ls, %bb.h ], [ %i.lr, %bb.i ]
  %.1.in = phi ptr [ %i.lt, %bb.h ], [ %i.lz, %bb.i ]
  %.0195 = phi ptr [ %i.ly, %bb.h ], [ %i.mj, %bb.i ]
  %.1 = load i32, ptr %.1.in, align 4, !tbaa !14
  %.1198 = load i32, ptr %.1198.in, align 4, !tbaa !14 ; 2 uses
  %.1200 = load i32, ptr %.1200.in, align 4, !tbaa !14 ; 2 uses
  %.1211 = load i32, ptr %.1211.in, align 4, !tbaa !14 ; 2 uses
  %.1215 = load i32, ptr %.1215.in, align 4, !tbaa !14 ; 2 uses
  %i.ml = sub nsw i32 %.1, %i.mk                  ; 3 uses
  %i.mm = mul nsw i32 %.pre334, %.pre333          ; 3 uses
  %i.mn = mul nsw i32 %i.mm, %i.ml
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.mo
  %i.mq = load ptr, ptr @debug, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.mq, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.mr = load i32, ptr %i.ab, align 4, !tbaa !17
  %i.ms = load i32, ptr %i.ac, align 4, !tbaa !108
  %i.mt = add nsw i32 %i.ml, %.1215
  %i.mu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.mq, ptr noundef nonnull @.str, i32 noundef %i.mr, i32 noundef %i.ms, i32 noundef %.1200, i32 noundef %i.mk, i32 noundef %i.ml, i32 noundef %i.mt) #7 ; 0 uses
  %i.mv = load ptr, ptr @debug, align 8, !tbaa !15
  %i.mw = load i32, ptr %i.ab, align 4, !tbaa !17
  %i.mx = load i32, ptr %i.ac, align 4, !tbaa !108
  %i.my = load i32, ptr %i.x, align 4, !tbaa !150 ; 2 uses
  %i.mz = sub nsw i32 %.1213, %i.my               ; 2 uses
  %i.na = add nsw i32 %i.mz, %.1211
  %i.nb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mv, ptr noundef nonnull @.str.1, i32 noundef %i.mw, i32 noundef %i.mx, i32 noundef %.1198, i32 noundef %i.my, i32 noundef %i.mz, i32 noundef %i.na) #7 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.nc = mul nsw i32 %i.mm, %.1215
  %i.nd = trunc i64 %.0289 to i32                 ; 2 uses
  %i.ne = mul nsw i32 %i.mm, %.1211               ; 5 uses
  %i.nf = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.ng = call noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %i.mp, i32 noundef %i.nc, ptr noundef %i.ad, i32 noundef %.1200, i32 noundef %i.nd, ptr noundef %.0195, i32 noundef %i.ne, ptr noundef %i.ad, i32 noundef %.1198, i32 noundef %i.nd, ptr noundef %i.nf, ptr noundef nonnull %4) ; 0 uses
  br i1 %i.w, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.nh = load i32, ptr %i.x, align 4, !tbaa !150
  %i.ni = sub i32 %.1213, %i.nh
  %i.nj = load i32, ptr %i.y, align 8, !tbaa !116
  %i.nk = load i32, ptr %i.z, align 4, !tbaa !117
  %i.nl = mul i32 %i.ni, %i.nj
  %i.nm = mul i32 %i.nl, %i.nk
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %i.no = getelementptr [4 x i8], ptr %1, i64 %i.nn ; 12 uses
  %i.np = icmp sgt i32 %i.ne, 0
  br i1 %i.np, label %iter.check471, label %.loopexit

iter.check471:                                    ; preds = %bb.m
  %i.nq = load ptr, ptr %i.aa, align 8, !tbaa !118 ; 13 uses
  %wide.trip.count330 = zext nneg i32 %i.ne to i64 ; 10 uses
  %min.iters.check452 = icmp ult i32 %i.ne, 4
  br i1 %min.iters.check452, label %vec.epilog.scalar.ph472.preheader, label %vector.memcheck446

vector.memcheck446:                               ; preds = %iter.check471
  %i.nr = shl nuw nsw i64 %wide.trip.count330, 2
  %i.ns = add nsw i64 %i.nn, %wide.trip.count330
  %i.nt = shl nsw i64 %i.ns, 2
  %scevgep447 = getelementptr i8, ptr %1, i64 %i.nt
  %scevgep448 = getelementptr i8, ptr %i.nq, i64 %i.nr
  %bound0449 = icmp ult ptr %i.no, %scevgep448
  %bound1450 = icmp ult ptr %i.nq, %scevgep447
  %found.conflict451 = and i1 %bound0449, %bound1450
  br i1 %found.conflict451, label %vec.epilog.scalar.ph472.preheader, label %vector.main.loop.iter.check453

vector.main.loop.iter.check453:                   ; preds = %vector.memcheck446
  %min.iters.check454 = icmp ult i32 %i.ne, 32
  br i1 %min.iters.check454, label %vec.epilog.ph475, label %vector.ph455

vector.ph455:                                     ; preds = %vector.main.loop.iter.check453
  %i.nu = and i64 %wide.trip.count330, 28
  %n.vec456 = and i64 %wide.trip.count330, 2147483616 ; 4 uses
  br label %vector.body457

vector.body457:                                   ; preds = %vector.body457, %vector.ph455
  %index458 = phi i64 [ 0, %vector.ph455 ], [ %index.next467, %vector.body457 ] ; 3 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index458 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 96
  %wide.load459 = load <8 x float>, ptr %i.nv, align 4, !tbaa !119, !alias.scope !152
  %wide.load460 = load <8 x float>, ptr %i.nw, align 4, !tbaa !119, !alias.scope !152
  %wide.load461 = load <8 x float>, ptr %i.nx, align 4, !tbaa !119, !alias.scope !152
  %wide.load462 = load <8 x float>, ptr %i.ny, align 4, !tbaa !119, !alias.scope !152
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index458 ; 5 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 32 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 64 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 96 ; 2 uses
  %wide.load463 = load <8 x float>, ptr %i.nz, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  %wide.load464 = load <8 x float>, ptr %i.oa, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  %wide.load465 = load <8 x float>, ptr %i.ob, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  %wide.load466 = load <8 x float>, ptr %i.oc, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  %i.od = fadd <8 x float> %wide.load459, %wide.load463
  %i.oe = fadd <8 x float> %wide.load460, %wide.load464
  %i.of = fadd <8 x float> %wide.load461, %wide.load465
  %i.og = fadd <8 x float> %wide.load462, %wide.load466
  store <8 x float> %i.od, ptr %i.nz, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  store <8 x float> %i.oe, ptr %i.oa, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  store <8 x float> %i.of, ptr %i.ob, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  store <8 x float> %i.og, ptr %i.oc, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  %index.next467 = add nuw i64 %index458, 32      ; 2 uses
  %i.oh = icmp eq i64 %index.next467, %n.vec456
  br i1 %i.oh, label %middle.block468, label %vector.body457, !llvm.loop !157

middle.block468:                                  ; preds = %vector.body457
  %cmp.n469 = icmp eq i64 %n.vec456, %wide.trip.count330
  br i1 %cmp.n469, label %.loopexit, label %vec.epilog.iter.check473

vec.epilog.iter.check473:                         ; preds = %middle.block468
  %min.epilog.iters.check474 = icmp eq i64 %i.nu, 0
  br i1 %min.epilog.iters.check474, label %vec.epilog.scalar.ph472.preheader, label %vec.epilog.ph475, !prof !158

vec.epilog.ph475:                                 ; preds = %vector.main.loop.iter.check453, %vec.epilog.iter.check473
  %vec.epilog.resume.val470 = phi i64 [ %n.vec456, %vec.epilog.iter.check473 ], [ 0, %vector.main.loop.iter.check453 ]
  %n.vec476 = and i64 %wide.trip.count330, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body477

vec.epilog.vector.body477:                        ; preds = %vec.epilog.vector.body477, %vec.epilog.ph475
  %index478 = phi i64 [ %vec.epilog.resume.val470, %vec.epilog.ph475 ], [ %index.next481, %vec.epilog.vector.body477 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index478
  %wide.load479 = load <4 x float>, ptr %i.oi, align 4, !tbaa !119, !alias.scope !152
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index478 ; 2 uses
  %wide.load480 = load <4 x float>, ptr %i.oj, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  %i.ok = fadd <4 x float> %wide.load479, %wide.load480
  store <4 x float> %i.ok, ptr %i.oj, align 4, !tbaa !119, !alias.scope !155, !noalias !152
  %index.next481 = add nuw i64 %index478, 4       ; 2 uses
  %i.ol = icmp eq i64 %index.next481, %n.vec476
  br i1 %i.ol, label %vec.epilog.middle.block482, label %vec.epilog.vector.body477, !llvm.loop !159

vec.epilog.middle.block482:                       ; preds = %vec.epilog.vector.body477
  %cmp.n483 = icmp eq i64 %n.vec476, %wide.trip.count330
  br i1 %cmp.n483, label %.loopexit, label %vec.epilog.scalar.ph472.preheader

vec.epilog.scalar.ph472.preheader:                ; preds = %vector.memcheck446, %iter.check471, %vec.epilog.iter.check473, %vec.epilog.middle.block482
  %indvars.iv327.ph = phi i64 [ 0, %iter.check471 ], [ 0, %vector.memcheck446 ], [ %n.vec456, %vec.epilog.iter.check473 ], [ %n.vec476, %vec.epilog.middle.block482 ] ; 4 uses
  %i.om = sub nsw i64 %wide.trip.count330, %indvars.iv327.ph
  %xtraiter494 = and i64 %i.om, 7                 ; 2 uses
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  br i1 %lcmp.mod495.not, label %vec.epilog.scalar.ph472.prol.loopexit, label %vec.epilog.scalar.ph472.prol
end_hunk_0
