inline.NumInlined: 977
inline.NumDeleted: 447
begin_hunk_0_@_ZN5arrow2io22CompressedOutputStream5AbortEv:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96, !noalias !103 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7, !noalias !103
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8, !noalias !103
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7, !noalias !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !103
  invoke void %i.p(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.m)
          to label %_ZN5arrow2io22CompressedOutputStream4Impl5AbortEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #25 ; 0 uses
  resume { ptr, i32 } %i.q

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !106
  br label %_ZN5arrow2io22CompressedOutputStream4Impl5AbortEv.exit

_ZN5arrow2io22CompressedOutputStream4Impl5AbortEv.exit: ; preds = %bb.c, %bb.e
  %i.s = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #25 ; 0 uses
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n48_N5arrow2io22CompressedOutputStream5AbortEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef readonly captures(none) %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38, !noalias !109 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #25, !noalias !115 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #29, !noalias !115
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !37, !range !91, !noalias !115, !noundef !92
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  store i8 0, ptr %i.i, align 8, !tbaa !37, !noalias !115
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96, !noalias !115 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !7, !noalias !115
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8, !noalias !115
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !7, !noalias !115
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !115
  invoke void %i.t(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(28) %i.q)
          to label %_ZN5arrow2io22CompressedOutputStream5AbortEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #25 ; 0 uses
  resume { ptr, i32 } %i.u

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !116
  br label %_ZN5arrow2io22CompressedOutputStream5AbortEv.exit

_ZN5arrow2io22CompressedOutputStream5AbortEv.exit: ; preds = %bb.c, %bb.e
  %i.w = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow2io22CompressedOutputStream6closedEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #25 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN5arrow2io22CompressedOutputStream4Impl6closedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #29
  unreachable

_ZN5arrow2io22CompressedOutputStream4Impl6closedEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !37, !range !91, !noundef !92
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #25 ; 0 uses
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
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #25 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK5arrow2io22CompressedOutputStream6closedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #29
  unreachable

_ZNK5arrow2io22CompressedOutputStream6closedEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !37, !range !91, !noundef !92
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = xor i1 %i.k, true
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #25 ; 0 uses
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow2io22CompressedOutputStream4TellEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result.13") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #25, !noalias !119 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK5arrow2io22CompressedOutputStream4Impl4TellEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #29, !noalias !119
  unreachable

_ZNK5arrow2io22CompressedOutputStream4Impl4TellEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !119
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.e, align 8, !tbaa !86, !noalias !119
  store i64 %i.g, ptr %i.f, align 8, !tbaa !86, !alias.scope !119
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #25, !noalias !119 ; 0 uses
  ret void
}

; Function Attrs: uwtable
define void @_ZTv0_n56_NK5arrow2io22CompressedOutputStream4TellEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result.13") align 8 captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -56
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38, !noalias !122 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.h = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #25, !noalias !128 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK5arrow2io22CompressedOutputStream4TellEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.h) #29, !noalias !128
  unreachable

_ZNK5arrow2io22CompressedOutputStream4TellEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.i, align 8, !tbaa !86, !noalias !128
  store i64 %i.k, ptr %i.j, align 8, !tbaa !86, !alias.scope !128
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #25, !noalias !128 ; 0 uses
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
  %6 = alloca %"class.arrow::Result.97", align 8  ; 15 uses
  %7 = alloca %"class.arrow::Result.97", align 8  ; 13 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a, label %bb.ac

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0..sroa_idx.i.i74 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit97
  %.040110 = phi i64 [ %3, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a ], [ %i.ca, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit97 ] ; 3 uses
  %.041109 = phi ptr [ %2, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader.a ], [ %i.bz, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit97 ] ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !129  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !130
  %i.m = load i64, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.n = sub nsw i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !139, !range !91, !noundef !92
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !91
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = select i1 %i.q, i1 %i.t, i1 false, !prof !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.u, ptr %i.w, ptr null, !prof !45
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !140  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.97") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef %.040110, ptr noundef %.041109, i64 noundef %i.n, ptr noundef %i.y)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %6, align 8, !tbaa !42
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.critedge71 unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.h:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !86 ; 2 uses
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !86
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !67
  %i.ai = add nsw i64 %i.ah, %.sroa.2.0.copyload.i.i ; 5 uses
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !67
  %i.aj = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.aj, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.r

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !141
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !96, !noalias !141 ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !129, !noalias !141 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !139, !range !91, !noalias !141, !noundef !92
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !141
  %i.as = select i1 %i.ap, ptr %i.ar, ptr null, !prof !45
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !7, !noalias !141
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !141
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.as, i64 noundef %i.ai)
          to label %.noexc unwind label %bb.j, !inline_history !144

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !42, !noalias !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !141
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit72, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.noexc
  store ptr %i.aw, ptr %0, align 8, !tbaa !42, !alias.scope !148
  br label %.critedge71

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZN5arrow6StatusD2Ev.exit72:                      ; preds = %.noexc
  store i64 0, ptr %i.d, align 8, !tbaa !67, !noalias !141
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !151
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !129 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !130
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !139, !range !91, !noundef !92
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !range !91
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = select i1 %i.be, i1 %i.bh, i1 false, !prof !45
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = select i1 %i.bi, ptr %i.bk, ptr null, !prof !45
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !140 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.97") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %.040110, ptr noundef %.041109, i64 noundef %i.bb, ptr noundef %i.bl)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit72
  %i.bq = load ptr, ptr %7, align 8, !tbaa !42
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge, label %bb.l, !prof !45

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit72
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %7, align 8, !tbaa !42
  %.not.i.i80 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i80, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit82, label %bb.q, !prof !45

bb.o:                                             ; preds = %bb.l
  %.pre = load ptr, ptr %7, align 8, !tbaa !42
  %i.bv = icmp eq ptr %.pre, null
  br i1 %i.bv, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread, label %bb.p, !prof !153

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.critedge71

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge: ; preds = %bb.k
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %i.h, align 8, !tbaa !86
  %.sroa.2.0.copyload.i.i75 = load i64, ptr %.sroa.2.0..sroa_idx.i.i74, align 8, !tbaa !86
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !67
  %i.bx = add nsw i64 %i.bw, %.sroa.2.0.copyload.i.i75 ; 2 uses
  store i64 %i.bx, ptr %i.d, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit82

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit82: ; preds = %bb.n, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.z

bb.r:                                             ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge, %bb.i, %bb.h
  %i.by = phi i64 [ %i.bx, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge ], [ %i.ai, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %.sroa.010.1 = phi i64 [ %.sroa.0.0.copyload.i.i73, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge ], [ 0, %bb.i ], [ %.sroa.0.0.copyload.i.i, %bb.h ] ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %.041109, i64 %.sroa.010.1
  %i.ca = sub nsw i64 %.040110, %.sroa.010.1      ; 2 uses
  %i.cb = load i64, ptr %i.i, align 8, !tbaa !154
  %i.cc = add nsw i64 %i.cb, %.sroa.010.1
  store i64 %i.cc, ptr %i.i, align 8, !tbaa !154
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !129 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !130
  %i.cg = icmp eq i64 %i.by, %i.cf
  br i1 %i.cg, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ch = icmp sgt i64 %i.by, 0
  br i1 %i.ch, label %_ZN5arrow6StatusD2Ev.exit.i83, label %_ZN5arrow6StatusD2Ev.exit89

_ZN5arrow6StatusD2Ev.exit.i83:                    ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !155
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !96, !noalias !155 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 9
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !139, !range !91, !noalias !155, !noundef !92
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !155
  %i.co = select i1 %i.cl, ptr %i.cn, ptr null, !prof !45
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !7, !noalias !155
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !155
  invoke void %i.cr(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.co, i64 noundef %i.by)
          to label %.noexc84 unwind label %bb.u, !inline_history !144

.noexc84:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i83
  %i.cs = load ptr, ptr %4, align 8, !tbaa !42, !noalias !158 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !155
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.t, label %_ZN5arrow6StatusD2Ev.exit87

bb.t:                                             ; preds = %.noexc84
  store i64 0, ptr %i.d, align 8, !tbaa !67, !noalias !155
  br label %_ZN5arrow6StatusD2Ev.exit89

_ZN5arrow6StatusD2Ev.exit87:                      ; preds = %.noexc84
  store ptr %i.cs, ptr %0, align 8, !tbaa !42, !alias.scope !161
  br label %.critedge71

bb.u:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i83
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZN5arrow6StatusD2Ev.exit89:                      ; preds = %bb.t, %bb.s
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !164
  br label %bb.v

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit89, %bb.r
  %i.cv = icmp eq i64 %.sroa.010.1, 0
  br i1 %i.cv, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !129 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !130
  %i.cz = shl nsw i64 %i.cy, 1
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !7, !noalias !166
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !166
  invoke void %i.dc(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.cw, i64 noundef %i.cz, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit92 unwind label %bb.x, !inline_history !169

_ZN5arrow6StatusD2Ev.exit92:                      ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.dd = load ptr, ptr %8, align 8, !tbaa !42, !noalias !170 ; 2 uses
  store ptr %i.dd, ptr %0, align 8, !tbaa !42, !alias.scope !170
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.critedge, label %.critedge71

bb.x:                                             ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.z

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit92, %bb.v
  %i.dg = load ptr, ptr %6, align 8, !tbaa !42
  %.not.i.i95 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i95, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit97, label %bb.y, !prof !45

bb.y:                                             ; preds = %.critedge
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit97

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit97: ; preds = %.critedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %10 = icmp sgt i64 %i.ca, 0
  br i1 %10, label %bb.c, label %bb.ac, !llvm.loop !173

bb.z:                                             ; preds = %bb.j, %bb.u, %bb.x, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit82, %bb.m, %bb.g
  %.pn64 = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.df, %bb.x ], [ %i.cu, %bb.u ], [ %i.bs, %bb.m ], [ %i.ay, %bb.j ], [ %i.bt, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit82 ]
  %i.dh = load ptr, ptr %6, align 8, !tbaa !42
  %.not.i.i98 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i98, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit100, label %bb.aa, !prof !45

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit100

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit100: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit100, %bb.f
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit100 ], [ %i.af, %bb.f ]
  %i.di = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  resume { ptr, i32 } %.pn64.pn

bb.ac:                                            ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit97, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !175
  br label %.loopexit

.critedge71:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit92, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit87, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  %11 = load ptr, ptr %6, align 8, !tbaa !42
  %.not.i.i102 = icmp eq ptr %11, null
  br i1 %.not.i.i102, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit104, label %12, !prof !45

12:                                               ; preds = %.critedge71
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit104

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit104: ; preds = %.critedge71, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit104, %bb.ac
  %i.dj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
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
  %3 = alloca %"class.arrow::Result.101", align 8 ; 12 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 2 uses
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
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !129  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !130
  %i.k = load i64, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.l = sub nsw i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !139, !range !91, !noundef !92
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !91
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.o, i1 %i.r, i1 false, !prof !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !45
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !140  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.101") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.l, ptr noundef %i.w)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ab = load ptr, ptr %3, align 8, !tbaa !42
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %bb.d, !prof !45

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.critedge unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.f, align 8, !tbaa !86
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !178
  %i.af = load i64, ptr %i.d, align 8, !tbaa !67
  %i.ag = add nsw i64 %i.af, %.sroa.0.0.copyload.i.i ; 3 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !67
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit26

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !179
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !96, !noalias !179 ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !129, !noalias !179 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !139, !range !91, !noalias !179, !noundef !92
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !179
  %i.ap = select i1 %i.am, ptr %i.ao, ptr null, !prof !45
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !7, !noalias !179
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !179
  invoke void %i.as(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.ap, i64 noundef %i.ag)
          to label %.noexc unwind label %bb.i, !inline_history !144

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.at = load ptr, ptr %2, align 8, !tbaa !42, !noalias !182 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !179
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit

bb.h:                                             ; preds = %.noexc
  store i64 0, ptr %i.d, align 8, !tbaa !67, !noalias !179
  br label %_ZN5arrow6StatusD2Ev.exit26

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.noexc
  store ptr %i.at, ptr %0, align 8, !tbaa !42, !alias.scope !185
  br label %.critedge

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %bb.h, %bb.g
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !188
  %i.aw = trunc i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.aw, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !129 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !130
  %i.ba = shl nsw i64 %i.az, 1
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !7, !noalias !190
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !190
  invoke void %i.bd(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.ax, i64 noundef %i.ba, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit29 unwind label %bb.k, !inline_history !169

_ZN5arrow6StatusD2Ev.exit29:                      ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.be = load ptr, ptr %4, align 8, !tbaa !42, !noalias !193 ; 2 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !42, !alias.scope !193
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bf = icmp ne ptr %i.be, null
  %. = zext i1 %i.bf to i32
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.m

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit29, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit26, %bb.d
  %.3 = phi i32 [ 1, %bb.d ], [ 3, %_ZN5arrow6StatusD2Ev.exit26 ], [ %., %_ZN5arrow6StatusD2Ev.exit29 ], [ 1, %_ZN5arrow6StatusD2Ev.exit ]
  %i.bh = load ptr, ptr %3, align 8, !tbaa !42
  %.not.i.i32 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i32, label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit, label %bb.l, !prof !45

bb.l:                                             ; preds = %.critedge
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit

_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit: ; preds = %.critedge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  switch i32 %.3, label %.loopexit [
    i32 0, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
    i32 3, label %bb.p
  ], !llvm.loop !196

bb.m:                                             ; preds = %bb.i, %bb.k, %bb.f
  %.pn22 = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.bg, %bb.k ], [ %i.av, %bb.i ]
  %i.bi = load ptr, ptr %3, align 8, !tbaa !42
  %.not.i.i34 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i34, label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit36, label %bb.n, !prof !45

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit36

_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit36: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.o

bb.o:                                             ; preds = %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit36, %bb.e
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit36 ], [ %i.ad, %bb.e ]
  %i.bj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  resume { ptr, i32 } %.pn22.pn

bb.p:                                             ; preds = %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !197
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow6ResultINS_4util10Compressor11FlushResultEED2Ev.exit, %bb.p
  %i.bk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  ret void
end_hunk_0
