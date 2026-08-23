Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/manage_threading?download=true
inline.NumInlined: 457
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"struct.std::array" = type { [8 x i32] }
%"struct.gmx::EnumerationArray.76" = type { [95 x %struct.t_interaction_function] }
%struct.t_interaction_function = type { ptr, ptr, i32, i32, i32, i32 }
%"struct.gmx::EnumerationArray.5" = type { [95 x i32] }
%"struct.gmx::EnumerationArray.41" = type { [95 x %struct.ilist_data_t] }
%struct.ilist_data_t = type { ptr, i32, i32 }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.81" }
%"struct.std::_Head_base.81" = type { ptr }
%"class.gmx::BasicVector" = type { [3 x float] }

$__clang_call_terminate = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt6vectorI26CentersOfMassScaledBuffersSaIS0_EED2Ev = comdat any

$_ZN3gmx19ThreadedForceBufferIA4_fED2Ev = comdat any

$_ZNSt6vectorI26CentersOfMassScaledBuffersSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_ = comdat any

$_ZN3gmx17ThreadForceBufferIA4_fED2Ev = comdat any

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@_ZTISt9exception = external constant ptr
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_ZN3gmxL11fTypesOnGpuE = internal unnamed_addr constant %"struct.std::array" { [8 x i32] [i32 0, i32 10, i32 16, i32 19, i32 20, i32 24, i32 25, i32 33] }, align 4
@debug = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"Division of bondeds over threads:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%16s\00", align 1
@interaction_function = external local_unnamed_addr global %"struct.gmx::EnumerationArray.76", align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/listed_forces/manage_threading.cpp\00", align 1
@.str.5 = private unnamed_addr constant [204 x i8] c"You are using %d OpenMP threads, which is larger than GMX_OPENMP_MAX_THREADS (%d). Decrease the number of OpenMP threads or rebuild GROMACS with a larger value for GMX_OPENMP_MAX_THREADS passed to CMake.\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"GMX_BONDED_NTHREAD_UNIFORM\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"\0AMax threads for uniform bonded distribution set to %d by env.var.\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

@_ZN18bonded_threading_tC1EiiiP8_IO_FILE = unnamed_addr alias void (ptr, i32, i32, i32, ptr), ptr @_ZN18bonded_threading_tC2EiiiP8_IO_FILE

; Function Attrs: mustprogress uwtable
define void @_Z22setup_bonded_threadingP18bonded_threading_tibRK22InteractionDefinitions(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(2760) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.gmx::EnumerationArray.5", align 4 ; 11 uses
  %5 = alloca %"struct.gmx::EnumerationArray.5", align 4 ; 17 uses
  %6 = alloca %"struct.gmx::EnumerationArray.41", align 8 ; 14 uses
  %7 = alloca %"struct.gmx::EnumerationArray.41", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %0, ptr %i.a, align 8, !tbaa !9
  store i32 %1, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.d = load i32, ptr %0, align 8, !tbaa !13
  %.fr6 = freeze i32 %i.d                         ; 13 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !38, !nonnull !55, !align !56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2724
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 2344
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %.not105135.i = icmp slt i32 %.fr6, 0           ; 2 uses
  %i.n = add i32 %.fr6, 1                         ; 4 uses
  %i.o = icmp eq i32 %.fr6, 0
  %unroll_iter = and i32 %i.n, -2
  %i.p = and i32 %.fr6, 1
  %lcmp.mod.not.not = icmp eq i32 %i.p, 0
  %lcmp.mod78 = trunc i32 %i.n to i1
  %xtraiter79 = and i32 %i.n, 3                   ; 3 uses
  %i.q = icmp ult i32 %.fr6, 3
  %unroll_iter82 = and i32 %i.n, -4
  %lcmp.mod80.not = icmp eq i32 %xtraiter79, 0
  %lcmp.mod81 = icmp ne i32 %xtraiter79, 0
  br label %bb.c

bb.b:                                             ; preds = %.loopexit132.i
  %i.r = icmp sgt i32 %.2.i, 0
  br i1 %i.r, label %bb.n, label %bb.v

bb.c:                                             ; preds = %.loopexit132.i, %bb.a
  %indvars.iv158.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next159.i, %.loopexit132.i ] ; 11 uses
  %.089144.i = phi i32 [ 0, %bb.a ], [ %.2.i, %.loopexit132.i ] ; 10 uses
  %.090143.i = phi i64 [ 0, %bb.a ], [ %.292.i, %.loopexit132.i ] ; 6 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv158.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59
  %i.v = trunc i32 %i.u to i1
  %i.w = icmp ne i64 %indvars.iv158.i, 4
  %i.x = and i1 %i.w, %i.v
  br i1 %i.x, label %bb.d, label %.loopexit132.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv158.i ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !63  ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = trunc i64 %i.af to i32                  ; 4 uses
  %i.ah = icmp ult i64 %.090143.i, 8
  %or.cond127.i = select i1 %2, i1 %i.ah, i1 false
  br i1 %or.cond127.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmxL11fTypesOnGpuE, i64 %.090143.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !64
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp eq i64 %indvars.iv158.i, %i.ak
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = add nuw nsw i64 %.090143.i, 1           ; 3 uses
  %i.an = load i32, ptr %i.i, align 4, !tbaa !66
  %.not.i.i = icmp eq i32 %i.an, 1
  br i1 %.not.i.i, label %.preheader131.i, label %_ZL24ftypeHasPerturbedEntriesRK22InteractionDefinitions19InteractionFunction.exit.i

_ZL24ftypeHasPerturbedEntriesRK22InteractionDefinitions19InteractionFunction.exit.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv158.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %.not130.i = icmp eq i32 %i.ap, %i.ag
  br i1 %.not130.i, label %.preheader131.i, label %bb.g

bb.g:                                             ; preds = %_ZL24ftypeHasPerturbedEntriesRK22InteractionDefinitions19InteractionFunction.exit.i, %bb.e, %bb.d
  %.191.i = phi i64 [ %i.am, %_ZL24ftypeHasPerturbedEntriesRK22InteractionDefinitions19InteractionFunction.exit.i ], [ %.090143.i, %bb.d ], [ %.090143.i, %bb.e ] ; 6 uses
  %i.aq = icmp sgt i32 %i.ag, 0
  br i1 %i.aq, label %.thread122.i, label %.thread.i

.thread122.i:                                     ; preds = %bb.g
  store i8 1, ptr %i.g, align 8, !tbaa !58
  br label %bb.h

.thread.i:                                        ; preds = %bb.g
  %i.ar = icmp eq i32 %i.ag, 0
  br i1 %i.ar, label %.preheader131.i, label %bb.h

.preheader131.i:                                  ; preds = %.thread.i, %_ZL24ftypeHasPerturbedEntriesRK22InteractionDefinitions19InteractionFunction.exit.i, %bb.f
  %.191121188.i = phi i64 [ %.191.i, %.thread.i ], [ %i.am, %_ZL24ftypeHasPerturbedEntriesRK22InteractionDefinitions19InteractionFunction.exit.i ], [ %i.am, %bb.f ] ; 3 uses
  br i1 %.not105135.i, label %.loopexit132.i, label %.lr.ph139.i

.lr.ph139.i:                                      ; preds = %.preheader131.i
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !63  ; 5 uses
  %i.at = trunc nuw nsw i64 %indvars.iv158.i to i32 ; 5 uses
  br i1 %i.q, label %.epil.preheader, label %.lr.ph139.i.new

.lr.ph139.i.new:                                  ; preds = %.lr.ph139.i, %.lr.ph139.i.new
  %.096138.i = phi i32 [ %i.br, %.lr.ph139.i.new ], [ 0, %.lr.ph139.i ] ; 5 uses
  %niter83 = phi i32 [ %niter83.next.3, %.lr.ph139.i.new ], [ 0, %.lr.ph139.i ]
  %i.au = load i32, ptr %i.l, align 8, !tbaa !67
  %i.av = mul nsw i32 %i.au, %i.at
  %i.aw = add nsw i32 %i.av, %.096138.i
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ax
  store i32 0, ptr %i.ay, align 4, !tbaa !12
  %i.az = or disjoint i32 %.096138.i, 1
  %i.ba = load i32, ptr %i.l, align 8, !tbaa !67
  %i.bb = mul nsw i32 %i.ba, %i.at
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bd
  store i32 0, ptr %i.be, align 4, !tbaa !12
  %i.bf = or disjoint i32 %.096138.i, 2
  %i.bg = load i32, ptr %i.l, align 8, !tbaa !67
  %i.bh = mul nsw i32 %i.bg, %i.at
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bj
  store i32 0, ptr %i.bk, align 4, !tbaa !12
  %i.bl = or disjoint i32 %.096138.i, 3
  %i.bm = load i32, ptr %i.l, align 8, !tbaa !67
  %i.bn = mul nsw i32 %i.bm, %i.at
  %i.bo = add nsw i32 %i.bn, %i.bl
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bp
  store i32 0, ptr %i.bq, align 4, !tbaa !12
  %i.br = add nuw i32 %.096138.i, 4               ; 2 uses
  %niter83.next.3 = add i32 %niter83, 4           ; 2 uses
  %niter83.ncmp.3 = icmp eq i32 %niter83.next.3, %unroll_iter82
  br i1 %niter83.ncmp.3, label %.loopexit132.i.loopexit.unr-lcssa, label %.lr.ph139.i.new, !llvm.loop !68

bb.h:                                             ; preds = %.thread.i, %.thread122.i
  %i.bs = load i32, ptr %i.k, align 4, !tbaa !70
  %i.bt = icmp sle i32 %.fr6, %i.bs
  %i.bu = icmp eq i64 %indvars.iv158.i, 54        ; 2 uses
  %or.cond.i = or i1 %i.bu, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !71 ; 2 uses
  br i1 %or.cond.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bx = add i32 %i.bw, 1                        ; 6 uses
  br i1 %.not105135.i, label %.loopexit132.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.by = sdiv i32 %i.ag, %i.bx                   ; 4 uses
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !63  ; 4 uses
  br i1 %i.bu, label %.lr.ph.split.preheader.i, label %.critedge.us.preheader.i

.critedge.us.preheader.i:                         ; preds = %.lr.ph.i
  %i.ca = trunc nuw nsw i64 %indvars.iv158.i to i32 ; 3 uses
  br i1 %i.o, label %.critedge.us.i.epil.preheader, label %.critedge.us.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.cb = sext i32 %i.bx to i64                   ; 2 uses
  %sext193.i = shl i64 %i.ae, 30
  %i.cc = ashr i64 %sext193.i, 32
  br label %.lr.ph.split.i

.critedge.us.i:                                   ; preds = %.critedge.us.preheader.i, %.critedge.us.i
  %.095136.us.i = phi i32 [ %i.cu, %.critedge.us.i ], [ 0, %.critedge.us.preheader.i ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.critedge.us.i ], [ 0, %.critedge.us.preheader.i ]
  %i.cd = mul nsw i32 %.095136.us.i, %i.by
  %i.ce = sdiv i32 %i.cd, %.fr6
  %i.cf = mul nsw i32 %i.ce, %i.bx
  %i.cg = load i32, ptr %i.l, align 8, !tbaa !67
  %i.ch = mul nsw i32 %i.cg, %i.ca
  %i.ci = add nsw i32 %i.ch, %.095136.us.i
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cj
  store i32 %i.cf, ptr %i.ck, align 4, !tbaa !12
  %i.cl = or disjoint i32 %.095136.us.i, 1        ; 2 uses
  %i.cm = mul nsw i32 %i.cl, %i.by
  %i.cn = sdiv i32 %i.cm, %.fr6
  %i.co = mul nsw i32 %i.cn, %i.bx
  %i.cp = load i32, ptr %i.l, align 8, !tbaa !67
  %i.cq = mul nsw i32 %i.cp, %i.ca
  %i.cr = add nsw i32 %i.cq, %i.cl
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cs
  store i32 %i.co, ptr %i.ct, align 4, !tbaa !12
  %i.cu = add nuw i32 %.095136.us.i, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit132.i.loopexit77.unr-lcssa, label %.critedge.us.i, !llvm.loop !72

.lr.ph.split.i:                                   ; preds = %.critedge.i, %.lr.ph.split.preheader.i
  %.095136.i = phi i32 [ %i.du, %.critedge.i ], [ 0, %.lr.ph.split.preheader.i ] ; 4 uses
  %i.cv = mul nsw i32 %.095136.i, %i.by
  %i.cw = sdiv i32 %i.cv, %.fr6
  %i.cx = mul nsw i32 %i.cw, %i.bx                ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.preheader.preheader.i, label %.critedge.i

.preheader.preheader.i:                           ; preds = %.lr.ph.split.i
  %i.cz = zext nneg i32 %i.cx to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.cz, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.k ] ; 6 uses
  %i.da = icmp slt i64 %indvars.iv.i, %i.cc
  br i1 %i.da, label %bb.j, label %.critedge.loopexit.i

bb.j:                                             ; preds = %.preheader.i
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !12
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [48 x i8], ptr %i.f, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73
  %i.dh = sub nsw i64 %indvars.iv.i, %i.cb
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [48 x i8], ptr %i.f, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !73
  %i.do = icmp eq i32 %i.dg, %i.dn
  br i1 %i.do, label %bb.k, label %.critedge.loopexit.i

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, %i.cb ; 3 uses
  %.old2.i = icmp sgt i64 %indvars.iv.next.i, 0
  br i1 %.old2.i, label %.preheader.i, label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %bb.k, %bb.j, %.preheader.i
  %.194.ph.in.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ %indvars.iv.i, %bb.j ], [ %indvars.iv.i, %.preheader.i ]
  %.194.ph.i = trunc i64 %.194.ph.in.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.lr.ph.split.i
  %.194.i = phi i32 [ %i.cx, %.lr.ph.split.i ], [ %.194.ph.i, %.critedge.loopexit.i ]
  %i.dp = load i32, ptr %i.l, align 8, !tbaa !67
  %i.dq = mul nsw i32 %i.dp, 54
  %i.dr = add nsw i32 %i.dq, %.095136.i
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ds
  store i32 %.194.i, ptr %i.dt, align 4, !tbaa !12
  %i.du = add nuw i32 %.095136.i, 1
  %exitcond156.not.i = icmp eq i32 %.095136.i, %.fr6
  br i1 %exitcond156.not.i, label %.loopexit132.i, label %.lr.ph.split.i, !llvm.loop !72

bb.l:                                             ; preds = %bb.h
  %i.dv = sext i32 %.089144.i to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.dv ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = trunc nuw nsw i64 %indvars.iv158.i to i32
  store i32 %i.dy, ptr %i.dx, align 8, !tbaa !74
  store ptr %i.y, ptr %i.dw, align 8, !tbaa !77
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 %i.bw, ptr %i.dz, align 4, !tbaa !78
  %i.ea = load i32, ptr %i.l, align 8, !tbaa !67
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul nsw i64 %indvars.iv158.i, %i.eb
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ec
  store i32 0, ptr %i.ee, align 4, !tbaa !12
  %i.ef = add nsw i32 %.089144.i, 1
  br label %.loopexit132.i

.loopexit132.i.loopexit.unr-lcssa:                ; preds = %.lr.ph139.i.new
  br i1 %lcmp.mod80.not, label %.loopexit132.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit132.i.loopexit.unr-lcssa, %.lr.ph139.i
  %.096138.i.epil.init = phi i32 [ 0, %.lr.ph139.i ], [ %i.br, %.loopexit132.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.096138.i.epil = phi i32 [ %.096138.i.epil.init, %.epil.preheader ], [ %i.el, %bb.m ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.eg = load i32, ptr %i.l, align 8, !tbaa !67
  %i.eh = mul nsw i32 %i.eg, %i.at
end_hunk_0
