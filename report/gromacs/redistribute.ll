Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/redistribute?download=true
inline.NumInlined: 906
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%class.DDBufferAccess = type { ptr, %"class.gmx::ArrayRef" }
%"class.gmx::ArrayRef" = type { %"struct.gmx::ArrayRefIter", %"struct.gmx::ArrayRefIter" }
%"struct.gmx::ArrayRefIter" = type { ptr }
%struct.MoveLimits = type { [3 x float], [3 x float], [3 x float] }
%"class.std::vector.188" = type { %"struct.std::_Vector_base.189" }
%"struct.std::_Vector_base.189" = type { %"struct.std::_Vector_base<PbcAndFlag, std::allocator<PbcAndFlag>>::_Vector_impl" }
%"struct.std::_Vector_base<PbcAndFlag, std::allocator<PbcAndFlag>>::_Vector_impl" = type { %"struct.std::_Vector_base<PbcAndFlag, std::allocator<PbcAndFlag>>::_Vector_impl_data" }
%"struct.std::_Vector_base<PbcAndFlag, std::allocator<PbcAndFlag>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.DDBufferAccess.331 = type { ptr, %"class.gmx::ArrayRef.332" }
%"class.gmx::ArrayRef.332" = type { %"struct.gmx::ArrayRefIter.333", %"struct.gmx::ArrayRefIter.333" }
%"struct.gmx::ArrayRefIter.333" = type { ptr }
%"class.gmx::BasicVector.6" = type { [3 x float] }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.389" }
%"class.std::unique_ptr.389" = type { %"struct.std::__uniq_ptr_data.390" }
%"struct.std::__uniq_ptr_data.390" = type { %"class.std::__uniq_ptr_impl.391" }
%"class.std::__uniq_ptr_impl.391" = type { %"class.std::tuple.392" }
%"class.std::tuple.392" = type { %"struct.std::_Tuple_impl.393" }
%"struct.std::_Tuple_impl.393" = type { %"struct.std::_Head_base.396" }
%"struct.std::_Head_base.396" = type { ptr }

$__clang_call_terminate = comdat any

$_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm = comdat any

$_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm = comdat any

$_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev = comdat any

$_ZN14DDBufferAccessIiED2Ev = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE = comdat any

@_ZTISt9exception = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@debug = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"Sending ddim %d dir %d: nat %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Finished repartitioning, new atoms count without fillers: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"!isInUse_\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Should only request free buffers\00", align 1
@__PRETTY_FUNCTION__._ZZN8DDBufferIiE7acquireEmENKUlvE_clEv = private unnamed_addr constant [76 x i8] c"auto DDBuffer<int>::acquire(size_t)::(lambda)::operator()() const [T = int]\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/domdec/domdec_internal.h\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"begin_ <= end_\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"A range should have begin<=end\00", align 1
@__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv = private unnamed_addr constant [90 x i8] c"auto gmx::Range<int>::Range(const int, const int)::(lambda)::operator()() const [T = int]\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/api/legacy/include/gromacs/utility/range.h\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"!dd->unitCellInfo.haveScrewPBC\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Screw PBC is not supported here\00", align 1
@"__PRETTY_FUNCTION__._ZZL13calcGroupMoveP8_IO_FILElPK12gmx_domdec_tPK7t_statePKiPA3_fPKfSC_RK10MoveLimitsRKN3gmx5RangeIiEENSG_8ArrayRefI10PbcAndFlagEEENK3$_0clEv" = private unnamed_addr constant [231 x i8] c"auto calcGroupMove(FILE *, int64_t, const gmx_domdec_t *, const t_state *, const int *, real (*)[3], const real *, const real *, const MoveLimits &, const gmx::Range<int> &, gmx::ArrayRef<PbcAndFlag>)::(lambda)::operator()() const\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/domdec/redistribute.cpp\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"numAtomsOld == 0 || movedBuffer.size() == numAtomsOld\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"numAtomsOld should either be 0 or match the current size\00", align 1
@"__PRETTY_FUNCTION__._ZZL14getMovedBufferP17gmx_domdec_comm_tmmENK3$_0clEv" = private unnamed_addr constant [87 x i8] c"auto getMovedBuffer(gmx_domdec_comm_t *, size_t, size_t)::(lambda)::operator()() const\00", align 1
@__PRETTY_FUNCTION__._ZZN8DDBufferIN3gmx11BasicVectorIfEEE7acquireEmENKUlvE_clEv = private unnamed_addr constant [116 x i8] c"auto DDBuffer<gmx::BasicVector<float>>::acquire(size_t)::(lambda)::operator()() const [T = gmx::BasicVector<float>]\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [133 x i8] c"One or more atoms moved too far between two domain decomposition steps.\0AThis usually means that your system is not well equilibrated\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"\0AStep %ld:\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"The update group starting at atom\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Atom\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c" %d moved more than the distance allowed by the domain decomposition\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c" (%f)\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c" in direction %c\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"distance out of cell %f\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Old coordinates: %8.3f %8.3f %8.3f\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"New coordinates: %8.3f %8.3f %8.3f\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"Old cell boundaries in direction %c: %8.3f %8.3f\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"New cell boundaries in direction %c: %8.3f %8.3f\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"isInUse_\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"Should only release buffers in use\00", align 1
@__PRETTY_FUNCTION__._ZZN8DDBufferIN3gmx11BasicVectorIfEEE7releaseEvENKUlvE_clEv = private unnamed_addr constant [110 x i8] c"auto DDBuffer<gmx::BasicVector<float>>::release()::(lambda)::operator()() const [T = gmx::BasicVector<float>]\00", align 1
@__PRETTY_FUNCTION__._ZZN8DDBufferIiE7releaseEvENKUlvE_clEv = private unnamed_addr constant [70 x i8] c"auto DDBuffer<int>::release()::(lambda)::operator()() const [T = int]\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z18dd_redistribute_cgP8_IO_FILElP12gmx_domdec_tPiP7t_stateP10t_forcerecP6t_nrnb(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 7 uses
  %i.b = alloca [6 x i32], align 16               ; 7 uses
  %i.c = alloca [6 x i32], align 16               ; 6 uses
  %i.d = alloca [6 x i32], align 16               ; 5 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 14 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 21 uses
  %7 = alloca %class.DDBufferAccess, align 8      ; 9 uses
  %8 = alloca %"class.gmx::ArrayRef", align 8     ; 10 uses
  %i.k = alloca [3 x float], align 4              ; 12 uses
  %i.l = alloca [3 x float], align 4              ; 12 uses
  %9 = alloca %struct.MoveLimits, align 4         ; 17 uses
  %i.m = alloca [3 x [3 x float]], align 16       ; 6 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %10 = alloca %"class.std::vector.188", align 8  ; 10 uses
  %i.o = alloca [6 x i32], align 16               ; 9 uses
  %11 = alloca %class.DDBufferAccess.331, align 8 ; 8 uses
  %i.p = alloca i32, align 4                      ; 9 uses
  %12 = alloca %"class.gmx::ArrayRef", align 8    ; 3 uses
  %13 = alloca %"class.gmx::ArrayRef", align 8    ; 3 uses
  %14 = alloca %"class.gmx::ArrayRef.332", align 8 ; 3 uses
  %i.q = alloca [3 x float], align 8              ; 7 uses
  %i.r = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %i.e, align 8, !tbaa !12
  store i64 %1, ptr %i.f, align 8, !tbaa !14
  store ptr %2, ptr %i.g, align 8, !tbaa !16
  store ptr %3, ptr %i.h, align 8, !tbaa !18
  store ptr %4, ptr %i.i, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 928 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22   ; 20 uses
  store ptr %i.t, ptr %i.j, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 161
  %i.v = load i8, ptr %i.u, align 1, !tbaa !129, !range !130, !noundef !131
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 52
  tail call void @_Z15check_screw_boxPA3_Kf(ptr noundef nonnull %i.x)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !158  ; 2 uses
  %i.aa = and i32 %i.z, 256
  %.not479 = icmp eq i32 %i.aa, 0                 ; 4 uses
  %i.ab = and i32 %i.z, 1024
  %.not480 = icmp eq i32 %i.ab, 0                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 1072 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 888
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !316
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !317
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 1096 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !161, !range !130, !noundef !131
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN8DDBufferIiE7acquireEmENKUlvE_clEv, ptr noundef nonnull @.str.4, i32 noundef 359) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr %i.ah, align 8, !tbaa !161
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 1080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !162
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !163 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = icmp ult i64 %i.aq, %i.af
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ac, i64 noundef %i.af)
  %.pre.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !163 ; 2 uses
  %.pre750 = ptrtoint ptr %.pre.i.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi = phi i64 [ %.pre750, %bb.f ], [ %i.ao, %bb.e ]
  %i.as = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.am, %bb.e ] ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.af
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.at ; 2 uses
  store ptr %i.as, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %spec.select.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store ptr %i.as, ptr %8, align 8, !tbaa !165
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.av = ptrtoint ptr %spec.select.i.i.i.i to i64
  %i.aw = sub i64 %i.av, %.pre-phi
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !165
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !166 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !22  ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 604
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 664 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 676 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.bg = load float, ptr %i.bb, align 4, !tbaa !167 ; 3 uses
  store float %i.bg, ptr %9, align 4, !tbaa !167
  %.not328 = icmp sgt i32 %i.az, 0
  br i1 %.not328, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !168 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load float, ptr %i.bc, align 8, !tbaa !167
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %.sink = phi float [ %i.bk, %bb.i ], [ f0xFF7FFFFF, %bb.h ]
  store float %.sink, ptr %i.k, align 4, !tbaa !167
  %i.bl = load i32, ptr %i.bd, align 4, !tbaa !168
  %i.bm = add nsw i32 %i.bl, -1
  %i.bn = icmp eq i32 %i.bi, %i.bm
  br i1 %i.bn, label %.thread858, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.bo = load float, ptr %i.be, align 4, !tbaa !167
  br label %.thread858

.thread858:                                       ; preds = %bb.j, %.thread
  %.sink718 = phi float [ %i.bo, %bb.j ], [ f0x7F7FFFFF, %.thread ]
  store float %.sink718, ptr %i.l, align 4, !tbaa !167
  call void @llvm.masked.store.v4f32.p0(<4 x float> <float f0xFF7FFFFF, float poison, float poison, float f0x7F7FFFFF>, ptr align 4 %i.bf, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !167
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 608
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !167
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !167
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 700
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 688
  %i.bv = load float, ptr %i.bc, align 8, !tbaa !167
  store float %i.bv, ptr %i.k, align 4, !tbaa !167
  %i.bw = load float, ptr %i.be, align 4, !tbaa !167
  store float %i.bw, ptr %i.l, align 4, !tbaa !167
  %i.bx = load float, ptr %i.bu, align 8, !tbaa !167
  %i.by = fsub float %i.bx, %i.bg
  store float %i.by, ptr %i.bf, align 4, !tbaa !167
  %i.bz = load float, ptr %i.bt, align 4, !tbaa !167
  %i.ca = fadd float %i.bg, %i.bz
  store float %i.ca, ptr %i.bs, align 4, !tbaa !167
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 608
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !167 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !167
  %.not328.1.not = icmp eq i32 %i.az, 1
  br i1 %.not328.1.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.thread858, %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !168 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 668
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !167
  br label %.thread.1

.thread.1:                                        ; preds = %bb.l, %bb.m
  %.sink719 = phi float [ %i.ci, %bb.m ], [ f0xFF7FFFFF, %bb.l ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store float %.sink719, ptr %i.cj, align 4, !tbaa !167
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !168
  %i.cm = add nsw i32 %i.cl, -1
  %i.cn = icmp eq i32 %i.cf, %i.cm
  br i1 %i.cn, label %.thread861, label %bb.n

bb.n:                                             ; preds = %.thread.1
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 680
  %i.cp = load float, ptr %i.co, align 8, !tbaa !167
  br label %.thread861

.thread861:                                       ; preds = %bb.n, %.thread.1
  %.sink720 = phi float [ %i.cp, %bb.n ], [ f0x7F7FFFFF, %.thread.1 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store float %.sink720, ptr %i.cq, align 4, !tbaa !167
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.masked.store.v4f32.p0(<4 x float> <float f0xFF7FFFFF, float poison, float poison, float f0x7F7FFFFF>, ptr align 4 %i.cr, <4 x i1> <i1 true, i1 false, i1 false, i1 true>), !tbaa !167
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 612
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !167
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.ct, ptr %i.cu, align 4, !tbaa !167
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 668
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !167
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store float %i.cw, ptr %i.cx, align 4, !tbaa !167
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 680
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !167
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store float %i.cz, ptr %i.da, align 4, !tbaa !167
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 692
  %i.dc = load float, ptr %i.db, align 4, !tbaa !167
  %i.dd = fsub float %i.dc, %i.cc
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 16
end_hunk_0
begin_hunk_1_@_Z18dd_redistribute_cgP8_IO_FILElP12gmx_domdec_tPiP7t_stateP10t_forcerecP6t_nrnb:bb.a
  %lcmp.mod1189 = trunc i64 %i.jr to i1
  call void @llvm.assume(i1 %lcmp.mod1189)
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.014.i340.epil.init
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !168 ; 2 uses
  %i.rv = icmp sgt i32 %i.ru, -1
  br i1 %i.rv, label %bb.bj, label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343

bb.bj:                                            ; preds = %.epil.preheader1186
  %i.rw = zext nneg i32 %i.ru to i64              ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rw ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !168
  %i.rz = add nsw i32 %i.qb, %i.ry                ; 2 uses
  %i.sa = getelementptr inbounds nuw [12 x i8], ptr %i.qa, i64 %.014.i340.epil.init ; 3 uses
  %i.sb = getelementptr inbounds nuw [24 x i8], ptr %i.qc, i64 %i.rw
  %i.sc = sext i32 %i.rz to i64
  %i.sd = load ptr, ptr %i.sb, align 8, !tbaa !259
  %i.se = getelementptr inbounds nuw [12 x i8], ptr %i.sd, i64 %i.sc ; 3 uses
  %i.sf = load float, ptr %i.sa, align 4, !tbaa !167
  store float %i.sf, ptr %i.se, align 4, !tbaa !167
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !167
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  store float %i.sh, ptr %i.si, align 4, !tbaa !167
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !167
  %i.sl = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store float %i.sk, ptr %i.sl, align 4, !tbaa !167
  %.reass.i342.epil = add nsw i32 %invariant.op.i339, %i.rz
  store i32 %.reass.i342.epil, ptr %i.rx, align 4, !tbaa !168
  br label %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343

_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343: ; preds = %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343.loopexit.unr-lcssa, %bb.bj, %.epil.preheader1186, %.thread867, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bk

bb.bk:                                            ; preds = %.thread864, %_ZL29copyMovedAtomsToBufferPerAtomN3gmx8ArrayRefIKiEEiiPA3_fP17gmx_domdec_comm_t.exit343, %bb.bc
  %i.sm = getelementptr inbounds nuw i8, ptr %.lcssa593, i64 888
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !316 ; 2 uses
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ji, i64 1048 ; 3 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !261 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ji, i64 1056 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !262
  %.not.i.i.i = icmp eq ptr %i.ss, %i.sq
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.bk
  store ptr %i.sq, ptr %i.sr, align 8, !tbaa !262
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.bk
  %.not481 = icmp eq i32 %i.sn, 0
  br i1 %.not481, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, i64 noundef %i.so)
          to label %.noexc344 unwind label %bb.cc

.noexc344:                                        ; preds = %bb.bl
  %.pre.i = load ptr, ptr %i.sp, align 8, !tbaa !261
  %.pre733 = load ptr, ptr %8, align 8, !tbaa !165 ; 2 uses
  %.pre734 = load ptr, ptr %i.au, align 8, !tbaa !165
  %.pre735 = load ptr, ptr %i.g, align 8, !tbaa !16
  %.pre753 = ptrtoint ptr %.pre733 to i64
  %.pre755 = ptrtoint ptr %.pre734 to i64
  %.pre757 = sub i64 %.pre755, %.pre753
  %.pre759 = ashr exact i64 %.pre757, 2
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, %.noexc344
  %.pre-phi760 = phi i64 [ %i.jr, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.pre759, %.noexc344 ] ; 2 uses
  %i.st = phi ptr [ %.lcssa593, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.pre735, %.noexc344 ] ; 3 uses
  %i.su = phi ptr [ %i.jj, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.pre733, %.noexc344 ]
  %i.sv = phi ptr [ %i.sq, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.pre.i, %.noexc344 ]
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 896 ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !163
  %i.sy = getelementptr inbounds nuw i8, ptr %i.st, i64 920
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !322 ; 5 uses
  %i.ta = icmp sgt i64 %.pre-phi760, 0
  br i1 %i.ta, label %.lr.ph.i345, label %_ZL18clear_and_mark_indN3gmx8ArrayRefIKiEES2_P11gmx_ga2la_tPi.exit

.lr.ph.i345:                                      ; preds = %bb.bm
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 40
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bv, %.lr.ph.i345
  %.014.i346 = phi i64 [ 0, %.lr.ph.i345 ], [ %i.uu, %bb.bv ] ; 4 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %.014.i346
  %i.te = load i32, ptr %i.td, align 4, !tbaa !168 ; 2 uses
  %i.tf = icmp sgt i32 %i.te, -1
  br i1 %i.tf, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %bb.bn
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %.014.i346
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !168 ; 4 uses
  %i.ti = load i8, ptr %i.tb, align 8, !tbaa !324 ; 2 uses
  %i.tj = icmp eq i8 %i.ti, 0
  br i1 %i.tj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.tk = sext i32 %i.th to i64
  %i.tl = load ptr, ptr %i.sz, align 8, !tbaa !327
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.tk
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  store i32 -1, ptr %i.tn, align 4, !tbaa !329
  br label %.sink.split.i

bb.bq:                                            ; preds = %bb.bo
  %i.to = icmp eq i8 %i.ti, 1
  %spec.select.i.i4.i.i = select i1 %i.to, ptr %i.sz, ptr null ; 2 uses
  %i.tp = load i32, ptr %i.tc, align 8, !tbaa !336
  %i.tq = and i32 %i.tp, %i.th                    ; 2 uses
  %i.tr = load ptr, ptr %i.sz, align 8, !tbaa !337 ; 4 uses
  %i.ts = sext i32 %i.tq to i64                   ; 2 uses
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.ts ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !339
  %i.tv = icmp eq i32 %i.tu, %i.th
  br i1 %i.tv, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

bb.br:                                            ; preds = %.lr.ph.i.i.i
  %i.tw = zext nneg i32 %i.uq to i64              ; 2 uses
  %i.tx = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.tw ; 5 uses
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !339
  %i.tz = icmp eq i32 %i.ty, %i.th
  br i1 %i.tz, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !294

._crit_edge.i.i.i:                                ; preds = %bb.br
  %i.ua = icmp sgt i32 %.020.i.i.i, -1
  br i1 %i.ua, label %bb.bs, label %._crit_edge.thread.i.i.i

bb.bs:                                            ; preds = %._crit_edge.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 12
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !340
  %i.ud = zext nneg i32 %.020.i.i.i to i64
  %i.ue = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 12
  store i32 %i.uc, ptr %i.uf, align 4, !tbaa !340
  %i.ug = getelementptr inbounds nuw i8, ptr %spec.select.i.i4.i.i, i64 28 ; 2 uses
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !341
  %i.ui = icmp slt i32 %i.uq, %i.uh
  br i1 %i.ui, label %bb.bt, label %._crit_edge.thread.i.i.i

bb.bt:                                            ; preds = %bb.bs
  store i32 %i.uq, ptr %i.ug, align 4, !tbaa !341
  br label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %bb.bt, %bb.bs, %._crit_edge.i.i.i, %bb.bq
  %.lcssa32.i.i.i = phi ptr [ %i.tx, %._crit_edge.i.i.i ], [ %i.tx, %bb.bs ], [ %i.tx, %bb.bt ], [ %i.tt, %bb.bq ] ; 2 uses
  store i32 -1, ptr %.lcssa32.i.i.i, align 4, !tbaa !339
  %i.uj = getelementptr inbounds nuw i8, ptr %.lcssa32.i.i.i, i64 12
  store i32 -1, ptr %i.uj, align 4, !tbaa !340
  %i.uk = getelementptr inbounds nuw i8, ptr %spec.select.i.i4.i.i, i64 32 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !342
  %i.um = add nsw i32 %i.ul, -1
  store i32 %i.um, ptr %i.uk, align 8, !tbaa !342
  br label %.sink.split.i

.lr.ph.i.i.i:                                     ; preds = %bb.bq, %bb.br
  %i.un = phi i64 [ %i.tw, %bb.br ], [ %i.ts, %bb.bq ]
  %.020.i.i.i = phi i32 [ %i.uq, %bb.br ], [ %i.tq, %bb.bq ] ; 2 uses
  %i.uo = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !340 ; 5 uses
  %i.ur = icmp sgt i32 %i.uq, -1
  br i1 %i.ur, label %bb.br, label %.sink.split.i, !llvm.loop !294

bb.bu:                                            ; preds = %bb.bn
  %i.us = icmp eq i32 %i.te, -2
  br i1 %i.us, label %.sink.split.i, label %bb.bv

.sink.split.i:                                    ; preds = %.lr.ph.i.i.i, %bb.bu, %._crit_edge.thread.i.i.i, %bb.bp
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %.014.i346
  store i32 -1, ptr %i.ut, align 4, !tbaa !168
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split.i, %bb.bu
  %i.uu = add nuw nsw i64 %.014.i346, 1           ; 2 uses
  %exitcond.not.i347 = icmp eq i64 %i.uu, %.pre-phi760
  br i1 %exitcond.not.i347, label %_ZL18clear_and_mark_indN3gmx8ArrayRefIKiEES2_P11gmx_ga2la_tPi.exit, label %bb.bn, !llvm.loop !295

_ZL18clear_and_mark_indN3gmx8ArrayRefIKiEES2_P11gmx_ga2la_tPi.exit: ; preds = %bb.bv, %bb.bm
  %i.uv = getelementptr inbounds nuw i8, ptr %i.st, i64 888
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !316
  %i.ux = sext i32 %i.uw to i64
  invoke void @_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sw, i64 noundef %i.ux)
          to label %bb.bw unwind label %bb.cc

bb.bw:                                            ; preds = %_ZL18clear_and_mark_indN3gmx8ArrayRefIKiEES2_P11gmx_ga2la_tPi.exit
  %i.uy = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !345
  %i.va = load ptr, ptr %i.g, align 8, !tbaa !16  ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 888
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !316 ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.va, i64 176
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !255
  %i.vf = icmp sgt i32 %i.ve, 0
  br i1 %i.vf, label %.lr.ph626, label %._crit_edge627

.lr.ph626:                                        ; preds = %bb.bw
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i357.a = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.vh = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.vi = add nuw nsw i32 %.1287, 1               ; 6 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.vk = zext nneg i32 %i.vi to i64
  %narrow = mul nuw nsw i32 %i.vi, 12
  %i.vl = zext nneg i32 %narrow to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %5, i64 200
  br label %bb.cd

._crit_edge627.loopexit:                          ; preds = %_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.adk, i64 888
  %.pre745 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !316
  br label %._crit_edge627

._crit_edge627:                                   ; preds = %._crit_edge627.loopexit, %bb.bw
  %i.vn = phi i32 [ %i.vc, %bb.bw ], [ %.pre745, %._crit_edge627.loopexit ] ; 5 uses
  %.0281.lcssa = phi i32 [ %i.vc, %bb.bw ], [ %.1282.lcssa, %._crit_edge627.loopexit ] ; 5 uses
  %.lcssa547 = phi ptr [ %i.va, %bb.bw ], [ %i.adk, %._crit_edge627.loopexit ] ; 3 uses
  %i.vo = load ptr, ptr %i.j, align 8, !tbaa !22  ; 3 uses
  %i.vp = sext i32 %.0281.lcssa to i64            ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 1048 ; 4 uses
  %i.vr = icmp eq i32 %i.vn, 0
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 1056 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !262 ; 3 uses
  br i1 %i.vr, label %.critedge.i, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge627
  %i.vu = sext i32 %i.vn to i64
  %i.vv = load ptr, ptr %i.vq, align 8, !tbaa !261 ; 2 uses
  %i.vw = ptrtoint ptr %i.vt to i64
  %i.vx = ptrtoint ptr %i.vv to i64
  %i.vy = sub i64 %i.vw, %i.vx
  %i.vz = ashr exact i64 %i.vy, 2
  %i.wa = icmp eq i64 %i.vz, %i.vu
  br i1 %i.wa, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i348, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL14getMovedBufferP17gmx_domdec_comm_tmmENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 284) #21
          to label %.noexc352 unwind label %bb.ey

.noexc352:                                        ; preds = %bb.by
  unreachable

.critedge.i:                                      ; preds = %._crit_edge627
  %i.wb = load ptr, ptr %i.vq, align 8, !tbaa !261 ; 6 uses
  %.not.i.i.i350 = icmp eq ptr %i.vt, %i.wb
  br i1 %.not.i.i.i350, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i348, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i351

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i351:   ; preds = %.critedge.i
  store ptr %i.wb, ptr %i.vs, align 8, !tbaa !262
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i348

_ZNSt6vectorIiSaIiEE5clearEv.exit.i348:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i351, %.critedge.i, %bb.bx
  %i.wc = phi ptr [ %i.wb, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i351 ], [ %i.wb, %.critedge.i ], [ %i.vv, %bb.bx ] ; 5 uses
  %i.wd = phi ptr [ %i.wb, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i351 ], [ %i.wb, %.critedge.i ], [ %i.vt, %bb.bx ] ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vo, i64 1056
  %i.wf = ptrtoint ptr %i.wd to i64
  %i.wg = ptrtoint ptr %i.wc to i64
  %i.wh = sub i64 %i.wf, %i.wg
  %i.wi = ashr exact i64 %i.wh, 2                 ; 3 uses
  %i.wj = icmp ult i64 %i.wi, %i.vp
  br i1 %i.wj, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i348
  %i.wk = sub nuw nsw i64 %i.vp, %i.wi
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vq, i64 noundef %i.wk)
          to label %.noexc353 unwind label %bb.ey

.noexc353:                                        ; preds = %bb.bz
  %.pre.i349 = load ptr, ptr %i.vq, align 8, !tbaa !261
  %.pre746 = load ptr, ptr %i.g, align 8, !tbaa !16 ; 2 uses
  %.phi.trans.insert747 = getelementptr inbounds nuw i8, ptr %.pre746, i64 888
  %.pre748 = load i32, ptr %.phi.trans.insert747, align 8, !tbaa !316
  br label %_ZL14getMovedBufferP17gmx_domdec_comm_tmm.exit354

bb.ca:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i348
  %i.wl = icmp ugt i64 %i.wi, %i.vp
  br i1 %i.wl, label %bb.cb, label %_ZL14getMovedBufferP17gmx_domdec_comm_tmm.exit354

bb.cb:                                            ; preds = %bb.ca
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %i.vp ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.wd, %i.wm
  br i1 %.not.i.i8.i, label %_ZL14getMovedBufferP17gmx_domdec_comm_tmm.exit354, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i9.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i9.i:     ; preds = %bb.cb
  store ptr %i.wm, ptr %i.we, align 8, !tbaa !262
  br label %_ZL14getMovedBufferP17gmx_domdec_comm_tmm.exit354

bb.cc:                                            ; preds = %bb.bl, %_ZL18clear_and_mark_indN3gmx8ArrayRefIKiEES2_P11gmx_ga2la_tPi.exit
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.cd:                                            ; preds = %.lr.ph626, %_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev.exit
  %indvars.iv710 = phi i64 [ 0, %.lr.ph626 ], [ %indvars.iv.next711, %_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev.exit ] ; 7 uses
  %indvars.iv701 = phi i64 [ 1, %.lr.ph626 ], [ %indvars.iv.next702, %_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev.exit ] ; 2 uses
  %i.wo = phi ptr [ %i.va, %.lr.ph626 ], [ %i.adk, %_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev.exit ] ; 2 uses
  %.0281623 = phi i32 [ %i.vc, %.lr.ph626 ], [ %.1282.lcssa, %_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.wp = load ptr, ptr %i.j, align 8, !tbaa !22  ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 1104 ; 2 uses
  store ptr %i.wq, ptr %11, align 8, !tbaa !346
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 1128 ; 2 uses
  %i.ws = load i8, ptr %i.wr, align 8, !tbaa !264, !range !130, !noundef !131
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN8DDBufferIN3gmx11BasicVectorIfEEE7acquireEmENKUlvE_clEv, ptr noundef nonnull @.str.4, i32 noundef 359) #21
          to label %.noexc359 unwind label %bb.ch

.noexc359:                                        ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.cd
  store i8 1, ptr %i.wr, align 8, !tbaa !264
  %i.wu = load ptr, ptr %i.wq, align 8, !tbaa !251 ; 2 uses
  store ptr %i.wu, ptr %15, align 8
  store ptr %i.wu, ptr %.sroa.4.0..sroa_idx.i357.a, align 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wo, i64 180
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv710
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !168 ; 3 uses
  %i.wy = sext i32 %i.wx to i64                   ; 7 uses
  %i.wz = shl nuw nsw i64 %indvars.iv710, 1       ; 2 uses
  %i.xa = trunc nuw nsw i64 %indvars.iv710 to i32 ; 2 uses
  %.pre770 = trunc nuw nsw i64 %indvars.iv710 to i32
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cx
  %i.xb = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.xc = add nsw i32 %i.acy, %.0281623
  invoke void @_Z28dd_resize_atominfo_and_stateP10t_forcerecP7t_statei(ptr noundef %5, ptr noundef %i.xb, i32 noundef %i.xc)
          to label %.preheader483 unwind label %bb.db

.preheader483:                                    ; preds = %bb.cg
  %i.xd = icmp sgt i32 %i.acy, 0
  br i1 %i.xd, label %.lr.ph620, label %._crit_edge621

.lr.ph620:                                        ; preds = %.preheader483
  %.not294 = icmp slt i32 %i.wx, %i.az
  %i.xe = trunc nuw i64 %i.wz to i32              ; 2 uses
  %i.xf = shl nuw i32 65536, %i.xe
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.wy
  %i.xh = shl nuw i32 131072, %i.xe
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.wy
  %i.xj = add nuw nsw i64 %indvars.iv710, 1
  %wide.trip.count = zext nneg i32 %i.acy to i64
  %i.xk = ptrtoint ptr %i.aah to i64
  %i.xl = ptrtoint ptr %i.acj to i64
  br label %bb.dc

bb.ch:                                            ; preds = %bb.ce
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ci:                                            ; preds = %bb.cf, %bb.cx
  %i.xn = phi ptr [ %i.wo, %bb.cf ], [ %i.acz, %bb.cx ]
  %i.xo = phi i1 [ true, %bb.cf ], [ false, %bb.cx ]
  %indvars.iv695 = phi i64 [ 0, %bb.cf ], [ 1, %bb.cx ] ; 3 uses
  %.0278605 = phi i32 [ 0, %bb.cf ], [ %i.abb, %bb.cx ] ; 2 uses
  %.0279604 = phi i32 [ 0, %bb.cf ], [ %i.acy, %bb.cx ] ; 3 uses
  %i.xp = or disjoint i64 %indvars.iv695, %i.wz   ; 4 uses
  %i.xq = load ptr, ptr @debug, align 8, !tbaa !12 ; 2 uses
  %.not312 = icmp eq ptr %i.xq, null
  br i1 %.not312, label %._crit_edge767, label %bb.cj

._crit_edge767:                                   ; preds = %bb.ci
  %.pre768 = trunc nuw nsw i64 %indvars.iv695 to i32
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xp
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !168
  %i.xt = trunc nuw nsw i64 %indvars.iv695 to i32 ; 2 uses
  %i.xu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.xq, ptr noundef nonnull @.str, i32 noundef %i.xa, i32 noundef %i.xt, i32 noundef %i.xs) #9 ; 0 uses
  %.pre736 = load ptr, ptr %i.g, align 8, !tbaa !16
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge767, %bb.cj
  %.pre-phi771 = phi i32 [ %.pre770, %._crit_edge767 ], [ %i.xa, %bb.cj ] ; 3 uses
  %.pre-phi769 = phi i32 [ %.pre768, %._crit_edge767 ], [ %i.xt, %bb.cj ] ; 3 uses
  %i.xv = phi ptr [ %i.xn, %._crit_edge767 ], [ %.pre736, %bb.cj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.xp ; 4 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 4
  store ptr %i.p, ptr %12, align 8
  store ptr %i.vg, ptr %16, align 8
  invoke void @_Z10ddSendrecvIiEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %i.xv, i32 noundef %.pre-phi771, i32 noundef %.pre-phi769, ptr nonnull %i.xw, ptr nonnull %i.xx, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %12)
          to label %bb.cl unwind label %.loopexit495

bb.cl:                                            ; preds = %bb.ck
  %i.xy = load i32, ptr %i.p, align 4, !tbaa !168 ; 3 uses
  %i.xz = add nsw i32 %i.xy, %.0279604
  %i.ya = shl nsw i32 %i.xz, 1
  %i.yb = sext i32 %i.ya to i64                   ; 3 uses
  %i.yc = load ptr, ptr %7, align 8, !tbaa !267, !nonnull !131, !align !268 ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 3 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !162 ; 4 uses
  %i.yf = load ptr, ptr %i.yc, align 8, !tbaa !163 ; 11 uses
  %i.yg = ptrtoint ptr %i.ye to i64               ; 3 uses
  %i.yh = ptrtoint ptr %i.yf to i64               ; 6 uses
  %i.yi = sub i64 %i.yg, %i.yh                    ; 2 uses
  %i.yj = ashr exact i64 %i.yi, 2                 ; 6 uses
  %i.yk = icmp ult i64 %i.yj, %i.yb
  br i1 %i.yk, label %bb.cm, label %.noexc364

bb.cm:                                            ; preds = %bb.cl
  %i.yl = sub nuw nsw i64 %i.yb, %i.yj            ; 5 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yc, i64 16 ; 3 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !269
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = sub i64 %i.yo, %i.yg
  %i.yq = ashr exact i64 %i.yp, 2                 ; 2 uses
  %i.yr = icmp ult i64 %i.yj, 2305843009213693952
  call void @llvm.assume(i1 %i.yr)
  %i.ys = xor i64 %i.yj, 2305843009213693951      ; 2 uses
  %i.yt = icmp ule i64 %i.yq, %i.ys
  call void @llvm.assume(i1 %i.yt)
  %.not37.i.i418 = icmp ult i64 %i.yq, %i.yl
  br i1 %.not37.i.i418, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.yu = shl nuw nsw i64 %i.yl, 2
  %scevgep.i.i.i419 = getelementptr i8, ptr %i.ye, i64 %i.yu
  store ptr %scevgep.i.i.i419, ptr %i.yd, align 8, !tbaa !162
  br label %.noexc364

bb.co:                                            ; preds = %bb.cm
  %i.yv = icmp ult i64 %i.ys, %i.yl
  br i1 %i.yv, label %bb.cp, label %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i420

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #21
          to label %.noexc430 unwind label %.loopexit.split-lp496

.noexc430:                                        ; preds = %bb.cp
  unreachable

_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i420: ; preds = %bb.co
  %.sroa.speculated.i.i.i421 = call i64 @llvm.umax.i64(i64 %i.yj, i64 %i.yl)
  %i.yw = add nuw nsw i64 %.sroa.speculated.i.i.i421, %i.yj
  %i.yx = call i64 @llvm.umin.i64(i64 %i.yw, i64 2305843009213693951) ; 2 uses
  %i.yy = shl nuw nsw i64 %i.yx, 2
  %i.yz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yy) #22
          to label %.noexc431 unwind label %.loopexit495 ; 11 uses

.noexc431:                                        ; preds = %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i420
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.yi
  %.not13.i.i.i.i422 = icmp eq ptr %i.yf, %i.ye
  br i1 %.not13.i.i.i.i422, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i427, label %iter.check1088

iter.check1088:                                   ; preds = %.noexc431
  %i.zb = ptrtoaddr ptr %i.yz to i64
  %i.zc = add i64 %i.yg, -4
  %i.zd = sub i64 %i.zc, %i.yh                    ; 3 uses
  %i.ze = lshr i64 %i.zd, 2
  %i.zf = add nuw nsw i64 %i.ze, 1                ; 5 uses
  %min.iters.check1070 = icmp ult i64 %i.zd, 28
  %i.zg = sub i64 %i.yh, %i.zb
  %diff.check1069 = icmp ugt i64 %i.zg, -128
  %or.cond1104 = or i1 %min.iters.check1070, %diff.check1069
  br i1 %or.cond1104, label %.lr.ph.i.i.i.i423.preheader, label %vector.main.loop.iter.check1071

vector.main.loop.iter.check1071:                  ; preds = %iter.check1088
  %min.iters.check1072 = icmp ult i64 %i.zd, 124
  br i1 %min.iters.check1072, label %vec.epilog.ph1092, label %vector.ph1073

vector.ph1073:                                    ; preds = %vector.main.loop.iter.check1071
  %i.zh = and i64 %i.zf, 24
  %n.vec1074 = and i64 %i.zf, 9223372036854775776 ; 4 uses
  %i.zi = shl i64 %n.vec1074, 2                   ; 2 uses
  %i.zj = getelementptr i8, ptr %i.yz, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.yf, i64 %i.zi
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.ph1073, %vector.body1075
  %index1076 = phi i64 [ 0, %vector.ph1073 ], [ %index.next1083, %vector.body1075 ] ; 2 uses
  %i.zl = shl i64 %index1076, 2                   ; 2 uses
  %next.gep1077 = getelementptr i8, ptr %i.yz, i64 %i.zl ; 4 uses
  %next.gep1078 = getelementptr i8, ptr %i.yf, i64 %i.zl ; 4 uses
  %i.zm = getelementptr i8, ptr %next.gep1078, i64 32
  %i.zn = getelementptr i8, ptr %next.gep1078, i64 64
  %i.zo = getelementptr i8, ptr %next.gep1078, i64 96
  %wide.load1079 = load <8 x i32>, ptr %next.gep1078, align 4, !tbaa !168
  %wide.load1080 = load <8 x i32>, ptr %i.zm, align 4, !tbaa !168
  %wide.load1081 = load <8 x i32>, ptr %i.zn, align 4, !tbaa !168
  %wide.load1082 = load <8 x i32>, ptr %i.zo, align 4, !tbaa !168
  %i.zp = getelementptr i8, ptr %next.gep1077, i64 32
  %i.zq = getelementptr i8, ptr %next.gep1077, i64 64
  %i.zr = getelementptr i8, ptr %next.gep1077, i64 96
  store <8 x i32> %wide.load1079, ptr %next.gep1077, align 4, !tbaa !168
  store <8 x i32> %wide.load1080, ptr %i.zp, align 4, !tbaa !168
  store <8 x i32> %wide.load1081, ptr %i.zq, align 4, !tbaa !168
  store <8 x i32> %wide.load1082, ptr %i.zr, align 4, !tbaa !168
  %index.next1083 = add nuw i64 %index1076, 32    ; 2 uses
  %i.zs = icmp eq i64 %index.next1083, %n.vec1074
  br i1 %i.zs, label %middle.block1084, label %vector.body1075, !llvm.loop !296

middle.block1084:                                 ; preds = %vector.body1075
  %cmp.n1085 = icmp eq i64 %i.zf, %n.vec1074
  br i1 %cmp.n1085, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i427, label %vec.epilog.iter.check1090

vec.epilog.iter.check1090:                        ; preds = %middle.block1084
  %min.epilog.iters.check1091 = icmp eq i64 %i.zh, 0
  br i1 %min.epilog.iters.check1091, label %.lr.ph.i.i.i.i423.preheader, label %vec.epilog.ph1092, !prof !272

vec.epilog.ph1092:                                ; preds = %vector.main.loop.iter.check1071, %vec.epilog.iter.check1090
  %vec.epilog.resume.val1086 = phi i64 [ %n.vec1074, %vec.epilog.iter.check1090 ], [ 0, %vector.main.loop.iter.check1071 ]
  %n.vec1093 = and i64 %i.zf, 9223372036854775800 ; 3 uses
  %i.zt = shl i64 %n.vec1093, 2                   ; 2 uses
  %i.zu = getelementptr i8, ptr %i.yz, i64 %i.zt
  %i.zv = getelementptr i8, ptr %i.yf, i64 %i.zt
  br label %vec.epilog.vector.body1094

vec.epilog.vector.body1094:                       ; preds = %vec.epilog.vector.body1094, %vec.epilog.ph1092
  %index1095 = phi i64 [ %vec.epilog.resume.val1086, %vec.epilog.ph1092 ], [ %index.next1099, %vec.epilog.vector.body1094 ] ; 2 uses
  %i.zw = shl i64 %index1095, 2                   ; 2 uses
  %next.gep1096 = getelementptr i8, ptr %i.yz, i64 %i.zw
  %next.gep1097 = getelementptr i8, ptr %i.yf, i64 %i.zw
  %wide.load1098 = load <8 x i32>, ptr %next.gep1097, align 4, !tbaa !168
  store <8 x i32> %wide.load1098, ptr %next.gep1096, align 4, !tbaa !168
  %index.next1099 = add nuw i64 %index1095, 8     ; 2 uses
  %i.zx = icmp eq i64 %index.next1099, %n.vec1093
  br i1 %i.zx, label %vec.epilog.middle.block1100, label %vec.epilog.vector.body1094, !llvm.loop !297

vec.epilog.middle.block1100:                      ; preds = %vec.epilog.vector.body1094
  %cmp.n1101 = icmp eq i64 %i.zf, %n.vec1093
  br i1 %cmp.n1101, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i427, label %.lr.ph.i.i.i.i423.preheader

.lr.ph.i.i.i.i423.preheader:                      ; preds = %iter.check1088, %vec.epilog.iter.check1090, %vec.epilog.middle.block1100
  %.015.i.i.i.i424.ph = phi ptr [ %i.yz, %iter.check1088 ], [ %i.zj, %vec.epilog.iter.check1090 ], [ %i.zu, %vec.epilog.middle.block1100 ]
  %.sroa.010.014.i.i.i.i425.ph = phi ptr [ %i.yf, %iter.check1088 ], [ %i.zk, %vec.epilog.iter.check1090 ], [ %i.zv, %vec.epilog.middle.block1100 ]
  br label %.lr.ph.i.i.i.i423

.lr.ph.i.i.i.i423:                                ; preds = %.lr.ph.i.i.i.i423.preheader, %.lr.ph.i.i.i.i423
  %.015.i.i.i.i424 = phi ptr [ %i.aaa, %.lr.ph.i.i.i.i423 ], [ %.015.i.i.i.i424.ph, %.lr.ph.i.i.i.i423.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i.i425 = phi ptr [ %i.zz, %.lr.ph.i.i.i.i423 ], [ %.sroa.010.014.i.i.i.i425.ph, %.lr.ph.i.i.i.i423.preheader ] ; 2 uses
  %i.zy = load i32, ptr %.sroa.010.014.i.i.i.i425, align 4, !tbaa !168
  store i32 %i.zy, ptr %.015.i.i.i.i424, align 4, !tbaa !168
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i425, i64 4 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i424, i64 4
  %.not.i.i.i.i426 = icmp eq ptr %i.zz, %i.ye
  br i1 %.not.i.i.i.i426, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i427, label %.lr.ph.i.i.i.i423, !llvm.loop !298

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i427: ; preds = %.lr.ph.i.i.i.i423, %middle.block1084, %vec.epilog.middle.block1100, %.noexc431
  %.not.i41.i.i428 = icmp eq ptr %i.yf, null
  br i1 %.not.i41.i.i428, label %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i.i429, label %bb.cq

bb.cq:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i427
  %i.aab = load ptr, ptr %i.ym, align 8, !tbaa !269
  %i.aac = ptrtoint ptr %i.aab to i64
  %i.aad = sub i64 %i.aac, %i.yh
  call void @_ZdlPvm(ptr noundef nonnull %i.yf, i64 noundef %i.aad) #23
  br label %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i.i429

_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i.i429: ; preds = %bb.cq, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_N3gmx30DefaultInitializationAllocatorIiSaIiEEEET0_T_S6_S5_RT1_.exit.i.i427
  store ptr %i.yz, ptr %i.yc, align 8, !tbaa !163
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.yl
  store ptr %i.aae, ptr %i.yd, align 8, !tbaa !162
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.yx
  store ptr %i.aaf, ptr %i.ym, align 8, !tbaa !269
  %.pre738.pre = load i32, ptr %i.p, align 4, !tbaa !168
  %.pre772 = ptrtoint ptr %i.yz to i64
  br label %.noexc364

.noexc364:                                        ; preds = %bb.cn, %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i.i429, %bb.cl
  %.pre-phi762 = phi i64 [ %i.yh, %bb.cl ], [ %.pre772, %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i.i429 ], [ %i.yh, %bb.cn ] ; 2 uses
  %i.aag = phi i32 [ %i.xy, %bb.cl ], [ %.pre738.pre, %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i.i429 ], [ %i.xy, %bb.cn ]
  %i.aah = phi ptr [ %i.yf, %bb.cl ], [ %i.yz, %_ZNSt12_Vector_baseIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE13_M_deallocateEPim.exit42.i.i429 ], [ %i.yf, %bb.cn ] ; 7 uses
  %.not.i.i.i362 = icmp eq ptr %i.aah, null       ; 2 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %i.yb
  %spec.select.i.i.i = select i1 %.not.i.i.i362, ptr null, ptr %i.aai
  store ptr %i.aah, ptr %i.ag, align 8
  store ptr %spec.select.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.aaj = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.aak = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 1192
  %i.aam = getelementptr inbounds nuw [24 x i8], ptr %i.aal, i64 %i.xp
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !163 ; 3 uses
  %i.aao = load i32, ptr %i.xw, align 4, !tbaa !168
  %i.aap = shl nsw i32 %i.aao, 1
  %i.aaq = sext i32 %i.aap to i64
  %.not.i = icmp eq ptr %i.aan, null
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.aaq
  %spec.select.i = select i1 %.not.i, ptr null, ptr %i.aar
  %i.aas = shl nsw i32 %.0279604, 1
  %i.aat = sext i32 %i.aas to i64
  %i.aau = getelementptr inbounds [4 x i8], ptr %i.aah, i64 %i.aat ; 2 uses
  %i.aav = shl nsw i32 %i.aag, 1
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %i.aaw
  %spec.select.i368 = select i1 %.not.i.i.i362, ptr null, ptr %i.aax
  store ptr %i.aau, ptr %13, align 8
  store ptr %spec.select.i368, ptr %i.vh, align 8
  invoke void @_Z10ddSendrecvIiEvPK12gmx_domdec_tiiN3gmx8ArrayRefIT_EES6_(ptr noundef %i.aaj, i32 noundef %.pre-phi771, i32 noundef %.pre-phi769, ptr %i.aan, ptr %spec.select.i, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %13)
          to label %bb.cr unwind label %.loopexit495

bb.cr:                                            ; preds = %.noexc364
  %i.aay = load i32, ptr %i.xw, align 4, !tbaa !168
  %i.aaz = load i32, ptr %i.p, align 4, !tbaa !168
  %i.aba = mul nsw i32 %i.aaz, %i.vi              ; 2 uses
  %i.abb = add nsw i32 %i.aba, %.0278605          ; 3 uses
  %i.abc = sext i32 %i.abb to i64                 ; 3 uses
  %i.abd = load ptr, ptr %11, align 8, !tbaa !276, !nonnull !131, !align !268 ; 5 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8 ; 3 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !250 ; 4 uses
  %i.abg = load ptr, ptr %i.abd, align 8, !tbaa !251 ; 7 uses
  %i.abh = ptrtoint ptr %i.abf to i64             ; 2 uses
  %i.abi = ptrtoint ptr %i.abg to i64             ; 4 uses
  %i.abj = sub i64 %i.abh, %i.abi                 ; 2 uses
  %i.abk = sdiv exact i64 %i.abj, 12              ; 6 uses
  %i.abl = icmp ult i64 %i.abk, %i.abc
  br i1 %i.abl, label %bb.cs, label %.noexc375

bb.cs:                                            ; preds = %bb.cr
  %i.abm = sub nuw nsw i64 %i.abc, %i.abk         ; 4 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abd, i64 16 ; 3 uses
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !347
  %i.abp = ptrtoint ptr %i.abo to i64
  %i.abq = sub i64 %i.abp, %i.abh
  %i.abr = sdiv exact i64 %i.abq, 12              ; 2 uses
  %i.abs = icmp ult i64 %i.abk, 768614336404564651
  call void @llvm.assume(i1 %i.abs)
  %i.abt = sub nuw nsw i64 768614336404564650, %i.abk
  %i.abu = icmp ule i64 %i.abr, %i.abt
  call void @llvm.assume(i1 %i.abu)
  %.not37.i.i434 = icmp ult i64 %i.abr, %i.abm
  br i1 %.not37.i.i434, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.abv = mul nuw nsw i64 %i.abm, 12
  %scevgep.i.i.i435 = getelementptr i8, ptr %i.abf, i64 %i.abv
  store ptr %scevgep.i.i.i435, ptr %i.abe, align 8, !tbaa !250
  br label %.noexc375

bb.cu:                                            ; preds = %bb.cs
  %i.abw = icmp slt i32 %i.abb, 0
  br i1 %i.abw, label %bb.cv, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE12_M_check_lenEmPKc.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #21
          to label %.noexc443 unwind label %.loopexit.split-lp501

.noexc443:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cu
  %.sroa.speculated.i.i.i436 = call i64 @llvm.umax.i64(i64 %i.abk, i64 %i.abm)
  %i.abx = add nuw nsw i64 %.sroa.speculated.i.i.i436, %i.abk
  %i.aby = call i64 @llvm.umin.i64(i64 %i.abx, i64 768614336404564650) ; 2 uses
  %i.abz = mul nuw nsw i64 %i.aby, 12
  %i.aca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abz) #22
          to label %.noexc444 unwind label %.loopexit500 ; 6 uses

.noexc444:                                        ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE12_M_check_lenEmPKc.exit.i.i
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.abj
  %.not13.i.i.i.i437 = icmp eq ptr %i.abg, %i.abf
  br i1 %.not13.i.i.i.i437, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEET0_T_S8_S7_RT1_.exit.i.i, label %.lr.ph.i.i.i.i438

.lr.ph.i.i.i.i438:                                ; preds = %.noexc444, %.lr.ph.i.i.i.i438
  %.015.i.i.i.i439 = phi ptr [ %i.acd, %.lr.ph.i.i.i.i438 ], [ %i.aca, %.noexc444 ] ; 2 uses
  %.sroa.010.014.i.i.i.i440 = phi ptr [ %i.acc, %.lr.ph.i.i.i.i438 ], [ %i.abg, %.noexc444 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.015.i.i.i.i439, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.014.i.i.i.i440, i64 12, i1 false), !tbaa.struct !278
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i.i440, i64 12 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i439, i64 12
  %.not.i.i.i.i441 = icmp eq ptr %i.acc, %i.abf
  br i1 %.not.i.i.i.i441, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEET0_T_S8_S7_RT1_.exit.i.i, label %.lr.ph.i.i.i.i438, !llvm.loop !299

_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEET0_T_S8_S7_RT1_.exit.i.i: ; preds = %.lr.ph.i.i.i.i438, %.noexc444
  %.not.i41.i.i442 = icmp eq ptr %i.abg, null
  br i1 %.not.i41.i.i442, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE13_M_deallocateEPS2_m.exit42.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEET0_T_S8_S7_RT1_.exit.i.i
  %i.ace = load ptr, ptr %i.abn, align 8, !tbaa !347
  %i.acf = ptrtoint ptr %i.ace to i64
  %i.acg = sub i64 %i.acf, %i.abi
  call void @_ZdlPvm(ptr noundef nonnull %i.abg, i64 noundef %i.acg) #23
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE13_M_deallocateEPS2_m.exit42.i.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE13_M_deallocateEPS2_m.exit42.i.i: ; preds = %bb.cw, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEET0_T_S8_S7_RT1_.exit.i.i
  store ptr %i.aca, ptr %i.abd, align 8, !tbaa !251
  %i.ach = getelementptr inbounds nuw [12 x i8], ptr %i.acb, i64 %i.abm
  store ptr %i.ach, ptr %i.abe, align 8, !tbaa !250
  %i.aci = getelementptr inbounds nuw [12 x i8], ptr %i.aca, i64 %i.aby
  store ptr %i.aci, ptr %i.abn, align 8, !tbaa !347
  %.pre773 = ptrtoint ptr %i.aca to i64
  br label %.noexc375

.noexc375:                                        ; preds = %bb.ct, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE13_M_deallocateEPS2_m.exit42.i.i, %bb.cr
  %.pre-phi764 = phi i64 [ %i.abi, %bb.cr ], [ %.pre773, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE13_M_deallocateEPS2_m.exit42.i.i ], [ %i.abi, %bb.ct ] ; 2 uses
  %i.acj = phi ptr [ %i.abg, %bb.cr ], [ %i.aca, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE13_M_deallocateEPS2_m.exit42.i.i ], [ %i.abg, %bb.ct ] ; 9 uses
  %.not.i.i.i371 = icmp eq ptr %i.acj, null       ; 2 uses
  %i.ack = getelementptr inbounds nuw [12 x i8], ptr %i.acj, i64 %i.abc
  %spec.select.i.i.i372 = select i1 %.not.i.i.i371, ptr null, ptr %i.ack
  store ptr %i.acj, ptr %15, align 8
  store ptr %spec.select.i.i.i372, ptr %.sroa.4.0..sroa_idx.i357.a, align 8
  %i.acl = mul nsw i32 %i.aay, %i.vi
  %i.acm = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.acn = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 1336
  %i.acp = getelementptr inbounds nuw [24 x i8], ptr %i.aco, i64 %i.xp
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !259 ; 3 uses
  %i.acr = sext i32 %i.acl to i64
  %.not.i376 = icmp eq ptr %i.acq, null
  %i.acs = getelementptr inbounds nuw [12 x i8], ptr %i.acq, i64 %i.acr
  %spec.select.i377 = select i1 %.not.i376, ptr null, ptr %i.acs
  %i.act = sext i32 %.0278605 to i64
  %i.acu = getelementptr inbounds [12 x i8], ptr %i.acj, i64 %i.act ; 2 uses
  %i.acv = sext i32 %i.aba to i64
  %i.acw = getelementptr inbounds nuw [12 x i8], ptr %i.acu, i64 %i.acv
  %spec.select.i381 = select i1 %.not.i.i.i371, ptr null, ptr %i.acw
  store ptr %i.acu, ptr %14, align 8
  store ptr %spec.select.i381, ptr %i.vj, align 8
  invoke void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef %i.acm, i32 noundef %.pre-phi771, i32 noundef %.pre-phi769, ptr %i.acq, ptr %spec.select.i377, ptr noundef nonnull byval(%"class.gmx::ArrayRef.332") align 8 %14)
          to label %bb.cx unwind label %.loopexit500

bb.cx:                                            ; preds = %.noexc375
  %i.acx = load i32, ptr %i.p, align 4, !tbaa !168
  %i.acy = add nsw i32 %i.acx, %.0279604          ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #9
  %i.acz = load ptr, ptr %i.g, align 8, !tbaa !16 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 164
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %i.wy
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !168
  %i.add = icmp ne i32 %i.adc, 2
  %i.ade = and i1 %i.add, %i.xo
  br i1 %i.ade, label %bb.ci, label %bb.cg, !llvm.loop !300

.loopexit495:                                     ; preds = %bb.ck, %.noexc364, %_ZNKSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE12_M_check_lenEmPKc.exit.i.i420
  %lpad.loopexit497 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp496:                            ; preds = %bb.cp
  %lpad.loopexit.split-lp498 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit500:                                     ; preds = %.noexc375, %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_30DefaultInitializationAllocatorIS2_SaIS2_EEEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit502 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp501:                            ; preds = %bb.cv
  %lpad.loopexit.split-lp503 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cy:                                            ; preds = %.loopexit500, %.loopexit.split-lp501, %.loopexit495, %.loopexit.split-lp496
  %.pn313 = phi { ptr, i32 } [ %lpad.loopexit.split-lp498, %.loopexit.split-lp496 ], [ %lpad.loopexit497, %.loopexit495 ], [ %lpad.loopexit502, %.loopexit500 ], [ %lpad.loopexit.split-lp503, %.loopexit.split-lp501 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #9
  br label %bb.ew

._crit_edge621:                                   ; preds = %bb.ev, %.preheader483
  %.1282.lcssa = phi i32 [ %.0281623, %.preheader483 ], [ %.2283, %bb.ev ] ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.abd, i64 24 ; 2 uses
  %i.adg = load i8, ptr %i.adf, align 8, !tbaa !264, !range !130, !noundef !131
  %i.adh = trunc nuw i8 %i.adg to i1
  br i1 %i.adh, label %_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge621
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN8DDBufferIN3gmx11BasicVectorIfEEE7releaseEvENKUlvE_clEv, ptr noundef nonnull @.str.4, i32 noundef 368) #21
          to label %.noexc.i unwind label %bb.da

.noexc.i:                                         ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.adi = landingpad { ptr, i32 }
          catch ptr null
  %i.adj = extractvalue { ptr, i32 } %i.adi, 0
  call void @__clang_call_terminate(ptr %i.adj) #24
  unreachable

_ZN14DDBufferAccessIN3gmx11BasicVectorIfEEED2Ev.exit: ; preds = %._crit_edge621
  store i8 0, ptr %i.adf, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %i.adk = load ptr, ptr %i.g, align 8, !tbaa !16 ; 4 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 176
  %i.adm = load i32, ptr %i.adl, align 8, !tbaa !255
  %i.adn = sext i32 %i.adm to i64
  %i.ado = icmp slt i64 %indvars.iv.next711, %i.adn
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1
  br i1 %i.ado, label %bb.cd, label %._crit_edge627.loopexit, !llvm.loop !301

bb.db:                                            ; preds = %bb.cg
  %i.adp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.dc:                                            ; preds = %.lr.ph620, %bb.ev
  %i.adq = phi i64 [ %.pre-phi762, %.lr.ph620 ], [ %i.asf, %bb.ev ]
  %i.adr = phi i64 [ %.pre-phi764, %.lr.ph620 ], [ %i.asg, %bb.ev ]
  %indvars.iv706 = phi i64 [ 0, %.lr.ph620 ], [ %indvars.iv.next707, %bb.ev ] ; 3 uses
  %.0250618 = phi i32 [ 0, %.lr.ph620 ], [ %.3253, %bb.ev ] ; 4 uses
  %.1282617 = phi i32 [ %.0281623, %.lr.ph620 ], [ %.2283, %bb.ev ] ; 3 uses
  %i.ads = shl nuw nsw i64 %indvars.iv706, 1      ; 3 uses
  %i.adt = inttoptr i64 %i.adq to ptr
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.adt, i64 %i.ads
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 4 ; 2 uses
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !168 ; 3 uses
  %i.adx = sext i32 %.0250618 to i64              ; 3 uses
  %i.ady = inttoptr i64 %i.adr to ptr
  %i.adz = getelementptr inbounds [12 x i8], ptr %i.ady, i64 %i.adx ; 14 uses
  %.pre740 = load ptr, ptr %i.g, align 8, !tbaa !16 ; 10 uses
  br i1 %.not294, label %bb.dl, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aea = getelementptr inbounds nuw i8, ptr %.pre740, i64 164
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.wy
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !168
  %i.aed = icmp sgt i32 %i.aec, 2
  br i1 %i.aed, label %bb.de, label %bb.dl

bb.de:                                            ; preds = %bb.dd
  %i.aee = and i32 %i.adw, %i.xf
  %.not295 = icmp ne i32 %i.aee, 0                ; 2 uses
  br i1 %.not295, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %i.wy
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !167
  %i.aeh = load float, ptr %i.xg, align 4, !tbaa !167
  %i.aei = fcmp ogt float %i.aeg, %i.aeh
  br i1 %i.aei, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.aej = and i32 %i.adw, %i.xh
  %.not296 = icmp eq i32 %i.aej, 0
  br i1 %.not296, label %bb.dl, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %i.wy
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !167
  %i.aem = load float, ptr %i.xi, align 4, !tbaa !167
  %i.aen = fcmp olt float %i.ael, %i.aem
  br i1 %i.aen, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh, %bb.df
  %.not295.lcssa = phi i1 [ %.not295, %bb.dh ], [ true, %bb.df ]
  %i.aeo = trunc nuw nsw i64 %indvars.iv706 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #9
  %i.aep = load <2 x float>, ptr %i.adz, align 4, !tbaa !167
  store <2 x float> %i.aep, ptr %i.q, align 8, !tbaa !167
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aer = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !167
  store float %i.aes, ptr %i.aeq, align 8, !tbaa !167
  %i.aet = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.aeu = load i64, ptr %i.f, align 8, !tbaa !14
  %i.aev = zext i1 %.not295.lcssa to i32
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.wy
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !167
  invoke fastcc void @_ZL13cg_move_errorP8_IO_FILEPK12gmx_domdec_tliiibfPfS4_f(ptr noundef %i.aet, ptr noundef nonnull %.pre740, i64 noundef %i.aeu, i32 noundef %i.aeo, i32 noundef %i.wx, i32 noundef %i.aev, i1 noundef zeroext false, float noundef 0.000000e+00, ptr noundef %i.q, ptr noundef %i.q, float noundef %i.aex) #21
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  unreachable

bb.dk:                                            ; preds = %bb.di
  %i.aey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #9
  br label %bb.ew

bb.dl:                                            ; preds = %bb.dg, %bb.dh, %bb.dd, %bb.dc
  %i.aez = getelementptr inbounds nuw i8, ptr %.pre740, i64 176 ; 2 uses
  %i.afa = load i32, ptr %i.aez, align 8, !tbaa !255 ; 2 uses
  %i.afb = add nsw i32 %i.afa, -1
  %i.afc = sext i32 %i.afb to i64
  %i.afd = icmp slt i64 %indvars.iv710, %i.afc
  %i.afe = sext i32 %i.afa to i64
  %i.aff = icmp slt i64 %i.xj, %i.afe
  %or.cond = select i1 %i.afd, i1 %i.aff, i1 false
  br i1 %or.cond, label %.lr.ph614, label %.thread475

.lr.ph614:                                        ; preds = %bb.dl
  %i.afg = getelementptr inbounds nuw i8, ptr %.pre740, i64 928
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !22
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 392
  %.val = load i32, ptr %i.afi, align 4, !tbaa !348
  %i.afj = and i32 %.val, -2
  %spec.select.i384 = icmp eq i32 %i.afj, 4
  %i.afk = getelementptr inbounds nuw i8, ptr %.pre740, i64 180 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.pre740, i64 36
  %i.afm = getelementptr inbounds nuw i8, ptr %.pre740, i64 164 ; 2 uses
  %i.afn = load ptr, ptr %i.h, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %.lr.ph614, %bb.dw
  %indvars.iv703 = phi i64 [ %indvars.iv701, %.lr.ph614 ], [ %indvars.iv.next704, %bb.dw ] ; 6 uses
  %.0246612 = phi i32 [ %i.adw, %.lr.ph614 ], [ %.3, %bb.dw ] ; 6 uses
  br i1 %spec.select.i384, label %bb.dn, label %._crit_edge765

._crit_edge765:                                   ; preds = %bb.dm
end_hunk_1
