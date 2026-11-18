Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 286
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNCNvMNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providersNtB4_19ObjectStoreRegistry11build_store0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.db = icmp eq i64 %.val.i.i, 0
  br i1 %i.db, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %.noexc28
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !144623, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !144623
  br label %.critedge

.critedge:                                        ; preds = %.noexc28, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !144624)
  call void @llvm.experimental.noalias.scope.decl(metadata !144625)
  call void @llvm.experimental.noalias.scope.decl(metadata !144626)
  %i.dc = load ptr, ptr %.sroa.548.0..sroa_idx, align 8, !alias.scope !144627, !nonnull !411, !noundef !411
  %i.dd = atomicrmw add ptr %i.dc, i64 -1 release, align 8, !noalias !144627
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ae, label %.critedge12

bb.ae:                                            ; preds = %.critedge
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store7IoStatsEE9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.548.0..sroa_idx)
          to label %.critedge12 unwind label %bb.aa

.critedge13:                                      ; preds = %bb.v, %bb.d, %bb.h, %bb.n, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.af, %.critedge12
  %.sroa.9.2 = phi ptr [ %.sroa.9.0, %bb.n ], [ %.sroa.9.0, %bb.af ], [ %.sroa.9.0, %.critedge12 ], [ %.sroa.9.0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %.sroa.9.0, %bb.h ], [ %.sroa.9.0.copyload, %bb.d ], [ %.sroa.9.0, %bb.v ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.067, %bb.n ], [ %.sroa.0.067, %bb.af ], [ %.sroa.0.067, %.critedge12 ], [ %.sroa.0.067, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %.sroa.0.067, %bb.h ], [ %.sroa.0.0.copyload, %bb.d ], [ %.sroa.0.067, %bb.v ] ; 2 uses
  %.pn7.pn = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.cg, %bb.af ], [ %i.cg, %.critedge12 ], [ %i.av, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.ai, %bb.h ], [ %i.ad, %bb.d ], [ %i.cq, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 193 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !range !423, !noundef !411
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = icmp ne i64 %.sroa.0.2, 0
  %or.cond.not = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond.not, label %bb.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsfR8GmIBoxTX_21lance_namespace_impls.exit

.critedge12:                                      ; preds = %bb.ae, %.critedge
  call void @llvm.experimental.noalias.scope.decl(metadata !144628)
  call void @llvm.experimental.noalias.scope.decl(metadata !144629)
  %.val.i.i30 = load i64, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !range !414, !alias.scope !144630, !noundef !411 ; 2 uses
  %i.dj = icmp eq i64 %.val.i.i30, 0
  br i1 %i.dj, label %.critedge13, label %bb.af

bb.af:                                            ; preds = %.critedge12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i.i31 = load ptr, ptr %i.dk, align 8, !alias.scope !144630, !nonnull !411, !noundef !411
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i31, i64 noundef %.val.i.i30, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !144630
  br label %.critedge13

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.351, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.sroa.3, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.456, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 193
  store i8 0, ptr %i.dl, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144631)
  call void @llvm.experimental.noalias.scope.decl(metadata !144632)
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !144633, !nonnull !411, !noundef !411
  %i.do = atomicrmw add ptr %i.dn, i64 -1 release, align 8, !noalias !144633
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ah, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dm)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.z

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.aj, %.critedge13
  store i8 0, ptr %i.df, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144634)
  call void @llvm.experimental.noalias.scope.decl(metadata !144635)
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !144636, !nonnull !411, !noundef !411
  %i.ds = atomicrmw add ptr %i.dr, i64 -1 release, align 8, !noalias !144636
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit36

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsfR8GmIBoxTX_21lance_namespace_impls.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit36 unwind label %bb.aa

bb.aj:                                            ; preds = %.critedge13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.2) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.2, i64 noundef %.sroa.0.2, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !144637
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsfR8GmIBoxTX_21lance_namespace_impls.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtB4_15RemovalNotifierNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB16_16CachedReaderDataE6notify0CsfR8GmIBoxTX_21lance_namespace_impls(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !144675 {
bb.a:
  %.sroa.657 = alloca ptr, align 8                ; 6 uses
  %.sroa.958 = alloca ptr, align 8                ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !range !476, !noundef !411
  switch i8 %i.d, label %default.unreachable75 [
    i8 0, label %bb.c
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.b
  ]

default.unreachable75:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i.i.pre = load ptr, ptr %0, align 8, !alias.scope !144676
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !144676
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 59 ; 2 uses
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !411, !align !412, !noundef !411 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.e, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !411, !noundef !411
  store ptr %i.l, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.f, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !411, !noundef !411
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !411
  store ptr %i.n, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.t = load i8, ptr %i.s, align 4, !range !476, !noundef !411
  store i8 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.v = load atomic i8, ptr %i.u acquire, align 8
  %.not64 = icmp eq i8 %i.v, 0
  br i1 %.not64, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.h, align 8, !nonnull !411, !align !412, !noundef !411 ; 2 uses
  store i8 0, ptr %i.e, align 2
  store i8 0, ptr %i.f, align 1
  %i.x = load ptr, ptr %i.b, align 8, !nonnull !411, !noundef !411
  %i.y = load ptr, ptr %i.a, align 8, !nonnull !411, !noundef !411
  %i.z = load i64, ptr %i.q, align 8, !noundef !411
  %i.aa = load i8, ptr %i.r, align 8, !range !476, !noalias !144677, !noundef !411
  %i.ab = load ptr, ptr %i.w, align 8, !noalias !144677, !nonnull !411, !noundef !411
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !144677, !nonnull !411, !align !412, !noundef !411
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !411, !noalias !144677, !nonnull !411
  %i.ag = invoke { ptr, ptr } %i.af(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 noundef %i.z, i8 noundef %i.aa)
          to label %bb.h unwind label %bb.e, !noalias !144678, !inline_history !144647 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ai)
          to label %bb.i unwind label %bb.f, !noalias !144678 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #74, !noalias !144678
  unreachable

bb.g:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !range !423, !noundef !411
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.h:                                             ; preds = %bb.d
  %i.ao = extractvalue { ptr, ptr } %i.ag, 0      ; 4 uses
  %i.ap = extractvalue { ptr, ptr } %i.ag, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  store i8 0, ptr %i.g, align 1
  store ptr %i.ao, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

.body34:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37, %bb.ad, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.y
  %.pn8.pn = phi { ptr, i32 } [ %i.cg, %bb.y ], [ %i.cy, %bb.ad ], [ %i.cy, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37 ], [ %i.cg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.as = load i8, ptr %i.ar, align 1, !range !423, !noundef !411
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ak, label %.body

bb.i:                                             ; preds = %bb.e
  %i.au = extractvalue { ptr, ptr } %i.aj, 0      ; 4 uses
  %i.av = extractvalue { ptr, ptr } %i.aj, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.aw = load ptr, ptr %i.h, align 8, !nonnull !411, !align !412, !noundef !411
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store atomic i8 0, ptr %i.ax release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.ay = load ptr, ptr %i.av, align 8, !invariant.load !411 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.ay(ptr noundef nonnull %i.au)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !414, !invariant.load !411 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !415, !invariant.load !411
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) %i.bd) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.l:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !414, !invariant.load !411 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !415, !invariant.load !411
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #68
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.bk, align 1
  br label %bb.g

bb.m:                                             ; preds = %bb.ao, %bb.am, %bb.ak
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

.body:                                            ; preds = %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.ak, %.body34
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn8.pn, %.body34 ], [ %.pn8.pn, %bb.ak ], [ %i.be, %bb.l ], [ %i.be, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bo = load i8, ptr %i.bn, align 1, !range !423, !noundef !411
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsfR8GmIBoxTX_21lance_namespace_impls.exit45

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1640) #72
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1640) #72
  unreachable

bb.p:                                             ; preds = %bb.b, %bb.h
  %.val1.i.i = phi ptr [ %i.ap, %bb.h ], [ %.val1.i.i.pre, %bb.b ]
  %.val.i.i = phi ptr [ %i.ao, %bb.h ], [ %.val.i.i.pre, %bb.b ]
  %.sroa.8.0 = phi ptr [ %i.ap, %bb.h ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.ao, %bb.h ], [ undef, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144676)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !411, !noalias !144680, !nonnull !411
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.s unwind label %bb.q, !noalias !144681, !inline_history !144654

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bv)
          to label %bb.t unwind label %bb.r, !noalias !144681 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #74, !noalias !144681
  unreachable

bb.s:                                             ; preds = %bb.p
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.by = extractvalue { ptr, ptr } %i.bw, 0      ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.bw, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  store ptr %i.by, ptr %.sroa.657, align 8, !alias.scope !144679
  br label %bb.v

common.ret:                                       ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.u
  %storemerge = phi i8 [ 3, %bb.u ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ 1, %bb.z ]
  %common.ret.op = phi i1 [ true, %bb.u ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ false, %bb.z ]
  store i8 %storemerge, ptr %i.c, align 1
  ret i1 %common.ret.op

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %common.ret

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sink15.i.sroa.phi = phi ptr [ %.sroa.958, %bb.t ], [ %.sroa.657, %bb.s ]
  %.sink.i33 = phi ptr [ %i.bz, %bb.t ], [ null, %bb.s ]
  store ptr %.sink.i33, ptr %.sink15.i.sroa.phi, align 8, !alias.scope !144679
  %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8. = load ptr, ptr %.sroa.657, align 8, !noundef !411 ; 4 uses
  %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16. = load ptr, ptr %.sroa.958, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.958)
  %.val31 = load ptr, ptr %0, align 8             ; 5 uses
  %.val32 = load ptr, ptr %i.bq, align 8, !nonnull !411, !align !412, !noundef !411 ; 5 uses
  %i.ca = load ptr, ptr %.val32, align 8, !invariant.load !411 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  invoke void %i.ca(ptr noundef nonnull %.val31)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !414, !invariant.load !411 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !415, !invariant.load !411
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.y:                                             ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val32, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !414, !invariant.load !411 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.body34, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %.val32, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !415, !invariant.load !411
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) %i.cl) #68
  br label %.body34

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.x
  %.not = icmp eq ptr %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8., null
  br i1 %.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 0, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.cn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 0, ptr %i.co, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !411, !align !412, !noundef !411
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store atomic i8 0, ptr %i.cr release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16.) ]
  %i.cs = load ptr, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., align 8, !invariant.load !411 ; 2 uses
  %.not.i36 = icmp eq ptr %i.cs, null
  br i1 %.not.i36, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void %i.cs(ptr noundef nonnull %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8.)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !range !414, !invariant.load !411 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39: ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !range !415, !invariant.load !411
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8., i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) %i.cx) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., i64 8
  %i.da = load i64, ptr %i.cz, align 8, !range !414, !invariant.load !411 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.body34, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37: ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.958.0..sroa.958.0..sroa.958.0..sroa.958.16., i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !range !415, !invariant.load !411
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.657.0..sroa.657.0..sroa.657.0..sroa.657.8., i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) %i.dd) #68
  br label %.body34

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader16CachedReaderDataECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ae, %bb.af, %bb.g
  store i8 0, ptr %i.al, align 1
end_hunk_0
begin_hunk_1_@_RNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB7_11ObjectStore14open_with_size0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
bb.bn:                                            ; preds = %bb.a, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke fastcc void @_RNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtB7_11UringReader4open0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.g, ptr noundef nonnull align 8 %i.dn, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.bo unwind label %bb.bm

bb.bo:                                            ; preds = %bb.bn
  %i.do = load i8, ptr %i.g, align 8, !range !417, !noundef !411 ; 2 uses
  %i.dp = icmp eq i8 %i.do, -2
  br i1 %i.dp, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.bq:                                            ; preds = %bb.bo
  %.sroa.7104.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7104, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7104.0..sroa_idx107, i64 7, i1 false)
  %.sroa.7109.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7109.0.copyload115 = load ptr, ptr %.sroa.7109.0..sroa_idx114, align 8
  %.sroa.9118.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.9118.0.copyload124 = load ptr, ptr %.sroa.9118.0..sroa_idx123, align 8
  %.sroa.11127.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11127, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11127.0..sroa_idx130, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvMs1_NtNtCsjjbR6Jfsbqw_8lance_io5uring6readerNtBJ_11UringReader4open0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noundef nonnull align 8 %i.dn)
          to label %bb.ax unwind label %bb.br

bb.br:                                            ; preds = %bb.bl, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit46, %bb.f, %bb.bg, %_RNvXs6_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, %bb.bq
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs7_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB7_11ObjectStore24from_uri_and_params_impl0CsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !163283 {
bb.a:
  %.sroa.4.i.sroa.0 = alloca [7 x i8], align 1    ; 8 uses
  %.sroa.4.i.sroa.7 = alloca [16 x i8], align 1   ; 8 uses
  %.sroa.578.i = alloca [24 x i8], align 8        ; 8 uses
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 12 uses
  %.sroa.8.i.sroa.9 = alloca [16 x i8], align 1   ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.011.i.i.i = alloca [208 x i8], align 8   ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.8308.i = alloca [7 x i8], align 1        ; 10 uses
  %.sroa.26.i = alloca [16 x i8], align 8         ; 10 uses
  %i.f = alloca [208 x i8], align 8               ; 12 uses
  %.sroa.3.i = alloca [7 x i8], align 1           ; 7 uses
  %.sroa.6265.sroa.4.i = alloca [16 x i8], align 8 ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 13 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [184 x i8], align 8               ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [56 x i8], align 8                ; 13 uses
  %i.n = alloca [56 x i8], align 8                ; 10 uses
  %i.o = alloca [144 x i8], align 8               ; 6 uses
  %i.p = alloca [72 x i8], align 8                ; 12 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 10 uses
  %i.s = alloca [128 x i8], align 8               ; 10 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [56 x i8], align 8                ; 35 uses
  %i.w = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.8374 = alloca [31 x i8], align 1         ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 13 uses
  %.sroa.3340 = alloca [7 x i8], align 1          ; 2 uses
  %.sroa.7342 = alloca [40 x i8], align 8         ; 3 uses
  %.sroa.8336.sroa.0 = alloca [7 x i8], align 1   ; 7 uses
  %.sroa.8336.sroa.7 = alloca [16 x i8], align 1  ; 7 uses
  %.sroa.9337 = alloca [24 x i8], align 8         ; 7 uses
  %i.y = alloca [88 x i8], align 8                ; 10 uses
  %.sroa.3 = alloca [7 x i8], align 1             ; 2 uses
  %.sroa.12306 = alloca [16 x i8], align 8        ; 2 uses
  %.sroa.8295 = alloca [7 x i8], align 1          ; 8 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 8 uses
  %i.z = alloca [88 x i8], align 8                ; 10 uses
  %i.aa = alloca [8 x i8], align 8                ; 14 uses
  %i.ab = alloca [88 x i8], align 8               ; 8 uses
  %.sroa.8266 = alloca [56 x i8], align 8         ; 7 uses
  %.sroa.9241 = alloca i64, align 8               ; 7 uses
  %.sroa.15 = alloca ptr, align 8                 ; 7 uses
  %.sroa.19 = alloca i64, align 8                 ; 7 uses
  %.sroa.26 = alloca i64, align 8                 ; 6 uses
  %.sroa.27 = alloca ptr, align 8                 ; 6 uses
  %.sroa.28 = alloca i64, align 8                 ; 6 uses
  %i.ac = alloca [16 x i8], align 16              ; 10 uses
  %i.ad = alloca [16 x i8], align 16              ; 10 uses
  %i.ae = alloca [128 x i8], align 8              ; 22 uses
  %i.af = alloca [8 x i8], align 8                ; 9 uses
  %i.ag = alloca [56 x i8], align 8               ; 14 uses
  %i.ah = alloca [16 x i8], align 8               ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !range !410, !noundef !411
  switch i8 %i.aj, label %default.unreachable616 [
    i8 0, label %bb.b
    i8 1, label %bb.ch
    i8 2, label %bb.ci
    i8 3, label %bb.ck
    i8 4, label %bb.ij
  ]

default.unreachable616:                           ; preds = %bb.ij, %bb.ck, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !411, !noundef !411
  store ptr %i.am, ptr %i.ak, align 8
  %i.an = load ptr, ptr %1, align 8, !nonnull !411, !noundef !411 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !411 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !411, !align !412, !noundef !411 ; 15 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.at = load i8, ptr %i.as, align 1, !range !423, !noundef !411
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !416, !alias.scope !163284, !noundef !411
  %.not.i = icmp eq i64 %i.aw, -1
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.val77 = load ptr, ptr %i.ax, align 8, !nonnull !411, !noundef !411 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ar, i64 24
  %.val78 = load ptr, ptr %i.ay, align 8          ; 2 uses
  %i.az = atomicrmw add ptr %.val77, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8266)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvNtCsjjbR6Jfsbqw_8lance_io12object_store10uri_to_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ap)
          to label %bb.bz unwind label %bb.by

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit125: ; preds = %bb.bw, %bb.bx, %.thread482, %bb.br, %bb.f
  %.pn62 = phi { ptr, i32 } [ %i.bb, %bb.f ], [ %.pn55.ph, %.thread482 ], [ %.pn55.pn.pn.ph, %bb.br ], [ %.pn59.pn481, %bb.bx ], [ %.pn59.pn481, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsfR8GmIBoxTX_21lance_namespace_impls.exit150

bb.f:                                             ; preds = %bb.bv
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit125

bb.g:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val78) ]
  store ptr %.val77, ptr %i.ah, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr %.val78, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %.val82 = load ptr, ptr %i.ak, align 8, !nonnull !411, !noundef !411
  %i.bd = getelementptr inbounds nuw i8, ptr %.val82, i64 16
  %i.be = getelementptr i8, ptr %i.ar, i64 168
  %.val83 = load ptr, ptr %i.be, align 8, !noundef !411 ; 2 uses
  %.not.i88 = icmp eq ptr %.val83, null
  br i1 %.not.i88, label %_RNvMs3_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParams15storage_options.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.val83, i64 40 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !noundef !411
  %.not2.i = icmp eq ptr %i.bg, null
  %..i89 = select i1 %.not2.i, ptr null, ptr %i.bf
  br label %_RNvMs3_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParams15storage_options.exit

_RNvMs3_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParams15storage_options.exit: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %..i89, %bb.h ]
  invoke void @_RNvMNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providersNtB2_19ObjectStoreRegistry29calculate_object_store_prefix(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ag, ptr noundef nonnull align 8 %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %.sroa.0.0.i)
          to label %bb.i unwind label %.thread478

bb.i:                                             ; preds = %_RNvMs3_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParams15storage_options.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !163285)
  %i.bh = load i8, ptr %i.ag, align 8, !range !418, !alias.scope !163286, !noundef !411 ; 2 uses
  %.not.i90 = icmp eq i8 %i.bh, -1
  br i1 %.not.i90, label %bb.j, label %bb.bu

.thread478:                                       ; preds = %_RNvMs3_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParams15storage_options.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bw

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.8.sroa.6.7.copyload = load i64, ptr %i.bj, align 8, !alias.scope !163287 ; 3 uses
  %.sroa.8.sroa.8.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.8.sroa.8.7.copyload = load ptr, ptr %.sroa.8.sroa.8.7..sroa_idx, align 8, !alias.scope !163287 ; 5 uses
  %.sroa.8.sroa.9.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.8.sroa.9.7.copyload = load i64, ptr %.sroa.8.sroa.9.7..sroa_idx, align 8, !alias.scope !163287 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.bk = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 7 uses
  %i.bl = icmp eq ptr %i.bk, null                 ; 2 uses
  br i1 %i.bl, label %bb.k, label %bb.m, !prof !443

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  unreachable

.thread482:                                       ; preds = %bb.bh, %.body109, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.bl
  %.pn55.ph = phi { ptr, i32 } [ %i.gm, %bb.bl ], [ %.pn52, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.gg, %bb.bh ], [ %i.gg, %.body109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit125

bb.l:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.m:                                             ; preds = %bb.j
  store i64 1, ptr %i.bk, align 8
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 1, ptr %.sroa.410.0..sroa_idx.i.i, align 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 0, ptr %.sroa.511.0..sroa_idx.i.i, align 8
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store i8 0, ptr %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i, align 4
  %i.bn = getelementptr i8, ptr %i.bk, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false)
  store ptr %i.bk, ptr %i.af, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.8.7.copyload) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !163288, !noundef !411 ; 2 uses
  %.not.i91 = icmp eq ptr %i.bp, null
  %.pre = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.pre568 = load ptr, ptr %i.bc, align 8         ; 2 uses
  br i1 %.not.i91, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr i8, ptr %i.ar, i64 160
  %.val85 = load ptr, ptr %i.bq, align 8, !nonnull !411, !align !412, !noundef !411 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val85, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !415, !invariant.load !411
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = and i64 %i.bt, -16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.val85, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !invariant.load !411, !nonnull !411
  %i.bz = invoke { ptr, ptr } %i.by(ptr noundef nonnull %i.bw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.8.sroa.8.7.copyload, i64 noundef %.sroa.8.sroa.9.7.copyload, ptr noundef nonnull %.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %.pre568)
          to label %bb.o unwind label %bb.q       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ca = extractvalue { ptr, ptr } %i.bz, 0      ; 2 uses
  %i.cb = extractvalue { ptr, ptr } %i.bz, 1      ; 2 uses
  store ptr %i.ca, ptr %i.ah, align 8
  store ptr %i.cb, ptr %i.bc, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %i.cc = phi ptr [ %.pre568, %bb.m ], [ %i.cb, %bb.o ]
  %i.cd = phi ptr [ %.pre, %bb.m ], [ %i.ca, %bb.o ]
  %i.ce = invoke { ptr, ptr } @_RNvXs0_NtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_storeNtB5_9IOTrackerNtNtB9_12object_store19WrappingObjectStore4wrap(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, ptr noundef nonnull %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cc)
          to label %bb.r unwind label %bb.q       ; 2 uses

bb.q:                                             ; preds = %bb.n, %bb.p
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.thread462

bb.r:                                             ; preds = %bb.p
  %i.cg = extractvalue { ptr, ptr } %i.ce, 0
  %i.ch = extractvalue { ptr, ptr } %i.ce, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.cg, ptr %i.ad, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ch, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr null, ptr %i.ac, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !163289)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  %i.ck = load i32, ptr %i.cj, align 4, !alias.scope !163289, !noundef !411 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.val.i = load ptr, ptr %i.cl, align 8, !alias.scope !163289, !nonnull !411, !noundef !411 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %.val1.i = load i64, ptr %i.cm, align 8, !alias.scope !163289, !noundef !411 ; 3 uses
  %i.cn = zext i32 %i.ck to i64                   ; 10 uses
  %i.co = icmp eq i32 %i.ck, 0                    ; 2 uses
  br i1 %i.co, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i.i = icmp ugt i64 %.val1.i, %i.cn
  br i1 %.not.i.i.i.i.i, label %bb.t, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.s
  %i.cp = icmp eq i64 %.val1.i, %i.cn
  br i1 %i.cp, label %bb.y, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.cn
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !163290, !noalias !163289, !noundef !411
  %i.cs = icmp sgt i8 %i.cr, -65
  br i1 %i.cs, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t, %.split.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef 0, i64 noundef %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @7416) #72
          to label %.noexc93 unwind label %bb.x

.noexc93:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.x
  %i.ct = atomicrmw add ptr %i.cw, i64 -1 release, align 8, !noalias !163291
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjbR6Jfsbqw_8lance_io12object_store18LocalDirOperationsEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io12object_store18LocalDirOperationsEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjbR6Jfsbqw_8lance_io12object_store18LocalDirOperationsEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.bi

bb.x:                                             ; preds = %bb.z, %bb.u
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163292)
  %i.cw = load ptr, ptr %i.ac, align 16, !alias.scope !163292, !noundef !411 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjbR6Jfsbqw_8lance_io12object_store18LocalDirOperationsEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.v

bb.y:                                             ; preds = %bb.t, %.split.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !163293
  %i.cy = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cn, i64 noundef range(i64 1, 17) 1) #68, !noalias !163293 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.cn) #72
          to label %.noexc95 unwind label %bb.x

.noexc95:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %i.cn, i1 false), !noalias !163294
  br label %bb.ab

bb.ab:                                            ; preds = %bb.r, %bb.aa
  %.sroa.5.0.i.i = phi ptr [ %i.cy, %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.r ] ; 2 uses
  %i.da = load i64, ptr %i.ar, align 8, !range !437, !noundef !411
  %i.db = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = trunc nuw i64 %i.da to i1
  %..i96 = select i1 %i.dd, i64 %i.dc, i64 65536
  %i.de = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjjbR6Jfsbqw_8lance_io12object_store20DEFAULT_MAX_IOP_SIZE, i64 8) acquire, align 8
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.af, label %bb.ac, !prof !434

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr @_RNvNtCsjjbR6Jfsbqw_8lance_io12object_store20DEFAULT_MAX_IOP_SIZE, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.u, ptr %i.t, align 8
  invoke void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCsjjbR6Jfsbqw_8lance_io12object_store20DEFAULT_MAX_IOP_SIZE, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @75, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71)
          to label %.noexc97 unwind label %bb.ad

.noexc97:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.co, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit100, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i.i, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !163295
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit100

bb.af:                                            ; preds = %bb.ab, %.noexc97
  %i.dh = load i64, ptr @_RNvNtCsjjbR6Jfsbqw_8lance_io12object_store20DEFAULT_MAX_IOP_SIZE, align 8, !noundef !411
  %i.di = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  %i.dj = load i8, ptr %i.di, align 8, !range !423, !noundef !411
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ar, i64 177
  %i.dl = load i8, ptr %i.dk, align 1, !range !424, !noundef !411
  %i.dm = load ptr, ptr %i.af, align 8, !nonnull !411, !noundef !411
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.do = load <2 x ptr>, ptr %i.ad, align 16
  store <2 x ptr> %i.do, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.dq = load <2 x ptr>, ptr %i.ac, align 16
  store <2 x ptr> %i.dq, ptr %i.dp, align 8
  store i64 %i.cn, ptr %i.ae, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.cn, ptr %.sroa.11.0..sroa_idx, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store i64 %..i96, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store i64 %i.dh, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i8 %i.dj, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ae, i64 121
  %i.dv = and i8 %i.dl, 1
  store i8 %i.dv, ptr %i.du, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store i64 64, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  store i64 3, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.dm, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %.sroa.8.sroa.6.7.copyload, ptr %i.dz, align 8
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %.sroa.8.sroa.8.7.copyload, ptr %.sroa.4221.0..sroa_idx, align 8
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i64 %.sroa.8.sroa.9.7.copyload, ptr %.sroa.5222.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9241)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28)
  %i.ea = invoke { ptr, i64 } @_RNvMs_Cs5FpxmzdwmiN_3urlNtB4_3Url4path(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.av)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0      ; 5 uses
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1      ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !163296)
  call void @llvm.experimental.noalias.scope.decl(metadata !163297)
  %.not.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i, label %.thread142.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.ag
  %rhsc.i = load i8, ptr %i.eb, align 1, !alias.scope !163297
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.ed = icmp eq i8 %rhsc.fr.i, 47
  br i1 %i.ed, label %.split.i, label %.lr.ph.i

.split.i:                                         ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ef = add i64 %i.ec, -1                       ; 2 uses
end_hunk_1
