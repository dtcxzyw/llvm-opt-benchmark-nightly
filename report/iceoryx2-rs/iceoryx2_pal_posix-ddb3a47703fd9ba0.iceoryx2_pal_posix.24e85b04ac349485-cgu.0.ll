Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_pal_posix-ddb3a47703fd9ba0.iceoryx2_pal_posix.24e85b04ac349485-cgu.0?download=true
inline.NumInlined: 245
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix5sched14sched_getparam:bb.a

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix5sched14sched_setparam(i32 %0, ptr %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @sched_setparam(i32 %0, ptr %1) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix5sched18sched_getscheduler(i32 %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @sched_getscheduler(i32 %0) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix5sched18sched_setscheduler(i32 %0, i32 %1, ptr %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @sched_setscheduler(i32 %0, i32 %1, ptr %2) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix5sched22sched_get_priority_max(i32 %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @sched_get_priority_max(i32 %0) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix5sched22sched_get_priority_min(i32 %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @sched_get_priority_min(i32 %0) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket10getsockopt(i32 %0, i32 %1, i32 %2, ptr %3, ptr %4) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @getsockopt(i32 %0, i32 %1, i32 %2, ptr %3, ptr %4) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket10setsockopt(i32 %0, i32 %1, i32 %2, ptr %3, i32 %4) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @setsockopt(i32 %0, i32 %1, i32 %2, ptr %3, i32 %4) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket10socketpair(i32 %0, i32 %1, i32 %2, ptr %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @socketpair(i32 %0, i32 %1, i32 %2, ptr %3) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket11getsockname(i32 %0, ptr %1, ptr %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @getsockname(i32 %0, ptr %1, ptr %2) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket4bind(i32 %0, ptr %1, i32 %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @bind(i32 %0, ptr %1, i32 %2) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i64 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket4recv(i32 %0, ptr %1, i64 %2, i32 %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @recv(i32 %0, ptr %1, i64 %2, i32 %3) #31
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i64 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket4send(i32 %0, ptr %1, i64 %2, i32 %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @send(i32 %0, ptr %1, i64 %2, i32 %3) #31
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i64 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket6sendto(i32 %0, ptr %1, i64 %2, i32 %3, ptr %4, i32 %5) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @sendto(i32 %0, ptr %1, i64 %2, i32 %3, ptr %4, i32 %5) #31
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket6socket(i32 %0, i32 %1, i32 %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @socket(i32 %0, i32 %1, i32 %2) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket7connect(i32 %0, ptr %1, i32 %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @connect(i32 %0, ptr %1, i32 %2) #31
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i64 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket7recvmsg(i32 %0, ptr %1, i32 %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @recvmsg(i32 %0, ptr %1, i32 %2) #31
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i64 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket7sendmsg(i32 %0, ptr %1, i32 %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @sendmsg(i32 %0, ptr %1, i32 %2) #31
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define i64 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6socket8recvfrom(i32 %0, ptr %1, i64 %2, i32 %3, ptr %4, ptr %5) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @recvfrom(i32 %0, ptr %1, i64 %2, i32 %3, ptr %4, ptr %5) #31
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define i32 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6unistd10gethostpid() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.39.i11 = alloca [40 x i8], align 8       ; 4 uses
  %.sroa.39.i = alloca [48 x i8], align 8         ; 4 uses
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [1024 x i8], align 1              ; 3 uses
  %i.f = tail call ptr @_RNvMs3_NtNtCs8Chj7Szqq0n_4core3ffi5c_strNtB5_4CStr6as_ptrCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull @22, i64 18) #26
  %i.g = tail call noundef i32 (ptr, i32, ...) @open(ptr readonly %i.f, i32 0) #31 ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false)
  %i.i = call noundef i64 @read(i32 %i.g, ptr nonnull %i.e, i64 1023) #31
  %i.j = tail call i32 @close(i32 %i.g) #31       ; 0 uses
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i32 @getpid() #31
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  call void @_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String15from_utf8_lossy(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull %i.e, i64 1024)
  %i.m = load i64, ptr %i.d, align 8
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = invoke { ptr, i64 } @_RNvXs0_NtCsbqH9stoieM8_5alloc3strNtNtB7_6string6StringINtNtCs8Chj7Szqq0n_4core6borrow6BorroweE6borrowCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.d) #26
          to label %_RNvXs2_NtCsbqH9stoieM8_5alloc6borrowINtB5_3CoweENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs3asqsiKBnrB_18iceoryx2_pal_posix.exit unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = insertvalue { ptr, i64 } poison, ptr %i.p, 0
  %i.t = insertvalue { ptr, i64 } %i.s, i64 %i.r, 1
  br label %_RNvXs2_NtCsbqH9stoieM8_5alloc6borrowINtB5_3CoweENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs3asqsiKBnrB_18iceoryx2_pal_posix.exit

bb.g:                                             ; preds = %bb.b
  %i.u = tail call i32 @getpid() #31
  br label %bb.n

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.d) #29
          to label %bb.z unwind label %bb.y

.loopexit:                                        ; preds = %bb.j, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.l, %bb.w, %bb.e, %_RNvXs2_NtCsbqH9stoieM8_5alloc6borrowINtB5_3CoweENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs3asqsiKBnrB_18iceoryx2_pal_posix.exit, %bb.o, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RNvXs2_NtCsbqH9stoieM8_5alloc6borrowINtB5_3CoweENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs3asqsiKBnrB_18iceoryx2_pal_posix.exit: ; preds = %bb.f, %bb.e
  %.merged.i = phi { ptr, i64 } [ %i.t, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %i.v = extractvalue { ptr, i64 } %.merged.i, 0
  %i.w = extractvalue { ptr, i64 } %.merged.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.39.i)
  invoke void @_RNvXs2_NtNtCs8Chj7Szqq0n_4core3str7patterncNtB5_7Pattern13into_searcherCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull sret([48 x i8]) align 8 %.sroa.39.i, i32 10, ptr %i.v, i64 %i.w) #26
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %_RNvXs2_NtCsbqH9stoieM8_5alloc6borrowINtB5_3CoweENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCs3asqsiKBnrB_18iceoryx2_pal_posix.exit
  store i64 0, ptr %i.c, align 8, !alias.scope !10
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.w, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !10
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.39.i, i64 48, i1 false)
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i8 0, ptr %.sroa.410.0..sroa_idx.i, align 8, !alias.scope !10
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 65
  store i8 0, ptr %.sroa.511.0..sroa_idx.i, align 1, !alias.scope !10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39.i)
  br label %bb.j

bb.j:                                             ; preds = %.noexc10, %bb.i
  %i.x = invoke { ptr, i64 } @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.c) #26
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %bb.j
  %i.y = extractvalue { ptr, i64 } %i.x, 0        ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc9
  %i.z = extractvalue { ptr, i64 } %i.x, 1        ; 2 uses
  %i.aa = invoke zeroext i1 @_RNvXst_NtNtCs8Chj7Szqq0n_4core3str7patternReNtB5_7Pattern12is_prefix_ofCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull @10, i64 6, ptr nonnull %i.y, i64 %i.z) #26
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %bb.k
  br i1 %i.aa, label %bb.l, label %bb.j

bb.l:                                             ; preds = %.noexc10
  %i.ab = invoke { ptr, i64 } @_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECscZmzQvjfhHm_14rustc_demangle(ptr nonnull %i.y, i64 %i.z, ptr nonnull @10, i64 6)
          to label %bb.o unwind label %.loopexit.split-lp ; 2 uses

bb.m:                                             ; preds = %.noexc9
  %i.ac = call i32 @getpid() #31
  call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.d)
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %bb.m, %bb.g, %bb.c
  %.sroa.0.0 = phi i32 [ %i.l, %bb.c ], [ %i.u, %bb.g ], [ %.sroa.0.1, %bb.x ], [ %i.ac, %bb.m ]
  ret i32 %.sroa.0.0

bb.o:                                             ; preds = %bb.l
  %i.ad = extractvalue { ptr, i64 } %i.ab, 0
  %i.ae = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.39.i11)
  invoke void @_RNvXs7_NtNtCs8Chj7Szqq0n_4core3str7patternINtB5_18MultiCharEqPatternNtB7_12IsWhitespaceENtB5_7Pattern13into_searcherCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull sret([40 x i8]) align 8 %.sroa.39.i11, ptr %i.ad, i64 %i.ae) #26
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.39.i11, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39.i11)
  store i64 0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ae, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  invoke void @_RINvXsf_NtCsbqH9stoieM8_5alloc3vecINtB6_3VeclEINtNtNtNtCs8Chj7Szqq0n_4core4iter6traits7collect12FromIteratorlE9from_iterINtNtNtBP_8adapters10filter_map9FilterMapNtNtNtBR_3str4iter15SplitWhitespaceNCNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6unistd10gethostpids_0EEB3i_(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a) #26
          to label %_RINvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapNtNtNtBc_3str4iter15SplitWhitespaceNCNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6unistd10gethostpids_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsbqH9stoieM8_5alloc3vec3VeclEEB1O_.exit unwind label %.loopexit.split-lp

_RINvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapNtNtNtBc_3str4iter15SplitWhitespaceNCNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6unistd10gethostpids_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsbqH9stoieM8_5alloc3vec3VeclEEB1O_.exit: ; preds = %bb.p
  %i.af = invoke { ptr, i64 } @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE8as_sliceCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.b)
          to label %bb.r unwind label %bb.q       ; 2 uses

bb.q:                                             ; preds = %_RINvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapNtNtNtBc_3str4iter15SplitWhitespaceNCNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6unistd10gethostpids_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsbqH9stoieM8_5alloc3vec3VeclEEB1O_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VeclEECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.b) #29
          to label %bb.h unwind label %bb.y

bb.r:                                             ; preds = %_RINvYINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters10filter_map9FilterMapNtNtNtBc_3str4iter15SplitWhitespaceNCNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6unistd10gethostpids_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCsbqH9stoieM8_5alloc3vec3VeclEEB1O_.exit
  %i.ah = extractvalue { ptr, i64 } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.af, 1      ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 1
  br i1 %i.aj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %trunc = trunc nuw i64 %i.ai to i1
  br i1 %trunc, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ak = load i32, ptr %i.ah, align 4
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.ah, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.am = call i32 @getpid() #31
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.1 = phi i32 [ %i.ak, %bb.t ], [ %i.al, %bb.u ], [ %i.am, %bb.v ]
  invoke void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VeclEECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.b)
          to label %bb.x unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.d)
  br label %bb.n

bb.y:                                             ; preds = %bb.q, %bb.h
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.z:                                             ; preds = %bb.h
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvNtNtNtCs3asqsiKBnrB_18iceoryx2_pal_posix2os5posix6unistd12proc_pidpath(i32 %0, ptr nofree captures(none) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.g, align 4
  %i.h = tail call i32 @getpid() #31
  %i.i = icmp eq i32 %0, %i.h
  br i1 %i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs9_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.2.0..sroa_idx, align 8
  %i.j = call { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKje_Kj1_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull @23, ptr nonnull align 8 %i.b) #26 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 3 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  %.not.i2.i = icmp eq ptr %i.k, null
  %.not.i.i = select i1 %.not.i, i1 true, i1 %.not.i2.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.m, 1
  call void @_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull %i.k, i64 %i.o) #26
  br label %_RNvNtCsbqH9stoieM8_5alloc3fmt6formatCs3asqsiKBnrB_18iceoryx2_pal_posix.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.k, ptr %i.l)
  br label %_RNvNtCsbqH9stoieM8_5alloc3fmt6formatCs3asqsiKBnrB_18iceoryx2_pal_posix.exit

_RNvNtCsbqH9stoieM8_5alloc3fmt6formatCs3asqsiKBnrB_18iceoryx2_pal_posix.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @_RINvMs_NtNtCsbqH9stoieM8_5alloc3ffi5c_strNtB5_7CString3newNtNtB9_6string6StringECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr %i.e, align 8
  %.not.i1 = icmp eq i64 %i.p, -1
  br i1 %.not.i1, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsbqH9stoieM8_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6expectCs3asqsiKBnrB_18iceoryx2_pal_posix.exit, label %bb.e

bb.e:                                             ; preds = %_RNvNtCsbqH9stoieM8_5alloc3fmt6formatCs3asqsiKBnrB_18iceoryx2_pal_posix.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr nonnull @24, i64 22, ptr nonnull %i.a, ptr nonnull align 8 @11, ptr nonnull align 8 @26) #28
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCsbqH9stoieM8_5alloc3ffi5c_str8NulErrorECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.a) #29
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.ab, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsbqH9stoieM8_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6expectCs3asqsiKBnrB_18iceoryx2_pal_posix.exit: ; preds = %_RNvNtCsbqH9stoieM8_5alloc3fmt6formatCs3asqsiKBnrB_18iceoryx2_pal_posix.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load i64, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.w = tail call { ptr, i64 } @_RNvXsw_NtNtCsbqH9stoieM8_5alloc3ffi5c_strNtNtNtCs8Chj7Szqq0n_4core3ffi5c_str4CStrNtNtB9_6borrow7ToOwned8to_owned(ptr nonnull @27, i64 15) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsbqH9stoieM8_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6expectCs3asqsiKBnrB_18iceoryx2_pal_posix.exit
  %.sink3 = phi ptr [ %i.x, %bb.i ], [ %i.t, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsbqH9stoieM8_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6expectCs3asqsiKBnrB_18iceoryx2_pal_posix.exit ]
  %.sink = phi i64 [ %i.y, %bb.i ], [ %i.v, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultNtNtNtCsbqH9stoieM8_5alloc3ffi5c_str7CStringNtBJ_8NulErrorE6expectCs3asqsiKBnrB_18iceoryx2_pal_posix.exit ]
  store ptr %.sink3, ptr %i.f, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink, ptr %i.z, align 8
  %i.aa = invoke { ptr, i64 } @_RNvMs_NtNtCsbqH9stoieM8_5alloc3ffi5c_strNtB4_7CString8as_bytesCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr nonnull align 8 %i.f)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@rmdir

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) unnamed_addr #10

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @fchown(i32, i32, i32) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @getgid() unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @getuid() unnamed_addr #8

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i32 @unlink(ptr noundef readonly captures(none)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @getppid() unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare i64 @sysconf(i32) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare i64 @pathconf(ptr, i32) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @ftruncate(i32, i64) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking19panic_cannot_unwind() unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtNtCsiwABtZfF0jz_4libc4unix10linux_like10CMSG_ALIGN(i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsw_NtNtCs8Chj7Szqq0n_4core3fmt3nummNtB7_8UpperHex3fmt(ptr align 4, ptr align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs7PzxMiRkovh_5gimli(ptr align 8, i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs3_NtNtCs8Chj7Szqq0n_4core3ffi5c_strNtB5_4CStr8from_ptrCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs8Chj7Szqq0n_4core3ffi5c_strNtB5_4CStr6to_str(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsB_NtCsbqH9stoieM8_5alloc6stringeNtB5_8ToString9to_stringCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj38_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_fmtCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr align 8, ptr, ptr) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj36_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj37_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj34_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj35_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj3d_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj3a_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj39_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj3b_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj3c_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj40_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj3e_Kj2_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs8Chj7Szqq0n_4core3fmtNtB6_9Arguments3newKj40_Kj1_ECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvXs_NvMNtCsbqH9stoieM8_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCsbqH9stoieM8_5alloc3strNtNtB7_6string6StringINtNtCs8Chj7Szqq0n_4core6borrow6BorroweE6borrowCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXst_NtNtCs8Chj7Szqq0n_4core3str7patternReNtB5_7Pattern15strip_suffix_ofCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr, i64, ptr, i64) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RINvNtNtCs8Chj7Szqq0n_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3asqsiKBnrB_18iceoryx2_pal_posix(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCscZmzQvjfhHm_14rustc_demangle(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsx_NtNtCs8Chj7Szqq0n_4core3fmt3numlNtB7_8UpperHex3fmt(ptr align 4, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsv_NtNtCs8Chj7Szqq0n_4core3fmt3numlNtB7_8LowerHex3fmt(ptr align 4, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsE_NtNtCs8Chj7Szqq0n_4core3fmt3numyNtB7_8UpperHex3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsC_NtNtCs8Chj7Szqq0n_4core3fmt3numyNtB7_8LowerHex3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs8_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_8UpperHex3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs6_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_8LowerHex3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsr_NtCs8Chj7Szqq0n_4core3fmtSyNtB5_5Debug3fmtCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr align 8, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter14SplitInclusivecENtB11_8LinesMapENtNtNtB9_6traits8iterator8Iterator4nextCs3asqsiKBnrB_18iceoryx2_pal_posix(ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { inlinehint }
attributes #27 = { noinline noreturn }
attributes #28 = { noreturn }
attributes #29 = { cold }
attributes #30 = { cold noreturn nounwind }
attributes #31 = { nounwind }
attributes #32 = { inlinehint noreturn }
attributes #33 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!4 = !{!"address", !"read_provenance"}
!8 = distinct !{!8, i1 false, !"_RNvMNtCs8Chj7Szqq0n_4core3stre5linesCs3asqsiKBnrB_18iceoryx2_pal_posix"}
!9 = distinct !{!9, !8, !"_RNvMNtCs8Chj7Szqq0n_4core3stre5linesCs3asqsiKBnrB_18iceoryx2_pal_posix: argument 0"}
!10 = !{!9}
end_hunk_1
