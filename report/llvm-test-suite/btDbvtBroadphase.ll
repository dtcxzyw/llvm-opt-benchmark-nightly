inline.NumInlined: 264
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE:bb.a
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i55 = phi i64 [ %indvars.iv.next.i.i.i56.3, %scalar.ph ], [ %indvars.iv.i.i.i55.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i55
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i.i55
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !54
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !54
  %indvars.iv.next.i.i.i56 = add nuw nsw i64 %indvars.iv.i.i.i55, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i56
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !54
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !54
  %indvars.iv.next.i.i.i56.1 = add nuw nsw i64 %indvars.iv.i.i.i55, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i56.1
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i56.1
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !54
  %indvars.iv.next.i.i.i56.2 = add nuw nsw i64 %indvars.iv.i.i.i55, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i56.2
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i56.2
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !54
  %indvars.iv.next.i.i.i56.3 = add nuw nsw i64 %indvars.iv.i.i.i55, 4 ; 2 uses
  %exitcond.not.i.i.i57.3 = icmp eq i64 %indvars.iv.next.i.i.i56.3, %wide.trip.count.i.i.i54
  br i1 %exitcond.not.i.i.i57.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49, label %scalar.ph, !llvm.loop !64

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bf)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 unwind label %bb.m

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49
  %.pre-phi = phi i64 [ %.pre, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge ], [ %wide.trip.count.i.i.i54, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ]
  %i.cm = phi ptr [ %i.bf, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge ], [ %i.bn, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ] ; 2 uses
  %.sroa.23.7 = phi i32 [ %.sroa.23.6, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i31._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60_crit_edge ], [ %i.bk, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.pre-phi
  %i.co = load ptr, ptr %i.y, align 8, !tbaa !54
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !54
  %i.cp = add nuw nsw i32 %.sroa.3.0, 1
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.l:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %3, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.g)
          to label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread unwind label %bb.m

_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread:      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60, %bb.l, %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.ct = phi ptr [ %i.cm, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 ], [ %i.b, %bb.l ], [ %i.b, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.b, %bb.f ], [ %i.b, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.3.1 = phi i32 [ %i.cp, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 ], [ %i.d, %bb.l ], [ %i.d, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.d, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.23.1 = phi i32 [ %.sroa.23.7, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit60 ], [ %.sroa.23.0, %bb.l ], [ %.sroa.23.0, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %.sroa.23.0, %bb.f ], [ %.sroa.23.0, %bb.e ], [ %.sroa.23.0, %bb.d ], [ %.sroa.23.0, %bb.c ], [ %.sroa.23.0, %bb.b ]
  %i.cu = icmp sgt i32 %.sroa.3.1, 0
  br i1 %i.cu, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ct)
  br label %bb.n

bb.m:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49, %bb.k, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i30, %bb.j, %bb.l
  %i.cv = phi ptr [ %i.bf, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i49 ], [ %i.bf, %bb.k ], [ %i.b, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i30 ], [ %i.b, %bb.j ], [ %i.b, %bb.l ]
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cv)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit65 unwind label %bb.o

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit65: ; preds = %bb.m
  resume { ptr, i32 } %i.cw

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit, %bb.a
  ret void

bb.o:                                             ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  tail call void @__clang_call_terminate(ptr %i.cy) #17
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(223) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39
  %i.c = icmp eq i32 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %. = select i1 %i.c, i64 72, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.j, ptr %i.k, align 8, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i32, ptr %i.a, align 8, !tbaa !39
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.n
  store ptr %i.j, ptr %i.o, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %i.p, ptr %i.q, align 8, !tbaa !25
  br label %_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit

_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit:      ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %1, ptr noundef %2)
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i8 1, ptr %i.w, align 2, !tbaa !17
  ret void
}

declare void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !35
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local void @_ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_(ptr noundef nonnull align 8 dereferenceable(223) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.BroadphaseRayTester, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV19BroadphaseRayTester, i64 16), ptr %6, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !67
  call void @_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef %i.c, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull %i.e, float noundef %i.g, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = load float, ptr %i.f, align 4, !tbaa !67
  call void @_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull %i.e, float noundef %i.j, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef %5, float noundef %6, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca [2 x %class.btVector3], align 16   ; 13 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit: ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 1024, i32 noundef 16) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.b, i8 0, i64 1016, i1 false), !tbaa !54
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
  %.sroa.3.0 = phi i32 [ %.sroa.3.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 11 uses
  %.sroa.12.0 = phi i32 [ %.sroa.12.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 128, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 8 uses
  %.sroa.1775.0 = phi ptr [ %.sroa.1775.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ %i.a, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 17 uses
  %.026 = phi i32 [ %.2, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 126, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 6 uses
  %.0 = phi i32 [ %.1, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread ], [ 1, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit ] ; 3 uses
  %.sroa.1775.0119 = ptrtoaddr ptr %.sroa.1775.0 to i64
  %i.l = add nsw i32 %.0, -1                      ; 6 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.sroa.1775.0, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54   ; 7 uses
  %i.p = load <2 x float>, ptr %i.o, align 4, !tbaa !55
  %i.q = load <2 x float>, ptr %7, align 4, !tbaa !55
  %i.r = fadd <2 x float> %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !55
  %i.u = load float, ptr %i.c, align 4, !tbaa !55
  %i.v = fadd float %i.t, %i.u
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.v, i64 0
  store <2 x float> %i.r, ptr %10, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.52.0..sroa_idx, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load <2 x float>, ptr %i.w, align 4, !tbaa !55
  %i.y = load <2 x float>, ptr %8, align 4, !tbaa !55
  %i.z = fadd <2 x float> %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !55
  %i.ac = load float, ptr %i.d, align 4, !tbaa !55
  %i.ad = fadd float %i.ab, %i.ac
  %.sroa.3.12.vec.insert.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  store <2 x float> %i.z, ptr %i.e, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i43, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !36
  %i.ae = load i32, ptr %5, align 4, !tbaa !4     ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 16, !tbaa !55
  %i.ai = load float, ptr %2, align 4, !tbaa !55  ; 2 uses
  %i.aj = fsub float %i.ah, %i.ai
  %i.ak = load float, ptr %4, align 4, !tbaa !55  ; 2 uses
  %i.al = fmul float %i.aj, %i.ak                 ; 3 uses
  %i.am = sub i32 1, %i.ae
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 16, !tbaa !55
  %i.aq = fsub float %i.ap, %i.ai
  %i.ar = fmul float %i.ak, %i.aq                 ; 3 uses
  %i.as = load i32, ptr %i.f, align 4, !tbaa !4   ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !55
  %i.ax = load float, ptr %i.g, align 4, !tbaa !55 ; 2 uses
  %i.ay = fsub float %i.aw, %i.ax
  %i.az = load float, ptr %i.h, align 4, !tbaa !55 ; 2 uses
  %i.ba = fmul float %i.ay, %i.az                 ; 3 uses
  %i.bb = sub i32 1, %i.as
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !55
  %i.bg = fsub float %i.bf, %i.ax
  %i.bh = fmul float %i.az, %i.bg                 ; 3 uses
  %i.bi = fcmp ogt float %i.al, %i.bh
  %i.bj = fcmp ogt float %i.ba, %i.ar
  %or.cond.i = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = fcmp ogt float %i.ba, %i.al
  %i.bl = select i1 %i.bk, float %i.ba, float %i.al ; 3 uses
  %i.bm = fcmp olt float %i.bh, %i.ar
  %.052.i = select i1 %i.bm, float %i.bh, float %i.ar ; 3 uses
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !4   ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load float, ptr %i.bq, align 8, !tbaa !55
  %i.bs = load float, ptr %i.j, align 4, !tbaa !55 ; 2 uses
  %i.bt = fsub float %i.br, %i.bs
  %i.bu = load float, ptr %i.k, align 4, !tbaa !55 ; 2 uses
  %i.bv = fmul float %i.bt, %i.bu                 ; 3 uses
  %i.bw = sub i32 1, %i.bn
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !55
  %i.cb = fsub float %i.ca, %i.bs
  %i.cc = fmul float %i.bu, %i.cb                 ; 3 uses
  %i.cd = fcmp ogt float %i.bl, %i.cc
  %i.ce = fcmp ogt float %i.bv, %.052.i
  %or.cond60.i = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond60.i, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit:    ; preds = %bb.c
  %i.cf = fcmp ogt float %i.bv, %i.bl
  %i.cg = select i1 %i.cf, float %i.bv, float %i.bl
  %i.ch = fcmp olt float %i.cc, %.052.i
  %.1.i = select i1 %i.ch, float %i.cc, float %.052.i
  %i.ci = fcmp olt float %i.cg, %6
  %i.cj = fcmp ogt float %.1.i, 0.000000e+00
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %bb.d, label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.d:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !36
  %.not96 = icmp eq ptr %i.cm, null
  br i1 %.not96, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = icmp sgt i32 %i.l, %.026
  br i1 %i.cn, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.co = shl nsw i32 %.sroa.3.0, 1               ; 7 uses
  %i.cp = icmp sgt i32 %i.co, %.sroa.3.0
  br i1 %i.cp, label %bb.g, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit63

bb.g:                                             ; preds = %bb.f
  %i.cq = icmp slt i32 %.sroa.12.0, %i.co
  br i1 %i.cq, label %11, label %.lr.ph.i46

11:                                               ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %.sroa.3.0, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %11
  %12 = sext i32 %i.co to i64
  %13 = shl nsw i64 %12, 3
  %i.cr = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %13, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i unwind label %bb.j

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i: ; preds = %bb.h, %11
  %.0.i.i.i = phi ptr [ null, %11 ], [ %i.cr, %bb.h ] ; 8 uses
  %wide.trip.count.i.i.i57 = zext i32 %.sroa.3.0 to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.3.0, 4
  %.0.i.i.i118 = ptrtoaddr ptr %.0.i.i.i to i64
  %i.cs = sub i64 %.sroa.1775.0119, %.0.i.i.i118
  %diff.check = icmp ugt i64 %i.cs, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i57, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1775.0, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !54
  %wide.load120 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <2 x ptr> %wide.load, ptr %i.ct, align 8, !tbaa !54
  store <2 x ptr> %wide.load120, ptr %i.cw, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i57
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i54.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i, %middle.block
  %indvars.iv.i.i.i58.ph = phi i64 [ 0, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i57, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i58.prol = phi i64 [ %indvars.iv.next.i.i.i59.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i58.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i58.prol
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1775.0, i64 %indvars.iv.i.i.i58.prol
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !54
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !54
  %indvars.iv.next.i.i.i59.prol = add nuw nsw i64 %indvars.iv.i.i.i58.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !70

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i58.unr = phi i64 [ %indvars.iv.i.i.i58.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i59.prol, %scalar.ph.prol ]
  %i.db = sub nsw i64 %indvars.iv.i.i.i58.ph, %wide.trip.count.i.i.i57
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i54.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i58 = phi i64 [ %indvars.iv.next.i.i.i59.3, %scalar.ph ], [ %indvars.iv.i.i.i58.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i58
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1775.0, i64 %indvars.iv.i.i.i58
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !54
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !54
  %indvars.iv.next.i.i.i59 = add nuw nsw i64 %indvars.iv.i.i.i58, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i59
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1775.0, i64 %indvars.iv.next.i.i.i59
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !54
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !54
  %indvars.iv.next.i.i.i59.1 = add nuw nsw i64 %indvars.iv.i.i.i58, 2 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i59.1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1775.0, i64 %indvars.iv.next.i.i.i59.1
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !54
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !54
  %indvars.iv.next.i.i.i59.2 = add nuw nsw i64 %indvars.iv.i.i.i58, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i59.2
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.1775.0, i64 %indvars.iv.next.i.i.i59.2
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !54
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !54
  %indvars.iv.next.i.i.i59.3 = add nuw nsw i64 %indvars.iv.i.i.i58, 4 ; 2 uses
  %exitcond.not.i.i.i60.3 = icmp eq i64 %indvars.iv.next.i.i.i59.3, %wide.trip.count.i.i.i57
  br i1 %exitcond.not.i.i.i60.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i54.loopexit, label %scalar.ph, !llvm.loop !71

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i54.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1775.0)
          to label %.lr.ph.i46 unwind label %bb.j

.lr.ph.i46:                                       ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i54.loopexit, %bb.g
  %.sroa.12.5 = phi i32 [ %.sroa.12.0, %bb.g ], [ %i.co, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i54.loopexit ]
  %.sroa.1775.6 = phi ptr [ %.sroa.1775.0, %bb.g ], [ %.0.i.i.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i54.loopexit ] ; 2 uses
  %i.dp = sext i32 %.sroa.3.0 to i64              ; 2 uses
  %wide.trip.count.i = sext i32 %i.co to i64
  %i.dq = shl nsw i64 %i.dp, 3
  %scevgep = getelementptr i8, ptr %.sroa.1775.6, i64 %i.dq
  %i.dr = sub nsw i64 %wide.trip.count.i, %i.dp
  %14 = shl nsw i64 %i.dr, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %14, i1 false), !tbaa !54
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit63

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit63: ; preds = %.lr.ph.i46, %bb.f
  %.sroa.12.6 = phi i32 [ %.sroa.12.0, %bb.f ], [ %.sroa.12.5, %.lr.ph.i46 ]
  %.sroa.1775.7 = phi ptr [ %.sroa.1775.0, %bb.f ], [ %.sroa.1775.6, %.lr.ph.i46 ]
  %i.ds = add nsw i32 %i.co, -2
  br label %bb.k

bb.i:                                             ; preds = %bb.l
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i54.loopexit, %bb.h
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit63, %bb.e
  %.sroa.3.1 = phi i32 [ %i.co, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit63 ], [ %.sroa.3.0, %bb.e ]
  %.sroa.12.1 = phi i32 [ %.sroa.12.6, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit63 ], [ %.sroa.12.0, %bb.e ]
  %.sroa.1775.1 = phi ptr [ %.sroa.1775.7, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit63 ], [ %.sroa.1775.0, %bb.e ] ; 3 uses
  %.127 = phi i32 [ %i.ds, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit63 ], [ %.026, %bb.e ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !36
  %i.dx = getelementptr inbounds [8 x i8], ptr %.sroa.1775.1, i64 %i.m
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !54
  %i.dy = load ptr, ptr %i.cl, align 8, !tbaa !36
  %i.dz = add nsw i32 %.0, 1
  %i.ea = sext i32 %.0 to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %.sroa.1775.1, i64 %i.ea
  store ptr %i.dy, ptr %i.eb, align 8, !tbaa !54
  br label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread

bb.l:                                             ; preds = %bb.d
  %i.ec = load ptr, ptr %9, align 8, !tbaa !8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %i.o)
          to label %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread unwind label %bb.i

_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread: ; preds = %bb.c, %bb.b, %bb.k, %bb.l, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
  %.sroa.3.2 = phi i32 [ %.sroa.3.1, %bb.k ], [ %.sroa.3.0, %bb.l ], [ %.sroa.3.0, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.sroa.3.0, %bb.b ], [ %.sroa.3.0, %bb.c ]
  %.sroa.12.2 = phi i32 [ %.sroa.12.1, %bb.k ], [ %.sroa.12.0, %bb.l ], [ %.sroa.12.0, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.sroa.12.0, %bb.b ], [ %.sroa.12.0, %bb.c ]
  %.sroa.1775.2 = phi ptr [ %.sroa.1775.1, %bb.k ], [ %.sroa.1775.0, %bb.l ], [ %.sroa.1775.0, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.sroa.1775.0, %bb.b ], [ %.sroa.1775.0, %bb.c ] ; 2 uses
  %.2 = phi i32 [ %.127, %bb.k ], [ %.026, %bb.l ], [ %.026, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %.026, %bb.b ], [ %.026, %bb.c ]
  %.1 = phi i32 [ %i.dz, %bb.k ], [ %i.l, %bb.l ], [ %i.l, %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit ], [ %i.l, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.not39 = icmp eq i32 %.1, 0
  br i1 %.not39, label %bb.m, label %bb.b

bb.m:                                             ; preds = %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1775.2)
  br label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

bb.n:                                             ; preds = %bb.i, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.i ], [ %i.du, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1775.0)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit68 unwind label %bb.o

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit68: ; preds = %bb.n
  resume { ptr, i32 } %.pn.pn

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %bb.m, %bb.a
  ret void

bb.o:                                             ; preds = %bb.n
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  tail call void @__clang_call_terminate(ptr %i.eg) #17
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6btDbvt8ICollideD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher(ptr noundef nonnull align 8 dereferenceable(223) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree readnone captures(none) %4) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.btDbvtAabbMm, align 4       ; 12 uses
  %6 = alloca %class.btVector3, align 8           ; 7 uses
  %7 = alloca %struct.btDbvtTreeCollider, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef %i.h)
  %i.i = call noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull %1)
  store ptr %i.i, ptr %i.g, align 8, !tbaa !43
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !72
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 8 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !55
  %i.p = load float, ptr %i.a, align 4, !tbaa !55
  %i.q = fcmp ugt float %i.o, %i.p
  br i1 %i.q, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !55
  %i.t = load float, ptr %5, align 4, !tbaa !55
  %i.u = fcmp ult float %i.s, %i.t
  br i1 %i.u, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !55
  %i.z = fcmp ugt float %i.w, %i.y
  br i1 %i.z, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !55
  %i.ae = fcmp ult float %i.ab, %i.ad
  br i1 %i.ae, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !55
  %i.aj = fcmp ugt float %i.ag, %i.ai
  br i1 %i.aj, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit

_Z9IntersectRK12btDbvtAabbMmS1_.exit:             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.al = load float, ptr %i.ak, align 4, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !55
  %i.ao = fcmp ult float %i.al, %i.an
  br i1 %i.ao, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aq = load float, ptr %2, align 4, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aw = load float, ptr %i.av, align 4, !tbaa !55 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.az = load float, ptr %i.ay, align 4, !tbaa !55
  %i.ba = fsub float %i.az, %i.aw
  %i.bb = fmul float %i.ba, 5.000000e-01
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !55 ; 2 uses
  %i.be = load <2 x float>, ptr %i.ap, align 4, !tbaa !55 ; 3 uses
  %i.bf = load <2 x float>, ptr %i.ax, align 4, !tbaa !55
  %i.bg = fsub <2 x float> %i.bf, %i.be
  %i.bh = fmul <2 x float> %i.bg, splat (float 5.000000e-01)
  %i.bi = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bh, %i.bj           ; 3 uses
  %i.bl = fmul float %i.bd, %i.bb                 ; 2 uses
  %.sroa.3.12.vec.insert.i34 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bl, i64 0
  store <2 x float> %i.bk, ptr %6, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i34, ptr %i.bm, align 8
  %i.bn = extractelement <2 x float> %i.be, i64 0
  %i.bo = fcmp olt float %i.aq, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = extractelement <2 x float> %i.bk, i64 0
  %i.bq = fneg float %i.bp
  store float %i.bq, ptr %6, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.br = extractelement <2 x float> %i.be, i64 1
  %i.bs = fcmp olt float %i.as, %i.br
  br i1 %i.bs, label %bb.k, label %bb.l
end_hunk_0
begin_hunk_1_@_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher:bb.a
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !25 ; 4 uses
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !25
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cn = load i32, ptr %i.b, align 8, !tbaa !39
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.co
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not9.i = icmp eq ptr %i.cl, null
  br i1 %.not9.i, label %_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !25
  br label %_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit

_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit:      ; preds = %bb.t, %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !38 ; 2 uses
  store i32 %i.cv, ptr %i.b, align 8, !tbaa !39
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cw ; 2 uses
  store ptr null, ptr %i.ci, align 8, !tbaa !25
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !25 ; 3 uses
  store ptr %i.cy, ptr %i.ck, align 8, !tbaa !25
  %.not.i37 = icmp eq ptr %i.cy, null
  br i1 %.not.i37, label %_ZL10listappendI11btDbvtProxyEvPT_RS2_.exit, label %bb.v

bb.v:                                             ; preds = %_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  store ptr %1, ptr %i.cz, align 8, !tbaa !25
  br label %_ZL10listappendI11btDbvtProxyEvPT_RS2_.exit

_ZL10listappendI11btDbvtProxyEvPT_RS2_.exit:      ; preds = %_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit, %bb.v
  store ptr %1, ptr %i.cx, align 8, !tbaa !25
  br i1 %.1, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZL10listappendI11btDbvtProxyEvPT_RS2_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i8 1, ptr %i.da, align 2, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 221
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !10, !range !27, !noundef !28
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV18btDbvtTreeCollider, i64 16), ptr %7, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.de, align 8, !tbaa !44
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !49
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !43
  call void @_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.df, ptr noundef %i.dg, ptr noundef %i.di, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !49
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !43
  call void @_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %i.dj, ptr noundef %i.dk, ptr noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %_ZL10listappendI11btDbvtProxyEvPT_RS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void
}

declare noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #1

declare void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !74
  %i.e = icmp slt i32 %i.d, 128
  br i1 %i.e, label %bb.c, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !75
  %i.h = icmp slt i32 %i.g, 128
  br i1 %i.h, label %bb.d, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2048, i32 noundef 16) ; 4 uses
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !74 ; 4 uses
  %i.j = icmp sgt i32 %.pre.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.l = icmp eq i32 %.pre.i, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i.i.i
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !77
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !77
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.e

_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod105.a = trunc i32 %.pre.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod105.a)
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !77
  br label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76   ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i8, ptr %i.x, align 8, !tbaa !78, !range !27, !noundef !28
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
  br label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.aa, align 8, !tbaa !78
  store ptr %i.i, ptr %i.v, align 8, !tbaa !76
  store i32 128, ptr %i.f, align 8, !tbaa !75
  br label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit: ; preds = %bb.c, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i, %bb.b
  store i32 128, ptr %i.c, align 4, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  store ptr %1, ptr %i.ac, align 8, !tbaa !54
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %2, ptr %.sroa.491.0..sroa_idx, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit
  %.051 = phi i32 [ 124, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.152, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %.0 = phi i32 [ 1, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit ], [ %.1, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 9 uses
  %i.af = add nsw i32 %.0, -1                     ; 10 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 4 uses
  %i.ah = sext i32 %i.af to i64                   ; 5 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !54 ; 14 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !54 ; 13 uses
  %i.aj = icmp sgt i32 %i.af, %.051
  br i1 %i.aj, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !74  ; 3 uses
  %i.al = shl nsw i32 %i.ak, 1                    ; 6 uses
  %i.am = icmp sgt i32 %i.al, %i.ak
  br i1 %i.am, label %bb.j, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit68

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !75
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %4, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit68

4:                                                ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i: ; preds = %4
  %i.ap = sext i32 %i.al to i64
  %i.aq = shl nsw i64 %i.ap, 4
  %i.ar = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.aq, i32 noundef 16) ; 6 uses
  %.pre.i59 = load i32, ptr %i.c, align 4, !tbaa !74 ; 4 uses
  %i.as = icmp sgt i32 %.pre.i59, 0
  br i1 %i.as, label %.lr.ph.i.i.i63, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60

.lr.ph.i.i.i63:                                   ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i64 = zext nneg i32 %.pre.i59 to i64 ; 2 uses
  %xtraiter107 = and i64 %wide.trip.count.i.i.i64, 1
  %i.at = icmp eq i32 %.pre.i59, 1
  br i1 %i.at, label %.epil.preheader106, label %.lr.ph.i.i.i63.new

.lr.ph.i.i.i63.new:                               ; preds = %.lr.ph.i.i.i63
  %unroll_iter110 = and i64 %wide.trip.count.i.i.i64, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i63.new
  %indvars.iv.i.i.i65 = phi i64 [ 0, %.lr.ph.i.i.i63.new ], [ %indvars.iv.next.i.i.i66.1, %bb.k ] ; 4 uses
  %niter111 = phi i64 [ 0, %.lr.ph.i.i.i63.new ], [ %niter111.next.1, %bb.k ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i65
  %i.av = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.i.i.i65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !77
  %indvars.iv.next.i.i.i66 = or disjoint i64 %indvars.iv.i.i.i65, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i.i66
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !77
  %indvars.iv.next.i.i.i66.1 = add nuw nsw i64 %indvars.iv.i.i.i65, 2 ; 2 uses
  %niter111.next.1 = add i64 %niter111, 2         ; 2 uses
  %niter111.ncmp.1 = icmp eq i64 %niter111.next.1, %unroll_iter110
  br i1 %niter111.ncmp.1, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60.loopexit.unr-lcssa, label %bb.k

_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60, label %.epil.preheader106

.epil.preheader106:                               ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60.loopexit.unr-lcssa, %.lr.ph.i.i.i63
  %indvars.iv.i.i.i65.epil.init = phi i64 [ 0, %.lr.ph.i.i.i63 ], [ %indvars.iv.next.i.i.i66.1, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod109 = trunc i32 %.pre.i59 to i1
  tail call void @llvm.assume(i1 %lcmp.mod109)
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i65.epil.init
  %i.bb = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i.i.i65.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !77
  br label %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60

_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60: ; preds = %.epil.preheader106, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60.loopexit.unr-lcssa, %4, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i
  %.0.i.i.i104 = phi ptr [ null, %4 ], [ %i.ar, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i ], [ %i.ar, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60.loopexit.unr-lcssa ], [ %i.ar, %.epil.preheader106 ] ; 2 uses
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  %.not.i5.i.i61 = icmp eq ptr %i.bd, null
  br i1 %.not.i5.i.i61, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i62, label %bb.l

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60
  %i.be = load i8, ptr %i.ae, align 8, !tbaa !78, !range !27, !noundef !28
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i62

bb.m:                                             ; preds = %bb.l
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bd)
  br label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i62

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i62: ; preds = %bb.m, %bb.l, %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60
  store i8 1, ptr %i.ae, align 8, !tbaa !78
  store ptr %.0.i.i.i104, ptr %i.ab, align 8, !tbaa !76
  store i32 %i.al, ptr %i.ad, align 8, !tbaa !75
  br label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit68

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit68: ; preds = %bb.j, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i62, %bb.i
  %i.bg = phi ptr [ %i.ag, %bb.i ], [ %.0.i.i.i104, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i62 ], [ %i.ag, %bb.j ]
  store i32 %i.al, ptr %i.c, align 4, !tbaa !74
  %i.bh = add nsw i32 %i.al, -4
  br label %bb.n

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit68, %bb.h
  %i.bi = phi ptr [ %i.bg, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit68 ], [ %i.ag, %bb.h ] ; 8 uses
  %.152 = phi i32 [ %i.bh, %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit68 ], [ %.051, %bb.h ]
  %i.bj = icmp eq ptr %.sroa.0.0.copyload, %.sroa.22.0.copyload
  br i1 %i.bj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !36
  %.not95 = icmp eq ptr %i.bl, null
  br i1 %.not95, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36 ; 2 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.ah ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !54
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bn, ptr %.sroa.489.0..sroa_idx, align 8, !tbaa !54
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !36 ; 2 uses
  %i.bq = sext i32 %.0 to i64
  %i.br = getelementptr [16 x i8], ptr %i.bi, i64 %i.bq ; 3 uses
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !54
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bp, ptr %.sroa.487.0..sroa_idx, align 8, !tbaa !54
  %i.bs = add nsw i32 %.0, 2
  %i.bt = getelementptr i8, ptr %i.br, i64 16
  %i.bu = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !36
  store <2 x ptr> %i.bu, ptr %i.bt, align 8, !tbaa !54
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.q:                                             ; preds = %bb.n
  %i.bv = load float, ptr %.sroa.0.0.copyload, align 4, !tbaa !55
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 16
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !55
  %i.by = fcmp ugt float %i.bv, %i.bx
  br i1 %i.by, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !55
  %i.cb = load float, ptr %.sroa.22.0.copyload, align 4, !tbaa !55
  %i.cc = fcmp ult float %i.ca, %i.cb
  br i1 %i.cc, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !55
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 20
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !55
  %i.ch = fcmp ugt float %i.ce, %i.cg
  br i1 %i.ch, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 20
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !55
  %i.cm = fcmp ult float %i.cj, %i.cl
  br i1 %i.cm, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !55
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 24
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !55
  %i.cr = fcmp ugt float %i.co, %i.cq
  br i1 %i.cr, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit

_Z9IntersectRK12btDbvtAabbMmS1_.exit:             ; preds = %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !55
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !55
  %i.cw = fcmp ult float %i.ct, %i.cv
  br i1 %i.cw, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !36
  %.not92 = icmp eq ptr %i.cy, null
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 48 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !36
  %.not93 = icmp eq ptr %i.da, null               ; 2 uses
  br i1 %.not92, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !36 ; 2 uses
  br i1 %.not93, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 40 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !36
  %i.df = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.ah ; 2 uses
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !54
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %.sroa.483.0..sroa_idx, align 8, !tbaa !54
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !36
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !36
  %i.di = sext i32 %.0 to i64
  %i.dj = getelementptr [16 x i8], ptr %i.bi, i64 %i.di ; 6 uses
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !54
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dh, ptr %.sroa.481.0..sroa_idx, align 8, !tbaa !54
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !36
  %i.dl = load ptr, ptr %i.cz, align 8, !tbaa !36
  %i.dm = getelementptr i8, ptr %i.dj, i64 16
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !54
  %.sroa.479.0..sroa_idx = getelementptr i8, ptr %i.dj, i64 24
  store ptr %i.dl, ptr %.sroa.479.0..sroa_idx, align 8, !tbaa !54
  %i.dn = load ptr, ptr %i.cx, align 8, !tbaa !36
  %i.do = load ptr, ptr %i.cz, align 8, !tbaa !36
  %i.dp = add nsw i32 %.0, 3
  %i.dq = getelementptr i8, ptr %i.dj, i64 32
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !54
  %.sroa.477.0..sroa_idx = getelementptr i8, ptr %i.dj, i64 40
  store ptr %i.do, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !54
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.ah ; 2 uses
  store ptr %i.dc, ptr %i.dr, align 8, !tbaa !54
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %.sroa.22.0.copyload, ptr %.sroa.475.0..sroa_idx, align 8, !tbaa !54
  %i.ds = load ptr, ptr %i.cx, align 8, !tbaa !36
  %i.dt = add nsw i32 %.0, 1
  %i.du = sext i32 %.0 to i64
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.du ; 2 uses
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !54
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %.sroa.22.0.copyload, ptr %.sroa.473.0..sroa_idx, align 8, !tbaa !54
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.z:                                             ; preds = %bb.v
  br i1 %.not93, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !36
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.ah ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.dy, align 8, !tbaa !54
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.dx, ptr %.sroa.471.0..sroa_idx, align 8, !tbaa !54
  %i.dz = load ptr, ptr %i.cz, align 8, !tbaa !36
  %i.ea = add nsw i32 %.0, 1
  %i.eb = sext i32 %.0 to i64
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.eb ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.ec, align 8, !tbaa !54
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.dz, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !54
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.ed = load ptr, ptr %3, align 8, !tbaa !8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.22.0.copyload)
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread:      ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %_Z9IntersectRK12btDbvtAabbMmS1_.exit, %bb.aa, %bb.ab, %bb.x, %bb.y, %bb.o, %bb.p
  %.1 = phi i32 [ %i.bs, %bb.p ], [ %i.af, %bb.o ], [ %i.dp, %bb.x ], [ %i.dt, %bb.y ], [ %i.ea, %bb.aa ], [ %i.af, %bb.ab ], [ %i.af, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.af, %bb.u ], [ %i.af, %bb.t ], [ %i.af, %bb.s ], [ %i.af, %bb.r ], [ %i.af, %bb.q ] ; 2 uses
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(223) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN16btDbvtBroadphase7collideEP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(223) %0, ptr noundef %1)
  tail call void @_ZN16btDbvtBroadphase22performDeferredRemovalEP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(223) %0, ptr noundef %1)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btDbvtBroadphase7collideEP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(223) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 4       ; 5 uses
  %3 = alloca %struct.btDbvtTreeCollider, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.e = load i32, ptr %i.d, align 4, !tbaa !80
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = sdiv i32 %i.f, 100
  %i.h = add nsw i32 %i.g, 1
  tail call void @_ZN6btDbvt19optimizeIncrementalEi(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !81
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_1
