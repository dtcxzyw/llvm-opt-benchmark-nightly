inline.NumInlined: 138
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.lean::mpn_buffer" = type { %"class.lean::buffer" }
%"class.lean::buffer" = type { ptr, i64, i64, [64 x i8] }

$_ZN4lean6bufferIjLm16EE6resizeEmRKj = comdat any

$_ZN4lean19unreachable_reachedD0Ev = comdat any

$_ZNK4lean19unreachable_reached4whatEv = comdat any

$_ZTIN4lean19unreachable_reachedE = comdat any

$_ZTSN4lean19unreachable_reachedE = comdat any

$_ZTIN4lean9exceptionE = comdat any

$_ZTSN4lean9exceptionE = comdat any

$_ZTVN4lean19unreachable_reachedE = comdat any

@_ZN4leanL4zeroE = internal unnamed_addr constant i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@_ZTIN4lean19unreachable_reachedE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4lean19unreachable_reachedE, ptr @_ZTIN4lean9exceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4lean19unreachable_reachedE = linkonce_odr hidden constant [29 x i8] c"N4lean19unreachable_reachedE\00", comdat, align 1
@_ZTIN4lean9exceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4lean9exceptionE, ptr @_ZTIN4lean9throwableE }, comdat, align 8
@_ZTSN4lean9exceptionE = linkonce_odr constant [18 x i8] c"N4lean9exceptionE\00", comdat, align 1
@_ZTIN4lean9throwableE = external constant ptr
@_ZTVN4lean19unreachable_reachedE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4lean19unreachable_reachedE, ptr @_ZN4lean9throwableD2Ev, ptr @_ZN4lean19unreachable_reachedD0Ev, ptr @_ZNK4lean19unreachable_reached4whatEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"'unreachable' code was reached\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN4lean11mpn_compareEPKjmS1_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.umax.i64(i64 %1, i64 %3) ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.in22 = phi i64 [ %.0, %.lr.ph ], [ %i.a, %bb.a ]
  %.0 = add i64 %.0.in22, -1                      ; 6 uses
  %i.b = icmp ult i64 %.0, %1
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0
  %i.d = select i1 %i.b, ptr %i.c, ptr @_ZN4leanL4zeroE
  %i.e = icmp ult i64 %.0, %3
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0
  %i.g = select i1 %i.e, ptr %i.f, ptr @_ZN4leanL4zeroE
  %i.h = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !8    ; 2 uses
  %i.j = icmp ne i64 %.0, 0
  %i.k = icmp eq i32 %i.h, %i.i
  %i.l = and i1 %i.k, %i.j
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.1 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.h, i32 %i.i)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.019.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %._crit_edge.loopexit ]
  ret i32 %.019.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4lean7mpn_addEPKjmS1_mPjmPm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @llvm.umax.i64(i64 %1, i64 %3) ; 5 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  store i32 0, ptr %i.b, align 4, !tbaa !8
  br label %.critedge

._crit_edge:                                      ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.a
  store i32 %i.t, ptr %i.c, align 4, !tbaa !8
  %i.d = add i64 %i.a, 1                          ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %.lr.ph44, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.041 = phi i32 [ %i.t, %.lr.ph ], [ 0, %bb.a ]
  %.03740 = phi i64 [ %i.u, %.lr.ph ], [ 0, %bb.a ] ; 6 uses
  %i.f = icmp ult i64 %.03740, %1
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03740
  %i.h = select i1 %i.f, ptr %i.g, ptr @_ZN4leanL4zeroE
  %i.i = icmp ult i64 %.03740, %3
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03740
  %i.k = select i1 %i.i, ptr %i.j, ptr @_ZN4leanL4zeroE
  %i.l = load i32, ptr %i.h, align 4, !tbaa !8    ; 2 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !8
  %i.n = add i32 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i32 %i.n, %i.l
  %i.p = add i32 %i.n, %.041                      ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03740
  store i32 %i.p, ptr %i.q, align 4, !tbaa !8
  %i.r = icmp ult i32 %i.p, %i.n
  %i.s = or i1 %i.o, %i.r
  %i.t = zext i1 %i.s to i32                      ; 2 uses
  %i.u = add nuw i64 %.03740, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

.lr.ph44:                                         ; preds = %._crit_edge, %bb.b
  %storemerge42 = phi i64 [ %i.z, %bb.b ], [ %i.d, %._crit_edge ] ; 3 uses
  %i.v = getelementptr [4 x i8], ptr %4, i64 %storemerge42
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph44
  %i.z = add i64 %storemerge42, -1                ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 1
  br i1 %i.aa, label %.lr.ph44, label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %.lr.ph44, %bb.b, %._crit_edge.thread, %._crit_edge
  %storemerge.lcssa = phi i64 [ 0, %._crit_edge ], [ 1, %._crit_edge.thread ], [ 1, %bb.b ], [ %storemerge42, %.lr.ph44 ]
  store i64 %storemerge.lcssa, ptr %6, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4lean7mpn_subEPKjmS1_mPjS2_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @llvm.umax.i64(i64 %1, i64 %3) ; 2 uses
  store i32 0, ptr %5, align 4, !tbaa !8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i32 [ %i.q, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %.030 = phi i64 [ %i.r, %.lr.ph ], [ 0, %bb.a ] ; 6 uses
  %i.c = icmp ult i64 %.030, %1
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.030
  %i.e = select i1 %i.c, ptr %i.d, ptr @_ZN4leanL4zeroE
  %i.f = icmp ult i64 %.030, %3
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.030
  %i.h = select i1 %i.f, ptr %i.g, ptr @_ZN4leanL4zeroE
  %i.i = load i32, ptr %i.e, align 4, !tbaa !8    ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !8    ; 2 uses
  %i.k = sub i32 %i.i, %i.j                       ; 2 uses
  %i.l = icmp ugt i32 %i.j, %i.i
  %i.m = sub i32 %i.k, %i.b
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.030
  store i32 %i.m, ptr %i.n, align 4, !tbaa !8
  %i.o = icmp ugt i32 %i.b, %i.k
  %i.p = or i1 %i.l, %i.o
  %i.q = zext i1 %i.p to i32                      ; 2 uses
  store i32 %i.q, ptr %5, align 4, !tbaa !8
  %i.r = add nuw i64 %.030, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4lean7mpn_mulEPKjmS1_mPj(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.preheader38, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 16
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = and i64 %i.a, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  %i.d = icmp ugt i64 %i.a, 4294967295
  %i.e = or i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %1, 8589934584                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> zeroinitializer, ptr %i.f, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.g, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.preheader38.thread, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader38:                                     ; preds = %bb.a
  %invariant.gep43 = getelementptr [4 x i8], ptr %4, i64 %1 ; 2 uses
  %.not50 = icmp eq i64 %3, 0
  br i1 %.not50, label %._crit_edge49, label %.lr.ph48.split.preheader

.lr.ph48.split.preheader:                         ; preds = %.preheader38
  %min.iters.check67 = icmp ult i64 %3, 8
  br i1 %min.iters.check67, label %.lr.ph48.split.preheader76, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph48.split.preheader
  %n.vec69 = and i64 %3, -8                       ; 3 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next72, %vector.body70 ] ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %invariant.gep43, i64 %index71 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  store <4 x i32> zeroinitializer, ptr %i.i, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.j, align 4, !tbaa !8
  %index.next72 = add nuw i64 %index71, 8         ; 2 uses
  %i.k = icmp eq i64 %index.next72, %n.vec69
  br i1 %i.k, label %middle.block73, label %vector.body70, !llvm.loop !19

middle.block73:                                   ; preds = %vector.body70
  %cmp.n74 = icmp eq i64 %3, %n.vec69
  br i1 %cmp.n74, label %._crit_edge49, label %.lr.ph48.split.preheader76

.lr.ph48.split.preheader76:                       ; preds = %.lr.ph48.split.preheader, %middle.block73
  %.03447.ph = phi i64 [ 0, %.lr.ph48.split.preheader ], [ %n.vec69, %middle.block73 ]
  br label %.lr.ph48.split

.preheader38.thread:                              ; preds = %.lr.ph, %middle.block
  %invariant.gep4359 = getelementptr [4 x i8], ptr %4, i64 %1
  %.not5060 = icmp eq i64 %3, 0
  br i1 %.not5060, label %._crit_edge49, label %.lr.ph48.split.us.preheader

.lr.ph48.split.us.preheader:                      ; preds = %.preheader38.thread
  %xtraiter = and i64 %1, 1
  %i.l = icmp eq i64 %1, 1
  %unroll_iter = and i64 %1, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod80 = trunc i64 %1 to i1
  br label %.lr.ph48.split.us

.lr.ph48.split.us:                                ; preds = %.lr.ph48.split.us.preheader, %bb.b
  %.03447.us = phi i64 [ %i.ap, %bb.b ], [ 0, %.lr.ph48.split.us.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03447.us ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.preheader.us

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.041.us = phi i64 [ %i.ao, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %.03340.us = phi i64 [ %i.an, %.preheader.us.new ], [ 0, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.041.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = zext i32 %i.q to i64
  %i.s = load i32, ptr %i.m, align 4, !tbaa !8
  %i.t = zext i32 %i.s to i64
  %i.u = mul nuw i64 %i.t, %i.r
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %.041.us ; 2 uses
  %i.v = load i32, ptr %gep.us, align 4, !tbaa !8
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %.03340.us, %i.w
  %i.y = add nuw i64 %i.x, %i.u                   ; 2 uses
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %gep.us, align 4, !tbaa !8
  %i.aa = lshr i64 %i.y, 32
  %i.ab = or disjoint i64 %.041.us, 1             ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = zext i32 %i.ad to i64
  %i.af = load i32, ptr %i.m, align 4, !tbaa !8
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw i64 %i.ag, %i.ae
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ab ; 2 uses
  %i.ai = load i32, ptr %gep.us.1, align 4, !tbaa !8
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aa, %i.aj
  %i.al = add nuw i64 %i.ak, %i.ah                ; 2 uses
  %i.am = trunc i64 %i.al to i32
  store i32 %i.am, ptr %gep.us.1, align 4, !tbaa !8
  %i.an = lshr i64 %i.al, 32                      ; 3 uses
  %i.ao = add nuw nsw i64 %.041.us, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !20

bb.b:                                             ; preds = %.lr.ph48.split.us, %._crit_edge.us
  %.sink = phi i32 [ %i.bc, %._crit_edge.us ], [ 0, %.lr.ph48.split.us ]
  %gep46.us = getelementptr [4 x i8], ptr %invariant.gep4359, i64 %.03447.us
  store i32 %.sink, ptr %gep46.us, align 4, !tbaa !8
  %i.ap = add nuw i64 %.03447.us, 1               ; 2 uses
  %exitcond54.not.a = icmp eq i64 %i.ap, %3
  br i1 %exitcond54.not.a, label %._crit_edge49, label %.lr.ph48.split.us, !llvm.loop !21

.preheader.us:                                    ; preds = %.lr.ph48.split.us
  %invariant.gep.us = getelementptr [4 x i8], ptr %4, i64 %.03447.us ; 3 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.041.us.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.ao, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.03340.us.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.an, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.041.us.epil.init
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = zext i32 %i.ar to i64
  %i.at = load i32, ptr %i.m, align 4, !tbaa !8
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.as
  %gep.us.epil = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %.041.us.epil.init ; 2 uses
  %i.aw = load i32, ptr %gep.us.epil, align 4, !tbaa !8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %.03340.us.epil.init, %i.ax
  %i.az = add nuw i64 %i.ay, %i.av                ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  store i32 %i.ba, ptr %gep.us.epil, align 4, !tbaa !8
  %i.bb = lshr i64 %i.az, 32
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.an, %._crit_edge.us.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %i.bc = trunc nuw i64 %.lcssa to i32
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader78, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader78 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 0, ptr %i.bd, align 4, !tbaa !8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %5 = and i64 %indvars.iv.next, 4294967295
  %i.be = icmp ugt i64 %1, %5
  br i1 %i.be, label %.lr.ph, label %.preheader38.thread, !llvm.loop !22

._crit_edge49:                                    ; preds = %bb.b, %.lr.ph48.split, %middle.block73, %.preheader38.thread, %.preheader38
  ret void

.lr.ph48.split:                                   ; preds = %.lr.ph48.split.preheader76, %.lr.ph48.split
  %.03447 = phi i64 [ %i.bf, %.lr.ph48.split ], [ %.03447.ph, %.lr.ph48.split.preheader76 ] ; 2 uses
  %gep46 = getelementptr [4 x i8], ptr %invariant.gep43, i64 %.03447
  store i32 0, ptr %gep46, align 4, !tbaa !8
  %i.bf = add nuw i64 %.03447, 1                  ; 2 uses
  %exitcond55.not = icmp eq i64 %i.bf, %3
  br i1 %exitcond55.not, label %._crit_edge49, label %.lr.ph48.split, !llvm.loop !23
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean7mpn_divEPKjmS1_mPjS2_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.lean::mpn_buffer", align 8  ; 14 uses
  %7 = alloca %"class.lean::mpn_buffer", align 8  ; 13 uses
  %8 = alloca %"class.lean::mpn_buffer", align 8  ; 11 uses
  %9 = alloca %"class.lean::mpn_buffer", align 8  ; 11 uses
  %i.e = icmp ult i64 %1, %3
  br i1 %i.e, label %.preheader103, label %._crit_edge

.preheader103:                                    ; preds = %bb.a
  %i.f = add nuw i64 %1, 1                        ; 2 uses
  %.not119 = icmp eq i64 %i.f, %3
  br i1 %.not119, label %.preheader.preheader, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %.preheader103
  %i.g = sub i64 %i.f, %3
  %i.h = shl nuw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.h, i1 false), !tbaa !8
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph115.preheader, %.preheader103
  %xtraiter227 = and i64 %3, 1
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter230 = and i64 %3, -2
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.preheader.new
  %.068116 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.u, %bb.d ] ; 5 uses
  %niter231 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter231.next.1, %bb.d ]
  %i.j = icmp ult i64 %.068116, %1
  br i1 %i.j, label %bb.b, label %.preheader.1

bb.b:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.068116
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader, %bb.b
  %i.m = phi i32 [ %i.l, %bb.b ], [ 0, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.068116
  store i32 %i.m, ptr %i.n, align 4, !tbaa !8
  %i.o = or disjoint i64 %.068116, 1              ; 3 uses
  %i.p = icmp ult i64 %i.o, %1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.1
  %i.s = phi i32 [ %i.r, %bb.c ], [ 0, %.preheader.1 ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.o
  store i32 %i.s, ptr %i.t, align 4, !tbaa !8
  %i.u = add nuw i64 %.068116, 2                  ; 2 uses
  %niter231.next.1 = add i64 %niter231, 2         ; 2 uses
  %niter231.ncmp.1 = icmp eq i64 %niter231.next.1, %unroll_iter230
  br i1 %niter231.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.a
  %i.v = icmp eq i64 %1, 1
  %i.w = icmp eq i64 %3, 1                        ; 2 uses
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.x = load i32, ptr %0, align 4, !tbaa !8
  %i.y = load i32, ptr %2, align 4, !tbaa !8
  %i.z = udiv i32 %i.x, %i.y
  store i32 %i.z, ptr %4, align 4, !tbaa !8
  %i.aa = load i32, ptr %0, align 4, !tbaa !8
  %i.ab = load i32, ptr %2, align 4, !tbaa !8
  %i.ac = urem i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %5, align 4, !tbaa !8
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ad = icmp eq i64 %1, %3
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr [4 x i8], ptr %0, i64 %1
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ah = getelementptr [4 x i8], ptr %2, i64 %1
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = icmp ult i32 %i.ag, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %4, align 4, !tbaa !8
  %.not118 = icmp eq i64 %1, 0
  br i1 %.not118, label %.loopexit, label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %bb.h
  %min.iters.check191 = icmp ult i64 %1, 8
  %i.al = sub i64 %i.a, %i.b
  %diff.check189 = icmp ugt i64 %i.al, -32
  %or.cond202 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond202, label %.lr.ph113.preheader206, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph113.preheader
  %n.vec193 = and i64 %1, -8                      ; 3 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next198, %vector.body194 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index195 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load196 = load <4 x i32>, ptr %i.am, align 4, !tbaa !8
  %wide.load197 = load <4 x i32>, ptr %i.an, align 4, !tbaa !8
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index195 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <4 x i32> %wide.load196, ptr %i.ao, align 4, !tbaa !8
  store <4 x i32> %wide.load197, ptr %i.ap, align 4, !tbaa !8
  %index.next198 = add nuw i64 %index195, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.aq, label %middle.block199, label %vector.body194, !llvm.loop !25

middle.block199:                                  ; preds = %vector.body194
  %cmp.n200 = icmp eq i64 %1, %n.vec193
  br i1 %cmp.n200, label %.loopexit, label %.lr.ph113.preheader206

.lr.ph113.preheader206:                           ; preds = %.lr.ph113.preheader, %middle.block199
  %.064111.ph = phi i64 [ 0, %.lr.ph113.preheader ], [ %n.vec193, %middle.block199 ] ; 3 uses
  %xtraiter224 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph113.prol.loopexit, label %.lr.ph113.prol

.lr.ph113.prol:                                   ; preds = %.lr.ph113.preheader206, %.lr.ph113.prol
  %.064111.prol = phi i64 [ %i.au, %.lr.ph113.prol ], [ %.064111.ph, %.lr.ph113.preheader206 ] ; 3 uses
  %prol.iter226 = phi i64 [ %prol.iter226.next, %.lr.ph113.prol ], [ 0, %.lr.ph113.preheader206 ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.064111.prol
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.064111.prol
  store i32 %i.as, ptr %i.at, align 4, !tbaa !8
  %i.au = add nuw i64 %.064111.prol, 1            ; 2 uses
  %prol.iter226.next = add i64 %prol.iter226, 1   ; 2 uses
  %prol.iter226.cmp.not = icmp eq i64 %prol.iter226.next, %xtraiter224
  br i1 %prol.iter226.cmp.not, label %.lr.ph113.prol.loopexit, label %.lr.ph113.prol, !llvm.loop !26

.lr.ph113.prol.loopexit:                          ; preds = %.lr.ph113.prol, %.lr.ph113.preheader206
  %.064111.unr = phi i64 [ %.064111.ph, %.lr.ph113.preheader206 ], [ %i.au, %.lr.ph113.prol ]
  %i.av = sub i64 %.064111.ph, %1
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.prol.loopexit, %.lr.ph113
  %.064111 = phi i64 [ %i.bm, %.lr.ph113 ], [ %.064111.unr, %.lr.ph113.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.064111
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.064111
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !8
  %i.ba = add nuw i64 %.064111, 1                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ba
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !8
  %i.be = add nuw i64 %.064111, 2                 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.be
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !8
  %i.bi = add nuw i64 %.064111, 3                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bi
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !8
  %i.bm = add nuw i64 %.064111, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bm, %1
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph113, !llvm.loop !28

bb.i:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.bn, ptr %6, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4lean13mpn_to_stringEPKjmPcm:bb.a

_ZN4lean10mpn_bufferC2EmRKj.exit.thread:          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 16, ptr %i.l, align 8, !tbaa !34
  br label %.lr.ph.i53.preheader

.lr.ph.i:                                         ; preds = %bb.c, %._crit_edge.i.i
  %.pre.i.i = phi ptr [ %.pre.i8.i, %._crit_edge.i.i ], [ %i.g, %bb.c ] ; 7 uses
  %i.m = phi i64 [ %i.v, %._crit_edge.i.i ], [ 16, %bb.c ] ; 6 uses
  %i.n = phi i64 [ %i.y, %._crit_edge.i.i ], [ 0, %bb.c ] ; 6 uses
  %.06.i = phi i64 [ %i.z, %._crit_edge.i.i ], [ 0, %bb.c ]
  %.not.i.i = icmp ult i64 %i.n, %i.m
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = shl i64 %i.m, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #16
          to label %.noexc.i unwind label %bb.i   ; 4 uses

.noexc.i:                                         ; preds = %bb.d
  %i.q = icmp ugt i64 %i.n, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !77

bb.e:                                             ; preds = %.noexc.i
  %.idx.i.i.i.i = shl nuw nsw i64 %i.n, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %.pre.i.i, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc.i
  %i.r = icmp eq i64 %i.n, 1
  br i1 %i.r, label %bb.g, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %.pre.i.i, align 4, !tbaa !8
  store i32 %i.s, ptr %i.p, align 4, !tbaa !8
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i
  %i.t = shl i64 %i.m, 2
  call void @_ZdaPvm(ptr noundef %.pre.i.i, i64 noundef %i.t) #14
  %.pre2.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !33
  br label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i

_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i:        ; preds = %bb.h, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i
  %.pre2.i.i = phi i64 [ %i.n, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i ], [ %.pre2.pre.i.i, %bb.h ]
  %i.u = shl i64 %i.m, 1                          ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !29
  store i64 %i.u, ptr %i.i, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i, %.lr.ph.i
  %.pre.i8.i = phi ptr [ %i.p, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i ], [ %.pre.i.i, %.lr.ph.i ] ; 2 uses
  %i.v = phi i64 [ %i.u, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i ], [ %i.m, %.lr.ph.i ]
  %i.w = phi i64 [ %.pre2.i.i, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.pre.i8.i, i64 %i.w
  store i32 0, ptr %i.x, align 4, !tbaa !8
  %i.y = add i64 %i.w, 1                          ; 2 uses
  store i64 %i.y, ptr %i.h, align 8, !tbaa !33
  %i.z = add nuw i64 %.06.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %1
  br i1 %exitcond.not.i, label %_ZN4lean10mpn_bufferC2EmRKj.exit, label %.lr.ph.i, !llvm.loop !78

bb.i:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.g
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = shl i64 %i.m, 2
  call void @_ZdaPvm(ptr noundef %.pre.i.i, i64 noundef %i.ab) #14
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %bb.j, %_ZN4lean6bufferIjLm16EED2Ev.exit103
  %common.resume.op = phi { ptr, i32 } [ %.pn45.pn.pn, %_ZN4lean6bufferIjLm16EED2Ev.exit103 ], [ %i.aa, %bb.j ], [ %i.aa, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4lean10mpn_bufferC2EmRKj.exit:                 ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 16, ptr %i.ae, align 8, !tbaa !34
  %.not.i52 = icmp eq i64 %1, -1
  br i1 %.not.i52, label %._crit_edge.i.i82.thread, label %.lr.ph.i53.preheader

._crit_edge.i.i82.thread:                         ; preds = %_ZN4lean10mpn_bufferC2EmRKj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 16, ptr %i.ah, align 8, !tbaa !34
  store i32 0, ptr %i.af, align 8, !tbaa !8
  store i64 1, ptr %i.ag, align 8, !tbaa !33
  br label %.lr.ph

.lr.ph.i53.preheader:                             ; preds = %_ZN4lean10mpn_bufferC2EmRKj.exit.thread, %_ZN4lean10mpn_bufferC2EmRKj.exit
  %i.ai = phi ptr [ %i.l, %_ZN4lean10mpn_bufferC2EmRKj.exit.thread ], [ %i.ae, %_ZN4lean10mpn_bufferC2EmRKj.exit ] ; 3 uses
  %i.aj = phi ptr [ %i.k, %_ZN4lean10mpn_bufferC2EmRKj.exit.thread ], [ %i.ad, %_ZN4lean10mpn_bufferC2EmRKj.exit ] ; 4 uses
  %i.ak = phi ptr [ %i.j, %_ZN4lean10mpn_bufferC2EmRKj.exit.thread ], [ %i.ac, %_ZN4lean10mpn_bufferC2EmRKj.exit ] ; 5 uses
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.preheader, %._crit_edge.i.i65
  %.pre.i.i54 = phi ptr [ %.pre.i8.i66, %._crit_edge.i.i65 ], [ %i.ak, %.lr.ph.i53.preheader ] ; 7 uses
  %i.al = phi i64 [ %i.au, %._crit_edge.i.i65 ], [ 16, %.lr.ph.i53.preheader ] ; 6 uses
  %i.am = phi i64 [ %i.ax, %._crit_edge.i.i65 ], [ 0, %.lr.ph.i53.preheader ] ; 6 uses
  %.06.i55 = phi i64 [ %i.ay, %._crit_edge.i.i65 ], [ 0, %.lr.ph.i53.preheader ] ; 2 uses
  %.not.i.i56 = icmp ult i64 %i.am, %i.al
  br i1 %.not.i.i56, label %._crit_edge.i.i65, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i53
  %i.an = shl i64 %i.al, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #16
          to label %.noexc.i59 unwind label %bb.p ; 4 uses

.noexc.i59:                                       ; preds = %bb.k
  %i.ap = icmp ugt i64 %i.am, 1
  br i1 %i.ap, label %bb.l, label %bb.m, !prof !77

bb.l:                                             ; preds = %.noexc.i59
  %.idx.i.i.i.i68 = shl nuw nsw i64 %i.am, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %.pre.i.i54, i64 %.idx.i.i.i.i68, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60

bb.m:                                             ; preds = %.noexc.i59
  %i.aq = icmp eq i64 %i.am, 1
  br i1 %i.aq, label %bb.n, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %.pre.i.i54, align 4, !tbaa !8
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !8
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60: ; preds = %bb.n, %bb.m, %bb.l
  %.not.i.i.i.i.i.i61 = icmp eq ptr %.pre.i.i54, %i.ak
  br i1 %.not.i.i.i.i.i.i61, label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63, label %bb.o

bb.o:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60
  %i.as = shl i64 %i.al, 2
  call void @_ZdaPvm(ptr noundef %.pre.i.i54, i64 noundef %i.as) #14
  %.pre2.pre.i.i62 = load i64, ptr %i.aj, align 8, !tbaa !33
  br label %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63

_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63:      ; preds = %bb.o, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60
  %.pre2.i.i64 = phi i64 [ %i.am, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i.i.i.i60 ], [ %.pre2.pre.i.i62, %bb.o ]
  %i.at = shl i64 %i.al, 1                        ; 2 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !29
  store i64 %i.at, ptr %i.ai, align 8, !tbaa !34
  br label %._crit_edge.i.i65

._crit_edge.i.i65:                                ; preds = %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63, %.lr.ph.i53
  %.pre.i8.i66 = phi ptr [ %i.ao, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63 ], [ %.pre.i.i54, %.lr.ph.i53 ] ; 4 uses
  %i.au = phi i64 [ %i.at, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63 ], [ %i.al, %.lr.ph.i53 ]
  %i.av = phi i64 [ %.pre2.i.i64, %_ZN4lean6bufferIjLm16EE6expandEv.exit.i.i63 ], [ %i.am, %.lr.ph.i53 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i8.i66, i64 %i.av
  store i32 0, ptr %i.aw, align 4, !tbaa !8
  %i.ax = add i64 %i.av, 1                        ; 2 uses
  store i64 %i.ax, ptr %i.aj, align 8, !tbaa !33
  %i.ay = add nuw i64 %.06.i55, 1
  %exitcond.not.i67 = icmp eq i64 %.06.i55, %1
  br i1 %exitcond.not.i67, label %._crit_edge.i.i82, label %.lr.ph.i53, !llvm.loop !78

bb.p:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %.pre.i.i54, %i.ak
  br i1 %.not.i.i.i.i57, label %.body, label %.body.sink.split

._crit_edge.i.i82:                                ; preds = %._crit_edge.i.i65
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  store ptr %i.ba, ptr %6, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 16, ptr %i.bc, align 8, !tbaa !34
  store i32 0, ptr %i.ba, align 8, !tbaa !8
  store i64 1, ptr %i.bb, align 8, !tbaa !33
  br i1 %.not.i, label %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i82.thread, %._crit_edge.i.i82
  %i.bd = phi ptr [ %i.ah, %._crit_edge.i.i82.thread ], [ %i.bc, %._crit_edge.i.i82 ] ; 2 uses
  %i.be = phi ptr [ %i.ag, %._crit_edge.i.i82.thread ], [ %i.bb, %._crit_edge.i.i82 ] ; 2 uses
  %i.bf = phi ptr [ %i.af, %._crit_edge.i.i82.thread ], [ %i.ba, %._crit_edge.i.i82 ] ; 2 uses
  %i.bg = phi ptr [ %i.ac, %._crit_edge.i.i82.thread ], [ %.pre.i8.i66, %._crit_edge.i.i82 ] ; 2 uses
  %i.bh = phi ptr [ %i.ac, %._crit_edge.i.i82.thread ], [ %i.ak, %._crit_edge.i.i82 ] ; 2 uses
  %i.bi = phi ptr [ %i.ad, %._crit_edge.i.i82.thread ], [ %i.aj, %._crit_edge.i.i82 ] ; 2 uses
  %i.bj = phi ptr [ %i.ae, %._crit_edge.i.i82.thread ], [ %i.ai, %._crit_edge.i.i82 ] ; 2 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !29    ; 3 uses
  %min.iters.check = icmp ult i64 %1, 20
  br i1 %min.iters.check, label %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %i.bm = add i64 %1, -1                          ; 2 uses
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = icmp eq i64 %i.bn, 4294967295
  %i.bp = icmp ugt i64 %i.bm, 4294967295
  %i.bq = or i1 %i.bo, %i.bp
  %i.br = sub i64 %i.a, %i.bl
  %diff.check = icmp ugt i64 %i.br, -32
  %or.cond = select i1 %i.bq, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %1, 8589934584                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load = load <4 x i32>, ptr %i.bs, align 4, !tbaa !8
  %wide.load204 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> %wide.load, ptr %i.bu, align 4, !tbaa !8
  store <4 x i32> %wide.load204, ptr %i.bv, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge, label %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader

_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader:     ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %_ZN4lean10mpn_bufferC2EmRKj.exit88

_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge:    ; preds = %_ZN4lean10mpn_bufferC2EmRKj.exit88, %middle.block, %._crit_edge.i.i82
  %i.bx = phi ptr [ %i.bc, %._crit_edge.i.i82 ], [ %i.bd, %middle.block ], [ %i.bd, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ] ; 2 uses
  %i.by = phi ptr [ %i.bb, %._crit_edge.i.i82 ], [ %i.be, %middle.block ], [ %i.be, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ]
  %i.bz = phi ptr [ %i.ba, %._crit_edge.i.i82 ], [ %i.bf, %middle.block ], [ %i.bf, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ] ; 3 uses
  %i.ca = phi ptr [ %.pre.i8.i66, %._crit_edge.i.i82 ], [ %i.bg, %middle.block ], [ %i.bg, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ]
  %i.cb = phi ptr [ %i.ak, %._crit_edge.i.i82 ], [ %i.bh, %middle.block ], [ %i.bh, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ] ; 2 uses
  %i.cc = phi ptr [ %i.aj, %._crit_edge.i.i82 ], [ %i.bi, %middle.block ], [ %i.bi, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ]
  %i.cd = phi ptr [ %i.ai, %._crit_edge.i.i82 ], [ %i.bj, %middle.block ], [ %i.bj, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 10, ptr %i.c, align 4, !tbaa !8
  %.pre = load i64, ptr %i.h, align 8, !tbaa !33
  br label %bb.q

_ZN4lean10mpn_bufferC2EmRKj.exit88:               ; preds = %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader, %_ZN4lean10mpn_bufferC2EmRKj.exit88
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4lean10mpn_bufferC2EmRKj.exit88 ], [ %indvars.iv.ph, %_ZN4lean10mpn_bufferC2EmRKj.exit88.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %7 = and i64 %indvars.iv.next, 4294967295
  %i.ch = icmp ugt i64 %1, %7
  br i1 %i.ch, label %_ZN4lean10mpn_bufferC2EmRKj.exit88, label %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge, !llvm.loop !80

bb.q:                                             ; preds = %.critedge4, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge
  %i.ci = phi i32 [ undef, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.eh, %.critedge4 ]
  %i.cj = phi ptr [ %i.ca, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %.val50, %.critedge4 ]
  %i.ck = phi ptr [ %i.bz, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.cq, %.critedge4 ] ; 2 uses
  %i.cl = phi i64 [ %.pre, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.ev, %.critedge4 ] ; 2 uses
  %.034 = phi i64 [ 0, %_ZN4lean10mpn_bufferC2EmRKj.exit88._crit_edge ], [ %i.ek, %.critedge4 ] ; 4 uses
  switch i64 %i.cl, label %._crit_edge150 [
    i64 0, label %.critedge
    i64 1, label %bb.r
  ]

._crit_edge150:                                   ; preds = %bb.q
  %.pre151 = load ptr, ptr %4, align 8, !tbaa !29
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %.critedge, label %bb.s

bb.s:                                             ; preds = %._crit_edge150, %bb.r
  %i.co = phi ptr [ %.pre151, %._crit_edge150 ], [ %i.cm, %bb.r ]
  %i.cp = invoke fastcc noundef i64 @_ZN4leanL13div_normalizeEPKjmS1_mRNS_10mpn_bufferES3_(ptr noundef nonnull %i.co, i64 noundef %i.cl, ptr noundef nonnull %i.c, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %6)
          to label %bb.t unwind label %.loopexit  ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8  ; 2 uses
  %i.cs = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  %.val49 = load i64, ptr %i.cc, align 8, !tbaa !33 ; 2 uses
  %.01.i = add i64 %.val49, -1                    ; 2 uses
  %.not2.i = icmp eq i64 %.01.i, 0
  br i1 %.not2.i, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %bb.t
  %i.ct = zext i32 %i.cr to i64                   ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i89
  %.04.i = phi i64 [ %.01.i, %.lr.ph.i89 ], [ %.0.i, %bb.y ] ; 3 uses
  %.0.in3.i = phi i64 [ %.val49, %.lr.ph.i89 ], [ %.04.i, %bb.y ]
  %i.cu = and i64 %.04.i, 4294967295
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.cu ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw i64 %i.cx, 32
  %i.cz = add i64 %.0.in3.i, -2                   ; 2 uses
  %i.da = and i64 %i.cz, 4294967295
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.da ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = zext i32 %i.dc to i64
  %i.de = or disjoint i64 %i.cy, %i.dd            ; 3 uses
  %i.df = udiv i64 %i.de, %i.ct                   ; 3 uses
  %.recomposed = urem i64 %i.de, %i.ct            ; 2 uses
  %i.dg = icmp ugt i64 %i.df, 4294967295
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dh = call ptr @__cxa_allocate_exception(i64 40) #14 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 0, ptr %i.dk, align 8, !tbaa !38
  store i8 0, ptr %i.dj, align 8, !tbaa !40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.dh, align 8, !tbaa !41
  invoke void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #15
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dl = mul nuw i64 %i.df, %i.ct
  %i.dm = icmp ugt i64 %i.dl, %i.de
  %i.dn = trunc i64 %.recomposed to i32
  store i32 %i.dn, ptr %i.db, align 4, !tbaa !8
  %i.do = lshr i64 %.recomposed, 32
  %i.dp = trunc nuw i64 %i.do to i32
  store i32 %i.dp, ptr %i.cv, align 4, !tbaa !8
  %i.dq = trunc nuw i64 %i.df to i32              ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cz ; 2 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !8
  br i1 %i.dm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ds = add i32 %i.dq, -1
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !8
  %i.dt = load i32, ptr %i.db, align 4, !tbaa !8
  %i.du = add i32 %i.dt, %i.cr
  store i32 %i.du, ptr %i.cv, align 4, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i = add i64 %.04.i, -1                      ; 2 uses
  %.not.i90 = icmp eq i64 %.0.i, 0
  br i1 %.not.i90, label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit, label %bb.u, !llvm.loop !43

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit: ; preds = %bb.y
  %.val50.pre = load ptr, ptr %5, align 8
  br label %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit

_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit:        ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit, %bb.t
  %.val50 = phi ptr [ %.val50.pre, %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit.loopexit ], [ %.val, %bb.t ] ; 3 uses
  %.val51 = load i64, ptr %i.by, align 8          ; 4 uses
  %i.dv = icmp eq i64 %i.cp, 0
  br i1 %i.dv, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %i.dw = add i64 %.val51, 4294967295
  %.pre.i = trunc i64 %i.cp to i32
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = lshr i32 %i.dz, %.pre.i
  %i.eb = getelementptr [4 x i8], ptr %i.b, i64 %.val51
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4
  store i32 %i.ea, ptr %i.ec, align 4, !tbaa !8
  %.pre153 = load i32, ptr %i.b, align 4, !tbaa !8
  br label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit

.preheader.i:                                     ; preds = %_ZN4leanL5div_1ERNS_10mpn_bufferEjPj.exit
  %.not5.i = icmp eq i64 %.val51, 0
  br i1 %.not5.i, label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, label %.lr.ph4.i.preheader

.lr.ph4.i.preheader:                              ; preds = %.preheader.i
  %i.ed = add i64 %.val51, 4294967295
  %i.ee = and i64 %i.ed, 4294967295
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8  ; 2 uses
  store i32 %i.eg, ptr %i.b, align 4, !tbaa !8
  br label %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit

_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit: ; preds = %.lr.ph4.i.preheader, %.preheader1.i, %.preheader.i
  %i.eh = phi i32 [ %i.eg, %.lr.ph4.i.preheader ], [ %.pre153, %.preheader1.i ], [ %i.ci, %.preheader.i ] ; 2 uses
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = add i8 %i.ei, 48
  %i.ek = add i64 %.034, 1
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %.034
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !40
  %.pr = load i64, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.em = icmp eq i64 %.pr, 0
  br i1 %i.em, label %.critedge4, label %.lr.ph131

.lr.ph131:                                        ; preds = %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit, %bb.z
  %i.en = phi i64 [ %i.es, %bb.z ], [ %.pr, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit ] ; 3 uses
  %i.eo = getelementptr [4 x i8], ptr %i.cs, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !8
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.z, label %.critedge4

bb.z:                                             ; preds = %.lr.ph131
  %i.es = add i64 %i.en, -1                       ; 3 uses
  store i64 %i.es, ptr %i.h, align 8, !tbaa !33
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.critedge4, label %.lr.ph131, !llvm.loop !81

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.eu = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %i.eu, %i.bz
  br i1 %.not.i.i.i98, label %.body86, label %bb.ae

.critedge4:                                       ; preds = %.lr.ph131, %bb.z, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit
  %i.ev = phi i64 [ 0, %_ZN4leanL15div_unnormalizeERNS_10mpn_bufferES1_mPj.exit ], [ %i.en, %.lr.ph131 ], [ 0, %bb.z ]
  br label %bb.q, !llvm.loop !82

.critedge:                                        ; preds = %bb.q, %bb.r
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %.034
  store i8 0, ptr %i.ew, align 1, !tbaa !40
  %i.ex = add i64 %.034, -1                       ; 5 uses
  %i.ey = lshr i64 %i.ex, 1                       ; 2 uses
  %i.ez = and i64 %i.ex, 1                        ; 2 uses
  %i.fa = add nuw i64 %i.ey, %i.ez                ; 4 uses
  %.not136 = icmp eq i64 %i.fa, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.critedge
  %i.fb = add nsw i64 %i.ey, -1
  %xtraiter = and i64 %i.fa, 1
  %i.fc = sub nsw i64 0, %i.ez
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph134.epil.preheader, label %.lr.ph134.preheader.new
end_hunk_1
