inline.NumInlined: 215
inline.NumDeleted: 94
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK5Ipopt15ExpansionMatrix18ComputeColAMaxImplERNS_6VectorEb:bb.a
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e), !inline_history !88 ; 12 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !8
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit:      ; preds = %bb.c, %bb.d
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(205) %i.i, double noundef 1.000000e+00)
          to label %.noexc unwind label %bb.f, !inline_history !31

.noexc:                                           ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.i)
          to label %_ZN5Ipopt6Vector3SetEd.exit unwind label %bb.f

_ZN5Ipopt6Vector3SetEd.exit:                      ; preds = %.noexc
  %i.p = load ptr, ptr %1, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(205) %1, ptr noundef nonnull align 8 dereferenceable(205) %i.i)
          to label %.noexc6 unwind label %bb.f, !inline_history !89

.noexc6:                                          ; preds = %_ZN5Ipopt6Vector3SetEd.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %1)
          to label %_ZN5Ipopt6Vector14ElementWiseMaxERKS0_.exit unwind label %bb.f

_ZN5Ipopt6Vector14ElementWiseMaxERKS0_.exit:      ; preds = %.noexc6
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.e:                                             ; preds = %_ZN5Ipopt6Vector14ElementWiseMaxERKS0_.exit
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(205) %i.i) #13, !inline_history !90
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, %.noexc, %_ZN5Ipopt6Vector3SetEd.exit, %.noexc6
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !8
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !8
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit10

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(205) %i.i) #13, !inline_history !90
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit10

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit10:       ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.z

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %bb.e, %_ZN5Ipopt6Vector14ElementWiseMaxERKS0_.exit, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt15ExpansionMatrix15PrintImplOffsetERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str)
  %i.d = load ptr, ptr %6, align 8, !tbaa !91
  %i.e = load ptr, ptr %4, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  %i.l = load ptr, ptr %1, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, i32, i32, ptr, ...) %i.n(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.1, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.i, i32 noundef %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !54
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %indvars24 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !91
  %i.x = load ptr, ptr %4, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !55
  %i.aa = add nsw i32 %i.z, %7
  %i.ab = add nsw i32 %8, %indvars24
  %i.ac = load ptr, ptr %1, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void (ptr, i32, i32, i32, ptr, ...) %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.2, ptr noundef %i.w, ptr noundef %i.x, i32 noundef %i.aa, i32 noundef %i.ab, double noundef 1.000000e+00, i32 noundef %indvars24)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !54
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !97
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt20ExpansionMatrixSpaceC2EiiPKii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 20), (24, 40)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %1, ptr %i.b, align 4, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt20ExpansionMatrixSpaceE, i64 16), ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = icmp sgt i32 %2, 0                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %2 to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #15 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.l = zext nneg i32 %1 to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #15 ; 5 uses
  store ptr %i.n, ptr %i.e, align 8, !tbaa !98
  %i.o = zext nneg i32 %1 to i64                  ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.o, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.p, align 4, !tbaa !55
  store <4 x i32> splat (i32 -1), ptr %i.q, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.o
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %bb.c
  %i.s = phi ptr [ null, %bb.c ], [ %i.n, %middle.block ], [ %i.n, %scalar.ph ] ; 5 uses
  br i1 %i.f, label %.lr.ph20, label %._crit_edge

.lr.ph20:                                         ; preds = %.preheader
  %i.t = load i32, ptr %i.b, align 4, !tbaa !96
  %i.u = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.v = zext nneg i32 %2 to i64                  ; 3 uses
  %min.iters.check28 = icmp ult i32 %2, 4
  br i1 %min.iters.check28, label %scalar.ph27.preheader, label %vector.ph29

vector.ph29:                                      ; preds = %.lr.ph20
  %n.vec30 = and i64 %i.v, 2147483644             ; 3 uses
  %5 = insertelement <2 x i32> poison, i32 %4, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body31

vector.body31:                                    ; preds = %pred.store.continue38, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next39, %pred.store.continue38 ] ; 5 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index32
  %8 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %9 = load <2 x i32>, ptr %7, align 4, !tbaa !55
  %10 = sub nsw <2 x i32> %9, %6                  ; 3 uses
  %11 = load <2 x i32>, ptr %8, align 4, !tbaa !55
  %12 = sub nsw <2 x i32> %11, %6                 ; 3 uses
  %13 = shufflevector <2 x i32> %10, <2 x i32> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index32
  store <4 x i32> %13, ptr %i.x, align 4, !tbaa !55
  br i1 %i.u, label %pred.store.if, label %pred.store.continue38

pred.store.if:                                    ; preds = %vector.body31
  %i.y = trunc i64 %index32 to i32                ; 4 uses
  %i.z = extractelement <2 x i32> %10, i64 0
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.aa
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !55
  %i.ac = extractelement <2 x i32> %10, i64 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = or disjoint i32 %i.y, 1
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !55
  %i.ag = extractelement <2 x i32> %12, i64 0
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ah
  %i.aj = or disjoint i32 %i.y, 2
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !55
  %i.ak = extractelement <2 x i32> %12, i64 1
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.al
  %i.an = or disjoint i32 %i.y, 3
  store i32 %i.an, ptr %i.am, align 4, !tbaa !55
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %vector.body31, %pred.store.if
  %index.next39 = add nuw i64 %index32, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next39, %n.vec30
  br i1 %i.ao, label %middle.block40, label %vector.body31, !llvm.loop !100

middle.block40:                                   ; preds = %pred.store.continue38
  %cmp.n41 = icmp eq i64 %n.vec30, %i.v
  br i1 %cmp.n41, label %._crit_edge, label %scalar.ph27.preheader

scalar.ph27.preheader:                            ; preds = %.lr.ph20, %middle.block40
  %indvars.iv22.ph = phi i64 [ 0, %.lr.ph20 ], [ %n.vec30, %middle.block40 ]
  br label %scalar.ph27

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 -1, ptr %i.ap, align 4, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.aq, label %scalar.ph, label %.preheader, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.e, %middle.block40, %.preheader
  ret void

scalar.ph27:                                      ; preds = %scalar.ph27.preheader, %bb.e
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %bb.e ], [ %indvars.iv22.ph, %scalar.ph27.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv22
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !55
  %i.at = sub nsw i32 %i.as, %4                   ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv22
  store i32 %i.at, ptr %i.au, align 4, !tbaa !55
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %scalar.ph27
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.av
  %i.ax = trunc nuw nsw i64 %indvars.iv22 to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %scalar.ph27, %bb.d
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next23, %i.v
  br i1 %i.ay, label %scalar.ph27, label %._crit_edge, !llvm.loop !102
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare void @_ZNK5Ipopt6Matrix5PrintENS_8SmartPtrIKNS_10JournalistEEENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSE_() unnamed_addr

declare void @_ZNK5Ipopt6Matrix5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(69), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5Ipopt6Matrix19HasValidNumbersImplEv(ptr noundef nonnull align 8 dereferenceable(69) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Ipopt15ExpansionMatrix9PrintImplERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str), !inline_history !103
  %i.d = load ptr, ptr %6, align 8, !tbaa !91
  %i.e = load ptr, ptr %4, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  %i.l = load ptr, ptr %1, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, i32, i32, ptr, ...) %i.n(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.1, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.i, i32 noundef %i.k), !inline_history !103
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !54
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %_ZNK5Ipopt15ExpansionMatrix15PrintImplOffsetERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 3 uses
  %indvars24.i = trunc i64 %indvars.iv.i to i32   ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !91
  %i.x = load ptr, ptr %4, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !55
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = add nsw i32 %indvars24.i, 1
  %i.ac = load ptr, ptr %1, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void (ptr, i32, i32, i32, ptr, ...) %i.ae(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.2, ptr noundef %i.w, ptr noundef %i.x, i32 noundef %i.aa, i32 noundef %i.ab, double noundef 1.000000e+00, i32 noundef %indvars24.i), !inline_history !103
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !54
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next.i, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %_ZNK5Ipopt15ExpansionMatrix15PrintImplOffsetERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_ii.exit, !llvm.loop !97

_ZNK5Ipopt15ExpansionMatrix15PrintImplOffsetERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_ii.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt20ExpansionMatrixSpaceD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt20ExpansionMatrixSpaceE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt20ExpansionMatrixSpaceD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt20ExpansionMatrixSpaceE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #14, !inline_history !104
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN5Ipopt20ExpansionMatrixSpaceD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #14, !inline_history !104
  br label %_ZN5Ipopt20ExpansionMatrixSpaceD2Ev.exit

_ZN5Ipopt20ExpansionMatrixSpaceD2Ev.exit:         ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK5Ipopt20ExpansionMatrixSpace7MakeNewEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15 ; 3 uses
  invoke void @_ZN5Ipopt15ExpansionMatrixC1EPKNS_20ExpansionMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZNK5Ipopt20ExpansionMatrixSpace22MakeNewExpansionMatrixEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #14
  resume { ptr, i32 } %i.b

_ZNK5Ipopt20ExpansionMatrixSpace22MakeNewExpansionMatrixEv.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt12TaggedObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #13
  ret void
}
end_hunk_0
