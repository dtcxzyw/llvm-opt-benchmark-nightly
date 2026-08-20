inline.NumInlined: 26891
inline.NumDeleted: 6475
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN14QCPMarginGroupC2EP11QCustomPlot:bb.a
  br i1 %.not.i.i37, label %bb.o, label %_ZN5QListIP16QCPLayoutElementED2Ev.exit38

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i36
  %i.ah = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ah, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP16QCPLayoutElementED2Ev.exit38

_ZN5QListIP16QCPLayoutElementED2Ev.exit38:        ; preds = %bb.n, %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i36, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.r

bb.p:                                             ; preds = %_ZN5QListIP16QCPLayoutElementED2Ev.exit21
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i39, label %_ZN5QListIP16QCPLayoutElementED2Ev.exit42, label %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i40

_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i40: ; preds = %bb.p
  %i.ak = atomicrmw sub ptr %i.aj, i32 1 acq_rel, align 4
  %.not.i.i41 = icmp eq i32 %i.ak, 1
  br i1 %.not.i.i41, label %bb.q, label %_ZN5QListIP16QCPLayoutElementED2Ev.exit42

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i40
  %i.al = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.al, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP16QCPLayoutElementED2Ev.exit42

_ZN5QListIP16QCPLayoutElementED2Ev.exit42:        ; preds = %bb.p, %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i40, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.r

bb.r:                                             ; preds = %_ZN5QListIP16QCPLayoutElementED2Ev.exit42, %_ZN5QListIP16QCPLayoutElementED2Ev.exit38, %_ZN5QListIP16QCPLayoutElementED2Ev.exit34, %_ZN5QListIP16QCPLayoutElementED2Ev.exit30
  %.pn = phi { ptr, i32 } [ %i.ai, %_ZN5QListIP16QCPLayoutElementED2Ev.exit42 ], [ %i.ae, %_ZN5QListIP16QCPLayoutElementED2Ev.exit38 ], [ %i.aa, %_ZN5QListIP16QCPLayoutElementED2Ev.exit34 ], [ %i.w, %_ZN5QListIP16QCPLayoutElementED2Ev.exit30 ]
  call void @_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.f) #51
  call void @_ZN7QObjectD2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16) %0) #51
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread, label %_ZN9QtPrivate8RefCount5derefEv.exit

_ZN9QtPrivate8RefCount5derefEv.exit:              ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not3 = icmp eq i32 %i.d, 1
  br i1 %.not3, label %bb.c, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

bb.c:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN9QtPrivate8RefCount5derefEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN12QHashPrivate4DataINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx.i = mul i64 %i.k, 144                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit.i, %.preheader.preheader.i
  %i.n = phi ptr [ %i.o, %_ZN12QHashPrivate4SpanINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit.i ], [ %i.m, %.preheader.preheader.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -144 ; 3 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -16      ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN12QHashPrivate4SpanINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit.i, label %.preheader.i.i.i

bb.f:                                             ; preds = %_ZN12QHashPrivate4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev.exit.i.i.i
  %i.r = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN12QHashPrivate4SpanINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit.i, label %bb.i

.preheader.i.i.i:                                 ; preds = %.preheader.i, %_ZN12QHashPrivate4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.ab, %_ZN12QHashPrivate4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev.exit.i.i.i ], [ %i.o, %.preheader.i ] ; 2 uses
  %i.t = load i8, ptr %.013.i.i.i, align 1        ; 2 uses
  %.not12.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not12.i.i.i, label %_ZN12QHashPrivate4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i.i
  %i.u = zext i8 %i.t to i64
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr [32 x i8], ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12QHashPrivate4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev.exit.i.i.i, label %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i.i.i.i.i

_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.z = atomicrmw sub ptr %i.y, i32 1 acq_rel, align 4
  %.not.i.i.i.i.i.i = icmp eq i32 %i.z, 1
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %_ZN12QHashPrivate4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev.exit.i.i.i

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.x, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aa, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN12QHashPrivate4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev.exit.i.i.i

_ZN12QHashPrivate4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev.exit.i.i.i: ; preds = %bb.h, %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i.i.i.i.i, %bb.g, %.preheader.i.i.i
  %i.ab = getelementptr i8, ptr %.013.i.i.i, i64 1 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.ab, %i.p
  br i1 %.not11.i.i.i, label %bb.f, label %.preheader.i.i.i

bb.i:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #53
  br label %_ZN12QHashPrivate4SpanINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit.i

_ZN12QHashPrivate4SpanINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit.i: ; preds = %bb.i, %bb.f, %.preheader.i
  %i.ac = icmp eq ptr %i.o, %i.h
  br i1 %i.ac, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit.i, %bb.e
  %i.ad = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef %i.j, i64 noundef %i.ad) #53
  br label %_ZN12QHashPrivate4DataINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit

_ZN12QHashPrivate4DataINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit: ; preds = %bb.d, %.loopexit.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 40) #53
  br label %_ZN9QtPrivate8RefCount5derefEv.exit.thread

_ZN9QtPrivate8RefCount5derefEv.exit.thread:       ; preds = %bb.b, %bb.c, %_ZN12QHashPrivate4DataINS_4NodeIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEEED2Ev.exit, %_ZN9QtPrivate8RefCount5derefEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN14QCPMarginGroupD2Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32) initializes((0, 8)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTV14QCPMarginGroup, i64 16), ptr %0, align 8
  invoke void @_ZN14QCPMarginGroup5clearEv(ptr noundef align 8 dereferenceable_or_null(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.a) #51
  tail call void @_ZN7QObjectD2Ev(ptr noundef align 8 dead_on_return(16) dereferenceable_or_null(16) %0) #51
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #52
  unreachable
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14QCPMarginGroup5clearEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(32) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QHashIterator, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #51
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  store ptr %i.b, ptr %1, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %.not.i.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i.i, label %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i, label %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i

_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i: ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %1, align 8          ; 2 uses
  %.not.i2.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i2.i, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, label %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i

_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i: ; preds = %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i, %bb.b
  %.pr8.i = phi ptr [ %.pr.pre.i, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i ], [ %i.b, %bb.b ] ; 4 uses
  %i.e = getelementptr i8, ptr %.pr8.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %.not.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit

bb.c:                                             ; preds = %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i
  %i.h = getelementptr i8, ptr %.pr8.i, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.k = add i64 %i.m, 1                          ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, label %.lr.ph, !llvm.loop !78

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %i.k, %bb.d ], [ 1, %bb.c ]    ; 4 uses
  %i.n = lshr i64 %i.m, 7
  %i.o = getelementptr [144 x i8], ptr %i.f, i64 %i.n
  %i.p = and i64 %i.m, 127
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge, !llvm.loop !78

._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, !llvm.loop !78

_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit: ; preds = %bb.d, %bb.c, %._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge, %bb.a, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i
  %.sroa.0.0.i.i = phi ptr [ null, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i ], [ %.pr8.i, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i ], [ null, %bb.a ], [ null, %bb.c ], [ %.pr8.i, %._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge ], [ null, %bb.d ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i ], [ 0, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.m, %._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge ], [ 0, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %.sroa.0.0.i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %.sroa.4.0.i.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = icmp ne ptr %.sroa.0.0.i.i, null
  %i.w = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond18 = or i1 %i.v, %i.w
  br i1 %or.cond18, label %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph, label %._crit_edge

_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph: ; preds = %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread

_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread: ; preds = %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph, %_ZN5QListIP16QCPLayoutElementED2Ev.exit
  %.sroa.2.0.copyload.i.i = phi i64 [ %.sroa.4.0.i.i, %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph ], [ %i.bg, %_ZN5QListIP16QCPLayoutElementED2Ev.exit ] ; 4 uses
  %i.x = phi ptr [ %.sroa.0.0.i.i, %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph ], [ %.pr, %_ZN5QListIP16QCPLayoutElementED2Ev.exit ] ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = getelementptr i8, ptr %i.x, i64 32       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread
  %i.aa = phi i64 [ %i.ab, %bb.g ], [ %.sroa.2.0.copyload.i.i, %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread ]
  %i.ab = add i64 %i.aa, 1                        ; 5 uses
  store i64 %i.ab, ptr %i.t, align 8
  %i.ac = load i64, ptr %i.y, align 8
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = lshr i64 %i.ab, 7
  %i.ag = getelementptr [144 x i8], ptr %i.ae, i64 %i.af
  %i.ah = and i64 %i.ab, 127
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %.not.i.i.i.i5 = icmp eq i8 %i.aj, -1
  br i1 %.not.i.i.i.i5, label %bb.e, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit, !llvm.loop !78

_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit: ; preds = %bb.g, %bb.f
  store ptr %i.x, ptr %i.u, align 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ak = load ptr, ptr %i.z, align 8
  %i.al = lshr i64 %.sroa.2.0.copyload.i.i, 7
  %i.am = getelementptr [144 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = and i64 %.sroa.2.0.copyload.i.i, 127
  %i.ao = getelementptr i8, ptr %i.am, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.am, i64 %i.an
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr [32 x i8], ptr %i.ap, i64 %i.as ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 6 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %i.at, i64 24
  %i.az = load i64, ptr %i.ay, align 8
  %.not.i.i.i6 = icmp eq ptr %i.av, null          ; 3 uses
  br i1 %.not.i.i.i6, label %_ZN5QListIP16QCPLayoutElementEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit
  %i.ba = atomicrmw add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5QListIP16QCPLayoutElementEC2ERKS2_.exit

_ZN5QListIP16QCPLayoutElementEC2ERKS2_.exit:      ; preds = %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit, %bb.h
  %i.bb = and i64 %i.az, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %_ZN5QListIP16QCPLayoutElementEC2ERKS2_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %i.bb, %_ZN5QListIP16QCPLayoutElementEC2ERKS2_.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bc = and i64 %indvars.iv.next, 2147483648
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.i.i6, label %_ZN5QListIP16QCPLayoutElementED2Ev.exit, label %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i

_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i: ; preds = %bb.j
  %i.be = atomicrmw sub ptr %i.av, i32 1 acq_rel, align 4
  %.not.i.i8 = icmp eq i32 %i.be, 1
  br i1 %.not.i.i8, label %bb.k, label %_ZN5QListIP16QCPLayoutElementED2Ev.exit

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.av, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP16QCPLayoutElementED2Ev.exit

_ZN5QListIP16QCPLayoutElementED2Ev.exit:          ; preds = %bb.j, %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i, %bb.k
  %.pr = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.bf = icmp ne ptr %.pr, null
  %i.bg = load i64, ptr %i.t, align 8             ; 2 uses
  %i.bh = icmp ne i64 %i.bg, 0
  %or.cond = select i1 %i.bf, i1 true, i1 %i.bh
  br i1 %or.cond, label %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread, label %._crit_edge, !llvm.loop !79

bb.l:                                             ; preds = %bb.i
  %i.bi = and i64 %indvars.iv.next, 2147483647
  %i.bj = getelementptr [8 x i8], ptr %i.ax, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.u, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %i.bp = lshr i64 %i.bo, 7
  %i.bq = getelementptr [144 x i8], ptr %i.bn, i64 %i.bp ; 2 uses
  %i.br = and i64 %i.bo, 127
  %i.bs = getelementptr i8, ptr %i.bq, i64 128
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %i.bq, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr [32 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4
  invoke void @_ZN16QCPLayoutElement14setMarginGroupE6QFlagsIN3QCP10MarginSideEEP14QCPMarginGroup(ptr noundef align 8 dereferenceable_or_null(168) %i.bk, i32 %i.by, ptr noundef null)
          to label %bb.i unwind label %bb.m, !llvm.loop !80

bb.m:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i6, label %_ZN5QListIP16QCPLayoutElementED2Ev.exit12, label %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i10

_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i10: ; preds = %bb.m
  %i.ca = atomicrmw sub ptr %i.av, i32 1 acq_rel, align 4
  %.not.i.i11 = icmp eq i32 %i.ca, 1
  br i1 %.not.i.i11, label %bb.n, label %_ZN5QListIP16QCPLayoutElementED2Ev.exit12

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i10
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.av, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP16QCPLayoutElementED2Ev.exit12

_ZN5QListIP16QCPLayoutElementED2Ev.exit12:        ; preds = %bb.m, %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i10, %bb.n
  call void @_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(40) %1) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  resume { ptr, i32 } %i.bz

._crit_edge:                                      ; preds = %_ZN5QListIP16QCPLayoutElementED2Ev.exit, %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit
  call void @_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(40) %1) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN14QCPMarginGroupD0Ev(ptr noundef align 8 dereferenceable_or_null(32) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN14QCPMarginGroupD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32) %0) #51
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 32) #53
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZNK14QCPMarginGroup7isEmptyEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(32) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QHashIterator, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #51
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  store ptr %i.b, ptr %1, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %.not.i.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i.i, label %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i, label %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i

_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i: ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %1, align 8          ; 2 uses
  %.not.i2.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i2.i, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, label %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i

_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i: ; preds = %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i, %bb.b
  %.pr8.i = phi ptr [ %.pr.pre.i, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i ], [ %i.b, %bb.b ] ; 4 uses
  %i.e = getelementptr i8, ptr %.pr8.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %.not.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit

bb.c:                                             ; preds = %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i
  %i.h = getelementptr i8, ptr %.pr8.i, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.k = add i64 %i.m, 1                          ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, label %.lr.ph, !llvm.loop !78

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %i.k, %bb.d ], [ 1, %bb.c ]    ; 4 uses
  %i.n = lshr i64 %i.m, 7
  %i.o = getelementptr [144 x i8], ptr %i.f, i64 %i.n
  %i.p = and i64 %i.m, 127
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge, !llvm.loop !78

._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit, !llvm.loop !78

_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit: ; preds = %bb.d, %bb.c, %._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge, %bb.a, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i
  %.sroa.0.0.i.i = phi ptr [ null, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i ], [ %.pr8.i, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i ], [ null, %bb.a ], [ null, %bb.c ], [ %.pr8.i, %._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge ], [ null, %bb.d ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.i ], [ 0, %_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERKS6_.exit.thread.i ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.m, %._ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit.loopexit_crit_edge ], [ 0, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %.sroa.4.0.i.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = icmp eq ptr %.sroa.0.0.i.i, null
  %i.w = icmp eq i64 %.sroa.4.0.i.i, 0
  %or.cond.not5 = and i1 %i.v, %i.w
  br i1 %or.cond.not5, label %._crit_edge, label %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph

_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph: ; preds = %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread

thread-pre-split:                                 ; preds = %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit
  %i.x = icmp eq ptr %.pr, null
  %i.y = icmp eq i64 %i.al, 0
  %or.cond.not = and i1 %i.x, %i.y
  br i1 %or.cond.not, label %._crit_edge, label %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread

_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread: ; preds = %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph, %thread-pre-split
  %.pr9 = phi ptr [ %.sroa.0.0.i.i, %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph ], [ %.pr, %thread-pre-split ] ; 4 uses
  %.sroa.2.0.copyload.i.i = phi i64 [ %.sroa.4.0.i.i, %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread.lr.ph ], [ %i.al, %thread-pre-split ] ; 4 uses
  %i.z = getelementptr i8, ptr %.pr9, i64 16
  %i.aa = getelementptr i8, ptr %.pr9, i64 32     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread
  %i.ab = phi i64 [ %i.ac, %bb.g ], [ %.sroa.2.0.copyload.i.i, %_ZNK13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE7hasNextEv.exit.thread ]
  %i.ac = add i64 %i.ab, 1                        ; 6 uses
  store i64 %i.ac, ptr %i.t, align 8
  %i.ad = load i64, ptr %i.z, align 8
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = lshr i64 %i.ac, 7
  %i.ah = getelementptr [144 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i64 %i.ac, 127
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %.not.i.i.i.i2 = icmp eq i8 %i.ak, -1
  br i1 %.not.i.i.i.i2, label %bb.e, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit, !llvm.loop !78

_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit: ; preds = %bb.g, %bb.f
  %i.al = phi i64 [ 0, %bb.f ], [ %i.ac, %bb.g ]  ; 2 uses
  %.pr = phi ptr [ null, %bb.f ], [ %.pr9, %bb.g ] ; 2 uses
  store ptr %.pr9, ptr %i.u, align 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.am = load ptr, ptr %i.aa, align 8
  %i.an = lshr i64 %.sroa.2.0.copyload.i.i, 7
  %i.ao = getelementptr [144 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = and i64 %.sroa.2.0.copyload.i.i, 127
  %i.aq = getelementptr i8, ptr %i.ao, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr [32 x i8], ptr %i.ar, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %thread-pre-split, label %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit._crit_edge, !llvm.loop !81

_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit._crit_edge: ; preds = %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit
  br label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %thread-pre-split, %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit._crit_edge, %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit
  %or.cond.not.lcssa = phi i1 [ true, %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEEC2ERK5QHashIS1_S5_E.exit ], [ false, %_ZN13QHashIteratorIN3QCP10MarginSideE5QListIP16QCPLayoutElementEE4nextEv.exit._crit_edge ], [ true, %thread-pre-split ]
  call void @_ZN5QHashIN3QCP10MarginSideE5QListIP16QCPLayoutElementEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(40) %1) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  ret i1 %or.cond.not.lcssa
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16QCPLayoutElement14setMarginGroupE6QFlagsIN3QCP10MarginSideEEP14QCPMarginGroup(ptr noundef align 8 dereferenceable_or_null(168) %0, i32 %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.QList.74, align 8            ; 26 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %3, i8 0, i64 24, i1 false)
  %i.f = and i32 %1, 1
  %.not79 = icmp eq i32 %i.f, 0
  br i1 %.not79, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 1, ptr %i.d, align 4
  invoke void @_ZN9QtPrivate12QPodArrayOpsIN3QCP10MarginSideEE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.h = load atomic i32, ptr %i.g monotonic, align 4
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit

_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIN3QCP10MarginSideEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit unwind label %bb.c

_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit:    ; preds = %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i31, %bb.i, %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i25, %bb.g, %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i19, %bb.e, %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIN3QCP10MarginSideEEED2Ev.exit57

bb.d:                                             ; preds = %_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit, %bb.a
  %i.k = and i32 %1, 2
  %.not80 = icmp eq i32 %i.k, 0
  br i1 %.not80, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i64, ptr %i.l, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIN3QCP10MarginSideEE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc20 unwind label %bb.c

.noexc20:                                         ; preds = %bb.e
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i.i.i.i17 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i17, label %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i19, label %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i18

_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i18: ; preds = %.noexc20
  %i.o = load atomic i32, ptr %i.n monotonic, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i19, label %_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit22

_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i19: ; preds = %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i18, %.noexc20
  invoke void @_ZN17QArrayDataPointerIN3QCP10MarginSideEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit22 unwind label %bb.c

_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit22:  ; preds = %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i19, %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit22, %bb.d
  %i.q = and i32 %1, 4
  %.not81 = icmp eq i32 %i.q, 0
  br i1 %.not81, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 4, ptr %i.b, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load i64, ptr %i.r, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIN3QCP10MarginSideEE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc26 unwind label %bb.c

.noexc26:                                         ; preds = %bb.g
  %i.t = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i.i.i.i23 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i23, label %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i25, label %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i24

_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i24: ; preds = %.noexc26
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i25, label %_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit28

_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.thread.i.i.i.i.i25: ; preds = %_ZNK17QArrayDataPointerIN3QCP10MarginSideEE11needsDetachEv.exit.i.i.i.i.i24, %.noexc26
  invoke void @_ZN17QArrayDataPointerIN3QCP10MarginSideEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIN3QCP10MarginSideEE6appendES1_.exit28 unwind label %bb.c
end_hunk_0
begin_hunk_1_@_ZNK9QCPLayout15getSectionSizesE5QListIiES1_S0_IdEi:bb.a
  %i.dk = getelementptr i8, ptr %3, i64 8
  %wide.trip.count635 = and i64 %i.g, 2147483647
  br label %.lr.ph557.preheader

bb.aa:                                            ; preds = %.lr.ph519, %bb.ab
  %.0113517 = phi i32 [ 0, %.lr.ph519 ], [ %i.dp, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.0113517, ptr %i.d, align 4
  %i.dl = load i64, ptr %i.cx, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %29, i64 noundef %i.dl, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc185 unwind label %bb.ac

.noexc185:                                        ; preds = %bb.aa
  %i.dm = load ptr, ptr %29, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc185
  %i.dn = load atomic i32, ptr %i.dm monotonic, align 4
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i, label %bb.ab

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i, %.noexc185
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %29, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dp = add nuw nsw i32 %.0113517, 1            ; 2 uses
  %exitcond631.not = icmp eq i32 %i.dp, %i.bg
  br i1 %exitcond631.not, label %._crit_edge520, label %bb.aa, !llvm.loop !122

bb.ac:                                            ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.aa
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit216

.lr.ph557.preheader:                              ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit308, %.lr.ph580
  %i.dr = phi i64 [ %.pre643, %.lr.ph580 ], [ %i.ro, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit308 ]
  %.0105578 = phi i32 [ 0, %.lr.ph580 ], [ %i.ds, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit308 ]
  %.0106577 = phi double [ %i.cy, %.lr.ph580 ], [ %.6112, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit308 ]
  %i.ds = add nuw nsw i32 %.0105578, 1            ; 3 uses
  br label %.lr.ph557

.lr.ph557:                                        ; preds = %.lr.ph557.preheader, %_ZN5QListIiE9removeOneIiEEbRKT_.exit
  %i.dt = phi i64 [ %i.mb, %_ZN5QListIiE9removeOneIiEEbRKT_.exit ], [ %i.dr, %.lr.ph557.preheader ]
  %.0104555 = phi i32 [ %i.du, %_ZN5QListIiE9removeOneIiEEbRKT_.exit ], [ 0, %.lr.ph557.preheader ]
  %.1107554 = phi double [ %.3109, %_ZN5QListIiE9removeOneIiEEbRKT_.exit ], [ %.0106577, %.lr.ph557.preheader ] ; 8 uses
  %i.du = add nuw nsw i32 %.0104555, 1            ; 3 uses
  %i.dv = load ptr, ptr %29, align 8, !noalias !123 ; 4 uses
  %i.dw = load ptr, ptr %i.dd, align 8, !noalias !123 ; 2 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.dv, null    ; 2 uses
  br i1 %.not.i.i.i.i.i187, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph557
  %i.dx = atomicrmw add ptr %i.dv, i32 1 acq_rel, align 4, !noalias !123 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit: ; preds = %.lr.ph557, %bb.ad
  %.idx = shl i64 %i.dt, 2                        ; 2 uses
  %.not458521 = icmp eq i64 %.idx, 0
  br i1 %.not458521, label %._crit_edge526, label %.lr.ph525

.lr.ph525:                                        ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  %i.dy = load ptr, ptr %i.de, align 8            ; 3 uses
  %i.dz = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.ea = load ptr, ptr %i.df, align 8            ; 3 uses
  %i.eb = add i64 %.idx, -4                       ; 3 uses
  %i.ec = lshr exact i64 %i.eb, 2
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %i.ee = icmp eq i64 %i.eb, 0
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph525.new

.lr.ph525.new:                                    ; preds = %.lr.ph525
  %unroll_iter = and i64 %i.ed, 9223372036854775806
  br label %bb.ag

._crit_edge526.loopexit.unr-lcssa:                ; preds = %bb.ag
  %i.ef = and i64 %i.eb, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ef, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge526

.epil.preheader:                                  ; preds = %._crit_edge526.loopexit.unr-lcssa, %.lr.ph525
  %.0102524.epil.init = phi double [ 1.000000e+12, %.lr.ph525 ], [ %.1103.1, %._crit_edge526.loopexit.unr-lcssa ] ; 2 uses
  %.0455523.epil.init = phi i32 [ -1, %.lr.ph525 ], [ %.1.1, %._crit_edge526.loopexit.unr-lcssa ]
  %.sroa.8445.0522.epil.init = phi ptr [ %i.dw, %.lr.ph525 ], [ %i.gi, %._crit_edge526.loopexit.unr-lcssa ]
  %lcmp.mod876 = trunc i64 %i.ed to i1
  call void @llvm.assume(i1 %lcmp.mod876)
  %i.eg = load i32, ptr %.sroa.8445.0522.epil.init, align 4 ; 2 uses
  %i.eh = sext i32 %i.eg to i64                   ; 3 uses
  %i.ei = getelementptr [4 x i8], ptr %i.dy, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = sitofp i32 %i.ej to double
  %i.el = getelementptr [8 x i8], ptr %i.dz, i64 %i.eh
  %i.em = load double, ptr %i.el, align 8
  %i.en = fsub double %i.ek, %i.em
  %i.eo = getelementptr [8 x i8], ptr %i.ea, i64 %i.eh
  %i.ep = load double, ptr %i.eo, align 8
  %i.eq = fdiv double %i.en, %i.ep                ; 2 uses
  %i.er = fcmp olt double %i.eq, %.0102524.epil.init ; 2 uses
  %.1.epil = select i1 %i.er, i32 %i.eg, i32 %.0455523.epil.init
  %.1103.epil = select i1 %i.er, double %i.eq, double %.0102524.epil.init
  br label %._crit_edge526

._crit_edge526:                                   ; preds = %.epil.preheader, %._crit_edge526.loopexit.unr-lcssa, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  %.0455.lcssa = phi i32 [ -1, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit ], [ %.1.1, %._crit_edge526.loopexit.unr-lcssa ], [ %.1.epil, %.epil.preheader ] ; 7 uses
  %.0102.lcssa = phi double [ 1.000000e+12, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit ], [ %.1103.1, %._crit_edge526.loopexit.unr-lcssa ], [ %.1103.epil, %.epil.preheader ] ; 3 uses
  br i1 %.not.i.i.i.i.i187, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i:     ; preds = %._crit_edge526
  %i.es = atomicrmw sub ptr %i.dv, i32 1 acq_rel, align 4
  %.not.i.i.i189 = icmp eq i32 %i.es, 1
  br i1 %.not.i.i.i189, label %bb.ae, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit

bb.ae:                                            ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.dv, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit: ; preds = %._crit_edge526, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i, %bb.ae
  %i.et = load ptr, ptr %29, align 8, !noalias !126 ; 4 uses
  %i.eu = load ptr, ptr %i.dd, align 8, !noalias !126 ; 3 uses
  %i.ev = load i64, ptr %i.cz, align 8, !noalias !126
  %.not.i.i.i.i.i190 = icmp eq ptr %i.et, null    ; 2 uses
  br i1 %.not.i.i.i.i.i190, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit191, label %bb.af

bb.af:                                            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit
  %i.ew = atomicrmw add ptr %i.et, i32 1 acq_rel, align 4, !noalias !126 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit191

_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit191: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit, %bb.af
  %.idx587 = shl i64 %i.ev, 2                     ; 3 uses
  %i.ex = getelementptr i8, ptr %i.eu, i64 %.idx587
  %.not459529 = icmp eq i64 %.idx587, 0
  br i1 %.not459529, label %._crit_edge533, label %.lr.ph532

.lr.ph532:                                        ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit191
  %i.ey = load ptr, ptr %i.df, align 8            ; 9 uses
  %i.ez = add i64 %.idx587, -4                    ; 2 uses
  %i.fa = lshr exact i64 %i.ez, 2
  %i.fb = add nuw nsw i64 %i.fa, 1
  %xtraiter877 = and i64 %i.fb, 7                 ; 2 uses
  %lcmp.mod878.not = icmp eq i64 %xtraiter877, 0
  br i1 %lcmp.mod878.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph532, %.prol.preheader
  %.0100531.prol = phi double [ %i.fg, %.prol.preheader ], [ 0.000000e+00, %.lr.ph532 ]
  %.sroa.8437.0530.prol = phi ptr [ %i.fh, %.prol.preheader ], [ %i.eu, %.lr.ph532 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph532 ]
  %i.fc = load i32, ptr %.sroa.8437.0530.prol, align 4
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr [8 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8
  %i.fg = fadd double %.0100531.prol, %i.ff       ; 3 uses
  %i.fh = getelementptr i8, ptr %.sroa.8437.0530.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter877
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !129

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph532
  %.lcssa.unr = phi double [ poison, %.lr.ph532 ], [ %i.fg, %.prol.preheader ]
  %.0100531.unr = phi double [ 0.000000e+00, %.lr.ph532 ], [ %i.fg, %.prol.preheader ]
  %.sroa.8437.0530.unr = phi ptr [ %i.eu, %.lr.ph532 ], [ %i.fh, %.prol.preheader ]
  %i.fi = icmp ult i64 %i.ez, 28
  br i1 %i.fi, label %._crit_edge533, label %.lr.ph532.new

bb.ag:                                            ; preds = %bb.ag, %.lr.ph525.new
  %.0102524 = phi double [ 1.000000e+12, %.lr.ph525.new ], [ %.1103.1, %bb.ag ] ; 2 uses
  %.0455523 = phi i32 [ -1, %.lr.ph525.new ], [ %.1.1, %bb.ag ]
  %.sroa.8445.0522 = phi ptr [ %i.dw, %.lr.ph525.new ], [ %i.gi, %bb.ag ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph525.new ], [ %niter.next.1, %bb.ag ]
  %i.fj = load i32, ptr %.sroa.8445.0522, align 4 ; 2 uses
  %i.fk = sext i32 %i.fj to i64                   ; 3 uses
  %i.fl = getelementptr [4 x i8], ptr %i.dy, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = sitofp i32 %i.fm to double
  %i.fo = getelementptr [8 x i8], ptr %i.dz, i64 %i.fk
  %i.fp = load double, ptr %i.fo, align 8
  %i.fq = fsub double %i.fn, %i.fp
  %i.fr = getelementptr [8 x i8], ptr %i.ea, i64 %i.fk
  %i.fs = load double, ptr %i.fr, align 8
  %i.ft = fdiv double %i.fq, %i.fs                ; 2 uses
  %i.fu = fcmp olt double %i.ft, %.0102524        ; 2 uses
  %.1 = select i1 %i.fu, i32 %i.fj, i32 %.0455523
  %.1103 = select i1 %i.fu, double %i.ft, double %.0102524 ; 2 uses
  %i.fv = getelementptr i8, ptr %.sroa.8445.0522, i64 4
  %i.fw = load i32, ptr %i.fv, align 4            ; 2 uses
  %i.fx = sext i32 %i.fw to i64                   ; 3 uses
  %i.fy = getelementptr [4 x i8], ptr %i.dy, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = getelementptr [8 x i8], ptr %i.dz, i64 %i.fx
  %i.gc = load double, ptr %i.gb, align 8
  %i.gd = fsub double %i.ga, %i.gc
  %i.ge = getelementptr [8 x i8], ptr %i.ea, i64 %i.fx
  %i.gf = load double, ptr %i.ge, align 8
  %i.gg = fdiv double %i.gd, %i.gf                ; 2 uses
  %i.gh = fcmp olt double %i.gg, %.1103           ; 2 uses
  %.1.1 = select i1 %i.gh, i32 %i.fw, i32 %.1     ; 3 uses
  %.1103.1 = select i1 %i.gh, double %i.gg, double %.1103 ; 3 uses
  %i.gi = getelementptr i8, ptr %.sroa.8445.0522, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge526.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !131

._crit_edge533:                                   ; preds = %.prol.loopexit, %.lr.ph532.new, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit191
  %.0100.lcssa = phi double [ 0.000000e+00, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit191 ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ij, %.lr.ph532.new ]
  br i1 %.not.i.i.i.i.i190, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit195, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i193

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i193:  ; preds = %._crit_edge533
  %i.gj = atomicrmw sub ptr %i.et, i32 1 acq_rel, align 4
  %.not.i.i.i194 = icmp eq i32 %i.gj, 1
  br i1 %.not.i.i.i194, label %bb.ah, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit195

bb.ah:                                            ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i193
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.et, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit195

_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit195: ; preds = %._crit_edge533, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i193, %bb.ah
  %i.gk = fdiv double %.1107554, %.0100.lcssa     ; 2 uses
  %i.gl = fcmp olt double %.0102.lcssa, %i.gk
  %i.gm = load ptr, ptr %29, align 8, !noalias !7 ; 11 uses
  %i.gn = load ptr, ptr %i.dd, align 8, !noalias !7 ; 4 uses
  %i.go = load i64, ptr %i.cz, align 8, !noalias !7 ; 2 uses
  %.not.i.i.i.i.i196 = icmp eq ptr %i.gm, null    ; 6 uses
  br i1 %i.gl, label %bb.ai, label %bb.az

.lr.ph532.new:                                    ; preds = %.prol.loopexit, %.lr.ph532.new
  %.0100531 = phi double [ %i.ij, %.lr.ph532.new ], [ %.0100531.unr, %.prol.loopexit ]
  %.sroa.8437.0530 = phi ptr [ %i.ik, %.lr.ph532.new ], [ %.sroa.8437.0530.unr, %.prol.loopexit ] ; 9 uses
  %i.gp = load i32, ptr %.sroa.8437.0530, align 4
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr [8 x i8], ptr %i.ey, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8
  %i.gt = fadd double %.0100531, %i.gs
  %i.gu = getelementptr i8, ptr %.sroa.8437.0530, i64 4
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr [8 x i8], ptr %i.ey, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8
  %i.gz = fadd double %i.gt, %i.gy
  %i.ha = getelementptr i8, ptr %.sroa.8437.0530, i64 8
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr [8 x i8], ptr %i.ey, i64 %i.hc
  %i.he = load double, ptr %i.hd, align 8
  %i.hf = fadd double %i.gz, %i.he
  %i.hg = getelementptr i8, ptr %.sroa.8437.0530, i64 12
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr [8 x i8], ptr %i.ey, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8
  %i.hl = fadd double %i.hf, %i.hk
  %i.hm = getelementptr i8, ptr %.sroa.8437.0530, i64 16
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr [8 x i8], ptr %i.ey, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8
  %i.hr = fadd double %i.hl, %i.hq
  %i.hs = getelementptr i8, ptr %.sroa.8437.0530, i64 20
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr [8 x i8], ptr %i.ey, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8
  %i.hx = fadd double %i.hr, %i.hw
  %i.hy = getelementptr i8, ptr %.sroa.8437.0530, i64 24
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr [8 x i8], ptr %i.ey, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8
  %i.id = fadd double %i.hx, %i.ic
  %i.ie = getelementptr i8, ptr %.sroa.8437.0530, i64 28
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr [8 x i8], ptr %i.ey, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8
  %i.ij = fadd double %i.id, %i.ii                ; 2 uses
  %i.ik = getelementptr i8, ptr %.sroa.8437.0530, i64 32 ; 2 uses
  %.not459.7 = icmp eq ptr %i.ik, %i.ex
  br i1 %.not459.7, label %._crit_edge533, label %.lr.ph532.new, !llvm.loop !132

bb.ai:                                            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit195
  br i1 %.not.i.i.i.i.i196, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit197, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.il = atomicrmw add ptr %i.gm, i32 1 acq_rel, align 4, !noalias !133 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit197

_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit197: ; preds = %bb.ai, %bb.aj
  %.idx589 = shl i64 %i.go, 2                     ; 2 uses
  %i.im = getelementptr i8, ptr %i.gn, i64 %.idx589
  %.not461539 = icmp eq i64 %.idx589, 0
  br i1 %.not461539, label %._crit_edge543, label %.lr.ph542

.lr.ph542:                                        ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit197
  %i.in = fneg double %.0102.lcssa
  %.pre645 = load ptr, ptr %i.df, align 8
  br label %bb.au

._crit_edge543:                                   ; preds = %bb.av, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit197
  %.2108.lcssa = phi double [ %.1107554, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit197 ], [ %i.kq, %bb.av ] ; 3 uses
  br i1 %.not.i.i.i.i.i196, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit201, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i199

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i199:  ; preds = %._crit_edge543
  %i.io = atomicrmw sub ptr %i.gm, i32 1 acq_rel, align 4
  %.not.i.i.i200 = icmp eq i32 %i.io, 1
  br i1 %.not.i.i.i200, label %bb.ak, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit201

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i199
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.gm, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit201

_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit201: ; preds = %._crit_edge543, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i199, %bb.ak
  %i.ip = load ptr, ptr %i.dd, align 8            ; 4 uses
  %i.iq = load i64, ptr %i.cz, align 8
  %.idx11.i.i = shl i64 %i.iq, 2                  ; 5 uses
  %i.ir = getelementptr i8, ptr %i.ip, i64 %.idx11.i.i ; 2 uses
  %i.is = ashr i64 %.idx11.i.i, 4                 ; 2 uses
  %i.it = icmp sgt i64 %i.is, 0
  br i1 %i.it, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit201
  %i.iu = and i64 %.idx11.i.i, -16
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ip, i64 %i.iu
  br label %bb.al

bb.al:                                            ; preds = %bb.ap, %.lr.ph.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i ], [ %i.jh, %bb.ap ] ; 2 uses
  %.sroa.034.051.i.i.i.i.i = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i ], [ %i.jg, %bb.ap ] ; 9 uses
  %i.iv = load i32, ptr %.sroa.034.051.i.i.i.i.i, align 4
  %i.iw = icmp eq i32 %i.iv, %.0455.lcssa
  br i1 %i.iw, label %_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ix = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 4
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = icmp eq i32 %i.iy, %.0455.lcssa
  br i1 %i.iz, label %_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i.loopexit.split.loop.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ja = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 8
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = icmp eq i32 %i.jb, %.0455.lcssa
  br i1 %i.jc, label %_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i.loopexit.split.loop.exit761, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jd = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 12
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = icmp eq i32 %i.je, %.0455.lcssa
  br i1 %i.jf, label %_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i.loopexit.split.loop.exit763, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jg = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 16
  %i.jh = add nsw i64 %.052.i.i.i.i.i, -1
  %i.ji = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.ji, label %bb.al, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !136

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.ap
  %gepdiff.i.i = and i64 %.idx11.i.i, 12
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit201
  %.pre-phi61.i.i.i.i.i = phi i64 [ %gepdiff.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.idx11.i.i, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit201 ]
  %.sroa.034.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ip, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit201 ] ; 5 uses
  %i.jj = ashr exact i64 %.pre-phi61.i.i.i.i.i, 2
  switch i64 %i.jj, label %_ZN5QListIiE9removeOneIiEEbRKT_.exit [
    i64 3, label %bb.aq
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.jk = load i32, ptr %.sroa.034.0.lcssa.i.i.i.i.i, align 4
  %i.jl = icmp eq i32 %i.jk, %.0455.lcssa
  br i1 %i.jl, label %_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jm = getelementptr i8, ptr %.sroa.034.0.lcssa.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i.i, %bb.ar
  %.sroa.034.1.i.i.i.i.i = phi ptr [ %i.jm, %bb.ar ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.jn = load i32, ptr %.sroa.034.1.i.i.i.i.i, align 4
  %i.jo = icmp eq i32 %i.jn, %.0455.lcssa
  br i1 %i.jo, label %_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.jp = getelementptr i8, ptr %.sroa.034.1.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i, %bb.as
  %.sroa.034.2.i.i.i.i.i = phi ptr [ %i.jp, %bb.as ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.jq = load i32, ptr %.sroa.034.2.i.i.i.i.i, align 4
  %i.jr = icmp eq i32 %i.jq, %.0455.lcssa
  %spec.select.i.i.i.i.i = select i1 %i.jr, ptr %.sroa.034.2.i.i.i.i.i, ptr %i.ir
  br label %_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i

_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.am
  %i.js = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 4
  br label %_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i

_ZSt4findIN5QListIiE14const_iteratorEiET_S3_S3_RKT0_.exit.i.i.loopexit.split.loop.exit761: ; preds = %bb.an
end_hunk_1
begin_hunk_2_@_ZNK13QCPLayoutGrid20minimumOuterSizeHintEv:bb.a

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i15
  %i.bs = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bs, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIiED2Ev.exit17

_ZN5QListIiED2Ev.exit17:                          ; preds = %_ZN5QListIiED2Ev.exit, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i15, %bb.j
  %i.bt = trunc i64 %i.as to i32
  %i.bu = add i32 %i.bt, -1
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bv = mul i32 %i.be, %.sroa.speculated
  %i.bw = add i32 %i.bv, %.sroa.851.0.lcssa
  %i.bx = add i32 %i.bw, %i.bk
  %i.by = add i32 %i.bx, %i.bm
  %i.bz = mul i32 %i.bc, %.sroa.speculated29
  %i.ca = add i32 %i.bz, %.sroa.047.0.lcssa
  %i.cb = add i32 %i.ca, %i.bg
  %i.cc = add i32 %i.cb, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  %.sroa.851.0.insert.ext = zext i32 %i.by to i64
  %.sroa.851.0.insert.shift = shl nuw i64 %.sroa.851.0.insert.ext, 32
  %.sroa.047.0.insert.ext = zext i32 %i.cc to i64
  %.sroa.047.0.insert.insert = or disjoint i64 %.sroa.851.0.insert.shift, %.sroa.047.0.insert.ext
  ret i64 %.sroa.047.0.insert.insert

.lr.ph61:                                         ; preds = %.lr.ph61.preheader93, %.lr.ph61
  %.sroa.851.060 = phi i32 [ %i.ce, %.lr.ph61 ], [ %.sroa.851.060.ph, %.lr.ph61.preheader93 ]
  %.sroa.8.059 = phi ptr [ %i.cf, %.lr.ph61 ], [ %.sroa.8.059.ph, %.lr.ph61.preheader93 ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.8.059, align 4
  %i.ce = add i32 %i.cd, %.sroa.851.060           ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.8.059, i64 4 ; 2 uses
  %.not54 = icmp eq ptr %i.cf, %i.z
  br i1 %.not54, label %._crit_edge62, label %.lr.ph61, !llvm.loop !228

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i19:     ; preds = %bb.f
  %i.cg = atomicrmw sub ptr %i.am, i32 1 acq_rel, align 4
  %.not.i.i20 = icmp eq i32 %i.cg, 1
  br i1 %.not.i.i20, label %bb.k, label %_ZN5QListIiED2Ev.exit21

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i19
  %i.ch = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ch, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIiED2Ev.exit21

_ZN5QListIiED2Ev.exit21:                          ; preds = %bb.f, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i19, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.ci = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i22, label %_ZN5QListIiED2Ev.exit25, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i23

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i23:     ; preds = %_ZN5QListIiED2Ev.exit21
  %i.cj = atomicrmw sub ptr %i.ci, i32 1 acq_rel, align 4
  %.not.i.i24 = icmp eq i32 %i.cj, 1
  br i1 %.not.i.i24, label %bb.l, label %_ZN5QListIiED2Ev.exit25

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i23
  %i.ck = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ck, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIiED2Ev.exit25

_ZN5QListIiED2Ev.exit25:                          ; preds = %_ZN5QListIiED2Ev.exit21, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i23, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define i64 @_ZNK13QCPLayoutGrid20maximumOuterSizeHintEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(256) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QList.80, align 8            ; 12 uses
  %2 = alloca %class.QList.80, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZNK13QCPLayoutGrid21getMaximumRowColSizesEP5QListIiES2_(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !noalias !229 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !229 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !229
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.a, i32 1 acq_rel, align 4, !noalias !229 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit: ; preds = %bb.b, %bb.c
  %.idx = shl i64 %i.e, 2                         ; 2 uses
  %.not66 = icmp eq i64 %.idx, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  %i.g = add i64 %.idx, -4                        ; 2 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.g, 12
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 9223372036854775804
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.057.068.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.speculated42.3, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.851.067.epil.init = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.057.068.epil = phi i32 [ %.sroa.speculated42.epil, %.lr.ph.epil ], [ %.sroa.057.068.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.851.067.epil = phi ptr [ %i.m, %.lr.ph.epil ], [ %.sroa.851.067.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.k = load i32, ptr %.sroa.851.067.epil, align 4
  %i.l = add i32 %i.k, %.sroa.057.068.epil
  %.sroa.speculated42.epil = call i32 @llvm.smin.i32(i32 %i.l, i32 16777215) ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.851.067.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !232

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit
  %.sroa.057.0.lcssa = phi i32 [ 0, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit ], [ %.sroa.speculated42.3, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated42.epil, %.lr.ph.epil ]
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i:     ; preds = %._crit_edge
  %i.n = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.n, 1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i, %bb.d
  %i.o = load ptr, ptr %2, align 8, !noalias !233 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !233 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !233
  %.not.i.i.i.i.i7 = icmp eq ptr %i.o, null       ; 2 uses
  br i1 %.not.i.i.i.i.i7, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8, label %bb.e

bb.e:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit
  %i.t = atomicrmw add ptr %i.o, i32 1 acq_rel, align 4, !noalias !233 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8

_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit, %bb.e
  %.idx75 = shl i64 %i.s, 2                       ; 2 uses
  %.not6569 = icmp eq i64 %.idx75, 0
  br i1 %.not6569, label %._crit_edge73, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8
  %i.u = add i64 %.idx75, -4                      ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %xtraiter84 = and i64 %i.w, 3                   ; 3 uses
  %i.x = icmp ult i64 %i.u, 12
  br i1 %i.x, label %.lr.ph72.epil.preheader, label %.lr.ph72.preheader.new

.lr.ph72.preheader.new:                           ; preds = %.lr.ph72.preheader
  %unroll_iter89 = and i64 %i.w, 9223372036854775804
  br label %.lr.ph72

bb.f:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i18, label %_ZN5QListIiED2Ev.exit21, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i19

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.057.068 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.sroa.speculated42.3, %.lr.ph ]
  %.sroa.851.067 = phi ptr [ %i.c, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.aa = load i32, ptr %.sroa.851.067, align 4
  %i.ab = add i32 %i.aa, %.sroa.057.068
  %.sroa.speculated42 = call i32 @llvm.smin.i32(i32 %i.ab, i32 16777215)
  %i.ac = getelementptr i8, ptr %.sroa.851.067, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, %.sroa.speculated42
  %.sroa.speculated42.1 = call i32 @llvm.smin.i32(i32 %i.ae, i32 16777215)
  %i.af = getelementptr i8, ptr %.sroa.851.067, i64 8
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, %.sroa.speculated42.1
  %.sroa.speculated42.2 = call i32 @llvm.smin.i32(i32 %i.ah, i32 16777215)
  %i.ai = getelementptr i8, ptr %.sroa.851.067, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add i32 %i.aj, %.sroa.speculated42.2
  %.sroa.speculated42.3 = call i32 @llvm.smin.i32(i32 %i.ak, i32 16777215) ; 3 uses
  %i.al = getelementptr i8, ptr %.sroa.851.067, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !236

._crit_edge73.loopexit.unr-lcssa:                 ; preds = %.lr.ph72
  %lcmp.mod86.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod86.not, label %._crit_edge73, label %.lr.ph72.epil.preheader

.lr.ph72.epil.preheader:                          ; preds = %._crit_edge73.loopexit.unr-lcssa, %.lr.ph72.preheader
  %.sroa.10.071.epil.init = phi i32 [ 0, %.lr.ph72.preheader ], [ %.sroa.speculated34.3, %._crit_edge73.loopexit.unr-lcssa ]
  %.sroa.8.070.epil.init = phi ptr [ %i.q, %.lr.ph72.preheader ], [ %i.by, %._crit_edge73.loopexit.unr-lcssa ]
  %lcmp.mod88 = icmp ne i64 %xtraiter84, 0
  call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph72.epil

.lr.ph72.epil:                                    ; preds = %.lr.ph72.epil, %.lr.ph72.epil.preheader
  %.sroa.10.071.epil = phi i32 [ %.sroa.speculated34.epil, %.lr.ph72.epil ], [ %.sroa.10.071.epil.init, %.lr.ph72.epil.preheader ]
  %.sroa.8.070.epil = phi ptr [ %i.ao, %.lr.ph72.epil ], [ %.sroa.8.070.epil.init, %.lr.ph72.epil.preheader ] ; 2 uses
  %epil.iter85 = phi i64 [ %epil.iter85.next, %.lr.ph72.epil ], [ 0, %.lr.ph72.epil.preheader ]
  %i.am = load i32, ptr %.sroa.8.070.epil, align 4
  %i.an = add i32 %i.am, %.sroa.10.071.epil
  %.sroa.speculated34.epil = call i32 @llvm.smin.i32(i32 %i.an, i32 16777215) ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.8.070.epil, i64 4
  %epil.iter85.next = add i64 %epil.iter85, 1     ; 2 uses
  %epil.iter85.cmp.not = icmp eq i64 %epil.iter85.next, %xtraiter84
  br i1 %epil.iter85.cmp.not, label %._crit_edge73, label %.lr.ph72.epil, !llvm.loop !237

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit.unr-lcssa, %.lr.ph72.epil, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8
  %.sroa.10.0.lcssa = phi i32 [ 0, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIiEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS6_.exit8 ], [ %.sroa.speculated34.3, %._crit_edge73.loopexit.unr-lcssa ], [ %.sroa.speculated34.epil, %.lr.ph72.epil ]
  br i1 %.not.i.i.i.i.i7, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i10

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i10:   ; preds = %._crit_edge73
  %i.ap = atomicrmw sub ptr %i.o, i32 1 acq_rel, align 4
  %.not.i.i.i11 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i.i11, label %bb.g, label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i10
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.o, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12

_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12: ; preds = %._crit_edge73, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i10, %bb.g
  %i.aq = getelementptr i8, ptr %0, i64 184
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %bb.h, label %_ZNK13QCPLayoutGrid11columnCountEv.exit

bb.h:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12
  %i.at = getelementptr i8, ptr %0, i64 176
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.ax, -1
  %i.az = call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  br label %_ZNK13QCPLayoutGrid11columnCountEv.exit

_ZNK13QCPLayoutGrid11columnCountEv.exit:          ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12, %bb.h
  %.sroa.speculated29 = phi i32 [ %i.az, %bb.h ], [ 0, %_ZN9QtPrivate17QForeachContainerI5QListIiEED2Ev.exit12 ]
  %i.ba = getelementptr i8, ptr %0, i64 240
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %0, i64 244
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr i8, ptr %0, i64 124
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = getelementptr i8, ptr %0, i64 132
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = getelementptr i8, ptr %0, i64 128
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %0, i64 136
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i13, label %_ZN5QListIiED2Ev.exit, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i

.lr.ph72:                                         ; preds = %.lr.ph72, %.lr.ph72.preheader.new
  %.sroa.10.071 = phi i32 [ 0, %.lr.ph72.preheader.new ], [ %.sroa.speculated34.3, %.lr.ph72 ]
  %.sroa.8.070 = phi ptr [ %i.q, %.lr.ph72.preheader.new ], [ %i.by, %.lr.ph72 ] ; 5 uses
  %niter90 = phi i64 [ 0, %.lr.ph72.preheader.new ], [ %niter90.next.3, %.lr.ph72 ]
  %i.bn = load i32, ptr %.sroa.8.070, align 4
  %i.bo = add i32 %i.bn, %.sroa.10.071
  %.sroa.speculated34 = call i32 @llvm.smin.i32(i32 %i.bo, i32 16777215)
  %i.bp = getelementptr i8, ptr %.sroa.8.070, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = add i32 %i.bq, %.sroa.speculated34
  %.sroa.speculated34.1 = call i32 @llvm.smin.i32(i32 %i.br, i32 16777215)
  %i.bs = getelementptr i8, ptr %.sroa.8.070, i64 8
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = add i32 %i.bt, %.sroa.speculated34.1
  %.sroa.speculated34.2 = call i32 @llvm.smin.i32(i32 %i.bu, i32 16777215)
  %i.bv = getelementptr i8, ptr %.sroa.8.070, i64 12
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add i32 %i.bw, %.sroa.speculated34.2
  %.sroa.speculated34.3 = call i32 @llvm.smin.i32(i32 %i.bx, i32 16777215) ; 3 uses
  %i.by = getelementptr i8, ptr %.sroa.8.070, i64 16 ; 2 uses
  %niter90.next.3 = add i64 %niter90, 4           ; 2 uses
  %niter90.ncmp.3 = icmp eq i64 %niter90.next.3, %unroll_iter89
  br i1 %niter90.ncmp.3, label %._crit_edge73.loopexit.unr-lcssa, label %.lr.ph72, !llvm.loop !238

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i:       ; preds = %_ZNK13QCPLayoutGrid11columnCountEv.exit
  %i.bz = atomicrmw sub ptr %i.bm, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bz, 1
  br i1 %.not.i.i, label %bb.i, label %_ZN5QListIiED2Ev.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i
  %i.ca = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ca, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIiED2Ev.exit

_ZN5QListIiED2Ev.exit:                            ; preds = %_ZNK13QCPLayoutGrid11columnCountEv.exit, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.cb = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i14, label %_ZN5QListIiED2Ev.exit17, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i15

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i15:     ; preds = %_ZN5QListIiED2Ev.exit
  %i.cc = atomicrmw sub ptr %i.cb, i32 1 acq_rel, align 4
  %.not.i.i16 = icmp eq i32 %i.cc, 1
  br i1 %.not.i.i16, label %bb.j, label %_ZN5QListIiED2Ev.exit17

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i15
  %i.cd = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cd, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIiED2Ev.exit17

_ZN5QListIiED2Ev.exit17:                          ; preds = %_ZN5QListIiED2Ev.exit, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i15, %bb.j
  %i.ce = mul i32 %i.bb, %.sroa.speculated29
  %i.cf = add i32 %i.ce, %.sroa.057.0.lcssa
  %i.cg = add i32 %i.cf, %i.bf
  %i.ch = add i32 %i.cg, %i.bh
  %.sroa.057.1 = call i32 @llvm.smin.i32(i32 %i.ch, i32 16777215)
  %i.ci = trunc i64 %i.ar to i32
  %i.cj = add i32 %i.ci, -1
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.cj, i32 0)
  %i.ck = mul i32 %i.bd, %.sroa.speculated
  %i.cl = add i32 %i.ck, %.sroa.10.0.lcssa
  %i.cm = add i32 %i.cl, %i.bj
  %i.cn = add i32 %i.cm, %i.bl
  %spec.select = call i32 @llvm.smin.i32(i32 %i.cn, i32 16777215)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  %.sroa.10.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.10.0.insert.shift = shl nuw i64 %.sroa.10.0.insert.ext, 32
  %.sroa.057.0.insert.ext = zext i32 %.sroa.057.1 to i64
  %.sroa.057.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.057.0.insert.ext
  ret i64 %.sroa.057.0.insert.insert

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i19:     ; preds = %bb.f
  %i.co = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %.not.i.i20 = icmp eq i32 %i.co, 1
  br i1 %.not.i.i20, label %bb.k, label %_ZN5QListIiED2Ev.exit21

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i19
  %i.cp = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cp, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIiED2Ev.exit21

_ZN5QListIiED2Ev.exit21:                          ; preds = %bb.f, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i19, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.cq = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i22, label %_ZN5QListIiED2Ev.exit25, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i23

_ZN17QArrayDataPointerIiE5derefEv.exit.i.i23:     ; preds = %_ZN5QListIiED2Ev.exit21
  %i.cr = atomicrmw sub ptr %i.cq, i32 1 acq_rel, align 4
  %.not.i.i24 = icmp eq i32 %i.cr, 1
  br i1 %.not.i.i24, label %bb.l, label %_ZN5QListIiED2Ev.exit25

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i23
  %i.cs = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cs, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIiED2Ev.exit25

_ZN5QListIiED2Ev.exit25:                          ; preds = %_ZN5QListIiED2Ev.exit21, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i23, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN14QCPLayoutInsetC2Ev(ptr noundef align 8 dereferenceable_or_null(264) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN16QCPLayoutElementC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(168) %0, ptr noundef null)
  store ptr getelementptr inbounds nuw inrange(-16, 296) (i8, ptr @_ZTV14QCPLayoutInset, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN14QCPLayoutInsetD2Ev(ptr noundef align 8 dead_on_return(264) dereferenceable_or_null(264) initializes((0, 8)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 296) (i8, ptr @_ZTV14QCPLayoutInset, i64 16), ptr %0, align 8
  %i.a = load ptr, ptr getelementptr inbounds nuw inrange(-264, 48) (i8, ptr @_ZTV14QCPLayoutInset, i64 264), align 8
  %i.b = invoke noundef i32 %i.a(ptr noundef align 8 dereferenceable_or_null(168) %0)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !170

.noexc:                                           ; preds = %bb.a
  %.04.i = add i32 %i.b, -1                       ; 2 uses
  %i.c = icmp sgt i32 %.04.i, -1
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN9QCPLayout8removeAtEi.exit.i, %.noexc
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef align 8 dereferenceable_or_null(168) %0)
          to label %_ZN9QCPLayout5clearEv.exit unwind label %.loopexit.split-lp, !inline_history !170

.lr.ph.i:                                         ; preds = %.noexc, %_ZN9QCPLayout8removeAtEi.exit.i
  %.05.i = phi i32 [ %.0.i, %_ZN9QCPLayout8removeAtEi.exit.i ], [ %.04.i, %.noexc ] ; 4 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef align 8 dereferenceable_or_null(168) %0, i32 noundef %.05.i)
          to label %.noexc2 unwind label %.loopexit, !inline_history !170

.noexc2:                                          ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN9QCPLayout8removeAtEi.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc2
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef ptr %i.m(ptr noundef align 8 dereferenceable_or_null(168) %0, i32 noundef %.05.i)
          to label %.noexc3 unwind label %.loopexit, !inline_history !170 ; 3 uses

.noexc3:                                          ; preds = %bb.b
  %.not.i.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i.not.i, label %_ZN9QCPLayout8removeAtEi.exit.i, label %bb.c

bb.c:                                             ; preds = %.noexc3
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable_or_null(168) %i.n) #51, !inline_history !171
  br label %_ZN9QCPLayout8removeAtEi.exit.i

_ZN9QCPLayout8removeAtEi.exit.i:                  ; preds = %bb.c, %.noexc3, %.noexc2
  %.0.i = add nsw i32 %.05.i, -1
  %i.r = icmp sgt i32 %.05.i, 0
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !109

_ZN9QCPLayout5clearEv.exit:                       ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN5QListI6QRectFED2Ev.exit, label %_ZN17QArrayDataPointerI6QRectFE5derefEv.exit.i.i

_ZN17QArrayDataPointerI6QRectFE5derefEv.exit.i.i: ; preds = %_ZN9QCPLayout5clearEv.exit
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.u, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN5QListI6QRectFED2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerI6QRectFE5derefEv.exit.i.i
  %i.v = load ptr, ptr %i.s, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.v, i64 noundef 32, i64 noundef 8) #51
  br label %_ZN5QListI6QRectFED2Ev.exit

_ZN5QListI6QRectFED2Ev.exit:                      ; preds = %_ZN9QCPLayout5clearEv.exit, %_ZN17QArrayDataPointerI6QRectFE5derefEv.exit.i.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i4, label %_ZN5QListI6QFlagsIN2Qt13AlignmentFlagEEED2Ev.exit, label %_ZN17QArrayDataPointerI6QFlagsIN2Qt13AlignmentFlagEEE5derefEv.exit.i.i

_ZN17QArrayDataPointerI6QFlagsIN2Qt13AlignmentFlagEEE5derefEv.exit.i.i: ; preds = %_ZN5QListI6QRectFED2Ev.exit
  %i.y = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4
  %.not.i.i5 = icmp eq i32 %i.y, 1
  br i1 %.not.i.i5, label %bb.e, label %_ZN5QListI6QFlagsIN2Qt13AlignmentFlagEEED2Ev.exit

bb.e:                                             ; preds = %_ZN17QArrayDataPointerI6QFlagsIN2Qt13AlignmentFlagEEE5derefEv.exit.i.i
  %i.z = load ptr, ptr %i.w, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.z, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListI6QFlagsIN2Qt13AlignmentFlagEEED2Ev.exit

_ZN5QListI6QFlagsIN2Qt13AlignmentFlagEEED2Ev.exit: ; preds = %_ZN5QListI6QRectFED2Ev.exit, %_ZN17QArrayDataPointerI6QFlagsIN2Qt13AlignmentFlagEEE5derefEv.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i6, label %_ZN5QListIN14QCPLayoutInset14InsetPlacementEED2Ev.exit, label %_ZN17QArrayDataPointerIN14QCPLayoutInset14InsetPlacementEE5derefEv.exit.i.i

_ZN17QArrayDataPointerIN14QCPLayoutInset14InsetPlacementEE5derefEv.exit.i.i: ; preds = %_ZN5QListI6QFlagsIN2Qt13AlignmentFlagEEED2Ev.exit
  %i.ac = atomicrmw sub ptr %i.ab, i32 1 acq_rel, align 4
  %.not.i.i7 = icmp eq i32 %i.ac, 1
  br i1 %.not.i.i7, label %bb.f, label %_ZN5QListIN14QCPLayoutInset14InsetPlacementEED2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIN14QCPLayoutInset14InsetPlacementEE5derefEv.exit.i.i
  %i.ad = load ptr, ptr %i.aa, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ad, i64 noundef 4, i64 noundef 8) #51
  br label %_ZN5QListIN14QCPLayoutInset14InsetPlacementEED2Ev.exit

_ZN5QListIN14QCPLayoutInset14InsetPlacementEED2Ev.exit: ; preds = %_ZN5QListI6QFlagsIN2Qt13AlignmentFlagEEED2Ev.exit, %_ZN17QArrayDataPointerIN14QCPLayoutInset14InsetPlacementEE5derefEv.exit.i.i, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i8, label %_ZN5QListIP16QCPLayoutElementED2Ev.exit, label %_ZN17QArrayDataPointerIP16QCPLayoutElementE5derefEv.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN13QCPItemAnchorD2Ev:bb.a
  %.not.i.i15 = icmp eq ptr %i.w, null
  br i1 %.not.i.i15, label %_ZN4QSetIP15QCPItemPositionED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP15QCPItemPositionEED2Ev.exit14
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %_ZN4QSetIP15QCPItemPositionED2Ev.exit, label %_ZN9QtPrivate8RefCount5derefEv.exit.i.i

_ZN9QtPrivate8RefCount5derefEv.exit.i.i:          ; preds = %bb.f
  %i.z = atomicrmw sub ptr %i.w, i32 1 acq_rel, align 4
  %.not3.i.i = icmp eq i32 %i.z, 1
  br i1 %.not3.i.i, label %bb.g, label %_ZN4QSetIP15QCPItemPositionED2Ev.exit

bb.g:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i.i
  %i.aa = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4QSetIP15QCPItemPositionED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.aa, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN12QHashPrivate4DataINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %.idx.i.i.i = mul i64 %i.ag, 144                ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.loopexit.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.i
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i, %.preheader.preheader.i.i.i
  %i.aj = phi ptr [ %i.ak, %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i ], [ %i.ai, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -144 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 -16
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.am) #53
  br label %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i

_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i: ; preds = %bb.j, %.preheader.i.i.i
  %i.an = icmp eq ptr %i.ak, %i.ad
  br i1 %i.an, label %.loopexit.i.i.i, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i, %bb.i
  %i.ao = or disjoint i64 %.idx.i.i.i, 8
  call void @_ZdaPvm(ptr noundef %i.af, i64 noundef %i.ao) #53
  br label %_ZN12QHashPrivate4DataINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i

_ZN12QHashPrivate4DataINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef 40) #53
  br label %_ZN4QSetIP15QCPItemPositionED2Ev.exit

_ZN4QSetIP15QCPItemPositionED2Ev.exit:            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP15QCPItemPositionEED2Ev.exit14, %bb.f, %_ZN9QtPrivate8RefCount5derefEv.exit.i.i, %bb.g, %_ZN12QHashPrivate4DataINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i
  %i.ap = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i16, label %_ZN4QSetIP15QCPItemPositionED2Ev.exit26, label %bb.k

bb.k:                                             ; preds = %_ZN4QSetIP15QCPItemPositionED2Ev.exit
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 4
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %_ZN4QSetIP15QCPItemPositionED2Ev.exit26, label %_ZN9QtPrivate8RefCount5derefEv.exit.i.i17

_ZN9QtPrivate8RefCount5derefEv.exit.i.i17:        ; preds = %bb.k
  %i.as = atomicrmw sub ptr %i.ap, i32 1 acq_rel, align 4
  %.not3.i.i18 = icmp eq i32 %i.as, 1
  br i1 %.not3.i.i18, label %bb.l, label %_ZN4QSetIP15QCPItemPositionED2Ev.exit26

bb.l:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i.i17
  %i.at = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN4QSetIP15QCPItemPositionED2Ev.exit26, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr i8, ptr %i.at, i64 32
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN12QHashPrivate4DataINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i25, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %.idx.i.i.i19 = mul i64 %i.az, 144              ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit.i.i.i24, label %.preheader.preheader.i.i.i20

.preheader.preheader.i.i.i20:                     ; preds = %bb.n
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %.idx.i.i.i19
  br label %.preheader.i.i.i21

.preheader.i.i.i21:                               ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i23, %.preheader.preheader.i.i.i20
  %i.bc = phi ptr [ %i.bd, %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i23 ], [ %i.bb, %.preheader.preheader.i.i.i20 ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -144 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 -16
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i22, label %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i23, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i.i21
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #53
  br label %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i23

_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i23: ; preds = %bb.o, %.preheader.i.i.i21
  %i.bg = icmp eq ptr %i.bd, %i.aw
  br i1 %i.bg, label %.loopexit.i.i.i24, label %.preheader.i.i.i21

.loopexit.i.i.i24:                                ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i.i23, %bb.n
  %i.bh = or disjoint i64 %.idx.i.i.i19, 8
  call void @_ZdaPvm(ptr noundef %i.ay, i64 noundef %i.bh) #53
  br label %_ZN12QHashPrivate4DataINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i25

_ZN12QHashPrivate4DataINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i25: ; preds = %.loopexit.i.i.i24, %bb.m
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef 40) #53
  br label %_ZN4QSetIP15QCPItemPositionED2Ev.exit26

_ZN4QSetIP15QCPItemPositionED2Ev.exit26:          ; preds = %_ZN4QSetIP15QCPItemPositionED2Ev.exit, %bb.k, %_ZN9QtPrivate8RefCount5derefEv.exit.i.i17, %bb.l, %_ZN12QHashPrivate4DataINS_4NodeIP15QCPItemPosition15QHashDummyValueEEED2Ev.exit.i.i25
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i27, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZN4QSetIP15QCPItemPositionED2Ev.exit26
  %i.bk = atomicrmw sub ptr %i.bj, i32 1 acq_rel, align 4
  %.not.i.i28 = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i28, label %bb.p, label %_ZN7QStringD2Ev.exit

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.bl = load ptr, ptr %i.bi, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %_ZN4QSetIP15QCPItemPositionED2Ev.exit26, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.p
  ret void

.lr.ph50:                                         ; preds = %_ZN5QListIP15QCPItemPositionED2Ev.exit10, %bb.r
  %.sroa.7.049 = phi ptr [ %i.br, %bb.r ], [ %i.r, %_ZN5QListIP15QCPItemPositionED2Ev.exit10 ] ; 2 uses
  %i.bm = load ptr, ptr %.sroa.7.049, align 8     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 152
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = icmp eq ptr %i.bo, %0
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph50
  %i.bq = invoke noundef zeroext i1 @_ZN15QCPItemPosition16setParentAnchorYEP13QCPItemAnchorb(ptr noundef align 8 dereferenceable_or_null(160) %i.bm, ptr noundef null, i1 noundef zeroext false)
          to label %bb.r unwind label %.loopexit  ; 0 uses

bb.r:                                             ; preds = %bb.q, %.lr.ph50
  %i.br = getelementptr i8, ptr %.sroa.7.049, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.br, %i.u
  br i1 %.not42, label %._crit_edge51, label %.lr.ph50, !llvm.loop !481

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.c
  %lpad.loopexit43 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP15QCPItemPositionEED2Ev.exit, %bb.a
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit43, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp44, %.loopexit.split-lp.loopexit.split-lp ]
  %i.bs = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.bs) #52
  unreachable
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK4QSetIP15QCPItemPositionE6valuesEv(ptr dead_on_unwind noalias writable sret(%class.QList.132) align 8 %0, ptr noundef align 8 dereferenceable_or_null(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK4QSetIP15QCPItemPositionE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  br label %_ZNK4QSetIP15QCPItemPositionE4sizeEv.exit

_ZNK4QSetIP15QCPItemPositionE4sizeEv.exit:        ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5QListIP15QCPItemPositionE7reserveEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.e)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNK4QSetIP15QCPItemPositionE4sizeEv.exit
  %i.f = load ptr, ptr %1, align 8, !noalias !482 ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.f, null
  br i1 %.not.i.i5, label %_ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !482 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !482
  %.not.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !482 ; 2 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.m = add i64 %i.o, 1                          ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %_ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit, label %.lr.ph, !llvm.loop !485

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.o = phi i64 [ %i.m, %bb.f ], [ 1, %bb.e ]    ; 4 uses
  %i.p = lshr i64 %i.o, 7
  %i.q = getelementptr [144 x i8], ptr %i.h, i64 %i.p
  %i.r = and i64 %i.o, 127
  %i.s = getelementptr i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !482
  %.not.i.i.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %._ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit.loopexit_crit_edge, !llvm.loop !485

._ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit, !llvm.loop !485

_ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit: ; preds = %bb.f, %bb.e, %._ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit.loopexit_crit_edge, %bb.c
  %.sroa.0.0.i.i = phi ptr [ null, %bb.c ], [ %i.f, %._ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit.loopexit_crit_edge ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.c ], [ %i.o, %._ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit.loopexit_crit_edge ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %2 = icmp ne ptr %.sroa.0.0.i.i, null
  %3 = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond14 = or i1 %2, %3
  br i1 %or.cond14, label %_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread.lr.ph, label %._crit_edge

_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread.lr.ph: ; preds = %bb.d, %_ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit
  %.sroa.4.0.i.i25 = phi i64 [ %.sroa.4.0.i.i, %_ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit ], [ 0, %bb.d ]
  %.sroa.0.0.i.i24 = phi ptr [ %.sroa.0.0.i.i, %_ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit ], [ %i.f, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread

_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread: ; preds = %_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread.lr.ph, %_ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit
  %.sroa.8.016 = phi i64 [ %.sroa.4.0.i.i25, %_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread.lr.ph ], [ %.sroa.8.1, %_ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.09.015 = phi ptr [ %.sroa.0.0.i.i24, %_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread.lr.ph ], [ %.sroa.09.1, %_ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit ] ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.09.015, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.sroa.8.016, 7
  %i.y = getelementptr [144 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = and i64 %.sroa.8.016, 127
  %i.aa = getelementptr i8, ptr %i.y, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = load i64, ptr %i.u, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIP15QCPItemPositionE7emplaceIJRS2_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread
  %i.ai = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP15QCPItemPositionE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP15QCPItemPositionE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIP15QCPItemPositionE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %_ZNK17QArrayDataPointerIP15QCPItemPositionE11needsDetachEv.exit.thread.i.i.i.i.i, label %bb.g

_ZNK17QArrayDataPointerIP15QCPItemPositionE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP15QCPItemPositionE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIP15QCPItemPositionE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerIP15QCPItemPositionE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIP15QCPItemPositionE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr i8, ptr %.sroa.09.015, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = add i64 %.sroa.8.016, 1                 ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %_ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %bb.g
  %i.ap = load ptr, ptr %i.v, align 8
  br label %.lr.ph32

bb.h:                                             ; preds = %.lr.ph32
  %i.aq = add i64 %i.as, 1                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.am
  br i1 %i.ar, label %_ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit, label %.lr.ph32, !llvm.loop !485

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.h
  %i.as = phi i64 [ %i.aq, %bb.h ], [ %i.an, %.lr.ph32.preheader ] ; 4 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr [144 x i8], ptr %i.ap, i64 %i.at
  %i.av = and i64 %i.as, 127
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i.i.i8 = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i.i.i8, label %bb.h, label %._ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit_crit_edge35, !llvm.loop !485

._ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit_crit_edge35: ; preds = %.lr.ph32
  br label %_ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit, !llvm.loop !485

_ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit: ; preds = %bb.h, %._ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit_crit_edge35, %bb.g
  %.sroa.09.1 = phi ptr [ %.sroa.09.015, %._ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit_crit_edge35 ], [ null, %bb.g ], [ null, %bb.h ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %i.as, %._ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit_crit_edge35 ], [ 0, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %i.ay = icmp ne ptr %.sroa.09.1, null
  %i.az = icmp ne i64 %.sroa.8.1, 0
  %or.cond = or i1 %i.ay, %i.az
  br i1 %or.cond, label %_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread, label %._crit_edge, !llvm.loop !486

bb.i:                                             ; preds = %_ZNK4QSetIP15QCPItemPositionE4sizeEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerIP15QCPItemPositionE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK4QSetIP15QCPItemPositionE14const_iteratorneERKS3_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4QSetIP15QCPItemPositionE14const_iteratorppEv.exit, %_ZNK4QSetIP15QCPItemPositionE10constBeginEv.exit
  ret void

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %i.ba, %bb.i ]
  call void @_ZN5QListIP15QCPItemPositionED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #51
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN15QCPItemPosition16setParentAnchorXEP13QCPItemAnchorb(ptr noundef align 8 dereferenceable_or_null(160) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QPointF, align 8             ; 6 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 8             ; 9 uses
  %10 = alloca %class.QDebug, align 8             ; 12 uses
  %11 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %12 = alloca %class.QDebug, align 8             ; 12 uses
  %13 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %14 = alloca %class.QDebug, align 8             ; 12 uses
  %15 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %16 = alloca %class.QPointF, align 8            ; 6 uses
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not120 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not120, label %.thread115, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  store i32 2, ptr %11, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.c, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %10, ptr noundef nonnull align 8 dereferenceable_or_null(32) %11)
  %i.d = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, i64 61, ptr nonnull @__PRETTY_FUNCTION__._ZN15QCPItemPosition16setParentAnchorXEP13QCPItemAnchorb)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  %i.e = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %.noexc
  %i.f = load ptr, ptr %9, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.c
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit.i

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.h = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.h, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  %i.i = load ptr, ptr %10, align 8               ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 48
  %i.k = load i8, ptr %i.j, align 8, !range !6, !noundef !7
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %_ZN6QDebuglsEPKc.exit

bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.m = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.i, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.n ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.e
  %.pre127 = load ptr, ptr %10, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.f:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %9, align 8                ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.f
  %i.p = atomicrmw sub ptr %i.o, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.p, 1
  br i1 %.not.i.i4.i, label %bb.g, label %_ZN7QStringD2Ev.exit5.i

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.q = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.q, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.r = phi ptr [ %.pre127, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.i, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, i64 31, ptr nonnull @.str.93)
          to label %.noexc48 unwind label %bb.n

.noexc48:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.s = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %.noexc48
  %i.t = load ptr, ptr %8, align 8                ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i44, label %_ZN7QStringD2Ev.exit.i47, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i45

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i45:  ; preds = %bb.h
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4
  %.not.i.i.i46 = icmp eq i32 %i.u, 1
  br i1 %.not.i.i.i46, label %bb.i, label %_ZN7QStringD2Ev.exit.i47

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i45
  %i.v = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.v, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i47

_ZN7QStringD2Ev.exit.i47:                         ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i45, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  %i.w = load ptr, ptr %10, align 8               ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %i.y = load i8, ptr %i.x, align 8, !range !6, !noundef !7
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %_ZN6QDebuglsEPKc.exit52

bb.j:                                             ; preds = %_ZN7QStringD2Ev.exit.i47
  %i.aa = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.w, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit52_crit_edge unwind label %bb.n ; 0 uses

._ZN6QDebuglsEPKc.exit52_crit_edge:               ; preds = %bb.j
  %.pre128 = load ptr, ptr %10, align 8
  br label %_ZN6QDebuglsEPKc.exit52

bb.k:                                             ; preds = %.noexc48
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i2.i40 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i2.i40, label %_ZN7QStringD2Ev.exit5.i43, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i41

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i41: ; preds = %bb.k
  %i.ad = atomicrmw sub ptr %i.ac, i32 1 acq_rel, align 4
  %.not.i.i4.i42 = icmp eq i32 %i.ad, 1
  br i1 %.not.i.i4.i42, label %bb.l, label %_ZN7QStringD2Ev.exit5.i43

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i41
  %i.ae = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ae, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i43

_ZN7QStringD2Ev.exit5.i43:                        ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i41, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %.body

_ZN6QDebuglsEPKc.exit52:                          ; preds = %._ZN6QDebuglsEPKc.exit52_crit_edge, %_ZN7QStringD2Ev.exit.i47
  %i.af = phi ptr [ %.pre128, %._ZN6QDebuglsEPKc.exit52_crit_edge ], [ %i.w, %_ZN7QStringD2Ev.exit.i47 ]
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEy(ptr noundef align 8 dereferenceable_or_null(16) %i.af, i64 noundef %i.ag)
          to label %.noexc53 unwind label %bb.n   ; 0 uses

.noexc53:                                         ; preds = %_ZN6QDebuglsEPKc.exit52
  %i.ai = load ptr, ptr %10, align 8              ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 48
  %i.ak = load i8, ptr %i.aj, align 8, !range !6, !noundef !7
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.m, label %_ZN6QDebuglsEy.exit

bb.m:                                             ; preds = %.noexc53
  %i.am = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ai, i8 noundef signext 32)
          to label %_ZN6QDebuglsEy.exit unwind label %bb.n ; 0 uses

_ZN6QDebuglsEy.exit:                              ; preds = %.noexc53, %bb.m
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %.thread

bb.n:                                             ; preds = %bb.m, %_ZN6QDebuglsEPKc.exit52, %bb.j, %_ZN6QDebuglsEPKc.exit, %bb.e, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %_ZN7QStringD2Ev.exit5.i43, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %_ZN7QStringD2Ev.exit5.i ], [ %i.an, %bb.n ], [ %i.ab, %_ZN7QStringD2Ev.exit5.i43 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.bh

.lr.ph:                                           ; preds = %.preheader, %bb.aq
end_hunk_3
begin_hunk_4_@_ZNK11QCustomPlot12selectedAxesEv:bb.a
  %i.s = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i25, label %_ZN5QListIP7QCPAxisED2Ev.exit, label %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i

_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i: ; preds = %_ZN5QListIP7QCPAxisElsEOS2_.exit
  %i.t = atomicrmw sub ptr %i.s, i32 1 acq_rel, align 4
  %.not.i.i26 = icmp eq i32 %i.t, 1
  br i1 %.not.i.i26, label %bb.f, label %_ZN5QListIP7QCPAxisED2Ev.exit

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i
  %i.u = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.u, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP7QCPAxisED2Ev.exit

_ZN5QListIP7QCPAxisED2Ev.exit:                    ; preds = %_ZN5QListIP7QCPAxisElsEOS2_.exit, %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.v = getelementptr i8, ptr %.sroa.1061.070, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !630

bb.g:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5QListIP7QCPAxisED2Ev.exit30

bb.h:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.y = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i27, label %_ZN5QListIP7QCPAxisED2Ev.exit30, label %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i28

_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i28: ; preds = %bb.h
  %i.z = atomicrmw sub ptr %i.y, i32 1 acq_rel, align 4
  %.not.i.i29 = icmp eq i32 %i.z, 1
  br i1 %.not.i.i29, label %bb.i, label %_ZN5QListIP7QCPAxisED2Ev.exit30

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i28
  %i.aa = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aa, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP7QCPAxisED2Ev.exit30

_ZN5QListIP7QCPAxisED2Ev.exit30:                  ; preds = %bb.i, %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i28, %bb.h, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.x, %bb.h ], [ %i.x, %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i28 ], [ %i.x, %bb.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %.not.i.i.i.i31 = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i31, label %_ZN9QtPrivate17QForeachContainerI5QListIP11QCPAxisRectEED2Ev.exit34, label %_ZN17QArrayDataPointerIP11QCPAxisRectE5derefEv.exit.i.i.i32

_ZN17QArrayDataPointerIP11QCPAxisRectE5derefEv.exit.i.i.i32: ; preds = %_ZN5QListIP7QCPAxisED2Ev.exit30
  %i.ab = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %.not.i.i.i33 = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i.i33, label %bb.j, label %_ZN9QtPrivate17QForeachContainerI5QListIP11QCPAxisRectEED2Ev.exit34

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIP11QCPAxisRectE5derefEv.exit.i.i.i32
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP11QCPAxisRectEED2Ev.exit34

._crit_edge74:                                    ; preds = %bb.q, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPAxisEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit, label %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i: ; preds = %._crit_edge74
  %i.ac = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %.not.i.i.i36 = icmp eq i32 %i.ac, 1
  br i1 %.not.i.i.i36, label %bb.k, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.i, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit: ; preds = %._crit_edge74, %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i, %bb.k
  %i.ad = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i37, label %_ZN5QListIP7QCPAxisED2Ev.exit40, label %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i38

_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i38: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit
  %i.ae = atomicrmw sub ptr %i.ad, i32 1 acq_rel, align 4
  %.not.i.i39 = icmp eq i32 %i.ae, 1
  br i1 %.not.i.i39, label %bb.l, label %_ZN5QListIP7QCPAxisED2Ev.exit40

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i38
  %i.af = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.af, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP7QCPAxisED2Ev.exit40

_ZN5QListIP7QCPAxisED2Ev.exit40:                  ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPAxisEED2Ev.exit, %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i38, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  ret void

bb.m:                                             ; preds = %.lr.ph73, %bb.q
  %.sroa.10.072 = phi ptr [ %i.k, %.lr.ph73 ], [ %i.ao, %bb.q ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.10.072, align 8    ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 84
  %.sroa.0.0.copyload.i = load i32, ptr %i.ah, align 4
  %.not68 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not68, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ag, ptr %i.a, align 8
  %i.ai = load i64, ptr %i.p, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIP7QCPAxisE7emplaceIJRS2_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListIP7QCPAxisE6appendES1_.exit

_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIP7QCPAxisE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIP7QCPAxisE6appendES1_.exit unwind label %bb.o

_ZN5QListIP7QCPAxisE6appendES1_.exit:             ; preds = %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.o:                                             ; preds = %_ZNK17QArrayDataPointerIP7QCPAxisE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP11QCPAxisRectEED2Ev.exit34, label %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i43

_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i43: ; preds = %bb.o
  %i.an = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %.not.i.i.i44 = icmp eq i32 %i.an, 1
  br i1 %.not.i.i.i44, label %bb.p, label %_ZN9QtPrivate17QForeachContainerI5QListIP11QCPAxisRectEED2Ev.exit34

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i43
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.i, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP11QCPAxisRectEED2Ev.exit34

bb.q:                                             ; preds = %_ZN5QListIP7QCPAxisE6appendES1_.exit, %bb.m
  %i.ao = getelementptr i8, ptr %.sroa.10.072, i64 8 ; 2 uses
  %.not67 = icmp eq ptr %i.ao, %i.o
  br i1 %.not67, label %._crit_edge74, label %bb.m, !llvm.loop !631

_ZN9QtPrivate17QForeachContainerI5QListIP11QCPAxisRectEED2Ev.exit34: ; preds = %bb.o, %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i43, %bb.p, %bb.d, %_ZN5QListIP7QCPAxisED2Ev.exit30, %_ZN17QArrayDataPointerIP11QCPAxisRectE5derefEv.exit.i.i.i32, %bb.j
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16, %bb.j ], [ %i.q, %bb.d ], [ %.pn16, %_ZN5QListIP7QCPAxisED2Ev.exit30 ], [ %.pn16, %_ZN17QArrayDataPointerIP11QCPAxisRectE5derefEv.exit.i.i.i32 ], [ %i.am, %bb.p ], [ %i.am, %bb.o ], [ %i.am, %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i.i43 ]
  %i.ap = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i46, label %_ZN5QListIP7QCPAxisED2Ev.exit49, label %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i47

_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i47: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP11QCPAxisRectEED2Ev.exit34
  %i.aq = atomicrmw sub ptr %i.ap, i32 1 acq_rel, align 4
  %.not.i.i48 = icmp eq i32 %i.aq, 1
  br i1 %.not.i.i48, label %bb.r, label %_ZN5QListIP7QCPAxisED2Ev.exit49

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i47
  %i.ar = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ar, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIP7QCPAxisED2Ev.exit49

_ZN5QListIP7QCPAxisED2Ev.exit49:                  ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP11QCPAxisRectEED2Ev.exit34, %_ZN17QArrayDataPointerIP7QCPAxisE5derefEv.exit.i.i47, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  call void @_ZN5QListIP7QCPAxisED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #51
  resume { ptr, i32 } %.pn16.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK11QCPAxisRect4axesEv(ptr dead_on_unwind noalias writable sret(%class.QList.143) align 8 initializes((0, 24)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(432) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QHashIterator.203, align 8   ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  %i.a = getelementptr i8, ptr %1, i64 424
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  store ptr %i.b, ptr %2, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %.not.i.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i.i, label %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i, label %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i

_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i: ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %2, align 8          ; 2 uses
  %.not.i2.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i2.i, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, label %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i

_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i: ; preds = %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i, %bb.b
  %.pr8.i = phi ptr [ %.pr.pre.i, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i ], [ %i.b, %bb.b ] ; 4 uses
  %i.e = getelementptr i8, ptr %.pr8.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %.not.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit

bb.c:                                             ; preds = %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i
  %i.h = getelementptr i8, ptr %.pr8.i, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.k = add i64 %i.m, 1                          ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, label %.lr.ph, !llvm.loop !632

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %i.k, %bb.d ], [ 1, %bb.c ]    ; 4 uses
  %i.n = lshr i64 %i.m, 7
  %i.o = getelementptr [144 x i8], ptr %i.f, i64 %i.n
  %i.p = and i64 %i.m, 127
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge, !llvm.loop !632

._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, !llvm.loop !632

_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit: ; preds = %bb.d, %bb.c, %._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge, %bb.a, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i
  %.sroa.0.0.i.i = phi ptr [ null, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i ], [ %.pr8.i, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i ], [ null, %bb.a ], [ null, %bb.c ], [ %.pr8.i, %._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge ], [ null, %bb.d ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i ], [ 0, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.m, %._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge ], [ 0, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %.sroa.0.0.i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %.sroa.4.0.i.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = icmp ne ptr %.sroa.0.0.i.i, null
  %i.w = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond5 = or i1 %i.v, %i.w
  br i1 %or.cond5, label %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph, label %._crit_edge

_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph: ; preds = %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread

_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread: ; preds = %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph, %_ZN5QListIP7QCPAxisElsERKS2_.exit
  %.sroa.2.0.copyload.i.i = phi i64 [ %.sroa.4.0.i.i, %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph ], [ %i.ba, %_ZN5QListIP7QCPAxisElsERKS2_.exit ] ; 4 uses
  %i.x = phi ptr [ %.sroa.0.0.i.i, %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph ], [ %.pr, %_ZN5QListIP7QCPAxisElsERKS2_.exit ] ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = getelementptr i8, ptr %i.x, i64 32       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread
  %i.aa = phi i64 [ %i.ab, %bb.g ], [ %.sroa.2.0.copyload.i.i, %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread ]
  %i.ab = add i64 %i.aa, 1                        ; 5 uses
  store i64 %i.ab, ptr %i.t, align 8
  %i.ac = load i64, ptr %i.y, align 8
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.z, align 8
  %i.af = lshr i64 %i.ab, 7
  %i.ag = getelementptr [144 x i8], ptr %i.ae, i64 %i.af
  %i.ah = and i64 %i.ab, 127
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %.not.i.i.i.i3 = icmp eq i8 %i.aj, -1
  br i1 %.not.i.i.i.i3, label %bb.e, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit, !llvm.loop !632

_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit: ; preds = %bb.g, %bb.f
  store ptr %i.x, ptr %i.u, align 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ak = load ptr, ptr %i.z, align 8
  %i.al = lshr i64 %.sroa.2.0.copyload.i.i, 7
  %i.am = getelementptr [144 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = and i64 %.sroa.2.0.copyload.i.i, 127
  %i.ao = getelementptr i8, ptr %i.am, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.am, i64 %i.an
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr [32 x i8], ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr [8 x i8], ptr %i.av, i64 %i.ax
  invoke void @_ZN9QtPrivate15QCommonArrayOpsIP7QCPAxisE10growAppendEPKS2_S5_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef %i.av, ptr noundef %i.ay)
          to label %_ZN5QListIP7QCPAxisElsERKS2_.exit unwind label %bb.h

_ZN5QListIP7QCPAxisElsERKS2_.exit:                ; preds = %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit
  %.pr = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.az = icmp ne ptr %.pr, null
  %i.ba = load i64, ptr %i.t, align 8             ; 2 uses
  %i.bb = icmp ne i64 %i.ba, 0
  %or.cond = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond, label %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread, label %._crit_edge

bb.h:                                             ; preds = %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(40) %2) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  call void @_ZN5QListIP7QCPAxisED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #51
  resume { ptr, i32 } %i.bc

._crit_edge:                                      ; preds = %_ZN5QListIP7QCPAxisElsERKS2_.exit, %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit
  call void @_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(40) %2) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK11QCustomPlot15selectedLegendsEv(ptr dead_on_unwind noalias writable sret(%class.QList.175) align 8 initializes((0, 24)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(513) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.QStack.170, align 8          ; 20 uses
  %3 = alloca %class.QList.66, align 8            ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr i8, ptr %1, i64 104
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge130, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZN9QtPrivate12QPodArrayOpsIP16QCPLayoutElementE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %bb.d

_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIP16QCPLayoutElementE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP16QCPLayoutElementEED2Ev.exit47

bb.d:                                             ; preds = %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i, %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i64, ptr %i.d, align 8             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.j = icmp eq i64 %.pre, 0
  br i1 %i.j, label %._crit_edge130thread-pre-split, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph129, %_ZN9QtPrivate17QForeachContainerI5QListIP16QCPLayoutElementEED2Ev.exit
  %i.p = phi i64 [ %.pre, %.lr.ph129 ], [ %i.ah, %_ZN9QtPrivate17QForeachContainerI5QListIP16QCPLayoutElementEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  %i.q = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i22, label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i.i.i.i21

_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i.i.i.i21: ; preds = %bb.e
  %i.r = load atomic i32, ptr %i.q monotonic, align 4
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i22, label %bb.f

_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i22: ; preds = %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i.i.i.i21, %bb.e
  invoke void @_ZN17QArrayDataPointerIP16QCPLayoutElementE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i22._crit_edge unwind label %bb.h

_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i22._crit_edge: ; preds = %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i22
  %.pre138 = load i64, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i22._crit_edge, %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i.i.i.i21
  %i.t = phi i64 [ %.pre138, %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.thread.i.i.i.i.i.i22._crit_edge ], [ %i.p, %_ZNK17QArrayDataPointerIP16QCPLayoutElementE11needsDetachEv.exit.i.i.i.i.i.i21 ] ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = add i64 %i.t, -1
  store i64 %i.y, ptr %i.i, align 8
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr dead_on_unwind nonnull writable sret(%class.QList.66) align 8 %3, ptr noundef align 8 dereferenceable_or_null(168) %i.x, i1 noundef zeroext false)
          to label %_ZN5QListIP16QCPLayoutElementED2Ev.exit unwind label %bb.h

_ZN5QListIP16QCPLayoutElementED2Ev.exit:          ; preds = %bb.f
  %i.ac = load ptr, ptr %3, align 8, !noalias !633 ; 6 uses
  %i.ad = load ptr, ptr %i.l, align 8, !noalias !633 ; 2 uses
  %i.ae = load i64, ptr %i.m, align 8, !noalias !633
  %.idx = shl i64 %i.ae, 3                        ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK28QCPSelectionDecoratorBracket15getTangentAngleEPK23QCPPlottableInterface1Dii:bb.a
  %.not = icmp slt i32 %2, %i.f
  br i1 %.not, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %3, 0                       ; 2 uses
  %i.h = select i1 %i.g, i32 -1, i32 1
  %i.i = getelementptr i8, ptr %0, i64 144
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable_or_null(8) %1)
  %i.n = xor i32 %2, -1
  %i.o = add i32 %i.m, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink122 = phi i32 [ %i.o, %bb.d ], [ %2, %bb.c ]
  %i.p = load i32, ptr %i.i, align 8
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %.sink122) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  store i32 2, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.r, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(32) %5)
  %i.s = load ptr, ptr %4, align 8
  %i.t = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.s, i32 noundef %.sroa.speculated)
          to label %.noexc unwind label %bb.g     ; 0 uses

.noexc:                                           ; preds = %bb.e
  %i.u = load ptr, ptr %4, align 8                ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !6, !noundef !7
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZN6QDebuglsEi.exit

bb.f:                                             ; preds = %.noexc
  %i.y = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.u, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit unwind label %bb.g ; 0 uses

_ZN6QDebuglsEi.exit:                              ; preds = %.noexc, %bb.f
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.z = sext i32 %.sroa.speculated to i64        ; 3 uses
  %i.aa = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %6, i64 noundef 16, i64 noundef 8, i64 noundef %i.z, i32 noundef 1) #51 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 8) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8
  %.not.i = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not.i, label %._crit_edge98, label %_ZN5QListI7QPointFEC2Ex.exit

_ZN5QListI7QPointFEC2Ex.exit:                     ; preds = %_ZN6QDebuglsEi.exit
  store i64 %i.z, ptr %i.ac, align 8
  %.idx6.i.i = shl nsw i64 %i.z, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %.idx6.i.i, i1 false)
  %i.ad = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge98

.lr.ph.preheader:                                 ; preds = %_ZN5QListI7QPointFEC2Ex.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  %i.ae = sitofp i32 %.sroa.speculated to double
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fdiv <2 x double> %i.bf, %i.ag          ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ai = icmp eq i32 %.sroa.speculated, 1
  br i1 %i.ai, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.m

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.04090 = phi i32 [ %2, %.lr.ph.preheader ], [ %i.bg, %bb.j ] ; 2 uses
  %i.ak = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bf, %bb.j ]
  %i.al = invoke { double, double } @_ZNK28QCPSelectionDecoratorBracket19getPixelCoordinatesEPK23QCPPlottableInterface1Di(ptr noundef align 8 dereferenceable_or_null(148) %0, ptr noundef nonnull %1, i32 noundef %.04090)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %.lr.ph
  %i.am = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZN5QListI7QPointFE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i: ; preds = %bb.h
  %i.an = load atomic i32, ptr %i.am monotonic, align 4
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %_ZN5QListI7QPointFE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i

_ZN5QListI7QPointFE6detachEv.exit.i:              ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i, %bb.h
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc53 unwind label %bb.k

.noexc53:                                         ; preds = %_ZN5QListI7QPointFE6detachEv.exit.i
  %.pre.i = load ptr, ptr %6, align 8             ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i: ; preds = %.noexc53, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i
  %i.ap = phi ptr [ %.pre.i, %.noexc53 ], [ %i.am, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i ]
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 4
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i, label %bb.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i, %.noexc53
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i
  %i.as = load ptr, ptr %i.ab, align 8
  %i.at = getelementptr [16 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  %i.au = extractvalue { double, double } %i.al, 1
  %i.av = extractvalue { double, double } %i.al, 0
  store double %i.av, ptr %i.at, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %i.au, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aw = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i55, label %_ZN5QListI7QPointFE6detachEv.exit.i59, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56: ; preds = %bb.i
  %i.ax = load atomic i32, ptr %i.aw monotonic, align 4
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %_ZN5QListI7QPointFE6detachEv.exit.i59, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57

_ZN5QListI7QPointFE6detachEv.exit.i59:            ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56, %bb.i
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc62 unwind label %bb.l

.noexc62:                                         ; preds = %_ZN5QListI7QPointFE6detachEv.exit.i59
  %.pre.i60 = load ptr, ptr %6, align 8           ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %.pre.i60, null
  br i1 %.not.i.i.i.i.i61, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57: ; preds = %.noexc62, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56
  %i.az = phi ptr [ %.pre.i60, %.noexc62 ], [ %i.aw, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i56 ]
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58, label %bb.j

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57, %.noexc62
  invoke void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i.i57, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58
  %i.bc = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.bd = getelementptr [16 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load <2 x double>, ptr %i.bd, align 8
  %i.bf = fadd <2 x double> %i.ak, %i.be          ; 2 uses
  %i.bg = add i32 %.04090, %i.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !738

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i, %_ZN5QListI7QPointFE6detachEv.exit.i, %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i.i58, %_ZN5QListI7QPointFE6detachEv.exit.i59
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %bb.m, %._crit_edge.new
  %indvars.iv105 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next106.1, %bb.m ] ; 3 uses
  %i.bj = phi <2 x double> [ zeroinitializer, %._crit_edge.new ], [ %i.bu, %bb.m ]
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.1, %bb.m ]
  %i.bk = getelementptr [16 x i8], ptr %i.bc, i64 %indvars.iv105
  %i.bl = load <2 x double>, ptr %i.bk, align 8
  %i.bm = fsub <2 x double> %i.bl, %i.ah          ; 2 uses
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bm, <2 x double> %i.bj)
  %i.bp = getelementptr [16 x i8], ptr %i.bc, i64 %indvars.iv105
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load <2 x double>, ptr %i.bq, align 8
  %i.bs = fsub <2 x double> %i.br, %i.ah          ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bs, <2 x double> %i.bo) ; 3 uses
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge98.loopexit.unr-lcssa, label %bb.m, !llvm.loop !739

._crit_edge98.loopexit.unr-lcssa:                 ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge98, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge98.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv105.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next106.1, %._crit_edge98.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.bu, %._crit_edge98.loopexit.unr-lcssa ]
  %lcmp.mod130 = trunc i32 %.sroa.speculated to i1
  call void @llvm.assume(i1 %lcmp.mod130)
  %i.bv = getelementptr [16 x i8], ptr %i.bc, i64 %indvars.iv105.epil.init
  %i.bw = load <2 x double>, ptr %i.bv, align 8
  %i.bx = fsub <2 x double> %i.bw, %i.ah          ; 2 uses
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.bx, <2 x double> %.epil.init)
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %.epil.preheader, %._crit_edge98.loopexit.unr-lcssa, %_ZN6QDebuglsEi.exit, %_ZN5QListI7QPointFEC2Ex.exit
  %i.ca = phi <2 x double> [ zeroinitializer, %_ZN5QListI7QPointFEC2Ex.exit ], [ zeroinitializer, %_ZN6QDebuglsEi.exit ], [ %i.bu, %._crit_edge98.loopexit.unr-lcssa ], [ %i.bz, %.epil.preheader ] ; 3 uses
  %i.cb = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ca)
  %i.cc = fcmp ole <2 x double> %i.cb, splat (double f0x3D719799812DEA11) ; 2 uses
  %i.cd = extractelement <2 x i1> %i.cc, i64 0
  %i.ce = extractelement <2 x i1> %i.cc, i64 1
  %or.cond83 = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond83, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge98
  %i.cf = extractelement <2 x double> %i.ca, i64 0
  %i.cg = extractelement <2 x double> %i.ca, i64 1
  %i.ch = call noundef double @atan2(double noundef %i.cg, double noundef %i.cf) #51
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge98, %bb.n
  %.0 = phi double [ %i.ch, %bb.n ], [ 0.000000e+00, %._crit_edge98 ]
  %i.ci = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QPointFED2Ev.exit, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i: ; preds = %bb.o
  %i.cj = atomicrmw sub ptr %i.ci, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.cj, 1
  br i1 %.not.i.i, label %bb.p, label %_ZN5QListI7QPointFED2Ev.exit

bb.p:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i
  %i.ck = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ck, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit

_ZN5QListI7QPointFED2Ev.exit:                     ; preds = %bb.o, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.t

bb.q:                                             ; preds = %bb.k, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.k ], [ %i.bi, %bb.l ]
  %i.cl = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i65, label %_ZN5QListI7QPointFED2Ev.exit68, label %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i66

_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i66: ; preds = %bb.q
  %i.cm = atomicrmw sub ptr %i.cl, i32 1 acq_rel, align 4
  %.not.i.i67 = icmp eq i32 %i.cm, 1
  br i1 %.not.i.i67, label %bb.r, label %_ZN5QListI7QPointFED2Ev.exit68

bb.r:                                             ; preds = %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i66
  %i.cn = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cn, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI7QPointFED2Ev.exit68

_ZN5QListI7QPointFED2Ev.exit68:                   ; preds = %bb.q, %_ZN17QArrayDataPointerI7QPointFE5derefEv.exit.i.i66, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.s

bb.s:                                             ; preds = %_ZN5QListI7QPointFED2Ev.exit68, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN5QListI7QPointFED2Ev.exit68 ], [ %i.aj, %bb.g ]
  resume { ptr, i32 } %.pn.pn.pn

bb.t:                                             ; preds = %bb.a, %bb.b, %_ZN5QListI7QPointFED2Ev.exit
  %.1 = phi double [ %.0, %_ZN5QListI7QPointFED2Ev.exit ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %.1
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef align 8 dereferenceable(16) ptr @_ZN5QListI7QPointFEixEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZN5QListI7QPointFE6detachEv.exit, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZN5QListI7QPointFE6detachEv.exit, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i

_ZN5QListI7QPointFE6detachEv.exit:                ; preds = %bb.a, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i
  tail call void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i, %_ZN5QListI7QPointFE6detachEv.exit
  %i.d = phi ptr [ %.pre, %_ZN5QListI7QPointFE6detachEv.exit ], [ %i.a, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i ]
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i, label %_ZN5QListI7QPointFE4dataEv.exit

_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i, %_ZN5QListI7QPointFE6detachEv.exit
  tail call void @_ZN17QArrayDataPointerI7QPointFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListI7QPointFE4dataEv.exit

_ZN5QListI7QPointFE4dataEv.exit:                  ; preds = %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerI7QPointFE11needsDetachEv.exit.thread.i.i.i
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr [16 x i8], ptr %i.h, i64 %1
  ret ptr %i.i
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPAxisRectC2EP11QCustomPlotb(ptr noundef align 8 dereferenceable_or_null(432) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.QList.143, align 8           ; 9 uses
  %4 = alloca %class.QList.143, align 8           ; 9 uses
  %5 = alloca %class.QList.143, align 8           ; 9 uses
  %6 = alloca %class.QList.143, align 8           ; 9 uses
  %7 = alloca %class.QPen, align 8                ; 6 uses
  %8 = alloca %class.QPen, align 8                ; 6 uses
  tail call void @_ZN16QCPLayoutElementC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(168) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTV11QCPAxisRect, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  invoke void @_ZN6QBrushC1EN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.e, i32 noundef 0)
          to label %bb.b unwind label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  invoke void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.f)
          to label %bb.c unwind label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  invoke void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.g)
          to label %bb.d unwind label %bb.aj

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 2, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %0, i64 232        ; 3 uses
  %i.k = invoke noalias noundef dereferenceable_or_null(264) ptr @_Znwm(i64 noundef 264) #54
          to label %bb.e unwind label %bb.ak      ; 4 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN14QCPLayoutInsetC1Ev(ptr noundef align 8 dereferenceable_or_null(264) %i.k)
          to label %bb.f unwind label %bb.al

bb.f:                                             ; preds = %bb.e
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 3, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.n, i8 0, i64 96, i1 false)
  store <2 x double> splat (double 8.500000e-01), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 6 uses
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.s, i8 0, i64 57, i1 false)
  %i.w = load ptr, ptr %i.v, align 8
  invoke void @_ZN12QCPLayerable20initializeParentPlotEP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(57) %i.k, ptr noundef %i.w)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 32       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i, label %_ZN12QWeakPointerI7QObjectEC2IS0_TnNSt9enable_ifIXsr3std14is_convertibleIPT_PS0_EE5valueEbE4typeELb1EEES5_b.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef ptr @_ZN15QtSharedPointer20ExternalRefCountData9getAndRefEPK7QObject(ptr noundef nonnull %0)
          to label %_ZN12QWeakPointerI7QObjectEC2IS0_TnNSt9enable_ifIXsr3std14is_convertibleIPT_PS0_EE5valueEbE4typeELb1EEES5_b.exit.i.i.i unwind label %.loopexit.split-lp

_ZN12QWeakPointerI7QObjectEC2IS0_TnNSt9enable_ifIXsr3std14is_convertibleIPT_PS0_EE5valueEbE4typeELb1EEES5_b.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.aa = phi ptr [ null, %bb.g ], [ %i.z, %bb.h ]
  %i.ab = load ptr, ptr %i.y, align 8             ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8
  %i.ac = getelementptr i8, ptr %i.x, i64 40
  store ptr %0, ptr %i.ac, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
end_hunk_5
begin_hunk_6_@_ZN11QCPAxisRectD2Ev:bb.a
bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %.05.i.i.i.i.i.i17, align 8 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i20, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.au) #51
  br label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i20

_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i20: ; preds = %bb.n, %bb.m, %bb.l, %.lr.ph.i.i.i.i.i.i16
  %i.aw = getelementptr i8, ptr %.05.i.i.i.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.aw, %i.ar
  br i1 %.not.i.i.i.i.i.i21, label %_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i22, label %.lr.ph.i.i.i.i.i.i16, !llvm.loop !386

_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i22: ; preds = %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i20, %bb.k
  %i.ax = load ptr, ptr %i.ak, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ax, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit23

_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit23:        ; preds = %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit, %_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i12, %_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i24, label %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit36, label %_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i25

_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i25: ; preds = %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit23
  %i.ba = atomicrmw sub ptr %i.az, i32 1 acq_rel, align 4
  %.not.i.i26 = icmp eq i32 %i.ba, 1
  br i1 %.not.i.i26, label %bb.o, label %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit36

bb.o:                                             ; preds = %_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i25
  %i.bb = getelementptr i8, ptr %0, i64 280
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr i8, ptr %0, i64 288
  %i.be = load i64, ptr %i.bd, align 8
  %.idx.i.i.i27 = shl i64 %i.be, 4                ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i27
  %.not4.i.i.i.i.i.i28 = icmp eq i64 %.idx.i.i.i27, 0
  br i1 %.not4.i.i.i.i.i.i28, label %_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i35, label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %bb.o, %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i30 = phi ptr [ %i.bk, %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i33 ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bg = load ptr, ptr %.05.i.i.i.i.i.i30, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i31 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i31, label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i33, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i29
  %i.bh = atomicrmw sub ptr %i.bg, i32 1 acq_rel, align 4
  %.not2.i.i.i.i.i.i.i.i.i32 = icmp eq i32 %i.bh, 1
  br i1 %.not2.i.i.i.i.i.i.i.i.i32, label %bb.q, label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i33

bb.q:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %.05.i.i.i.i.i.i30, align 8 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i33, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #51
  br label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i33

_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i33: ; preds = %bb.r, %bb.q, %bb.p, %.lr.ph.i.i.i.i.i.i29
  %i.bk = getelementptr i8, ptr %.05.i.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.bk, %i.bf
  br i1 %.not.i.i.i.i.i.i34, label %_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i35, label %.lr.ph.i.i.i.i.i.i29, !llvm.loop !386

_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i35: ; preds = %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i33, %bb.o
  %i.bl = load ptr, ptr %i.ay, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bl, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit36

_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit36:        ; preds = %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit23, %_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i25, %_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i35
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i37, label %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit49, label %_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i38

_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i38: ; preds = %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit36
  %i.bo = atomicrmw sub ptr %i.bn, i32 1 acq_rel, align 4
  %.not.i.i39 = icmp eq i32 %i.bo, 1
  br i1 %.not.i.i39, label %bb.s, label %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit49

bb.s:                                             ; preds = %_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i38
  %i.bp = getelementptr i8, ptr %0, i64 256
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 264
  %i.bs = load i64, ptr %i.br, align 8
  %.idx.i.i.i40 = shl i64 %i.bs, 4                ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 %.idx.i.i.i40
  %.not4.i.i.i.i.i.i41 = icmp eq i64 %.idx.i.i.i40, 0
  br i1 %.not4.i.i.i.i.i.i41, label %_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i48, label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %bb.s, %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i46
  %.05.i.i.i.i.i.i43 = phi ptr [ %i.by, %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i46 ], [ %i.bq, %bb.s ] ; 3 uses
  %i.bu = load ptr, ptr %.05.i.i.i.i.i.i43, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i44 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i44, label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i46, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i42
  %i.bv = atomicrmw sub ptr %i.bu, i32 1 acq_rel, align 4
  %.not2.i.i.i.i.i.i.i.i.i45 = icmp eq i32 %i.bv, 1
  br i1 %.not2.i.i.i.i.i.i.i.i.i45, label %bb.u, label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i46

bb.u:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr %.05.i.i.i.i.i.i43, align 8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i46, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #51
  br label %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i46

_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i46: ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph.i.i.i.i.i.i42
  %i.by = getelementptr i8, ptr %.05.i.i.i.i.i.i43, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i47 = icmp eq ptr %i.by, %i.bt
  br i1 %.not.i.i.i.i.i.i47, label %_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i48, label %.lr.ph.i.i.i.i.i.i42, !llvm.loop !386

_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i48: ; preds = %_ZSt8_DestroyI8QPointerI7QCPAxisEEvPT_.exit.i.i.i.i.i.i46, %bb.s
  %i.bz = load ptr, ptr %i.bm, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bz, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit49

_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit49:        ; preds = %_ZN5QListI8QPointerI7QCPAxisEED2Ev.exit36, %_ZN17QArrayDataPointerI8QPointerI7QCPAxisEE5derefEv.exit.i.i38, %_ZN9QtPrivate16QGenericArrayOpsI8QPointerI7QCPAxisEE10destroyAllEv.exit.i.i48
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.ca) #51
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %i.cb) #51
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %i.cc) #51
  call void @_ZN16QCPLayoutElementD2Ev(ptr noundef align 8 dead_on_return(168) dereferenceable_or_null(168) %0) #51
  ret void

.lr.ph:                                           ; preds = %_ZN5QListIP7QCPAxisED2Ev.exit, %bb.w
  %.sroa.7.054 = phi ptr [ %i.cf, %bb.w ], [ %i.i, %_ZN5QListIP7QCPAxisED2Ev.exit ] ; 2 uses
  %i.cd = load ptr, ptr %.sroa.7.054, align 8
  %i.ce = invoke noundef zeroext i1 @_ZN11QCPAxisRect10removeAxisEP7QCPAxis(ptr noundef align 8 dereferenceable_or_null(432) %0, ptr noundef %i.cd)
          to label %bb.w unwind label %.loopexit  ; 0 uses

bb.w:                                             ; preds = %.lr.ph
  %i.cf = getelementptr i8, ptr %.sroa.7.054, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !743

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cg = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cg) #52
  unreachable
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN11QCPAxisRect10removeAxisEP7QCPAxis(ptr noundef align 8 dereferenceable_or_null(432) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QHashIterator.203, align 8   ; 11 uses
  %5 = alloca %class.QDebug, align 8              ; 12 uses
  %6 = alloca %class.QMessageLogger, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  %i.a = getelementptr i8, ptr %0, i64 424        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  store ptr %i.b, ptr %4, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %.not.i.i.i = icmp eq i32 %i.c, -1
  br i1 %.not.i.i.i, label %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i, label %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i

_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i: ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %4, align 8          ; 2 uses
  %.not.i2.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i2.i, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, label %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i

_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i: ; preds = %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i, %bb.b
  %.pr8.i = phi ptr [ %.pr.pre.i, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i ], [ %i.b, %bb.b ] ; 4 uses
  %i.e = getelementptr i8, ptr %.pr8.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %.not.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit

bb.c:                                             ; preds = %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i
  %i.h = getelementptr i8, ptr %.pr8.i, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.k = add i64 %i.m, 1                          ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.i
  br i1 %i.l, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, label %.lr.ph, !llvm.loop !632

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %i.k, %bb.d ], [ 1, %bb.c ]    ; 4 uses
  %i.n = lshr i64 %i.m, 7
  %i.o = getelementptr [144 x i8], ptr %i.f, i64 %i.n
  %i.p = and i64 %i.m, 127
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge, !llvm.loop !632

._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit, !llvm.loop !632

_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit: ; preds = %bb.d, %bb.c, %._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge, %bb.a, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i
  %.sroa.0.0.i.i = phi ptr [ null, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i ], [ %.pr8.i, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i ], [ null, %bb.a ], [ null, %bb.c ], [ %.pr8.i, %._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge ], [ null, %bb.d ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.i ], [ 0, %_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERKS5_.exit.thread.i ], [ 0, %bb.a ], [ 0, %bb.c ], [ %i.m, %._ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit.loopexit_crit_edge ], [ 0, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %.sroa.4.0.i.i, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = icmp ne ptr %.sroa.0.0.i.i, null
  %i.w = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond47 = or i1 %i.v, %i.w
  br i1 %or.cond47, label %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph, label %._crit_edge

_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph: ; preds = %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EEC2ERK5QHashIS1_S4_E.exit
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br label %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread

thread-pre-split:                                 ; preds = %bb.i, %bb.h, %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit, %_ZNK23QListSpecialMethodsBaseIP7QCPAxisE8containsIS1_EEbRKT_.exit
  %i.x = icmp ne ptr %.pr, null
  %i.y = icmp ne i64 %i.al, 0
  %or.cond = or i1 %i.x, %i.y
  br i1 %or.cond, label %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread, label %._crit_edge

_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread: ; preds = %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph, %thread-pre-split
  %.pr68 = phi ptr [ %.sroa.0.0.i.i, %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph ], [ %.pr, %thread-pre-split ] ; 4 uses
  %.sroa.2.0.copyload.i.i = phi i64 [ %.sroa.4.0.i.i, %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread.lr.ph ], [ %i.al, %thread-pre-split ] ; 4 uses
  %i.z = getelementptr i8, ptr %.pr68, i64 16
  %i.aa = getelementptr i8, ptr %.pr68, i64 32    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread
  %i.ab = phi i64 [ %i.ac, %bb.g ], [ %.sroa.2.0.copyload.i.i, %_ZNK13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE7hasNextEv.exit.thread ]
  %i.ac = add i64 %i.ab, 1                        ; 6 uses
  store i64 %i.ac, ptr %i.t, align 8
  %i.ad = load i64, ptr %i.z, align 8
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %i.s, i8 0, i64 16, i1 false)
  br label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = lshr i64 %i.ac, 7
  %i.ah = getelementptr [144 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i64 %i.ac, 127
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %.not.i.i.i.i10 = icmp eq i8 %i.ak, -1
  br i1 %.not.i.i.i.i10, label %bb.e, label %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit, !llvm.loop !632

_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit: ; preds = %bb.g, %bb.f
  %i.al = phi i64 [ 0, %bb.f ], [ %i.ac, %bb.g ]  ; 2 uses
  %.pr = phi ptr [ null, %bb.f ], [ %.pr68, %bb.g ] ; 2 uses
  store ptr %.pr68, ptr %i.u, align 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.am = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.an = lshr i64 %.sroa.2.0.copyload.i.i, 7     ; 2 uses
  %i.ao = getelementptr [144 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = and i64 %.sroa.2.0.copyload.i.i, 127    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr [32 x i8], ptr %i.ar, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 24
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %_ZN13QHashIteratorIN7QCPAxis8AxisTypeE5QListIPS0_EE4nextEv.exit
  %i.az = getelementptr i8, ptr %i.av, i64 16
  %i.ba = load ptr, ptr %i.az, align 8            ; 5 uses
  %.idx = shl i64 %i.ax, 3                        ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.idx
  %.not.i.i.i11122 = icmp eq i64 %.idx, 0
  br i1 %.not.i.i.i11122, label %thread-pre-split, label %.lr.ph124

bb.i:                                             ; preds = %.lr.ph124
  %i.bc = getelementptr i8, ptr %i.bd, i64 8      ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i.i11, label %thread-pre-split, label %.lr.ph124, !llvm.loop !382

.lr.ph124:                                        ; preds = %bb.h, %bb.i
  %i.bd = phi ptr [ %i.bc, %bb.i ], [ %i.ba, %bb.h ] ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZNK23QListSpecialMethodsBaseIP7QCPAxisE8containsIS1_EEbRKT_.exit, label %bb.i, !llvm.loop !382

_ZNK23QListSpecialMethodsBaseIP7QCPAxisE8containsIS1_EEbRKT_.exit: ; preds = %.lr.ph124
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.not42 = icmp eq i64 %i.bi, -8
  br i1 %.not42, label %thread-pre-split, label %bb.j, !llvm.loop !744

bb.j:                                             ; preds = %_ZNK23QListSpecialMethodsBaseIP7QCPAxisE8containsIS1_EEbRKT_.exit
  %i.bj = load ptr, ptr %i.ba, align 8
  %i.bk = icmp eq ptr %i.bj, %1
  %i.bl = icmp ne i64 %i.ax, 1
  %or.cond41 = and i1 %i.bl, %i.bk
  br i1 %or.cond41, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr i8, ptr %i.ba, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %1, i64 336
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 272
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.bn, i64 336
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 272
  store i32 %i.br, ptr %i.bu, align 8
  %.pre = load ptr, ptr %i.u, align 8
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 32
  %.pre66 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre67 = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %.pre72 = and i64 %.pre67, 127
  %.pre73 = lshr i64 %.pre67, 7
  br label %bb.m

bb.l:                                             ; preds = %_ZN5QListIP7QCPAxisE9removeOneIS1_EEbRKT_.exit, %bb.w, %bb.x, %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.m:                                             ; preds = %bb.k, %bb.j
  %.pre-phi74 = phi i64 [ %.pre73, %bb.k ], [ %i.an, %bb.j ]
  %.pre-phi = phi i64 [ %.pre72, %bb.k ], [ %i.ap, %bb.j ]
  %i.bw = phi ptr [ %.pre66, %bb.k ], [ %i.am, %bb.j ]
  %i.bx = getelementptr [144 x i8], ptr %i.bw, i64 %.pre-phi74 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 128
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr i8, ptr %i.bx, i64 %.pre-phi
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr [32 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = invoke noundef align 8 dereferenceable(24) ptr @_ZN5QHashIN7QCPAxis8AxisTypeE5QListIPS0_EEixERKS1_(ptr noundef align 8 dereferenceable_or_null(8) %i.a, ptr noundef align 4 dereferenceable(4) %i.cd)
          to label %bb.n unwind label %bb.l       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8            ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load i64, ptr %i.ch, align 8
  %.idx11.i.i = shl i64 %i.ci, 3                  ; 5 uses
  %i.cj = getelementptr i8, ptr %i.cg, i64 %.idx11.i.i ; 2 uses
  %i.ck = ashr i64 %.idx11.i.i, 5                 ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n
  %i.cm = and i64 %.idx11.i.i, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.cg, i64 %i.cm
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %i.cz, %bb.s ] ; 2 uses
  %.sroa.034.051.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %i.cy, %bb.s ] ; 9 uses
  %i.cn = load ptr, ptr %.sroa.034.051.i.i.i.i.i, align 8
  %i.co = icmp eq ptr %i.cn, %1
  br i1 %i.co, label %_ZSt4findIN5QListIP7QCPAxisE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %_ZSt4findIN5QListIP7QCPAxisE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = icmp eq ptr %i.ct, %1
  br i1 %i.cu, label %_ZSt4findIN5QListIP7QCPAxisE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit95, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = icmp eq ptr %i.cw, %1
  br i1 %i.cx, label %_ZSt4findIN5QListIP7QCPAxisE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit97, label %bb.s
end_hunk_6
begin_hunk_7_@_ZN15QCPColorMapData8setAlphaEiih:bb.a
_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.ah = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.y, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 20, ptr nonnull @.str.37)
          to label %.noexc22 unwind label %bb.t

.noexc22:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.ai = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %.noexc22
  %i.aj = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i18, label %_ZN7QStringD2Ev.exit.i21, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i19

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i19:  ; preds = %bb.m
  %i.ak = atomicrmw sub ptr %i.aj, i32 1 acq_rel, align 4
  %.not.i.i.i20 = icmp eq i32 %i.ak, 1
  br i1 %.not.i.i.i20, label %bb.n, label %_ZN7QStringD2Ev.exit.i21

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i19
  %i.al = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.al, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i21

_ZN7QStringD2Ev.exit.i21:                         ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i19, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.am = load ptr, ptr %6, align 8               ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 48
  %i.ao = load i8, ptr %i.an, align 8, !range !6, !noundef !7
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.o, label %_ZN6QDebuglsEPKc.exit26

bb.o:                                             ; preds = %_ZN7QStringD2Ev.exit.i21
  %i.aq = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.am, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit26_crit_edge unwind label %bb.t ; 0 uses

._ZN6QDebuglsEPKc.exit26_crit_edge:               ; preds = %bb.o
  %.pre32 = load ptr, ptr %6, align 8
  br label %_ZN6QDebuglsEPKc.exit26

bb.p:                                             ; preds = %.noexc22
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i2.i14 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i2.i14, label %_ZN7QStringD2Ev.exit5.i17, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i15

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i15: ; preds = %bb.p
  %i.at = atomicrmw sub ptr %i.as, i32 1 acq_rel, align 4
  %.not.i.i4.i16 = icmp eq i32 %i.at, 1
  br i1 %.not.i.i4.i16, label %bb.q, label %_ZN7QStringD2Ev.exit5.i17

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i15
  %i.au = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.au, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i17

_ZN7QStringD2Ev.exit5.i17:                        ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i15, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %.body

_ZN6QDebuglsEPKc.exit26:                          ; preds = %._ZN6QDebuglsEPKc.exit26_crit_edge, %_ZN7QStringD2Ev.exit.i21
  %i.av = phi ptr [ %.pre32, %._ZN6QDebuglsEPKc.exit26_crit_edge ], [ %i.am, %_ZN7QStringD2Ev.exit.i21 ]
  %i.aw = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.av, i32 noundef %1)
          to label %.noexc27 unwind label %bb.t   ; 0 uses

.noexc27:                                         ; preds = %_ZN6QDebuglsEPKc.exit26
  %i.ax = load ptr, ptr %6, align 8               ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 48
  %i.az = load i8, ptr %i.ay, align 8, !range !6, !noundef !7
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.r, label %_ZN6QDebuglsEi.exit

bb.r:                                             ; preds = %.noexc27
  %i.bb = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ax, i8 noundef signext 32)
          to label %._ZN6QDebuglsEi.exit_crit_edge unwind label %bb.t ; 0 uses

._ZN6QDebuglsEi.exit_crit_edge:                   ; preds = %bb.r
  %.pre33 = load ptr, ptr %6, align 8
  br label %_ZN6QDebuglsEi.exit

_ZN6QDebuglsEi.exit:                              ; preds = %._ZN6QDebuglsEi.exit_crit_edge, %.noexc27
  %i.bc = phi ptr [ %.pre33, %._ZN6QDebuglsEi.exit_crit_edge ], [ %i.ax, %.noexc27 ]
  %i.bd = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.bc, i32 noundef %2)
          to label %.noexc29 unwind label %bb.t   ; 0 uses

.noexc29:                                         ; preds = %_ZN6QDebuglsEi.exit
  %i.be = load ptr, ptr %6, align 8               ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 48
  %i.bg = load i8, ptr %i.bf, align 8, !range !6, !noundef !7
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.s, label %_ZN6QDebuglsEi.exit31

bb.s:                                             ; preds = %.noexc29
  %i.bi = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.be, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit31 unwind label %bb.t ; 0 uses

_ZN6QDebuglsEi.exit31:                            ; preds = %.noexc29, %bb.s
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %_ZN6QDebuglsEi.exit, %bb.r, %_ZN6QDebuglsEPKc.exit26, %bb.o, %_ZN6QDebuglsEPKc.exit, %bb.j, %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %_ZN7QStringD2Ev.exit5.i17, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %_ZN7QStringD2Ev.exit5.i ], [ %i.bj, %bb.t ], [ %i.ar, %_ZN7QStringD2Ev.exit5.i17 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  resume { ptr, i32 } %eh.lpad-body

bb.u:                                             ; preds = %bb.e, %bb.f, %_ZN6QDebuglsEi.exit31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN15QCPColorMapData21recalculateDataBoundsEv(ptr nofree noundef align 8 captures(none) dereferenceable_or_null(81) %0) local_unnamed_addr #40 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = mul i32 %i.d, %i.a                       ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.f, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01117.epil.init = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01216.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph ], [ %.113.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.l = load double, ptr %i.k, align 8           ; 4 uses
  %i.m = fcmp ogt double %i.l, %.01117.epil.init
  %.1.epil = select i1 %i.m, double %i.l, double %.01117.epil.init
  %i.n = fcmp olt double %i.l, %.01216.epil.init
  %.113.epil = select i1 %i.n, double %i.l, double %.01216.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %.012.lcssa = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.c ], [ %.113.1, %._crit_edge.loopexit.unr-lcssa ], [ %.113.epil, %.epil.preheader ]
  %.011.lcssa = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.c ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.epil.preheader ]
  %i.o = getelementptr i8, ptr %0, i64 64
  store double %.012.lcssa, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %0, i64 72
  store double %.011.lcssa, ptr %i.p, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.01117 = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph.new ], [ %.1.1, %bb.d ] ; 2 uses
  %.01216 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.new ], [ %.113.1, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.r = load double, ptr %i.q, align 8           ; 4 uses
  %i.s = fcmp ogt double %i.r, %.01117
  %.1 = select i1 %i.s, double %i.r, double %.01117 ; 2 uses
  %i.t = fcmp olt double %i.r, %.01216
  %.113 = select i1 %i.t, double %i.r, double %.01216 ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.v, align 8           ; 4 uses
  %i.x = fcmp ogt double %i.w, %.1
  %.1.1 = select i1 %i.x, double %i.w, double %.1 ; 3 uses
  %i.y = fcmp olt double %i.w, %.113
  %.113.1 = select i1 %i.y, double %i.w, double %.113 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !1193

bb.e:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15QCPColorMapData5clearEv(ptr nofree noundef align 8 captures(none) dereferenceable_or_null(81) %0) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN15QCPColorMapData7setSizeEii(ptr noundef align 8 dereferenceable_or_null(81) %0, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15QCPColorMapData9fillAlphaEh(ptr nofree noundef align 8 captures(none) dereferenceable_or_null(81) %0, i8 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN15QCPColorMapData11createAlphaEb(ptr noundef align 8 dereferenceable_or_null(81) %0, i1 noundef zeroext false)
  br i1 %i.c, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.d = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.e = getelementptr i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = load i32, ptr %0, align 8
  %i.h = mul i32 %i.g, %i.f
  %i.i = sext i32 %i.h to i64
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %i.d, i8 noundef %1, i64 noundef range(i64 -17179869184, 17179869177) %i.i, i1 noundef false) #51
  %i.j = getelementptr i8, ptr %0, i64 80
  store i8 1, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define void @_ZNK15QCPColorMapData11coordToCellEddPiS0_(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(81) %0, double noundef %1, double noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = fsub double %1, %i.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8
  %i.f = fsub double %i.e, %i.b
  %i.g = fdiv double %i.c, %i.f
  %i.h = load i32, ptr %0, align 8
  %i.i = add i32 %i.h, -1
  %i.j = sitofp i32 %i.i to double
  %i.k = tail call double @llvm.fmuladd.f64(double %i.g, double %i.j, double 5.000000e-01)
  %i.l = fptosi double %i.k to i32
  store i32 %i.l, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %4, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load double, ptr %i.m, align 8           ; 2 uses
  %i.o = fsub double %2, %i.n
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load double, ptr %i.p, align 8
  %i.r = fsub double %i.q, %i.n
  %i.s = fdiv double %i.o, %i.r
  %i.t = getelementptr i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = add i32 %i.u, -1
  %i.w = sitofp i32 %i.v to double
  %i.x = tail call double @llvm.fmuladd.f64(double %i.s, double %i.w, double 5.000000e-01)
  %i.y = fptosi double %i.x to i32
  store i32 %i.y, ptr %4, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define void @_ZNK15QCPColorMapData11cellToCoordEiiPdS0_(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(81) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sitofp i32 %1 to double
  %i.b = load i32, ptr %0, align 8
  %i.c = add i32 %i.b, -1
  %i.d = sitofp i32 %i.c to double
  %i.e = fdiv double %i.a, %i.d
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load double, ptr %i.g, align 8
  %i.i = load double, ptr %i.f, align 8           ; 2 uses
  %i.j = fsub double %i.h, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.e, double %i.j, double %i.i)
  store double %i.k, ptr %3, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not7 = icmp eq ptr %4, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sitofp i32 %2 to double
  %i.m = getelementptr i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.n, -1
  %i.p = sitofp i32 %i.o to double
  %i.q = fdiv double %i.l, %i.p
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = load double, ptr %i.s, align 8
  %i.u = load double, ptr %i.r, align 8           ; 2 uses
  %i.v = fsub double %i.t, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %i.q, double %i.v, double %i.u)
  store double %i.w, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPColorMapC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(393) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QCPRange, align 8            ; 5 uses
  %4 = alloca %class.QCPRange, align 8            ; 5 uses
  tail call void @_ZN20QCPAbstractPlottableC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(184) %0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTV11QCPColorMap, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.a)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = invoke noalias noundef dereferenceable_or_null(88) ptr @_Znwm(i64 noundef 88) #54
          to label %bb.c unwind label %bb.i       ; 3 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3, double noundef 0.000000e+00, double noundef 5.000000e+00)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef 0.000000e+00, double noundef 5.000000e+00)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN15QCPColorMapDataC1EiiRK8QCPRangeS2_(ptr noundef align 8 dereferenceable_or_null(81) %i.d, i32 noundef 10, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  invoke void @_ZN16QCPColorGradientC1ENS_14GradientPresetE(ptr noundef nonnull align 8 dereferenceable_or_null(73) %i.e, i32 noundef 2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 297
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) dereferenceable_or_null(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  call void @_ZN6QImageC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.i) #51
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  call void @_ZN6QImageC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.j) #51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368
  invoke void @_ZN7QPixmapC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.k)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 1, ptr %i.l, align 8
  ret void

bb.i:                                             ; preds = %bb.f, %bb.b, %bb.a
  %i.m = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8_@_ZN11QCPColorMap13setColorScaleEP13QCPColorScale:bb.a

bb.ac:                                            ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit15
  %i.dl = getelementptr i8, ptr %i.dj, i64 4
  %i.dm = load atomic i32, ptr %i.dl monotonic, align 4
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit16, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = load ptr, ptr %i.bc, align 8
  br label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit16

_ZNK8QPointerI13QCPColorScaleE4dataEv.exit16:     ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit15, %bb.ac, %bb.ad
  %i.dp = phi ptr [ %i.do, %bb.ad ], [ null, %bb.ac ], [ null, %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit15 ]
  call void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.184, ptr noundef %i.dp, ptr noundef nonnull @.str.158, i32 noundef 0)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #51
  %i.dq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit17, label %bb.ae

bb.ae:                                            ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit16
  %i.ds = getelementptr i8, ptr %i.dq, i64 4
  %i.dt = load atomic i32, ptr %i.ds monotonic, align 4
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit17, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = load ptr, ptr %i.bc, align 8
  br label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit17

_ZNK8QPointerI13QCPColorScaleE4dataEv.exit17:     ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit16, %bb.ae, %bb.af
  %i.dw = phi ptr [ %i.dv, %bb.af ], [ null, %bb.ae ], [ null, %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit16 ]
  call void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %5, ptr noundef %0, ptr noundef nonnull @.str.185, ptr noundef %i.dw, ptr noundef nonnull @.str.160, i32 noundef 0)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #51
  %i.dx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit18, label %bb.ag

bb.ag:                                            ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit17
  %i.dz = getelementptr i8, ptr %i.dx, i64 4
  %i.ea = load atomic i32, ptr %i.dz monotonic, align 4
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit18, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load ptr, ptr %i.bc, align 8
  br label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit18

_ZNK8QPointerI13QCPColorScaleE4dataEv.exit18:     ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit17, %bb.ag, %bb.ah
  %i.ed = phi ptr [ %i.ec, %bb.ah ], [ null, %bb.ag ], [ null, %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit17 ]
  call void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %6, ptr noundef %0, ptr noundef nonnull @.str.186, ptr noundef %i.ed, ptr noundef nonnull @.str.187, i32 noundef 0)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  %i.ee = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit19, label %bb.ai

bb.ai:                                            ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit18
  %i.eg = getelementptr i8, ptr %i.ee, i64 4
  %i.eh = load atomic i32, ptr %i.eg monotonic, align 4
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit19, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = load ptr, ptr %i.bc, align 8
  br label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit19

_ZNK8QPointerI13QCPColorScaleE4dataEv.exit19:     ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit18, %bb.ai, %bb.aj
  %i.ek = phi ptr [ %i.ej, %bb.aj ], [ null, %bb.ai ], [ null, %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit18 ]
  call void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %7, ptr noundef %i.ek, ptr noundef nonnull @.str.184, ptr noundef %0, ptr noundef nonnull @.str.158, i32 noundef 0)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #51
  %i.el = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit20, label %bb.ak

bb.ak:                                            ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit19
  %i.en = getelementptr i8, ptr %i.el, i64 4
  %i.eo = load atomic i32, ptr %i.en monotonic, align 4
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit20, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eq = load ptr, ptr %i.bc, align 8
  br label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit20

_ZNK8QPointerI13QCPColorScaleE4dataEv.exit20:     ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit19, %bb.ak, %bb.al
  %i.er = phi ptr [ %i.eq, %bb.al ], [ null, %bb.ak ], [ null, %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit19 ]
  call void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %8, ptr noundef %i.er, ptr noundef nonnull @.str.186, ptr noundef %0, ptr noundef nonnull @.str.187, i32 noundef 0)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  %i.es = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit21, label %bb.am

bb.am:                                            ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit20
  %i.eu = getelementptr i8, ptr %i.es, i64 4
  %i.ev = load atomic i32, ptr %i.eu monotonic, align 4
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit21, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ex = load ptr, ptr %i.bc, align 8
  br label %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit21

_ZNK8QPointerI13QCPColorScaleE4dataEv.exit21:     ; preds = %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit20, %bb.am, %bb.an
  %i.ey = phi ptr [ %i.ex, %bb.an ], [ null, %bb.am ], [ null, %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit20 ]
  call void @_ZN7QObject7connectEPKS_PKcS1_S3_N2Qt14ConnectionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %9, ptr noundef %i.ey, ptr noundef nonnull @.str.185, ptr noundef %0, ptr noundef nonnull @.str.160, i32 noundef 0)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #51
  br label %_ZNK8QPointerI13QCPColorScaleEcvPS0_Ev.exit9.thread

bb.ao:                                            ; preds = %_ZNK13QCPColorScale8gradientEv.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16QCPColorGradientD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable_or_null(73) %2) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  resume { ptr, i32 } %i.ez

_ZNK8QPointerI13QCPColorScaleEcvPS0_Ev.exit9.thread: ; preds = %_ZN8QPointerI13QCPColorScaleEaSEPS0_.exit, %bb.p, %_ZNK8QPointerI13QCPColorScaleE4dataEv.exit21, %_ZNK8QPointerI13QCPColorScaleEcvPS0_Ev.exit9
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPColorMap16rescaleDataRangeEb(ptr noundef align 8 dereferenceable_or_null(393) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.QCPRange, align 16           ; 4 uses
  br i1 %1, label %bb.b, label %_ZN15QCPColorMapData21recalculateDataBoundsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN15QCPColorMapData21recalculateDataBoundsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN15QCPColorMapData21recalculateDataBoundsEv.exit

bb.d:                                             ; preds = %bb.c
  %i.h = mul i32 %i.f, %i.c                       ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.b, i64 48
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.h to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.l = icmp eq i32 %i.h, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.e

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01117.i.epil.init = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph.i ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.01216.i.epil.init = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.i ], [ %.113.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.m = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i.epil.init
  %i.n = load double, ptr %i.m, align 8           ; 4 uses
  %i.o = fcmp ogt double %i.n, %.01117.i.epil.init
  %.1.i.epil = select i1 %i.o, double %i.n, double %.01117.i.epil.init
  %i.p = fcmp olt double %i.n, %.01216.i.epil.init
  %.113.i.epil = select i1 %i.p, double %i.n, double %.01216.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.d
  %.012.lcssa.i = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.d ], [ %.113.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.113.i.epil, %.epil.preheader ]
  %.011.lcssa.i = phi double [ f0xFFEFFFFFFFFFFFFF, %bb.d ], [ %.1.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %.1.i.epil, %.epil.preheader ]
  %i.q = getelementptr i8, ptr %i.b, i64 64
  store double %.012.lcssa.i, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.b, i64 72
  store double %.011.lcssa.i, ptr %i.r, align 8
  br label %_ZN15QCPColorMapData21recalculateDataBoundsEv.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.e ] ; 3 uses
  %.01117.i = phi double [ f0xFFEFFFFFFFFFFFFF, %.lr.ph.i.new ], [ %.1.i.1, %bb.e ] ; 2 uses
  %.01216.i = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph.i.new ], [ %.113.i.1, %bb.e ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.s = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.t = load double, ptr %i.s, align 8           ; 4 uses
  %i.u = fcmp ogt double %i.t, %.01117.i
  %.1.i = select i1 %i.u, double %i.t, double %.01117.i ; 2 uses
  %i.v = fcmp olt double %i.t, %.01216.i
  %.113.i = select i1 %i.v, double %i.t, double %.01216.i ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load double, ptr %i.x, align 8           ; 4 uses
  %i.z = fcmp ogt double %i.y, %.1.i
  %.1.i.1 = select i1 %i.z, double %i.y, double %.1.i ; 3 uses
  %i.aa = fcmp olt double %i.y, %.113.i
  %.113.i.1 = select i1 %i.aa, double %i.y, double %.113.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1193

_ZN15QCPColorMapData21recalculateDataBoundsEv.exit: ; preds = %._crit_edge.i, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  %i.ab = getelementptr i8, ptr %0, i64 208
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 64
  %i.ae = load <2 x double>, ptr %i.ad, align 8
  store <2 x double> %i.ae, ptr %2, align 16
  call void @_ZN11QCPColorMap12setDataRangeERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(393) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11QCPColorMap16updateLegendIconEN2Qt18TransformationModeERK5QSize(ptr noundef align 8 dereferenceable_or_null(393) %0, i32 noundef %1, ptr noundef align 4 dereferenceable(8) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QPixmap, align 8             ; 6 uses
  %4 = alloca %class.QPixmap, align 8             ; 6 uses
  %5 = alloca %class.QPixmap, align 8             ; 7 uses
  %6 = alloca %class.QImage, align 8              ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 320        ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZNK6QImage6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.a)
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 40
  %i.f = load i8, ptr %i.e, align 8, !range !6, !noundef !7
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef align 8 dereferenceable_or_null(393) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = tail call noundef zeroext i1 @_ZNK6QImage6isNullEv(ptr noundef align 8 dereferenceable_or_null(24) %i.a)
  br i1 %i.k, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null                   ; 3 uses
  br i1 %i.n, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.m, i64 4        ; 2 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  br label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit

_ZNK20QCPAbstractPlottable7keyAxisEv.exit:        ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.s, %bb.g ], [ null, %bb.f ]
  %i.u = getelementptr i8, ptr %i.t, i64 76
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i

_ZNK20QCPAbstractPlottable7keyAxisEv.exit.thread: ; preds = %bb.e
  %i.x = load i32, ptr inttoptr (i64 76 to ptr), align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8, label %bb.i

bb.h:                                             ; preds = %_ZNK20QCPAbstractPlottable7keyAxisEv.exit
  %i.z = load atomic i32, ptr %i.o monotonic, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8.sink.split

bb.i:                                             ; preds = %_ZNK20QCPAbstractPlottable7keyAxisEv.exit.thread, %_ZNK20QCPAbstractPlottable7keyAxisEv.exit
  %i.ab = getelementptr i8, ptr %0, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %i.ac, i64 4
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8.sink.split

_ZNK20QCPAbstractPlottable7keyAxisEv.exit8.sink.split: ; preds = %bb.j, %bb.h
  %.sink15 = phi i64 [ 120, %bb.h ], [ 136, %bb.j ]
  %i.ah = getelementptr i8, ptr %0, i64 %.sink15
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8

_ZNK20QCPAbstractPlottable7keyAxisEv.exit8:       ; preds = %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8.sink.split, %_ZNK20QCPAbstractPlottable7keyAxisEv.exit.thread, %bb.j, %bb.i, %bb.h
  %i.aj = phi ptr [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.h ], [ null, %_ZNK20QCPAbstractPlottable7keyAxisEv.exit.thread ], [ %i.ai, %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8.sink.split ]
  %i.ak = getelementptr i8, ptr %i.aj, i64 320
  %i.al = load i8, ptr %i.ak, align 8, !range !6, !noundef !7
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr i8, ptr %0, i64 128
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit9.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8
  %i.aq = getelementptr i8, ptr %i.ao, i64 4      ; 2 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit9, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr i8, ptr %0, i64 136
  %i.au = load ptr, ptr %i.at, align 8
  br label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit9

_ZNK20QCPAbstractPlottable9valueAxisEv.exit9:     ; preds = %bb.k, %bb.l
  %i.av = phi ptr [ %i.au, %bb.l ], [ null, %bb.k ]
  %i.aw = getelementptr i8, ptr %i.av, i64 76
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.m, label %bb.n

_ZNK20QCPAbstractPlottable9valueAxisEv.exit9.thread: ; preds = %_ZNK20QCPAbstractPlottable7keyAxisEv.exit8
  %i.az = load i32, ptr inttoptr (i64 76 to ptr), align 4
  %i.ba = icmp eq i32 %i.az, 2
  %brmerge = or i1 %i.n, %i.ba
  br i1 %brmerge, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10, label %bb.o

bb.m:                                             ; preds = %_ZNK20QCPAbstractPlottable9valueAxisEv.exit9
  %i.bb = load atomic i32, ptr %i.aq monotonic, align 4
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10.sink.split

bb.n:                                             ; preds = %_ZNK20QCPAbstractPlottable9valueAxisEv.exit9
  br i1 %i.n, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10, label %bb.o

bb.o:                                             ; preds = %_ZNK20QCPAbstractPlottable9valueAxisEv.exit9.thread, %bb.n
  %i.bd = getelementptr i8, ptr %i.m, i64 4
  %i.be = load atomic i32, ptr %i.bd monotonic, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10, label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10.sink.split

_ZNK20QCPAbstractPlottable9valueAxisEv.exit10.sink.split: ; preds = %bb.o, %bb.m
  %.sink16 = phi i64 [ 136, %bb.m ], [ 120, %bb.o ]
  %i.bg = getelementptr i8, ptr %0, i64 %.sink16
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10

_ZNK20QCPAbstractPlottable9valueAxisEv.exit10:    ; preds = %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10.sink.split, %_ZNK20QCPAbstractPlottable9valueAxisEv.exit9.thread, %bb.o, %bb.n, %bb.m
  %i.bi = phi ptr [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.m ], [ null, %_ZNK20QCPAbstractPlottable9valueAxisEv.exit9.thread ], [ %i.bh, %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10.sink.split ]
  %i.bj = getelementptr i8, ptr %i.bi, i64 320
  %i.bk = load i8, ptr %i.bj, align 8, !range !6, !noundef !7
  %i.bl = trunc nuw i8 %i.bk to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @_ZNK6QImage15mirrored_helperEbb(ptr dead_on_unwind nonnull writable sret(%class.QImage) align 8 %6, ptr noundef align 8 dereferenceable_or_null(24) %i.a, i1 noundef zeroext %i.am, i1 noundef zeroext %i.bl)
  invoke void @_ZN7QPixmap16fromImageInPlaceER6QImage6QFlagsIN2Qt19ImageConversionFlagEE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 0)
          to label %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit unwind label %bb.q

_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit: ; preds = %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10
  invoke void @_ZNK7QPixmap6scaledERK5QSizeN2Qt15AspectRatioModeENS3_18TransformationModeE(ptr dead_on_unwind nonnull writable sret(%class.QPixmap) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, ptr noundef align 4 dereferenceable(8) %2, i32 noundef 1, i32 noundef %1)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV7QPixmap, i64 16), ptr %3, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  store ptr null, ptr %i.bn, align 8
  %i.bp = getelementptr i8, ptr %0, i64 384       ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  store ptr %i.bo, ptr %i.bp, align 8
  store ptr %i.bq, ptr %i.bm, align 8
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %4) #51
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #51
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.t

bb.q:                                             ; preds = %_ZNK20QCPAbstractPlottable9valueAxisEv.exit10
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZN7QPixmap9fromImageEO6QImage6QFlagsIN2Qt19ImageConversionFlagEE.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7QPixmapD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %5) #51
  br label %bb.s

end_hunk_8
