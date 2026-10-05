Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Sorting?download=true
inline.NumInlined: 102
inline.NumDeleted: 55
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZN6hermes2vm9SortModelD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6hermes2vm9SortModelD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6hermes2vm9SortModelD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define hidden void @_ZN6hermes2vm9SortModelD0Ev(ptr nofree noundef nonnull readnone align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #9
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm9quickSortEPNS0_9SortModelEjj(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  %.not = icmp ult i32 %1, %2
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = sub nuw i32 %2, %1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.b = zext i32 %i.a to i64                     ; 6 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #11 ; 14 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !23
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.g = getelementptr i8, ptr %i.d, i64 4        ; 3 uses
  %i.h = add nsw i64 %i.b, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.b
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit:               ; preds = %bb.b, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.j, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.g, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.k, align 8, !tbaa !24
  %.not24 = icmp eq i32 %2, %1
  br i1 %.not24, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %vec.ind, ptr %i.l, align 4, !tbaa !12
  store <4 x i32> %step.add, ptr %i.m, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.o = icmp ugt i32 %i.a, 6
  br i1 %i.o, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader40 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.q = trunc nuw i64 %indvars.iv to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit, %._crit_edge
  %.02439.i = add nuw i32 %1, 1                   ; 2 uses
  %.not40.i = icmp eq i32 %.02439.i, %2
  br i1 %.not40.i, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.thread, %.critedge.i
  %.02441.i = phi i32 [ %.024.i, %.critedge.i ], [ %.02439.i, %._crit_edge.thread ] ; 3 uses
  %.not2736.i = icmp eq i32 %.02441.i, %1
  br i1 %.not2736.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %.02337.i = phi i32 [ %i.r, %bb.e ], [ %.02441.i, %.preheader.i ] ; 5 uses
  %i.r = add i32 %.02337.i, -1                    ; 6 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i, i32 noundef %i.r) #10, !inline_history !0 ; 3 uses
  %i.w = and i64 %i.v, 4294967295
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp ult i64 %i.v, 4294967296
  br i1 %.not.i.i, label %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i, label %.split

.split:                                           ; preds = %bb.c
  %i.y = icmp slt i64 %i.v, 0
  br i1 %i.y, label %bb.d, label %.critedge.i

_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i: ; preds = %bb.c
  %i.z = zext i32 %.02337.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ac = zext i32 %i.r to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = icmp ult i32 %i.ab, %i.ae
  br i1 %i.af, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.split, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i
  %i.ag = load ptr, ptr %0, align 8, !tbaa !19
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.02337.i, i32 noundef %i.r) #10, !inline_history !1
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = zext i32 %.02337.i to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ak ; 2 uses
  %i.am = zext i32 %i.r to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !12
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !12
  store i32 %i.ap, ptr %i.al, align 4, !tbaa !12
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !12
  %.not27.i = icmp eq i32 %i.r, %1
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2

.critedge.i:                                      ; preds = %.split, %bb.e, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit.i, %.preheader.i
  %.024.i = add i32 %.02441.i, 1                  ; 2 uses
  %.not.i = icmp eq i32 %.024.i, %2
  br i1 %.not.i, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread, label %.preheader.i, !llvm.loop !3

_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit: ; preds = %._crit_edge
  %i.aq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = xor i32 %i.ar, 62
  %i.at = add i32 %2, -1
  %i.au = call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.as, i32 noundef %1, i32 noundef %i.at) ; 2 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread

_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread: ; preds = %.critedge.i, %.lr.ph.i, %bb.d, %._crit_edge.thread, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit
  %.01835 = phi i32 [ %i.au, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit ], [ 0, %.lr.ph.i ], [ 1, %._crit_edge.thread ], [ 0, %bb.d ], [ 1, %.critedge.i ]
  %i.av = phi ptr [ %.pre, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit ], [ %i.d, %.lr.ph.i ], [ %i.d, %._crit_edge.thread ], [ %i.d, %bb.d ], [ %i.d, %.critedge.i ] ; 2 uses
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #12
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread
  %.01836 = phi i32 [ %i.au, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit ], [ %.01835, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.1 = phi i32 [ %.01836, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN6hermes2vm12_GLOBAL__N_111doQuickSortEPNS0_9SortModelERSt6vectorIjSaIjEEijj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136, %bb.a
  %.090.lcssa = phi i32 [ %4, %bb.a ], [ %.292, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136 ]
  %.087.lcssa = phi i32 [ %3, %bb.a ], [ %.289, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136 ] ; 10 uses
  %i.b = add i32 %.090.lcssa, 1                   ; 4 uses
  %i.c = sub i32 %i.b, %.087.lcssa                ; 2 uses
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %._crit_edge
  %i.e = add i32 %i.c, -2
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %.087.lcssa
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %i.h = tail call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_111heapFixDownEPNS0_9SortModelERSt6vectorIjSaIjEEjjj(ptr noundef %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i32 noundef %.087.lcssa, i32 noundef %.0.i, i32 noundef %i.b)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %.0.i, -1
  %.not.i = icmp eq i32 %.0.i, %.087.lcssa
  br i1 %.not.i, label %.preheader.i, label %bb.c, !llvm.loop !27

.preheader.i:                                     ; preds = %bb.d
  %i.k = zext i32 %.087.lcssa to i64
  %i.l = sub i32 %i.b, %.087.lcssa
  %i.m = icmp ugt i32 %i.l, 1
  br i1 %i.m, label %.lr.ph372, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit

bb.e:                                             ; preds = %bb.f
  %i.n = sub i32 %i.p, %.087.lcssa
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph372, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, !llvm.loop !28

.lr.ph372:                                        ; preds = %.preheader.i, %bb.e
  %.024.i371 = phi i32 [ %i.p, %bb.e ], [ %i.b, %.preheader.i ]
  %i.p = add i32 %.024.i371, -1                   ; 5 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !19
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.087.lcssa, i32 noundef %i.p) #10, !inline_history !29
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph372
  %i.u = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.k ; 2 uses
  %i.w = zext i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.v, align 4, !tbaa !12
  %i.z = load i32, ptr %i.x, align 4, !tbaa !12
  store i32 %i.z, ptr %i.v, align 4, !tbaa !12
  store i32 %i.y, ptr %i.x, align 4, !tbaa !12
  %i.aa = tail call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_111heapFixDownEPNS0_9SortModelERSt6vectorIjSaIjEEjjj(ptr noundef nonnull %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i32 noundef %.087.lcssa, i32 noundef %.087.lcssa, i32 noundef %i.p)
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %._ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit.loopexit_crit_edge375, label %bb.e, !llvm.loop !28

.lr.ph:                                           ; preds = %bb.a, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136
  %.084229 = phi i32 [ %.286, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136 ], [ %2, %bb.a ] ; 4 uses
  %.087228 = phi i32 [ %.289, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136 ], [ %3, %bb.a ] ; 17 uses
  %.090227 = phi i32 [ %.292, %_ZN6hermes2vm12_GLOBAL__N_113insertionSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit136 ], [ %4, %bb.a ] ; 19 uses
  %i.ac = add i32 %.087228, 1                     ; 17 uses
  %i.ad = sub i32 %.090227, %.087228
  %i.ae = lshr i32 %i.ad, 1
  %i.af = add i32 %i.ae, %.087228                 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !19
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ac, i32 noundef %i.af) #10, !inline_history !4
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ak = zext i32 %i.ac to i64                   ; 10 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = zext i32 %i.af to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.am, align 4, !tbaa !12
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !12
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !12
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !12
  %i.ar = load ptr, ptr %0, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i64 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.090227, i32 noundef %i.ac) #10, !inline_history !5 ; 3 uses
  %i.av = and i64 %i.au, 4294967295
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i100 = icmp ult i64 %i.au, 4294967296
  br i1 %.not.i100, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp slt i64 %i.au, 0
  br label %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = zext i32 %.090227 to i64
  %i.az = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !12
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ak
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.be = icmp ult i32 %i.bb, %i.bd
  br label %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit

_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit: ; preds = %bb.j, %bb.i
  %i.bf = phi i1 [ %i.ax, %bb.i ], [ %i.be, %bb.j ]
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !19
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.090227, i32 noundef %i.ac) #10, !inline_history !4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %_ZN6hermes2vm12_GLOBAL__N_15_swapEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit102

_ZN6hermes2vm12_GLOBAL__N_15_swapEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit102: ; preds = %bb.k
  %i.bk = zext i32 %.090227 to i64
  %i.bl = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bk ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ak ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !12
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !12
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !12
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_15_swapEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit102, %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit
  %i.bq = load ptr, ptr %0, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ac, i32 noundef %.087228) #10, !inline_history !5 ; 3 uses
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZN6hermes2vm12_GLOBAL__N_18heapSortEPNS0_9SortModelERSt6vectorIjSaIjEEjj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i103 = icmp ult i64 %i.bt, 4294967296
  br i1 %.not.i103, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = icmp slt i64 %i.bt, 0
  br label %_ZN6hermes2vm12_GLOBAL__N_15_lessEPNS0_9SortModelERKSt6vectorIjSaIjEEjj.exit105

bb.o:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ak
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !12
  %i.ca = zext i32 %.087228 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !12
  %i.cd = icmp ult i32 %i.bz, %i.cc
end_hunk_0
