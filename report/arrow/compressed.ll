inline.NumInlined: 1038
inline.NumDeleted: 448
begin_hunk_0_@_ZN5arrow2io22CompressedOutputStream5AbortEv:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87, !noalias !94 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7, !noalias !94
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8, !noalias !94
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7, !noalias !94
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !94
  invoke void %i.p(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.m)
          to label %_ZN5arrow2io22CompressedOutputStream4Impl5AbortEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !97
  br label %_ZN5arrow2io22CompressedOutputStream4Impl5AbortEv.exit

_ZN5arrow2io22CompressedOutputStream4Impl5AbortEv.exit: ; preds = %bb.c, %bb.e
  %i.s = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n48_N5arrow2io22CompressedOutputStream5AbortEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef readonly captures(none) %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38, !noalias !100 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #26, !noalias !106 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #30, !noalias !106
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !37, !range !52, !noalias !106, !noundef !53
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  store i8 0, ptr %i.i, align 8, !tbaa !37, !noalias !106
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87, !noalias !106 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7, !noalias !106
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8, !noalias !106
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7, !noalias !106
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !106
  invoke void %i.t(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.q)
          to label %_ZN5arrow2io22CompressedOutputStream5AbortEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #26 ; 0 uses
  resume { ptr, i32 } %i.u

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !107
  br label %_ZN5arrow2io22CompressedOutputStream5AbortEv.exit

_ZN5arrow2io22CompressedOutputStream5AbortEv.exit: ; preds = %bb.c, %bb.e
  %i.w = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow2io22CompressedOutputStream6closedEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN5arrow2io22CompressedOutputStream4Impl6closedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #30
  unreachable

_ZN5arrow2io22CompressedOutputStream4Impl6closedEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !37, !range !52, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  ret i1 %i.h
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZTv0_n64_NK5arrow2io22CompressedOutputStream6closedEv(ptr noundef readonly captures(none) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #26 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK5arrow2io22CompressedOutputStream6closedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #30
  unreachable

_ZNK5arrow2io22CompressedOutputStream6closedEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !37, !range !52, !noundef !53
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = xor i1 %i.k, true
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #26 ; 0 uses
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow2io22CompressedOutputStream4TellEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result.13") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26, !noalias !110 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK5arrow2io22CompressedOutputStream4Impl4TellEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #30, !noalias !110
  unreachable

_ZNK5arrow2io22CompressedOutputStream4Impl4TellEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.e, align 8, !tbaa !113, !noalias !110
  store i64 %i.g, ptr %i.f, align 8, !tbaa !113, !alias.scope !110
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26, !noalias !110 ; 0 uses
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n56_NK5arrow2io22CompressedOutputStream4TellEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result.13") align 8 captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -56
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38, !noalias !114 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #26, !noalias !120 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK5arrow2io22CompressedOutputStream4TellEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #30, !noalias !120
  unreachable

_ZNK5arrow2io22CompressedOutputStream4TellEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.i, align 8, !tbaa !113, !noalias !120
  store i64 %i.k, ptr %i.j, align 8, !tbaa !113, !alias.scope !120
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #26, !noalias !120 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io22CompressedOutputStream5WriteEPKvl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  tail call void @_ZN5arrow2io22CompressedOutputStream4Impl5WriteEPKvl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io22CompressedOutputStream4Impl5WriteEPKvl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Result.96", align 8  ; 15 uses
  %7 = alloca %"class.arrow::Result.96", align 8  ; 13 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a, label %bb.af

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0..sroa_idx.i.i87 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #30
  unreachable

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit114
  %.040127 = phi i64 [ %3, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a ], [ %i.cf, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit114 ] ; 3 uses
  %.041126 = phi ptr [ %2, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a ], [ %i.ce, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit114 ] ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !121  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !122
  %i.m = load i64, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.n = sub nsw i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !131, !range !52, !noundef !53
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !52
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = select i1 %i.q, i1 %i.t, i1 false, !prof !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.u, ptr %i.w, ptr null, !prof !42
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.96") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef %.040127, ptr noundef %.041126, i64 noundef %i.n, ptr noundef %i.y)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %6, align 8, !tbaa !39
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.critedge80 unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.h:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !113 ; 2 uses
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !113
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !75
  %i.ai = add nsw i64 %i.ah, %.sroa.2.0.copyload.i.i ; 5 uses
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !75
  %i.aj = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.aj, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.s

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !133
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !87, !noalias !133 ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !121, !noalias !133 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !131, !range !52, !noalias !133, !noundef !53
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !133
  %i.as = select i1 %i.ap, ptr %i.ar, ptr null, !prof !42
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !7, !noalias !133
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !133
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.as, i64 noundef %i.ai)
          to label %.noexc unwind label %bb.j, !inline_history !136

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !39, !noalias !133 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !133
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit83, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.noexc
  store ptr %i.aw, ptr %0, align 8, !tbaa !39
  br label %.critedge80

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN5arrow6StatusD2Ev.exit83:                      ; preds = %.noexc
  store i64 0, ptr %i.d, align 8, !tbaa !75, !noalias !133
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !121 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !122
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !131, !range !52, !noundef !53
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !range !52
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = select i1 %i.be, i1 %i.bh, i1 false, !prof !42
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = select i1 %i.bi, ptr %i.bk, ptr null, !prof !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !132 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.96") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %.040127, ptr noundef %.041126, i64 noundef %i.bb, ptr noundef %i.bl)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit83
  %i.bq = load ptr, ptr %7, align 8, !tbaa !39
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge, label %bb.l, !prof !42

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %0, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN5arrow6StatusC2ERKS0_.exit85 unwind label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit83
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i93, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit95, label %bb.q, !prof !42

_ZN5arrow6StatusC2ERKS0_.exit85:                  ; preds = %bb.l
  %.pre = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %.not.i.i91 = icmp eq ptr %.pre, null
  br i1 %.not.i.i91, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread, label %bb.o, !prof !137

bb.o:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit85
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43, !range !52, !noundef !53
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #26
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread: ; preds = %_ZN5arrow6StatusC2ERKS0_.exit85, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.critedge80

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge: ; preds = %bb.k
  %.sroa.0.0.copyload.i.i86 = load i64, ptr %i.h, align 8, !tbaa !113
  %.sroa.2.0.copyload.i.i88 = load i64, ptr %.sroa.2.0..sroa_idx.i.i87, align 8, !tbaa !113
  %i.by = load i64, ptr %i.d, align 8, !tbaa !75
  %i.bz = add nsw i64 %i.by, %.sroa.2.0.copyload.i.i88 ; 2 uses
  store i64 %i.bz, ptr %i.d, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !43, !range !52, !noundef !53
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit95, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #26
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit95

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit95: ; preds = %bb.n, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ab

bb.s:                                             ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge, %bb.i, %bb.h
  %i.cd = phi i64 [ %i.bz, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge ], [ %i.ai, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %.sroa.010.1 = phi i64 [ %.sroa.0.0.copyload.i.i86, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge ], [ 0, %bb.i ], [ %.sroa.0.0.copyload.i.i, %bb.h ] ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.041126, i64 %.sroa.010.1
  %i.cf = sub nsw i64 %.040127, %.sroa.010.1      ; 2 uses
  %i.cg = load i64, ptr %i.i, align 8, !tbaa !138
  %i.ch = add nsw i64 %i.cg, %.sroa.010.1
  store i64 %i.ch, ptr %i.i, align 8, !tbaa !138
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !121 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !122
  %i.cl = icmp eq i64 %i.cd, %i.ck
  br i1 %i.cl, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cm = icmp sgt i64 %i.cd, 0
  br i1 %i.cm, label %_ZN5arrow6StatusD2Ev.exit.i96, label %_ZN5arrow6StatusD2Ev.exit104

_ZN5arrow6StatusD2Ev.exit.i96:                    ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !139
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !87, !noalias !139 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !131, !range !52, !noalias !139, !noundef !53
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !139
  %i.ct = select i1 %i.cq, ptr %i.cs, ptr null, !prof !42
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !7, !noalias !139
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !139
  invoke void %i.cw(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.ct, i64 noundef %i.cd)
          to label %.noexc97 unwind label %bb.v, !inline_history !136

.noexc97:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i96
  %i.cx = load ptr, ptr %4, align 8, !tbaa !39, !noalias !139 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !139
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.u, label %_ZN5arrow6StatusD2Ev.exit100

bb.u:                                             ; preds = %.noexc97
  store i64 0, ptr %i.d, align 8, !tbaa !75, !noalias !139
  br label %_ZN5arrow6StatusD2Ev.exit104

_ZN5arrow6StatusD2Ev.exit100:                     ; preds = %.noexc97
  store ptr %i.cx, ptr %0, align 8, !tbaa !39
  br label %.critedge80

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i96
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN5arrow6StatusD2Ev.exit104:                     ; preds = %bb.u, %bb.t
  store ptr null, ptr %0, align 8, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit104, %bb.s
  %i.da = icmp eq i64 %.sroa.010.1, 0
  br i1 %i.da, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !121 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !122
  %i.de = shl nsw i64 %i.dd, 1
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !7, !noalias !142
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !142
  invoke void %i.dh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.db, i64 noundef %i.de, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit107 unwind label %bb.y, !inline_history !145

_ZN5arrow6StatusD2Ev.exit107:                     ; preds = %bb.x
  %i.di = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  store ptr %i.di, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.critedge, label %.critedge80

bb.y:                                             ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ab

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit107, %bb.w
  %i.dl = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i112, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit114, label %bb.z, !prof !42

bb.z:                                             ; preds = %.critedge
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !43, !range !52, !noundef !53
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit114, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit114

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit114: ; preds = %.critedge, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %10 = icmp sgt i64 %i.cf, 0
  br i1 %10, label %bb.c, label %bb.af, !llvm.loop !146

bb.ab:                                            ; preds = %bb.j, %bb.v, %bb.y, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit95, %bb.m, %bb.g
  %.pn73 = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.dk, %bb.y ], [ %i.cz, %bb.v ], [ %i.bs, %bb.m ], [ %i.ay, %bb.j ], [ %i.bt, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit95 ]
  %i.dp = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %.not.i.i115 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i115, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit117, label %bb.ac, !prof !42

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !43, !range !52, !noundef !53
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit117, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit117

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit117: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit117, %bb.f
  %.pn73.pn = phi { ptr, i32 } [ %.pn73, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit117 ], [ %i.af, %bb.f ]
  %i.dt = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  resume { ptr, i32 } %.pn73.pn

bb.af:                                            ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit114, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !148
  br label %.loopexit

.critedge80:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit107, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit100, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  %11 = load ptr, ptr %6, align 8, !tbaa !39      ; 2 uses
  %.not.i.i119 = icmp eq ptr %11, null
  br i1 %.not.i.i119, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121, label %12, !prof !42

12:                                               ; preds = %.critedge80
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !43, !range !52, !noundef !53
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121, label %16

16:                                               ; preds = %12
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121: ; preds = %.critedge80, %12, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121, %bb.af
  %i.du = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow2io22CompressedOutputStream5FlushEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  tail call void @_ZN5arrow2io22CompressedOutputStream4Impl5FlushEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5arrow2io22CompressedOutputStream4Impl5FlushEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Result.100", align 8 ; 12 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !121  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !122
  %i.k = load i64, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.l = sub nsw i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !131, !range !52, !noundef !53
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !52
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.o, i1 %i.r, i1 false, !prof !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !42
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.100") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.l, ptr noundef %i.w)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ab = load ptr, ptr %3, align 8, !tbaa !39
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.critedge unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.f:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.g:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !113
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !151
  %i.af = load i64, ptr %i.d, align 8, !tbaa !75
  %i.ag = add nsw i64 %i.af, %.sroa.0.0.copyload.i.i ; 3 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !75
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit34

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !152
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !87, !noalias !152 ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !121, !noalias !152 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !131, !range !52, !noalias !152, !noundef !53
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !152
  %i.ap = select i1 %i.am, ptr %i.ao, ptr null, !prof !42
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !7, !noalias !152
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !152
  invoke void %i.as(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.ap, i64 noundef %i.ag)
          to label %.noexc unwind label %bb.i, !inline_history !136

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.at = load ptr, ptr %2, align 8, !tbaa !39, !noalias !152 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !152
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit

bb.h:                                             ; preds = %.noexc
  store i64 0, ptr %i.d, align 8, !tbaa !75, !noalias !152
  br label %_ZN5arrow6StatusD2Ev.exit34

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.noexc
  store ptr %i.at, ptr %0, align 8, !tbaa !39
  br label %.critedge

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN5arrow6StatusD2Ev.exit34:                      ; preds = %bb.h, %bb.g
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.aw = trunc i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.aw, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !121 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !122
  %i.ba = shl nsw i64 %i.az, 1
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !7, !noalias !155
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !155
  invoke void %i.bd(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.ax, i64 noundef %i.ba, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit37 unwind label %bb.k, !inline_history !145

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %bb.j
  %i.be = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bf = icmp ne ptr %i.be, null
  %. = zext i1 %i.bf to i32
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.n

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit37, %_ZN5arrow6StatusD2Ev.exit, %bb.d, %_ZN5arrow6StatusD2Ev.exit34
  %.323 = phi i32 [ 1, %bb.d ], [ 3, %_ZN5arrow6StatusD2Ev.exit34 ], [ %., %_ZN5arrow6StatusD2Ev.exit37 ], [ 1, %_ZN5arrow6StatusD2Ev.exit ]
  %i.bh = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i42, label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit, label %bb.l, !prof !42

bb.l:                                             ; preds = %.critedge
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !43, !range !52, !noundef !53
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  br label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit

_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit: ; preds = %.critedge, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  switch i32 %.323, label %.loopexit [
    i32 0, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
    i32 3, label %bb.r
  ], !llvm.loop !158

bb.n:                                             ; preds = %bb.i, %bb.k, %bb.f
  %.pn28 = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.bg, %bb.k ], [ %i.av, %bb.i ]
  %i.bl = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i44, label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit46, label %bb.o, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !43, !range !52, !noundef !53
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit46, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  br label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit46

_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit46: ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.q

end_hunk_0
