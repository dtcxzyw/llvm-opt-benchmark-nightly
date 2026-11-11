Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/CVQualifiers?download=true
inline.NumInlined: 806
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIbSaIbEEC2ERKS1_:bb.a
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.f, %bb.e
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !35
  %i.ar = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.as = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.as, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.as, i32 0, i32 %i.ar
  %i.at = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.au = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.au, i32 0, i32 %i.at
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.au, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i
  %i.av = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12CVQualifiersC2ERKS_(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12CVQualifiers, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !28, !range !37, !noundef !38
  store i8 %i.c, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29, !range !37, !noundef !38
  store i8 %i.f, ptr %i.d, align 1, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.q) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12CVQualifiersD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(96) dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12CVQualifiers, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.q) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12CVQualifiersD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12CVQualifiers, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #19, !inline_history !39
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZN12CVQualifiersD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.q) #19, !inline_history !39
  br label %_ZN12CVQualifiersD2Ev.exit

_ZN12CVQualifiersD2Ev.exit:                       ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN12CVQualifiersaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !28, !range !37, !noundef !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.c, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !29, !range !37, !noundef !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.f, ptr %i.g, align 1, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext i32 %i.e to i64
  %i.l = add nsw i64 %i.j, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = shl nsw i64 %i.r, 3
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %bb.c, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %bb.c
  %i.u = ashr exact i64 %i.r, 3
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.v
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.r) #19
  store ptr null, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  store ptr null, ptr %i.m, align 8
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %.pre32 = load i32, ptr %i.d, align 8, !tbaa !31 ; 2 uses
  %.pre33 = load ptr, ptr %1, align 8, !tbaa !30  ; 2 uses
  %.pre37 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre38 = ptrtoint ptr %.pre33 to i64           ; 2 uses
  %.pre40 = sub i64 %.pre37, %.pre38
  %.pre42 = shl nsw i64 %.pre40, 3
  %.pre44 = zext i32 %.pre32 to i64
  %.pre46 = add nsw i64 %.pre42, %.pre44          ; 2 uses
  %.not.i25 = icmp eq i64 %.pre46, 0
  br i1 %.not.i25, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread: ; preds = %bb.c, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.pre-phi4760 = phi i64 [ %.pre46, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.l, %bb.c ] ; 4 uses
  %i.x = add i64 %.pre-phi4760, 63                ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 2305843009213693944
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #20 ; 4 uses
  %i.ab = lshr i64 %i.x, 6
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !32
  store ptr %i.aa, ptr %0, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ad = sdiv i64 %.pre-phi4760, 64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = and i64 %.pre-phi4760, -9223372036854775745
  %i.ag = icmp ugt i64 %i.af, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.ag, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.ae, i64 %storemerge.idx.i.i.i.i
  %i.ah = trunc i64 %.pre-phi4760 to i32
  %i.ai = and i32 %i.ah, 63
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %storemerge.i.i.i.i, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ai, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.pre34 = load ptr, ptr %1, align 8, !tbaa !30  ; 2 uses
  %.pre35 = load ptr, ptr %i.b, align 8, !tbaa !30 ; 2 uses
  %.pre36 = load i32, ptr %i.d, align 8, !tbaa !31
  %.pre48 = ptrtoint ptr %.pre35 to i64
  %.pre50 = ptrtoint ptr %.pre34 to i64
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit:       ; preds = %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, %bb.b
  %.pre-phi51 = phi i64 [ %.pre50, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre38, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.h, %bb.b ]
  %.pre-phi49 = phi i64 [ %.pre48, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre37, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.g, %bb.b ]
  %i.ak = phi ptr [ %i.aa, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ null, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.o, %bb.b ] ; 3 uses
  %i.al = phi i32 [ %.pre36, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre32, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.e, %bb.b ] ; 2 uses
  %i.am = phi ptr [ %.pre35, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.c, %bb.b ]
  %i.an = phi ptr [ %.pre34, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit.thread ], [ %.pre33, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.f, %bb.b ] ; 2 uses
  %i.ao = sub i64 %.pre-phi49, %.pre-phi51        ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 8
  br i1 %i.ap, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr align 8 %i.an, i64 %i.ao, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.e:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  %i.aq = icmp eq i64 %i.ao, 8
  br i1 %i.aq, label %bb.f, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !35
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !35
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d
  %i.as = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao ; 2 uses
  %.not.i30 = icmp eq i32 %i.al, 0
  br i1 %.not.i30, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.at = zext i32 %i.al to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.bj, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.at, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.au = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !35
  %i.ax = and i64 %i.aw, %i.av
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  %i.ay = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.az = shl nuw i64 1, %i.ay                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ba = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !35
  %i.bb = or i64 %i.ba, %i.az
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bc = xor i64 %i.az, -1
  %i.bd = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !35
  %i.be = and i64 %i.bd, %i.bc
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.be, %bb.h ], [ %i.bb, %bb.g ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !35
  %i.bf = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.bg = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.bg, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.bg, i32 0, i32 %i.bf
  %i.bh = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.bi = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.bi, i32 0, i32 %i.bh ; 2 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.bi, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 2 uses
  %i.bj = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.bk = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !0

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %.sroa.55.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ]
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.as, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK12CVQualifiers13stricter_thanERKS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %i.f to i64
  %i.m = add nsw i64 %i.k, %i.l                   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !31
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = shl nsw i64 %i.u, 3
  %i.w = zext i32 %i.q to i64
  %i.x = add nsw i64 %i.v, %i.w
  %.not = icmp eq i64 %i.m, %i.x
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !31
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !30  ; 4 uses
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = zext i32 %i.ad to i64
  %i.ak = add nsw i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !31
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !30  ; 4 uses
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = shl nsw i64 %i.as, 3
  %i.au = zext i32 %i.ao to i64
  %i.av = add nsw i64 %i.at, %i.au
  %.not38 = icmp eq i64 %i.ak, %i.av
  br i1 %.not38, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %.not4067.not = icmp eq i64 %i.m, 0
  br i1 %.not4067.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.03268 = phi i64 [ %i.bq, %bb.f ], [ 0, %.preheader ] ; 7 uses
  %i.aw = sub nuw i64 %i.m, %.03268
  %i.ax = icmp ugt i64 %i.aw, 2
  %i.ay = sdiv i64 %.03268, 64                    ; 4 uses
  br i1 %i.ax, label %bb.c, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre85 = and i64 %.03268, -9223372036854775745
  %.pre87 = and i64 %.03268, 63
  %.pre89 = shl nuw i64 1, %.pre87
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ay
  %i.ba = and i64 %.03268, -9223372036854775745   ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bb, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.az, i64 %storemerge.idx.i.i.i.i.i
  %i.bc = and i64 %.03268, 63
  %i.bd = shl nuw i64 1, %i.bc                    ; 2 uses
  %i.be = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ay
  %storemerge.i.i.i.i.i45 = getelementptr inbounds i8, ptr %i.bf, i64 %storemerge.idx.i.i.i.i.i
  %i.bg = load i64, ptr %storemerge.i.i.i.i.i45, align 8, !tbaa !35
  %i.bh = xor i64 %i.bg, %i.be
  %i.bi = and i64 %i.bh, %i.bd
  %.not63 = icmp eq i64 %i.bi, 0
  br i1 %.not63, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph._crit_edge, %bb.c
  %.pre-phi90 = phi i64 [ %.pre89, %.lr.ph._crit_edge ], [ %i.bd, %bb.c ] ; 2 uses
  %.pre-phi86 = phi i64 [ %.pre85, %.lr.ph._crit_edge ], [ %i.ba, %bb.c ]
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ay
  %i.bk = icmp ugt i64 %.pre-phi86, -9223372036854775808
  %storemerge.idx.i.i.i.i.i46 = select i1 %i.bk, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i47 = getelementptr inbounds i8, ptr %i.bj, i64 %storemerge.idx.i.i.i.i.i46
  %i.bl = load i64, ptr %storemerge.i.i.i.i.i47, align 8, !tbaa !35
  %i.bm = and i64 %i.bl, %.pre-phi90
  %.not64 = icmp eq i64 %i.bm, 0
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ay
  %storemerge.i.i.i.i.i49 = getelementptr inbounds i8, ptr %i.bn, i64 %storemerge.idx.i.i.i.i.i46
  %i.bo = load i64, ptr %storemerge.i.i.i.i.i49, align 8, !tbaa !35
  %i.bp = and i64 %i.bo, %.pre-phi90
  %.not65 = icmp eq i64 %i.bp, 0
  br i1 %.not65, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bq = add nuw i64 %.03268, 1                  ; 2 uses
  %.not40 = icmp ult i64 %i.bq, %i.m
  br i1 %.not40, label %.lr.ph, label %.critedge, !llvm.loop !124

.critedge:                                        ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEEvPSt13_Rb_tree_nodeISC_EDpOT_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #20
          to label %.noexc9 unwind label %bb.f    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.l, ptr %i.a, align 8, !tbaa !109
  store i64 %i.g, ptr %i.d, align 8, !tbaa !103
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc9, %bb.a
  %i.m = phi ptr [ %i.l, %.noexc9 ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.h
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !103
  store i8 %i.n, ptr %i.m, align 1, !tbaa !103
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #21 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #19
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.g, ptr %i.s, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.t, align 1, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.u, align 8, !tbaa !113
  ret void

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.r

bb.j:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN10EnumeratorIS5_E10EnumObjectEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !97 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !97  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !186

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !102  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !102  ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !109
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !109
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #21 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21roll_back_current_posEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.as, %tailrecurse ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.lcssa, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !106  ; 2 uses
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !tbaa !106
  %i.k = load i32, ptr %i.g, align 4, !tbaa !105
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit: ; preds = %tailrecurse._crit_edge
  store i32 %i.i, ptr %i.h, align 4, !tbaa !106
  br label %bb.d

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  store i8 1, ptr %i.m, align 2, !tbaa !107
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.lcssa) #22 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.02.06.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !106
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.06.i) #22 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit, label %.lr.ph.i, !llvm.loop !187

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit: ; preds = %.lr.ph.i, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.o, ptr %i.v, align 8, !tbaa !97
  %i.w = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.o) #22 ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !111
  %.cast.i = ptrtoint ptr %i.w to i64
  store i64 %.cast.i, ptr %i.a, align 8, !tbaa !97
  %i.x = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.w) #22
  store ptr %i.x, ptr %i.a, align 8, !tbaa !111
  br label %bb.d

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.y = phi ptr [ %i.as, %tailrecurse ], [ %i.d, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !113 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !106 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !106
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !105
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  store i8 1, ptr %i.ag, align 2, !tbaa !107
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.y) #22 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.c, %.lr.ph.i5
  %.sroa.02.06.i6 = phi ptr [ %i.an, %.lr.ph.i5 ], [ %i.ah, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i6, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !113
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !106
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.06.i6) #22 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ai
  br i1 %i.ao, label %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7, label %.lr.ph.i5, !llvm.loop !187

_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7: ; preds = %.lr.ph.i5, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !97
  %i.aq = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ai) #22 ; 3 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !111
  %.cast.i8 = ptrtoint ptr %i.aq to i64
  store i64 %.cast.i8, ptr %i.a, align 8, !tbaa !97
  %i.ar = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.aq) #22
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !111
  br label %bb.d

tailrecurse:                                      ; preds = %.lr.ph
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !106
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.y) #22 ; 4 uses
  store ptr %i.as, ptr %i.a, align 8, !tbaa !111
  %i.at = icmp eq ptr %i.as, %i.c
  br i1 %i.at, label %tailrecurse._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit
  %.2 = phi i1 [ true, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit ], [ false, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10EnumObject4nextEv.exit ], [ true, %_ZN10EnumeratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE24reset_after_backward_posEv.exit7 ]
  ret i1 %.2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = distinct !{!2, !36}
!3 = distinct !{!3, !36}
!4 = distinct !{!4, !36}
!5 = distinct !{null, null, null, null}
!6 = distinct !{!6, !36}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"bool", !12, i64 0}
!19 = !{!"any pointer", !12, i64 0}
!20 = !{!"p1 long", !19, i64 0}
!21 = !{!"_ZTSSt18_Bit_iterator_base", !20, i64 0, !13, i64 8}
!22 = !{!"_ZTSSt13_Bit_iterator", !21, i64 0}
!23 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !22, i64 0, !22, i64 16, !20, i64 32}
!24 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !23, i64 0}
!25 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !24, i64 0}
!26 = !{!"_ZTSSt6vectorIbSaIbEE", !25, i64 0}
!27 = !{!"_ZTS12CVQualifiers", !18, i64 8, !18, i64 9, !26, i64 16, !26, i64 56}
!28 = !{!27, !18, i64 8}
!29 = !{!27, !18, i64 9}
!30 = !{!21, !20, i64 0}
!31 = !{!21, !13, i64 8}
!32 = !{!23, !20, i64 32}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!"long", !12, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{ptr @_ZN12CVQualifiersD2Ev}
!40 = !{!13, !13, i64 0}
!41 = !{!"p1 _ZTS8Function", !19, i64 0}
!42 = !{!"any p2 pointer", !19, i64 0}
!43 = !{!"p2 _ZTS5Block", !42, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIPK5BlockSaIS2_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!"_ZTSNSt12_Vector_baseIPK5BlockSaIS2_EE12_Vector_implE", !44, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIPK5BlockSaIS2_EE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorIPK5BlockSaIS2_EE", !46, i64 0}
!48 = !{!"p1 _ZTS5Block", !19, i64 0}
!49 = !{!"p1 _ZTS11RWDirective", !19, i64 0}
!50 = !{!"_ZTSSt4lessIPK8VariableE"}
!51 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPK8VariableEE", !50, i64 0}
!52 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!53 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !19, i64 0}
!54 = !{!"_ZTSSt18_Rb_tree_node_base", !52, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!55 = !{!"_ZTSSt15_Rb_tree_header", !54, i64 0, !34, i64 32}
!56 = !{!"_ZTSNSt8_Rb_treeIPK8VariableSt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !51, i64 0, !55, i64 8}
!57 = !{!"_ZTSSt8_Rb_treeIPK8VariableSt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE", !56, i64 0}
!58 = !{!"_ZTSSt3mapIPK8VariablejSt4lessIS2_ESaISt4pairIKS2_jEEE", !57, i64 0}
!59 = !{!"p1 _ZTS10Expression", !19, i64 0}
!60 = !{!"p1 _ZTS6Effect", !19, i64 0}
!61 = !{!"p2 _ZTS8Variable", !42, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIPK8VariableSaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIPK8VariableSaIS2_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIPK8VariableSaIS2_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIPK8VariableSaIS2_EE", !64, i64 0}
!66 = !{!"_ZTS6Effect", !65, i64 0, !65, i64 24, !65, i64 48, !18, i64 72, !18, i64 73}
!67 = !{!"_ZTS9CGContext", !41, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !47, i64 24, !48, i64 48, !49, i64 56, !58, i64 64, !59, i64 112, !60, i64 120, !60, i64 128, !66, i64 136}
!68 = !{!67, !60, i64 120}
!69 = !{i64 8}
!70 = !{!66, !18, i64 73}
!71 = !{!"llvm.loop.peeled.count", i32 1}
!72 = !{!"_ZTS9eTypeDesc", !12, i64 0}
!73 = !{!"p1 _ZTS4Type", !19, i64 0}
!74 = !{!"_ZTS11eSimpleType", !12, i64 0}
!75 = !{!"p1 int", !19, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!77 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !76, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !77, i64 0}
!79 = !{!"_ZTSSt6vectorIjSaIjEE", !78, i64 0}
!80 = !{!"p2 _ZTS4Type", !42, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIPK4TypeSaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIPK4TypeSaIS2_EE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIPK4TypeSaIS2_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIPK4TypeSaIS2_EE", !83, i64 0}
!85 = !{!"p1 _ZTS12CVQualifiers", !19, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseI12CVQualifiersSaIS0_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!"_ZTSNSt12_Vector_baseI12CVQualifiersSaIS0_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseI12CVQualifiersSaIS0_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorI12CVQualifiersSaIS0_EE", !88, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!91 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !90, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !91, i64 0}
!93 = !{!"_ZTSSt6vectorIiSaIiEE", !92, i64 0}
!94 = !{!"_ZTS4Type", !72, i64 0, !73, i64 8, !74, i64 16, !79, i64 24, !84, i64 48, !13, i64 72, !18, i64 76, !18, i64 77, !18, i64 78, !18, i64 79, !18, i64 80, !89, i64 88, !93, i64 112}
!95 = !{!55, !53, i64 8}
!96 = !{!55, !53, i64 16}
!97 = !{!53, !53, i64 0}
!98 = !{!"p1 omnipotent char", !19, i64 0}
!99 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !98, i64 0}
!100 = !{!99, !98, i64 0}
!101 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !99, i64 0, !34, i64 8, !12, i64 16}
!102 = !{!101, !34, i64 8}
!103 = !{!12, !12, i64 0}
end_hunk_1
