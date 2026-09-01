Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec_zones?download=true
inline.NumInlined: 250
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::BasicVector.4" = type { [3 x float] }

@_ZN3gmxL25ddNonbondedZonePairRangesE = internal unnamed_addr constant [4 x [3 x i32]] [[3 x i32] [i32 0, i32 0, i32 8], [3 x i32] [i32 1, i32 3, i32 6], [3 x i32] [i32 2, i32 5, i32 6], [3 x i32] [i32 3, i32 5, i32 7]], align 16
@_ZN3gmxL14sc_ddZoneOrderE = internal unnamed_addr constant [8 x [3 x i32]] [[3 x i32] zeroinitializer, [3 x i32] [i32 1, i32 0, i32 0], [3 x i32] [i32 1, i32 1, i32 0], [3 x i32] [i32 0, i32 1, i32 0], [3 x i32] [i32 0, i32 1, i32 1], [3 x i32] [i32 0, i32 0, i32 1], [3 x i32] [i32 1, i32 0, i32 1], [3 x i32] [i32 1, i32 1, i32 1]], align 16
@.str = private unnamed_addr constant [45 x i8] c"ddNonbondedZonePairRanges[iZone][0] == iZone\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"The first element for each ddNonbondedZonePairRanges should match its index\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx11DomdecZonesC1ENS_8ArrayRefIKiEEENK3$_0clEv" = private unnamed_addr constant [91 x i8] c"auto gmx::DomdecZones::DomdecZones(gmx::ArrayRef<const int>)::(lambda)::operator()() const\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/domdec/domdec_zones.cpp\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"begin_ <= end_\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"A range should have begin<=end\00", align 1
@__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv = private unnamed_addr constant [90 x i8] c"auto gmx::Range<int>::Range(const int, const int)::(lambda)::operator()() const [T = int]\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/api/legacy/include/gromacs/utility/range.h\00", align 1
@_ZL9zone_perm = internal unnamed_addr constant [3 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 3, i32 0, i32 1, i32 2]], align 16
@debug = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [56 x i8] c"zone %d    %6.3f - %6.3f  %6.3f - %6.3f  %6.3f - %6.3f\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"zone %d bb %6.3f - %6.3f  %6.3f - %6.3f  %6.3f - %6.3f\0A\00", align 1

@_ZN3gmx11DomdecZonesC1ENS_8ArrayRefIKiEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN3gmx11DomdecZonesC2ENS_8ArrayRefIKiEE

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx11DomdecZonesC2ENS_8ArrayRefIKiEE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(592) initializes((0, 40), (136, 592)) %0, ptr %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 2
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 6 uses
  store i32 %i.f, ptr %0, align 4, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = sdiv i32 %i.f, 2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.g, align 4, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 588
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(452) %i.k, i8 0, i64 452, i1 false)
  store i32 -1, ptr %i.l, align 4, !tbaa !18
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %bb.b

.preheader:                                       ; preds = %_ZN3gmx5RangeIiEC2Eii.exit
  %.not40 = icmp eq i32 %i.e, 31
  br i1 %.not40, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader
  %.not34 = icmp eq ptr %1, %2
  %smax52 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1) ; 2 uses
  %i.m = zext nneg i32 %smax52 to i64             ; 3 uses
  br i1 %.not34, label %.lr.ph38.split.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph38
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp slt i32 %i.f, 2
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.m, 2147483646
  br label %.lr.ph

.lr.ph38.split.us.preheader:                      ; preds = %.lr.ph38
  %i.o = mul nuw nsw i64 %i.m, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.j, i8 0, i64 %i.o, i1 false)
  br label %._crit_edge39

bb.b:                                             ; preds = %bb.a, %_ZN3gmx5RangeIiEC2Eii.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN3gmx5RangeIiEC2Eii.exit ] ; 4 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr @_ZN3gmxL25ddNonbondedZonePairRangesE, i64 %indvars.iv ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  %i.r = zext i32 %i.q to i64
  %i.s = icmp eq i64 %indvars.iv, %i.r
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx11DomdecZonesC1ENS_8ArrayRefIKiEEENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 79) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !17
  %i.v = icmp slt i32 %i.f, %i.u
  %..i20 = select i1 %i.v, ptr %0, ptr %i.t
  %i.w = load i32, ptr %..i20, align 4, !tbaa !17 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !17
  %i.z = icmp slt i32 %i.f, %i.y
  %..i21 = select i1 %i.z, ptr %0, ptr %i.x
  %i.aa = load i32, ptr %..i21, align 4, !tbaa !17 ; 2 uses
  %.not.i = icmp sgt i32 %i.w, %i.aa
  br i1 %.not.i, label %bb.e, label %_ZN3gmx5RangeIiEC2Eii.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.5, i32 noundef 111) #9
  unreachable

_ZN3gmx5RangeIiEC2Eii.exit:                       ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %.sroa.427.0.insert.ext = zext i32 %i.aa to i64
  %.sroa.427.0.insert.shift = shl nuw i64 %.sroa.427.0.insert.ext, 32
  %.sroa.026.0.insert.ext = zext i32 %i.w to i64
  %.sroa.026.0.insert.insert = or disjoint i64 %.sroa.427.0.insert.shift, %.sroa.026.0.insert.ext
  store i64 %.sroa.026.0.insert.insert, ptr %i.ab, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !19

._crit_edge39.loopexit.unr-lcssa:                 ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge39, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge39.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv46.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next47.1, %._crit_edge39.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i32 %smax52 to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv46.epil.init ; 4 uses
  store i32 0, ptr %i.ac, align 4
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.epil, align 4
  %.sroa.5.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.epil, align 4, !tbaa !21
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr @_ZN3gmxL14sc_ddZoneOrderE, i64 %indvars.iv46.epil.init
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.epil.preheader
  %indvars.iv43.epil = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %indvars.iv.next44.epil, %bb.f ] ; 2 uses
  %.sroa.0.035.epil = phi ptr [ %1, %.lr.ph.epil.preheader ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ae = load i32, ptr %.sroa.0.035.epil, align 4, !tbaa !17
  %indvars.iv.next44.epil = add nuw nsw i64 %indvars.iv43.epil, 1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv43.epil
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !17
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ah
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.035.epil, i64 4 ; 2 uses
  %.not.epil = icmp eq ptr %i.aj, %2
  br i1 %.not.epil, label %._crit_edge39, label %bb.f

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit.unr-lcssa, %bb.f, %.lr.ph38.split.us.preheader, %.preheader
  ret void

.lr.ph:                                           ; preds = %._crit_edge.1, %.lr.ph.preheader.new
  %indvars.iv46 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next47.1, %._crit_edge.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv46 ; 4 uses
  store i32 0, ptr %i.ak, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw [12 x i8], ptr @_ZN3gmxL14sc_ddZoneOrderE, i64 %indvars.iv46
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  %indvars.iv.next47 = or disjoint i64 %indvars.iv46, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.next47 ; 4 uses
  store i32 0, ptr %i.am, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.1, align 4
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.1, align 4, !tbaa !21
  %i.an = getelementptr inbounds nuw [12 x i8], ptr @_ZN3gmxL14sc_ddZoneOrderE, i64 %indvars.iv.next47
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge
  %indvars.iv43.1 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next44.1, %bb.g ] ; 2 uses
  %.sroa.0.035.1 = phi ptr [ %1, %._crit_edge ], [ %i.at, %bb.g ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.0.035.1, align 4, !tbaa !17
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43.1, 1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv43.1
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.035.1, i64 4 ; 2 uses
  %.not.1 = icmp eq ptr %i.at, %2
  br i1 %.not.1, label %._crit_edge.1, label %bb.g

._crit_edge.1:                                    ; preds = %bb.g
  %indvars.iv.next47.1 = add nuw nsw i64 %indvars.iv46, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge39.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !22

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv43 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next44, %bb.h ] ; 2 uses
  %.sroa.0.035 = phi ptr [ %1, %.lr.ph ], [ %i.az, %bb.h ] ; 2 uses
  %i.au = load i32, ptr %.sroa.0.035, align 4, !tbaa !17
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv43
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ax
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.035, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.az, %2
  br i1 %.not, label %._crit_edge, label %bb.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx11DomdecZones8setSizesERK12gmx_domdec_tPA3_KfPK11gmx_ddbox_tNS_5RangeIiEE(ptr nofree noundef nonnull align 4 dereferenceable(592) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1097) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.gmx::BasicVector.4", align 8 ; 23 uses
  %.sroa.0279.0.extract.trunc = trunc i64 %4 to i32 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i64 %4, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 534
  %i.d = load i8, ptr %i.c, align 2, !tbaa !26, !range !131, !noundef !132
end_hunk_0
