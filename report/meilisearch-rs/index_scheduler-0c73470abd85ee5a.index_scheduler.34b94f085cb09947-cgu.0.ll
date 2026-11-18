Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57303
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17h7336790a46e1228dE":bb.a

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.m = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38433
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !38433
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !38433
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.q, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !38433
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !38433
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.s, i64 568
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !38433
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.t, i64 664
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !38433
  %i.u = add nuw nsw i64 %i.m, 8
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.v, i64 760
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !38433
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2980ce4812568afcE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod21 = icmp samesign ult i64 %.sroa.7.013, 3
  call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.w = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.x = add nuw nsw i64 %i.w, 1
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.w
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !38433
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h2980ce4812568afcE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !38429

_ZN4core4iter6traits8iterator8Iterator7collect17h2980ce4812568afcE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.j, ptr %.sroa.0.014, align 8
  %i.z = icmp eq ptr %i.f, %i.d
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h2980ce4812568afcE.exit, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %i.a, i64 504, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17h7ce152a6f7bb2354E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !38463 {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, i8 0, i64 504, i1 false)
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !216

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #78
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 3
  %.idx = sub nuw nsw i64 512, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4core4iter6traits8iterator8Iterator7collect17h3eb9ff489814ab77E.exit
  %.sroa.0.014 = phi ptr [ %i.f, %_ZN4core4iter6traits8iterator8Iterator7collect17h3eb9ff489814ab77E.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.7.013 = phi i64 [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17h3eb9ff489814ab77E.exit ], [ 0, %bb.c ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.7.013, 1
  %i.h = shl nuw i64 1, %.sroa.7.013              ; 2 uses
  %i.i = shl i64 104, %.sroa.7.013                ; 2 uses
  %exitcond = icmp eq i64 %.sroa.7.013, 57
  br i1 %exitcond, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !194

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !38464
  %i.j = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #77, !noalias !38464 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.h, 7
  %i.l = icmp samesign ult i64 %.sroa.7.013, 3
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, %.lr.ph
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78, !noalias !38465
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.m = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38466
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !38466
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !38466
  %i.q = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.q, i64 408
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !38466
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !38466
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.s, i64 616
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !38466
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.t, i64 720
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !38466
  %i.u = add nuw nsw i64 %i.m, 8
  %i.v = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.v, i64 824
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !38466
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h3eb9ff489814ab77E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod21 = icmp samesign ult i64 %.sroa.7.013, 3
  call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.w = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.x = add nuw nsw i64 %i.w, 1
  %i.y = getelementptr inbounds nuw [104 x i8], ptr %i.j, i64 %i.w
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !38466
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h3eb9ff489814ab77E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !38462

_ZN4core4iter6traits8iterator8Iterator7collect17h3eb9ff489814ab77E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.j, ptr %.sroa.0.014, align 8
  %i.z = icmp eq ptr %i.f, %i.d
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3eb9ff489814ab77E.exit, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %i.a, i64 504, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17ha676df09c36b158dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !38495 {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, i8 0, i64 504, i1 false)
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !216

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #78
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 3
  %.idx = sub nuw nsw i64 512, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4core4iter6traits8iterator8Iterator7collect17hdf1bf04b434796a0E.exit
  %.sroa.0.014 = phi ptr [ %i.f, %_ZN4core4iter6traits8iterator8Iterator7collect17hdf1bf04b434796a0E.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.7.013 = phi i64 [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17hdf1bf04b434796a0E.exit ], [ 0, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.7.013, 1
  %i.h = shl nuw i64 1, %.sroa.7.013              ; 3 uses
  %exitcond = icmp eq i64 %.sroa.7.013, 63
  br i1 %exitcond, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !194

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !38496
  %i.i = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 1) #77, !noalias !38496 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %_ZN4core4iter6traits8iterator8Iterator7collect17hdf1bf04b434796a0E.exit

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, %.lr.ph
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78, !noalias !38497
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hdf1bf04b434796a0E.exit: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 0, i64 %i.h, i1 false), !noalias !38498
  store ptr %i.i, ptr %.sroa.0.014, align 8
  %i.k = icmp eq ptr %i.f, %i.d
  br i1 %i.k, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hdf1bf04b434796a0E.exit, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %i.a, i64 504, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17hc9b0ae745e8763a3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !38528 {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, i8 0, i64 504, i1 false)
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !216

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #78
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 3
  %.idx = sub nuw nsw i64 512, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4core4iter6traits8iterator8Iterator7collect17h28e927169702f42eE.exit
  %.sroa.0.014 = phi ptr [ %i.f, %_ZN4core4iter6traits8iterator8Iterator7collect17h28e927169702f42eE.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.7.013 = phi i64 [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17h28e927169702f42eE.exit ], [ 0, %bb.c ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.7.013, 1
  %i.h = shl nuw i64 1, %.sroa.7.013              ; 2 uses
  %i.i = shl i64 64, %.sroa.7.013                 ; 2 uses
  %exitcond = icmp eq i64 %.sroa.7.013, 57
  br i1 %exitcond, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !194

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !38529
  %i.j = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #77, !noalias !38529 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.h, 7
  %i.l = icmp samesign ult i64 %.sroa.7.013, 3
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, %.lr.ph
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78, !noalias !38530
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.m = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38531
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !38531
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !38531
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !38531
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !38531
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.s, i64 376
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !38531
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.t, i64 440
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !38531
  %i.u = add nuw nsw i64 %i.m, 8
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.v, i64 504
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !38531
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4core4iter6traits8iterator8Iterator7collect17h28e927169702f42eE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod21 = icmp samesign ult i64 %.sroa.7.013, 3
  call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.w = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.x = add nuw nsw i64 %i.w, 1
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.w
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !38531
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator7collect17h28e927169702f42eE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !38527

_ZN4core4iter6traits8iterator8Iterator7collect17h28e927169702f42eE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.z = icmp samesign ult i64 %.sroa.7.013, 57
  call void @llvm.assume(i1 %i.z)
  store ptr %i.j, ptr %.sroa.0.014, align 8
  %i.aa = icmp eq ptr %i.f, %i.d
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h28e927169702f42eE.exit, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(504) %i.a, i64 504, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12thread_local20ThreadLocal$LT$T$GT$13with_capacity17hecca91b5bcdeed28E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(512) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !38561 {
bb.a:
  %i.a = alloca [504 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, i8 0, i64 504, i1 false)
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !216

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef 64, i64 noundef 63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @473) #78
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 3
  %.idx = sub nuw nsw i64 512, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4core4iter6traits8iterator8Iterator7collect17h83944a219d16fb9bE.exit
  %.sroa.0.014 = phi ptr [ %i.f, %_ZN4core4iter6traits8iterator8Iterator7collect17h83944a219d16fb9bE.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.7.013 = phi i64 [ %i.g, %_ZN4core4iter6traits8iterator8Iterator7collect17h83944a219d16fb9bE.exit ], [ 0, %bb.c ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.7.013, 1
  %i.h = shl nuw i64 1, %.sroa.7.013              ; 2 uses
  %i.i = shl i64 144, %.sroa.7.013                ; 2 uses
  %exitcond = icmp eq i64 %.sroa.7.013, 56
  br i1 %exitcond, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !194

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !38562
  %i.j = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #77, !noalias !38562 ; 11 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.h, 7
  %i.l = icmp samesign ult i64 %.sroa.7.013, 3
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.h, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, %.lr.ph
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2107) #78, !noalias !38563
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.m = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store i8 0, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !38564
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %i.j, i64 %i.m
end_hunk_0
