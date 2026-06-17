inline.NumInlined: 123
inline.NumDeleted: 74
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZTVN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingE = unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingE, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingD1Ev, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingD0Ev, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositing15composite_pixelEPfPPKfPPKciii, ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositing4sortEPiPPKfPPKciii] }, align 8
@_ZTIN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingE = constant [49 x i8] c"N27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingE\00", align 1
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingC1Ev = unnamed_addr alias void (ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingC2Ev
@_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingD1Ev = unnamed_addr alias void (ptr), ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #1 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositingD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositing15composite_pixelEPfPPKfPPKciii(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0                       ; 3 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %4 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.c, i1 false), !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.d = icmp eq i32 %5, 0
  br i1 %i.d, label %_ZNSt6vectorIiSaIiEED2Ev.exit49, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %5 to i64                       ; 3 uses
  %i.f = icmp slt i32 %5, 0
  br i1 %i.f, label %.noexc50, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

.noexc50:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #15 ; 8 uses
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %i.i = add nsw i64 %i.e, -1                     ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.lr.ph68.preheader, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.k = getelementptr i8, ptr %i.h, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !3
  br label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 8
  br i1 %min.iters.check, label %.lr.ph68.preheader143, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %vec.ind, ptr %i.l, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.m, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge69, label %.lr.ph68.preheader143

.lr.ph68.preheader143:                            ; preds = %.lr.ph68.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph68.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph68

._crit_edge69:                                    ; preds = %.lr.ph68, %middle.block
  %i.o = load ptr, ptr %0, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.h, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6)
          to label %.lr.ph75 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge69
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.g) #13
  resume { ptr, i32 } %lpad.thr_comm.split-lp

.lr.ph68:                                         ; preds = %.lr.ph68.preheader143, %.lr.ph68
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph68 ], [ %indvars.iv.ph, %.lr.ph68.preheader143 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.s, ptr %i.r, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge69, label %.lr.ph68, !llvm.loop !15

bb.d:                                             ; preds = %bb.b
  %i.t = icmp sgt i32 %5, 0
  br i1 %i.t, label %.lr.ph75.thread, label %_ZNSt6vectorIiSaIiEED2Ev.exit49

.lr.ph75:                                         ; preds = %._crit_edge69
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.a, label %.lr.ph75.split.us.split.us.preheader, label %.critedge.thread

.lr.ph75.thread:                                  ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.a, label %.lr.ph75.split.us.split.preheader.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit49

.lr.ph75.split.us.split.preheader.a:              ; preds = %.lr.ph75.thread
  %wide.trip.count92 = zext nneg i32 %5 to i64
  %wide.trip.count87 = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count87, 1
  %i.w = icmp eq i32 %4, 1
  %unroll_iter = and i64 %wide.trip.count87, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod144 = trunc i32 %4 to i1
  br label %.lr.ph75.split.us.split

.lr.ph75.split.us.split.us.preheader:             ; preds = %.lr.ph75
  %wide.trip.count102 = zext nneg i32 %5 to i64
  %wide.trip.count97 = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter146 = and i64 %wide.trip.count97, 1
  %i.x = icmp eq i32 %4, 1
  %unroll_iter149 = and i64 %wide.trip.count97, 2147483646
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod148 = trunc i32 %4 to i1
  br label %.lr.ph75.split.us.split.us

.lr.ph75.split.us.split.us:                       ; preds = %.lr.ph75.split.us.split.us.preheader, %._crit_edge72.us.us
  %indvars.iv99.a = phi i64 [ 0, %.lr.ph75.split.us.split.us.preheader ], [ %indvars.iv.next100.a, %._crit_edge72.us.us ] ; 2 uses
  %i.y = load float, ptr %i.u, align 4, !tbaa !9  ; 2 uses
  %i.z = fcmp ult float %i.y, 1.000000e+00
  br i1 %i.z, label %.preheader.us.us, label %.critedge.thread

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %indvars.iv94.a = phi i64 [ %indvars.iv.next95.1.a, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 4 uses
  %niter150 = phi i64 [ %niter150.next.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv94.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ar
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv94.a ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ad, float %i.af)
  store float %i.ag, ptr %i.ae, align 4, !tbaa !9
  %indvars.iv.next95.a = or disjoint i64 %indvars.iv94.a, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next95.a
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ar
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !9
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next95.a ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !9
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ak, float %i.am)
  store float %i.an, ptr %i.al, align 4, !tbaa !9
  %indvars.iv.next95.1.a = add nuw nsw i64 %indvars.iv94.a, 2 ; 2 uses
  %niter150.next.1 = add i64 %niter150, 2         ; 2 uses
  %niter150.ncmp.1 = icmp eq i64 %niter150.next.1, %unroll_iter149
  br i1 %niter150.ncmp.1, label %._crit_edge72.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !19

.preheader.us.us:                                 ; preds = %.lr.ph75.split.us.split.us
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv99.a
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = fsub float 1.000000e+00, %i.y           ; 3 uses
  %i.ar = sext i32 %i.ap to i64                   ; 3 uses
  br i1 %i.x, label %.epil.preheader145, label %.preheader.us.us.new

._crit_edge72.us.us.unr-lcssa:                    ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod147.not, label %._crit_edge72.us.us, label %.epil.preheader145

.epil.preheader145:                               ; preds = %._crit_edge72.us.us.unr-lcssa, %.preheader.us.us
  %indvars.iv94.epil.init.a = phi i64 [ 0, %.preheader.us.us ], [ %indvars.iv.next95.1.a, %._crit_edge72.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv94.epil.init.a
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ar
  %i.av = load float, ptr %i.au, align 4, !tbaa !9
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv94.epil.init.a ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !9
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.av, float %i.ax)
  store float %i.ay, ptr %i.aw, align 4, !tbaa !9
  br label %._crit_edge72.us.us

._crit_edge72.us.us:                              ; preds = %._crit_edge72.us.us.unr-lcssa, %.epil.preheader145
  %indvars.iv.next100.a = add nuw nsw i64 %indvars.iv99.a, 1 ; 2 uses
  %exitcond103.not.a = icmp eq i64 %indvars.iv.next100.a, %wide.trip.count102
  br i1 %exitcond103.not.a, label %.critedge.thread, label %.lr.ph75.split.us.split.us, !llvm.loop !20

.lr.ph75.split.us.split:                          ; preds = %.lr.ph75.split.us.split.preheader.a, %._crit_edge72.us
  %indvars.iv89 = phi i64 [ 0, %.lr.ph75.split.us.split.preheader.a ], [ %indvars.iv.next90, %._crit_edge72.us ] ; 4 uses
  %i.az = load float, ptr %i.v, align 4, !tbaa !9 ; 2 uses
  %i.ba = fcmp ult float %i.az, 1.000000e+00
  br i1 %i.ba, label %.preheader.us, label %_ZNSt6vectorIiSaIiEED2Ev.exit49

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv89
  %i.be = load float, ptr %i.bd, align 4, !tbaa !9
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv84 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !9
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.be, float %i.bg)
  store float %i.bh, ptr %i.bf, align 4, !tbaa !9
  %indvars.iv.next85 = or disjoint i64 %indvars.iv84, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next85
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv89
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !9
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next85 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !9
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bl, float %i.bn)
  store float %i.bo, ptr %i.bm, align 4, !tbaa !9
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge72.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !19

.preheader.us:                                    ; preds = %.lr.ph75.split.us.split
  %i.bp = fsub float 1.000000e+00, %i.az          ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader.us.new

._crit_edge72.us.unr-lcssa:                       ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge72.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge72.us.unr-lcssa, %.preheader.us
  %indvars.iv84.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next85.1, %._crit_edge72.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84.epil.init
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv89
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !9
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv84.epil.init ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !9
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bt, float %i.bv)
  store float %i.bw, ptr %i.bu, align 4, !tbaa !9
  br label %._crit_edge72.us

._crit_edge72.us:                                 ; preds = %._crit_edge72.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count92
  br i1 %exitcond93.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit49, label %.lr.ph75.split.us.split, !llvm.loop !20

.critedge.thread:                                 ; preds = %.lr.ph75.split.us.split.us, %._crit_edge72.us.us, %.lr.ph75
  %.idx = shl nuw nsw i64 %i.e, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %.idx) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit49

_ZNSt6vectorIiSaIiEED2Ev.exit49:                  ; preds = %.lr.ph75.split.us.split, %._crit_edge72.us, %.lr.ph75.thread, %bb.d, %.critedge.thread, %._crit_edge
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_515DeepCompositing4sortEPiPPKfPPKciii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, i32 %4, i32 noundef %5, i32 %6) unnamed_addr #4 align 2 {
bb.a:
  %.not.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i, label %_ZSt4sortIPiN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEvT_S3_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %5 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = xor i64 %i.d, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_T0_T1_(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef %i.e, ptr %2)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_T0_(ptr noundef %1, ptr noundef nonnull %i.b, ptr %2)
  br label %_ZSt4sortIPiN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEvT_S3_T0_.exit

_ZSt4sortIPiN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEvT_S3_T0_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_S7_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEET_S7_S7_T0_.exit
  %i.h = icmp eq i64 %i.bj, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !21

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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.i, i32 noundef %i.m, ptr %3)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.n = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !22

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.07.i.i = phi ptr [ %i.o, %.lr.ph.i5.i ], [ %.024.lcssa, %bb.c ]
  %i.o = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %i.o, align 4, !tbaa !3
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 2
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_T0_S8_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.t, i32 noundef %i.p, ptr %3)
  %i.u = icmp sgt i64 %i.s, 4
  br i1 %i.u, label %.lr.ph.i5.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_S7_T0_.exit, !llvm.loop !23

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %.0152349 = phi i64 [ %i.bj, %bb.b ], [ %2, %.lr.ph ]
  %.02448 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.v = phi i64 [ %i.bl, %bb.b ], [ %i.c, %.lr.ph ]
  %i.w = lshr i64 %i.v, 3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %.02448, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.x, ptr noundef nonnull %i.y, ptr %3)
  %i.z = load ptr, ptr %3, align 8, !tbaa !16     ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %.lr.ph50
  %.013.i.i = phi ptr [ %.02448, %.lr.ph50 ], [ %.114.i.i, %bb.l ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph50 ], [ %i.bi, %bb.l ]
  %i.aa = load i32, ptr %0, align 4, !tbaa !3     ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !9 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i.i, %bb.d
  %.1.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %i.as, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i.i ] ; 9 uses
  %i.ae = load i32, ptr %.1.i.i, align 4, !tbaa !3 ; 3 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !9 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %i.ad
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = fcmp ogt float %i.ah, %i.ad
  br i1 %i.aj, label %.preheader.i.i.preheader, label %bb.g

.preheader.i.i.preheader:                         ; preds = %bb.h, %bb.f
  br label %.preheader.i.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.af
  %i.am = load float, ptr %i.al, align 4, !tbaa !9 ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ab
  %i.ao = load float, ptr %i.an, align 4, !tbaa !9 ; 2 uses
  %i.ap = fcmp olt float %i.am, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = fcmp ule float %i.am, %i.ao
  %i.ar = icmp slt i32 %i.ae, %i.aa
  %or.cond32.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond32.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i.i, label %.preheader.i.i.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit.thread.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  br label %bb.e, !llvm.loop !24

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.i.i.preheader
  %.013.pn.i.i = phi ptr [ %.013.i.i, %.preheader.i.i.preheader ], [ %.114.i.i, %.preheader.i.i.backedge ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.at = load i32, ptr %.114.i.i, align 4, !tbaa !3 ; 3 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !9 ; 2 uses
  %i.ax = fcmp olt float %i.ad, %i.aw
  br i1 %i.ax, label %.preheader.i.i.backedge, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i
  %i.ay = fcmp ogt float %i.ad, %i.aw
  br i1 %i.ay, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit16.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ab
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !9 ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.au
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !9 ; 2 uses
  %i.be = fcmp olt float %i.bb, %i.bd
  br i1 %i.be, label %.preheader.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = fcmp ule float %i.bb, %i.bd
  %i.bg = icmp slt i32 %i.aa, %i.at
  %or.cond.i.i = and i1 %i.bg, %i.bf
  br i1 %or.cond.i.i, label %.preheader.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit16.thread.i.i

.preheader.i.i.backedge:                          ; preds = %bb.k, %bb.j, %.preheader.i.i
  br label %.preheader.i.i, !llvm.loop !25

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit16.thread.i.i: ; preds = %bb.k, %bb.i
  %i.bh = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bh, label %bb.l, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEET_S7_S7_T0_.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit16.thread.i.i
  store i32 %i.at, ptr %.1.i.i, align 4, !tbaa !3
  store i32 %i.ae, ptr %.114.i.i, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  br label %bb.d, !llvm.loop !26

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEET_S7_S7_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEclIPiS6_EEbT_T0_.exit16.thread.i.i
  %i.bj = add nsw i64 %.0152349, -1               ; 3 uses
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02448, i64 noundef %i.bj, ptr nonnull %3)
  %i.bk = ptrtoint ptr %.1.i.i to i64
  %i.bl = sub i64 %i.bk, %i.a                     ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 64
  br i1 %i.bm, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_S7_T0_.exit, !llvm.loop !21

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_S7_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEET_S7_S7_T0_.exit, %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN27OpenImageIO_v3_1_Imf__3_3_511sort_helperEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
end_hunk_0
