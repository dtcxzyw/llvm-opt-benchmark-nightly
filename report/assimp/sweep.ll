inline.NumInlined: 129
inline.NumDeleted: 49
begin_hunk_0_@_ZN3p2t5Sweep11SweepPointsERNS_12SweepContextE:bb.a
  %i.rx = fcmp ogt double %i.rw, %i.rr
  br i1 %i.rx, label %.lr.ph.i8.i, label %_ZN3p2t5Sweep13FillEdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit, !llvm.loop !9

_ZN3p2t5Sweep13FillEdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit: ; preds = %_ZN3p2t5Sweep22FillLeftBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit, %bb.f, %bb.t
  %i.ry = phi ptr [ %.pre.i.i118, %_ZN3p2t5Sweep23FillRightBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ], [ %i.at, %bb.t ], [ %i.at, %bb.f ], [ %.pre.i11.i105, %_ZN3p2t5Sweep22FillLeftBelowEdgeEventERNS_12SweepContextEPNS_4EdgeERNS_4NodeE.exit ]
  %i.rz = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.sa = load ptr, ptr %i.q, align 8
  tail call void @_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextERNS_5PointES4_PNS_8TriangleES4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ry, ptr noundef nonnull align 8 dereferenceable(40) %i.rz, ptr noundef %i.sa, ptr noundef nonnull align 8 dereferenceable(40) %i.rz)
  br label %_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit

_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit: ; preds = %bb.d, %bb.e, %_ZN3p2t5Sweep13FillEdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE.exit
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.036.070, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.sb, %i.p
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep19FinalizationPolygonERNS_12SweepContextE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %.critedge10, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.013 = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.i = tail call noundef zeroext i1 @_ZN3p2t8Triangle20GetConstrainedEdgeCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %.013, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  br i1 %i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call noundef ptr @_ZN3p2t8Triangle11NeighborCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %.013, ptr noundef nonnull align 8 dereferenceable(40) %i.h) ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.critedge10, label %.lr.ph, !llvm.loop !3

.critedge:                                        ; preds = %.lr.ph
  tail call void @_ZN3p2t12SweepContext9MeshCleanERNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(57) %.013)
  br label %.critedge10

.critedge10:                                      ; preds = %bb.b, %bb.a, %.critedge
  ret void
}

declare noundef ptr @_ZN3p2t12SweepContext8GetPointEm(ptr noundef nonnull align 8 dereferenceable(200), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN3p2t5Sweep10PointEventERNS_12SweepContextERNS_5PointE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3p2t12SweepContext10LocateNodeERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %.not20 = icmp eq ptr %i.b, null
  br i1 %.not20, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #19
  resume { ptr, i32 } %i.g

bb.h:                                             ; preds = %bb.d
  %i.h = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN3p2t5Sweep16NewFrontTriangleERNS_12SweepContextERNS_5PointERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.i = load double, ptr %2, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = fadd double %i.k, f0x3D719799812DEA11
  %i.m = fcmp ugt double %i.i, %i.l
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN3p2t5Sweep18FillAdvancingFrontERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) initializes((64, 73)) %1, ptr noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %2, align 8
  %i.c = load double, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load double, ptr %i.e, align 8
  %i.g = fcmp ogt double %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = zext i1 %i.g to i8
  store i8 %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.n = tail call noundef i32 @_ZN3p2t8Triangle9EdgeIndexEPKNS_5PointES3_(ptr noundef nonnull align 8 dereferenceable(57) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.m) ; 3 uses
  %.not.i.not = icmp eq i32 %i.n, -1
  br i1 %.not.i.not, label %_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3p2t8Triangle19MarkConstrainedEdgeEi(ptr noundef nonnull align 8 dereferenceable(57) %i.k, i32 noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not14.i = icmp eq ptr %i.r, null
  br i1 %.not14.i, label %_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3p2t8Triangle19MarkConstrainedEdgeEPNS_5PointES2_(ptr noundef nonnull align 8 dereferenceable(57) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.m)
  br label %_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit.thread

_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit: ; preds = %bb.a
  tail call void @_ZN3p2t5Sweep13FillEdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %i.s = load ptr, ptr %2, align 8
  %i.t = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8
  tail call void @_ZN3p2t5Sweep9EdgeEventERNS_12SweepContextERNS_5PointES4_PNS_8TriangleES4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.t)
  br label %_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit.thread

_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit.thread: ; preds = %bb.c, %bb.b, %_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_.exit
  ret void
}

declare noundef zeroext i1 @_ZN3p2t8Triangle20GetConstrainedEdgeCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef ptr @_ZN3p2t8Triangle11NeighborCCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN3p2t12SweepContext9MeshCleanERNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #3

declare noundef ptr @_ZN3p2t12SweepContext10LocateNodeERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN3p2t5Sweep16NewFrontTriangleERNS_12SweepContextERNS_5PointERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 6 uses
  %i.b = load ptr, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  invoke void @_ZN3p2t8TriangleC1ERNS_5PointES2_S2_(ptr noundef nonnull align 8 dereferenceable(57) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %i.a, ptr noundef nonnull align 8 dereferenceable(57) %i.g)
  tail call void @_ZN3p2t12SweepContext8AddToMapEPNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %i.a)
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 10 uses
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.k = load double, ptr %2, align 8
  store double %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %i.m, align 8
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.l, align 8
  br label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8                ; 4 uses
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.e, label %_ZNKSt6vectorIPN3p2t4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
  unreachable

_ZNKSt6vectorIPN3p2t4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #17 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr %i.h, ptr %i.ad, align 8
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN3p2t4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.r, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN3p2t4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN3p2t4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.not.i17.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %4 = load ptr, ptr %i.n, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %6) #18
  br label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN3p2t4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ac, ptr %0, align 8
  store ptr %i.af, ptr %i.l, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ag, ptr %i.n, align 8
  br label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN3p2t4NodeESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ah = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %3, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.h, ptr %i.ak, align 8
  store ptr %i.h, ptr %i.c, align 8
  %i.al = tail call noundef zeroext i1 @_ZN3p2t5Sweep8LegalizeERNS_12SweepContextERNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(57) %i.a)
  br i1 %i.al, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE9push_backERKS2_.exit
  tail call void @_ZN3p2t12SweepContext18MapTriangleToNodesERNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(57) %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #18
  resume { ptr, i32 } %i.am

bb.j:                                             ; preds = %bb.h, %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE9push_backERKS2_.exit
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  invoke void @_ZN3p2t8TriangleC1ERNS_5PointES2_S2_(ptr noundef nonnull align 8 dereferenceable(57) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %i.a, ptr noundef nonnull align 8 dereferenceable(57) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @_ZN3p2t8Triangle12MarkNeighborERS0_(ptr noundef nonnull align 8 dereferenceable(57) %i.a, ptr noundef nonnull align 8 dereferenceable(57) %i.m)
  tail call void @_ZN3p2t12SweepContext8AddToMapEPNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %i.a)
  %i.n = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.n, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.q, ptr %i.r, align 8
  %i.s = tail call noundef zeroext i1 @_ZN3p2t5Sweep8LegalizeERNS_12SweepContextERNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(57) %i.a)
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3p2t12SweepContext18MapTriangleToNodesERNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(57) %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #18
  resume { ptr, i32 } %i.t

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep18FillAdvancingFrontERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.029 = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not30 = icmp eq ptr %.029, null
  br i1 %.not30, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.031 = phi ptr [ %.0, %bb.c ], [ %.029, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.031, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not24 = icmp eq ptr %i.c, null
  br i1 %.not24, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call noundef zeroext i1 @_ZNK3p2t5Sweep18LargeHole_DontFillEPKNS_4NodeE(ptr nonnull align 8 poison, ptr noundef nonnull %.031)
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %.031)
  %.0 = load ptr, ptr %i.b, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.c, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.134 = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not2535 = icmp eq ptr %.134, null
  br i1 %.not2535, label %.critedge2, label %.lr.ph37

.lr.ph37:                                         ; preds = %.critedge, %bb.e
  %.136 = phi ptr [ %.1, %bb.e ], [ %.134, %.critedge ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.136, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %.lr.ph37
  %i.h = tail call noundef zeroext i1 @_ZNK3p2t5Sweep18LargeHole_DontFillEPKNS_4NodeE(ptr nonnull align 8 poison, ptr noundef nonnull %.136)
  br i1 %i.h, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3p2t5Sweep4FillERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %.136)
  %.1 = load ptr, ptr %i.f, align 8               ; 2 uses
  %.not25 = icmp eq ptr %.1, null
  br i1 %.not25, label %.critedge2, label %.lr.ph37, !llvm.loop !11

.critedge2:                                       ; preds = %.lr.ph37, %bb.d, %bb.e, %.critedge
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.i, null
  br i1 %.not27, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.critedge2
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
  %i.m = load double, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.o = load double, ptr %i.n, align 8
  %i.p = fsub double %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load double, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load double, ptr %i.s, align 8
  %i.u = fsub double %i.r, %i.t
  %i.v = tail call noundef double @atan2(double noundef %i.u, double noundef %i.p) #19
  %i.w = fcmp olt double %i.v, f0x4002D97C7F3321D2
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN3p2t5Sweep9FillBasinERNS_12SweepContextERNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %.critedge2
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3p2t5Sweep20IsEdgeSideOfTriangleERNS_8TriangleERNS_5PointES4_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN3p2t8Triangle9EdgeIndexEPKNS_5PointES3_(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) ; 3 uses
  %.not = icmp ne i32 %i.a, -1                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3p2t8Triangle19MarkConstrainedEdgeEi(ptr noundef nonnull align 8 dereferenceable(57) %1, i32 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = sext i32 %i.a to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3p2t8Triangle19MarkConstrainedEdgeEPNS_5PointES2_(ptr noundef nonnull align 8 dereferenceable(57) %i.e, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t5Sweep13FillEdgeEventERNS_12SweepContextEPNS_4EdgeEPNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %2, align 8                ; 3 uses
  %i.e = load double, ptr %i.d, align 8           ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_0
