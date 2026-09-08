Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/insta-7da102944296d43e.insta.f5d9918fc0a28c4d-cgu.02?download=true
inline.NumInlined: 482
inline.NumDeleted: 299
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCsl6EuCK7xub1_5insta:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !517
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !516, !noalias !518, !noundef !4
  call void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutTjjEmNtB1h_14LeafOrInternalE11search_treeB1x_ECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.g, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !517
  %i.j = load i64, ptr %i.a, align 8, !range !5, !noalias !517, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.16.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !noalias !516
  %.sroa.16.24.copyload = load i64, ptr %.sroa.16.24..sroa_idx, align 8, !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !517
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.sroa.13.8.copyload8 = load ptr, ptr %.sroa.16.24..sroa_idx, align 8, !noalias !516
  %i.n = load <2 x i64>, ptr %i.l, align 8, !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store <2 x i64> %i.n, ptr %i.e, align 16
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.13.8.copyload8, ptr %.sroa.13.8..sroa_idx, align 16
  %.sroa.15.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %0, ptr %.sroa.15.8..sroa_idx, align 8
  %i.o = call noundef i32 @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryTjjEmE6insertCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.16.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.16.24.copyload, %bb.c ]
  %i.p = phi <2 x ptr> [ <ptr null, ptr undef>, %bb.a ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store <2 x ptr> %i.p, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.16.0.ph, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjjEmE12insert_entryCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, i32 noundef %3)
  %i.q = call noundef nonnull align 4 ptr @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryTjjEmE8into_mutCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.3.0 = phi i32 [ %i.o, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.e ]
  %i.r = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.s = insertvalue { i32, i32 } %i.r, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapjNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlE6insertB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8, !noalias !523
  %i.h = load ptr, ptr %1, align 8, !alias.scope !522, !noalias !524, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !523
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !522, !noalias !524, !noundef !4
  invoke void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutjNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlNtB1h_14LeafOrInternalE11search_treejEB1I_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.h, i64 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !range !5, !noalias !523, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.138.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %.sroa.11.16.copyload = load ptr, ptr %i.m, align 8, !noalias !522
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !522
  %.sroa.138.16.copyload = load ptr, ptr %.sroa.138.16..sroa_idx, align 8, !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !523
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %.sroa.7.8.copyload3 = load i64, ptr %i.m, align 8, !noalias !522
  %.sroa.11.8.copyload5 = load ptr, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !522
  %.sroa.13.8.copyload7 = load i64, ptr %.sroa.138.16..sroa_idx, align 8, !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.7.8.copyload3, ptr %i.g, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.11.8.copyload5, ptr %.sroa.11.8..sroa_idx, align 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.13.8.copyload7, ptr %.sroa.13.8..sroa_idx, align 8
  %.sroa.138.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %1, ptr %.sroa.138.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlE6insertB1v_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.138.0.ph = phi ptr [ undef, %bb.a ], [ %.sroa.138.16.copyload, %bb.c ]
  %.sroa.13.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.13.16.copyload, %bb.c ]
  %.sroa.11.0.ph = phi ptr [ null, %bb.a ], [ %.sroa.11.16.copyload, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.11.0.ph, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.13.0.ph, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.138.0.ph, ptr %.sroa.138.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryjNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlE12insert_entryB1t_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  %i.n = call noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryjNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlE8into_mutB1v_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret void

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.h:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsl6EuCK7xub1_5insta7content4yaml8vendored4yaml4YamlEBL_(ptr noalias noundef align 8 dereferenceable(32) %3) #20
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMsr_NtCs4NRVxsYgnAr_4core3numx16from_ascii_radix(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 1, -9223372036854775808) %2) unnamed_addr #5 {
bb.a:
  %cond = icmp eq i64 %2, 1
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  br i1 %cond, label %bb.c, label %thread-pre-split

bb.b:                                             ; preds = %.loopexit112, %bb.t, %bb.u, %bb.n, %bb.w, %bb.l, %bb.k, %.loopexit117, %bb.d, %.loopexit
  %.sink = phi i8 [ 1, %.loopexit112 ], [ 1, %bb.t ], [ 1, %bb.u ], [ 1, %bb.n ], [ 1, %bb.w ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %.loopexit117 ], [ 1, %bb.d ], [ 0, %.loopexit ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.o [
    i8 43, label %bb.d
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.b, align 1
  br label %bb.b

thread-pre-split:                                 ; preds = %bb.a
  switch i8 %i.a, label %bb.o [
    i8 43, label %bb.e
    i8 45, label %bb.f
  ]

bb.e:                                             ; preds = %thread-pre-split
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = add nsw i64 %2, -1
  br label %bb.o

bb.f:                                             ; preds = %thread-pre-split
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.f = add nsw i64 %2, -1                       ; 3 uses
  %i.g = icmp samesign ult i64 %2, 17
  br i1 %i.g, label %.preheader113, label %.lr.ph

.preheader113:                                    ; preds = %bb.f
  %.not102136 = icmp eq i64 %i.f, 0
  br i1 %.not102136, label %.loopexit, label %.lr.ph140

.loopexit:                                        ; preds = %bb.j, %bb.m, %bb.s, %bb.v, %.preheader113, %.preheader
  %.sroa.084.1 = phi i64 [ %i.ai, %bb.m ], [ %i.bl, %bb.v ], [ %i.ba, %bb.s ], [ 0, %.preheader ], [ 0, %.preheader113 ], [ %i.x, %bb.j ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.084.1, ptr %i.h, align 8
  br label %bb.b

.lr.ph:                                           ; preds = %bb.f, %bb.j
  %.sroa.0.1135 = phi ptr [ %i.i, %bb.j ], [ %i.e, %bb.f ] ; 2 uses
  %.sroa.26.1134 = phi i64 [ %i.j, %bb.j ], [ %i.f, %bb.f ]
  %.sroa.084.0133 = phi i64 [ %i.x, %bb.j ], [ 0, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1135, i64 1
  %i.j = add nsw i64 %.sroa.26.1134, -1           ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0133, i64 10) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0
  %i.m = extractvalue { i64, i1 } %i.k, 1
  %i.n = load i8, ptr %.sroa.0.1135, align 1, !noundef !4 ; 2 uses
  br i1 %i.m, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %.lr.ph
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -48                    ; 2 uses
  %i.q = icmp ult i32 %i.p, 10
  br i1 %i.q, label %bb.i, label %.loopexit117

bb.h:                                             ; preds = %.lr.ph
  %i.r = add i8 %i.n, -48
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %bb.l, label %.loopexit117

bb.i:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.p to i64
  %i.u = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.l, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %bb.k, label %bb.j, !prof !9

.loopexit117:                                     ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  br label %bb.b

bb.j:                                             ; preds = %bb.i
  %i.x = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.y, align 1
  br label %bb.b

bb.l:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.z, align 1
  br label %bb.b

.lr.ph140:                                        ; preds = %.preheader113, %bb.m
  %.sroa.0.2139 = phi ptr [ %i.ag, %bb.m ], [ %i.e, %.preheader113 ] ; 2 uses
  %.sroa.26.2138 = phi i64 [ %i.af, %bb.m ], [ %i.f, %.preheader113 ]
  %.sroa.084.2137 = phi i64 [ %i.ai, %bb.m ], [ 0, %.preheader113 ]
  %i.aa = load i8, ptr %.sroa.0.2139, align 1, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph140
  %i.ae = mul i64 %.sroa.084.2137, 10
  %i.af = add nsw i64 %.sroa.26.2138, -1          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.2139, i64 1
  %i.ah = zext nneg i32 %i.ac to i64
  %i.ai = sub i64 %i.ae, %i.ah                    ; 2 uses
  %.not102 = icmp eq i64 %i.af, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph140

bb.n:                                             ; preds = %.lr.ph140
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aj, align 1
  br label %bb.b

bb.o:                                             ; preds = %bb.c, %bb.e, %thread-pre-split
  %.sroa.26.0 = phi i64 [ %i.d, %bb.e ], [ %2, %thread-pre-split ], [ %2, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.c, %bb.e ], [ %1, %thread-pre-split ], [ %1, %bb.c ] ; 2 uses
  %i.ak = icmp samesign ult i64 %.sroa.26.0, 16
  br i1 %i.ak, label %.preheader, label %.preheader110

.preheader:                                       ; preds = %bb.o
  %.not104145 = icmp eq i64 %.sroa.26.0, 0
  br i1 %.not104145, label %.loopexit, label %.lr.ph149

.preheader110:                                    ; preds = %bb.o, %bb.s
  %.sroa.0.3144 = phi ptr [ %i.al, %bb.s ], [ %.sroa.0.0, %bb.o ] ; 2 uses
  %.sroa.26.3143 = phi i64 [ %i.am, %bb.s ], [ %.sroa.26.0, %bb.o ]
  %.sroa.084.3142 = phi i64 [ %i.ba, %bb.s ], [ 0, %bb.o ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.3144, i64 1
  %i.am = add nsw i64 %.sroa.26.3143, -1          ; 2 uses
  %i.an = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3142, i64 10) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 0
  %i.ap = extractvalue { i64, i1 } %i.an, 1
  %i.aq = load i8, ptr %.sroa.0.3144, align 1, !noundef !4 ; 2 uses
  br i1 %i.ap, label %bb.q, label %bb.p, !prof !9

bb.p:                                             ; preds = %.preheader110
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.r, label %.loopexit112

bb.q:                                             ; preds = %.preheader110
  %i.au = add i8 %i.aq, -48
  %i.av = icmp ult i8 %i.au, 10
  br i1 %i.av, label %bb.u, label %.loopexit112

bb.r:                                             ; preds = %bb.p
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ao, i64 %i.aw) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  br i1 %i.ay, label %bb.t, label %bb.s, !prof !9

.loopexit112:                                     ; preds = %bb.p, %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.az, align 1
  br label %bb.b

bb.s:                                             ; preds = %bb.r
  %i.ba = extractvalue { i64, i1 } %i.ax, 0       ; 2 uses
  %.not103 = icmp eq i64 %i.am, 0
  br i1 %.not103, label %.loopexit, label %.preheader110

bb.t:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.bb, align 1
  br label %bb.b

bb.u:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.bc, align 1
  br label %bb.b

.lr.ph149:                                        ; preds = %.preheader, %bb.v
  %.sroa.0.4148 = phi ptr [ %i.bj, %bb.v ], [ %.sroa.0.0, %.preheader ] ; 2 uses
  %.sroa.26.4147 = phi i64 [ %i.bi, %bb.v ], [ %.sroa.26.0, %.preheader ]
  %.sroa.084.4146 = phi i64 [ %i.bl, %bb.v ], [ 0, %.preheader ]
  %i.bd = load i8, ptr %.sroa.0.4148, align 1, !noundef !4
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 10
  br i1 %i.bg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph149
  %i.bh = mul i64 %.sroa.084.4146, 10
  %i.bi = add nsw i64 %.sroa.26.4147, -1          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.4148, i64 1
  %i.bk = zext nneg i32 %i.bf to i64
  %i.bl = add i64 %i.bh, %i.bk                    ; 2 uses
  %.not104 = icmp eq i64 %i.bi, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph149

bb.w:                                             ; preds = %.lr.ph149
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bm, align 1
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringINtNtBb_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE10dying_nextCsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringINtNtBb_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE10take_frontCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !536, !noundef !4
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringINtNtBc_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE16deallocating_endNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBc_6string6StringINtNtBc_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufENtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringINtNtBc_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE16deallocating_endNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta.exit

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringINtNtBc_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE16deallocating_endNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringINtNtBb_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE10init_frontCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !537 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !538
  invoke void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBc_6string6StringINtNtBc_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufENtB1y_4LeafENtB1y_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !539

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !538, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringINtNtBc_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta.exit, !prof !9

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21
          to label %.noexc1.i.i unwind label %bb.g, !noalias !540

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !537
  unreachable

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringINtNtBc_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringINtNtBc_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta.exit, %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringINtNtBc_4sync3ArcNtNtCs2AWtUsOyxgP_3std4path7PathBufEE16deallocating_endNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10dying_nextCsl6EuCK7xub1_5insta(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10take_frontCsl6EuCK7xub1_5insta(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !552, !noundef !4
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECsl6EuCK7xub1_5insta.exit

end_hunk_0
