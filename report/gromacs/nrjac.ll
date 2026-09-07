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
  br i1 %i.d, label %.preheader201.us.preheader.i, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit

.preheader201.us.preheader.i:                     ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64                  ; 17 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 9 uses
  %6 = add nsw i64 %i.e, -1                       ; 2 uses
  %xtraiter = and i64 %i.e, 7                     ; 3 uses
  %i.g = icmp ult i32 %1, 8
  br i1 %i.g, label %.preheader201.us.i.epil.preheader, label %.preheader201.us.preheader.i.new

.preheader201.us.preheader.i.new:                 ; preds = %.preheader201.us.preheader.i
  %unroll_iter = and i64 %i.e, 2147483640
  br label %.preheader201.us.i

.preheader201.us.i:                               ; preds = %.preheader201.us.i, %.preheader201.us.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader201.us.preheader.i.new ], [ %indvars.iv.next.i.7, %.preheader201.us.i ] ; 10 uses
  %niter = phi i64 [ 0, %.preheader201.us.preheader.i.new ], [ %niter.next.7, %.preheader201.us.i ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !13
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i
  store double 1.000000e+00, ptr %i.m, align 8, !tbaa !13
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.1
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.1
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !13
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.2
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i.2
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !13
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.3
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.3
  store double 1.000000e+00, ptr %i.v, align 8, !tbaa !13
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.4
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i.4
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !13
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.5
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.5
  store double 1.000000e+00, ptr %i.ab, align 8, !tbaa !13
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.6
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.6
  store double 1.000000e+00, ptr %i.ae, align 8, !tbaa !13
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
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.f, i1 false), !tbaa !13
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.epil
  store double 1.000000e+00, ptr %i.ah, align 8, !tbaa !13
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.preheader, label %.preheader201.us.i.epil, !llvm.loop !27

.lr.ph.i.preheader:                               ; preds = %.preheader201.us.i.epil, %.lr.ph.i.preheader.unr-lcssa
  %xtraiter59 = and i64 %i.e, 3                   ; 3 uses
  %i.ai = icmp ult i32 %1, 4
  br i1 %i.ai, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

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
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv244.i.epil
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv244.i.epil
  %i.am = load double, ptr %i.al, align 8, !tbaa !13 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv244.i.epil
  store double %i.am, ptr %i.an, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv244.i.epil
  store double %i.am, ptr %i.ao, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv244.i.epil
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !13
  %indvars.iv.next245.i.epil = add nuw nsw i64 %indvars.iv244.i.epil, 1
  %epil.iter60.next = add i64 %epil.iter60, 1     ; 2 uses
  %epil.iter60.cmp.not = icmp eq i64 %epil.iter60.next, %xtraiter59
  br i1 %epil.iter60.cmp.not, label %.preheader199.i, label %.lr.ph.i.epil, !llvm.loop !28

.preheader199.i:                                  ; preds = %.lr.ph.i.epil, %.preheader199.i.unr-lcssa
  %i.aq = add nsw i32 %1, -1
  %.not16 = icmp eq i32 %1, 1
  %i.ar = mul nuw nsw i32 %1, %1
  %i.as = uitofp nneg i32 %i.ar to double
  %wide.trip.count259.i = zext nneg i32 %i.aq to i64 ; 2 uses
  br i1 %.not16, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit, label %.preheader198.i.us.preheader

.preheader198.i.us.preheader:                     ; preds = %.preheader199.i
  %i.at = shl nuw nsw i64 %i.e, 3                 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.at ; 2 uses
  %scevgep18 = getelementptr i8, ptr %2, i64 %i.at ; 2 uses
  %scevgep19 = getelementptr i8, ptr %i.c, i64 %i.at ; 2 uses
  %i.au = add nsw i32 %1, -3                      ; 2 uses
  %i.av = add nsw i64 %i.e, -2
  %xtraiter82 = and i64 %i.e, 1
  %7 = icmp eq i64 %6, 0
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
  br label %.preheader198.i.us

.preheader198.i.us:                               ; preds = %.preheader198.i.us.preheader, %._crit_edge238.i.loopexit.us
  %.0167240.i.us = phi i32 [ %i.nw, %._crit_edge238.i.loopexit.us ], [ 1, %.preheader198.i.us.preheader ] ; 3 uses
  %.0168239.i.us = phi i32 [ %.3171.i.us, %._crit_edge238.i.loopexit.us ], [ 0, %.preheader198.i.us.preheader ] ; 2 uses
  br label %.lr.ph208.i.us

.lr.ph208.i.us:                                   ; preds = %.preheader198.i.us, %.loopexit196.i.us
  %indvars.iv256.i.us = phi i64 [ %indvars.iv.next257.i.us, %.loopexit196.i.us ], [ 0, %.preheader198.i.us ] ; 4 uses
  %indvars.iv249.i.us = phi i64 [ %indvars.iv.next250.i.us, %.loopexit196.i.us ], [ 1, %.preheader198.i.us ] ; 3 uses
  %.0172210.i.us = phi double [ %.lcssa, %.loopexit196.i.us ], [ 0.000000e+00, %.preheader198.i.us ] ; 2 uses
  %8 = sub i64 %6, %indvars.iv256.i.us
  %i.aw = sub i64 %i.av, %indvars.iv256.i.us
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv256.i.us
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 9 uses
  %xtraiter65 = and i64 %8, 7                     ; 2 uses
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph208.i.us, %.prol.preheader
  %indvars.iv251.i.us.prol = phi i64 [ %indvars.iv.next252.i.us.prol, %.prol.preheader ], [ %indvars.iv249.i.us, %.lr.ph208.i.us ] ; 2 uses
  %.1173207.i.us.prol = phi double [ %i.bc, %.prol.preheader ], [ %.0172210.i.us, %.lr.ph208.i.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph208.i.us ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv251.i.us.prol
  %i.ba = load double, ptr %i.az, align 8, !tbaa !13
  %i.bb = tail call noundef double @llvm.fabs.f64(double %i.ba)
  %i.bc = fadd double %.1173207.i.us.prol, %i.bb  ; 3 uses
  %indvars.iv.next252.i.us.prol = add nuw nsw i64 %indvars.iv251.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter65
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !29

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph208.i.us
  %.lcssa.unr = phi double [ poison, %.lr.ph208.i.us ], [ %i.bc, %.prol.preheader ]
  %indvars.iv251.i.us.unr = phi i64 [ %indvars.iv249.i.us, %.lr.ph208.i.us ], [ %indvars.iv.next252.i.us.prol, %.prol.preheader ]
  %.1173207.i.us.unr = phi double [ %.0172210.i.us, %.lr.ph208.i.us ], [ %i.bc, %.prol.preheader ]
  %i.bd = icmp ult i64 %i.aw, 7
  br i1 %i.bd, label %.loopexit196.i.us, label %.lr.ph208.i.us.new

.lr.ph208.i.us.new:                               ; preds = %.prol.loopexit, %.lr.ph208.i.us.new
  %indvars.iv251.i.us = phi i64 [ %indvars.iv.next252.i.us.7, %.lr.ph208.i.us.new ], [ %indvars.iv251.i.us.unr, %.prol.loopexit ] ; 9 uses
  %.1173207.i.us = phi double [ %i.cq, %.lr.ph208.i.us.new ], [ %.1173207.i.us.unr, %.prol.loopexit ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv251.i.us
  %i.bf = load double, ptr %i.be, align 8, !tbaa !13
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.bf)
  %i.bh = fadd double %.1173207.i.us, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv251.i.us
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !13
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk)
  %i.bm = fadd double %i.bh, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv251.i.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13
  %i.bq = tail call noundef double @llvm.fabs.f64(double %i.bp)
  %i.br = fadd double %i.bm, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv251.i.us
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.bw = fadd double %i.br, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv251.i.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load double, ptr %i.by, align 8, !tbaa !13
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bz)
  %i.cb = fadd double %i.bw, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv251.i.us
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13
  %i.cf = tail call noundef double @llvm.fabs.f64(double %i.ce)
  %i.cg = fadd double %i.cb, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv251.i.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !13
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj)
  %i.cl = fadd double %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv251.i.us
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %i.co = load double, ptr %i.cn, align 8, !tbaa !13
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.co)
  %i.cq = fadd double %i.cl, %i.cp                ; 2 uses
  %indvars.iv.next252.i.us.7 = add nuw nsw i64 %indvars.iv251.i.us, 8 ; 2 uses
  %exitcond255.not.i.us.7 = icmp eq i64 %indvars.iv.next252.i.us.7, %i.e
  br i1 %exitcond255.not.i.us.7, label %.loopexit196.i.us, label %.lr.ph208.i.us.new, !llvm.loop !30

.loopexit196.i.us:                                ; preds = %.lr.ph208.i.us.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.cq, %.lr.ph208.i.us.new ] ; 3 uses
  %indvars.iv.next257.i.us = add nuw nsw i64 %indvars.iv256.i.us, 1 ; 2 uses
  %indvars.iv.next250.i.us = add nuw nsw i64 %indvars.iv249.i.us, 1
  %exitcond260.not.i.us = icmp eq i64 %indvars.iv.next257.i.us, %wide.trip.count259.i
  br i1 %exitcond260.not.i.us, label %._crit_edge.i.us, label %.lr.ph208.i.us, !llvm.loop !31

._crit_edge.i.us:                                 ; preds = %.loopexit196.i.us
  %i.cr = fcmp oeq double %.lcssa, 0.000000e+00
  br i1 %i.cr, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.cs = icmp samesign ult i32 %.0167240.i.us, 4
  %i.ct = fmul double %.lcssa, 2.000000e-01
  %i.cu = fdiv double %i.ct, %i.as
  %.0175.i.us = select i1 %i.cs, double %i.cu, double 0.000000e+00
  %i.cv = icmp samesign ugt i32 %.0167240.i.us, 4
  br label %.lr.ph229.i.us

.lr.ph229.i.us:                                   ; preds = %.loopexit.i.us, %bb.b
  %indvars.iv292.i.us = phi i64 [ 0, %bb.b ], [ %indvars.iv.next293.i.us, %.loopexit.i.us ] ; 18 uses
  %indvars.iv273.i.us = phi i64 [ 2, %bb.b ], [ %indvars.iv.next274.i.us, %.loopexit.i.us ] ; 2 uses
  %indvars.iv266.i.us = phi i64 [ 1, %bb.b ], [ %indvars.iv.next267.i.us, %.loopexit.i.us ] ; 6 uses
  %.1169232.i.us = phi i32 [ %.0168239.i.us, %bb.b ], [ %.3171.i.us, %.loopexit.i.us ]
  %i.cw = shl i64 %indvars.iv292.i.us, 3          ; 2 uses
  %i.cx = add i64 %i.cw, 16
  %i.cy = add i64 %i.cw, 24
  %indvars.iv.next293.i.us = add nuw nsw i64 %indvars.iv292.i.us, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv292.i.us
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !11 ; 12 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv292.i.us ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv292.i.us ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv292.i.us, 0
  %xtraiter67 = and i64 %indvars.iv292.i.us, 1
  %i.dd = icmp eq i64 %indvars.iv292.i.us, 1
  %unroll_iter71 = and i64 %indvars.iv292.i.us, 9223372036854775806
  %lcmp.mod69.not = icmp eq i64 %xtraiter67, 0
  %lcmp.mod70 = trunc i64 %indvars.iv292.i.us to i1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv266.i.us ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv266.i.us
  %indvars.iv.next269.i.us.prol = add nuw nsw i64 %indvars.iv266.i.us, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %.lr.ph229.i.us
  %indvar = phi i64 [ %indvar.next, %bb.l ], [ 0, %.lr.ph229.i.us ] ; 6 uses
  %indvars.iv286.i.us = phi i64 [ %indvars.iv.next287.i.us, %bb.l ], [ %indvars.iv266.i.us, %.lr.ph229.i.us ] ; 18 uses
  %indvars.iv275.i.us = phi i64 [ %indvars.iv.next276.i.us, %bb.l ], [ %indvars.iv273.i.us, %.lr.ph229.i.us ] ; 5 uses
  %.2170227.i.us = phi i32 [ %.3171.i.us, %bb.l ], [ %.1169232.i.us, %.lr.ph229.i.us ] ; 3 uses
  %i.dg = add i64 %indvars.iv292.i.us, %indvar
  %i.dh = trunc i64 %i.dg to i32
  %i.di = sub i32 %i.au, %i.dh                    ; 2 uses
  %i.dj = shl i64 %indvar, 3                      ; 2 uses
  %i.dk = add i64 %i.cx, %i.dj                    ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.da, i64 %i.dk
  %i.dl = add i64 %i.cy, %i.dj                    ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.da, i64 %i.dl
  %i.dm = add i64 %indvars.iv292.i.us, %indvar
  %i.dn = trunc i64 %i.dm to i32
  %i.do = sub i32 %i.au, %i.dn
  %i.dp = zext i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3                ; 2 uses
  %scevgep33 = getelementptr i8, ptr %scevgep32, i64 %i.dq
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv286.i.us ; 3 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !13 ; 4 uses
  %i.dt = tail call noundef double @llvm.fabs.f64(double %i.ds) ; 2 uses
  %i.du = fmul double %i.dt, 1.000000e+02         ; 3 uses
  br i1 %i.cv, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.dv = load double, ptr %i.db, align 8, !tbaa !13
  %i.dw = tail call noundef double @llvm.fabs.f64(double %i.dv) ; 2 uses
  %i.dx = fadd double %i.du, %i.dw
  %i.dy = fcmp oeq double %i.dx, %i.dw
  br i1 %i.dy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i.us
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !13
  %i.eb = tail call noundef double @llvm.fabs.f64(double %i.ea) ; 2 uses
  %i.ec = fadd double %i.du, %i.eb
  %i.ed = fcmp oeq double %i.ec, %i.eb
  br i1 %i.ed, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ee = fcmp ogt double %i.dt, %.0175.i.us
  br i1 %i.ee, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i.us ; 3 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !13
  %i.eh = load double, ptr %i.db, align 8, !tbaa !13
  %i.ei = fsub double %i.eg, %i.eh                ; 3 uses
  %i.ej = tail call noundef double @llvm.fabs.f64(double %i.ei) ; 2 uses
  %i.ek = fadd double %i.du, %i.ej
  %i.el = fcmp oeq double %i.ek, %i.ej
  br i1 %i.el, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.em = fmul double %i.ei, 5.000000e-01
  %i.en = fdiv double %i.em, %i.ds                ; 4 uses
  %i.eo = tail call noundef double @llvm.fabs.f64(double %i.en)
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.en, double %i.en, double 1.000000e+00)
  %sqrt.i.us = tail call double @llvm.sqrt.f64(double %i.ep)
  %i.eq = fadd double %i.eo, %sqrt.i.us
  %i.er = fdiv double 1.000000e+00, %i.eq         ; 2 uses
  %i.es = fcmp olt double %i.en, 0.000000e+00
  %i.et = fneg double %i.er
  %spec.select.i.us = select i1 %i.es, double %i.et, double %i.er
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.eu = fdiv double %i.ds, %i.ei
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0174.i.us = phi double [ %i.eu, %bb.i ], [ %spec.select.i.us, %bb.h ] ; 4 uses
  %i.ev = tail call double @llvm.fmuladd.f64(double %.0174.i.us, double %.0174.i.us, double 1.000000e+00)
  %sqrt193.i.us = tail call double @llvm.sqrt.f64(double %i.ev)
  %i.ew = fdiv double 1.000000e+00, %sqrt193.i.us ; 2 uses
  %i.ex = fmul double %.0174.i.us, %i.ew          ; 20 uses
  %i.ey = fadd double %i.ew, 1.000000e+00
  %i.ez = fdiv double %i.ex, %i.ey                ; 29 uses
  %i.fa = fmul double %i.ds, %.0174.i.us          ; 4 uses
  %i.fb = load double, ptr %i.dc, align 8, !tbaa !13
  %i.fc = fsub double %i.fb, %i.fa
  store double %i.fc, ptr %i.dc, align 8, !tbaa !13
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv286.i.us ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !13
  %i.ff = fadd double %i.fa, %i.fe
  store double %i.ff, ptr %i.fd, align 8, !tbaa !13
  %i.fg = load double, ptr %i.db, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@_Z6jacobiPPdiS_S0_Pi:bb.a
  store double %i.hd, ptr %i.gx, align 8, !tbaa !13
  br label %.prol.loopexit74

.prol.loopexit74:                                 ; preds = %.prol.loopexit74.unr-lcssa, %.lr.ph218.i.us
  %indvars.iv268.i.us.unr = phi i64 [ %indvars.iv266.i.us, %.lr.ph218.i.us ], [ %indvars.iv.next269.i.us.prol, %.prol.loopexit74.unr-lcssa ]
  %i.he = icmp eq i64 %indvar, 1
  br i1 %i.he, label %.preheader194.i.us, label %.lr.ph218.i.us.new

.lr.ph218.i.us.new:                               ; preds = %.prol.loopexit74, %.lr.ph218.i.us.new
  %indvars.iv268.i.us = phi i64 [ %indvars.iv.next269.i.us.1, %.lr.ph218.i.us.new ], [ %indvars.iv268.i.us.unr, %.prol.loopexit74 ] ; 4 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv268.i.us ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !13 ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv268.i.us
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !11
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv286.i.us ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !13 ; 3 uses
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.ez, double %i.hk)
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.hl, double %i.hg)
  store double %i.hm, ptr %i.hf, align 8, !tbaa !13
  %i.hn = fneg double %i.hk
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hn, double %i.ez, double %i.hg)
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ho, double %i.hk)
  store double %i.hp, ptr %i.hj, align 8, !tbaa !13
  %indvars.iv.next269.i.us = add nuw nsw i64 %indvars.iv268.i.us, 1 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next269.i.us ; 2 uses
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !13 ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next269.i.us
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !11
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv286.i.us ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !13 ; 3 uses
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hr, double %i.ez, double %i.hv)
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.hw, double %i.hr)
  store double %i.hx, ptr %i.hq, align 8, !tbaa !13
  %i.hy = fneg double %i.hv
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hy, double %i.ez, double %i.hr)
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.hz, double %i.hv)
  store double %i.ia, ptr %i.hu, align 8, !tbaa !13
  %indvars.iv.next269.i.us.1 = add nuw nsw i64 %indvars.iv268.i.us, 2 ; 2 uses
  %exitcond272.not.i.us.1 = icmp eq i64 %indvars.iv.next269.i.us.1, %indvars.iv286.i.us
  br i1 %exitcond272.not.i.us.1, label %.preheader194.i.us, label %.lr.ph218.i.us.new, !llvm.loop !33

.preheader194.i.us:                               ; preds = %.prol.loopexit74, %.lr.ph218.i.us.new, %.preheader195.i.us
  %i.ib = trunc i64 %indvars.iv286.i.us to i32
  %i.ic = add i32 %i.ib, 1
  %i.id = icmp slt i32 %i.ic, %1
  br i1 %i.id, label %.lr.ph221.i.us, label %.preheader194.i.us..preheader.i.us_crit_edge

.preheader194.i.us..preheader.i.us_crit_edge:     ; preds = %.preheader194.i.us
  %.pre8 = fneg double %i.ex
  br label %.preheader.i.us

.lr.ph221.i.us:                                   ; preds = %.preheader194.i.us
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv286.i.us
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !11 ; 8 uses
  %i.ig = fneg double %i.ex                       ; 9 uses
  %i.ih = zext i32 %i.di to i64
  %i.ii = add nuw nsw i64 %i.ih, 1                ; 2 uses
  %min.iters.check40 = icmp ult i32 %i.di, 7
  br i1 %min.iters.check40, label %scalar.ph39.preheader, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph221.i.us
  %scevgep34 = getelementptr nuw i8, ptr %i.if, i64 %i.dk
  %i.ij = getelementptr i8, ptr %i.if, i64 %i.dl
  %scevgep35 = getelementptr i8, ptr %i.ij, i64 %i.dq
  %bound036 = icmp ult ptr %scevgep31, %scevgep35
  %bound137 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict38 = and i1 %bound036, %bound137
  br i1 %found.conflict38, label %scalar.ph39.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck30
  %n.vec42 = and i64 %i.ii, 8589934584            ; 3 uses
  %i.ik = add nuw i64 %indvars.iv275.i.us, %n.vec42
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ig, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <4 x double> poison, double %i.ez, i64 0
  %broadcast.splat44 = shufflevector <4 x double> %broadcast.splatinsert43, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert45 = insertelement <4 x double> poison, double %i.ex, i64 0
  %broadcast.splat46 = shufflevector <4 x double> %broadcast.splatinsert45, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph41
  %index48 = phi i64 [ 0, %vector.ph41 ], [ %index.next53, %vector.body47 ] ; 2 uses
  %i.il = add nuw i64 %indvars.iv275.i.us, %index48 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.il ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32 ; 2 uses
  %wide.load49 = load <4 x double>, ptr %i.im, align 8, !tbaa !13, !alias.scope !52, !noalias !53 ; 3 uses
  %wide.load50 = load <4 x double>, ptr %i.in, align 8, !tbaa !13, !alias.scope !52, !noalias !53 ; 3 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.il ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 2 uses
  %wide.load51 = load <4 x double>, ptr %i.io, align 8, !tbaa !13, !alias.scope !53 ; 3 uses
  %wide.load52 = load <4 x double>, ptr %i.ip, align 8, !tbaa !13, !alias.scope !53 ; 3 uses
  %i.iq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load49, <4 x double> %broadcast.splat44, <4 x double> %wide.load51)
  %i.ir = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load50, <4 x double> %broadcast.splat44, <4 x double> %wide.load52)
  %i.is = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.iq, <4 x double> %wide.load49)
  %i.it = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.ir, <4 x double> %wide.load50)
  store <4 x double> %i.is, ptr %i.im, align 8, !tbaa !13, !alias.scope !52, !noalias !53
  store <4 x double> %i.it, ptr %i.in, align 8, !tbaa !13, !alias.scope !52, !noalias !53
  %i.iu = fneg <4 x double> %wide.load51
  %i.iv = fneg <4 x double> %wide.load52
  %i.iw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iu, <4 x double> %broadcast.splat44, <4 x double> %wide.load49)
  %i.ix = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %broadcast.splat44, <4 x double> %wide.load50)
  %i.iy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.iw, <4 x double> %wide.load51)
  %i.iz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.ix, <4 x double> %wide.load52)
  store <4 x double> %i.iy, ptr %i.io, align 8, !tbaa !13, !alias.scope !53
  store <4 x double> %i.iz, ptr %i.ip, align 8, !tbaa !13, !alias.scope !53
  %index.next53 = add nuw i64 %index48, 8         ; 2 uses
  %i.ja = icmp eq i64 %index.next53, %n.vec42
  br i1 %i.ja, label %middle.block54, label %vector.body47, !llvm.loop !37

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %i.ii, %n.vec42
  br i1 %cmp.n55, label %.preheader.i.us, label %scalar.ph39.preheader

scalar.ph39.preheader:                            ; preds = %vector.memcheck30, %.lr.ph221.i.us, %middle.block54
  %indvars.iv277.i.us.ph = phi i64 [ %indvars.iv275.i.us, %vector.memcheck30 ], [ %indvars.iv275.i.us, %.lr.ph221.i.us ], [ %i.ik, %middle.block54 ] ; 3 uses
  %i.jb = trunc i64 %indvars.iv277.i.us.ph to i32 ; 2 uses
  %i.jc = sub i32 %1, %i.jb
  %xtraiter78 = and i32 %i.jc, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i32 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol

scalar.ph39.prol:                                 ; preds = %scalar.ph39.preheader, %scalar.ph39.prol
  %indvars.iv277.i.us.prol = phi i64 [ %indvars.iv.next278.i.us.prol, %scalar.ph39.prol ], [ %indvars.iv277.i.us.ph, %scalar.ph39.preheader ] ; 3 uses
  %prol.iter80 = phi i32 [ %prol.iter80.next, %scalar.ph39.prol ], [ 0, %scalar.ph39.preheader ]
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv277.i.us.prol ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !13 ; 3 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv277.i.us.prol ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !13 ; 3 uses
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.je, double %i.ez, double %i.jg)
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.jh, double %i.je)
  store double %i.ji, ptr %i.jd, align 8, !tbaa !13
  %i.jj = fneg double %i.jg
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.ez, double %i.je)
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.jk, double %i.jg)
  store double %i.jl, ptr %i.jf, align 8, !tbaa !13
  %indvars.iv.next278.i.us.prol = add nuw nsw i64 %indvars.iv277.i.us.prol, 1 ; 2 uses
  %prol.iter80.next = add i32 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i32 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol, !llvm.loop !38

scalar.ph39.prol.loopexit:                        ; preds = %scalar.ph39.prol, %scalar.ph39.preheader
  %indvars.iv277.i.us.unr = phi i64 [ %indvars.iv277.i.us.ph, %scalar.ph39.preheader ], [ %indvars.iv.next278.i.us.prol, %scalar.ph39.prol ]
  %i.jm = sub i32 %i.jb, %1
  %i.jn = icmp ugt i32 %i.jm, -4
  br i1 %i.jn, label %.preheader.i.us, label %scalar.ph39

scalar.ph39:                                      ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39
  %indvars.iv277.i.us = phi i64 [ %indvars.iv.next278.i.us.3, %scalar.ph39 ], [ %indvars.iv277.i.us.unr, %scalar.ph39.prol.loopexit ] ; 6 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv277.i.us ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !13 ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv277.i.us ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !13 ; 3 uses
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.ez, double %i.jr)
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.js, double %i.jp)
  store double %i.jt, ptr %i.jo, align 8, !tbaa !13
  %i.ju = fneg double %i.jr
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.ez, double %i.jp)
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.jv, double %i.jr)
  store double %i.jw, ptr %i.jq, align 8, !tbaa !13
  %indvars.iv.next278.i.us = add nuw nsw i64 %indvars.iv277.i.us, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next278.i.us ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !13 ; 3 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next278.i.us ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !13 ; 3 uses
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.jy, double %i.ez, double %i.ka)
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.kb, double %i.jy)
  store double %i.kc, ptr %i.jx, align 8, !tbaa !13
  %i.kd = fneg double %i.ka
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kd, double %i.ez, double %i.jy)
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ke, double %i.ka)
  store double %i.kf, ptr %i.jz, align 8, !tbaa !13
  %indvars.iv.next278.i.us.1 = add nuw nsw i64 %indvars.iv277.i.us, 2 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next278.i.us.1 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !13 ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next278.i.us.1 ; 2 uses
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !13 ; 3 uses
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.kh, double %i.ez, double %i.kj)
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.kk, double %i.kh)
  store double %i.kl, ptr %i.kg, align 8, !tbaa !13
  %i.km = fneg double %i.kj
  %i.kn = tail call double @llvm.fmuladd.f64(double %i.km, double %i.ez, double %i.kh)
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.kn, double %i.kj)
  store double %i.ko, ptr %i.ki, align 8, !tbaa !13
  %indvars.iv.next278.i.us.2 = add nuw nsw i64 %indvars.iv277.i.us, 3 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next278.i.us.2 ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !13 ; 3 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next278.i.us.2 ; 2 uses
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !13 ; 3 uses
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.kq, double %i.ez, double %i.ks)
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.kt, double %i.kq)
  store double %i.ku, ptr %i.kp, align 8, !tbaa !13
  %i.kv = fneg double %i.ks
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.kv, double %i.ez, double %i.kq)
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.kw, double %i.ks)
  store double %i.kx, ptr %i.kr, align 8, !tbaa !13
  %indvars.iv.next278.i.us.3 = add nuw nsw i64 %indvars.iv277.i.us, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next278.i.us.3 to i32
  %exitcond.3 = icmp eq i32 %1, %lftr.wideiv.3
  br i1 %exitcond.3, label %.preheader.i.us, label %scalar.ph39, !llvm.loop !39

.preheader.i.us:                                  ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39, %middle.block54, %.preheader194.i.us..preheader.i.us_crit_edge
  %.pre-phi = phi double [ %.pre8, %.preheader194.i.us..preheader.i.us_crit_edge ], [ %i.ig, %middle.block54 ], [ %i.ig, %scalar.ph39 ], [ %i.ig, %scalar.ph39.prol.loopexit ] ; 3 uses
  br i1 %7, label %.epil.preheader81, label %.preheader.i.us.new

.preheader.i.us.new:                              ; preds = %.preheader.i.us, %.preheader.i.us.new
  %indvars.iv281.i.us = phi i64 [ %indvars.iv.next282.i.us.1, %.preheader.i.us.new ], [ 0, %.preheader.i.us ] ; 3 uses
  %niter87 = phi i64 [ %niter87.next.1, %.preheader.i.us.new ], [ 0, %.preheader.i.us ]
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i.us
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !11 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv292.i.us ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !13 ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv286.i.us ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !13 ; 3 uses
  %i.le = tail call double @llvm.fmuladd.f64(double %i.lb, double %i.ez, double %i.ld)
  %i.lf = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.le, double %i.lb)
  store double %i.lf, ptr %i.la, align 8, !tbaa !13
  %i.lg = fneg double %i.ld
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.lg, double %i.ez, double %i.lb)
  %i.li = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.lh, double %i.ld)
  store double %i.li, ptr %i.lc, align 8, !tbaa !13
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i.us
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !11 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv292.i.us ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !13 ; 3 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv286.i.us ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !13 ; 3 uses
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.ln, double %i.ez, double %i.lp)
  %i.lr = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.lq, double %i.ln)
  store double %i.lr, ptr %i.lm, align 8, !tbaa !13
  %i.ls = fneg double %i.lp
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.ls, double %i.ez, double %i.ln)
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.lt, double %i.lp)
  store double %i.lu, ptr %i.lo, align 8, !tbaa !13
  %indvars.iv.next282.i.us.1 = add nuw nsw i64 %indvars.iv281.i.us, 2 ; 2 uses
  %niter87.next.1 = add i64 %niter87, 2           ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %._crit_edge224.i.loopexit.us.unr-lcssa, label %.preheader.i.us.new, !llvm.loop !40

bb.k:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %i.dr, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge224.i.loopexit.us, %bb.k, %bb.f
  %.3171.i.us = phi i32 [ %.2170227.i.us, %bb.k ], [ %i.nv, %._crit_edge224.i.loopexit.us ], [ %.2170227.i.us, %bb.f ] ; 3 uses
  %indvars.iv.next287.i.us = add nuw nsw i64 %indvars.iv286.i.us, 1 ; 2 uses
  %indvars.iv.next276.i.us = add nuw nsw i64 %indvars.iv275.i.us, 1
  %exitcond291.not.i.us = icmp eq i64 %indvars.iv.next287.i.us, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond291.not.i.us, label %.loopexit.i.us, label %bb.c, !llvm.loop !41

.loopexit.i.us:                                   ; preds = %bb.l
  %indvars.iv.next267.i.us = add nuw nsw i64 %indvars.iv266.i.us, 1
  %indvars.iv.next274.i.us = add nuw nsw i64 %indvars.iv273.i.us, 1
  %exitcond296.not.i.us = icmp eq i64 %indvars.iv.next293.i.us, %wide.trip.count259.i
  br i1 %exitcond296.not.i.us, label %.preheader197.i.us, label %.lr.ph229.i.us, !llvm.loop !42

.preheader197.i.us:                               ; preds = %.loopexit.i.us
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx26
  br i1 %brmerge, label %.lr.ph237.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader197.i.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader197.i.us ] ; 4 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.lv, align 8, !tbaa !13, !alias.scope !54
  %wide.load27 = load <4 x double>, ptr %i.lw, align 8, !tbaa !13, !alias.scope !54
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32 ; 2 uses
  %wide.load28 = load <4 x double>, ptr %i.lx, align 8, !tbaa !13, !alias.scope !55, !noalias !56
  %wide.load29 = load <4 x double>, ptr %i.ly, align 8, !tbaa !13, !alias.scope !55, !noalias !56
  %i.lz = fadd <4 x double> %wide.load, %wide.load28 ; 2 uses
  %i.ma = fadd <4 x double> %wide.load27, %wide.load29 ; 2 uses
  store <4 x double> %i.lz, ptr %i.lx, align 8, !tbaa !13, !alias.scope !55, !noalias !56
  store <4 x double> %i.ma, ptr %i.ly, align 8, !tbaa !13, !alias.scope !55, !noalias !56
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  store <4 x double> %i.lz, ptr %i.mb, align 8, !tbaa !13, !alias.scope !57, !noalias !54
  store <4 x double> %i.ma, ptr %i.mc, align 8, !tbaa !13, !alias.scope !57, !noalias !54
  store <4 x double> zeroinitializer, ptr %i.lv, align 8, !tbaa !13, !alias.scope !54
  store <4 x double> zeroinitializer, ptr %i.lw, align 8, !tbaa !13, !alias.scope !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge238.i.loopexit.us, label %.lr.ph237.i.us.preheader

.lr.ph237.i.us.preheader:                         ; preds = %.preheader197.i.us, %middle.block
  %indvars.iv297.i.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader197.i.us ] ; 3 uses
  br i1 %lcmp.mod89.not, label %.lr.ph237.i.us.prol.loopexit, label %.lr.ph237.i.us.prol

.lr.ph237.i.us.prol:                              ; preds = %.lr.ph237.i.us.preheader, %.lr.ph237.i.us.prol
  %indvars.iv297.i.us.prol = phi i64 [ %indvars.iv.next298.i.us.prol, %.lr.ph237.i.us.prol ], [ %indvars.iv297.i.us.ph, %.lr.ph237.i.us.preheader ] ; 4 uses
  %prol.iter90 = phi i64 [ %prol.iter90.next, %.lr.ph237.i.us.prol ], [ 0, %.lr.ph237.i.us.preheader ]
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv297.i.us.prol ; 2 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !13
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv297.i.us.prol ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !13
  %i.mi = fadd double %i.mf, %i.mh                ; 2 uses
  store double %i.mi, ptr %i.mg, align 8, !tbaa !13
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv297.i.us.prol
  store double %i.mi, ptr %i.mj, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.me, align 8, !tbaa !13
  %indvars.iv.next298.i.us.prol = add nuw nsw i64 %indvars.iv297.i.us.prol, 1 ; 2 uses
  %prol.iter90.next = add i64 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i64 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph237.i.us.prol.loopexit, label %.lr.ph237.i.us.prol, !llvm.loop !48

.lr.ph237.i.us.prol.loopexit:                     ; preds = %.lr.ph237.i.us.prol, %.lr.ph237.i.us.preheader
  %indvars.iv297.i.us.unr = phi i64 [ %indvars.iv297.i.us.ph, %.lr.ph237.i.us.preheader ], [ %indvars.iv.next298.i.us.prol, %.lr.ph237.i.us.prol ]
  %i.mk = sub nsw i64 %indvars.iv297.i.us.ph, %i.e
  %i.ml = icmp ugt i64 %i.mk, -4
  br i1 %i.ml, label %._crit_edge238.i.loopexit.us, label %.lr.ph237.i.us

.lr.ph237.i.us:                                   ; preds = %.lr.ph237.i.us.prol.loopexit, %.lr.ph237.i.us
  %indvars.iv297.i.us = phi i64 [ %indvars.iv.next298.i.us.3, %.lr.ph237.i.us ], [ %indvars.iv297.i.us.unr, %.lr.ph237.i.us.prol.loopexit ] ; 7 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv297.i.us ; 2 uses
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !13
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv297.i.us ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !13
  %i.mq = fadd double %i.mn, %i.mp                ; 2 uses
  store double %i.mq, ptr %i.mo, align 8, !tbaa !13
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv297.i.us
  store double %i.mq, ptr %i.mr, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.mm, align 8, !tbaa !13
  %indvars.iv.next298.i.us = add nuw nsw i64 %indvars.iv297.i.us, 1 ; 3 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next298.i.us ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !13
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next298.i.us ; 2 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !13
  %i.mw = fadd double %i.mt, %i.mv                ; 2 uses
  store double %i.mw, ptr %i.mu, align 8, !tbaa !13
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next298.i.us
  store double %i.mw, ptr %i.mx, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.ms, align 8, !tbaa !13
  %indvars.iv.next298.i.us.1 = add nuw nsw i64 %indvars.iv297.i.us, 2 ; 3 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next298.i.us.1 ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !13
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next298.i.us.1 ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !13
  %i.nc = fadd double %i.mz, %i.nb                ; 2 uses
  store double %i.nc, ptr %i.na, align 8, !tbaa !13
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next298.i.us.1
  store double %i.nc, ptr %i.nd, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.my, align 8, !tbaa !13
  %indvars.iv.next298.i.us.2 = add nuw nsw i64 %indvars.iv297.i.us, 3 ; 3 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next298.i.us.2 ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !13
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next298.i.us.2 ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !13
  %i.ni = fadd double %i.nf, %i.nh                ; 2 uses
  store double %i.ni, ptr %i.ng, align 8, !tbaa !13
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next298.i.us.2
  store double %i.ni, ptr %i.nj, align 8, !tbaa !13
  store double 0.000000e+00, ptr %i.ne, align 8, !tbaa !13
  %indvars.iv.next298.i.us.3 = add nuw nsw i64 %indvars.iv297.i.us, 4 ; 2 uses
  %exitcond301.not.i.us.3 = icmp eq i64 %indvars.iv.next298.i.us.3, %i.e
  br i1 %exitcond301.not.i.us.3, label %._crit_edge238.i.loopexit.us, label %.lr.ph237.i.us, !llvm.loop !49

._crit_edge224.i.loopexit.us.unr-lcssa:           ; preds = %.preheader.i.us.new
  br i1 %lcmp.mod84.not, label %._crit_edge224.i.loopexit.us, label %.epil.preheader81

.epil.preheader81:                                ; preds = %._crit_edge224.i.loopexit.us.unr-lcssa, %.preheader.i.us
  %indvars.iv281.i.us.epil.init = phi i64 [ 0, %.preheader.i.us ], [ %indvars.iv.next282.i.us.1, %._crit_edge224.i.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i.us.epil.init
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !11 ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv292.i.us ; 2 uses
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !13 ; 3 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv286.i.us ; 2 uses
  %i.np = load double, ptr %i.no, align 8, !tbaa !13 ; 3 uses
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.nn, double %i.ez, double %i.np)
  %i.nr = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.nq, double %i.nn)
  store double %i.nr, ptr %i.nm, align 8, !tbaa !13
  %i.ns = fneg double %i.np
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.ns, double %i.ez, double %i.nn)
  %i.nu = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.nt, double %i.np)
  store double %i.nu, ptr %i.no, align 8, !tbaa !13
  br label %._crit_edge224.i.loopexit.us

._crit_edge224.i.loopexit.us:                     ; preds = %._crit_edge224.i.loopexit.us.unr-lcssa, %.epil.preheader81
  %i.nv = add nsw i32 %.2170227.i.us, 1
  br label %bb.l

._crit_edge238.i.loopexit.us:                     ; preds = %.lr.ph237.i.us.prol.loopexit, %.lr.ph237.i.us, %middle.block
  %i.nw = add nuw nsw i32 %.0167240.i.us, 1       ; 2 uses
  %exitcond302.not.i.us = icmp eq i32 %i.nw, 51
  br i1 %exitcond302.not.i.us, label %.split.us, label %.preheader198.i.us, !llvm.loop !50

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv244.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next245.i.3, %.lr.ph.i ] ; 9 uses
  %niter64 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter64.next.3, %.lr.ph.i ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv244.i
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !11
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ny, i64 %indvars.iv244.i
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !13 ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv244.i
  store double %i.oa, ptr %i.ob, align 8, !tbaa !13
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv244.i
  store double %i.oa, ptr %i.oc, align 8, !tbaa !13
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv244.i
  store double 0.000000e+00, ptr %i.od, align 8, !tbaa !13
  %indvars.iv.next245.i = or disjoint i64 %indvars.iv244.i, 1 ; 5 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !11
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %indvars.iv.next245.i
  %i.oh = load double, ptr %i.og, align 8, !tbaa !13 ; 2 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i
  store double %i.oh, ptr %i.oi, align 8, !tbaa !13
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i
  store double %i.oh, ptr %i.oj, align 8, !tbaa !13
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i
  store double 0.000000e+00, ptr %i.ok, align 8, !tbaa !13
  %indvars.iv.next245.i.1 = or disjoint i64 %indvars.iv244.i, 2 ; 5 uses
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i.1
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !11
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %indvars.iv.next245.i.1
  %i.oo = load double, ptr %i.on, align 8, !tbaa !13 ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i.1
  store double %i.oo, ptr %i.op, align 8, !tbaa !13
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i.1
  store double %i.oo, ptr %i.oq, align 8, !tbaa !13
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i.1
  store double 0.000000e+00, ptr %i.or, align 8, !tbaa !13
  %indvars.iv.next245.i.2 = or disjoint i64 %indvars.iv244.i, 3 ; 5 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next245.i.2
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !11
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.next245.i.2
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !13 ; 2 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next245.i.2
  store double %i.ov, ptr %i.ow, align 8, !tbaa !13
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next245.i.2
  store double %i.ov, ptr %i.ox, align 8, !tbaa !13
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next245.i.2
  store double 0.000000e+00, ptr %i.oy, align 8, !tbaa !13
  %indvars.iv.next245.i.3 = add nuw nsw i64 %indvars.iv244.i, 4 ; 2 uses
  %niter64.next.3 = add i64 %niter64, 4           ; 2 uses
  %niter64.ncmp.3 = icmp eq i64 %niter64.next.3, %unroll_iter63
  br i1 %niter64.ncmp.3, label %.preheader199.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !51

.split.us:                                        ; preds = %._crit_edge238.i.loopexit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZNSt10filesystem7__cxx114pathC2IA59_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(59) @.str.1, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 177, ptr noundef nonnull @.str.3) #12
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.split.us
  unreachable

bb.n:                                             ; preds = %.split.us
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %i.oz

_ZL6jacobiIPPdEiT_iS0_S2_.exit:                   ; preds = %._crit_edge.i.us, %bb.a, %.preheader199.i
  %.us-phi = phi i32 [ 0, %.preheader199.i ], [ 0, %bb.a ], [ %.0168239.i.us, %._crit_edge.i.us ]
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 103, ptr noundef %i.c)
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 104, ptr noundef %i.b)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZL6jacobiIPPdEiT_iS0_S2_.exit
  store i32 %.us-phi, ptr %4, align 4, !tbaa !58
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZL6jacobiIPPdEiT_iS0_S2_.exit
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
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !61
  %i.k = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #11
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !23
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_1
