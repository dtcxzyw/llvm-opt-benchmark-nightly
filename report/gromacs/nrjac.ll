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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !12
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i
  store double 1.000000e+00, ptr %i.n, align 8, !tbaa !12
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.1
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.i.1
  store double 1.000000e+00, ptr %i.q, align 8, !tbaa !12
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.2
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.2
  store double 1.000000e+00, ptr %i.t, align 8, !tbaa !12
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i, 4 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.3
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !9    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.3
  store double 1.000000e+00, ptr %i.w, align 8, !tbaa !12
  %indvars.iv.next.i.4 = or disjoint i64 %indvars.iv.i, 5 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.4
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.4
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !12
  %indvars.iv.next.i.5 = or disjoint i64 %indvars.iv.i, 6 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.5
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !9  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.5
  store double 1.000000e+00, ptr %i.ac, align 8, !tbaa !12
  %indvars.iv.next.i.6 = or disjoint i64 %indvars.iv.i, 7 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.6
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.i.6
  store double 1.000000e+00, ptr %i.af, align 8, !tbaa !12
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.preheader.unr-lcssa, label %.preheader201.us.i, !llvm.loop !14

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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.f, i1 false), !tbaa !12
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.epil
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !12
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i.preheader, label %.preheader201.us.i.epil, !llvm.loop !16

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
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv244.i.epil
  %i.an = load double, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv244.i.epil
  store double %i.an, ptr %i.ao, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv244.i.epil
  store double %i.an, ptr %i.ap, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv244.i.epil
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !12
  %indvars.iv.next245.i.epil = add nuw nsw i64 %indvars.iv244.i.epil, 1
  %epil.iter60.next = add i64 %epil.iter60, 1     ; 2 uses
  %epil.iter60.cmp.not = icmp eq i64 %epil.iter60.next, %xtraiter59
  br i1 %epil.iter60.cmp.not, label %.preheader199.i, label %.lr.ph.i.epil, !llvm.loop !18

.preheader199.i:                                  ; preds = %.lr.ph.i.epil, %.preheader199.i.unr-lcssa
  %i.ar = add nsw i32 %1, -1
  %.not16 = icmp eq i32 %1, 1
  %i.as = mul nuw nsw i32 %1, %1
  %i.at = uitofp nneg i32 %i.as to double
  %wide.trip.count259.i = zext nneg i32 %i.ar to i64 ; 2 uses
  br i1 %.not16, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit, label %.preheader198.i.us.preheader

.preheader198.i.us.preheader:                     ; preds = %.preheader199.i
  %i.au = shl nuw nsw i64 %i.e, 3                 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.au ; 2 uses
  %scevgep18 = getelementptr i8, ptr %2, i64 %i.au ; 2 uses
  %scevgep19 = getelementptr i8, ptr %i.c, i64 %i.au ; 2 uses
  %i.av = add nsw i32 %1, -3                      ; 2 uses
  %i.aw = add nsw i64 %i.e, -2
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
  br label %.preheader198.i.us

.preheader198.i.us:                               ; preds = %.preheader198.i.us.preheader, %._crit_edge238.i.loopexit.us
  %.0167240.i.us = phi i32 [ %i.nx, %._crit_edge238.i.loopexit.us ], [ 1, %.preheader198.i.us.preheader ] ; 3 uses
  %.0168239.i.us = phi i32 [ %.3171.i.us, %._crit_edge238.i.loopexit.us ], [ 0, %.preheader198.i.us.preheader ] ; 2 uses
  br label %.lr.ph208.i.us

.lr.ph208.i.us:                                   ; preds = %.preheader198.i.us, %.loopexit196.i.us
  %indvars.iv256.i.us = phi i64 [ %indvars.iv.next257.i.us, %.loopexit196.i.us ], [ 0, %.preheader198.i.us ] ; 4 uses
  %indvars.iv249.i.us = phi i64 [ %indvars.iv.next250.i.us, %.loopexit196.i.us ], [ 1, %.preheader198.i.us ] ; 3 uses
  %.0172210.i.us = phi double [ %.lcssa, %.loopexit196.i.us ], [ 0.000000e+00, %.preheader198.i.us ] ; 2 uses
  %i.ay = sub i64 %i.g, %indvars.iv256.i.us
  %i.az = sub i64 %i.aw, %indvars.iv256.i.us
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv256.i.us
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !9  ; 9 uses
  %xtraiter65 = and i64 %i.ay, 7                  ; 2 uses
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph208.i.us, %.prol.preheader
  %indvars.iv251.i.us.prol = phi i64 [ %indvars.iv.next252.i.us.prol, %.prol.preheader ], [ %indvars.iv249.i.us, %.lr.ph208.i.us ] ; 2 uses
  %.1173207.i.us.prol = phi double [ %i.bf, %.prol.preheader ], [ %.0172210.i.us, %.lr.ph208.i.us ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph208.i.us ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us.prol
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !12
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fadd double %.1173207.i.us.prol, %i.be  ; 3 uses
  %indvars.iv.next252.i.us.prol = add nuw nsw i64 %indvars.iv251.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter65
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph208.i.us
  %.lcssa.unr = phi double [ poison, %.lr.ph208.i.us ], [ %i.bf, %.prol.preheader ]
  %indvars.iv251.i.us.unr = phi i64 [ %indvars.iv249.i.us, %.lr.ph208.i.us ], [ %indvars.iv.next252.i.us.prol, %.prol.preheader ]
  %.1173207.i.us.unr = phi double [ %.0172210.i.us, %.lr.ph208.i.us ], [ %i.bf, %.prol.preheader ]
  %i.bg = icmp ult i64 %i.az, 7
  br i1 %i.bg, label %.loopexit196.i.us, label %.lr.ph208.i.us.new

.lr.ph208.i.us.new:                               ; preds = %.prol.loopexit, %.lr.ph208.i.us.new
  %indvars.iv251.i.us = phi i64 [ %indvars.iv.next252.i.us.7, %.lr.ph208.i.us.new ], [ %indvars.iv251.i.us.unr, %.prol.loopexit ] ; 9 uses
  %.1173207.i.us = phi double [ %i.ct, %.lr.ph208.i.us.new ], [ %.1173207.i.us.unr, %.prol.loopexit ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !12
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bi)
  %i.bk = fadd double %.1173207.i.us, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !12
  %i.bo = tail call noundef double @llvm.fabs.f64(double %i.bn)
  %i.bp = fadd double %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !12
  %i.bt = tail call noundef double @llvm.fabs.f64(double %i.bs)
  %i.bu = fadd double %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !12
  %i.by = tail call noundef double @llvm.fabs.f64(double %i.bx)
  %i.bz = fadd double %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !12
  %i.cd = tail call noundef double @llvm.fabs.f64(double %i.cc)
  %i.ce = fadd double %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !12
  %i.ci = tail call noundef double @llvm.fabs.f64(double %i.ch)
  %i.cj = fadd double %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !12
  %i.cn = tail call noundef double @llvm.fabs.f64(double %i.cm)
  %i.co = fadd double %i.cj, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv251.i.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !12
  %i.cs = tail call noundef double @llvm.fabs.f64(double %i.cr)
  %i.ct = fadd double %i.co, %i.cs                ; 2 uses
  %indvars.iv.next252.i.us.7 = add nuw nsw i64 %indvars.iv251.i.us, 8 ; 2 uses
  %exitcond255.not.i.us.7 = icmp eq i64 %indvars.iv.next252.i.us.7, %i.e
  br i1 %exitcond255.not.i.us.7, label %.loopexit196.i.us, label %.lr.ph208.i.us.new, !llvm.loop !20

.loopexit196.i.us:                                ; preds = %.lr.ph208.i.us.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.ct, %.lr.ph208.i.us.new ] ; 3 uses
  %indvars.iv.next257.i.us = add nuw nsw i64 %indvars.iv256.i.us, 1 ; 2 uses
  %indvars.iv.next250.i.us = add nuw nsw i64 %indvars.iv249.i.us, 1
  %exitcond260.not.i.us = icmp eq i64 %indvars.iv.next257.i.us, %wide.trip.count259.i
  br i1 %exitcond260.not.i.us, label %._crit_edge.i.us, label %.lr.ph208.i.us, !llvm.loop !21

._crit_edge.i.us:                                 ; preds = %.loopexit196.i.us
  %i.cu = fcmp oeq double %.lcssa, 0.000000e+00
  br i1 %i.cu, label %_ZL6jacobiIPPdEiT_iS0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.cv = icmp samesign ult i32 %.0167240.i.us, 4
  %i.cw = fmul double %.lcssa, 2.000000e-01
  %i.cx = fdiv double %i.cw, %i.at
  %.0175.i.us = select i1 %i.cv, double %i.cx, double 0.000000e+00
  %i.cy = icmp samesign ugt i32 %.0167240.i.us, 4
  br label %.lr.ph229.i.us

.lr.ph229.i.us:                                   ; preds = %.loopexit.i.us, %bb.b
  %indvars.iv292.i.us = phi i64 [ 0, %bb.b ], [ %indvars.iv.next293.i.us, %.loopexit.i.us ] ; 18 uses
  %indvars.iv273.i.us = phi i64 [ 2, %bb.b ], [ %indvars.iv.next274.i.us, %.loopexit.i.us ] ; 2 uses
  %indvars.iv266.i.us = phi i64 [ 1, %bb.b ], [ %indvars.iv.next267.i.us, %.loopexit.i.us ] ; 6 uses
  %.1169232.i.us = phi i32 [ %.0168239.i.us, %bb.b ], [ %.3171.i.us, %.loopexit.i.us ]
  %i.cz = shl i64 %indvars.iv292.i.us, 3          ; 2 uses
  %i.da = add i64 %i.cz, 16
  %i.db = add i64 %i.cz, 24
  %indvars.iv.next293.i.us = add nuw nsw i64 %indvars.iv292.i.us, 1 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv292.i.us
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !9  ; 12 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv292.i.us ; 4 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv292.i.us ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv292.i.us, 0
  %xtraiter67 = and i64 %indvars.iv292.i.us, 1
  %i.dg = icmp eq i64 %indvars.iv292.i.us, 1
  %unroll_iter71 = and i64 %indvars.iv292.i.us, 9223372036854775806
  %lcmp.mod69.not = icmp eq i64 %xtraiter67, 0
  %lcmp.mod70 = trunc i64 %indvars.iv292.i.us to i1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv266.i.us ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv266.i.us
  %indvars.iv.next269.i.us.prol = add nuw nsw i64 %indvars.iv266.i.us, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %.lr.ph229.i.us
  %indvar = phi i64 [ %indvar.next, %bb.m ], [ 0, %.lr.ph229.i.us ] ; 6 uses
  %indvars.iv286.i.us = phi i64 [ %indvars.iv.next287.i.us, %bb.m ], [ %indvars.iv266.i.us, %.lr.ph229.i.us ] ; 18 uses
  %indvars.iv275.i.us = phi i64 [ %indvars.iv.next276.i.us, %bb.m ], [ %indvars.iv273.i.us, %.lr.ph229.i.us ] ; 5 uses
  %.2170227.i.us = phi i32 [ %.3171.i.us, %bb.m ], [ %.1169232.i.us, %.lr.ph229.i.us ] ; 3 uses
  %i.dj = add i64 %indvars.iv292.i.us, %indvar
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = sub i32 %i.av, %i.dk                    ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %i.do = shl i64 %indvar, 3                      ; 2 uses
  %i.dp = add i64 %i.da, %i.do                    ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.dd, i64 %i.dp
  %i.dq = add i64 %i.db, %i.do                    ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.dd, i64 %i.dq
  %i.dr = add i64 %indvars.iv292.i.us, %indvar
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = sub i32 %i.av, %i.ds
  %i.du = zext i32 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 3                ; 2 uses
  %scevgep33 = getelementptr i8, ptr %scevgep32, i64 %i.dv
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv286.i.us ; 3 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !12 ; 4 uses
  %i.dy = tail call noundef double @llvm.fabs.f64(double %i.dx) ; 2 uses
  %i.dz = fmul double %i.dy, 1.000000e+02         ; 3 uses
  br i1 %i.cy, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ea = load double, ptr %i.de, align 8, !tbaa !12
  %i.eb = tail call noundef double @llvm.fabs.f64(double %i.ea) ; 2 uses
  %i.ec = fadd double %i.dz, %i.eb
  %i.ed = fcmp oeq double %i.ec, %i.eb
  br i1 %i.ed, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i.us
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !12
  %i.eg = tail call noundef double @llvm.fabs.f64(double %i.ef) ; 2 uses
  %i.eh = fadd double %i.dz, %i.eg
  %i.ei = fcmp oeq double %i.eh, %i.eg
  br i1 %i.ei, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ej = fcmp ogt double %i.dy, %.0175.i.us
  br i1 %i.ej, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv286.i.us ; 3 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !12
  %i.em = load double, ptr %i.de, align 8, !tbaa !12
  %i.en = fsub double %i.el, %i.em                ; 3 uses
  %i.eo = tail call noundef double @llvm.fabs.f64(double %i.en) ; 2 uses
  %i.ep = fadd double %i.dz, %i.eo
  %i.eq = fcmp oeq double %i.ep, %i.eo
  br i1 %i.eq, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.er = fmul double %i.en, 5.000000e-01
  %i.es = fdiv double %i.er, %i.dx                ; 4 uses
  %i.et = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.es, double %i.es, double 1.000000e+00)
  %sqrt.i.us = tail call double @llvm.sqrt.f64(double %i.eu)
  %i.ev = fadd double %i.et, %sqrt.i.us
  %i.ew = fdiv double 1.000000e+00, %i.ev         ; 2 uses
  %i.ex = fcmp olt double %i.es, 0.000000e+00
  br i1 %i.ex, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ey = fneg double %i.ew
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ez = fdiv double %i.dx, %i.en
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0174.i.us = phi double [ %i.ez, %bb.j ], [ %i.ey, %bb.i ], [ %i.ew, %bb.h ] ; 4 uses
  %i.fa = tail call double @llvm.fmuladd.f64(double %.0174.i.us, double %.0174.i.us, double 1.000000e+00)
  %sqrt193.i.us = tail call double @llvm.sqrt.f64(double %i.fa)
  %i.fb = fdiv double 1.000000e+00, %sqrt193.i.us ; 2 uses
  %i.fc = fmul double %.0174.i.us, %i.fb          ; 20 uses
  %i.fd = fadd double %i.fb, 1.000000e+00
  %i.fe = fdiv double %i.fc, %i.fd                ; 29 uses
  %i.ff = fmul double %i.dx, %.0174.i.us          ; 4 uses
  %i.fg = load double, ptr %i.df, align 8, !tbaa !12
  %i.fh = fsub double %i.fg, %i.ff
  store double %i.fh, ptr %i.df, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv286.i.us ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !12
  %i.fk = fadd double %i.ff, %i.fj
  store double %i.fk, ptr %i.fi, align 8, !tbaa !12
  %i.fl = load double, ptr %i.de, align 8, !tbaa !12
  %i.fm = fsub double %i.fl, %i.ff
  store double %i.fm, ptr %i.de, align 8, !tbaa !12
  %i.fn = load double, ptr %i.ek, align 8, !tbaa !12
  %i.fo = fadd double %i.ff, %i.fn
  store double %i.fo, ptr %i.ek, align 8, !tbaa !12
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !12
  br i1 %.not.i.us, label %.preheader195.i.us, label %.lr.ph216.i.us

.lr.ph216.i.us:                                   ; preds = %bb.k
  %i.fp = fneg double %i.fc                       ; 3 uses
  br i1 %i.dg, label %.epil.preheader, label %.lr.ph216.i.us.new

.lr.ph216.i.us.new:                               ; preds = %.lr.ph216.i.us, %.lr.ph216.i.us.new
  %indvars.iv261.i.us = phi i64 [ %indvars.iv.next262.i.us.1, %.lr.ph216.i.us.new ], [ 0, %.lr.ph216.i.us ] ; 3 uses
  %niter72 = phi i64 [ %niter72.next.1, %.lr.ph216.i.us.new ], [ 0, %.lr.ph216.i.us ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i.us
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !9  ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv292.i.us ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !12 ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv286.i.us ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !12 ; 3 uses
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.ft, double %i.fe, double %i.fv)
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.fw, double %i.ft)
  store double %i.fx, ptr %i.fs, align 8, !tbaa !12
  %i.fy = fneg double %i.fv
  %i.fz = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.fe, double %i.ft)
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fz, double %i.fv)
  store double %i.ga, ptr %i.fu, align 8, !tbaa !12
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i.us
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !9  ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv292.i.us ; 2 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !12 ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv286.i.us ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !12 ; 3 uses
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.fe, double %i.gh)
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.gi, double %i.gf)
  store double %i.gj, ptr %i.ge, align 8, !tbaa !12
  %i.gk = fneg double %i.gh
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.fe, double %i.gf)
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.gl, double %i.gh)
  store double %i.gm, ptr %i.gg, align 8, !tbaa !12
  %indvars.iv.next262.i.us.1 = add nuw nsw i64 %indvars.iv261.i.us, 2 ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.preheader195.i.us.loopexit.unr-lcssa, label %.lr.ph216.i.us.new, !llvm.loop !22

.preheader195.i.us.loopexit.unr-lcssa:            ; preds = %.lr.ph216.i.us.new
  br i1 %lcmp.mod69.not, label %.preheader195.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader195.i.us.loopexit.unr-lcssa, %.lr.ph216.i.us
  %indvars.iv261.i.us.epil.init = phi i64 [ 0, %.lr.ph216.i.us ], [ %indvars.iv.next262.i.us.1, %.preheader195.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv261.i.us.epil.init
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !9  ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv292.i.us ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !12 ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv286.i.us ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !12 ; 3 uses
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.fe, double %i.gs)
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.gt, double %i.gq)
  store double %i.gu, ptr %i.gp, align 8, !tbaa !12
  %i.gv = fneg double %i.gs
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.fe, double %i.gq)
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.gw, double %i.gs)
  store double %i.gx, ptr %i.gr, align 8, !tbaa !12
  br label %.preheader195.i.us

.preheader195.i.us:                               ; preds = %.epil.preheader, %.preheader195.i.us.loopexit.unr-lcssa, %bb.k
  %i.gy = icmp samesign ult i64 %indvars.iv.next293.i.us, %indvars.iv286.i.us
  br i1 %i.gy, label %.lr.ph218.i.us, label %.preheader194.i.us

.lr.ph218.i.us:                                   ; preds = %.preheader195.i.us
  %i.gz = fneg double %i.fc                       ; 3 uses
  %xtraiter75 = and i64 %indvar, 1
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.prol.loopexit74, label %.prol.loopexit74.unr-lcssa

.prol.loopexit74.unr-lcssa:                       ; preds = %.lr.ph218.i.us
  %i.ha = load double, ptr %i.dh, align 8, !tbaa !12 ; 3 uses
  %i.hb = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv286.i.us ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !12 ; 3 uses
  %i.he = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.fe, double %i.hd)
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.he, double %i.ha)
  store double %i.hf, ptr %i.dh, align 8, !tbaa !12
  %i.hg = fneg double %i.hd
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.fe, double %i.ha)
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.hh, double %i.hd)
  store double %i.hi, ptr %i.hc, align 8, !tbaa !12
  br label %.prol.loopexit74

.prol.loopexit74:                                 ; preds = %.prol.loopexit74.unr-lcssa, %.lr.ph218.i.us
  %indvars.iv268.i.us.unr = phi i64 [ %indvars.iv266.i.us, %.lr.ph218.i.us ], [ %indvars.iv.next269.i.us.prol, %.prol.loopexit74.unr-lcssa ]
  %i.hj = icmp eq i64 %indvar, 1
  br i1 %i.hj, label %.preheader194.i.us, label %.lr.ph218.i.us.new

.lr.ph218.i.us.new:                               ; preds = %.prol.loopexit74, %.lr.ph218.i.us.new
  %indvars.iv268.i.us = phi i64 [ %indvars.iv.next269.i.us.1, %.lr.ph218.i.us.new ], [ %indvars.iv268.i.us.unr, %.prol.loopexit74 ] ; 4 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv268.i.us ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !12 ; 3 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv268.i.us
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !9
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv286.i.us ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !12 ; 3 uses
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.fe, double %i.hp)
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.hq, double %i.hl)
  store double %i.hr, ptr %i.hk, align 8, !tbaa !12
  %i.hs = fneg double %i.hp
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.fe, double %i.hl)
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ht, double %i.hp)
  store double %i.hu, ptr %i.ho, align 8, !tbaa !12
  %indvars.iv.next269.i.us = add nuw nsw i64 %indvars.iv268.i.us, 1 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next269.i.us ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !12 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next269.i.us
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !9
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv286.i.us ; 2 uses
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !12 ; 3 uses
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.fe, double %i.ia)
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.ib, double %i.hw)
  store double %i.ic, ptr %i.hv, align 8, !tbaa !12
  %i.id = fneg double %i.ia
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %i.fe, double %i.hw)
  %i.if = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ie, double %i.ia)
  store double %i.if, ptr %i.hz, align 8, !tbaa !12
  %indvars.iv.next269.i.us.1 = add nuw nsw i64 %indvars.iv268.i.us, 2 ; 2 uses
  %exitcond272.not.i.us.1 = icmp eq i64 %indvars.iv.next269.i.us.1, %indvars.iv286.i.us
  br i1 %exitcond272.not.i.us.1, label %.preheader194.i.us, label %.lr.ph218.i.us.new, !llvm.loop !23

.preheader194.i.us:                               ; preds = %.prol.loopexit74, %.lr.ph218.i.us.new, %.preheader195.i.us
  %6 = trunc i64 %indvars.iv286.i.us to i32
  %7 = add i32 %6, 1
  %i.ig = icmp slt i32 %7, %1
  br i1 %i.ig, label %.lr.ph221.i.us, label %.preheader194.i.us..preheader.i.us_crit_edge

.preheader194.i.us..preheader.i.us_crit_edge:     ; preds = %.preheader194.i.us
  %.pre8 = fneg double %i.fc
  br label %.preheader.i.us

.lr.ph221.i.us:                                   ; preds = %.preheader194.i.us
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv286.i.us
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !9  ; 8 uses
  %i.ij = fneg double %i.fc                       ; 9 uses
  %min.iters.check40 = icmp ult i32 %i.dl, 7
  br i1 %min.iters.check40, label %scalar.ph39.preheader, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph221.i.us
  %scevgep34 = getelementptr nuw i8, ptr %i.ii, i64 %i.dp
  %i.ik = getelementptr i8, ptr %i.ii, i64 %i.dq
  %scevgep35 = getelementptr i8, ptr %i.ik, i64 %i.dv
  %bound036 = icmp ult ptr %scevgep31, %scevgep35
  %bound137 = icmp ult ptr %scevgep34, %scevgep33
  %found.conflict38 = and i1 %bound036, %bound137
  br i1 %found.conflict38, label %scalar.ph39.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck30
  %n.vec42 = and i64 %i.dn, 8589934584            ; 3 uses
  %i.il = add nuw i64 %indvars.iv275.i.us, %n.vec42
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ij, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert43 = insertelement <4 x double> poison, double %i.fe, i64 0
  %broadcast.splat44 = shufflevector <4 x double> %broadcast.splatinsert43, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert45 = insertelement <4 x double> poison, double %i.fc, i64 0
  %broadcast.splat46 = shufflevector <4 x double> %broadcast.splatinsert45, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph41
  %index48 = phi i64 [ 0, %vector.ph41 ], [ %index.next53, %vector.body47 ] ; 2 uses
  %i.im = add nuw i64 %indvars.iv275.i.us, %index48 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.im ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32 ; 2 uses
  %wide.load49 = load <4 x double>, ptr %i.in, align 8, !tbaa !12, !alias.scope !24, !noalias !27 ; 3 uses
  %wide.load50 = load <4 x double>, ptr %i.io, align 8, !tbaa !12, !alias.scope !24, !noalias !27 ; 3 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.im ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32 ; 2 uses
  %wide.load51 = load <4 x double>, ptr %i.ip, align 8, !tbaa !12, !alias.scope !27 ; 3 uses
  %wide.load52 = load <4 x double>, ptr %i.iq, align 8, !tbaa !12, !alias.scope !27 ; 3 uses
  %i.ir = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load49, <4 x double> %broadcast.splat44, <4 x double> %wide.load51)
  %i.is = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %wide.load50, <4 x double> %broadcast.splat44, <4 x double> %wide.load52)
  %i.it = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.ir, <4 x double> %wide.load49)
  %i.iu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %i.is, <4 x double> %wide.load50)
  store <4 x double> %i.it, ptr %i.in, align 8, !tbaa !12, !alias.scope !24, !noalias !27
  store <4 x double> %i.iu, ptr %i.io, align 8, !tbaa !12, !alias.scope !24, !noalias !27
  %i.iv = fneg <4 x double> %wide.load51
  %i.iw = fneg <4 x double> %wide.load52
  %i.ix = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %broadcast.splat44, <4 x double> %wide.load49)
  %i.iy = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iw, <4 x double> %broadcast.splat44, <4 x double> %wide.load50)
  %i.iz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.ix, <4 x double> %wide.load51)
  %i.ja = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat46, <4 x double> %i.iy, <4 x double> %wide.load52)
  store <4 x double> %i.iz, ptr %i.ip, align 8, !tbaa !12, !alias.scope !27
  store <4 x double> %i.ja, ptr %i.iq, align 8, !tbaa !12, !alias.scope !27
  %index.next53 = add nuw i64 %index48, 8         ; 2 uses
  %i.jb = icmp eq i64 %index.next53, %n.vec42
  br i1 %i.jb, label %middle.block54, label %vector.body47, !llvm.loop !29

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %i.dn, %n.vec42
  br i1 %cmp.n55, label %.preheader.i.us, label %scalar.ph39.preheader

scalar.ph39.preheader:                            ; preds = %vector.memcheck30, %.lr.ph221.i.us, %middle.block54
  %indvars.iv277.i.us.ph = phi i64 [ %indvars.iv275.i.us, %vector.memcheck30 ], [ %indvars.iv275.i.us, %.lr.ph221.i.us ], [ %i.il, %middle.block54 ] ; 3 uses
  %i.jc = trunc i64 %indvars.iv277.i.us.ph to i32 ; 2 uses
  %i.jd = sub i32 %1, %i.jc
  %xtraiter78 = and i32 %i.jd, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i32 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol

scalar.ph39.prol:                                 ; preds = %scalar.ph39.preheader, %scalar.ph39.prol
  %indvars.iv277.i.us.prol = phi i64 [ %indvars.iv.next278.i.us.prol, %scalar.ph39.prol ], [ %indvars.iv277.i.us.ph, %scalar.ph39.preheader ] ; 3 uses
  %prol.iter80 = phi i32 [ %prol.iter80.next, %scalar.ph39.prol ], [ 0, %scalar.ph39.preheader ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv277.i.us.prol ; 2 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !12 ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv277.i.us.prol ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !12 ; 3 uses
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.fe, double %i.jh)
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.ji, double %i.jf)
  store double %i.jj, ptr %i.je, align 8, !tbaa !12
  %i.jk = fneg double %i.jh
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jk, double %i.fe, double %i.jf)
  %i.jm = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.jl, double %i.jh)
  store double %i.jm, ptr %i.jg, align 8, !tbaa !12
  %indvars.iv.next278.i.us.prol = add nuw nsw i64 %indvars.iv277.i.us.prol, 1 ; 2 uses
  %prol.iter80.next = add i32 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i32 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %scalar.ph39.prol.loopexit, label %scalar.ph39.prol, !llvm.loop !32

scalar.ph39.prol.loopexit:                        ; preds = %scalar.ph39.prol, %scalar.ph39.preheader
  %indvars.iv277.i.us.unr = phi i64 [ %indvars.iv277.i.us.ph, %scalar.ph39.preheader ], [ %indvars.iv.next278.i.us.prol, %scalar.ph39.prol ]
  %i.jn = sub i32 %i.jc, %1
  %i.jo = icmp ugt i32 %i.jn, -4
  br i1 %i.jo, label %.preheader.i.us, label %scalar.ph39

scalar.ph39:                                      ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39
  %indvars.iv277.i.us = phi i64 [ %indvars.iv.next278.i.us.3, %scalar.ph39 ], [ %indvars.iv277.i.us.unr, %scalar.ph39.prol.loopexit ] ; 6 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv277.i.us ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !12 ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv277.i.us ; 2 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !12 ; 3 uses
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.jq, double %i.fe, double %i.js)
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.jt, double %i.jq)
  store double %i.ju, ptr %i.jp, align 8, !tbaa !12
  %i.jv = fneg double %i.js
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.fe, double %i.jq)
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.jw, double %i.js)
  store double %i.jx, ptr %i.jr, align 8, !tbaa !12
  %indvars.iv.next278.i.us = add nuw nsw i64 %indvars.iv277.i.us, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next278.i.us ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !12 ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next278.i.us ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !12 ; 3 uses
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.jz, double %i.fe, double %i.kb)
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.kc, double %i.jz)
  store double %i.kd, ptr %i.jy, align 8, !tbaa !12
  %i.ke = fneg double %i.kb
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.ke, double %i.fe, double %i.jz)
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.kf, double %i.kb)
  store double %i.kg, ptr %i.ka, align 8, !tbaa !12
  %indvars.iv.next278.i.us.1 = add nuw nsw i64 %indvars.iv277.i.us, 2 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next278.i.us.1 ; 2 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !12 ; 3 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next278.i.us.1 ; 2 uses
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !12 ; 3 uses
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.ki, double %i.fe, double %i.kk)
  %i.km = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.kl, double %i.ki)
  store double %i.km, ptr %i.kh, align 8, !tbaa !12
  %i.kn = fneg double %i.kk
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.kn, double %i.fe, double %i.ki)
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ko, double %i.kk)
  store double %i.kp, ptr %i.kj, align 8, !tbaa !12
  %indvars.iv.next278.i.us.2 = add nuw nsw i64 %indvars.iv277.i.us, 3 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next278.i.us.2 ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !12 ; 3 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next278.i.us.2 ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !12 ; 3 uses
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.kr, double %i.fe, double %i.kt)
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.ku, double %i.kr)
  store double %i.kv, ptr %i.kq, align 8, !tbaa !12
  %i.kw = fneg double %i.kt
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.kw, double %i.fe, double %i.kr)
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.kx, double %i.kt)
  store double %i.ky, ptr %i.ks, align 8, !tbaa !12
  %indvars.iv.next278.i.us.3 = add nuw nsw i64 %indvars.iv277.i.us, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next278.i.us.3 to i32
  %exitcond.3 = icmp eq i32 %1, %lftr.wideiv.3
  br i1 %exitcond.3, label %.preheader.i.us, label %scalar.ph39, !llvm.loop !33

.preheader.i.us:                                  ; preds = %scalar.ph39.prol.loopexit, %scalar.ph39, %middle.block54, %.preheader194.i.us..preheader.i.us_crit_edge
  %.pre-phi = phi double [ %.pre8, %.preheader194.i.us..preheader.i.us_crit_edge ], [ %i.ij, %middle.block54 ], [ %i.ij, %scalar.ph39 ], [ %i.ij, %scalar.ph39.prol.loopexit ] ; 3 uses
  br i1 %i.ax, label %.epil.preheader81, label %.preheader.i.us.new

.preheader.i.us.new:                              ; preds = %.preheader.i.us, %.preheader.i.us.new
  %indvars.iv281.i.us = phi i64 [ %indvars.iv.next282.i.us.1, %.preheader.i.us.new ], [ 0, %.preheader.i.us ] ; 3 uses
  %niter87 = phi i64 [ %niter87.next.1, %.preheader.i.us.new ], [ 0, %.preheader.i.us ]
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i.us
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !9  ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv292.i.us ; 2 uses
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !12 ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv286.i.us ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !12 ; 3 uses
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.lc, double %i.fe, double %i.le)
  %i.lg = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.lf, double %i.lc)
  store double %i.lg, ptr %i.lb, align 8, !tbaa !12
  %i.lh = fneg double %i.le
  %i.li = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.fe, double %i.lc)
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.li, double %i.le)
  store double %i.lj, ptr %i.ld, align 8, !tbaa !12
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv281.i.us
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !9  ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv292.i.us ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !12 ; 3 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv286.i.us ; 2 uses
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !12 ; 3 uses
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.lo, double %i.fe, double %i.lq)
  %i.ls = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.lr, double %i.lo)
  store double %i.ls, ptr %i.ln, align 8, !tbaa !12
  %i.lt = fneg double %i.lq
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.lt, double %i.fe, double %i.lo)
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.lu, double %i.lq)
  store double %i.lv, ptr %i.lp, align 8, !tbaa !12
  %indvars.iv.next282.i.us.1 = add nuw nsw i64 %indvars.iv281.i.us, 2 ; 2 uses
  %niter87.next.1 = add i64 %niter87, 2           ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %._crit_edge224.i.loopexit.us.unr-lcssa, label %.preheader.i.us.new, !llvm.loop !34

bb.l:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge224.i.loopexit.us, %bb.l, %bb.f
  %.3171.i.us = phi i32 [ %.2170227.i.us, %bb.l ], [ %i.nw, %._crit_edge224.i.loopexit.us ], [ %.2170227.i.us, %bb.f ] ; 3 uses
  %indvars.iv.next287.i.us = add nuw nsw i64 %indvars.iv286.i.us, 1 ; 2 uses
  %indvars.iv.next276.i.us = add nuw nsw i64 %indvars.iv275.i.us, 1
end_hunk_0
begin_hunk_1_@_Z9m_inv_genPKfiPf:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 96 ; 2 uses
  %wide.load222 = load <4 x double>, ptr %i.cs, align 8, !tbaa !12 ; 2 uses
  %wide.load223 = load <4 x double>, ptr %i.ct, align 8, !tbaa !12 ; 2 uses
  %wide.load224 = load <4 x double>, ptr %i.cu, align 8, !tbaa !12 ; 2 uses
  %wide.load225 = load <4 x double>, ptr %i.cv, align 8, !tbaa !12 ; 2 uses
  %i.cw = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load222)
  %i.cx = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load223)
  %i.cy = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load224)
  %i.cz = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load225)
  %i.da = fcmp olt <4 x double> %i.cw, %broadcast.splat ; 2 uses
  %i.db = fcmp olt <4 x double> %i.cx, %broadcast.splat ; 2 uses
  %i.dc = fcmp olt <4 x double> %i.cy, %broadcast.splat ; 2 uses
  %i.dd = fcmp olt <4 x double> %i.cz, %broadcast.splat ; 2 uses
  %i.de = fdiv <4 x double> splat (double 1.000000e+00), %wide.load222
  %i.df = fdiv <4 x double> splat (double 1.000000e+00), %wide.load223
  %i.dg = fdiv <4 x double> splat (double 1.000000e+00), %wide.load224
  %i.dh = fdiv <4 x double> splat (double 1.000000e+00), %wide.load225
  %i.di = select <4 x i1> %i.da, <4 x double> zeroinitializer, <4 x double> %i.de
  %i.dj = select <4 x i1> %i.db, <4 x double> zeroinitializer, <4 x double> %i.df
  %i.dk = select <4 x i1> %i.dc, <4 x double> zeroinitializer, <4 x double> %i.dg
  %i.dl = select <4 x i1> %i.dd, <4 x double> zeroinitializer, <4 x double> %i.dh
  %i.dm = zext <4 x i1> %i.da to <4 x i32>
  %i.dn = zext <4 x i1> %i.db to <4 x i32>
  %i.do = zext <4 x i1> %i.dc to <4 x i32>
  %i.dp = zext <4 x i1> %i.dd to <4 x i32>
  %i.dq = add <4 x i32> %vec.phi, %i.dm           ; 2 uses
  %i.dr = add <4 x i32> %vec.phi219, %i.dn        ; 2 uses
  %i.ds = add <4 x i32> %vec.phi220, %i.do        ; 2 uses
  %i.dt = add <4 x i32> %vec.phi221, %i.dp        ; 2 uses
  store <4 x double> %i.di, ptr %i.cs, align 8, !tbaa !12
  store <4 x double> %i.dj, ptr %i.ct, align 8, !tbaa !12
  store <4 x double> %i.dk, ptr %i.cu, align 8, !tbaa !12
  store <4 x double> %i.dl, ptr %i.cv, align 8, !tbaa !12
  %index.next226 = add nuw i64 %index218, 16      ; 2 uses
  %i.du = icmp eq i64 %index.next226, %n.vec216
  br i1 %i.du, label %middle.block227, label %vector.body217, !llvm.loop !77

middle.block227:                                  ; preds = %vector.body217
  %bin.rdx = add <4 x i32> %i.dr, %i.dq
  %bin.rdx228 = add <4 x i32> %i.ds, %bin.rdx
  %bin.rdx229 = add <4 x i32> %i.dt, %bin.rdx228
  %i.dv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx229) ; 3 uses
  %cmp.n230 = icmp eq i64 %n.vec216, %wide.trip.count
  br i1 %cmp.n230, label %.preheader95.preheader, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block227
  %min.epilog.iters.check235 = icmp eq i64 %i.cr, 0
  br i1 %min.epilog.iters.check235, label %.lr.ph115.preheader, label %vec.epilog.ph236, !prof !71

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check234
  %vec.epilog.resume.val231 = phi i64 [ %n.vec216, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check213 ]
  %bc.merge.rdx = phi i32 [ %i.dv, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check213 ]
  %n.vec237 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.dw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert238 = insertelement <4 x double> poison, double %i.cq, i64 0
  %broadcast.splat239 = shufflevector <4 x double> %broadcast.splatinsert238, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body240

vec.epilog.vector.body240:                        ; preds = %vec.epilog.vector.body240, %vec.epilog.ph236
  %index241 = phi i64 [ %vec.epilog.resume.val231, %vec.epilog.ph236 ], [ %index.next244, %vec.epilog.vector.body240 ] ; 2 uses
  %vec.phi242 = phi <4 x i32> [ %i.dw, %vec.epilog.ph236 ], [ %i.ed, %vec.epilog.vector.body240 ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index241 ; 2 uses
  %wide.load243 = load <4 x double>, ptr %i.dx, align 8, !tbaa !12 ; 2 uses
  %i.dy = call <4 x double> @llvm.fabs.v4f64(<4 x double> %wide.load243)
  %i.dz = fcmp olt <4 x double> %i.dy, %broadcast.splat239 ; 2 uses
  %i.ea = fdiv <4 x double> splat (double 1.000000e+00), %wide.load243
  %i.eb = select <4 x i1> %i.dz, <4 x double> zeroinitializer, <4 x double> %i.ea
  %i.ec = zext <4 x i1> %i.dz to <4 x i32>
  %i.ed = add <4 x i32> %vec.phi242, %i.ec        ; 2 uses
  store <4 x double> %i.eb, ptr %i.dx, align 8, !tbaa !12
  %index.next244 = add nuw i64 %index241, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.ee, label %vec.epilog.middle.block245, label %vec.epilog.vector.body240, !llvm.loop !78

vec.epilog.middle.block245:                       ; preds = %vec.epilog.vector.body240
  %i.ef = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ed) ; 2 uses
  %cmp.n246 = icmp eq i64 %n.vec237, %wide.trip.count
  br i1 %cmp.n246, label %.preheader95.preheader, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %iter.check232, %vec.epilog.iter.check234, %vec.epilog.middle.block245
  %indvars.iv156.ph = phi i64 [ 0, %iter.check232 ], [ %n.vec216, %vec.epilog.iter.check234 ], [ %n.vec237, %vec.epilog.middle.block245 ]
  %.074112.ph = phi i32 [ 0, %iter.check232 ], [ %i.dv, %vec.epilog.iter.check234 ], [ %i.ef, %vec.epilog.middle.block245 ]
  br label %.lr.ph115

.preheader95.preheader:                           ; preds = %.lr.ph115, %middle.block227, %vec.epilog.middle.block245
  %.175.lcssa = phi i32 [ %i.ef, %vec.epilog.middle.block245 ], [ %i.dv, %middle.block227 ], [ %.175, %.lr.ph115 ]
  %i.eg = zext nneg i32 %1 to i64                 ; 3 uses
  %xtraiter258 = and i64 %wide.trip.count, 7      ; 3 uses
  %i.eh = icmp ult i32 %1, 8
  %unroll_iter263 = and i64 %wide.trip.count, 2147483640
  %lcmp.mod260.not = icmp eq i64 %xtraiter258, 0
  %lcmp.mod262 = icmp ne i64 %xtraiter258, 0
  br label %.preheader95

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.lr.ph115
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %.lr.ph115 ], [ %indvars.iv156.ph, %.lr.ph115.preheader ] ; 2 uses
  %.074112 = phi i32 [ %.175, %.lr.ph115 ], [ %.074112.ph, %.lr.ph115.preheader ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv156 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !12 ; 2 uses
  %i.ek = call noundef double @llvm.fabs.f64(double %i.ej)
  %i.el = fcmp olt double %i.ek, %i.cq            ; 2 uses
  %i.em = fdiv double 1.000000e+00, %i.ej
  %.sink = select i1 %i.el, double 0.000000e+00, double %i.em
  %i.en = zext i1 %i.el to i32
  %.175 = add nuw nsw i32 %.074112, %i.en         ; 2 uses
  store double %.sink, ptr %i.ei, align 8, !tbaa !12
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %.preheader95.preheader, label %.lr.ph115, !llvm.loop !79

.preheader95:                                     ; preds = %.preheader95.preheader, %._crit_edge123.split.us
  %indvars.iv171 = phi i64 [ 0, %.preheader95.preheader ], [ %indvars.iv.next172, %._crit_edge123.split.us ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv171
  %i.ep = mul nuw nsw i64 %indvars.iv171, %i.eg
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !9  ; 9 uses
  %invariant.gep200 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ep
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge120.us, %.preheader95
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge120.us ], [ 0, %.preheader95 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv166
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !9  ; 9 uses
  br i1 %i.eh, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv161 = phi i64 [ %indvars.iv.next162.7, %.preheader.us.new ], [ 0, %.preheader.us ] ; 11 uses
  %.076117.us = phi double [ %i.he, %.preheader.us.new ], [ 0.000000e+00, %.preheader.us ]
  %niter264 = phi i64 [ %niter264.next.7, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv161
  %i.eu = load double, ptr %i.et, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv161
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !12
  %i.ex = fmul double %i.eu, %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv161
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !12
  %i.fa = call double @llvm.fmuladd.f64(double %i.ex, double %i.ez, double %.076117.us)
  %indvars.iv.next162 = or disjoint i64 %indvars.iv161, 1 ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !12
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !12
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !12
  %i.fi = call double @llvm.fmuladd.f64(double %i.ff, double %i.fh, double %i.fa)
  %indvars.iv.next162.1 = or disjoint i64 %indvars.iv161, 2 ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.1
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.1
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !12
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.1
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !12
  %i.fq = call double @llvm.fmuladd.f64(double %i.fn, double %i.fp, double %i.fi)
  %indvars.iv.next162.2 = or disjoint i64 %indvars.iv161, 3 ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.2
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.2
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !12
  %i.fv = fmul double %i.fs, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.2
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !12
  %i.fy = call double @llvm.fmuladd.f64(double %i.fv, double %i.fx, double %i.fq)
  %indvars.iv.next162.3 = or disjoint i64 %indvars.iv161, 4 ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.3
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !12
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.3
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !12
  %i.gd = fmul double %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.3
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !12
  %i.gg = call double @llvm.fmuladd.f64(double %i.gd, double %i.gf, double %i.fy)
  %indvars.iv.next162.4 = or disjoint i64 %indvars.iv161, 5 ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.4
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.4
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !12
  %i.gl = fmul double %i.gi, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.4
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !12
  %i.go = call double @llvm.fmuladd.f64(double %i.gl, double %i.gn, double %i.gg)
  %indvars.iv.next162.5 = or disjoint i64 %indvars.iv161, 6 ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.5
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.5
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !12
  %i.gt = fmul double %i.gq, %i.gs
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.5
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !12
  %i.gw = call double @llvm.fmuladd.f64(double %i.gt, double %i.gv, double %i.go)
  %indvars.iv.next162.6 = or disjoint i64 %indvars.iv161, 7 ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next162.6
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !12
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next162.6
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !12
  %i.hb = fmul double %i.gy, %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.next162.6
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !12
  %i.he = call double @llvm.fmuladd.f64(double %i.hb, double %i.hd, double %i.gw) ; 3 uses
  %indvars.iv.next162.7 = add nuw nsw i64 %indvars.iv161, 8 ; 2 uses
  %niter264.next.7 = add nuw i64 %niter264, 8     ; 2 uses
  %niter264.ncmp.7 = icmp eq i64 %niter264.next.7, %unroll_iter263
  br i1 %niter264.ncmp.7, label %._crit_edge120.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !80

._crit_edge120.us.unr-lcssa:                      ; preds = %.preheader.us.new
  br i1 %lcmp.mod260.not, label %._crit_edge120.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge120.us.unr-lcssa, %.preheader.us
  %indvars.iv161.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next162.7, %._crit_edge120.us.unr-lcssa ]
  %.076117.us.epil.init = phi double [ 0.000000e+00, %.preheader.us ], [ %i.he, %._crit_edge120.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod262)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv161.epil = phi i64 [ %indvars.iv161.epil.init, %.epil.preheader ], [ %indvars.iv.next162.epil, %bb.b ] ; 4 uses
  %.076117.us.epil = phi double [ %.076117.us.epil.init, %.epil.preheader ], [ %i.hm, %bb.b ]
  %epil.iter259 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter259.next, %bb.b ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv161.epil
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv161.epil
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !12
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv161.epil
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !12
  %i.hm = call double @llvm.fmuladd.f64(double %i.hj, double %i.hl, double %.076117.us.epil) ; 2 uses
  %indvars.iv.next162.epil = add nuw nsw i64 %indvars.iv161.epil, 1
  %epil.iter259.next = add i64 %epil.iter259, 1   ; 2 uses
  %epil.iter259.cmp.not = icmp eq i64 %epil.iter259.next, %xtraiter258
  br i1 %epil.iter259.cmp.not, label %._crit_edge120.us, label %bb.b, !llvm.loop !81

._crit_edge120.us:                                ; preds = %bb.b, %._crit_edge120.us.unr-lcssa
  %.lcssa = phi double [ %i.he, %._crit_edge120.us.unr-lcssa ], [ %i.hm, %bb.b ]
  %i.hn = fptrunc double %.lcssa to float
  %gep201 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep200, i64 %indvars.iv166
  store float %i.hn, ptr %gep201, align 4, !tbaa !68
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %i.eg
  br i1 %exitcond170.not, label %._crit_edge123.split.us, label %.preheader.us, !llvm.loop !82

._crit_edge123.split.us:                          ; preds = %._crit_edge120.us
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %i.eg
  br i1 %exitcond175.not, label %._crit_edge125.split, label %.preheader95, !llvm.loop !83

._crit_edge125.split:                             ; preds = %._crit_edge123.split.us
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 261, ptr noundef nonnull %i.l)
  %wide.trip.count179 = zext nneg i32 %1 to i64
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %._crit_edge125.split, %.lr.ph128
  %indvars.iv176 = phi i64 [ 0, %._crit_edge125.split ], [ %indvars.iv.next177, %.lr.ph128 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv176
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !9
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 264, ptr noundef %i.hp)
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %.lr.ph132.preheader, label %.lr.ph128, !llvm.loop !84

.lr.ph132.preheader:                              ; preds = %.lr.ph128
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 266, ptr noundef nonnull %i.g)
  %wide.trip.count184 = zext nneg i32 %1 to i64
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %indvars.iv181 = phi i64 [ 0, %.lr.ph132.preheader ], [ %indvars.iv.next182, %.lr.ph132 ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv181
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !9
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 269, ptr noundef %i.hr)
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge133, label %.lr.ph132, !llvm.loop !85

._crit_edge133:                                   ; preds = %.lr.ph132, %.preheader97.thread
  %.074.lcssa191195198 = phi i32 [ 0, %.preheader97.thread ], [ %.175.lcssa, %.lr.ph132 ]
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 271, ptr noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.074.lcssa191195198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 double", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !15, !30, !31}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !15, !30}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = !{!43, !38}
!43 = distinct !{!43, !39}
!44 = !{!43}
!45 = distinct !{!45, !15, !30, !31}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !15, !30}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = !{!6, !6, i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!53 = !{!"p1 omnipotent char", !11, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"long", !7, i64 0}
!56 = !{!57, !53, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0, !55, i64 8, !7, i64 16}
!58 = !{!7, !7, i64 0}
!59 = !{!57, !55, i64 8}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !11, i64 0}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15, !65}
!65 = !{!"llvm.loop.peeled.count", i32 1}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = !{!69, !69, i64 0}
!69 = !{!"float", !7, i64 0}
!70 = distinct !{!70, !15, !30, !31}
!71 = !{!"branch_weights", i32 4, i32 12}
!72 = distinct !{!72, !15, !30, !31}
!73 = distinct !{!73, !15, !31, !30}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !15, !30, !31}
!78 = distinct !{!78, !15, !30, !31}
!79 = distinct !{!79, !15, !31, !30}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !17}
end_hunk_1
