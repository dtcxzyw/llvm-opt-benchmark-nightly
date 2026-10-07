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
  %i.ae = phi ptr [ %i.g, %.lr.ph ], [ %i.lm, %._crit_edge274 ]
  %.0194284 = phi i64 [ 0, %.lr.ph ], [ %i.lk, %._crit_edge274 ] ; 3 uses
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
  %.0210 = load i32, ptr %i.aj, align 4, !tbaa !10 ; 4 uses
  %.0212 = load i32, ptr %i.ai, align 4, !tbaa !10 ; 4 uses
  %.0214 = load i32, ptr %i.ah, align 4, !tbaa !10 ; 3 uses
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
  %i.av = load i32, ptr %i.k, align 8, !tbaa !203 ; 2 uses
  %invariant.op = sub i32 %.0214, %i.av
  %i.aw = icmp sgt i32 %.pre, 0
  br i1 %i.aw, label %.preheader232.lr.ph.split.split.us, label %._crit_edge.split

.preheader232.lr.ph.split.split.us:               ; preds = %.preheader232.lr.ph.split
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !105 ; 2 uses
  %i.ay = load i32, ptr %i.o, align 4, !tbaa !106 ; 4 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !107 ; 8 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %wide.trip.count = zext nneg i32 %.pre to i64   ; 9 uses
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bc = sub i32 %.0214, %i.av
  %i.bd = mul i32 %i.ay, %i.bc
  %i.be = mul i32 %i.ay, %i.ax
  %min.iters.check417 = icmp ult i32 %.pre, 4
  %i.bf = trunc nsw i64 %i.bb to i32
  %i.bg = icmp ugt i64 %i.bb, 4294967295
  %min.iters.check419 = icmp ult i32 %.pre, 32
  %i.bh = and i64 %wide.trip.count, 28
  %n.vec421 = and i64 %wide.trip.count, 2147483616 ; 5 uses
  %cmp.n430 = icmp eq i64 %n.vec421, %wide.trip.count
  %min.epilog.iters.check435 = icmp eq i64 %i.bh, 0
  %n.vec437 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %cmp.n443 = icmp eq i64 %n.vec437, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader232.us

.preheader232.us:                                 ; preds = %._crit_edge239.split.us.us, %.preheader232.lr.ph.split.split.us
  %.0199244.us = phi i64 [ 0, %.preheader232.lr.ph.split.split.us ], [ %indvars.iv.next.lcssa, %._crit_edge239.split.us.us ]
  %.0205242.us = phi i32 [ 0, %.preheader232.lr.ph.split.split.us ], [ %i.dz, %._crit_edge239.split.us.us ] ; 3 uses
  %i.bi = mul i32 %i.be, %.0205242.us
  %i.bj = add i32 %i.bd, %i.bi
  %i.bk = mul i32 %i.ax, %.0205242.us
  %invariant.op241.us = add i32 %invariant.op, %i.bk
  br label %iter.check432

iter.check432:                                    ; preds = %._crit_edge.us.us, %.preheader232.us
  %.1200237.us.us = phi i64 [ %.0199244.us, %.preheader232.us ], [ %indvars.iv.next.lcssa, %._crit_edge.us.us ] ; 8 uses
  %.0203236.us.us = phi i32 [ 0, %.preheader232.us ], [ %i.dy, %._crit_edge.us.us ] ; 3 uses
  %i.bl = mul i32 %i.ay, %.0203236.us.us
  %i.bm = add i32 %i.bj, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 2
  %reass.add229.us.reass.us = add i32 %.0203236.us.us, %invariant.op241.us
  %reass.mul230.us.us = mul i32 %reass.add229.us.reass.us, %i.ay ; 9 uses
  br i1 %min.iters.check417, label %vec.epilog.scalar.ph433.preheader, label %vector.scevcheck414

vector.scevcheck414:                              ; preds = %iter.check432
  %i.bp = add i32 %reass.mul230.us.us, %i.bf
  %i.bq = icmp slt i32 %i.bp, %reass.mul230.us.us
  %i.br = or i1 %i.bq, %i.bg
  br i1 %i.br, label %vec.epilog.scalar.ph433.preheader, label %vector.memcheck415

vector.memcheck415:                               ; preds = %vector.scevcheck414
  %i.bs = shl i64 %.1200237.us.us, 2
  %i.bt = add i64 %i.bs, %i.ba
  %i.bu = add i64 %i.bo, %i.a
  %i.bv = sub i64 %i.bu, %i.bt
  %diff.check416 = icmp ugt i64 %i.bv, -128
  br i1 %diff.check416, label %vec.epilog.scalar.ph433.preheader, label %vector.main.loop.iter.check418

vector.main.loop.iter.check418:                   ; preds = %vector.memcheck415
  br i1 %min.iters.check419, label %vec.epilog.ph436, label %vector.ph420

vector.ph420:                                     ; preds = %vector.main.loop.iter.check418
  %i.bw = add i64 %.1200237.us.us, %n.vec421      ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %i.az, i64 %.1200237.us.us
  br label %vector.body422

vector.body422:                                   ; preds = %vector.ph420, %vector.body422
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next428, %vector.body422 ] ; 3 uses
  %i.by = trunc nuw nsw i64 %index423 to i32
  %i.bz = add i32 %reass.mul230.us.us, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ca ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  %wide.load424 = load <8 x float>, ptr %i.cb, align 4, !tbaa !108
  %wide.load425 = load <8 x float>, ptr %i.cc, align 4, !tbaa !108
  %wide.load426 = load <8 x float>, ptr %i.cd, align 4, !tbaa !108
  %wide.load427 = load <8 x float>, ptr %i.ce, align 4, !tbaa !108
  %i.cf = getelementptr [4 x i8], ptr %i.bx, i64 %index423 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  store <8 x float> %wide.load424, ptr %i.cf, align 4, !tbaa !108
  store <8 x float> %wide.load425, ptr %i.cg, align 4, !tbaa !108
  store <8 x float> %wide.load426, ptr %i.ch, align 4, !tbaa !108
  store <8 x float> %wide.load427, ptr %i.ci, align 4, !tbaa !108
  %index.next428 = add nuw i64 %index423, 32      ; 2 uses
  %i.cj = icmp eq i64 %index.next428, %n.vec421
  br i1 %i.cj, label %middle.block429, label %vector.body422, !llvm.loop !165

middle.block429:                                  ; preds = %vector.body422
  br i1 %cmp.n430, label %._crit_edge.us.us, label %vec.epilog.iter.check434

vec.epilog.iter.check434:                         ; preds = %middle.block429
  br i1 %min.epilog.iters.check435, label %vec.epilog.scalar.ph433.preheader, label %vec.epilog.ph436, !prof !112

vec.epilog.ph436:                                 ; preds = %vector.main.loop.iter.check418, %vec.epilog.iter.check434
  %vec.epilog.resume.val431 = phi i64 [ %n.vec421, %vec.epilog.iter.check434 ], [ 0, %vector.main.loop.iter.check418 ]
  %i.ck = add i64 %.1200237.us.us, %n.vec437      ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.az, i64 %.1200237.us.us
  br label %vec.epilog.vector.body438

vec.epilog.vector.body438:                        ; preds = %vec.epilog.vector.body438, %vec.epilog.ph436
  %index439 = phi i64 [ %vec.epilog.resume.val431, %vec.epilog.ph436 ], [ %index.next441, %vec.epilog.vector.body438 ] ; 3 uses
  %i.cm = trunc nuw nsw i64 %index439 to i32
  %i.cn = add i32 %reass.mul230.us.us, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.co
  %wide.load440 = load <4 x float>, ptr %i.cp, align 4, !tbaa !108
  %i.cq = getelementptr [4 x i8], ptr %i.cl, i64 %index439
  store <4 x float> %wide.load440, ptr %i.cq, align 4, !tbaa !108
  %index.next441 = add nuw i64 %index439, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next441, %n.vec437
  br i1 %i.cr, label %vec.epilog.middle.block442, label %vec.epilog.vector.body438, !llvm.loop !166

vec.epilog.middle.block442:                       ; preds = %vec.epilog.vector.body438
  br i1 %cmp.n443, label %._crit_edge.us.us, label %vec.epilog.scalar.ph433.preheader

vec.epilog.scalar.ph433.preheader:                ; preds = %iter.check432, %vector.scevcheck414, %vector.memcheck415, %vec.epilog.iter.check434, %vec.epilog.middle.block442
  %indvars.iv298.ph = phi i64 [ 0, %iter.check432 ], [ 0, %vector.scevcheck414 ], [ 0, %vector.memcheck415 ], [ %n.vec421, %vec.epilog.iter.check434 ], [ %n.vec437, %vec.epilog.middle.block442 ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %.1200237.us.us, %iter.check432 ], [ %.1200237.us.us, %vector.scevcheck414 ], [ %.1200237.us.us, %vector.memcheck415 ], [ %i.bw, %vec.epilog.iter.check434 ], [ %i.ck, %vec.epilog.middle.block442 ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph433.prol.loopexit, label %vec.epilog.scalar.ph433.prol

vec.epilog.scalar.ph433.prol:                     ; preds = %vec.epilog.scalar.ph433.preheader, %vec.epilog.scalar.ph433.prol
  %indvars.iv298.prol = phi i64 [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph433.prol ], [ %indvars.iv298.ph, %vec.epilog.scalar.ph433.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph433.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph433.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph433.prol ], [ 0, %vec.epilog.scalar.ph433.preheader ]
  %i.cs = trunc nuw nsw i64 %indvars.iv298.prol to i32
  %i.ct = add i32 %reass.mul230.us.us, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !108
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.prol
  store float %i.cw, ptr %i.cx, align 4, !tbaa !108
  %indvars.iv.next299.prol = add nuw nsw i64 %indvars.iv298.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph433.prol.loopexit, label %vec.epilog.scalar.ph433.prol, !llvm.loop !167

vec.epilog.scalar.ph433.prol.loopexit:            ; preds = %vec.epilog.scalar.ph433.prol, %vec.epilog.scalar.ph433.preheader
  %indvars.iv.next.lcssa485.unr = phi i64 [ poison, %vec.epilog.scalar.ph433.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph433.prol ]
  %indvars.iv298.unr = phi i64 [ %indvars.iv298.ph, %vec.epilog.scalar.ph433.preheader ], [ %indvars.iv.next299.prol, %vec.epilog.scalar.ph433.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph433.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph433.prol ]
  %i.cy = sub nsw i64 %indvars.iv298.ph, %wide.trip.count
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %._crit_edge.us.us, label %vec.epilog.scalar.ph433.preheader.new

vec.epilog.scalar.ph433.preheader.new:            ; preds = %vec.epilog.scalar.ph433.prol.loopexit
  %invariant.op497 = add i32 1, %reass.mul230.us.us
  %invariant.op498 = add i32 2, %reass.mul230.us.us
  %invariant.op500 = add i32 3, %reass.mul230.us.us
  br label %vec.epilog.scalar.ph433

vec.epilog.scalar.ph433:                          ; preds = %vec.epilog.scalar.ph433, %vec.epilog.scalar.ph433.preheader.new
  %indvars.iv298 = phi i64 [ %indvars.iv298.unr, %vec.epilog.scalar.ph433.preheader.new ], [ %indvars.iv.next299.3, %vec.epilog.scalar.ph433 ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph433.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph433 ] ; 5 uses
  %i.da = trunc nuw nsw i64 %indvars.iv298 to i32
  %i.db = add i32 %reass.mul230.us.us, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !108
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store float %i.de, ptr %i.df, align 4, !tbaa !108
  %i.dg = trunc i64 %indvars.iv298 to i32
  %.reass = add i32 %i.dg, %invariant.op497
  %i.dh = sext i32 %.reass to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !108
  %i.dk = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  store float %i.dj, ptr %i.dl, align 4, !tbaa !108
  %i.dm = trunc i64 %indvars.iv298 to i32
  %.reass499 = add i32 %i.dm, %invariant.op498
  %i.dn = sext i32 %.reass499 to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !108
  %i.dq = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  store float %i.dp, ptr %i.dr, align 4, !tbaa !108
  %i.ds = trunc i64 %indvars.iv298 to i32
  %.reass501 = add i32 %i.ds, %invariant.op500
  %i.dt = sext i32 %.reass501 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !108
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %i.dw = getelementptr [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.dx = getelementptr i8, ptr %i.dw, i64 12
  store float %i.dv, ptr %i.dx, align 4, !tbaa !108
  %indvars.iv.next299.3 = add nuw nsw i64 %indvars.iv298, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next299.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph433, !llvm.loop !168

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph433.prol.loopexit, %vec.epilog.scalar.ph433, %vec.epilog.middle.block442, %middle.block429
  %indvars.iv.next.lcssa = phi i64 [ %i.ck, %vec.epilog.middle.block442 ], [ %i.bw, %middle.block429 ], [ %indvars.iv.next.lcssa485.unr, %vec.epilog.scalar.ph433.prol.loopexit ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph433 ] ; 2 uses
  %i.dy = add nuw nsw i32 %.0203236.us.us, 1      ; 2 uses
  %exitcond303.not = icmp eq i32 %i.dy, %.0212
  br i1 %exitcond303.not, label %._crit_edge239.split.us.us, label %iter.check432, !llvm.loop !169

._crit_edge239.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.dz = add nuw nsw i32 %.0205242.us, 1         ; 2 uses
  %exitcond304.not = icmp eq i32 %i.dz, %i.as
  br i1 %exitcond304.not, label %._crit_edge.split, label %.preheader232.us, !llvm.loop !170

._crit_edge.split:                                ; preds = %._crit_edge239.split.us.us, %.preheader232.lr.ph.split, %bb.d
  %i.ea = mul nsw i32 %.pre, %i.as                ; 2 uses
  %i.eb = load ptr, ptr %i.p, align 8, !tbaa !107
  %i.ec = mul nsw i32 %i.ea, %.0212
  %i.ed = trunc i64 %.0194284 to i32              ; 2 uses
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.ef = mul nsw i32 %i.ea, %.0208
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !204
  %i.eh = call noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %i.eb, i32 noundef %i.ec, ptr noundef %i.q, i32 noundef %.0197, i32 noundef %i.ed, ptr noundef %i.ee, i32 noundef %i.ef, ptr noundef %i.q, i32 noundef %.0196, i32 noundef %i.ed, ptr noundef %i.eg, ptr noundef nonnull %4) ; 0 uses
  %i.ei = load ptr, ptr @debug, align 8, !tbaa !12 ; 2 uses
  %.not221 = icmp eq ptr %i.ei, null
  br i1 %.not221, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.split
  %i.ej = load i32, ptr %i.i, align 4, !tbaa !197
  %i.ek = load i32, ptr %i.j, align 4, !tbaa !202
  %i.el = load i32, ptr %i.k, align 8, !tbaa !203 ; 2 uses
  %i.em = sub nsw i32 %.0210, %i.el               ; 2 uses
  %i.en = add nsw i32 %i.em, %.0208
  %i.eo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ei, ptr noundef nonnull @.str.1, i32 noundef %i.ej, i32 noundef %i.ek, i32 noundef %.0196, i32 noundef %i.el, i32 noundef %i.em, i32 noundef %i.en) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.split
  %i.ep = load i32, ptr %i.l, align 4, !tbaa !103 ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  %i.er = icmp sgt i32 %.0208, 0
  %or.cond355 = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond355, label %.preheader231.lr.ph.split.us, label %._crit_edge274

.preheader231.lr.ph.split.us:                     ; preds = %bb.f
  %i.es = load i32, ptr %i.k, align 8, !tbaa !203 ; 3 uses
  %invariant.op259.us = sub i32 %.0210, %i.es     ; 2 uses
  %i.et = load i32, ptr %i.m, align 8, !tbaa !104 ; 6 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.preheader231.lr.ph.split.us.split.us, label %._crit_edge274

.preheader231.lr.ph.split.us.split.us:            ; preds = %.preheader231.lr.ph.split.us
  %i.ev = load ptr, ptr %i.r, align 8, !tbaa !107 ; 17 uses
  %i.ew = load i32, ptr %i.n, align 8, !tbaa !105 ; 4 uses
  %i.ex = load i32, ptr %i.o, align 4, !tbaa !106 ; 8 uses
  %wide.trip.count323 = zext nneg i32 %i.et to i64 ; 19 uses
  br i1 %i.h, label %.preheader231.us.us.us.preheader, label %.preheader231.us.us.preheader

.preheader231.us.us.preheader:                    ; preds = %.preheader231.lr.ph.split.us.split.us
  %i.ey = ptrtoaddr ptr %i.ev to i64
  %i.ez = add nsw i64 %wide.trip.count323, -1     ; 2 uses
  %i.fa = sub i32 %.0210, %i.es
  %i.fb = mul i32 %i.ex, %i.fa
  %i.fc = mul i32 %i.ex, %i.ew
  %min.iters.check385 = icmp ult i32 %i.et, 4
  %i.fd = trunc nsw i64 %i.ez to i32
  %i.fe = icmp ugt i64 %i.ez, 4294967295
  %min.iters.check387 = icmp ult i32 %i.et, 32
  %i.ff = and i64 %wide.trip.count323, 28
  %n.vec389 = and i64 %wide.trip.count323, 2147483616 ; 5 uses
  %cmp.n398 = icmp eq i64 %n.vec389, %wide.trip.count323
  %min.epilog.iters.check403 = icmp eq i64 %i.ff, 0
  %n.vec405 = and i64 %wide.trip.count323, 2147483644 ; 4 uses
  %cmp.n411 = icmp eq i64 %n.vec405, %wide.trip.count323
  %xtraiter488 = and i64 %wide.trip.count323, 3   ; 2 uses
  %lcmp.mod489.not = icmp eq i64 %xtraiter488, 0
  br label %.preheader231.us.us

.preheader231.us.us.us.preheader:                 ; preds = %.preheader231.lr.ph.split.us.split.us
  %i.fg = add nsw i64 %wide.trip.count323, -1     ; 2 uses
  %i.fh = shl nuw nsw i64 %wide.trip.count323, 2  ; 2 uses
  %scevgep362 = getelementptr i8, ptr %i.ev, i64 %i.fh
  %i.fi = sub i32 %.0210, %i.es
  %i.fj = mul i32 %i.ex, %i.fi
  %i.fk = mul i32 %i.ex, %i.ew
  %scevgep365 = getelementptr i8, ptr %1, i64 %i.fh
  %min.iters.check = icmp ult i32 %i.et, 4
  %i.fl = trunc nsw i64 %i.fg to i32
  %i.fm = icmp ugt i64 %i.fg, 4294967295
  %min.iters.check367 = icmp ult i32 %i.et, 32
  %i.fn = and i64 %wide.trip.count323, 28
  %n.vec = and i64 %wide.trip.count323, 2147483616 ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count323
  %min.epilog.iters.check = icmp eq i64 %i.fn, 0
  %n.vec375 = and i64 %wide.trip.count323, 2147483644 ; 4 uses
  %cmp.n380 = icmp eq i64 %n.vec375, %wide.trip.count323
  %xtraiter491 = and i64 %wide.trip.count323, 3   ; 2 uses
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  br label %.preheader231.us.us.us

.preheader231.us.us.us:                           ; preds = %.preheader231.us.us.us.preheader, %._crit_edge257.split.us.split.us.us.us.us
  %.3273.us.us.us = phi i64 [ %indvars.iv.next317.lcssa, %._crit_edge257.split.us.split.us.us.us.us ], [ 0, %.preheader231.us.us.us.preheader ]
  %.1206270.us.us.us = phi i32 [ %i.ir, %._crit_edge257.split.us.split.us.us.us.us ], [ 0, %.preheader231.us.us.us.preheader ] ; 3 uses
  %i.fo = mul i32 %i.fk, %.1206270.us.us.us
  %i.fp = add i32 %i.fj, %i.fo
  %i.fq = mul i32 %i.ew, %.1206270.us.us.us
  %invariant.op269.us.us.us = add i32 %invariant.op259.us, %i.fq
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge252.split.us.us.us.us.us.us, %.preheader231.us.us.us
  %.4255.us.us.us.us.us = phi i64 [ %.3273.us.us.us, %.preheader231.us.us.us ], [ %indvars.iv.next317.lcssa, %._crit_edge252.split.us.us.us.us.us.us ] ; 8 uses
  %.1204254.us.us.us.us.us = phi i32 [ 0, %.preheader231.us.us.us ], [ %i.iq, %._crit_edge252.split.us.us.us.us.us.us ] ; 3 uses
  %i.fr = mul i32 %i.ex, %.1204254.us.us.us.us.us
  %i.fs = add i32 %i.fp, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 2                    ; 2 uses
  %scevgep364 = getelementptr i8, ptr %1, i64 %i.fu
  %scevgep366 = getelementptr i8, ptr %scevgep365, i64 %i.fu
  %reass.add226.us.us.us.reass.us.us.us = add i32 %.1204254.us.us.us.us.us, %invariant.op269.us.us.us
  %reass.mul227.us.us.us.us.us.us = mul i32 %reass.add226.us.us.us.reass.us.us.us, %i.ex ; 9 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.fv = add i32 %reass.mul227.us.us.us.us.us.us, %i.fl
  %i.fw = icmp slt i32 %i.fv, %reass.mul227.us.us.us.us.us.us
  %i.fx = or i1 %i.fw, %i.fm
  br i1 %i.fx, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fy = shl i64 %.4255.us.us.us.us.us, 2        ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.ev, i64 %i.fy
  %scevgep363 = getelementptr i8, ptr %scevgep362, i64 %i.fy
  %bound0 = icmp ult ptr %scevgep, %scevgep366
  %bound1 = icmp ult ptr %scevgep364, %scevgep363
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check367, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fz = add i64 %.4255.us.us.us.us.us, %n.vec   ; 2 uses
  %i.ga = getelementptr [4 x i8], ptr %i.ev, i64 %.4255.us.us.us.us.us
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gb = getelementptr [4 x i8], ptr %i.ga, i64 %index ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 96
  %wide.load = load <8 x float>, ptr %i.gb, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load368 = load <8 x float>, ptr %i.gc, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load369 = load <8 x float>, ptr %i.gd, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %wide.load370 = load <8 x float>, ptr %i.ge, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %i.gf = trunc nuw nsw i64 %index to i32
  %i.gg = add i32 %reass.mul227.us.us.us.us.us.us, %i.gf
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gh ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 64 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 96 ; 2 uses
  %wide.load371 = load <8 x float>, ptr %i.gi, align 4, !tbaa !108, !alias.scope !206
  %wide.load372 = load <8 x float>, ptr %i.gj, align 4, !tbaa !108, !alias.scope !206
  %wide.load373 = load <8 x float>, ptr %i.gk, align 4, !tbaa !108, !alias.scope !206
  %wide.load374 = load <8 x float>, ptr %i.gl, align 4, !tbaa !108, !alias.scope !206
  %i.gm = fadd <8 x float> %wide.load, %wide.load371
  %i.gn = fadd <8 x float> %wide.load368, %wide.load372
  %i.go = fadd <8 x float> %wide.load369, %wide.load373
  %i.gp = fadd <8 x float> %wide.load370, %wide.load374
  store <8 x float> %i.gm, ptr %i.gi, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.gn, ptr %i.gj, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.go, ptr %i.gk, align 4, !tbaa !108, !alias.scope !206
  store <8 x float> %i.gp, ptr %i.gl, align 4, !tbaa !108, !alias.scope !206
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gr = add i64 %.4255.us.us.us.us.us, %n.vec375 ; 2 uses
  %i.gs = getelementptr [4 x i8], ptr %i.ev, i64 %.4255.us.us.us.us.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next379, %vec.epilog.vector.body ] ; 3 uses
  %i.gt = getelementptr [4 x i8], ptr %i.gs, i64 %index376
  %wide.load377 = load <4 x float>, ptr %i.gt, align 4, !tbaa !108, !alias.scope !205, !noalias !206
  %i.gu = trunc nuw nsw i64 %index376 to i32
  %i.gv = add i32 %reass.mul227.us.us.us.us.us.us, %i.gu
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gw ; 2 uses
  %wide.load378 = load <4 x float>, ptr %i.gx, align 4, !tbaa !108, !alias.scope !206
  %i.gy = fadd <4 x float> %wide.load377, %wide.load378
  store <4 x float> %i.gy, ptr %i.gx, align 4, !tbaa !108, !alias.scope !206
  %index.next379 = add nuw i64 %index376, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next379, %n.vec375
  br i1 %i.gz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n380, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv318.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec375, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv316.ph = phi i64 [ %.4255.us.us.us.us.us, %iter.check ], [ %.4255.us.us.us.us.us, %vector.scevcheck ], [ %.4255.us.us.us.us.us, %vector.memcheck ], [ %i.fz, %vec.epilog.iter.check ], [ %i.gr, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod492.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv318.prol = phi i64 [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv316.prol = phi i64 [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter493 = phi i64 [ %prol.iter493.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv316.prol
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !108
  %i.hc = trunc nuw nsw i64 %indvars.iv318.prol to i32
  %i.hd = add i32 %reass.mul227.us.us.us.us.us.us, %i.hc
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.he ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !108
  %i.hh = fadd float %i.hb, %i.hg
  store float %i.hh, ptr %i.hf, align 4, !tbaa !108
  %indvars.iv.next317.prol = add nsw i64 %indvars.iv316.prol, 1 ; 3 uses
  %indvars.iv.next319.prol = add nuw nsw i64 %indvars.iv318.prol, 1 ; 2 uses
  %prol.iter493.next = add i64 %prol.iter493, 1   ; 2 uses
  %prol.iter493.cmp.not = icmp eq i64 %prol.iter493.next, %xtraiter491
  br i1 %prol.iter493.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !176

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next317.lcssa487.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv318.unr = phi i64 [ %indvars.iv318.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next319.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv316.unr = phi i64 [ %indvars.iv316.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next317.prol, %vec.epilog.scalar.ph.prol ]
  %i.hi = sub nsw i64 %indvars.iv318.ph, %wide.trip.count323
  %i.hj = icmp ugt i64 %i.hi, -4
  br i1 %i.hj, label %._crit_edge252.split.us.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op508 = add i32 1, %reass.mul227.us.us.us.us.us.us
  %invariant.op510 = add i32 2, %reass.mul227.us.us.us.us.us.us
  %invariant.op512 = add i32 3, %reass.mul227.us.us.us.us.us.us
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv318 = phi i64 [ %indvars.iv318.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next319.3, %vec.epilog.scalar.ph ] ; 5 uses
  %indvars.iv316 = phi i64 [ %indvars.iv316.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next317.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv316
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !108
  %i.hm = trunc nuw nsw i64 %indvars.iv318 to i32
  %i.hn = add i32 %reass.mul227.us.us.us.us.us.us, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ho ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !108
  %i.hr = fadd float %i.hl, %i.hq
  store float %i.hr, ptr %i.hp, align 4, !tbaa !108
  %i.hs = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv316
  %i.ht = getelementptr i8, ptr %i.hs, i64 4
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !108
  %i.hv = trunc i64 %indvars.iv318 to i32
  %.reass509 = add i32 %i.hv, %invariant.op508
  %i.hw = sext i32 %.reass509 to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hw ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !108
  %i.hz = fadd float %i.hu, %i.hy
  store float %i.hz, ptr %i.hx, align 4, !tbaa !108
  %i.ia = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv316
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !108
  %i.id = trunc i64 %indvars.iv318 to i32
  %.reass511 = add i32 %i.id, %invariant.op510
  %i.ie = sext i32 %.reass511 to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ie ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !108
  %i.ih = fadd float %i.ic, %i.ig
  store float %i.ih, ptr %i.if, align 4, !tbaa !108
  %i.ii = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv316
  %i.ij = getelementptr i8, ptr %i.ii, i64 12
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !108
  %i.il = trunc i64 %indvars.iv318 to i32
  %.reass513 = add i32 %i.il, %invariant.op512
  %i.im = sext i32 %.reass513 to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %1, i64 %i.im ; 2 uses
end_hunk_0
begin_hunk_1_@_Z16gmx_sum_qgrid_ddP9gmx_pme_tN3gmx8ArrayRefIfEEi:bb.a
  %wide.load466 = load <8 x float>, ptr %i.oe, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  %i.of = fadd <8 x float> %wide.load459, %wide.load463
  %i.og = fadd <8 x float> %wide.load460, %wide.load464
  %i.oh = fadd <8 x float> %wide.load461, %wide.load465
  %i.oi = fadd <8 x float> %wide.load462, %wide.load466
  store <8 x float> %i.of, ptr %i.ob, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  store <8 x float> %i.og, ptr %i.oc, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  store <8 x float> %i.oh, ptr %i.od, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  store <8 x float> %i.oi, ptr %i.oe, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  %index.next467 = add nuw i64 %index458, 32      ; 2 uses
  %i.oj = icmp eq i64 %index.next467, %n.vec456
  br i1 %i.oj, label %middle.block468, label %vector.body457, !llvm.loop !188

middle.block468:                                  ; preds = %vector.body457
  %cmp.n469 = icmp eq i64 %n.vec456, %wide.trip.count330
  br i1 %cmp.n469, label %.loopexit, label %vec.epilog.iter.check473

vec.epilog.iter.check473:                         ; preds = %middle.block468
  %min.epilog.iters.check474 = icmp eq i64 %i.nw, 0
  br i1 %min.epilog.iters.check474, label %vec.epilog.scalar.ph472.preheader, label %vec.epilog.ph475, !prof !112

vec.epilog.ph475:                                 ; preds = %vector.main.loop.iter.check453, %vec.epilog.iter.check473
  %vec.epilog.resume.val470 = phi i64 [ %n.vec456, %vec.epilog.iter.check473 ], [ 0, %vector.main.loop.iter.check453 ]
  %n.vec476 = and i64 %wide.trip.count330, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body477

vec.epilog.vector.body477:                        ; preds = %vec.epilog.vector.body477, %vec.epilog.ph475
  %index478 = phi i64 [ %vec.epilog.resume.val470, %vec.epilog.ph475 ], [ %index.next481, %vec.epilog.vector.body477 ] ; 3 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %index478
  %wide.load479 = load <4 x float>, ptr %i.ok, align 4, !tbaa !108, !alias.scope !211
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index478 ; 2 uses
  %wide.load480 = load <4 x float>, ptr %i.ol, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  %i.om = fadd <4 x float> %wide.load479, %wide.load480
  store <4 x float> %i.om, ptr %i.ol, align 4, !tbaa !108, !alias.scope !212, !noalias !211
  %index.next481 = add nuw i64 %index478, 4       ; 2 uses
  %i.on = icmp eq i64 %index.next481, %n.vec476
  br i1 %i.on, label %vec.epilog.middle.block482, label %vec.epilog.vector.body477, !llvm.loop !189

vec.epilog.middle.block482:                       ; preds = %vec.epilog.vector.body477
  %cmp.n483 = icmp eq i64 %n.vec476, %wide.trip.count330
  br i1 %cmp.n483, label %.loopexit, label %vec.epilog.scalar.ph472.preheader

vec.epilog.scalar.ph472.preheader:                ; preds = %iter.check471, %vector.memcheck446, %vec.epilog.iter.check473, %vec.epilog.middle.block482
  %indvars.iv327.ph = phi i64 [ 0, %iter.check471 ], [ 0, %vector.memcheck446 ], [ %n.vec456, %vec.epilog.iter.check473 ], [ %n.vec476, %vec.epilog.middle.block482 ] ; 4 uses
  %i.oo = sub nsw i64 %wide.trip.count330, %indvars.iv327.ph
  %xtraiter494 = and i64 %i.oo, 7                 ; 2 uses
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  br i1 %lcmp.mod495.not, label %vec.epilog.scalar.ph472.prol.loopexit, label %vec.epilog.scalar.ph472.prol

vec.epilog.scalar.ph472.prol:                     ; preds = %vec.epilog.scalar.ph472.preheader, %vec.epilog.scalar.ph472.prol
  %indvars.iv327.prol = phi i64 [ %indvars.iv.next328.prol, %vec.epilog.scalar.ph472.prol ], [ %indvars.iv327.ph, %vec.epilog.scalar.ph472.preheader ] ; 3 uses
  %prol.iter496 = phi i64 [ %prol.iter496.next, %vec.epilog.scalar.ph472.prol ], [ 0, %vec.epilog.scalar.ph472.preheader ]
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv327.prol
  %i.oq = load float, ptr %i.op, align 4, !tbaa !108
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv327.prol ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !108
  %i.ot = fadd float %i.oq, %i.os
  store float %i.ot, ptr %i.or, align 4, !tbaa !108
  %indvars.iv.next328.prol = add nuw nsw i64 %indvars.iv327.prol, 1 ; 2 uses
  %prol.iter496.next = add i64 %prol.iter496, 1   ; 2 uses
  %prol.iter496.cmp.not = icmp eq i64 %prol.iter496.next, %xtraiter494
  br i1 %prol.iter496.cmp.not, label %vec.epilog.scalar.ph472.prol.loopexit, label %vec.epilog.scalar.ph472.prol, !llvm.loop !190

vec.epilog.scalar.ph472.prol.loopexit:            ; preds = %vec.epilog.scalar.ph472.prol, %vec.epilog.scalar.ph472.preheader
  %indvars.iv327.unr = phi i64 [ %indvars.iv327.ph, %vec.epilog.scalar.ph472.preheader ], [ %indvars.iv.next328.prol, %vec.epilog.scalar.ph472.prol ]
  %i.ou = sub nsw i64 %indvars.iv327.ph, %wide.trip.count330
  %i.ov = icmp ugt i64 %i.ou, -8
  br i1 %i.ov, label %.loopexit, label %vec.epilog.scalar.ph472

vec.epilog.scalar.ph472:                          ; preds = %vec.epilog.scalar.ph472.prol.loopexit, %vec.epilog.scalar.ph472
  %indvars.iv327 = phi i64 [ %indvars.iv.next328.7, %vec.epilog.scalar.ph472 ], [ %indvars.iv327.unr, %vec.epilog.scalar.ph472.prol.loopexit ] ; 10 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv327
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !108
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv327 ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !108
  %i.pa = fadd float %i.ox, %i.oz
  store float %i.pa, ptr %i.oy, align 4, !tbaa !108
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.next328
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !108
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next328 ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !108
  %i.pf = fadd float %i.pc, %i.pe
  store float %i.pf, ptr %i.pd, align 4, !tbaa !108
  %indvars.iv.next328.1 = add nuw nsw i64 %indvars.iv327, 2 ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.next328.1
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !108
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next328.1 ; 2 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !108
  %i.pk = fadd float %i.ph, %i.pj
  store float %i.pk, ptr %i.pi, align 4, !tbaa !108
  %indvars.iv.next328.2 = add nuw nsw i64 %indvars.iv327, 3 ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.next328.2
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !108
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next328.2 ; 2 uses
  %i.po = load float, ptr %i.pn, align 4, !tbaa !108
  %i.pp = fadd float %i.pm, %i.po
  store float %i.pp, ptr %i.pn, align 4, !tbaa !108
  %indvars.iv.next328.3 = add nuw nsw i64 %indvars.iv327, 4 ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.next328.3
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !108
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next328.3 ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !108
  %i.pu = fadd float %i.pr, %i.pt
  store float %i.pu, ptr %i.ps, align 4, !tbaa !108
  %indvars.iv.next328.4 = add nuw nsw i64 %indvars.iv327, 5 ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.next328.4
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !108
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next328.4 ; 2 uses
  %i.py = load float, ptr %i.px, align 4, !tbaa !108
  %i.pz = fadd float %i.pw, %i.py
  store float %i.pz, ptr %i.px, align 4, !tbaa !108
  %indvars.iv.next328.5 = add nuw nsw i64 %indvars.iv327, 6 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.next328.5
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !108
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next328.5 ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !108
  %i.qe = fadd float %i.qb, %i.qd
  store float %i.qe, ptr %i.qc, align 4, !tbaa !108
  %indvars.iv.next328.6 = add nuw nsw i64 %indvars.iv327, 7 ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %indvars.iv.next328.6
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !108
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next328.6 ; 2 uses
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !108
  %i.qj = fadd float %i.qg, %i.qi
  store float %i.qj, ptr %i.qh, align 4, !tbaa !108
  %indvars.iv.next328.7 = add nuw nsw i64 %indvars.iv327, 8 ; 2 uses
  %exitcond331.not.7 = icmp eq i64 %indvars.iv.next328.7, %wide.trip.count330
  br i1 %exitcond331.not.7, label %.loopexit, label %vec.epilog.scalar.ph472, !llvm.loop !191

.loopexit:                                        ; preds = %vec.epilog.scalar.ph472.prol.loopexit, %vec.epilog.scalar.ph472, %middle.block468, %vec.epilog.middle.block482, %bb.m, %bb.l
  %i.qk = add nuw i64 %.0289, 1                   ; 2 uses
  %i.ql = load ptr, ptr %i.t, align 8, !tbaa !195
  %i.qm = load ptr, ptr %i.s, align 8, !tbaa !196 ; 2 uses
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = sdiv exact i64 %i.qp, 28
  %i.qr = icmp ult i64 %i.qk, %i.qq
  br i1 %i.qr, label %bb.g, label %._crit_edge291, !llvm.loop !192
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
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.q = load i32, ptr %i.p, align 4, !tbaa !106  ; 3 uses
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
  %.pre = load i32, ptr %i.aa, align 4            ; 2 uses
  %.pre37 = load i32, ptr %i.z, align 4           ; 3 uses
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 9 uses
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ac = mul i32 %.pre37, %.pre
  %i.ad = mul i32 %i.q, %i.o
  %min.iters.check = icmp ult i32 %i.x, 4
  %i.ae = trunc nsw i64 %i.ab to i32              ; 2 uses
  %i.af = icmp ugt i64 %i.ab, 4294967295
  %min.iters.check42 = icmp ult i32 %i.x, 32
  %i.ag = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  %n.vec46 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n50 = icmp eq i64 %n.vec46, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader26.preheader, %._crit_edge29
  %.02330 = phi i32 [ %i.ds, %._crit_edge29 ], [ 0, %.preheader26.preheader ] ; 5 uses
  %i.ah = mul i32 %i.ac, %.02330
  %i.ai = mul i32 %i.ad, %.02330
  %i.aj = mul i32 %.02330, %i.o
  %i.ak = mul i32 %.pre, %.02330
  br label %iter.check

iter.check:                                       ; preds = %.preheader26, %._crit_edge
  %.02228 = phi i32 [ 0, %.preheader26 ], [ %i.dr, %._crit_edge ] ; 5 uses
  %reass.add = add i32 %.02228, %i.aj
  %reass.mul = mul i32 %reass.add, %i.q           ; 9 uses
  %reass.add24 = add i32 %i.ak, %.02228
  %reass.mul25 = mul i32 %reass.add24, %.pre37    ; 9 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.al = mul i32 %i.q, %.02228
  %i.am = add i32 %i.ai, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = add i64 %i.ao, %i.g
  %i.aq = mul i32 %.pre37, %.02228
  %i.ar = add i32 %i.ah, %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 2
  %i.au = add i64 %i.at, %i.j
  %i.av = add i32 %reass.mul25, %i.ae
  %i.aw = icmp slt i32 %i.av, %reass.mul25
  %i.ax = add i32 %reass.mul, %i.ae
  %i.ay = icmp slt i32 %i.ax, %reass.mul
  %i.az = or i1 %i.ay, %i.af
  %i.ba = or i1 %i.aw, %i.az
  %i.bb = sub i64 %i.ap, %i.au
  %diff.check = icmp ugt i64 %i.bb, -128
  %or.cond = select i1 %i.ba, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.bc = trunc nuw nsw i64 %index to i32         ; 2 uses
  %i.bd = add i32 %reass.mul, %i.bc
  %i.be = add i32 %reass.mul25, %i.bc
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %wide.load = load <8 x float>, ptr %i.bg, align 4, !tbaa !108
  %wide.load43 = load <8 x float>, ptr %i.bh, align 4, !tbaa !108
  %wide.load44 = load <8 x float>, ptr %i.bi, align 4, !tbaa !108
  %wide.load45 = load <8 x float>, ptr %i.bj, align 4, !tbaa !108
  %i.bk = sext i32 %i.be to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bk ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <8 x float> %wide.load, ptr %i.bl, align 4, !tbaa !108
  store <8 x float> %wide.load43, ptr %i.bm, align 4, !tbaa !108
  store <8 x float> %wide.load44, ptr %i.bn, align 4, !tbaa !108
  store <8 x float> %wide.load45, ptr %i.bo, align 4, !tbaa !108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %i.bq = trunc nuw nsw i64 %index47 to i32       ; 2 uses
  %i.br = add i32 %reass.mul, %i.bq
  %i.bs = add i32 %reass.mul25, %i.bq
  %i.bt = sext i32 %i.br to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bt
  %wide.load48 = load <4 x float>, ptr %i.bu, align 4, !tbaa !108
  %i.bv = sext i32 %i.bs to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bv
  store <4 x float> %wide.load48, ptr %i.bw, align 4, !tbaa !108
  %index.next49 = add nuw i64 %index47, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next49, %n.vec46
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !214

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n50, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.by = trunc nuw nsw i64 %indvars.iv.prol to i32 ; 2 uses
  %i.bz = add i32 %reass.mul, %i.by
  %i.ca = add i32 %reass.mul25, %i.by
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !108
  %i.ce = sext i32 %i.ca to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ce
  store float %i.cd, ptr %i.cf, align 4, !tbaa !108
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !215

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.cg = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cj = add i32 %reass.mul, %i.ci
  %i.ck = add i32 %reass.mul25, %i.ci
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !108
  %i.co = sext i32 %i.ck to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.co
  store float %i.cn, ptr %i.cp, align 4, !tbaa !108
  %i.cq = trunc i64 %indvars.iv to i32
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  %i.cs = add i32 %reass.mul, %i.cr
  %i.ct = add i32 %reass.mul25, %i.cr
  %i.cu = sext i32 %i.cs to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !108
  %i.cx = sext i32 %i.ct to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.cx
  store float %i.cw, ptr %i.cy, align 4, !tbaa !108
  %i.cz = trunc i64 %indvars.iv to i32
  %i.da = add i32 %i.cz, 2                        ; 2 uses
  %i.db = add i32 %reass.mul, %i.da
  %i.dc = add i32 %reass.mul25, %i.da
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !108
  %i.dg = sext i32 %i.dc to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dg
  store float %i.df, ptr %i.dh, align 4, !tbaa !108
  %i.di = trunc i64 %indvars.iv to i32
  %i.dj = add i32 %i.di, 3                        ; 2 uses
  %i.dk = add i32 %reass.mul, %i.dj
  %i.dl = add i32 %reass.mul25, %i.dj
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !108
  %i.dp = sext i32 %i.dl to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.dp
  store float %i.do, ptr %i.dq, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !216

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dr = add nuw nsw i32 %.02228, 1              ; 2 uses
  %exitcond35.not = icmp eq i32 %i.dr, %i.u
  br i1 %exitcond35.not, label %._crit_edge29, label %iter.check, !llvm.loop !217

._crit_edge29:                                    ; preds = %._crit_edge
  %i.ds = add nuw nsw i32 %.02330, 1              ; 2 uses
  %exitcond36.not = icmp eq i32 %i.ds, %i.r
  br i1 %exitcond36.not, label %._crit_edge31.split, label %.preheader26, !llvm.loop !218

._crit_edge31.split:                              ; preds = %._crit_edge29, %.preheader26.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

declare noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3
end_hunk_1
begin_hunk_2_@_Z21wrap_periodic_pmegridPK9gmx_pme_tN3gmx8ArrayRefIfEE:bb.a
  %bound1 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict = and i1 %bound0, %bound1
  %i.al = or i1 %found.conflict, %stride.check
  br label %iter.check

iter.check:                                       ; preds = %.preheader87, %._crit_edge
  %indvars.iv117 = phi i64 [ 0, %.preheader87 ], [ %indvars.iv.next118, %._crit_edge ] ; 2 uses
  %i.am = add nuw nsw i64 %indvars.iv117, %i.ak
  %i.an = mul nsw i64 %i.am, %i.s                 ; 2 uses
  %gep164 = getelementptr [4 x i8], ptr %invariant.gep163, i64 %i.an ; 11 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.an ; 11 uses
  %brmerge282 = select i1 %min.iters.check, i1 true, i1 %i.al
  br i1 %brmerge282, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %gep164, i64 %index ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = getelementptr i8, ptr %i.ao, i64 64
  %i.ar = getelementptr i8, ptr %i.ao, i64 96
  %wide.load = load <8 x float>, ptr %i.ao, align 4, !tbaa !108, !alias.scope !251
  %wide.load178 = load <8 x float>, ptr %i.ap, align 4, !tbaa !108, !alias.scope !251
  %wide.load179 = load <8 x float>, ptr %i.aq, align 4, !tbaa !108, !alias.scope !251
  %wide.load180 = load <8 x float>, ptr %i.ar, align 4, !tbaa !108, !alias.scope !251
  %i.as = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 5 uses
  %i.at = getelementptr i8, ptr %i.as, i64 32     ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 64     ; 2 uses
  %i.av = getelementptr i8, ptr %i.as, i64 96     ; 2 uses
  %wide.load181 = load <8 x float>, ptr %i.as, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %wide.load182 = load <8 x float>, ptr %i.at, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %wide.load183 = load <8 x float>, ptr %i.au, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %wide.load184 = load <8 x float>, ptr %i.av, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %i.aw = fadd <8 x float> %wide.load, %wide.load181
  %i.ax = fadd <8 x float> %wide.load178, %wide.load182
  %i.ay = fadd <8 x float> %wide.load179, %wide.load183
  %i.az = fadd <8 x float> %wide.load180, %wide.load184
  store <8 x float> %i.aw, ptr %i.as, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  store <8 x float> %i.ax, ptr %i.at, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  store <8 x float> %i.ay, ptr %i.au, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  store <8 x float> %i.az, ptr %i.av, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index186 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next189, %vec.epilog.vector.body ] ; 3 uses
  %i.bb = getelementptr [4 x i8], ptr %gep164, i64 %index186
  %wide.load187 = load <4 x float>, ptr %i.bb, align 4, !tbaa !108, !alias.scope !251
  %i.bc = getelementptr [4 x i8], ptr %invariant.gep, i64 %index186 ; 2 uses
  %wide.load188 = load <4 x float>, ptr %i.bc, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %i.bd = fadd <4 x float> %wide.load187, %wide.load188
  store <4 x float> %i.bd, ptr %i.bc, align 4, !tbaa !108, !alias.scope !252, !noalias !251
  %index.next189 = add nuw i64 %index186, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next189, %n.vec185
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !228

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n190, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec185, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.bf = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bg = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.prol
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !108
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol ; 2 uses
  %i.bi = load float, ptr %gep.prol, align 4, !tbaa !108
  %i.bj = fadd float %i.bh, %i.bi
  store float %i.bj, ptr %gep.prol, align 4, !tbaa !108
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !229

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -8
  br i1 %i.bl, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.bm = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !108
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bo = load float, ptr %gep, align 4, !tbaa !108
  %i.bp = fadd float %i.bn, %i.bo
  store float %i.bp, ptr %gep, align 4, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next
  %i.br = load float, ptr %i.bq, align 4, !tbaa !108
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.bs = load float, ptr %gep.1, align 4, !tbaa !108
  %i.bt = fadd float %i.br, %i.bs
  store float %i.bt, ptr %gep.1, align 4, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.1
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !108
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1 ; 2 uses
  %i.bw = load float, ptr %gep.2, align 4, !tbaa !108
  %i.bx = fadd float %i.bv, %i.bw
  store float %i.bx, ptr %gep.2, align 4, !tbaa !108
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.2
  %i.bz = load float, ptr %i.by, align 4, !tbaa !108
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2 ; 2 uses
  %i.ca = load float, ptr %gep.3, align 4, !tbaa !108
  %i.cb = fadd float %i.bz, %i.ca
  store float %i.cb, ptr %gep.3, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.3
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !108
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3 ; 2 uses
  %i.ce = load float, ptr %gep.4, align 4, !tbaa !108
  %i.cf = fadd float %i.cd, %i.ce
  store float %i.cf, ptr %gep.4, align 4, !tbaa !108
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !108
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4 ; 2 uses
  %i.ci = load float, ptr %gep.5, align 4, !tbaa !108
  %i.cj = fadd float %i.ch, %i.ci
  store float %i.cj, ptr %gep.5, align 4, !tbaa !108
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.5
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !108
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5 ; 2 uses
  %i.cm = load float, ptr %gep.6, align 4, !tbaa !108
  %i.cn = fadd float %i.cl, %i.cm
  store float %i.cn, ptr %gep.6, align 4, !tbaa !108
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %gep164, i64 %indvars.iv.next.6
  %i.cp = load float, ptr %i.co, align 4, !tbaa !108
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6 ; 2 uses
  %i.cq = load float, ptr %gep.7, align 4, !tbaa !108
  %i.cr = fadd float %i.cp, %i.cq
  store float %i.cr, ptr %gep.7, align 4, !tbaa !108
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !230

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %._crit_edge90, label %iter.check, !llvm.loop !231

._crit_edge90:                                    ; preds = %._crit_edge
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge92.split, label %.preheader87, !llvm.loop !232

._crit_edge92.split:                              ; preds = %._crit_edge90
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !141
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %.preheader84.lr.ph, label %.thread

._crit_edge92.split.thread161:                    ; preds = %.preheader87.lr.ph
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !141
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %.preheader84.lr.ph, label %.thread

._crit_edge92.split.thread:                       ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !141
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %._crit_edge101.split, label %.thread

.preheader84.lr.ph:                               ; preds = %._crit_edge92.split, %._crit_edge92.split.thread161
  %i.db = icmp slt i32 %i.l, 2
  %i.dc = icmp slt i32 %i.f, 1
  %brmerge112 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %brmerge112, label %._crit_edge101.split, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %.preheader84.lr.ph
  %i.dd = sext i32 %i.j to i64                    ; 3 uses
  %i.de = sext i32 %i.h to i64                    ; 2 uses
  %wide.trip.count140 = zext nneg i32 %i.o to i64
  %wide.trip.count135 = zext i32 %i.m to i64      ; 2 uses
  %wide.trip.count130 = zext nneg i32 %i.f to i64 ; 10 uses
  %i.df = mul nsw i64 %i.dd, %i.de
  %i.dg = shl i64 %i.df, 2
  %i.dh = add nuw nsw i64 %wide.trip.count135, 4611686018427387903
  %i.di = mul i64 %i.dh, %i.dd
  %i.dj = shl nuw nsw i64 %wide.trip.count130, 2
  %i.dk = add i64 %i.di, %wide.trip.count130
  %i.dl = shl i64 %i.dk, 2
  %scevgep194 = getelementptr i8, ptr %1, i64 %i.dj
  %i.dm = mul i32 %i.d, %i.j
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul i32 %i.j, %i.h
  %i.dp = zext i32 %i.do to i64
  %i.dq = zext i32 %i.j to i64
  %i.dr = getelementptr i8, ptr %1, i64 %i.dl
  %min.iters.check200 = icmp ult i32 %i.f, 4
  %stride.check199 = icmp slt i32 %i.j, 0
  %min.iters.check202 = icmp ult i32 %i.f, 32
  %i.ds = and i64 %wide.trip.count130, 28
  %n.vec204 = and i64 %wide.trip.count130, 2147483616 ; 4 uses
  %cmp.n217 = icmp eq i64 %n.vec204, %wide.trip.count130
  %min.epilog.iters.check222 = icmp eq i64 %i.ds, 0
  %n.vec224 = and i64 %wide.trip.count130, 2147483644 ; 3 uses
  %cmp.n231 = icmp eq i64 %n.vec224, %wide.trip.count130
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84.preheader, %._crit_edge98
  %indvars.iv137 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next138, %._crit_edge98 ] ; 4 uses
  %i.dt = mul i64 %i.dg, %indvars.iv137           ; 2 uses
  %scevgep192 = getelementptr i8, ptr %1, i64 %i.dt
  %scevgep193 = getelementptr i8, ptr %i.dr, i64 %i.dt
  %i.du = mul i64 %indvars.iv137, %i.dp
  %i.dv = add i64 %i.du, %i.dn
  %i.dw = mul nsw i64 %indvars.iv137, %i.de       ; 2 uses
  %i.dx = trunc nsw i64 %i.dw to i32
  %invariant.op99 = add i32 %i.d, %i.dx
  br label %iter.check219

iter.check219:                                    ; preds = %.preheader84, %._crit_edge96
  %indvars.iv132 = phi i64 [ 0, %.preheader84 ], [ %indvars.iv.next133, %._crit_edge96 ] ; 4 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv132 to i32
  %.reass.reass = add i32 %invariant.op99, %i.dy
  %i.dz = mul nsw i32 %.reass.reass, %i.j
  %i.ea = add nsw i64 %indvars.iv132, %i.dw
  %i.eb = mul nsw i64 %i.ea, %i.dd
  %i.ec = sext i32 %i.dz to i64
  %invariant.gep165 = getelementptr [4 x i8], ptr %1, i64 %i.ec ; 12 uses
  %invariant.gep167 = getelementptr [4 x i8], ptr %1, i64 %i.eb ; 11 uses
  br i1 %min.iters.check200, label %vec.epilog.scalar.ph220.preheader, label %vector.memcheck191

vector.memcheck191:                               ; preds = %iter.check219
  %i.ed = mul i64 %indvars.iv132, %i.dq
  %i.ee = add i64 %i.dv, %i.ed
  %sext = shl i64 %i.ee, 32
  %i.ef = ashr exact i64 %sext, 30
  %scevgep195 = getelementptr i8, ptr %scevgep194, i64 %i.ef
  %bound0196 = icmp ult ptr %scevgep192, %scevgep195
  %bound1197 = icmp ult ptr %invariant.gep165, %scevgep193
  %found.conflict198 = and i1 %bound0196, %bound1197
  %i.eg = or i1 %found.conflict198, %stride.check199
  br i1 %i.eg, label %vec.epilog.scalar.ph220.preheader, label %vector.main.loop.iter.check201

vector.main.loop.iter.check201:                   ; preds = %vector.memcheck191
  br i1 %min.iters.check202, label %vec.epilog.ph223, label %vector.body205

vector.body205:                                   ; preds = %vector.main.loop.iter.check201, %vector.body205
  %index206 = phi i64 [ %index.next215, %vector.body205 ], [ 0, %vector.main.loop.iter.check201 ] ; 3 uses
  %i.eh = getelementptr [4 x i8], ptr %invariant.gep165, i64 %index206 ; 4 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 32
  %i.ej = getelementptr i8, ptr %i.eh, i64 64
  %i.ek = getelementptr i8, ptr %i.eh, i64 96
  %wide.load207 = load <8 x float>, ptr %i.eh, align 4, !tbaa !108, !alias.scope !253
  %wide.load208 = load <8 x float>, ptr %i.ei, align 4, !tbaa !108, !alias.scope !253
  %wide.load209 = load <8 x float>, ptr %i.ej, align 4, !tbaa !108, !alias.scope !253
  %wide.load210 = load <8 x float>, ptr %i.ek, align 4, !tbaa !108, !alias.scope !253
  %i.el = getelementptr [4 x i8], ptr %invariant.gep167, i64 %index206 ; 5 uses
  %i.em = getelementptr i8, ptr %i.el, i64 32     ; 2 uses
  %i.en = getelementptr i8, ptr %i.el, i64 64     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.el, i64 96     ; 2 uses
  %wide.load211 = load <8 x float>, ptr %i.el, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %wide.load212 = load <8 x float>, ptr %i.em, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %wide.load213 = load <8 x float>, ptr %i.en, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %wide.load214 = load <8 x float>, ptr %i.eo, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %i.ep = fadd <8 x float> %wide.load207, %wide.load211
  %i.eq = fadd <8 x float> %wide.load208, %wide.load212
  %i.er = fadd <8 x float> %wide.load209, %wide.load213
  %i.es = fadd <8 x float> %wide.load210, %wide.load214
  store <8 x float> %i.ep, ptr %i.el, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  store <8 x float> %i.eq, ptr %i.em, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  store <8 x float> %i.er, ptr %i.en, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  store <8 x float> %i.es, ptr %i.eo, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %index.next215 = add nuw i64 %index206, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next215, %n.vec204
  br i1 %i.et, label %middle.block216, label %vector.body205, !llvm.loop !236

middle.block216:                                  ; preds = %vector.body205
  br i1 %cmp.n217, label %._crit_edge96, label %vec.epilog.iter.check221

vec.epilog.iter.check221:                         ; preds = %middle.block216
  br i1 %min.epilog.iters.check222, label %vec.epilog.scalar.ph220.preheader, label %vec.epilog.ph223, !prof !112

vec.epilog.ph223:                                 ; preds = %vector.main.loop.iter.check201, %vec.epilog.iter.check221
  %vec.epilog.resume.val218 = phi i64 [ %n.vec204, %vec.epilog.iter.check221 ], [ 0, %vector.main.loop.iter.check201 ]
  br label %vec.epilog.vector.body225

vec.epilog.vector.body225:                        ; preds = %vec.epilog.vector.body225, %vec.epilog.ph223
  %index226 = phi i64 [ %vec.epilog.resume.val218, %vec.epilog.ph223 ], [ %index.next229, %vec.epilog.vector.body225 ] ; 3 uses
  %i.eu = getelementptr [4 x i8], ptr %invariant.gep165, i64 %index226
  %wide.load227 = load <4 x float>, ptr %i.eu, align 4, !tbaa !108, !alias.scope !253
  %i.ev = getelementptr [4 x i8], ptr %invariant.gep167, i64 %index226 ; 2 uses
  %wide.load228 = load <4 x float>, ptr %i.ev, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %i.ew = fadd <4 x float> %wide.load227, %wide.load228
  store <4 x float> %i.ew, ptr %i.ev, align 4, !tbaa !108, !alias.scope !254, !noalias !253
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.ex, label %vec.epilog.middle.block230, label %vec.epilog.vector.body225, !llvm.loop !237

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body225
  br i1 %cmp.n231, label %._crit_edge96, label %vec.epilog.scalar.ph220.preheader

vec.epilog.scalar.ph220.preheader:                ; preds = %iter.check219, %vector.memcheck191, %vec.epilog.iter.check221, %vec.epilog.middle.block230
  %indvars.iv127.ph = phi i64 [ 0, %iter.check219 ], [ 0, %vector.memcheck191 ], [ %n.vec204, %vec.epilog.iter.check221 ], [ %n.vec224, %vec.epilog.middle.block230 ] ; 4 uses
  %i.ey = sub nsw i64 %wide.trip.count130, %indvars.iv127.ph
  %xtraiter276 = and i64 %i.ey, 7                 ; 2 uses
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %vec.epilog.scalar.ph220.prol.loopexit, label %vec.epilog.scalar.ph220.prol

vec.epilog.scalar.ph220.prol:                     ; preds = %vec.epilog.scalar.ph220.preheader, %vec.epilog.scalar.ph220.prol
  %indvars.iv127.prol = phi i64 [ %indvars.iv.next128.prol, %vec.epilog.scalar.ph220.prol ], [ %indvars.iv127.ph, %vec.epilog.scalar.ph220.preheader ] ; 3 uses
  %prol.iter278 = phi i64 [ %prol.iter278.next, %vec.epilog.scalar.ph220.prol ], [ 0, %vec.epilog.scalar.ph220.preheader ]
  %gep166.prol = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv127.prol
  %i.ez = load float, ptr %gep166.prol, align 4, !tbaa !108
  %gep168.prol = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv127.prol ; 2 uses
  %i.fa = load float, ptr %gep168.prol, align 4, !tbaa !108
  %i.fb = fadd float %i.ez, %i.fa
  store float %i.fb, ptr %gep168.prol, align 4, !tbaa !108
  %indvars.iv.next128.prol = add nuw nsw i64 %indvars.iv127.prol, 1 ; 2 uses
  %prol.iter278.next = add i64 %prol.iter278, 1   ; 2 uses
  %prol.iter278.cmp.not = icmp eq i64 %prol.iter278.next, %xtraiter276
  br i1 %prol.iter278.cmp.not, label %vec.epilog.scalar.ph220.prol.loopexit, label %vec.epilog.scalar.ph220.prol, !llvm.loop !238

vec.epilog.scalar.ph220.prol.loopexit:            ; preds = %vec.epilog.scalar.ph220.prol, %vec.epilog.scalar.ph220.preheader
  %indvars.iv127.unr = phi i64 [ %indvars.iv127.ph, %vec.epilog.scalar.ph220.preheader ], [ %indvars.iv.next128.prol, %vec.epilog.scalar.ph220.prol ]
  %i.fc = sub nsw i64 %indvars.iv127.ph, %wide.trip.count130
  %i.fd = icmp ugt i64 %i.fc, -8
  br i1 %i.fd, label %._crit_edge96, label %vec.epilog.scalar.ph220

vec.epilog.scalar.ph220:                          ; preds = %vec.epilog.scalar.ph220.prol.loopexit, %vec.epilog.scalar.ph220
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.7, %vec.epilog.scalar.ph220 ], [ %indvars.iv127.unr, %vec.epilog.scalar.ph220.prol.loopexit ] ; 10 uses
  %gep166 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv127
  %i.fe = load float, ptr %gep166, align 4, !tbaa !108
  %gep168 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv127 ; 2 uses
  %i.ff = load float, ptr %gep168, align 4, !tbaa !108
  %i.fg = fadd float %i.fe, %i.ff
  store float %i.fg, ptr %gep168, align 4, !tbaa !108
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %gep166.1 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128
  %i.fh = load float, ptr %gep166.1, align 4, !tbaa !108
  %gep168.1 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128 ; 2 uses
  %i.fi = load float, ptr %gep168.1, align 4, !tbaa !108
  %i.fj = fadd float %i.fh, %i.fi
  store float %i.fj, ptr %gep168.1, align 4, !tbaa !108
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %gep166.2 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.1
  %i.fk = load float, ptr %gep166.2, align 4, !tbaa !108
  %gep168.2 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.1 ; 2 uses
  %i.fl = load float, ptr %gep168.2, align 4, !tbaa !108
  %i.fm = fadd float %i.fk, %i.fl
  store float %i.fm, ptr %gep168.2, align 4, !tbaa !108
  %indvars.iv.next128.2 = add nuw nsw i64 %indvars.iv127, 3 ; 2 uses
  %gep166.3 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.2
  %i.fn = load float, ptr %gep166.3, align 4, !tbaa !108
  %gep168.3 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.2 ; 2 uses
  %i.fo = load float, ptr %gep168.3, align 4, !tbaa !108
  %i.fp = fadd float %i.fn, %i.fo
  store float %i.fp, ptr %gep168.3, align 4, !tbaa !108
  %indvars.iv.next128.3 = add nuw nsw i64 %indvars.iv127, 4 ; 2 uses
  %gep166.4 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.3
  %i.fq = load float, ptr %gep166.4, align 4, !tbaa !108
  %gep168.4 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.3 ; 2 uses
  %i.fr = load float, ptr %gep168.4, align 4, !tbaa !108
  %i.fs = fadd float %i.fq, %i.fr
  store float %i.fs, ptr %gep168.4, align 4, !tbaa !108
  %indvars.iv.next128.4 = add nuw nsw i64 %indvars.iv127, 5 ; 2 uses
  %gep166.5 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.4
  %i.ft = load float, ptr %gep166.5, align 4, !tbaa !108
  %gep168.5 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.4 ; 2 uses
  %i.fu = load float, ptr %gep168.5, align 4, !tbaa !108
  %i.fv = fadd float %i.ft, %i.fu
  store float %i.fv, ptr %gep168.5, align 4, !tbaa !108
  %indvars.iv.next128.5 = add nuw nsw i64 %indvars.iv127, 6 ; 2 uses
  %gep166.6 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.5
  %i.fw = load float, ptr %gep166.6, align 4, !tbaa !108
  %gep168.6 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.5 ; 2 uses
  %i.fx = load float, ptr %gep168.6, align 4, !tbaa !108
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %gep168.6, align 4, !tbaa !108
  %indvars.iv.next128.6 = add nuw nsw i64 %indvars.iv127, 7 ; 2 uses
  %gep166.7 = getelementptr [4 x i8], ptr %invariant.gep165, i64 %indvars.iv.next128.6
  %i.fz = load float, ptr %gep166.7, align 4, !tbaa !108
  %gep168.7 = getelementptr [4 x i8], ptr %invariant.gep167, i64 %indvars.iv.next128.6 ; 2 uses
  %i.ga = load float, ptr %gep168.7, align 4, !tbaa !108
  %i.gb = fadd float %i.fz, %i.ga
  store float %i.gb, ptr %gep168.7, align 4, !tbaa !108
  %indvars.iv.next128.7 = add nuw nsw i64 %indvars.iv127, 8 ; 2 uses
  %exitcond131.not.7 = icmp eq i64 %indvars.iv.next128.7, %wide.trip.count130
  br i1 %exitcond131.not.7, label %._crit_edge96, label %vec.epilog.scalar.ph220, !llvm.loop !239

._crit_edge96:                                    ; preds = %vec.epilog.scalar.ph220.prol.loopexit, %vec.epilog.scalar.ph220, %vec.epilog.middle.block230, %middle.block216
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge98, label %iter.check219, !llvm.loop !240

._crit_edge98:                                    ; preds = %._crit_edge96
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge101.split, label %.preheader84, !llvm.loop !241

._crit_edge101.split:                             ; preds = %._crit_edge98, %._crit_edge92.split.thread, %.preheader84.lr.ph
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !142
  %i.ge = icmp eq i32 %i.gd, 1
  br i1 %i.ge, label %.thread81, label %.loopexit

.thread:                                          ; preds = %._crit_edge92.split.thread161, %._crit_edge92.split.thread, %._crit_edge92.split
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !142
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %.thread81, label %.loopexit

.thread81:                                        ; preds = %.thread, %._crit_edge101.split
  %i.gi = phi i32 [ %i.d, %._crit_edge101.split ], [ %i.h, %.thread ] ; 2 uses
  %i.gj = icmp sgt i32 %i.l, 1
  br i1 %i.gj, label %.preheader82.lr.ph, label %.loopexit

.preheader82.lr.ph:                               ; preds = %.thread81
  %i.gk = icmp slt i32 %i.gi, 1
  %i.gl = icmp slt i32 %i.f, 1
  %brmerge115 = select i1 %i.gk, i1 true, i1 %i.gl
  br i1 %brmerge115, label %.loopexit, label %.preheader82.preheader

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.gm = sext i32 %i.j to i64                    ; 6 uses
  %i.gn = sext i32 %i.b to i64                    ; 3 uses
  %i.go = sext i32 %i.h to i64                    ; 5 uses
  %wide.trip.count155 = zext nneg i32 %i.m to i64
  %wide.trip.count150 = zext nneg i32 %i.gi to i64 ; 3 uses
  %wide.trip.count145 = zext nneg i32 %i.f to i64 ; 10 uses
  %i.gp = mul nsw i64 %i.gm, %i.go
  %i.gq = shl i64 %i.gp, 2
  %i.gr = add nuw nsw i64 %wide.trip.count150, 4611686018427387903
  %i.gs = mul i64 %i.gr, %i.gm
  %i.gt = shl nuw nsw i64 %wide.trip.count145, 2
  %i.gu = add i64 %i.gs, %wide.trip.count145
  %i.gv = shl i64 %i.gu, 2
  %i.gw = mul nsw i64 %i.gn, %i.gm
  %i.gx = mul i64 %i.gw, %i.go
  %i.gy = shl i64 %i.gx, 2
  %3 = mul nsw i64 %i.gn, %i.go
  %i.gz = add i64 %3, %wide.trip.count150
  %i.ha = shl i64 %i.gz, 2
  %i.hb = add i64 %i.ha, -4
  %i.hc = mul i64 %i.hb, %i.gm
  %i.hd = getelementptr i8, ptr %1, i64 %i.gv
  %i.he = getelementptr i8, ptr %1, i64 %i.gy
  %i.hf = getelementptr i8, ptr %1, i64 %i.hc
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.gt
  %min.iters.check243 = icmp ult i32 %i.f, 4
  %stride.check241 = icmp slt i32 %i.j, 0
  %min.iters.check245 = icmp ult i32 %i.f, 32
  %i.hh = and i64 %wide.trip.count145, 28
  %n.vec247 = and i64 %wide.trip.count145, 2147483616 ; 4 uses
  %cmp.n260 = icmp eq i64 %n.vec247, %wide.trip.count145
  %min.epilog.iters.check265 = icmp eq i64 %i.hh, 0
  %n.vec267 = and i64 %wide.trip.count145, 2147483644 ; 3 uses
  %cmp.n274 = icmp eq i64 %n.vec267, %wide.trip.count145
  br label %.preheader82

.preheader82:                                     ; preds = %.preheader82.preheader, %._crit_edge106
  %indvars.iv152 = phi i64 [ 0, %.preheader82.preheader ], [ %indvars.iv.next153, %._crit_edge106 ] ; 4 uses
  %i.hi = mul i64 %i.gq, %indvars.iv152           ; 4 uses
  %scevgep234 = getelementptr i8, ptr %1, i64 %i.hi
  %scevgep235 = getelementptr i8, ptr %i.hd, i64 %i.hi
  %scevgep236 = getelementptr i8, ptr %i.he, i64 %i.hi
  %scevgep237 = getelementptr i8, ptr %i.hg, i64 %i.hi
  %i.hj = add nsw i64 %indvars.iv152, %i.gn
  %i.hk = mul nsw i64 %i.hj, %i.go
  %i.hl = mul nsw i64 %indvars.iv152, %i.go
  %bound0238 = icmp ult ptr %scevgep234, %scevgep237
  %bound1239 = icmp ult ptr %scevgep236, %scevgep235
  %found.conflict240 = and i1 %bound0238, %bound1239
  %i.hm = or i1 %found.conflict240, %stride.check241
  br label %iter.check262

iter.check262:                                    ; preds = %.preheader82, %._crit_edge104
  %indvars.iv147 = phi i64 [ 0, %.preheader82 ], [ %indvars.iv.next148, %._crit_edge104 ] ; 3 uses
  %i.hn = add nsw i64 %indvars.iv147, %i.hk
  %i.ho = mul nsw i64 %i.hn, %i.gm
  %i.hp = add nsw i64 %indvars.iv147, %i.hl
  %i.hq = mul nsw i64 %i.hp, %i.gm
  %invariant.gep169 = getelementptr [4 x i8], ptr %1, i64 %i.ho ; 11 uses
  %invariant.gep171 = getelementptr [4 x i8], ptr %1, i64 %i.hq ; 11 uses
  %brmerge283 = select i1 %min.iters.check243, i1 true, i1 %i.hm
  br i1 %brmerge283, label %vec.epilog.scalar.ph263.preheader, label %vector.main.loop.iter.check244

vector.main.loop.iter.check244:                   ; preds = %iter.check262
  br i1 %min.iters.check245, label %vec.epilog.ph266, label %vector.body248

vector.body248:                                   ; preds = %vector.main.loop.iter.check244, %vector.body248
  %index249 = phi i64 [ %index.next258, %vector.body248 ], [ 0, %vector.main.loop.iter.check244 ] ; 3 uses
  %i.hr = getelementptr [4 x i8], ptr %invariant.gep169, i64 %index249 ; 4 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 32
  %i.ht = getelementptr i8, ptr %i.hr, i64 64
  %i.hu = getelementptr i8, ptr %i.hr, i64 96
  %wide.load250 = load <8 x float>, ptr %i.hr, align 4, !tbaa !108, !alias.scope !255
  %wide.load251 = load <8 x float>, ptr %i.hs, align 4, !tbaa !108, !alias.scope !255
  %wide.load252 = load <8 x float>, ptr %i.ht, align 4, !tbaa !108, !alias.scope !255
  %wide.load253 = load <8 x float>, ptr %i.hu, align 4, !tbaa !108, !alias.scope !255
  %i.hv = getelementptr [4 x i8], ptr %invariant.gep171, i64 %index249 ; 5 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 32     ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hv, i64 64     ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hv, i64 96     ; 2 uses
  %wide.load254 = load <8 x float>, ptr %i.hv, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %wide.load255 = load <8 x float>, ptr %i.hw, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %wide.load256 = load <8 x float>, ptr %i.hx, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %wide.load257 = load <8 x float>, ptr %i.hy, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %i.hz = fadd <8 x float> %wide.load250, %wide.load254
  %i.ia = fadd <8 x float> %wide.load251, %wide.load255
  %i.ib = fadd <8 x float> %wide.load252, %wide.load256
  %i.ic = fadd <8 x float> %wide.load253, %wide.load257
  store <8 x float> %i.hz, ptr %i.hv, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  store <8 x float> %i.ia, ptr %i.hw, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  store <8 x float> %i.ib, ptr %i.hx, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  store <8 x float> %i.ic, ptr %i.hy, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %index.next258 = add nuw i64 %index249, 32      ; 2 uses
  %i.id = icmp eq i64 %index.next258, %n.vec247
  br i1 %i.id, label %middle.block259, label %vector.body248, !llvm.loop !245

middle.block259:                                  ; preds = %vector.body248
  br i1 %cmp.n260, label %._crit_edge104, label %vec.epilog.iter.check264

vec.epilog.iter.check264:                         ; preds = %middle.block259
  br i1 %min.epilog.iters.check265, label %vec.epilog.scalar.ph263.preheader, label %vec.epilog.ph266, !prof !112

vec.epilog.ph266:                                 ; preds = %vector.main.loop.iter.check244, %vec.epilog.iter.check264
  %vec.epilog.resume.val261 = phi i64 [ %n.vec247, %vec.epilog.iter.check264 ], [ 0, %vector.main.loop.iter.check244 ]
  br label %vec.epilog.vector.body268

vec.epilog.vector.body268:                        ; preds = %vec.epilog.vector.body268, %vec.epilog.ph266
  %index269 = phi i64 [ %vec.epilog.resume.val261, %vec.epilog.ph266 ], [ %index.next272, %vec.epilog.vector.body268 ] ; 3 uses
  %i.ie = getelementptr [4 x i8], ptr %invariant.gep169, i64 %index269
  %wide.load270 = load <4 x float>, ptr %i.ie, align 4, !tbaa !108, !alias.scope !255
  %i.if = getelementptr [4 x i8], ptr %invariant.gep171, i64 %index269 ; 2 uses
  %wide.load271 = load <4 x float>, ptr %i.if, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %i.ig = fadd <4 x float> %wide.load270, %wide.load271
  store <4 x float> %i.ig, ptr %i.if, align 4, !tbaa !108, !alias.scope !256, !noalias !255
  %index.next272 = add nuw i64 %index269, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.ih, label %vec.epilog.middle.block273, label %vec.epilog.vector.body268, !llvm.loop !246

vec.epilog.middle.block273:                       ; preds = %vec.epilog.vector.body268
  br i1 %cmp.n274, label %._crit_edge104, label %vec.epilog.scalar.ph263.preheader

vec.epilog.scalar.ph263.preheader:                ; preds = %iter.check262, %vec.epilog.iter.check264, %vec.epilog.middle.block273
  %indvars.iv142.ph = phi i64 [ 0, %iter.check262 ], [ %n.vec267, %vec.epilog.middle.block273 ], [ %n.vec247, %vec.epilog.iter.check264 ] ; 4 uses
  %i.ii = sub nsw i64 %wide.trip.count145, %indvars.iv142.ph
  %xtraiter279 = and i64 %i.ii, 7                 ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %vec.epilog.scalar.ph263.prol.loopexit, label %vec.epilog.scalar.ph263.prol

vec.epilog.scalar.ph263.prol:                     ; preds = %vec.epilog.scalar.ph263.preheader, %vec.epilog.scalar.ph263.prol
  %indvars.iv142.prol = phi i64 [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph263.prol ], [ %indvars.iv142.ph, %vec.epilog.scalar.ph263.preheader ] ; 3 uses
  %prol.iter281 = phi i64 [ %prol.iter281.next, %vec.epilog.scalar.ph263.prol ], [ 0, %vec.epilog.scalar.ph263.preheader ]
  %gep170.prol = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv142.prol
  %i.ij = load float, ptr %gep170.prol, align 4, !tbaa !108
  %gep172.prol = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv142.prol ; 2 uses
  %i.ik = load float, ptr %gep172.prol, align 4, !tbaa !108
  %i.il = fadd float %i.ij, %i.ik
  store float %i.il, ptr %gep172.prol, align 4, !tbaa !108
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv142.prol, 1 ; 2 uses
  %prol.iter281.next = add i64 %prol.iter281, 1   ; 2 uses
  %prol.iter281.cmp.not = icmp eq i64 %prol.iter281.next, %xtraiter279
  br i1 %prol.iter281.cmp.not, label %vec.epilog.scalar.ph263.prol.loopexit, label %vec.epilog.scalar.ph263.prol, !llvm.loop !247

vec.epilog.scalar.ph263.prol.loopexit:            ; preds = %vec.epilog.scalar.ph263.prol, %vec.epilog.scalar.ph263.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %vec.epilog.scalar.ph263.preheader ], [ %indvars.iv.next143.prol, %vec.epilog.scalar.ph263.prol ]
  %i.im = sub nsw i64 %indvars.iv142.ph, %wide.trip.count145
  %i.in = icmp ugt i64 %i.im, -8
  br i1 %i.in, label %._crit_edge104, label %vec.epilog.scalar.ph263

vec.epilog.scalar.ph263:                          ; preds = %vec.epilog.scalar.ph263.prol.loopexit, %vec.epilog.scalar.ph263
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.7, %vec.epilog.scalar.ph263 ], [ %indvars.iv142.unr, %vec.epilog.scalar.ph263.prol.loopexit ] ; 10 uses
  %gep170 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv142
  %i.io = load float, ptr %gep170, align 4, !tbaa !108
  %gep172 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv142 ; 2 uses
  %i.ip = load float, ptr %gep172, align 4, !tbaa !108
  %i.iq = fadd float %i.io, %i.ip
  store float %i.iq, ptr %gep172, align 4, !tbaa !108
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %gep170.1 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143
  %i.ir = load float, ptr %gep170.1, align 4, !tbaa !108
  %gep172.1 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143 ; 2 uses
  %i.is = load float, ptr %gep172.1, align 4, !tbaa !108
  %i.it = fadd float %i.ir, %i.is
  store float %i.it, ptr %gep172.1, align 4, !tbaa !108
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %gep170.2 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.1
  %i.iu = load float, ptr %gep170.2, align 4, !tbaa !108
  %gep172.2 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.1 ; 2 uses
  %i.iv = load float, ptr %gep172.2, align 4, !tbaa !108
  %i.iw = fadd float %i.iu, %i.iv
  store float %i.iw, ptr %gep172.2, align 4, !tbaa !108
  %indvars.iv.next143.2 = add nuw nsw i64 %indvars.iv142, 3 ; 2 uses
  %gep170.3 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.2
  %i.ix = load float, ptr %gep170.3, align 4, !tbaa !108
  %gep172.3 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.2 ; 2 uses
  %i.iy = load float, ptr %gep172.3, align 4, !tbaa !108
  %i.iz = fadd float %i.ix, %i.iy
  store float %i.iz, ptr %gep172.3, align 4, !tbaa !108
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %gep170.4 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.3
  %i.ja = load float, ptr %gep170.4, align 4, !tbaa !108
  %gep172.4 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.3 ; 2 uses
  %i.jb = load float, ptr %gep172.4, align 4, !tbaa !108
  %i.jc = fadd float %i.ja, %i.jb
  store float %i.jc, ptr %gep172.4, align 4, !tbaa !108
  %indvars.iv.next143.4 = add nuw nsw i64 %indvars.iv142, 5 ; 2 uses
  %gep170.5 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.4
  %i.jd = load float, ptr %gep170.5, align 4, !tbaa !108
  %gep172.5 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.4 ; 2 uses
  %i.je = load float, ptr %gep172.5, align 4, !tbaa !108
  %i.jf = fadd float %i.jd, %i.je
  store float %i.jf, ptr %gep172.5, align 4, !tbaa !108
  %indvars.iv.next143.5 = add nuw nsw i64 %indvars.iv142, 6 ; 2 uses
  %gep170.6 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.5
  %i.jg = load float, ptr %gep170.6, align 4, !tbaa !108
  %gep172.6 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.5 ; 2 uses
  %i.jh = load float, ptr %gep172.6, align 4, !tbaa !108
  %i.ji = fadd float %i.jg, %i.jh
  store float %i.ji, ptr %gep172.6, align 4, !tbaa !108
  %indvars.iv.next143.6 = add nuw nsw i64 %indvars.iv142, 7 ; 2 uses
  %gep170.7 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %indvars.iv.next143.6
  %i.jj = load float, ptr %gep170.7, align 4, !tbaa !108
  %gep172.7 = getelementptr [4 x i8], ptr %invariant.gep171, i64 %indvars.iv.next143.6 ; 2 uses
  %i.jk = load float, ptr %gep172.7, align 4, !tbaa !108
  %i.jl = fadd float %i.jj, %i.jk
  store float %i.jl, ptr %gep172.7, align 4, !tbaa !108
  %indvars.iv.next143.7 = add nuw nsw i64 %indvars.iv142, 8 ; 2 uses
  %exitcond146.not.7 = icmp eq i64 %indvars.iv.next143.7, %wide.trip.count145
  br i1 %exitcond146.not.7, label %._crit_edge104, label %vec.epilog.scalar.ph263, !llvm.loop !248

._crit_edge104:                                   ; preds = %vec.epilog.scalar.ph263.prol.loopexit, %vec.epilog.scalar.ph263, %vec.epilog.middle.block273, %middle.block259
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %._crit_edge106, label %iter.check262, !llvm.loop !249

._crit_edge106:                                   ; preds = %._crit_edge104
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %.loopexit, label %.preheader82, !llvm.loop !250

.loopexit:                                        ; preds = %._crit_edge106, %.preheader82.lr.ph, %.thread81, %.thread, %._crit_edge101.split
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %"class.gmx::ArrayRef", align 8     ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  store ptr %1, ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.h, align 8
  store ptr %0, ptr %i.a, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i32, ptr %i.i, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.l = load i32, ptr %i.k, align 4, !tbaa !139  ; 2 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i32, ptr %i.m, align 8, !tbaa !104  ; 5 uses
  store i32 %i.n, ptr %i.c, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = load i32, ptr %i.o, align 8, !tbaa !105  ; 3 uses
  store i32 %i.p, ptr %i.d, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.r = load i32, ptr %i.q, align 4, !tbaa !106  ; 2 uses
  store i32 %i.r, ptr %i.e, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load i32, ptr %i.s, align 8, !tbaa !140  ; 2 uses
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.f, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !142
  %i.x = icmp eq i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !141  ; 2 uses
  br i1 %i.x, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = select i1 %i.aa, i32 %i.l, i32 %i.p     ; 2 uses
  %i.ac = icmp sgt i32 %i.t, 1
  br i1 %i.ac, label %.preheader16.lr.ph, label %.loopexit

.preheader16.lr.ph:                               ; preds = %bb.b
  %i.ad = icmp slt i32 %i.ab, 1
  %i.ae = icmp slt i32 %i.n, 1
  %brmerge = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %brmerge, label %.loopexit, label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader16.lr.ph
  %i.af = sext i32 %i.r to i64                    ; 3 uses
  %i.ag = sext i32 %i.p to i64                    ; 3 uses
  %i.ah = sext i32 %i.j to i64                    ; 2 uses
  %wide.trip.count32 = zext nneg i32 %i.u to i64
  %wide.trip.count27 = zext nneg i32 %i.ab to i64
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 8 uses
  %i.ai = mul nsw i64 %i.ah, %i.af
  %i.aj = mul i64 %i.ai, %i.ag
  %i.ak = shl i64 %i.aj, 2
  %min.iters.check = icmp ult i32 %i.n, 4
  %i.al = add i64 %i.ak, -1
  %diff.check = icmp ult i64 %i.al, 127
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %min.iters.check38 = icmp ult i32 %i.n, 32
  %i.am = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  %n.vec42 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n46 = icmp eq i64 %n.vec42, %wide.trip.count
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %._crit_edge19
  %indvars.iv29 = phi i64 [ 0, %.preheader16.preheader ], [ %indvars.iv.next30, %._crit_edge19 ] ; 3 uses
  %i.an = mul nsw i64 %indvars.iv29, %i.ag
  %i.ao = add nsw i64 %indvars.iv29, %i.ah
  %i.ap = mul nsw i64 %i.ao, %i.ag
  br label %iter.check

iter.check:                                       ; preds = %.preheader16, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %.preheader16 ], [ %indvars.iv.next25, %._crit_edge ] ; 3 uses
  %i.aq = add nsw i64 %indvars.iv24, %i.an
  %i.ar = mul nsw i64 %i.aq, %i.af
  %i.as = add nsw i64 %indvars.iv24, %i.ap
  %i.at = mul nsw i64 %i.as, %i.af
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ar ; 11 uses
  %invariant.gep36 = getelementptr [4 x i8], ptr %1, i64 %i.at ; 11 uses
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.au = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %i.aw = getelementptr i8, ptr %i.au, i64 64
  %i.ax = getelementptr i8, ptr %i.au, i64 96
  %wide.load = load <8 x float>, ptr %i.au, align 4, !tbaa !108
  %wide.load39 = load <8 x float>, ptr %i.av, align 4, !tbaa !108
  %wide.load40 = load <8 x float>, ptr %i.aw, align 4, !tbaa !108
  %wide.load41 = load <8 x float>, ptr %i.ax, align 4, !tbaa !108
  %i.ay = getelementptr [4 x i8], ptr %invariant.gep36, i64 %index ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %i.ba = getelementptr i8, ptr %i.ay, i64 64
  %i.bb = getelementptr i8, ptr %i.ay, i64 96
  store <8 x float> %wide.load, ptr %i.ay, align 4, !tbaa !108
  store <8 x float> %wide.load39, ptr %i.az, align 4, !tbaa !108
  store <8 x float> %wide.load40, ptr %i.ba, align 4, !tbaa !108
  store <8 x float> %wide.load41, ptr %i.bb, align 4, !tbaa !108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.bd = getelementptr [4 x i8], ptr %invariant.gep, i64 %index43
  %wide.load44 = load <4 x float>, ptr %i.bd, align 4, !tbaa !108
  %i.be = getelementptr [4 x i8], ptr %invariant.gep36, i64 %index43
  store <4 x float> %wide.load44, ptr %i.be, align 4, !tbaa !108
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !258

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n46, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 4 uses
  %i.bg = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bh = load float, ptr %gep.prol, align 4, !tbaa !108
  %gep37.prol = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.prol
  store float %i.bh, ptr %gep37.prol, align 4, !tbaa !108
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !259

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bi = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bj = icmp ugt i64 %i.bi, -8
  br i1 %i.bj, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bk = load float, ptr %gep, align 4, !tbaa !108
  %gep37 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv
  store float %i.bk, ptr %gep37, align 4, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bl = load float, ptr %gep.1, align 4, !tbaa !108
  %gep37.1 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next
  store float %i.bl, ptr %gep37.1, align 4, !tbaa !108
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bm = load float, ptr %gep.2, align 4, !tbaa !108
  %gep37.2 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.1
  store float %i.bm, ptr %gep37.2, align 4, !tbaa !108
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bn = load float, ptr %gep.3, align 4, !tbaa !108
  %gep37.3 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.2
  store float %i.bn, ptr %gep37.3, align 4, !tbaa !108
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %gep.4 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.bo = load float, ptr %gep.4, align 4, !tbaa !108
  %gep37.4 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.3
  store float %i.bo, ptr %gep37.4, align 4, !tbaa !108
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %gep.5 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bp = load float, ptr %gep.5, align 4, !tbaa !108
  %gep37.5 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.4
  store float %i.bp, ptr %gep37.5, align 4, !tbaa !108
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %gep.6 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bq = load float, ptr %gep.6, align 4, !tbaa !108
  %gep37.6 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.5
  store float %i.bq, ptr %gep37.6, align 4, !tbaa !108
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %gep.7 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.br = load float, ptr %gep.7, align 4, !tbaa !108
  %gep37.7 = getelementptr [4 x i8], ptr %invariant.gep36, i64 %indvars.iv.next.6
  store float %i.br, ptr %gep37.7, align 4, !tbaa !108
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !260

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge19, label %iter.check, !llvm.loop !261

._crit_edge19:                                    ; preds = %._crit_edge
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %.loopexit, label %.preheader16, !llvm.loop !262

.loopexit:                                        ; preds = %._crit_edge19, %bb.a, %.preheader16.lr.ph, %bb.b
  %i.bs = icmp eq i32 %i.z, 1
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !263
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.bu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %3, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.e)
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !144
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %i.bv = phi ptr [ %.pre34, %bb.c ], [ %0, %.loopexit ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !263
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.bx)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE.omp_outlined.2, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %3, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z23unwrap_periodic_pmegridP9gmx_pme_tN3gmx8ArrayRefIfEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  %i.g = load i32, ptr %i.f, align 4, !tbaa !103  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
end_hunk_2
