Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nrjac?download=true
inline.NumInlined: 168
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/math/nrjac.cpp\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Error: Too many iterations in routine JACOBI\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gmx::ssize(a) == DIM\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Size should be 3\00", align 1
@"__PRETTY_FUNCTION__._ZZ6jacobiN3gmx8ArrayRefINS_11BasicVectorIdEEEENS0_IdEES3_ENK3$_0clEv" = private unnamed_addr constant [117 x i8] c"auto jacobi(gmx::ArrayRef<gmx::DVec>, gmx::ArrayRef<double>, gmx::ArrayRef<gmx::DVec>)::(lambda)::operator()() const\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"gmx::ssize(eigenvalues) == DIM\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"gmx::ssize(eigenvectors) == DIM\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"md[i]\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"v[i]\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"eig\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z6jacobiPPdiS_S0_Pi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 75, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) ; 15 uses
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 76, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) ; 17 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader201.us.preheader.i, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit.split

.preheader201.us.preheader.i:                     ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64                  ; 17 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 9 uses
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  %xtraiter = and i64 %i.e, 7                     ; 3 uses
  %i.h = icmp ult i32 %1, 8
  br i1 %i.h, label %.preheader201.us.i.epil.preheader, label %.preheader201.us.preheader.i.new

.preheader201.us.preheader.i.new:                 ; preds = %.preheader201.us.preheader.i
  %unroll_iter = and i64 %i.e, 2147483640
  br label %.preheader201.us.i

.preheader201.us.i:                               ; preds = %.preheader201.us.i, %.preheader201.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader201.us.preheader.i.new ], [ %indvars.iv.next.i.7, %.preheader201.us.i ] ; 10 uses
  %niter = phi i64 [ 0, %.preheader201.us.preheader.i.new ], [ %niter.next.7, %.preheader201.us.i ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !13
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i
  store double 1.000000e+00, ptr %i.n, align 8, !tbaa !13
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.1
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.i.1
  store double 1.000000e+00, ptr %i.q, align 8, !tbaa !13
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.2
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.2
  store double 1.000000e+00, ptr %i.t, align 8, !tbaa !13
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.3
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.3
  store double 1.000000e+00, ptr %i.w, align 8, !tbaa !13
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.4
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.4
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !13
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.5
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.5
  store double 1.000000e+00, ptr %i.ac, align 8, !tbaa !13
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.6
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.i.6
  store double 1.000000e+00, ptr %i.af, align 8, !tbaa !13
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.preheader.unr-lcssa, label %.preheader201.us.i, !llvm.loop !26

.lr.ph.i.preheader.unr-lcssa:                     ; preds = %.preheader201.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.preheader, label %.preheader201.us.i.epil.preheader

.preheader201.us.i.epil.preheader:                ; preds = %.lr.ph.i.preheader.unr-lcssa, %.preheader201.us.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader201.us.preheader.i ], [ %indvars.iv.next.i.7, %.lr.ph.i.preheader.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.preheader201.us.i.epil

.preheader201.us.i.epil:                          ; preds = %.preheader201.us.i.epil, %.preheader201.us.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader201.us.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader201.us.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader201.us.i.epil.preheader ], [ %epil.iter.next, %.preheader201.us.i.epil ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.epil
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.epil
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !13
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.preheader, label %.preheader201.us.i.epil, !llvm.loop !27

.lr.ph.i.preheader:                               ; preds = %.preheader201.us.i.epil, %.lr.ph.i.preheader.unr-lcssa
  %xtraiter59 = and i64 %i.e, 3                   ; 3 uses
  %i.aj = icmp ult i32 %1, 4
  br i1 %i.aj, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter63 = and i64 %i.e, 2147483644
  br label %.lr.ph.i

.preheader199.i.unr-lcssa:                        ; preds = %.lr.ph.i
  %lcmp.mod61.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod61.not, label %.preheader199.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader199.i.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv244.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next245.i.3, %.preheader199.i.unr-lcssa ]
  %lcmp.mod62 = icmp ne i64 %xtraiter59, 0
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv244.i.epil = phi i64 [ %indvars.iv.next245.i.epil, %.lr.ph.i.epil ], [ %indvars.iv244.i.epil.init, %.lr.ph.i.epil.preheader ] ; 6 uses
  %epil.iter60 = phi i64 [ %epil.iter60.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv244.i.epil
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv244.i.epil
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv244.i.epil
  store double %i.an, ptr %i.ao, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv244.i.epil
  store double %i.an, ptr %i.ap, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv244.i.epil
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !13
  %indvars.iv.next245.i.epil = add nuw nsw i64 %indvars.iv244.i.epil, 1
  %epil.iter60.next = add i64 %epil.iter60, 1     ; 2 uses
  %epil.iter60.cmp.not = icmp eq i64 %epil.iter60.next, %xtraiter59
  br i1 %epil.iter60.cmp.not, label %.preheader199.i, label %.lr.ph.i.epil, !llvm.loop !28

.preheader199.i:                                  ; preds = %.lr.ph.i.epil, %.preheader199.i.unr-lcssa
  %i.ar = add nsw i32 %1, -1
  %.not16 = icmp eq i32 %1, 1
  %i.as = mul nuw nsw i32 %1, %1
  %i.at = uitofp nneg i32 %i.as to double
  %wide.trip.count259.i = zext nneg i32 %i.ar to i64 ; 2 uses
  br i1 %.not16, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit.split, label %.preheader198.i.preheader

.preheader198.i.preheader:                        ; preds = %.preheader199.i
  %i.au = shl nuw nsw i64 %i.e, 3                 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.au ; 2 uses
  %scevgep18 = getelementptr i8, ptr %2, i64 %i.au ; 2 uses
  %scevgep19 = getelementptr i8, ptr %i.c, i64 %i.au ; 2 uses
  %6 = add nsw i32 %1, -3                         ; 2 uses
  %i.av = add nsw i64 %i.e, -2
  %xtraiter82 = and i64 %i.e, 1
  %i.aw = icmp eq i64 %i.g, 0
  %unroll_iter86 = and i64 %i.e, 2147483646
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  %lcmp.mod85 = trunc i32 %1 to i1
  %min.iters.check = icmp ult i32 %1, 8
  %bound0 = icmp ult ptr %i.b, %scevgep18
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound020 = icmp ult ptr %i.b, %scevgep19
  %bound121 = icmp ult ptr %i.c, %scevgep
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  %bound023 = icmp ult ptr %2, %scevgep19
  %bound124 = icmp ult ptr %i.c, %scevgep18
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  %n.vec = and i64 %i.e, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.e
  %xtraiter88 = and i64 %i.e, 3                   ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br label %.preheader198.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv244.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next245.i.3, %.lr.ph.i ] ; 9 uses
  %niter64 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter64.next.3, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv244.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv244.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv244.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv244.i
  store double %i.ba, ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv244.i
  store double 0.000000e+00, ptr %i.bd, align 8, !tbaa !13
  %indvars.iv.next245.i = or disjoint i64 %indvars.iv244.i, 1 ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next245.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i
  store double %i.bh, ptr %i.bi, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i
  store double %i.bh, ptr %i.bj, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i
  store double 0.000000e+00, ptr %i.bk, align 8, !tbaa !13
  %indvars.iv.next245.i.1 = or disjoint i64 %indvars.iv244.i, 2 ; 5 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i.1
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next245.i.1
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i.1
  store double %i.bo, ptr %i.bp, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i.1
  store double %i.bo, ptr %i.bq, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i.1
  store double 0.000000e+00, ptr %i.br, align 8, !tbaa !13
  %indvars.iv.next245.i.2 = or disjoint i64 %indvars.iv244.i, 3 ; 5 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i.2
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next245.i.2
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i.2
  store double %i.bv, ptr %i.bw, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i.2
  store double %i.bv, ptr %i.bx, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i.2
  store double 0.000000e+00, ptr %i.by, align 8, !tbaa !13
  %indvars.iv.next245.i.3 = add nuw nsw i64 %indvars.iv244.i, 4 ; 2 uses
  %niter64.next.3 = add i64 %niter64, 4           ; 2 uses
  %niter64.ncmp.3 = icmp eq i64 %niter64.next.3, %unroll_iter63
  br i1 %niter64.ncmp.3, label %.preheader199.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !29

.preheader198.i:                                  ; preds = %.preheader198.i.preheader, %._crit_edge238.i.loopexit
  %.0167240.i = phi i32 [ %i.oi, %._crit_edge238.i.loopexit ], [ 1, %.preheader198.i.preheader ] ; 3 uses
  %.0168239.i = phi i32 [ %.3171.i, %._crit_edge238.i.loopexit ], [ 0, %.preheader198.i.preheader ] ; 2 uses
  br label %.lr.ph208.i

.loopexit196.i:                                   ; preds = %.lr.ph208.i.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.du, %.lr.ph208.i.new ] ; 3 uses
  %indvars.iv.next257.i = add nuw nsw i64 %indvars.iv256.i, 1 ; 2 uses
  %indvars.iv.next250.i = add nuw nsw i64 %indvars.iv249.i, 1
  %exitcond260.not.i = icmp eq i64 %indvars.iv.next257.i, %wide.trip.count259.i
  br i1 %exitcond260.not.i, label %._crit_edge.i, label %.lr.ph208.i, !llvm.loop !30

.lr.ph208.i:                                      ; preds = %.preheader198.i, %.loopexit196.i
  %indvars.iv256.i = phi i64 [ %indvars.iv.next257.i, %.loopexit196.i ], [ 0, %.preheader198.i ] ; 4 uses
  %indvars.iv249.i = phi i64 [ %indvars.iv.next250.i, %.loopexit196.i ], [ 1, %.preheader198.i ] ; 3 uses
  %.0172210.i = phi double [ %.lcssa, %.loopexit196.i ], [ 0.000000e+00, %.preheader198.i ] ; 2 uses
  %i.bz = sub i64 %i.g, %indvars.iv256.i
  %i.ca = sub i64 %i.av, %indvars.iv256.i
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv256.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11 ; 9 uses
  %xtraiter65 = and i64 %i.bz, 7                  ; 2 uses
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph208.i, %.prol.preheader
  %indvars.iv251.i.prol = phi i64 [ %indvars.iv.next252.i.prol, %.prol.preheader ], [ %indvars.iv249.i, %.lr.ph208.i ] ; 2 uses
  %.1173207.i.prol = phi double [ %i.cg, %.prol.preheader ], [ %.0172210.i, %.lr.ph208.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph208.i ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv251.i.prol
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13
  %i.cf = tail call noundef double @llvm.fabs.f64(double %i.ce)
  %i.cg = fadd double %.1173207.i.prol, %i.cf     ; 3 uses
  %indvars.iv.next252.i.prol = add nuw nsw i64 %indvars.iv251.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter65
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph208.i
  %.lcssa.unr = phi double [ poison, %.lr.ph208.i ], [ %i.cg, %.prol.preheader ]
  %indvars.iv251.i.unr = phi i64 [ %indvars.iv249.i, %.lr.ph208.i ], [ %indvars.iv.next252.i.prol, %.prol.preheader ]
  %.1173207.i.unr = phi double [ %.0172210.i, %.lr.ph208.i ], [ %i.cg, %.prol.preheader ]
  %i.ch = icmp ult i64 %i.ca, 7
  br i1 %i.ch, label %.loopexit196.i, label %.lr.ph208.i.new

.lr.ph208.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph208.i.new
  %indvars.iv251.i = phi i64 [ %indvars.iv.next252.i.7, %.lr.ph208.i.new ], [ %indvars.iv251.i.unr, %.prol.loopexit ] ; 9 uses
  %.1173207.i = phi double [ %i.du, %.lr.ph208.i.new ], [ %.1173207.i.unr, %.prol.loopexit ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv251.i
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !13
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj)
  %i.cl = fadd double %.1173207.i, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv251.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load double, ptr %i.cn, align 8, !tbaa !13
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.co)
  %i.cq = fadd double %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv251.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !13
  %i.cu = tail call noundef double @llvm.fabs.f64(double %i.ct)
  %i.cv = fadd double %i.cq, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv251.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !13
  %i.cz = tail call noundef double @llvm.fabs.f64(double %i.cy)
  %i.da = fadd double %i.cv, %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv251.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !13
  %i.de = tail call noundef double @llvm.fabs.f64(double %i.dd)
  %i.df = fadd double %i.da, %i.de
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv251.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load double, ptr %i.dh, align 8, !tbaa !13
  %i.dj = tail call noundef double @llvm.fabs.f64(double %i.di)
  %i.dk = fadd double %i.df, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv251.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !13
  %i.do = tail call noundef double @llvm.fabs.f64(double %i.dn)
  %i.dp = fadd double %i.dk, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv251.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !13
  %i.dt = tail call noundef double @llvm.fabs.f64(double %i.ds)
  %i.du = fadd double %i.dp, %i.dt                ; 2 uses
  %indvars.iv.next252.i.7 = add nuw nsw i64 %indvars.iv251.i, 8 ; 2 uses
  %exitcond255.not.i.7 = icmp eq i64 %indvars.iv.next252.i.7, %i.e
  br i1 %exitcond255.not.i.7, label %.loopexit196.i, label %.lr.ph208.i.new, !llvm.loop !32

._crit_edge.i:                                    ; preds = %.loopexit196.i
  %i.dv = fcmp oeq double %.lcssa, 0.000000e+00
  br i1 %i.dv, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.dw = icmp samesign ult i32 %.0167240.i, 4
  %i.dx = fmul double %.lcssa, 2.000000e-01
  %i.dy = fdiv double %i.dx, %i.at
  %.0175.i = select i1 %i.dw, double %i.dy, double 0.000000e+00
  %i.dz = icmp samesign ugt i32 %.0167240.i, 4
  br label %.lr.ph229.i

.loopexit.i:                                      ; preds = %bb.l
  %indvars.iv.next267.i = add nuw nsw i64 %indvars.iv266.i, 1
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i, 1
  %exitcond296.not.i = icmp eq i64 %indvars.iv.next293.i, %wide.trip.count259.i
  br i1 %exitcond296.not.i, label %.preheader197.i, label %.lr.ph229.i, !llvm.loop !33

.preheader197.i:                                  ; preds = %.loopexit.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx26
  br i1 %brmerge, label %.lr.ph237.i.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader197.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader197.i ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ea, align 8, !tbaa !13, !alias.scope !52
  %wide.load27 = load <4 x double>, ptr %i.eb, align 8, !tbaa !13, !alias.scope !52
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %wide.load28 = load <4 x double>, ptr %i.ec, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  %wide.load29 = load <4 x double>, ptr %i.ed, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  %i.ee = fadd <4 x double> %wide.load, %wide.load28 ; 2 uses
  %i.ef = fadd <4 x double> %wide.load27, %wide.load29 ; 2 uses
  store <4 x double> %i.ee, ptr %i.ec, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  store <4 x double> %i.ef, ptr %i.ed, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store <4 x double> %i.ee, ptr %i.eg, align 8, !tbaa !13, !alias.scope !55, !noalias !52
  store <4 x double> %i.ef, ptr %i.eh, align 8, !tbaa !13, !alias.scope !55, !noalias !52
  store <4 x double> zeroinitializer, ptr %i.ea, align 8, !tbaa !13, !alias.scope !52
  store <4 x double> zeroinitializer, ptr %i.eb, align 8, !tbaa !13, !alias.scope !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge238.i.loopexit, label %.lr.ph237.i.preheader

.lr.ph237.i.preheader:                            ; preds = %.preheader197.i, %middle.block
  %indvars.iv297.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader197.i ] ; 3 uses
  br i1 %lcmp.mod89.not, label %.lr.ph237.i.prol.loopexit, label %.lr.ph237.i.prol

.lr.ph237.i.prol:                                 ; preds = %.lr.ph237.i.preheader, %.lr.ph237.i.prol
  %indvars.iv297.i.prol = phi i64 [ %indvars.iv.next298.i.prol, %.lr.ph237.i.prol ], [ %indvars.iv297.i.ph, %.lr.ph237.i.preheader ] ; 4 uses
  %prol.iter90 = phi i64 [ %prol.iter90.next, %.lr.ph237.i.prol ], [ 0, %.lr.ph237.i.preheader ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv297.i.prol ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv297.i.prol ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !13
  %i.en = fadd double %i.ek, %i.em                ; 2 uses
  store double %i.en, ptr %i.el, align 8, !tbaa !13
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv297.i.prol
  store double %i.en, ptr %i.eo, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.ej, align 8, !tbaa !13
  %indvars.iv.next298.i.prol = add nuw nsw i64 %indvars.iv297.i.prol, 1 ; 2 uses
  %prol.iter90.next = add i64 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i64 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph237.i.prol.loopexit, label %.lr.ph237.i.prol, !llvm.loop !39

.lr.ph237.i.prol.loopexit:                        ; preds = %.lr.ph237.i.prol, %.lr.ph237.i.preheader
  %indvars.iv297.i.unr = phi i64 [ %indvars.iv297.i.ph, %.lr.ph237.i.preheader ], [ %indvars.iv.next298.i.prol, %.lr.ph237.i.prol ]
  %i.ep = sub nsw i64 %indvars.iv297.i.ph, %i.e
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %._crit_edge238.i.loopexit, label %.lr.ph237.i

.lr.ph229.i:                                      ; preds = %.loopexit.i, %bb.b
  %indvars.iv292.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next293.i, %.loopexit.i ] ; 18 uses
  %indvars.iv273.i = phi i64 [ 2, %bb.b ], [ %indvars.iv.next274.i, %.loopexit.i ] ; 2 uses
  %indvars.iv266.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next267.i, %.loopexit.i ] ; 6 uses
  %.1169232.i = phi i32 [ %.0168239.i, %bb.b ], [ %.3171.i, %.loopexit.i ]
  %7 = shl i64 %indvars.iv292.i, 3                ; 2 uses
  %8 = add i64 %7, 16
  %9 = add i64 %7, 24
  %indvars.iv.next293.i = add nuw nsw i64 %indvars.iv292.i, 1 ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv292.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !11 ; 12 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv292.i ; 4 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv292.i ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv292.i, 0
  %xtraiter67 = and i64 %indvars.iv292.i, 1
  %i.ev = icmp eq i64 %indvars.iv292.i, 1
  %unroll_iter71 = and i64 %indvars.iv292.i, 9223372036854775806
  %lcmp.mod69.not = icmp eq i64 %xtraiter67, 0
  %lcmp.mod70 = trunc i64 %indvars.iv292.i to i1
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv266.i ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv266.i
  %indvars.iv.next269.i.prol = add nuw nsw i64 %indvars.iv266.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %.lr.ph229.i
  %indvar = phi i64 [ %indvar.next, %bb.l ], [ 0, %.lr.ph229.i ] ; 6 uses
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %bb.l ], [ %indvars.iv266.i, %.lr.ph229.i ] ; 18 uses
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i, %bb.l ], [ %indvars.iv273.i, %.lr.ph229.i ] ; 5 uses
  %.2170227.i = phi i32 [ %.3171.i, %bb.l ], [ %.1169232.i, %.lr.ph229.i ] ; 3 uses
  %10 = add i64 %indvars.iv292.i, %indvar
  %11 = trunc i64 %10 to i32
  %12 = sub i32 %6, %11                           ; 2 uses
  %13 = shl i64 %indvar, 3                        ; 2 uses
  %i.ey = add i64 %8, %13                         ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.es, i64 %i.ey
  %i.ez = add i64 %9, %13                         ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.es, i64 %i.ez
  %i.fa = add i64 %indvars.iv292.i, %indvar
  %14 = trunc i64 %i.fa to i32
  %15 = sub i32 %6, %14
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 3                    ; 2 uses
  %scevgep33.a = getelementptr i8, ptr %scevgep32, i64 %17
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv286.i ; 3 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !13 ; 4 uses
  %i.fd = tail call noundef double @llvm.fabs.f64(double %i.fc) ; 2 uses
  %i.fe = fmul double %i.fd, 1.000000e+02         ; 3 uses
  br i1 %i.dz, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ff = load double, ptr %i.et, align 8, !tbaa !13
  %i.fg = tail call noundef double @llvm.fabs.f64(double %i.ff) ; 2 uses
  %i.fh = fadd double %i.fe, %i.fg
  %i.fi = fcmp oeq double %i.fh, %i.fg
  br i1 %i.fi, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !13
  %i.fl = tail call noundef double @llvm.fabs.f64(double %i.fk) ; 2 uses
  %i.fm = fadd double %i.fe, %i.fl
  %i.fn = fcmp oeq double %i.fm, %i.fl
  br i1 %i.fn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %i.fb, align 8, !tbaa !13
  br label %bb.l

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.fo = fcmp ogt double %i.fd, %.0175.i
  br i1 %i.fo, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i ; 3 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !13
  %i.fr = load double, ptr %i.et, align 8, !tbaa !13
  %i.fs = fsub double %i.fq, %i.fr                ; 3 uses
  %i.ft = tail call noundef double @llvm.fabs.f64(double %i.fs) ; 2 uses
  %i.fu = fadd double %i.fe, %i.ft
  %i.fv = fcmp oeq double %i.fu, %i.ft
  br i1 %i.fv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fw = fdiv double %i.fc, %i.fs
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.fx = fmul double %i.fs, 5.000000e-01
  %i.fy = fdiv double %i.fx, %i.fc                ; 4 uses
  %i.fz = tail call noundef double @llvm.fabs.f64(double %i.fy)
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.fy, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ga)
  %i.gb = fadd double %i.fz, %sqrt.i
  %i.gc = fdiv double 1.000000e+00, %i.gb         ; 2 uses
  %i.gd = fcmp olt double %i.fy, 0.000000e+00
  %i.ge = fneg double %i.gc
  %spec.select.i = select i1 %i.gd, double %i.ge, double %i.gc
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0174.i = phi double [ %i.fw, %bb.i ], [ %spec.select.i, %bb.j ] ; 4 uses
  %i.gf = tail call double @llvm.fmuladd.f64(double %.0174.i, double %.0174.i, double 1.000000e+00)
  %sqrt193.i = tail call double @llvm.sqrt.f64(double %i.gf)
  %i.gg = fdiv double 1.000000e+00, %sqrt193.i    ; 2 uses
  %i.gh = fmul double %.0174.i, %i.gg             ; 20 uses
  %i.gi = fadd double %i.gg, 1.000000e+00
  %i.gj = fdiv double %i.gh, %i.gi                ; 29 uses
  %i.gk = fmul double %i.fc, %.0174.i             ; 4 uses
  %i.gl = load double, ptr %i.eu, align 8, !tbaa !13
  %i.gm = fsub double %i.gl, %i.gk
  store double %i.gm, ptr %i.eu, align 8, !tbaa !13
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv286.i ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !13
  %i.gp = fadd double %i.gk, %i.go
  store double %i.gp, ptr %i.gn, align 8, !tbaa !13
  %i.gq = load double, ptr %i.et, align 8, !tbaa !13
  %i.gr = fsub double %i.gq, %i.gk
  store double %i.gr, ptr %i.et, align 8, !tbaa !13
  %i.gs = load double, ptr %i.fp, align 8, !tbaa !13
  %i.gt = fadd double %i.gk, %i.gs
  store double %i.gt, ptr %i.fp, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.fb, align 8, !tbaa !13
  br i1 %.not.i, label %.preheader195.i, label %.lr.ph216.i

.lr.ph216.i:                                      ; preds = %bb.k
  %i.gu = fneg double %i.gh                       ; 3 uses
  br i1 %i.ev, label %.epil.preheader, label %.lr.ph216.i.new

.preheader195.i.loopexit.unr-lcssa:               ; preds = %.lr.ph216.i.new
  br i1 %lcmp.mod69.not, label %.preheader195.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader195.i.loopexit.unr-lcssa, %.lr.ph216.i
  %indvars.iv261.i.epil.init = phi i64 [ 0, %.lr.ph216.i ], [ %indvars.iv.next262.i.1, %.preheader195.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i.epil.init
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !11 ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv292.i ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !13 ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv286.i ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !13 ; 3 uses
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gy, double %i.gj, double %i.ha)
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.hb, double %i.gy)
  store double %i.hc, ptr %i.gx, align 8, !tbaa !13
  %i.hd = fneg double %i.ha
  %i.he = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.gj, double %i.gy)
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.he, double %i.ha)
  store double %i.hf, ptr %i.gz, align 8, !tbaa !13
  br label %.preheader195.i

.preheader195.i:                                  ; preds = %.epil.preheader, %.preheader195.i.loopexit.unr-lcssa, %bb.k
  %i.hg = icmp samesign ult i64 %indvars.iv.next293.i, %indvars.iv286.i
  br i1 %i.hg, label %.lr.ph218.i, label %.preheader194.i

.lr.ph218.i:                                      ; preds = %.preheader195.i
  %i.hh = fneg double %i.gh                       ; 3 uses
  %xtraiter75 = and i64 %indvar, 1
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.prol.loopexit74, label %.prol.loopexit74.unr-lcssa

.prol.loopexit74.unr-lcssa:                       ; preds = %.lr.ph218.i
  %i.hi = load double, ptr %i.ew, align 8, !tbaa !13 ; 3 uses
  %i.hj = load ptr, ptr %i.ex, align 8, !tbaa !11
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv286.i ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !13 ; 3 uses
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.gj, double %i.hl)
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hh, double %i.hm, double %i.hi)
  store double %i.hn, ptr %i.ew, align 8, !tbaa !13
  %i.ho = fneg double %i.hl
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.gj, double %i.hi)
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.hp, double %i.hl)
  store double %i.hq, ptr %i.hk, align 8, !tbaa !13
  br label %.prol.loopexit74

.prol.loopexit74:                                 ; preds = %.prol.loopexit74.unr-lcssa, %.lr.ph218.i
  %indvars.iv268.i.unr = phi i64 [ %indvars.iv266.i, %.lr.ph218.i ], [ %indvars.iv.next269.i.prol, %.prol.loopexit74.unr-lcssa ]
  %i.hr = icmp eq i64 %indvar, 1
  br i1 %i.hr, label %.preheader194.i, label %.lr.ph218.i.new

.lr.ph216.i.new:                                  ; preds = %.lr.ph216.i, %.lr.ph216.i.new
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i.1, %.lr.ph216.i.new ], [ 0, %.lr.ph216.i ] ; 3 uses
  %niter72 = phi i64 [ %niter72.next.1, %.lr.ph216.i.new ], [ 0, %.lr.ph216.i ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !11 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv292.i ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !13 ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv286.i ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !13 ; 3 uses
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.gj, double %i.hx)
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.hy, double %i.hv)
  store double %i.hz, ptr %i.hu, align 8, !tbaa !13
  %i.ia = fneg double %i.hx
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.gj, double %i.hv)
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.ib, double %i.hx)
  store double %i.ic, ptr %i.hw, align 8, !tbaa !13
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !11 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv292.i ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !13 ; 3 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv286.i ; 2 uses
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !13 ; 3 uses
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.gj, double %i.ij)
  %i.il = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.ik, double %i.ih)
  store double %i.il, ptr %i.ig, align 8, !tbaa !13
  %i.im = fneg double %i.ij
  %i.in = tail call double @llvm.fmuladd.f64(double %i.im, double %i.gj, double %i.ih)
  %i.io = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.in, double %i.ij)
  store double %i.io, ptr %i.ii, align 8, !tbaa !13
  %indvars.iv.next262.i.1 = add nuw nsw i64 %indvars.iv261.i, 2 ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.preheader195.i.loopexit.unr-lcssa, label %.lr.ph216.i.new, !llvm.loop !40

.preheader194.i:                                  ; preds = %.prol.loopexit74, %.lr.ph218.i.new, %.preheader195.i
  %18 = trunc i64 %indvars.iv286.i to i32
  %19 = add i32 %18, 1
  %i.ip = icmp slt i32 %19, %1
  br i1 %i.ip, label %.lr.ph221.i, label %.preheader194.i..preheader.i_crit_edge

.preheader194.i..preheader.i_crit_edge:           ; preds = %.preheader194.i
  %.pre8 = fneg double %i.gh
  br label %.preheader.i

.lr.ph221.i:                                      ; preds = %.preheader194.i
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv286.i
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !11 ; 8 uses
  %i.is = fneg double %i.gh                       ; 9 uses
  %20 = zext i32 %12 to i64
  %21 = add nuw nsw i64 %20, 1                    ; 2 uses
  %min.iters.check40 = icmp ult i32 %12, 7
  br i1 %min.iters.check40, label %scalar.ph39.preheader, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph221.i
  %scevgep34 = getelementptr nuw i8, ptr %i.ir, i64 %i.ey
  %i.it = getelementptr i8, ptr %i.ir, i64 %i.ez
  %scevgep35 = getelementptr i8, ptr %i.it, i64 %17
  %bound036 = icmp ult ptr %scevgep31, %scevgep35
  %bound137 = icmp ult ptr %scevgep34, %scevgep33.a
  %found.conflict38 = and i1 %bound036, %bound137
  br i1 %found.conflict38, label %scalar.ph39.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck30
  %n.vec42 = and i64 %21, 8589934584              ; 3 uses
  %i.iu = add nuw i64 %indvars.iv275.i, %n.vec42
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.is, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <4 x double> poison, double %i.gj, i64 0
  %broadcast.splat44 = shufflevector <4 x double> %broadcast.splatinsert43, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert45 = insertelement <4 x double> poison, double %i.gh, i64 0
  %broadcast.splat46 = shufflevector <4 x double> %broadcast.splatinsert45, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph41
  %index48 = phi i64 [ 0, %vector.ph41 ], [ %index.next53, %vector.body47 ] ; 2 uses
  %i.iv = add nuw i64 %indvars.iv275.i, %index48  ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.iv ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32 ; 2 uses
  %wide.load49 = load <4 x double>, ptr %i.iw, align 8, !tbaa !13, !alias.scope !56, !noalias !57 ; 3 uses
  %wide.load50 = load <4 x double>, ptr %i.ix, align 8, !tbaa !13, !alias.scope !56, !noalias !57 ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.iv ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32 ; 2 uses
  %wide.load51 = load <4 x double>, ptr %i.iy, align 8, !tbaa !13, !alias.scope !57 ; 3 uses
  %wide.load52 = load <4 x double>, ptr %i.iz, align 8, !tbaa !13, !alias.scope !57 ; 3 uses
  %i.ja = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load49, <4 x double> %broadcast.splat44, <4 x double> %wide.load51)
  %i.jb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load50, <4 x double> %broadcast.splat44, <4 x double> %wide.load52)
  %i.jc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.ja, <4 x double> %wide.load49)
  %i.jd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.jb, <4 x double> %wide.load50)
  store <4 x double> %i.jc, ptr %i.iw, align 8, !tbaa !13, !alias.scope !56, !noalias !57
  store <4 x double> %i.jd, ptr %i.ix, align 8, !tbaa !13, !alias.scope !56, !noalias !57
  %i.je = fneg <4 x double> %wide.load51
  %i.jf = fneg <4 x double> %wide.load52
  %i.jg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.je, <4 x double> %broadcast.splat44, <4 x double> %wide.load49)
  %i.jh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jf, <4 x double> %broadcast.splat44, <4 x double> %wide.load50)
  %i.ji = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.jg, <4 x double> %wide.load51)
  %i.jj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.jh, <4 x double> %wide.load52)
  store <4 x double> %i.ji, ptr %i.iy, align 8, !tbaa !13, !alias.scope !57
  store <4 x double> %i.jj, ptr %i.iz, align 8, !tbaa !13, !alias.scope !57
  %index.next53 = add nuw i64 %index48, 8         ; 2 uses
  %i.jk = icmp eq i64 %index.next53, %n.vec42
  br i1 %i.jk, label %middle.block54, label %vector.body47, !llvm.loop !44

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %21, %n.vec42
  br i1 %cmp.n55, label %.preheader.i, label %scalar.ph39.preheader

scalar.ph39.preheader:                            ; preds = %vector.memcheck30, %.lr.ph221.i, %middle.block54
  %indvars.iv277.i.ph = phi i64 [ %indvars.iv275.i, %vector.memcheck30 ], [ %indvars.iv275.i, %.lr.ph221.i ], [ %i.iu, %middle.block54 ] ; 3 uses
  %22 = trunc i64 %indvars.iv277.i.ph to i32      ; 2 uses
  %23 = sub i32 %1, %22
  %xtraiter78 = and i32 %23, 3                    ; 2 uses
  %lcmp.mod79.not = icmp eq i32 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol

scalar.ph39.prol:                                 ; preds = %scalar.ph39.preheader, %scalar.ph39.prol
  %indvars.iv277.i.prol = phi i64 [ %indvars.iv.next278.i.prol, %scalar.ph39.prol ], [ %indvars.iv277.i.ph, %scalar.ph39.preheader ] ; 3 uses
  %prol.iter80 = phi i32 [ %prol.iter80.next, %scalar.ph39.prol ], [ 0, %scalar.ph39.preheader ]
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv277.i.prol ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !13 ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv277.i.prol ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !13 ; 3 uses
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.jm, double %i.gj, double %i.jo)
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.is, double %i.jp, double %i.jm)
  store double %i.jq, ptr %i.jl, align 8, !tbaa !13
  %i.jr = fneg double %i.jo
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jr, double %i.gj, double %i.jm)
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.js, double %i.jo)
  store double %i.jt, ptr %i.jn, align 8, !tbaa !13
  %indvars.iv.next278.i.prol = add nuw nsw i64 %indvars.iv277.i.prol, 1 ; 2 uses
  %prol.iter80.next = add i32 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i32 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol, !llvm.loop !45

scalar.ph39.prol.loopexit:                        ; preds = %scalar.ph39.prol, %scalar.ph39.preheader
  %indvars.iv277.i.unr = phi i64 [ %indvars.iv277.i.ph, %scalar.ph39.preheader ], [ %indvars.iv.next278.i.prol, %scalar.ph39.prol ]
  %24 = sub i32 %22, %1
  %i.ju = icmp ugt i32 %24, -4
  br i1 %i.ju, label %.preheader.i, label %scalar.ph39

.lr.ph218.i.new:                                  ; preds = %.prol.loopexit74, %.lr.ph218.i.new
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i.1, %.lr.ph218.i.new ], [ %indvars.iv268.i.unr, %.prol.loopexit74 ] ; 4 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv268.i ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !13 ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv268.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !11
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv286.i ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !13 ; 3 uses
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.jw, double %i.gj, double %i.ka)
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.hh, double %i.kb, double %i.jw)
  store double %i.kc, ptr %i.jv, align 8, !tbaa !13
  %i.kd = fneg double %i.ka
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kd, double %i.gj, double %i.jw)
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.ke, double %i.ka)
  store double %i.kf, ptr %i.jz, align 8, !tbaa !13
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next269.i ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !13 ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next269.i
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !11
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv286.i ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !13 ; 3 uses
  %i.km = tail call double @llvm.fmuladd.f64(double %i.kh, double %i.gj, double %i.kl)
  %i.kn = tail call double @llvm.fmuladd.f64(double %i.hh, double %i.km, double %i.kh)
  store double %i.kn, ptr %i.kg, align 8, !tbaa !13
  %i.ko = fneg double %i.kl
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.ko, double %i.gj, double %i.kh)
  %i.kq = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.kp, double %i.kl)
  store double %i.kq, ptr %i.kk, align 8, !tbaa !13
  %indvars.iv.next269.i.1 = add nuw nsw i64 %indvars.iv268.i, 2 ; 2 uses
  %exitcond272.not.i.1 = icmp eq i64 %indvars.iv.next269.i.1, %indvars.iv286.i
  br i1 %exitcond272.not.i.1, label %.preheader194.i, label %.lr.ph218.i.new, !llvm.loop !46

.preheader.i:                                     ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39, %middle.block54, %.preheader194.i..preheader.i_crit_edge
  %.pre-phi = phi double [ %.pre8, %.preheader194.i..preheader.i_crit_edge ], [ %i.is, %middle.block54 ], [ %i.is, %scalar.ph39 ], [ %i.is, %scalar.ph39.prol.loopexit ] ; 3 uses
  br i1 %i.aw, label %.epil.preheader81, label %.preheader.i.new

scalar.ph39:                                      ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39
  %indvars.iv277.i = phi i64 [ %indvars.iv.next278.i.3, %scalar.ph39 ], [ %indvars.iv277.i.unr, %scalar.ph39.prol.loopexit ] ; 6 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv277.i ; 2 uses
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !13 ; 3 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv277.i ; 2 uses
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !13 ; 3 uses
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.gj, double %i.ku)
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.is, double %i.kv, double %i.ks)
  store double %i.kw, ptr %i.kr, align 8, !tbaa !13
  %i.kx = fneg double %i.ku
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.gj, double %i.ks)
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.ky, double %i.ku)
  store double %i.kz, ptr %i.kt, align 8, !tbaa !13
  %indvars.iv.next278.i = add nuw nsw i64 %indvars.iv277.i, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next278.i ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !13 ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next278.i ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !13 ; 3 uses
  %i.le = tail call double @llvm.fmuladd.f64(double %i.lb, double %i.gj, double %i.ld)
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.is, double %i.le, double %i.lb)
  store double %i.lf, ptr %i.la, align 8, !tbaa !13
  %i.lg = fneg double %i.ld
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.gj, double %i.lb)
  %i.li = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.lh, double %i.ld)
  store double %i.li, ptr %i.lc, align 8, !tbaa !13
  %indvars.iv.next278.i.1 = add nuw nsw i64 %indvars.iv277.i, 2 ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next278.i.1 ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !13 ; 3 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next278.i.1 ; 2 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !13 ; 3 uses
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.lk, double %i.gj, double %i.lm)
  %i.lo = tail call double @llvm.fmuladd.f64(double %i.is, double %i.ln, double %i.lk)
  store double %i.lo, ptr %i.lj, align 8, !tbaa !13
  %i.lp = fneg double %i.lm
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.lp, double %i.gj, double %i.lk)
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.lq, double %i.lm)
  store double %i.lr, ptr %i.ll, align 8, !tbaa !13
  %indvars.iv.next278.i.2 = add nuw nsw i64 %indvars.iv277.i, 3 ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next278.i.2 ; 2 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !13 ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next278.i.2 ; 2 uses
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !13 ; 3 uses
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.lt, double %i.gj, double %i.lv)
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.is, double %i.lw, double %i.lt)
  store double %i.lx, ptr %i.ls, align 8, !tbaa !13
  %i.ly = fneg double %i.lv
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.gj, double %i.lt)
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.lz, double %i.lv)
  store double %i.ma, ptr %i.lu, align 8, !tbaa !13
  %indvars.iv.next278.i.3 = add nuw nsw i64 %indvars.iv277.i, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next278.i.3 to i32
  %exitcond.3 = icmp eq i32 %1, %lftr.wideiv.3
  br i1 %exitcond.3, label %.preheader.i, label %scalar.ph39, !llvm.loop !47

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv281.i = phi i64 [ %indvars.iv.next282.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 3 uses
  %niter87 = phi i64 [ %niter87.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !11 ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv292.i ; 2 uses
  %i.me = load double, ptr %i.md, align 8, !tbaa !13 ; 3 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv286.i ; 2 uses
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !13 ; 3 uses
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.me, double %i.gj, double %i.mg)
  %i.mi = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.mh, double %i.me)
  store double %i.mi, ptr %i.md, align 8, !tbaa !13
  %i.mj = fneg double %i.mg
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.gj, double %i.me)
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.mk, double %i.mg)
  store double %i.ml, ptr %i.mf, align 8, !tbaa !13
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !11 ; 2 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv292.i ; 2 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !13 ; 3 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv286.i ; 2 uses
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !13 ; 3 uses
  %i.mt = tail call double @llvm.fmuladd.f64(double %i.mq, double %i.gj, double %i.ms)
  %i.mu = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.mt, double %i.mq)
  store double %i.mu, ptr %i.mp, align 8, !tbaa !13
  %i.mv = fneg double %i.ms
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.gj, double %i.mq)
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.mw, double %i.ms)
  store double %i.mx, ptr %i.mr, align 8, !tbaa !13
  %indvars.iv.next282.i.1 = add nuw nsw i64 %indvars.iv281.i, 2 ; 2 uses
  %niter87.next.1 = add i64 %niter87, 2           ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %._crit_edge224.i.loopexit.unr-lcssa, label %.preheader.i.new, !llvm.loop !48

._crit_edge224.i.loopexit.unr-lcssa:              ; preds = %.preheader.i.new
  br i1 %lcmp.mod84.not, label %._crit_edge224.i.loopexit, label %.epil.preheader81

.epil.preheader81:                                ; preds = %._crit_edge224.i.loopexit.unr-lcssa, %.preheader.i
  %indvars.iv281.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next282.i.1, %._crit_edge224.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i.epil.init
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !11 ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %indvars.iv292.i ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !13 ; 3 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %indvars.iv286.i ; 2 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !13 ; 3 uses
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.nb, double %i.gj, double %i.nd)
  %i.nf = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.ne, double %i.nb)
  store double %i.nf, ptr %i.na, align 8, !tbaa !13
  %i.ng = fneg double %i.nd
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.ng, double %i.gj, double %i.nb)
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.nh, double %i.nd)
  store double %i.ni, ptr %i.nc, align 8, !tbaa !13
  br label %._crit_edge224.i.loopexit

._crit_edge224.i.loopexit:                        ; preds = %._crit_edge224.i.loopexit.unr-lcssa, %.epil.preheader81
  %i.nj = add nsw i32 %.2170227.i, 1
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge224.i.loopexit, %bb.g, %bb.f
  %.3171.i = phi i32 [ %.2170227.i, %bb.f ], [ %i.nj, %._crit_edge224.i.loopexit ], [ %.2170227.i, %bb.g ] ; 3 uses
  %indvars.iv.next287.i = add nuw nsw i64 %indvars.iv286.i, 1 ; 2 uses
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1
  %exitcond291.not.i = icmp eq i64 %indvars.iv.next287.i, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond291.not.i, label %.loopexit.i, label %bb.c, !llvm.loop !49

.lr.ph237.i:                                      ; preds = %.lr.ph237.i.prol.loopexit, %.lr.ph237.i
  %indvars.iv297.i = phi i64 [ %indvars.iv.next298.i.3, %.lr.ph237.i ], [ %indvars.iv297.i.unr, %.lr.ph237.i.prol.loopexit ] ; 7 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv297.i ; 2 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !13
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv297.i ; 2 uses
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !13
  %i.no = fadd double %i.nl, %i.nn                ; 2 uses
  store double %i.no, ptr %i.nm, align 8, !tbaa !13
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv297.i
  store double %i.no, ptr %i.np, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.nk, align 8, !tbaa !13
  %indvars.iv.next298.i = add nuw nsw i64 %indvars.iv297.i, 1 ; 3 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next298.i ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !13
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next298.i ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !13
  %i.nu = fadd double %i.nr, %i.nt                ; 2 uses
  store double %i.nu, ptr %i.ns, align 8, !tbaa !13
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next298.i
  store double %i.nu, ptr %i.nv, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.nq, align 8, !tbaa !13
  %indvars.iv.next298.i.1 = add nuw nsw i64 %indvars.iv297.i, 2 ; 3 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next298.i.1 ; 2 uses
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !13
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next298.i.1 ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !13
  %i.oa = fadd double %i.nx, %i.nz                ; 2 uses
  store double %i.oa, ptr %i.ny, align 8, !tbaa !13
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next298.i.1
  store double %i.oa, ptr %i.ob, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.nw, align 8, !tbaa !13
  %indvars.iv.next298.i.2 = add nuw nsw i64 %indvars.iv297.i, 3 ; 3 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next298.i.2 ; 2 uses
  %i.od = load double, ptr %i.oc, align 8, !tbaa !13
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next298.i.2 ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !13
  %i.og = fadd double %i.od, %i.of                ; 2 uses
  store double %i.og, ptr %i.oe, align 8, !tbaa !13
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next298.i.2
  store double %i.og, ptr %i.oh, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.oc, align 8, !tbaa !13
  %indvars.iv.next298.i.3 = add nuw nsw i64 %indvars.iv297.i, 4 ; 2 uses
  %exitcond301.not.i.3 = icmp eq i64 %indvars.iv.next298.i.3, %i.e
  br i1 %exitcond301.not.i.3, label %._crit_edge238.i.loopexit, label %.lr.ph237.i, !llvm.loop !50

._crit_edge238.i.loopexit:                        ; preds = %.lr.ph237.i.prol.loopexit, %.lr.ph237.i, %middle.block
  %i.oi = add nuw nsw i32 %.0167240.i, 1          ; 2 uses
  %exitcond302.not.i = icmp eq i32 %i.oi, 51
  br i1 %exitcond302.not.i, label %bb.m, label %.preheader198.i, !llvm.loop !51

bb.m:                                             ; preds = %._crit_edge238.i.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(59) @.str.1, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 177, ptr noundef nonnull @.str.3) #12
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.oj

_ZL6jacobiIPPdEiT_iS0_S2_.exit.split:             ; preds = %._crit_edge.i, %bb.a, %.preheader199.i
  %.0168239.i.lcssa.split = phi i32 [ 0, %.preheader199.i ], [ 0, %bb.a ], [ %.0168239.i, %._crit_edge.i ]
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 103, ptr noundef %i.c)
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 104, ptr noundef %i.b)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZL6jacobiIPPdEiT_iS0_S2_.exit.split
  store i32 %.0168239.i.lcssa.split, ptr %4, align 4, !tbaa !58
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZL6jacobiIPPdEiT_iS0_S2_.exit.split
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(59) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(59) %1) #11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.b, ptr %i.a, align 8, !tbaa !60
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !22
  %i.f = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.f, ptr %i.c, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.h, ptr %i.g, align 1, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
end_hunk_0
