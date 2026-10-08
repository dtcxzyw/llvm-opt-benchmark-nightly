Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.5?download=true
inline.NumInlined: 112
inline.NumDeleted: 22
begin_hunk_0_@_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiHivYpkJ4Hu_2cc:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.c, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.n = phi i64 [ %.pr, %bb.h ], [ %i.g, %bb.a ]
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %.sroa.2.0..sroa_idx, align 8
  %i.p = invoke { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c)
          to label %bb.c unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.c, %bb.h, %bb.a
  store i64 %2, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtBM_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.d) #23
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.q = extractvalue { i64, ptr } %i.p, 0        ; 4 uses
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.q, ptr %i.k, align 8
  %i.s = icmp ult i64 %i.q, %i.g
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.r)
          to label %bb.h unwind label %.loopexit

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.q, i64 %i.g, ptr nonnull align 8 @3) #26
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.u = icmp eq i64 %.pr, 0
  br i1 %i.u, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.j, %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %bb.b
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.e) #23
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = tail call { i64, ptr } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs3U9i7nQCKwt_15find_msvc_tools(i64 %2, i64 8, i64 48) #22 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  store i64 %i.f, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.m = phi i64 [ %.pr, %bb.h ], [ %i.f, %bb.a ]
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %i.o = invoke { i64, ptr } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB1y_EEENtNtNtB8_6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.c, %bb.h, %bb.a
  store i64 %2, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB1Y_ENtNtBM_5alloc6GlobalEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c) #23
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.p = extractvalue { i64, ptr } %i.o, 0        ; 4 uses
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.p, ptr %i.j, align 8
  %i.r = icmp ult i64 %i.p, %i.f
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvYTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB3_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsiHivYpkJ4Hu_2cc(ptr nonnull sret([48 x i8]) align 8 %i.a, ptr nonnull align 8 %i.q)
          to label %bb.h unwind label %.loopexit

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.p, i64 %i.f, ptr nonnull align 8 @3) #26
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.t = icmp eq i64 %.pr, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %bb.j, %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %bb.b
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringB19_EEECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.d) #23
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs1h_NtCsaL1QbXo9JQH_3std4pathNtB7_4PathNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #1 {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %1, label %.lr.ph.preheader.split.split [
    i64 0, label %._crit_edge
    i64 1, label %._crit_edge.loopexit.peel.begin.thread
    i64 2, label %.lr.ph.peel
  ]

.lr.ph.preheader.split.split:                     ; preds = %.split
  %i.b = add i64 %1, -3
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.split, %bb.s
  %i.c = phi i64 [ 0, %.split ], [ %.sroa.0.1, %bb.s ] ; 4 uses
  %i.d = phi i64 [ 0, %.split ], [ %.sroa.012.2, %bb.s ] ; 3 uses
  %i.e = phi i64 [ 0, %.split ], [ %i.av, %bb.s ] ; 7 uses
  %i.f = add nuw i64 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.a, label %._crit_edge.loopexit.peel.begin

bb.a:                                             ; preds = %.lr.ph.peel
  %i.j = icmp ugt i64 %i.e, %i.c
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.e, %i.c                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.m = add i64 %i.k, %i.d
  %i.n = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics12rotate_rightjECsiHivYpkJ4Hu_2cc(i64 %i.m, i32 2) #27
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %i.l, i64 %i.k) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.012.3.peel50 = phi i64 [ %i.n, %bb.b ], [ %i.d, %bb.a ]
  %i.o = sub nuw i64 %1, %i.f
  %i.p = getelementptr i8, ptr %i.g, i64 1
  %i.q = icmp eq i64 %i.o, 1
  %i.r = load i8, ptr %i.p, align 1
  %i.s = icmp eq i8 %i.r, 46                      ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.g, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 47
  br i1 %i.v, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.023.0.peel51 = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ]
  %i.w = add i64 %.sroa.023.0.peel51, %i.f
  br label %._crit_edge.loopexit.peel.begin

._crit_edge.loopexit.peel.begin:                  ; preds = %.lr.ph.peel, %bb.h
  %.sroa.012.2.peel = phi i64 [ %.sroa.012.3.peel50, %bb.h ], [ %i.d, %.lr.ph.peel ] ; 3 uses
  %.sroa.0.1.peel = phi i64 [ %i.w, %bb.h ], [ %i.c, %.lr.ph.peel ] ; 4 uses
  %i.x = add nuw i64 %i.e, 2                      ; 8 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 47
  br i1 %i.aa, label %bb.i, label %._crit_edge

._crit_edge.loopexit.peel.begin.thread:           ; preds = %.split
  %i.ab = load i8, ptr %0, align 1
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %.thread47, label %._crit_edge

bb.i:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %.not = icmp ult i64 %i.e, %.sroa.0.1.peel
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = sub nuw i64 %i.f, %.sroa.0.1.peel       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1.peel
  %i.af = add i64 %i.ad, %.sroa.012.2.peel
  %i.ag = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics12rotate_rightjECsiHivYpkJ4Hu_2cc(i64 %i.af, i32 2) #27
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %i.ae, i64 %i.ad) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.012.3.peel = phi i64 [ %i.ag, %bb.j ], [ %.sroa.012.2.peel, %bb.i ] ; 6 uses
  %i.ah = sub nuw i64 %1, %i.x
  %i.ai = getelementptr i8, ptr %3, i64 2         ; 2 uses
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not26.peel = icmp eq i64 %1, %i.x
  br i1 %.not26.peel, label %.thread47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread47

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %3, i64 3
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 47
  br i1 %i.ao, label %bb.p, label %.thread47

bb.o:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %i.ai, align 1
  %i.aq = icmp eq i8 %i.ap, 46
  br i1 %i.aq, label %bb.p, label %.thread47

.thread47:                                        ; preds = %._crit_edge.loopexit.peel.begin.thread, %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.012.3.peel44 = phi i64 [ %.sroa.012.3.peel, %bb.o ], [ %.sroa.012.3.peel, %bb.n ], [ %.sroa.012.3.peel, %bb.m ], [ %.sroa.012.3.peel, %bb.l ], [ 0, %._crit_edge.loopexit.peel.begin.thread ]
  %i.ar = phi i64 [ %i.x, %bb.o ], [ %i.x, %bb.n ], [ %i.x, %bb.m ], [ %i.x, %bb.l ], [ 1, %._crit_edge.loopexit.peel.begin.thread ]
  br label %bb.p

bb.p:                                             ; preds = %.thread47, %bb.o, %bb.n
  %.sroa.012.3.peel43 = phi i64 [ %.sroa.012.3.peel, %bb.o ], [ %.sroa.012.3.peel44, %.thread47 ], [ %.sroa.012.3.peel, %bb.n ]
  %i.as = phi i64 [ %i.x, %bb.o ], [ %i.ar, %.thread47 ], [ %i.x, %bb.n ]
  %.sroa.023.0.peel = phi i64 [ 1, %bb.o ], [ 0, %.thread47 ], [ 1, %bb.n ]
  %i.at = add i64 %.sroa.023.0.peel, %i.as
  br label %._crit_edge

._crit_edge:                                      ; preds = %.split, %._crit_edge.loopexit.peel.begin, %bb.p, %._crit_edge.loopexit.peel.begin.thread
  %.sroa.012.0.lcssa = phi i64 [ %1, %.split ], [ %.sroa.012.3.peel43, %bb.p ], [ %.sroa.012.2.peel, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ %1, %.split ], [ %i.at, %bb.p ], [ %.sroa.0.1.peel, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 3 uses
  %i.au = icmp ult i64 %.sroa.0.0.lcssa, %1
  br i1 %i.au, label %bb.r, label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader.split.split, %bb.s
  %.sroa.0.031 = phi i64 [ %.sroa.0.1, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 4 uses
  %.sroa.012.030 = phi i64 [ %.sroa.012.2, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 3 uses
  %.sroa.019.029 = phi i64 [ %i.av, %bb.s ], [ 0, %.lr.ph.preheader.split.split ] ; 5 uses
  %i.av = add nuw i64 %.sroa.019.029, 1           ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.019.029 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 47
  br i1 %i.ay, label %bb.t, label %bb.s

bb.q:                                             ; preds = %._crit_edge, %bb.r
  %.sroa.012.1 = phi i64 [ %i.bc, %bb.r ], [ %.sroa.012.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.012.1, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr nonnull %i.a, i64 8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.r:                                             ; preds = %._crit_edge
  %i.az = sub nuw i64 %1, %.sroa.0.0.lcssa        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.lcssa
  %i.bb = add i64 %i.az, %.sroa.012.0.lcssa
  %i.bc = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics12rotate_rightjECsiHivYpkJ4Hu_2cc(i64 %i.bb, i32 2) #27
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %i.ba, i64 %i.az) #22
  br label %bb.q

bb.s:                                             ; preds = %bb.y, %.lr.ph
  %.sroa.012.2 = phi i64 [ %.sroa.012.3, %bb.y ], [ %.sroa.012.030, %.lr.ph ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.bn, %bb.y ], [ %.sroa.0.031, %.lr.ph ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.019.029, %i.b
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !4

bb.t:                                             ; preds = %.lr.ph
  %i.bd = icmp ugt i64 %.sroa.019.029, %.sroa.0.031
  br i1 %i.bd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.v
  %.sroa.012.3 = phi i64 [ %i.bm, %bb.v ], [ %.sroa.012.030, %bb.t ]
  %i.be = sub nuw i64 %1, %i.av
  %i.bf = getelementptr i8, ptr %i.aw, i64 1
  %i.bg = icmp eq i64 %i.be, 1
  %i.bh = load i8, ptr %i.bf, align 1
  %i.bi = icmp eq i8 %i.bh, 46                    ; 2 uses
  br i1 %i.bg, label %bb.w, label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bj = sub nuw i64 %.sroa.019.029, %.sroa.0.031 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.031
  %i.bl = add i64 %i.bj, %.sroa.012.030
  %i.bm = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics12rotate_rightjECsiHivYpkJ4Hu_2cc(i64 %i.bl, i32 2) #27
  tail call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %i.bk, i64 %i.bj) #22
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  br i1 %i.bi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.z, %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.w, %bb.x
  %.sroa.023.0 = phi i64 [ 1, %bb.w ], [ 0, %bb.x ], [ 1, %bb.aa ]
  %i.bn = add i64 %.sroa.023.0, %i.av
  br label %bb.s

bb.z:                                             ; preds = %bb.u
  br i1 %i.bi, label %bb.aa, label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr i8, ptr %i.aw, i64 2
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = icmp eq i8 %i.bp, 47
  br i1 %i.bq, label %bb.y, label %bb.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1G_8for_each4callBT_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB32_3VecBT_E14extend_trustedBE_E0E0ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 6, ptr %i.d, align 8
  invoke void @_RINvXs_NtNtCs3oUPovFnLWP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEE8try_folduNCINvMNtB7_9try_traitINtB4y_17NeverShortCircuituE10wrap_mut_2uB3y_NCINvNvB10_8for_each4callB3y_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtB20_8IntoIterB3y_Kj6_EE0E0E0B4N_E0B4N_ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, i8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = invoke i8 @_RINvXs_NtNtCs3oUPovFnLWP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldhNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitbEE8try_foldhNCINvMNtB7_9try_traitINtB3R_17NeverShortCircuithE10wrap_mut_2hbNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtB9_3str4iterNtB5t_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB6l_3Sum3sumINtB4R_3MapINtB20_8IntoIterbKj20_EB5o_EE0E0E0B46_E0B46_ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, i8 %1, ptr nonnull %i.a, i64 32)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterbKj20_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterbKj20_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret i8 %i.b

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXsL_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB6_5OsStrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtNtBa_4hash6random13DefaultHasherECsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr nonnull %i.a, i64 8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %0, i64 %1) #22
  ret void
}

; Function Attrs: nonlazybind uwtable
define i8 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1A_12try_for_each4callNtBY_9ComponentINtNtNtBb_3ops12control_flow11ControlFlowIB32_uNtNtBb_3cmp8OrderingEENCINvNvB1C_12iter_compare7compareBM_B2M_uNCINvNvB1A_5eq_by7compareB2M_B2M_NCINvYBM_B1A_2eqBM_E0E0E0E0B31_ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCsaL1QbXo9JQH_3std4path9ComponentINtNtNtBe_3ops12control_flow11ControlFlowIB1W_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevNtB1m_10ComponentsEB1k_uNCINvNvB6_5eq_by7compareB1k_B1k_NCINvYB3y_B6_2eqB3y_E0E0E0E0CsiHivYpkJ4Hu_2cc.exit.i, %bb.a
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr nonnull sret([56 x i8]) align 8 %i.d, ptr align 8 %0)
  %i.f = load i8, ptr %i.d, align 8
  %.not.i = icmp eq i8 %i.f, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr nonnull sret([56 x i8]) align 8 %i.b, ptr align 8 %1)
  %i.g = load i8, ptr %i.b, align 8
  %.not.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCsaL1QbXo9JQH_3std4path9ComponentINtNtNtBe_3ops12control_flow11ControlFlowIB1W_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevNtB1m_10ComponentsEB1k_uNCINvNvB6_5eq_by7compareB1k_B1k_NCINvYB3y_B6_2eqB3y_E0E0E0E0CsiHivYpkJ4Hu_2cc.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.h = call zeroext i1 @_RNCINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBc_6traits8iterator8Iterator2eqB5_E0CsiHivYpkJ4Hu_2cc(ptr nonnull readnone poison, ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %..i.i.i = select i1 %i.h, i8 2, i8 -2
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCsaL1QbXo9JQH_3std4path9ComponentINtNtNtBe_3ops12control_flow11ControlFlowIB1W_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevNtB1m_10ComponentsEB1k_uNCINvNvB6_5eq_by7compareB1k_B1k_NCINvYB3y_B6_2eqB3y_E0E0E0E0CsiHivYpkJ4Hu_2cc.exit.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCsaL1QbXo9JQH_3std4path9ComponentINtNtNtBe_3ops12control_flow11ControlFlowIB1W_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevNtB1m_10ComponentsEB1k_uNCINvNvB6_5eq_by7compareB1k_B1k_NCINvYB3y_B6_2eqB3y_E0E0E0E0CsiHivYpkJ4Hu_2cc.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ 1, %bb.c ], [ %..i.i.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = call i8 @_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowIBI_uNtNtB6_3cmp8OrderingEENtNtB4_9try_trait3Try6branchCsiHivYpkJ4Hu_2cc(i8 %.sroa.0.0.i.i.i) #22 ; 2 uses
  %.not4.i = icmp eq i8 %i.i, 2
  br i1 %.not4.i, label %bb.b, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = call i8 @_RNvXNtNtCs3oUPovFnLWP_4core3ops12control_flowINtB2_11ControlFlowIBI_uNtNtB6_3cmp8OrderingEENtNtB4_9try_trait3Try11from_outputCsiHivYpkJ4Hu_2cc() #22
  br label %_RINvYNtNtCsaL1QbXo9JQH_3std4path10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBK_8iterator8Iterator12try_for_each4callNtB5_9ComponentINtNtNtBO_3ops12control_flow11ControlFlowIB38_uNtNtBO_3cmp8OrderingEENCINvNvB2c_12iter_compare7compareINtNtNtBM_8adapters3rev3RevB3_EB2S_uNCINvNvB2a_5eq_by7compareB2S_B2S_NCINvYB4L_B2a_2eqB4L_E0E0E0E0B37_ECsiHivYpkJ4Hu_2cc.exit

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCsaL1QbXo9JQH_3std4path9ComponentINtNtNtBe_3ops12control_flow11ControlFlowIB1W_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevNtB1m_10ComponentsEB1k_uNCINvNvB6_5eq_by7compareB1k_B1k_NCINvYB3y_B6_2eqB3y_E0E0E0E0CsiHivYpkJ4Hu_2cc.exit.i
  %i.k = call i8 @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowIBK_uNtNtB8_3cmp8OrderingEEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCsiHivYpkJ4Hu_2cc(i8 %i.i) #22
  br label %_RINvYNtNtCsaL1QbXo9JQH_3std4path10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBK_8iterator8Iterator12try_for_each4callNtB5_9ComponentINtNtNtBO_3ops12control_flow11ControlFlowIB38_uNtNtBO_3cmp8OrderingEENCINvNvB2c_12iter_compare7compareINtNtNtBM_8adapters3rev3RevB3_EB2S_uNCINvNvB2a_5eq_by7compareB2S_B2S_NCINvYB4L_B2a_2eqB4L_E0E0E0E0B37_ECsiHivYpkJ4Hu_2cc.exit

_RINvYNtNtCsaL1QbXo9JQH_3std4path10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBK_8iterator8Iterator12try_for_each4callNtB5_9ComponentINtNtNtBO_3ops12control_flow11ControlFlowIB38_uNtNtBO_3cmp8OrderingEENCINvNvB2c_12iter_compare7compareINtNtNtBM_8adapters3rev3RevB3_EB2S_uNCINvNvB2a_5eq_by7compareB2S_B2S_NCINvYB4L_B2a_2eqB4L_E0E0E0E0B37_ECsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i8 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_ENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2x_3VecBN_E14extend_trustedB3_E0ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 6, ptr %i.d, align 8
  invoke void @_RINvXs_NtNtCs3oUPovFnLWP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEE8try_folduNCINvMNtB7_9try_traitINtB4y_17NeverShortCircuituE10wrap_mut_2uB3y_NCINvNvB10_8for_each4callB3y_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtB20_8IntoIterB3y_Kj6_EE0E0E0B4N_E0B4N_ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1G_8for_each4callBT_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB32_3VecBT_E14extend_trustedBE_E0E0ECsiHivYpkJ4Hu_2cc.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0) #23
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB1G_8for_each4callBT_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB32_3VecBT_E14extend_trustedBE_E0E0ECsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i8 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1A_12try_for_each4callNtBY_9ComponentINtNtNtBb_3ops12control_flow11ControlFlowIB32_uNtNtBb_3cmp8OrderingEENCINvNvB1C_12iter_compare7compareBM_B2M_uNCINvNvB1A_5eq_by7compareB2M_B2M_NCINvYBM_B1A_2eqBM_E0E0E0E0B31_ECsiHivYpkJ4Hu_2cc(ptr align 8 %0, ptr align 8 %1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 3 uses
  %i.c = alloca [64 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = call i8 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB5_3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1A_12try_for_each4callNtBY_9ComponentINtNtNtBb_3ops12control_flow11ControlFlowIB32_uNtNtBb_3cmp8OrderingEENCINvNvB1C_12iter_compare7compareBM_B2M_uNCINvNvB1A_5eq_by7compareB2M_B2M_NCINvYBM_B1A_2eqBM_E0E0E0E0B31_ECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.b) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.d, 2
  br i1 %.not.i.i.i, label %bb.b, label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsiHivYpkJ4Hu_2cc.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsj_NtCsaL1QbXo9JQH_3std4pathNtB5_10ComponentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr nonnull sret([56 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  %i.e = load i8, ptr %i.a, align 8
  %.not4.i.i.i = icmp ne i8 %i.e, -1
  %..i.i.i = sext i1 %.not4.i.i.i to i8
  br label %_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsiHivYpkJ4Hu_2cc.exit

_RINvXNtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCsaL1QbXo9JQH_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i8 [ %..i.i.i, %bb.b ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = icmp eq i8 %.sroa.0.0.i.i.i, 0
end_hunk_0
