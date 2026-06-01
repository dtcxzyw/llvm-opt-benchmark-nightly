inline.NumInlined: 29
inline.NumDeleted: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.anon = type { ptr, ptr }
%"struct.heap::base::Stack::Segment" = type { ptr, ptr }
%"class.heap::base::SuspendTagCheckingScope" = type { i8 }

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"0u == reinterpret_cast<uintptr_t>(segment.top) & (kMinStackAlignment - 1)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"(segment.top) != nullptr\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"(segment.start) != nullptr\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"segment.start >= segment.top\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"0u == reinterpret_cast<uintptr_t>(segment.start) & (kMinStackAlignment - 1)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4heap4base5Stack9IsOnStackEPKv(ptr noundef readnone captures(address) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN2v84base5Stack23GetCurrentStackPositionEv() #7
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp ult ptr %0, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZN2v84base5Stack22GetStackStartUncheckedEv() #7
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = icmp ule ptr %0, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @_ZN2v84base5Stack23GetCurrentStackPositionEv() local_unnamed_addr #2

declare i64 @_ZN2v84base5Stack22GetStackStartUncheckedEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4heap4base5Stack25IteratePointersForTestingEPNS0_12StackVisitorE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.a, align 8
  call void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZNS1_25IteratePointersForTestingEPNS0_12StackVisitorEE3$_0EEvPS1_PvPKv")
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.heap::base::Stack::Segment", align 16 ; 4 uses
  %3 = alloca %"class.heap::base::SuspendTagCheckingScope", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load <2 x ptr>, ptr %0, align 8
  store <2 x ptr> %i.a, ptr %2, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4heap4base23SuspendTagCheckingScopeC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #7
  call fastcc void @_ZN4heap4base12_GLOBAL__N_122IteratePointersInStackEPNS0_12StackVisitorERKNS0_5Stack7SegmentE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %i.c(ptr noundef %1) #7, !inline_history !5
  br label %_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE.exit

_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE.exit: ; preds = %bb.a, %bb.b
  call void @_ZN4heap4base23SuspendTagCheckingScopeD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 3 uses
  %5 = alloca %"class.heap::base::SuspendTagCheckingScope", align 1 ; 4 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @_ZN4heap4base23SuspendTagCheckingScopeC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #7
  call fastcc void @_ZN4heap4base12_GLOBAL__N_122IteratePointersInStackEPNS0_12StackVisitorERKNS0_5Stack7SegmentE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %i.c(ptr noundef %1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN4heap4base23SuspendTagCheckingScopeD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4heap4base5Stack37IteratePointersFromAddressUntilMarkerEPNS0_12StackVisitorEPKv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 5 uses
  %4 = alloca %"class.heap::base::SuspendTagCheckingScope", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %2, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @_ZN4heap4base23SuspendTagCheckingScopeC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #7
  call fastcc void @_ZN4heap4base12_GLOBAL__N_122IteratePointersInStackEPNS0_12StackVisitorERKNS0_5Stack7SegmentE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %i.e(ptr noundef %1) #7, !inline_history !5
  br label %_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE.exit

_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE.exit: ; preds = %bb.a, %bb.b
  call void @_ZN4heap4base23SuspendTagCheckingScopeD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4heap4base23SuspendTagCheckingScopeC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4heap4base12_GLOBAL__N_122IteratePointersInStackEPNS0_12StackVisitorERKNS0_5Stack7SegmentE(ptr noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 5 uses
  %.not17 = icmp eq ptr %i.c, null
  br i1 %.not17, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not18 = icmp ult ptr %i.c, %i.b
  br i1 %.not18, label %bb.f, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.preheader, label %bb.j, !prof !7

.preheader:                                       ; preds = %bb.i
  %i.j = icmp ult ptr %i.b, %i.c
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #8
  unreachable

._crit_edge:                                      ; preds = %bb.l, %.preheader
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.k = phi ptr [ %i.q, %bb.l ], [ %i.c, %.preheader ]
  %.019 = phi ptr [ %i.r, %bb.l ], [ %i.b, %.preheader ] ; 2 uses
  %i.l = load ptr, ptr %.019, align 8             ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.l) #7
  %.pre = load ptr, ptr %1, align 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %i.q = phi ptr [ %i.k, %.lr.ph ], [ %.pre, %bb.k ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.q
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: nounwind
declare void @_ZN4heap4base23SuspendTagCheckingScopeD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4heap4base5Stack23IterateBackgroundStacksEPNS0_12StackVisitorE(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.heap::base::SuspendTagCheckingScope", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4heap4base23SuspendTagCheckingScopeC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_ZN4heap4base23SuspendTagCheckingScopeD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.010.013 = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.013, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.013, i64 40
  call fastcc void @_ZN4heap4base12_GLOBAL__N_122IteratePointersInStackEPNS0_12StackVisitorERKNS0_5Stack7SegmentE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.k = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.013) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden void @_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @PushAllRegistersAndIterateStack(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #7
  ret void
}

declare void @PushAllRegistersAndIterateStack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZNS1_25IteratePointersForTestingEPNS0_12StackVisitorEE3$_0EEvPS1_PvPKv"(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.heap::base::SuspendTagCheckingScope", align 1 ; 4 uses
  %4 = alloca %"struct.heap::base::Stack::Segment", align 16 ; 4 uses
  %5 = alloca %"class.heap::base::SuspendTagCheckingScope", align 1 ; 4 uses
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.e = load <2 x ptr>, ptr %i.b, align 8
  store <2 x ptr> %i.e, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @_ZN4heap4base23SuspendTagCheckingScopeC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #7
  call fastcc void @_ZN4heap4base12_GLOBAL__N_122IteratePointersInStackEPNS0_12StackVisitorERKNS0_5Stack7SegmentE(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %i.g(ptr noundef %i.d) #7, !inline_history !10
  br label %_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE.exit.i

_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE.exit.i: ; preds = %bb.b, %bb.a
  call void @_ZN4heap4base23SuspendTagCheckingScopeD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.h = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4heap4base23SuspendTagCheckingScopeC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #7
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %"_ZZN4heap4base5Stack25IteratePointersForTestingEPNS0_12StackVisitorEENK3$_0clEv.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE.exit.i, %bb.d
  %.sroa.010.013.i.i = phi ptr [ %i.s, %bb.d ], [ %i.j, %_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE.exit.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 7
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %.lr.ph.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i, i64 40
  call fastcc void @_ZN4heap4base12_GLOBAL__N_122IteratePointersInStackEPNS0_12StackVisitorERKNS0_5Stack7SegmentE(ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.s = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.013.i.i) #9 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.k
  br i1 %i.t, label %"_ZZN4heap4base5Stack25IteratePointersForTestingEPNS0_12StackVisitorEENK3$_0clEv.exit", label %.lr.ph.i.i

"_ZZN4heap4base5Stack25IteratePointersForTestingEPNS0_12StackVisitorEENK3$_0clEv.exit": ; preds = %bb.d, %_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE.exit.i
  call void @_ZN4heap4base23SuspendTagCheckingScopeD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  store <2 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{ptr @_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{null, ptr @_ZNK4heap4base5Stack26IteratePointersUntilMarkerEPNS0_12StackVisitorE, ptr @_ZNK4heap4base5Stack24IteratePointersInSegmentEPNS0_12StackVisitorENS1_7SegmentE}
end_hunk_0
