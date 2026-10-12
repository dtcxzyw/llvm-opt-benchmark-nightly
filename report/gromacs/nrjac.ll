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
  %i.av = add nsw i32 %1, -3
  %i.aw = add nsw i64 %i.e, -2
  %6 = add nsw i32 %1, -3
  %xtraiter82 = and i64 %i.e, 1
  %i.ax = icmp eq i64 %i.g, 0
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
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv244.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv244.i
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv244.i
  store double %i.bb, ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv244.i
  store double %i.bb, ptr %i.bd, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv244.i
  store double 0.000000e+00, ptr %i.be, align 8, !tbaa !13
  %indvars.iv.next245.i = or disjoint i64 %indvars.iv244.i, 1 ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next245.i
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i
  store double %i.bi, ptr %i.bj, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i
  store double %i.bi, ptr %i.bk, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i
  store double 0.000000e+00, ptr %i.bl, align 8, !tbaa !13
  %indvars.iv.next245.i.1 = or disjoint i64 %indvars.iv244.i, 2 ; 5 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i.1
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next245.i.1
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i.1
  store double %i.bp, ptr %i.bq, align 8, !tbaa !13
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i.1
  store double %i.bp, ptr %i.br, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i.1
  store double 0.000000e+00, ptr %i.bs, align 8, !tbaa !13
  %indvars.iv.next245.i.2 = or disjoint i64 %indvars.iv244.i, 3 ; 5 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i.2
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.next245.i.2
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !13 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i.2
  store double %i.bw, ptr %i.bx, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i.2
  store double %i.bw, ptr %i.by, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i.2
  store double 0.000000e+00, ptr %i.bz, align 8, !tbaa !13
  %indvars.iv.next245.i.3 = add nuw nsw i64 %indvars.iv244.i, 4 ; 2 uses
  %niter64.next.3 = add i64 %niter64, 4           ; 2 uses
  %niter64.ncmp.3 = icmp eq i64 %niter64.next.3, %unroll_iter63
  br i1 %niter64.ncmp.3, label %.preheader199.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !29

.preheader198.i:                                  ; preds = %.preheader198.i.preheader, %._crit_edge238.i.loopexit
  %.0167240.i = phi i32 [ %i.oy, %._crit_edge238.i.loopexit ], [ 1, %.preheader198.i.preheader ] ; 3 uses
  %.0168239.i = phi i32 [ %.3171.i, %._crit_edge238.i.loopexit ], [ 0, %.preheader198.i.preheader ] ; 2 uses
  br label %.lr.ph208.i

.loopexit196.i:                                   ; preds = %.lr.ph208.i.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.dv, %.lr.ph208.i.new ] ; 3 uses
  %indvars.iv.next257.i = add nuw nsw i64 %indvars.iv256.i, 1 ; 2 uses
  %indvars.iv.next250.i = add nuw nsw i64 %indvars.iv249.i, 1
  %exitcond260.not.i = icmp eq i64 %indvars.iv.next257.i, %wide.trip.count259.i
  br i1 %exitcond260.not.i, label %._crit_edge.i, label %.lr.ph208.i, !llvm.loop !30

.lr.ph208.i:                                      ; preds = %.preheader198.i, %.loopexit196.i
  %indvars.iv256.i = phi i64 [ %indvars.iv.next257.i, %.loopexit196.i ], [ 0, %.preheader198.i ] ; 4 uses
  %indvars.iv249.i = phi i64 [ %indvars.iv.next250.i, %.loopexit196.i ], [ 1, %.preheader198.i ] ; 3 uses
  %.0172210.i = phi double [ %.lcssa, %.loopexit196.i ], [ 0.000000e+00, %.preheader198.i ] ; 2 uses
  %i.ca = sub i64 %i.g, %indvars.iv256.i
  %i.cb = sub i64 %i.aw, %indvars.iv256.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv256.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !11 ; 9 uses
  %xtraiter65 = and i64 %i.ca, 7                  ; 2 uses
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph208.i, %.prol.preheader
  %indvars.iv251.i.prol = phi i64 [ %indvars.iv.next252.i.prol, %.prol.preheader ], [ %indvars.iv249.i, %.lr.ph208.i ] ; 2 uses
  %.1173207.i.prol = phi double [ %i.ch, %.prol.preheader ], [ %.0172210.i, %.lr.ph208.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph208.i ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv251.i.prol
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13
  %i.cg = tail call noundef double @llvm.fabs.f64(double %i.cf)
  %i.ch = fadd double %.1173207.i.prol, %i.cg     ; 3 uses
  %indvars.iv.next252.i.prol = add nuw nsw i64 %indvars.iv251.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter65
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph208.i
  %.lcssa.unr = phi double [ poison, %.lr.ph208.i ], [ %i.ch, %.prol.preheader ]
  %indvars.iv251.i.unr = phi i64 [ %indvars.iv249.i, %.lr.ph208.i ], [ %indvars.iv.next252.i.prol, %.prol.preheader ]
  %.1173207.i.unr = phi double [ %.0172210.i, %.lr.ph208.i ], [ %i.ch, %.prol.preheader ]
  %i.ci = icmp ult i64 %i.cb, 7
  br i1 %i.ci, label %.loopexit196.i, label %.lr.ph208.i.new

.lr.ph208.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph208.i.new
  %indvars.iv251.i = phi i64 [ %indvars.iv.next252.i.7, %.lr.ph208.i.new ], [ %indvars.iv251.i.unr, %.prol.loopexit ] ; 9 uses
  %.1173207.i = phi double [ %i.dv, %.lr.ph208.i.new ], [ %.1173207.i.unr, %.prol.loopexit ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv251.i
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !13
  %i.cl = tail call noundef double @llvm.fabs.f64(double %i.ck)
  %i.cm = fadd double %.1173207.i, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv251.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !13
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = fadd double %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv251.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !13
  %i.cv = tail call noundef double @llvm.fabs.f64(double %i.cu)
  %i.cw = fadd double %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv251.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !13
  %i.da = tail call noundef double @llvm.fabs.f64(double %i.cz)
  %i.db = fadd double %i.cw, %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv251.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load double, ptr %i.dd, align 8, !tbaa !13
  %i.df = tail call noundef double @llvm.fabs.f64(double %i.de)
  %i.dg = fadd double %i.db, %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv251.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load double, ptr %i.di, align 8, !tbaa !13
  %i.dk = tail call noundef double @llvm.fabs.f64(double %i.dj)
  %i.dl = fadd double %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv251.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load double, ptr %i.dn, align 8, !tbaa !13
  %i.dp = tail call noundef double @llvm.fabs.f64(double %i.do)
  %i.dq = fadd double %i.dl, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv251.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !13
  %i.du = tail call noundef double @llvm.fabs.f64(double %i.dt)
  %i.dv = fadd double %i.dq, %i.du                ; 2 uses
  %indvars.iv.next252.i.7 = add nuw nsw i64 %indvars.iv251.i, 8 ; 2 uses
  %exitcond255.not.i.7 = icmp eq i64 %indvars.iv.next252.i.7, %i.e
  br i1 %exitcond255.not.i.7, label %.loopexit196.i, label %.lr.ph208.i.new, !llvm.loop !32

._crit_edge.i:                                    ; preds = %.loopexit196.i
  %i.dw = fcmp oeq double %.lcssa, 0.000000e+00
  br i1 %i.dw, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.dx = icmp samesign ult i32 %.0167240.i, 4
  %i.dy = fmul double %.lcssa, 2.000000e-01
  %i.dz = fdiv double %i.dy, %i.at
  %.0175.i = select i1 %i.dx, double %i.dz, double 0.000000e+00
  %i.ea = icmp samesign ugt i32 %.0167240.i, 4
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
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.eb, align 8, !tbaa !13, !alias.scope !52
  %wide.load27 = load <4 x double>, ptr %i.ec, align 8, !tbaa !13, !alias.scope !52
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 2 uses
  %wide.load28 = load <4 x double>, ptr %i.ed, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  %wide.load29 = load <4 x double>, ptr %i.ee, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  %i.ef = fadd <4 x double> %wide.load, %wide.load28 ; 2 uses
  %i.eg = fadd <4 x double> %wide.load27, %wide.load29 ; 2 uses
  store <4 x double> %i.ef, ptr %i.ed, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  store <4 x double> %i.eg, ptr %i.ee, align 8, !tbaa !13, !alias.scope !53, !noalias !54
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store <4 x double> %i.ef, ptr %i.eh, align 8, !tbaa !13, !alias.scope !55, !noalias !52
  store <4 x double> %i.eg, ptr %i.ei, align 8, !tbaa !13, !alias.scope !55, !noalias !52
  store <4 x double> zeroinitializer, ptr %i.eb, align 8, !tbaa !13, !alias.scope !52
  store <4 x double> zeroinitializer, ptr %i.ec, align 8, !tbaa !13, !alias.scope !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge238.i.loopexit, label %.lr.ph237.i.preheader

.lr.ph237.i.preheader:                            ; preds = %.preheader197.i, %middle.block
  %indvars.iv297.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader197.i ] ; 3 uses
  br i1 %lcmp.mod89.not, label %.lr.ph237.i.prol.loopexit, label %.lr.ph237.i.prol

.lr.ph237.i.prol:                                 ; preds = %.lr.ph237.i.preheader, %.lr.ph237.i.prol
  %indvars.iv297.i.prol = phi i64 [ %indvars.iv.next298.i.prol, %.lr.ph237.i.prol ], [ %indvars.iv297.i.ph, %.lr.ph237.i.preheader ] ; 4 uses
  %prol.iter90 = phi i64 [ %prol.iter90.next, %.lr.ph237.i.prol ], [ 0, %.lr.ph237.i.preheader ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv297.i.prol ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !13
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv297.i.prol ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !13
  %i.eo = fadd double %i.el, %i.en                ; 2 uses
  store double %i.eo, ptr %i.em, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv297.i.prol
  store double %i.eo, ptr %i.ep, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !13
  %indvars.iv.next298.i.prol = add nuw nsw i64 %indvars.iv297.i.prol, 1 ; 2 uses
  %prol.iter90.next = add i64 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i64 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph237.i.prol.loopexit, label %.lr.ph237.i.prol, !llvm.loop !39

.lr.ph237.i.prol.loopexit:                        ; preds = %.lr.ph237.i.prol, %.lr.ph237.i.preheader
  %indvars.iv297.i.unr = phi i64 [ %indvars.iv297.i.ph, %.lr.ph237.i.preheader ], [ %indvars.iv.next298.i.prol, %.lr.ph237.i.prol ]
  %i.eq = sub nsw i64 %indvars.iv297.i.ph, %i.e
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %._crit_edge238.i.loopexit, label %.lr.ph237.i

.lr.ph229.i:                                      ; preds = %.loopexit.i, %bb.b
  %indvars.iv292.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next293.i, %.loopexit.i ] ; 18 uses
  %indvars.iv273.i = phi i64 [ 2, %bb.b ], [ %indvars.iv.next274.i, %.loopexit.i ] ; 2 uses
  %indvars.iv266.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next267.i, %.loopexit.i ] ; 6 uses
  %.1169232.i = phi i32 [ %.0168239.i, %bb.b ], [ %.3171.i, %.loopexit.i ]
  %i.es = shl i64 %indvars.iv292.i, 3             ; 2 uses
  %i.et = add i64 %i.es, 16
  %i.eu = add i64 %i.es, 24
  %indvars.iv.next293.i = add nuw nsw i64 %indvars.iv292.i, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv292.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !11 ; 12 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv292.i ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv292.i ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv292.i, 0
  %xtraiter67 = and i64 %indvars.iv292.i, 1
  %i.ez = icmp eq i64 %indvars.iv292.i, 1
  %unroll_iter71 = and i64 %indvars.iv292.i, 9223372036854775806
  %lcmp.mod69.not = icmp eq i64 %xtraiter67, 0
  %lcmp.mod70 = trunc i64 %indvars.iv292.i to i1
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv266.i ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv266.i
  %indvars.iv.next269.i.prol = add nuw nsw i64 %indvars.iv266.i, 1
  %7 = trunc i64 %indvars.iv292.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %.lr.ph229.i
  %indvar = phi i64 [ %indvar.next, %bb.l ], [ 0, %.lr.ph229.i ] ; 6 uses
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %bb.l ], [ %indvars.iv266.i, %.lr.ph229.i ] ; 18 uses
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i, %bb.l ], [ %indvars.iv273.i, %.lr.ph229.i ] ; 5 uses
  %.2170227.i = phi i32 [ %.3171.i, %bb.l ], [ %.1169232.i, %.lr.ph229.i ] ; 3 uses
  %i.fc = shl i64 %indvar, 3                      ; 2 uses
  %i.fd = add i64 %i.et, %i.fc                    ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.ew, i64 %i.fd
  %i.fe = add i64 %i.eu, %i.fc                    ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.ew, i64 %i.fe
  %i.ff = add i64 %indvars.iv292.i, %indvar
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = sub i32 %i.av, %i.fg
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 3                ; 2 uses
  %scevgep33 = getelementptr i8, ptr %scevgep32, i64 %i.fj
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv286.i ; 3 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !13 ; 4 uses
  %i.fm = tail call noundef double @llvm.fabs.f64(double %i.fl) ; 2 uses
  %i.fn = fmul double %i.fm, 1.000000e+02         ; 3 uses
  br i1 %i.ea, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.fo = load double, ptr %i.ex, align 8, !tbaa !13
  %i.fp = tail call noundef double @llvm.fabs.f64(double %i.fo) ; 2 uses
  %i.fq = fadd double %i.fn, %i.fp
  %i.fr = fcmp oeq double %i.fq, %i.fp
  br i1 %i.fr, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !13
  %i.fu = tail call noundef double @llvm.fabs.f64(double %i.ft) ; 2 uses
  %i.fv = fadd double %i.fn, %i.fu
  %i.fw = fcmp oeq double %i.fv, %i.fu
  br i1 %i.fw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %i.fk, align 8, !tbaa !13
  br label %bb.l

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.fx = fcmp ogt double %i.fm, %.0175.i
  br i1 %i.fx, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i ; 3 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !13
  %i.ga = load double, ptr %i.ex, align 8, !tbaa !13
  %i.gb = fsub double %i.fz, %i.ga                ; 3 uses
  %i.gc = tail call noundef double @llvm.fabs.f64(double %i.gb) ; 2 uses
  %i.gd = fadd double %i.fn, %i.gc
  %i.ge = fcmp oeq double %i.gd, %i.gc
  br i1 %i.ge, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gf = fdiv double %i.fl, %i.gb
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.gg = fmul double %i.gb, 5.000000e-01
  %i.gh = fdiv double %i.gg, %i.fl                ; 4 uses
  %i.gi = tail call noundef double @llvm.fabs.f64(double %i.gh)
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.gh, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.gj)
  %i.gk = fadd double %i.gi, %sqrt.i
  %i.gl = fdiv double 1.000000e+00, %i.gk         ; 2 uses
  %i.gm = fcmp olt double %i.gh, 0.000000e+00
  %i.gn = fneg double %i.gl
  %spec.select.i = select i1 %i.gm, double %i.gn, double %i.gl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0174.i = phi double [ %i.gf, %bb.i ], [ %spec.select.i, %bb.j ] ; 4 uses
  %i.go = tail call double @llvm.fmuladd.f64(double %.0174.i, double %.0174.i, double 1.000000e+00)
  %sqrt193.i = tail call double @llvm.sqrt.f64(double %i.go)
  %i.gp = fdiv double 1.000000e+00, %sqrt193.i    ; 2 uses
  %i.gq = fmul double %.0174.i, %i.gp             ; 20 uses
  %i.gr = fadd double %i.gp, 1.000000e+00
  %i.gs = fdiv double %i.gq, %i.gr                ; 29 uses
  %i.gt = fmul double %i.fl, %.0174.i             ; 4 uses
  %i.gu = load double, ptr %i.ey, align 8, !tbaa !13
  %i.gv = fsub double %i.gu, %i.gt
  store double %i.gv, ptr %i.ey, align 8, !tbaa !13
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv286.i ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !13
  %i.gy = fadd double %i.gt, %i.gx
  store double %i.gy, ptr %i.gw, align 8, !tbaa !13
  %i.gz = load double, ptr %i.ex, align 8, !tbaa !13
  %i.ha = fsub double %i.gz, %i.gt
  store double %i.ha, ptr %i.ex, align 8, !tbaa !13
  %i.hb = load double, ptr %i.fy, align 8, !tbaa !13
  %i.hc = fadd double %i.gt, %i.hb
  store double %i.hc, ptr %i.fy, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.fk, align 8, !tbaa !13
  br i1 %.not.i, label %.preheader195.i, label %.lr.ph216.i

.lr.ph216.i:                                      ; preds = %bb.k
  %i.hd = fneg double %i.gq                       ; 3 uses
  br i1 %i.ez, label %.epil.preheader, label %.lr.ph216.i.new

.preheader195.i.loopexit.unr-lcssa:               ; preds = %.lr.ph216.i.new
  br i1 %lcmp.mod69.not, label %.preheader195.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader195.i.loopexit.unr-lcssa, %.lr.ph216.i
  %indvars.iv261.i.epil.init = phi i64 [ 0, %.lr.ph216.i ], [ %indvars.iv.next262.i.1, %.preheader195.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i.epil.init
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !11 ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv292.i ; 2 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !13 ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv286.i ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !13 ; 3 uses
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hh, double %i.gs, double %i.hj)
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.hk, double %i.hh)
  store double %i.hl, ptr %i.hg, align 8, !tbaa !13
  %i.hm = fneg double %i.hj
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.gs, double %i.hh)
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.hn, double %i.hj)
  store double %i.ho, ptr %i.hi, align 8, !tbaa !13
  br label %.preheader195.i

.preheader195.i:                                  ; preds = %.epil.preheader, %.preheader195.i.loopexit.unr-lcssa, %bb.k
  %i.hp = icmp samesign ult i64 %indvars.iv.next293.i, %indvars.iv286.i
  br i1 %i.hp, label %.lr.ph218.i, label %.preheader194.i

.lr.ph218.i:                                      ; preds = %.preheader195.i
  %i.hq = fneg double %i.gq                       ; 3 uses
  %xtraiter75 = and i64 %indvar, 1
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.prol.loopexit74, label %.prol.loopexit74.unr-lcssa

.prol.loopexit74.unr-lcssa:                       ; preds = %.lr.ph218.i
  %i.hr = load double, ptr %i.fa, align 8, !tbaa !13 ; 3 uses
  %i.hs = load ptr, ptr %i.fb, align 8, !tbaa !11
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv286.i ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !13 ; 3 uses
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.gs, double %i.hu)
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.hv, double %i.hr)
  store double %i.hw, ptr %i.fa, align 8, !tbaa !13
  %i.hx = fneg double %i.hu
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.gs, double %i.hr)
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.hy, double %i.hu)
  store double %i.hz, ptr %i.ht, align 8, !tbaa !13
  br label %.prol.loopexit74

.prol.loopexit74:                                 ; preds = %.prol.loopexit74.unr-lcssa, %.lr.ph218.i
  %indvars.iv268.i.unr = phi i64 [ %indvars.iv266.i, %.lr.ph218.i ], [ %indvars.iv.next269.i.prol, %.prol.loopexit74.unr-lcssa ]
  %i.ia = icmp eq i64 %indvar, 1
  br i1 %i.ia, label %.preheader194.i, label %.lr.ph218.i.new

.lr.ph216.i.new:                                  ; preds = %.lr.ph216.i, %.lr.ph216.i.new
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i.1, %.lr.ph216.i.new ], [ 0, %.lr.ph216.i ] ; 3 uses
  %niter72 = phi i64 [ %niter72.next.1, %.lr.ph216.i.new ], [ 0, %.lr.ph216.i ]
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !11 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv292.i ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !13 ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv286.i ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !13 ; 3 uses
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.gs, double %i.ig)
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.ih, double %i.ie)
  store double %i.ii, ptr %i.id, align 8, !tbaa !13
  %i.ij = fneg double %i.ig
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.gs, double %i.ie)
  %i.il = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.ik, double %i.ig)
  store double %i.il, ptr %i.if, align 8, !tbaa !13
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !11 ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv292.i ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !13 ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv286.i ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !13 ; 3 uses
  %i.it = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.gs, double %i.is)
  %i.iu = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.it, double %i.iq)
  store double %i.iu, ptr %i.ip, align 8, !tbaa !13
  %i.iv = fneg double %i.is
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.gs, double %i.iq)
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.iw, double %i.is)
  store double %i.ix, ptr %i.ir, align 8, !tbaa !13
  %indvars.iv.next262.i.1 = add nuw nsw i64 %indvars.iv261.i, 2 ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.preheader195.i.loopexit.unr-lcssa, label %.lr.ph216.i.new, !llvm.loop !40

.preheader194.i:                                  ; preds = %.prol.loopexit74, %.lr.ph218.i.new, %.preheader195.i
  %i.iy = trunc i64 %indvars.iv286.i to i32
  %i.iz = add i32 %i.iy, 1
  %i.ja = icmp slt i32 %i.iz, %1
  br i1 %i.ja, label %.lr.ph221.i, label %.preheader194.i..preheader.i_crit_edge

.preheader194.i..preheader.i_crit_edge:           ; preds = %.preheader194.i
  %.pre8 = fneg double %i.gq
  br label %.preheader.i

.lr.ph221.i:                                      ; preds = %.preheader194.i
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv286.i
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !11 ; 8 uses
  %i.jd = fneg double %i.gq                       ; 9 uses
  %8 = trunc i64 %indvar to i32
  %9 = add i32 %7, %8
  %10 = sub i32 %6, %9                            ; 2 uses
  %i.je = zext i32 %10 to i64
  %i.jf = add nuw nsw i64 %i.je, 1                ; 2 uses
  %min.iters.check40 = icmp ult i32 %10, 7
  br i1 %min.iters.check40, label %scalar.ph39.preheader, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph221.i
  %scevgep34 = getelementptr nuw i8, ptr %i.jc, i64 %i.fd
  %i.jg = getelementptr i8, ptr %i.jc, i64 %i.fe
  %scevgep35 = getelementptr i8, ptr %i.jg, i64 %i.fj
  %bound036 = icmp ult ptr %scevgep31, %scevgep35
  %bound137 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict38 = and i1 %bound036, %bound137
  br i1 %found.conflict38, label %scalar.ph39.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck30
  %n.vec42 = and i64 %i.jf, 8589934584            ; 3 uses
  %i.jh = add nuw i64 %indvars.iv275.i, %n.vec42
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.jd, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <4 x double> poison, double %i.gs, i64 0
  %broadcast.splat44 = shufflevector <4 x double> %broadcast.splatinsert43, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert45 = insertelement <4 x double> poison, double %i.gq, i64 0
  %broadcast.splat46 = shufflevector <4 x double> %broadcast.splatinsert45, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph41
  %index48 = phi i64 [ 0, %vector.ph41 ], [ %index.next53, %vector.body47 ] ; 2 uses
  %i.ji = add nuw i64 %indvars.iv275.i, %index48  ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ji ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32 ; 2 uses
  %wide.load49 = load <4 x double>, ptr %i.jj, align 8, !tbaa !13, !alias.scope !56, !noalias !57 ; 3 uses
  %wide.load50 = load <4 x double>, ptr %i.jk, align 8, !tbaa !13, !alias.scope !56, !noalias !57 ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.ji ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 32 ; 2 uses
  %wide.load51 = load <4 x double>, ptr %i.jl, align 8, !tbaa !13, !alias.scope !57 ; 3 uses
  %wide.load52 = load <4 x double>, ptr %i.jm, align 8, !tbaa !13, !alias.scope !57 ; 3 uses
  %i.jn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load49, <4 x double> %broadcast.splat44, <4 x double> %wide.load51)
  %i.jo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load50, <4 x double> %broadcast.splat44, <4 x double> %wide.load52)
  %i.jp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.jn, <4 x double> %wide.load49)
  %i.jq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.jo, <4 x double> %wide.load50)
  store <4 x double> %i.jp, ptr %i.jj, align 8, !tbaa !13, !alias.scope !56, !noalias !57
  store <4 x double> %i.jq, ptr %i.jk, align 8, !tbaa !13, !alias.scope !56, !noalias !57
  %i.jr = fneg <4 x double> %wide.load51
  %i.js = fneg <4 x double> %wide.load52
  %i.jt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jr, <4 x double> %broadcast.splat44, <4 x double> %wide.load49)
  %i.ju = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.js, <4 x double> %broadcast.splat44, <4 x double> %wide.load50)
  %i.jv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.jt, <4 x double> %wide.load51)
  %i.jw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.ju, <4 x double> %wide.load52)
  store <4 x double> %i.jv, ptr %i.jl, align 8, !tbaa !13, !alias.scope !57
  store <4 x double> %i.jw, ptr %i.jm, align 8, !tbaa !13, !alias.scope !57
  %index.next53 = add nuw i64 %index48, 8         ; 2 uses
  %i.jx = icmp eq i64 %index.next53, %n.vec42
  br i1 %i.jx, label %middle.block54, label %vector.body47, !llvm.loop !44

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %i.jf, %n.vec42
  br i1 %cmp.n55, label %.preheader.i, label %scalar.ph39.preheader

scalar.ph39.preheader:                            ; preds = %vector.memcheck30, %.lr.ph221.i, %middle.block54
  %indvars.iv277.i.ph = phi i64 [ %indvars.iv275.i, %vector.memcheck30 ], [ %indvars.iv275.i, %.lr.ph221.i ], [ %i.jh, %middle.block54 ] ; 3 uses
  %i.jy = trunc i64 %indvars.iv277.i.ph to i32    ; 2 uses
  %i.jz = sub i32 %1, %i.jy
  %xtraiter78 = and i32 %i.jz, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i32 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol

scalar.ph39.prol:                                 ; preds = %scalar.ph39.preheader, %scalar.ph39.prol
  %indvars.iv277.i.prol = phi i64 [ %indvars.iv.next278.i.prol, %scalar.ph39.prol ], [ %indvars.iv277.i.ph, %scalar.ph39.preheader ] ; 3 uses
  %prol.iter80 = phi i32 [ %prol.iter80.next, %scalar.ph39.prol ], [ 0, %scalar.ph39.preheader ]
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv277.i.prol ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !13 ; 3 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv277.i.prol ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !13 ; 3 uses
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kb, double %i.gs, double %i.kd)
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.ke, double %i.kb)
  store double %i.kf, ptr %i.ka, align 8, !tbaa !13
  %i.kg = fneg double %i.kd
  %i.kh = tail call double @llvm.fmuladd.f64(double %i.kg, double %i.gs, double %i.kb)
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.kh, double %i.kd)
  store double %i.ki, ptr %i.kc, align 8, !tbaa !13
  %indvars.iv.next278.i.prol = add nuw nsw i64 %indvars.iv277.i.prol, 1 ; 2 uses
  %prol.iter80.next = add i32 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i32 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol, !llvm.loop !45

scalar.ph39.prol.loopexit:                        ; preds = %scalar.ph39.prol, %scalar.ph39.preheader
  %indvars.iv277.i.unr = phi i64 [ %indvars.iv277.i.ph, %scalar.ph39.preheader ], [ %indvars.iv.next278.i.prol, %scalar.ph39.prol ]
  %i.kj = sub i32 %i.jy, %1
  %i.kk = icmp ugt i32 %i.kj, -4
  br i1 %i.kk, label %.preheader.i, label %scalar.ph39

.lr.ph218.i.new:                                  ; preds = %.prol.loopexit74, %.lr.ph218.i.new
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i.1, %.lr.ph218.i.new ], [ %indvars.iv268.i.unr, %.prol.loopexit74 ] ; 4 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv268.i ; 2 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !13 ; 3 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv268.i
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !11
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv286.i ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !13 ; 3 uses
  %i.kr = tail call double @llvm.fmuladd.f64(double %i.km, double %i.gs, double %i.kq)
  %i.ks = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.kr, double %i.km)
  store double %i.ks, ptr %i.kl, align 8, !tbaa !13
  %i.kt = fneg double %i.kq
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.gs, double %i.km)
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.ku, double %i.kq)
  store double %i.kv, ptr %i.kp, align 8, !tbaa !13
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next269.i ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !13 ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next269.i
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !11
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv286.i ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !13 ; 3 uses
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.gs, double %i.lb)
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.lc, double %i.kx)
  store double %i.ld, ptr %i.kw, align 8, !tbaa !13
  %i.le = fneg double %i.lb
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.le, double %i.gs, double %i.kx)
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.lf, double %i.lb)
  store double %i.lg, ptr %i.la, align 8, !tbaa !13
  %indvars.iv.next269.i.1 = add nuw nsw i64 %indvars.iv268.i, 2 ; 2 uses
  %exitcond272.not.i.1 = icmp eq i64 %indvars.iv.next269.i.1, %indvars.iv286.i
  br i1 %exitcond272.not.i.1, label %.preheader194.i, label %.lr.ph218.i.new, !llvm.loop !46

.preheader.i:                                     ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39, %middle.block54, %.preheader194.i..preheader.i_crit_edge
  %.pre-phi = phi double [ %.pre8, %.preheader194.i..preheader.i_crit_edge ], [ %i.jd, %middle.block54 ], [ %i.jd, %scalar.ph39 ], [ %i.jd, %scalar.ph39.prol.loopexit ] ; 3 uses
  br i1 %i.ax, label %.epil.preheader81, label %.preheader.i.new

scalar.ph39:                                      ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39
  %indvars.iv277.i = phi i64 [ %indvars.iv.next278.i.3, %scalar.ph39 ], [ %indvars.iv277.i.unr, %scalar.ph39.prol.loopexit ] ; 6 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv277.i ; 2 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !13 ; 3 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv277.i ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !13 ; 3 uses
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.li, double %i.gs, double %i.lk)
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.ll, double %i.li)
  store double %i.lm, ptr %i.lh, align 8, !tbaa !13
  %i.ln = fneg double %i.lk
  %i.lo = tail call double @llvm.fmuladd.f64(double %i.ln, double %i.gs, double %i.li)
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.lo, double %i.lk)
  store double %i.lp, ptr %i.lj, align 8, !tbaa !13
  %indvars.iv.next278.i = add nuw nsw i64 %indvars.iv277.i, 1 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next278.i ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !13 ; 3 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next278.i ; 2 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !13 ; 3 uses
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.lr, double %i.gs, double %i.lt)
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.lu, double %i.lr)
  store double %i.lv, ptr %i.lq, align 8, !tbaa !13
  %i.lw = fneg double %i.lt
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.gs, double %i.lr)
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.lx, double %i.lt)
  store double %i.ly, ptr %i.ls, align 8, !tbaa !13
  %indvars.iv.next278.i.1 = add nuw nsw i64 %indvars.iv277.i, 2 ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next278.i.1 ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !13 ; 3 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next278.i.1 ; 2 uses
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !13 ; 3 uses
  %i.md = tail call double @llvm.fmuladd.f64(double %i.ma, double %i.gs, double %i.mc)
  %i.me = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.md, double %i.ma)
  store double %i.me, ptr %i.lz, align 8, !tbaa !13
  %i.mf = fneg double %i.mc
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.mf, double %i.gs, double %i.ma)
  %i.mh = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.mg, double %i.mc)
  store double %i.mh, ptr %i.mb, align 8, !tbaa !13
  %indvars.iv.next278.i.2 = add nuw nsw i64 %indvars.iv277.i, 3 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next278.i.2 ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !13 ; 3 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.next278.i.2 ; 2 uses
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !13 ; 3 uses
  %i.mm = tail call double @llvm.fmuladd.f64(double %i.mj, double %i.gs, double %i.ml)
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.mm, double %i.mj)
  store double %i.mn, ptr %i.mi, align 8, !tbaa !13
  %i.mo = fneg double %i.ml
  %i.mp = tail call double @llvm.fmuladd.f64(double %i.mo, double %i.gs, double %i.mj)
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.mp, double %i.ml)
  store double %i.mq, ptr %i.mk, align 8, !tbaa !13
  %indvars.iv.next278.i.3 = add nuw nsw i64 %indvars.iv277.i, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next278.i.3 to i32
  %exitcond.3 = icmp eq i32 %1, %lftr.wideiv.3
  br i1 %exitcond.3, label %.preheader.i, label %scalar.ph39, !llvm.loop !47

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv281.i = phi i64 [ %indvars.iv.next282.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 3 uses
  %niter87 = phi i64 [ %niter87.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !11 ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv292.i ; 2 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !13 ; 3 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv286.i ; 2 uses
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !13 ; 3 uses
  %i.mx = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.gs, double %i.mw)
  %i.my = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.mx, double %i.mu)
  store double %i.my, ptr %i.mt, align 8, !tbaa !13
  %i.mz = fneg double %i.mw
  %i.na = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.gs, double %i.mu)
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.na, double %i.mw)
  store double %i.nb, ptr %i.mv, align 8, !tbaa !13
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !11 ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %indvars.iv292.i ; 2 uses
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !13 ; 3 uses
end_hunk_0
