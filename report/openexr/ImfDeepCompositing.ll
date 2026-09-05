Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfDeepCompositing?download=true
inline.NumInlined: 123
inline.NumDeleted: 73
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_ = comdat any

$_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_S8_T1_T2_ = comdat any

$_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_S7_S7_T0_ = comdat any

@_ZTVN7Imf_3_415DeepCompositingE = constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7Imf_3_415DeepCompositingE, ptr @_ZN7Imf_3_415DeepCompositingD1Ev, ptr @_ZN7Imf_3_415DeepCompositingD0Ev, ptr @_ZN7Imf_3_415DeepCompositing15composite_pixelEPfPPKfPPKciii, ptr @_ZN7Imf_3_415DeepCompositing4sortEPiPPKfPPKciii] }, align 8
@_ZTIN7Imf_3_415DeepCompositingE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7Imf_3_415DeepCompositingE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7Imf_3_415DeepCompositingE = constant [28 x i8] c"N7Imf_3_415DeepCompositingE\00", align 1
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN7Imf_3_415DeepCompositingC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_415DeepCompositingC2Ev
@_ZN7Imf_3_415DeepCompositingD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_415DeepCompositingD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7Imf_3_415DeepCompositingC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7Imf_3_415DeepCompositingE, i64 16), ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7Imf_3_415DeepCompositingD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_415DeepCompositingD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7Imf_3_415DeepCompositingD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_415DeepCompositing15composite_pixelEPfPPKfPPKciii(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0                       ; 3 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %4 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.c, i1 false), !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.d = icmp eq i32 %5, 0
  br i1 %i.d, label %_ZNSt6vectorIiSaIiEED2Ev.exit49, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.e = icmp slt i32 %6, 2
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %5 to i64                       ; 3 uses
  %i.g = icmp slt i32 %5, 0
  br i1 %i.g, label %.noexc50, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

.noexc50:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.h = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #15 ; 11 uses
  store i32 0, ptr %i.i, align 4, !tbaa !12
  %i.j = add nsw i64 %i.f, -1                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.lr.ph69.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.l = getelementptr i8, ptr %i.i, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !12
  br label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %.lr.ph69.preheader136, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph69.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %vec.ind, ptr %i.n, align 4, !tbaa !12
  store <4 x i32> %step.add, ptr %i.o, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge70, label %.lr.ph69.preheader136

.lr.ph69.preheader136:                            ; preds = %.lr.ph69.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph69.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph69

._crit_edge70:                                    ; preds = %.lr.ph69, %middle.block
  %i.q = load ptr, ptr %0, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.i, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6)
          to label %.lr.ph76.thread unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge70
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #13
  resume { ptr, i32 } %lpad.thr_comm.split-lp

.lr.ph69:                                         ; preds = %.lr.ph69.preheader136, %.lr.ph69
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph69 ], [ %indvars.iv.ph, %.lr.ph69.preheader136 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.u, ptr %i.t, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge70, label %.lr.ph69, !llvm.loop !18

bb.d:                                             ; preds = %bb.b
  %i.v = icmp sgt i32 %5, 0
  br i1 %i.v, label %.lr.ph76, label %_ZNSt6vectorIiSaIiEED2Ev.exit49

.lr.ph76:                                         ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.a, label %.lr.ph76.split.us.split.preheader, label %.critedge

.lr.ph76.thread:                                  ; preds = %._crit_edge70
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.a, label %.lr.ph76.split.us.split.us.preheader, label %.critedge

.lr.ph76.split.us.split.us.preheader:             ; preds = %.lr.ph76.thread
  %wide.trip.count93 = zext nneg i32 %5 to i64
  %wide.trip.count88 = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count88, 1
  %i.y = icmp eq i32 %4, 1
  %unroll_iter = and i64 %wide.trip.count88, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod137 = trunc i32 %4 to i1
  br label %.lr.ph76.split.us.split.us

.lr.ph76.split.us.split.preheader:                ; preds = %.lr.ph76
  %wide.trip.count103 = zext nneg i32 %5 to i64
  %wide.trip.count98 = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter139 = and i64 %wide.trip.count98, 1
  %i.z = icmp eq i32 %4, 1
  %unroll_iter142 = and i64 %wide.trip.count98, 2147483646
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  %lcmp.mod141 = trunc i32 %4 to i1
  br label %.lr.ph76.split.us.split

.lr.ph76.split.us.split.us:                       ; preds = %.lr.ph76.split.us.split.us.preheader, %._crit_edge73.us.us
  %indvars.iv90 = phi i64 [ 0, %.lr.ph76.split.us.split.us.preheader ], [ %indvars.iv.next91, %._crit_edge73.us.us ] ; 2 uses
  %i.aa = load float, ptr %i.x, align 4, !tbaa !11 ; 2 uses
  %i.ab = fcmp ult float %i.aa, 1.000000e+00
  br i1 %i.ab, label %.preheader.us.us, label %.critedge.thread130

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv85
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %10
  %i.af = load float, ptr %i.ae, align 4, !tbaa !11
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv85 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !11
  %i.ai = tail call float @llvm.fmuladd.f32(float %9, float %i.af, float %i.ah)
  store float %i.ai, ptr %i.ag, align 4, !tbaa !11
  %indvars.iv.next86 = or disjoint i64 %indvars.iv85, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next86
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %10
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !11
  %i.ap = tail call float @llvm.fmuladd.f32(float %9, float %i.am, float %i.ao)
  store float %i.ap, ptr %i.an, align 4, !tbaa !11
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge73.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !19

.preheader.us.us:                                 ; preds = %.lr.ph76.split.us.split.us
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv90
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = fsub float 1.000000e+00, %i.aa             ; 3 uses
  %10 = sext i32 %8 to i64                        ; 3 uses
  br i1 %i.y, label %.epil.preheader, label %.preheader.us.us.new

._crit_edge73.us.us.unr-lcssa:                    ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge73.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge73.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv85.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next86.1, %._crit_edge73.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod137)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv85.epil.init
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %10
  %i.at = load float, ptr %i.as, align 4, !tbaa !11
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv85.epil.init ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !11
  %i.aw = tail call float @llvm.fmuladd.f32(float %9, float %i.at, float %i.av)
  store float %i.aw, ptr %i.au, align 4, !tbaa !11
  br label %._crit_edge73.us.us

._crit_edge73.us.us:                              ; preds = %._crit_edge73.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %.critedge.thread130, label %.lr.ph76.split.us.split.us, !llvm.loop !20

.lr.ph76.split.us.split:                          ; preds = %.lr.ph76.split.us.split.preheader, %._crit_edge73.us
  %indvars.iv100 = phi i64 [ 0, %.lr.ph76.split.us.split.preheader ], [ %indvars.iv.next101, %._crit_edge73.us ] ; 4 uses
  %i.ax = load float, ptr %i.w, align 4, !tbaa !11 ; 2 uses
  %i.ay = fcmp ult float %i.ax, 1.000000e+00
  br i1 %i.ay, label %.preheader.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit49

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %niter143 = phi i64 [ %niter143.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv95
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv100
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !11
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !11
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bc, float %i.be)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !11
  %indvars.iv.next96 = or disjoint i64 %indvars.iv95, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv100
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !11
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bj, float %i.bl)
  store float %i.bm, ptr %i.bk, align 4, !tbaa !11
  %indvars.iv.next96.1 = add nuw nsw i64 %indvars.iv95, 2 ; 2 uses
  %niter143.next.1 = add i64 %niter143, 2         ; 2 uses
  %niter143.ncmp.1 = icmp eq i64 %niter143.next.1, %unroll_iter142
  br i1 %niter143.ncmp.1, label %._crit_edge73.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !19

.preheader.us:                                    ; preds = %.lr.ph76.split.us.split
  %i.bn = fsub float 1.000000e+00, %i.ax          ; 3 uses
  br i1 %i.z, label %.epil.preheader138, label %.preheader.us.new

._crit_edge73.us.unr-lcssa:                       ; preds = %.preheader.us.new
  br i1 %lcmp.mod140.not, label %._crit_edge73.us, label %.epil.preheader138

.epil.preheader138:                               ; preds = %._crit_edge73.us.unr-lcssa, %.preheader.us
  %indvars.iv95.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next96.1, %._crit_edge73.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv95.epil.init
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv100
  %i.br = load float, ptr %i.bq, align 4, !tbaa !11
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95.epil.init ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !11
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.br, float %i.bt)
  store float %i.bu, ptr %i.bs, align 4, !tbaa !11
  br label %._crit_edge73.us

._crit_edge73.us:                                 ; preds = %._crit_edge73.us.unr-lcssa, %.epil.preheader138
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit49, label %.lr.ph76.split.us.split, !llvm.loop !20

.critedge:                                        ; preds = %.lr.ph76, %.lr.ph76.thread
  %.sroa.0.1113120 = phi ptr [ %i.i, %.lr.ph76.thread ], [ null, %.lr.ph76 ] ; 2 uses
  %.sroa.17.1115118 = phi ptr [ %i.m, %.lr.ph76.thread ], [ null, %.lr.ph76 ]
  %.not.i.i.i48 = icmp eq ptr %.sroa.0.1113120, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIiSaIiEED2Ev.exit49, label %.critedge.thread130

.critedge.thread130:                              ; preds = %.lr.ph76.split.us.split.us, %._crit_edge73.us.us, %.critedge
  %.sroa.0.1112135 = phi ptr [ %.sroa.0.1113120, %.critedge ], [ %i.i, %._crit_edge73.us.us ], [ %i.i, %.lr.ph76.split.us.split.us ] ; 2 uses
  %.sroa.17.1114134 = phi ptr [ %.sroa.17.1115118, %.critedge ], [ %i.m, %._crit_edge73.us.us ], [ %i.m, %.lr.ph76.split.us.split.us ]
  %i.bv = ptrtoint ptr %.sroa.17.1114134 to i64
  %i.bw = ptrtoint ptr %.sroa.0.1112135 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1112135, i64 noundef %i.bx) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

_ZNSt6vectorIiSaIiEED2Ev.exit49:                  ; preds = %.lr.ph76.split.us.split, %._crit_edge73.us, %bb.d, %.critedge.thread130, %.critedge, %._crit_edge
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_415DeepCompositing4sortEPiPPKfPPKciii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i32 %4, i32 noundef %5, i32 %6) unnamed_addr #4 align 2 {
bb.a:
  %.not.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i, label %_ZSt4sortIPiN7Imf_3_411sort_helperEEvT_S3_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %5 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = xor i64 %i.d, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_T1_(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef %i.e, ptr %2)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_(ptr noundef %1, ptr noundef nonnull %i.b, ptr %2)
  br label %_ZSt4sortIPiN7Imf_3_411sort_helperEEvT_S3_T0_.exit

_ZSt4sortIPiN7Imf_3_411sort_helperEEvT_S3_T0_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_S7_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEET_S7_S7_T0_.exit
  %i.h = icmp eq i64 %i.bj, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa46 = phi i64 [ %i.c, %.lr.ph ], [ %i.bl, %bb.b ]
  %.024.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.i = lshr exact i64 %.lcssa46, 2              ; 2 uses
  %i.j = add nsw i64 %i.i, -2
  %i.k = lshr i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.014.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.n, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.i, i32 noundef %i.m, ptr %3)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.n = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !24

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.o, %.lr.ph.i5.i ], [ %.024.lcssa, %bb.c ]
  %i.o = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = load i32, ptr %0, align 4, !tbaa !12
  store i32 %i.q, ptr %i.o, align 4, !tbaa !12
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 2
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_T0_S8_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.t, i32 noundef %i.p, ptr %3)
  %i.u = icmp sgt i64 %i.s, 4
  br i1 %i.u, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_S7_T0_.exit, !llvm.loop !25

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %.0152349 = phi i64 [ %i.bj, %bb.b ], [ %2, %.lr.ph ]
  %.02448 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.v = phi i64 [ %i.bl, %bb.b ], [ %i.c, %.lr.ph ]
  %i.w = lshr i64 %i.v, 3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %.02448, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7Imf_3_411sort_helperEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.x, ptr noundef nonnull %i.y, ptr %3)
  %i.z = load ptr, ptr %3, align 8, !tbaa !16     ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph50
  %.013.i.i = phi ptr [ %.02448, %.lr.ph50 ], [ %.114.i.i, %bb.j ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph50 ], [ %i.bi, %bb.j ]
  %i.aa = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !11 ; 4 uses
  br label %bb.e

end_hunk_0
