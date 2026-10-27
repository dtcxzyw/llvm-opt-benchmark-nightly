Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNCNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB9_9BaseCacheNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB19_4moka14MokaCacheEntryE19do_insert_with_hash00B1b_:bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx3.sroa_idx, align 4
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %i.y, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx3.sroa_idx, align 8
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %.val8, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx3.sroa_idx, align 8
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i64 %i.j, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx3.sroa_idx, align 8
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store ptr %i.ar, ptr %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx3.sroa_idx, align 8
  ret ptr %i.ar

bb.ab:                                            ; preds = %.body
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs63DIHKhvmTb_10lance_core5utils5tokio19IO_CORE_RESERVATION00B9_(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #68
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !8622)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !8622 ; 2 uses
  %i.c = icmp eq i64 %.val.i, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !8622, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !8622
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit

bb.d:                                             ; preds = %bb.a
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field6set_id0B8_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(192) initializes((180, 184)) %1) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !23, !align !98, !noundef !23
  %i.c = load i32, ptr %i.b, align 4, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !23, !align !98, !noundef !23 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8630)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 %i.c, ptr %i.f, align 4, !alias.scope !8629
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !8629, !noundef !23
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.e, align 4, !alias.scope !8630, !noundef !23 ; 2 uses
  store i32 %i.j, ptr %i.g, align 8, !alias.scope !8629
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.e, align 4, !alias.scope !8630
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !8629, !nonnull !23, !noundef !23 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !8629, !noundef !23 ; 2 uses
  %.idx = mul nuw nsw i64 %i.o, 192
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8631
  store ptr %i.g, ptr %i.a, align 8, !noalias !8632
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.q, align 8, !noalias !8632
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field6set_id.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.0.0.i.i1 = phi ptr [ %i.s, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  call fastcc void @_RNCNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5Field6set_id0B8_(ptr noalias noundef align 8 dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(192) %.sroa.0.0.i.i1), !inline_history !10
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i1, i64 192 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field6set_id.exit, label %.lr.ph

_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field6set_id.exit: ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8631
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCskTBvlRM5ILY_4moka6future8notifierINtB4_15RemovalNotifierNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB18_4moka14MokaCacheEntryE6notify0B1a_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.656 = alloca ptr, align 8                ; 6 uses
  %.sroa.957 = alloca ptr, align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 69 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !range !51, !noundef !23
  switch i8 %i.e, label %default.unreachable74 [
    i8 0, label %bb.c
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.b
  ]

default.unreachable74:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i.i.pre = load ptr, ptr %0, align 8, !alias.scope !8670
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !8670
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 66 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 67 ; 2 uses
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 1, ptr %i.f, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !23, !noundef !23 ; 9 uses
  store ptr %i.m, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.g, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = load i8, ptr %i.p, align 4, !range !51, !noundef !23
  store i8 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load atomic i8, ptr %i.r acquire, align 8
  %.not63 = icmp eq i8 %i.s, 0
  br i1 %.not63, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.i, align 8, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  store i8 0, ptr %i.f, align 2
  store i8 0, ptr %i.g, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.v = load i8, ptr %i.o, align 8, !range !51, !noalias !8671, !noundef !23 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !noalias !8671
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %i.v, ptr %i.w, align 8, !noalias !8671
  %i.x = load ptr, ptr %i.t, align 8, !noalias !8671, !nonnull !23, !noundef !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !8671, !nonnull !23, !align !50, !noundef !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !23, !noalias !8671, !nonnull !23
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.x, ptr noundef nonnull %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u, i8 noundef %i.v)
          to label %bb.h unwind label %bb.e, !noalias !8672, !inline_history !8642 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ae)
          to label %bb.i unwind label %bb.f, !noalias !8672 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70, !noalias !8672
  unreachable

bb.g:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs63DIHKhvmTb_10lance_core.exit
  %i.ah = phi ptr [ %i.m, %bb.c ], [ %i.bh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs63DIHKhvmTb_10lance_core.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !29, !noundef !23
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8671
  %i.al = extractvalue { ptr, ptr } %i.ac, 0      ; 4 uses
  %i.am = extractvalue { ptr, ptr } %i.ac, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al), "nonnull"(ptr %i.am) ]
  store i8 0, ptr %i.h, align 1
  store ptr %i.al, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.p

.body34:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37, %bb.ad, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.y
  %.pn8.pn = phi { ptr, i32 } [ %i.cg, %bb.y ], [ %i.cy, %bb.ad ], [ %i.cy, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i37 ], [ %i.cg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.ap = load i8, ptr %i.ao, align 1, !range !29, !noundef !23
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.aj, label %.body

bb.i:                                             ; preds = %bb.e
  %i.ar = extractvalue { ptr, ptr } %i.af, 0      ; 4 uses
  %i.as = extractvalue { ptr, ptr } %i.af, 1      ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.at = load ptr, ptr %i.i, align 8, !nonnull !23, !align !50, !noundef !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store atomic i8 0, ptr %i.au release, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.av = load ptr, ptr %i.as, align 8, !invariant.load !23 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.av(ptr noundef nonnull %i.ar)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !38, !invariant.load !23 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs63DIHKhvmTb_10lance_core.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !52, !invariant.load !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) %i.ba) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs63DIHKhvmTb_10lance_core.exit

bb.l:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !38, !invariant.load !23 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.body, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !52, !invariant.load !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ar, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) %i.bg) #65
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.ac, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39, %bb.k, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i
  %i.bh = phi ptr [ %i.m, %bb.k ], [ %i.m, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i ], [ %i.bp, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i39 ], [ %i.bp, %bb.ac ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 67
  store i8 0, ptr %i.bi, align 1
  br label %bb.g

bb.m:                                             ; preds = %bb.al, %bb.aj
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

.body:                                            ; preds = %bb.l, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.aj, %.body34
  %i.bk = phi ptr [ %i.bp, %.body34 ], [ %i.bp, %bb.aj ], [ %i.m, %bb.l ], [ %i.m, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ] ; 3 uses
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn8.pn, %.body34 ], [ %.pn8.pn, %bb.aj ], [ %i.bb, %bb.l ], [ %i.bb, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 67
  store i8 0, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.bn = load i8, ptr %i.bm, align 1, !range !29, !noundef !23
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit44

bb.n:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #68
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #68
  unreachable

bb.p:                                             ; preds = %bb.b, %bb.h
  %.val1.i.i = phi ptr [ %i.am, %bb.h ], [ %.val1.i.i.pre, %bb.b ]
  %.val.i.i = phi ptr [ %i.al, %bb.h ], [ %.val.i.i.pre, %bb.b ]
  %.sroa.8.0 = phi ptr [ %i.am, %bb.h ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.al, %bb.h ], [ undef, %bb.b ]
  %i.bp = phi ptr [ %i.m, %bb.h ], [ undef, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.656)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.957)
  call void @llvm.experimental.noalias.scope.decl(metadata !8673)
  call void @llvm.experimental.noalias.scope.decl(metadata !8670)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !23, !noalias !8674, !nonnull !23
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull %.val.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.s unwind label %bb.q, !noalias !8675, !inline_history !8649

bb.q:                                             ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.bv)
          to label %bb.t unwind label %bb.r, !noalias !8675 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70, !noalias !8675
  unreachable

bb.s:                                             ; preds = %bb.p
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.by = extractvalue { ptr, ptr } %i.bw, 0      ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.bw, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  store ptr %i.by, ptr %.sroa.656, align 8, !alias.scope !8673
  br label %bb.v

common.ret:                                       ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit, %bb.u
  %storemerge = phi i8 [ 3, %bb.u ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit ], [ 1, %bb.z ]
  %common.ret.op = phi i1 [ true, %bb.u ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEEB1f_.exit ], [ false, %bb.z ]
  store i8 %storemerge, ptr %i.d, align 1
  ret i1 %common.ret.op

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.656)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.957)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sink15.i.sroa.phi = phi ptr [ %.sroa.957, %bb.t ], [ %.sroa.656, %bb.s ]
  %.sink.i33 = phi ptr [ %i.bz, %bb.t ], [ null, %bb.s ]
  store ptr %.sink.i33, ptr %.sink15.i.sroa.phi, align 8, !alias.scope !8673
  %.sroa.656.0..sroa.656.0..sroa.656.0..sroa.656.8. = load ptr, ptr %.sroa.656, align 8, !noundef !23 ; 4 uses
  %.sroa.957.0..sroa.957.0..sroa.957.0..sroa.957.16. = load ptr, ptr %.sroa.957, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.656)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.957)
  %.val23 = load ptr, ptr %0, align 8             ; 5 uses
  %.val24 = load ptr, ptr %i.bq, align 8, !nonnull !23, !align !50, !noundef !23 ; 5 uses
  %i.ca = load ptr, ptr %.val24, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val23) ]
  invoke void %i.ca(ptr noundef nonnull %.val23)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.val24, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !38, !invariant.load !23 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs63DIHKhvmTb_10lance_core.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %.val24, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !range !52, !invariant.load !23
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val23) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) %i.cf) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs63DIHKhvmTb_10lance_core.exit

bb.y:                                             ; preds = %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val24, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !38, !invariant.load !23 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.body34, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %.val24, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !52, !invariant.load !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) %i.cl) #65
  br label %.body34

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs63DIHKhvmTb_10lance_core.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.x
  %.not = icmp eq ptr %.sroa.656.0..sroa.656.0..sroa.656.0..sroa.656.8., null
  br i1 %.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs63DIHKhvmTb_10lance_core.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 67
  store i8 0, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.cn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i8 0, ptr %i.co, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future12catch_unwind11CatchUnwindINtNtNtB4_5panic11unwind_safe16AssertUnwindSafeINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs63DIHKhvmTb_10lance_core.exit
end_hunk_0
begin_hunk_1_@_RNCNvXs2_NtNtCs63DIHKhvmTb_10lance_core5cache4mokaNtB7_16MokaCacheBackendNtNtB9_7backend12CacheBackend13get_or_insert0Bb_:bb.a
_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.i.i.i.i, %bb.jn
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.aoy = load ptr, ptr %i.aox, align 8, !noalias !11852, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  store ptr %i.aoy, ptr %i.ann, align 8, !noalias !11852
  br label %bb.kh

bb.kd:                                            ; preds = %bb.fd
  %i.aoz = getelementptr inbounds nuw i8, ptr %1, i64 368
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterGuardNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1I_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEEB1K_(ptr noalias noundef align 8 dereferenceable(56) %i.aoz) #69
          to label %bb.fe unwind label %bb.be, !noalias !11855

bb.ke:                                            ; preds = %bb.cd
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val115.i.i.i.i = load ptr, ptr %i.apa, align 8, !noalias !11852, !nonnull !23, !align !50, !noundef !23
  invoke void @_RNvMNtNtCsjMQ83FLvXnF_10async_lock6rwlock3rawNtB2_9RawRwLock12write_unlock(ptr noundef nonnull align 8 %.val115.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock6rwlock16RwLockWriteGuardINtNtNtCskTBvlRM5ILY_4moka6future17value_initializer11WaiterValueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEEEB2E_.exit177.i.i.i.i unwind label %bb.be, !noalias !11855

bb.kf:                                            ; preds = %.body134.i.i.i.i
  %i.apb = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11976)
  call void @llvm.experimental.noalias.scope.decl(metadata !11977)
  call void @llvm.experimental.noalias.scope.decl(metadata !11978)
  %i.apc = load ptr, ptr %i.apb, align 8, !alias.scope !11979, !noalias !11852, !nonnull !23, !noundef !23
  %i.apd = atomicrmw add ptr %i.apc, i64 -1 release, align 8, !noalias !11980
  %i.ape = icmp eq i64 %i.apd, 1
  br i1 %i.ape, label %bb.kg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEEB1g_.exit178.i.i.i.i

bb.kg:                                            ; preds = %bb.kf
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyE9drop_slowBM_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.apb), !noalias !11855
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEEB1g_.exit178.i.i.i.i

bb.kh:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %i.apf = phi ptr [ %i.cb, %._crit_edge.i.i.i.i ], [ %i.ang, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 7 uses
  %.sroa.0.079344 = phi ptr [ undef, %._crit_edge.i.i.i.i ], [ %.sroa.0.079346, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 6 uses
  %.sroa.8.0284 = phi ptr [ undef, %._crit_edge.i.i.i.i ], [ %.sroa.8.0286, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 6 uses
  %i.apg = phi ptr [ %.phi.trans.insert.i, %._crit_edge.i.i.i.i ], [ %i.anh, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 7 uses
  %i.aph = phi ptr [ %i.cu, %._crit_edge.i.i.i.i ], [ %i.ani, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 6 uses
  %i.api = phi ptr [ %.phi.trans.insert.i.i, %._crit_edge.i.i.i.i ], [ %i.anj, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 7 uses
  %i.apj = phi ptr [ %i.es, %._crit_edge.i.i.i.i ], [ %i.ank, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 6 uses
  %i.apk = phi ptr [ %.phi.trans.insert.i.i.i, %._crit_edge.i.i.i.i ], [ %i.anl, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 7 uses
  %i.apl = phi ptr [ %i.fx, %._crit_edge.i.i.i.i ], [ %i.anm, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 6 uses
  %.val.i.i.i.i.i.i = phi ptr [ %.val.i.i.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.aoy, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtNtCskTBvlRM5ILY_4moka6common5entry5EntryNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1v_4moka14MokaCacheEntryEE3mapB2p_NvMs_BL_BI_10into_valueEB1x_.exit.thread.i.i.i.i ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14275.i.i.i.i)
  %i.apm = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11854)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1033.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i.i.i.i.i)
  %i.apn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 41 ; 3 uses
  %i.apo = load i8, ptr %i.apn, align 1, !range !51, !noalias !11981, !noundef !23
  switch i8 %i.apo, label %default.unreachable277 [
    i8 0, label %bb.kj
    i8 1, label %bb.kl
    i8 2, label %bb.km
    i8 3, label %bb.ki
  ]

bb.ki:                                            ; preds = %bb.kh
  %.val11.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !noalias !11981
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val12.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !11981
  br label %bb.ko

bb.kj:                                            ; preds = %bb.kh
  %i.app = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 40
  %i.apq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32
  %.val10.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.apq, align 8, !noalias !11981, !nonnull !23, !noundef !23
  %i.apr = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i.i.i.i.i.i.i.i, i64 16
  store atomic i8 1, ptr %i.apr monotonic, align 1, !noalias !11981
  store i8 0, ptr %i.app, align 8, !noalias !11981
  %i.aps = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16
  %i.apt = load ptr, ptr %i.aps, align 8, !noalias !11981, !nonnull !23, !noundef !23 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.apv = load ptr, ptr %i.apu, align 8, !noalias !11981, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  store ptr %i.apt, ptr %.val.i.i.i.i.i.i, align 8, !noalias !11981
  %i.apw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8
  store ptr %i.apv, ptr %i.apw, align 8, !noalias !11981
  br label %bb.ko

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kt, %bb.kn
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aqb, %bb.kn ], [ %i.aqn, %bb.kt ], [ %i.aqn, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11982)
  call void @llvm.experimental.noalias.scope.decl(metadata !11983)
  %i.apy = load ptr, ptr %i.apx, align 8, !alias.scope !11984, !noalias !11985, !nonnull !23, !noundef !23
  %i.apz = atomicrmw add ptr %i.apy, i64 -1 release, align 8, !noalias !11986
  %i.aqa = icmp eq i64 %i.apz, 1
  br i1 %i.aqa, label %bb.kk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i

bb.kk:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCscI6d9CVNmLh_4core4sync6atomic6AtomicbEE9drop_slowCskdrbuxGeJhQ_10hyper_util(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.apx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.kz, !noalias !11987

bb.kl:                                            ; preds = %bb.kh
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #68
          to label %.noexc.i181.i.i.i.i unwind label %bb.lb, !noalias !11988

.noexc.i181.i.i.i.i:                              ; preds = %bb.kl
  unreachable

bb.km:                                            ; preds = %bb.kh
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #68
          to label %.noexc45.i.i.i.i.i unwind label %bb.lb, !noalias !11988

.noexc45.i.i.i.i.i:                               ; preds = %bb.km
  unreachable

bb.kn:                                            ; preds = %bb.ko
  %i.aqb = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11989
  %.val8.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !noalias !11985
  %.val9.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aqc, align 8, !noalias !11985, !nonnull !23, !align !50, !noundef !23
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_(ptr %.val8.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i) #69
          to label %.body.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.kz, !noalias !11987

bb.ko:                                            ; preds = %bb.kj, %bb.ki
  %.val12.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val12.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.ki ], [ %i.apv, %bb.kj ]
  %.val11.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val11.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.ki ], [ %i.apt, %bb.kj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11989
  %i.aqc = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %.val12.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.aqe = load ptr, ptr %i.aqd, align 8, !invariant.load !23, !noalias !11990, !nonnull !23
  invoke void %i.aqe(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull %.val11.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2M_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB33_EL_EEB1v_4pollB3o_.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.kn, !noalias !11987, !inline_history !12

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2M_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB33_EL_EEB1v_4pollB3o_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ko
  %i.aqf = load i8, ptr %i.c, align 8, !range !101, !noalias !11989, !noundef !23 ; 3 uses
  %i.aqg = icmp eq i8 %i.aqf, -2
  br i1 %i.aqg, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2M_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB33_EL_EEB1v_4pollB3o_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11989
  br label %bb.ld

bb.kq:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2M_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB33_EL_EEB1v_4pollB3o_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.3.i.i.i.i.i.i.sroa.0.0.copyload.i.i.i.i.i = load i56, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !11989
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !11989 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !11989 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !11989
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !11989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11989
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !noalias !11985 ; 5 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aqc, align 8, !noalias !11985, !nonnull !23, !align !50, !noundef !23 ; 5 uses
  %i.aqh = load ptr, ptr %.val7.i.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !23, !noalias !11987 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aqh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i.i.i.i.i.i.i.i.i) ]
  invoke void %i.aqh(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ks unwind label %bb.kt, !noalias !11987

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %i.aqi = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aqj = load i64, ptr %i.aqi, align 8, !range !38, !invariant.load !23, !noalias !11987 ; 2 uses
  %i.aqk = icmp eq i64 %i.aqj, 0
  br i1 %i.aqk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ks
  %i.aql = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.aqm = load i64, ptr %i.aql, align 8, !range !52, !invariant.load !23, !noalias !11987
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aqj, i64 noundef range(i64 1, -9223372036854775807) %i.aqm) #65, !noalias !11987
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kr
  %i.aqn = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aqp = load i64, ptr %i.aqo, align 8, !range !38, !invariant.load !23, !noalias !11987 ; 2 uses
  %i.aqq = icmp eq i64 %i.aqp, 0
  br i1 %i.aqq, label %.body.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kt
  %i.aqr = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.aqs = load i64, ptr %i.aqr, align 8, !range !52, !invariant.load !23, !noalias !11987
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aqp, i64 noundef range(i64 1, -9223372036854775807) %i.aqs) #65, !noalias !11987
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ks
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aqf, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1033.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !11989
  %i.aqt = zext i56 %.sroa.3.i.i.i.i.i.i.sroa.0.0.copyload.i.i.i.i.i to i64
  %i.aqu = shl nuw i64 %i.aqt, 8
  br label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryNtNtBO_5error5ErrorE7map_errNtB1H_14CloneableErrorNcB27_0EBO_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.kv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryNtNtBO_5error5ErrorE7map_errNtB1H_14CloneableErrorNcB27_0EBO_.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryNtNtBO_5error5ErrorE7map_errNtB1H_14CloneableErrorNcB27_0EBO_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kv, %bb.ku
  %.sroa.329.i.i.i.i.i.i.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.kv ], [ %i.aqu, %bb.ku ]
  %i.aqv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11991)
  call void @llvm.experimental.noalias.scope.decl(metadata !11992)
  %i.aqw = load ptr, ptr %i.aqv, align 8, !alias.scope !11993, !noalias !11985, !nonnull !23, !noundef !23
  %i.aqx = atomicrmw add ptr %i.aqw, i64 -1 release, align 8, !noalias !11994
  %i.aqy = icmp eq i64 %i.aqx, 1
  br i1 %i.aqy, label %bb.kw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i

bb.kw:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryNtNtBO_5error5ErrorE7map_errNtB1H_14CloneableErrorNcB27_0EBO_.exit.i.i.i.i.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCscI6d9CVNmLh_4core4sync6atomic6AtomicbEE9drop_slowCskdrbuxGeJhQ_10hyper_util(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aqv)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ky, !noalias !11987

bb.kx:                                            ; preds = %bb.la, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ky
  %.pn3.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aqz, %bb.ky ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i, %bb.la ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i ]
  store i8 2, ptr %i.apn, align 1, !noalias !11985
  br label %.body.i179.i.i.i.i

bb.ky:                                            ; preds = %bb.kw
  %i.aqz = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.kx

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kw, %_RINvMNtCscI6d9CVNmLh_4core6resultINtB3_6ResultNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryNtNtBO_5error5ErrorE7map_errNtB1H_14CloneableErrorNcB27_0EBO_.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1033.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !11995
  br label %bb.ld

bb.kz:                                            ; preds = %bb.la, %bb.kn, %bb.kk
  %i.ara = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !11987
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kk, %.body.i.i.i.i.i.i.i.i.i.i.i
  %i.arb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 40
  %i.arc = load i8, ptr %i.arb, align 8, !range !29, !noalias !11985, !noundef !23
  %i.ard = trunc nuw i8 %i.arc to i1
  br i1 %i.ard, label %bb.la, label %bb.kx

bb.la:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.are = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i180.i.i.i.i = load ptr, ptr %i.are, align 8, !noalias !11985
  %i.arf = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 24
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.arf, align 8, !noalias !11985, !nonnull !23, !align !50, !noundef !23
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_(ptr %.val.i.i.i.i.i.i.i180.i.i.i.i, ptr nonnull %.val5.i.i.i.i.i.i.i.i.i.i.i) #69
          to label %bb.kx unwind label %bb.kz, !noalias !11987

bb.lb:                                            ; preds = %bb.km, %bb.kl
  %i.arg = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i179.i.i.i.i

.body.i179.i.i.i.i:                               ; preds = %bb.lb, %bb.kx
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.arg, %bb.lb ], [ %.pn3.i.i.i.i.i.i.i.i.i.i.i, %bb.kx ]
  %i.arh = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i, 0
  %i.ari = invoke { ptr, ptr } @_RNvNvNtCsgczF5crJ4sT_3std9panicking12catch_unwind7cleanup(ptr noundef %i.arh)
          to label %.thread344.i.i.i.i unwind label %bb.lc, !noalias !11996 ; 2 uses

bb.lc:                                            ; preds = %.body.i179.i.i.i.i
  %i.arj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #70, !noalias !11996
  unreachable

bb.ld:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i, %bb.kp
  %.sroa.5.i.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.kp ], [ %.sroa.329.i.i.i.i.i.i.sroa.0.0.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i = phi i64 [ undef, %bb.kp ], [ %.sroa.8.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.0.i.i.i.i.i.i = phi ptr [ undef, %bb.kp ], [ %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.0.i.i.i.i.i.i = phi ptr [ undef, %bb.kp ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 3, %bb.kp ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i ]
  store i8 %storemerge.i.i.i.i.i.i.i.i.i.i.i, ptr %i.apn, align 1, !noalias !11985
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1033.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i.i.i.i.i.i.i.i.i)
  %i.ark = trunc i64 %.sroa.5.i.sroa.0.0.i.i.i.i.i to i8
  %.sroa.0.0.extract.trunc.i.i.i.i.i = or i8 %i.aqf, %i.ark ; 3 uses
  %i.arl = icmp eq i8 %.sroa.0.0.extract.trunc.i.i.i.i.i, -2
  br i1 %i.arl, label %.thread338.i.i.i.i, label %bb.le

.thread338.i.i.i.i:                               ; preds = %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i)
  br label %bb.lf

.thread344.i.i.i.i:                               ; preds = %.body.i179.i.i.i.i
  %i.arm = extractvalue { ptr, ptr } %i.ari, 0    ; 2 uses
  %i.arn = extractvalue { ptr, ptr } %i.ari, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.arm), "nonnull"(ptr %i.arn) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i)
  br label %bb.lg

bb.le:                                            ; preds = %bb.ld
  %.sroa.0.1.extract.shift.i.i.i.i.i = lshr i64 %.sroa.5.i.sroa.0.0.i.i.i.i.i, 8
  %.sroa.0.1.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.0.1.extract.shift.i.i.i.i.i to i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14275.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i.i.i.i.i, i64 24, i1 false), !noalias !11997
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i)
  %i.aro = icmp eq i8 %.sroa.0.0.extract.trunc.i.i.i.i.i, -3
  br i1 %i.aro, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le, %.thread338.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14275.i.i.i.i)
  br label %bb.oh

bb.lg:                                            ; preds = %bb.le, %.thread344.i.i.i.i
  %.sroa.0270.0354.i.i.i.i = phi i8 [ -2, %.thread344.i.i.i.i ], [ %.sroa.0.0.extract.trunc.i.i.i.i.i, %bb.le ] ; 2 uses
  %.sroa.8271.1353.i.i.i.i = phi i56 [ undef, %.thread344.i.i.i.i ], [ %.sroa.0.1.extract.trunc.i.i.i.i.i, %bb.le ]
  %i.arp = phi ptr [ %i.arm, %.thread344.i.i.i.i ], [ %.sroa.6.0.i.i.i.i.i.i, %bb.le ] ; 3 uses
  %i.arq = phi ptr [ %i.arn, %.thread344.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i, %bb.le ] ; 3 uses
  %.sroa.13274.1350.i.i.i.i = phi i64 [ undef, %.thread344.i.i.i.i ], [ %.sroa.8.0.i.i.i.i.i.i, %bb.le ]
  %.sroa.8281.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8281.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14275.i.i.i.i, i64 24, i1 false), !noalias !11852
  %i.arr = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  store i8 %.sroa.0270.0354.i.i.i.i, ptr %i.arr, align 8, !noalias !11852
  %.sroa.4277.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 425
  store i56 %.sroa.8271.1353.i.i.i.i, ptr %.sroa.4277.0..sroa_idx.i.i.i.i, align 1, !noalias !11852
  %.sroa.5278.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 432
  store ptr %i.arp, ptr %.sroa.5278.0..sroa_idx.i.i.i.i, align 8, !noalias !11852
  %.sroa.6279.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 440
  store ptr %i.arq, ptr %.sroa.6279.0..sroa_idx.i.i.i.i, align 8, !noalias !11852
  %.sroa.7280.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i64 %.sroa.13274.1350.i.i.i.i, ptr %.sroa.7280.0..sroa_idx.i.i.i.i, align 8, !noalias !11852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14275.i.i.i.i)
  %i.ars = icmp eq i8 %.sroa.0270.0354.i.i.i.i, -2
  br i1 %i.ars, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !11852
  %i.art = getelementptr inbounds nuw i8, ptr %1, i64 522
  store i8 0, ptr %i.art, align 2, !noalias !11852
  %i.aru = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.aru, i64 56, i1 false), !noalias !11852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !11852
  store i64 3, ptr %i.ae, align 8, !noalias !11852
  invoke fastcc void @_RNvMs_NtNtCskTBvlRM5ILY_4moka6future17value_initializerINtB4_11WaiterGuardNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1e_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16set_waiter_valueB1g_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.af, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.ae)
          to label %bb.lz unwind label %bb.mb, !noalias !11855

bb.li:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !11852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.arr, i64 56, i1 false), !noalias !11852
  %i.arv = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.arw = load ptr, ptr %i.arv, align 8, !noalias !11852, !nonnull !23, !noundef !23
  invoke void %i.arw(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.apm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.al)
          to label %bb.lk unwind label %bb.lj, !noalias !11855

bb.lj:                                            ; preds = %bb.li
  %i.arx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core5cache4moka14MokaCacheEntryEBH_.exit200.i.i.i.i

bb.lk:                                            ; preds = %bb.li
  %i.ary = load i8, ptr %i.apm, align 8, !range !102, !noalias !11852, !noundef !23
  %.not47.i.i.i.i = icmp eq i8 %i.ary, -1
  br i1 %.not47.i.i.i.i, label %bb.lp, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.arz = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.arz, ptr noundef nonnull align 8 dereferenceable(56) %i.apm, i64 56, i1 false), !noalias !11852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11852
  store i64 1, ptr %i.b, align 8, !noalias !11998
  %i.asa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.asa, align 8, !noalias !11998
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !11999
  %i.asb = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !11999 ; 7 uses
  %i.asc = icmp eq ptr %i.asb, null
  br i1 %i.asc, label %bb.lm, label %bb.lt, !prof !39

bb.lm:                                            ; preds = %bb.ll
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #68
          to label %.noexc.i182.i.i.i.i unwind label %bb.ln, !noalias !12000

.noexc.i182.i.i.i.i:                              ; preds = %bb.lm
  unreachable

bb.ln:                                            ; preds = %bb.lm
  %i.asd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.arz)
          to label %.body183.i.i.i.i unwind label %bb.lo, !noalias !12000

bb.lo:                                            ; preds = %bb.ln
  %i.ase = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !12000
  unreachable

bb.lp:                                            ; preds = %bb.lk
  %i.asf = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 3 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %1, i64 536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asf, ptr noundef nonnull align 8 dereferenceable(24) %i.asg, i64 24, i1 false), !noalias !11852
  %i.ash = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.asi = load ptr, ptr %i.ash, align 8, !noalias !11852, !nonnull !23, !align !50, !noundef !23
  %i.asj = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ask = load ptr, ptr %i.asj, align 8, !noalias !11852, !nonnull !23, !align !50, !noundef !23
  %.val109.i.i.i.i = load ptr, ptr %i.ask, align 8, !noalias !11855, !nonnull !23, !noundef !23 ; 2 uses
  %i.asl = atomicrmw add ptr %.val109.i.i.i.i, i64 1 monotonic, align 8, !noalias !11855
  %i.asm = icmp slt i64 %i.asl, 0
  br i1 %i.asm, label %bb.lq, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBM_.exit.i.i.i.i

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBM_.exit.i.i.i.i: ; preds = %bb.lp
  %i.asn = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.aso = load i64, ptr %i.asn, align 8, !noalias !11852, !noundef !23
  call void @llvm.experimental.noalias.scope.decl(metadata !12001)
  %i.asp = load <2 x ptr>, ptr %i.asf, align 8, !alias.scope !12001, !noalias !11852
  %i.asq = load ptr, ptr %i.asf, align 8, !alias.scope !12001, !noalias !11852, !nonnull !23, !noundef !23
  %i.asr = atomicrmw add ptr %i.asq, i64 1 monotonic, align 8, !noalias !12002
  %i.ass = icmp slt i64 %i.asr, 0
  br i1 %i.ass, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBM_.exit.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.ls:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneBM_.exit.i.i.i.i
  %i.ast = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.asu = load i64, ptr %i.ast, align 8, !alias.scope !12001, !noalias !11852, !noundef !23
  %i.asv = getelementptr inbounds nuw i8, ptr %1, i64 608
  store i64 %i.aso, ptr %i.asv, align 8, !noalias !11852
  %.sroa.7290.sroa.7.0..sroa.7290.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  store <2 x ptr> %i.asp, ptr %.sroa.7290.sroa.7.0..sroa.7290.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !11852
  %.sroa.7290.sroa.9.0..sroa.7290.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  store i64 %i.asu, ptr %.sroa.7290.sroa.9.0..sroa.7290.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !11852
  %.sroa.8291.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 648
  store ptr %i.asi, ptr %.sroa.8291.0..sroa_idx.i.i.i.i, align 8, !noalias !11852
  %.sroa.9292.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 656
  store ptr %.val109.i.i.i.i, ptr %.sroa.9292.0..sroa_idx.i.i.i.i, align 8, !noalias !11852
  %.sroa.11294.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 667
  store i8 0, ptr %.sroa.11294.0..sroa_idx.i.i.i.i, align 1, !noalias !11852
  br label %bb.md

bb.lt:                                            ; preds = %bb.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.asb, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !12000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11998
  store ptr %i.asb, ptr %i.ai, align 8, !noalias !11852
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @139, ptr %i.asw, align 8, !noalias !11852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !11852
  %i.asx = getelementptr inbounds nuw i8, ptr %1, i64 522
  store i8 0, ptr %i.asx, align 2, !noalias !11852
  %i.asy = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.asy, i64 56, i1 false), !noalias !11852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11852
  %i.asz = atomicrmw add ptr %i.asb, i64 1 monotonic, align 8, !noalias !11855
  %i.ata = icmp slt i64 %i.asz, 0
  br i1 %i.ata, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.trap()
  unreachable

bb.lv:                                            ; preds = %bb.lt
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.atb, align 8, !noalias !11852
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.asb, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !11852
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @139, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !11852
  store i64 1, ptr %i.ag, align 8, !noalias !11852
  invoke fastcc void @_RNvMs_NtNtCskTBvlRM5ILY_4moka6future17value_initializerINtB4_11WaiterGuardNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1e_4moka14MokaCacheEntryNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE16set_waiter_valueB1g_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ah, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.ag)
          to label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i unwind label %bb.lw, !noalias !11855

bb.lw:                                            ; preds = %bb.lv
  %i.atc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11852
  %i.atd = atomicrmw add ptr %i.asb, i64 -1 release, align 8, !noalias !12003
  %i.ate = icmp eq i64 %i.atd, 1
  br i1 %i.ate, label %bb.ly, label %.body183.i.i.i.i

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i: ; preds = %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !11852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !11852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11852
  br label %bb.lx

bb.lx:                                            ; preds = %bb.mn, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i
  %i.atf = phi ptr [ %i.aui, %bb.mn ], [ %i.apf, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.079342 = phi ptr [ %.sroa.0.079343, %bb.mn ], [ %.sroa.0.079344, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.0282 = phi ptr [ %.sroa.8.0283, %bb.mn ], [ %.sroa.8.0284, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i ] ; 2 uses
  %i.atg = phi ptr [ %i.auj, %bb.mn ], [ %i.apg, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i ] ; 2 uses
  %i.ath = phi ptr [ %i.auk, %bb.mn ], [ %i.aph, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i ] ; 2 uses
  %i.ati = phi ptr [ %i.aul, %bb.mn ], [ %i.api, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i ] ; 2 uses
  %i.atj = phi ptr [ %i.aum, %bb.mn ], [ %i.apj, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs63DIHKhvmTb_10lance_core5error14CloneableErrorEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2s_4SendEL_EE6unwrapB1j_.exit.i.i.i.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_RNCNvXs3_NtNtCs63DIHKhvmTb_10lance_core5cache5quickNtB7_17QuickCacheBackendNtNtB9_7backend12CacheBackend13get_or_insert0Bb_:bb.a

.thread.i:                                        ; preds = %bb.fa, %_RINvMs2_NtCs7XvMS87LGBC_11quick_cache5shardINtB6_10CacheShardNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB11_5quick10QuickEntryNtB1X_13EntryWeighterNtNtCs8S1wg6nVCjn_5ahash12random_state11RandomStateINtNtB8_4sync16DefaultLifecycleBX_B1V_EINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtB8_16sync_placeholder11PlaceholderB1V_EEE3getBX_EB13_.exit.i
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ud = load ptr, ptr %i.uc, align 8, !noalias !12416, !nonnull !23, !align !50, !noundef !23
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 56 ; 2 uses
  %i.uf = load ptr, ptr %i.cv, align 8, !noalias !12416, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  %i.ug = load i64, ptr %i.rr, align 8, !noalias !12416, !noundef !23
  %i.uh = load ptr, ptr %i.rt, align 8, !noalias !12416, !nonnull !23, !noundef !23
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i64 0, ptr %i.ui, align 8, !noalias !12416
  %.sroa.911.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.ue, ptr %.sroa.911.0..sroa_idx.i, align 8, !noalias !12416
  %.sroa.1012.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.uf, ptr %.sroa.1012.0..sroa_idx.i, align 8, !noalias !12416
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.uh, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !12416
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 %i.ug, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !12416
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i8 0, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !12416
  br label %bb.l

bb.fe:                                            ; preds = %bb.fd, %.body.i
  %i.uj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !12416
  unreachable

bb.ff:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !12416
  store ptr %.sroa.013.12228.i, ptr %i.v, align 8, !noalias !12416
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.013.12228.i, i64 64
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.013.12228.i, i64 88
  %i.um = load atomic i32, ptr %i.ul acquire, align 4, !noalias !12416 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12517)
  %i.un = load ptr, ptr %i.uk, align 8, !alias.scope !12517, !noalias !12416, !nonnull !23, !noundef !23 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.013.12228.i, i64 72
  %i.up = load ptr, ptr %i.uo, align 8, !alias.scope !12517, !noalias !12416, !nonnull !23, !align !50, !noundef !23
  %i.uq = atomicrmw add ptr %i.un, i64 1 monotonic, align 8, !noalias !12518
  %i.ur = icmp slt i64 %i.uq, 0
  br i1 %i.ur, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.trap()
  unreachable

bb.fh:                                            ; preds = %bb.ff
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.013.12228.i, i64 80
  %i.ut = load i64, ptr %i.us, align 8, !alias.scope !12517, !noalias !12416, !noundef !23
  %i.uu = atomicrmw add ptr %.sroa.013.12228.i, i64 -1 release, align 8, !noalias !12519
  %i.uv = icmp eq i64 %i.uu, 1
  br i1 %i.uv, label %bb.fi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder11PlaceholderNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEEB2g_.exit63.i

bb.fi:                                            ; preds = %bb.fh
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder11PlaceholderNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEE9drop_slowB1N_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder11PlaceholderNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEEB2g_.exit63.i unwind label %bb.fj, !noalias !12416

bb.fj:                                            ; preds = %bb.fi
  %i.uw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12416
  br label %.body.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder11PlaceholderNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEEB2g_.exit63.i: ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !12416
  br label %bb.fm

bb.fk:                                            ; preds = %bb.fc, %bb.fa, %_RNvXsc_NtCs7XvMS87LGBC_11quick_cache16sync_placeholderINtB5_10JoinFutureNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyB18_NtNtB1c_5quick10QuickEntryNtB2c_13EntryWeighterNtNtCs8S1wg6nVCjn_5ahash12random_state11RandomStateINtNtB7_4sync16DefaultLifecycleB18_B2a_EENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollB1e_.exit.thread.i, %_RNvMs8_NtCslnBYTBsvsQk_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %bb.g
  %i.ux = phi ptr [ %i.ct, %bb.fc ], [ %i.ct, %bb.fa ], [ %i.rk, %_RNvXsc_NtCs7XvMS87LGBC_11quick_cache16sync_placeholderINtB5_10JoinFutureNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyB18_NtNtB1c_5quick10QuickEntryNtB2c_13EntryWeighterNtNtCs8S1wg6nVCjn_5ahash12random_state11RandomStateINtNtB7_4sync16DefaultLifecycleB18_B2a_EENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollB1e_.exit.thread.i ], [ %i.ct, %_RNvMs8_NtCslnBYTBsvsQk_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i ], [ %i.at, %bb.g ]
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit83, %bb.fr, %bb.fl
  %.sink = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit83 ], [ 4, %bb.fr ], [ 3, %bb.fl ]
  store i8 %.sink, ptr %i.ab, align 1
  ret void

bb.fl:                                            ; preds = %_RNvXsc_NtCs7XvMS87LGBC_11quick_cache16sync_placeholderINtB5_10JoinFutureNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyB18_NtNtB1c_5quick10QuickEntryNtB2c_13EntryWeighterNtNtCs8S1wg6nVCjn_5ahash12random_state11RandomStateINtNtB7_4sync16DefaultLifecycleB18_B2a_EENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollB1e_.exit.i, %bb.dr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder6WaiterECs63DIHKhvmTb_10lance_core.exit.i.i, %bb.ei
  %i.uz = phi ptr [ %i.de, %_RNvXsc_NtCs7XvMS87LGBC_11quick_cache16sync_placeholderINtB5_10JoinFutureNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyB18_NtNtB1c_5quick10QuickEntryNtB2c_13EntryWeighterNtNtCs8S1wg6nVCjn_5ahash12random_state11RandomStateINtNtB7_4sync16DefaultLifecycleB18_B2a_EENtNtNtCscI6d9CVNmLh_4core6future6future6Future4pollB1e_.exit.i ], [ %i.as, %bb.dr ], [ %i.as, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder6WaiterECs63DIHKhvmTb_10lance_core.exit.i.i ], [ %i.as, %bb.ei ]
  store i8 3, ptr %i.uz, align 8, !noalias !12416
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.fm:                                            ; preds = %bb.fb, %bb.fc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder11PlaceholderNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEEB2g_.exit63.i
  %i.va = phi ptr [ %i.ct, %bb.fc ], [ %i.ct, %bb.fb ], [ %i.rk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder11PlaceholderNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEEB2g_.exit63.i ]
  %.sroa.7103.0 = phi i64 [ %i.ty, %bb.fc ], [ %i.ty, %bb.fb ], [ %i.ut, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder11PlaceholderNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEEB2g_.exit63.i ]
  %.sroa.6102.0 = phi ptr [ %i.tr, %bb.fc ], [ %i.tr, %bb.fb ], [ %i.up, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder11PlaceholderNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEEB2g_.exit63.i ] ; 2 uses
  %.sroa.0101.0 = phi ptr [ %i.tp, %bb.fc ], [ %i.tp, %bb.fb ], [ %i.un, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder11PlaceholderNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEEB2g_.exit63.i ] ; 2 uses
  store i8 1, ptr %i.va, align 8, !noalias !12416
  store ptr %.sroa.0101.0, ptr %1, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.6102.0, ptr %.sroa.4107.0..sroa_idx, align 8
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.7103.0, ptr %.sroa.5108.0..sroa_idx, align 8
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 2, ptr %.sroa.6109.0..sroa_idx, align 8
  br label %bb.fn

bb.fn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEB14_.exit, %bb.fm
  %.sroa.8.0 = phi i8 [ 1, %bb.fm ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEB14_.exit ]
  %.sroa.6.0 = phi ptr [ %.sroa.6102.0, %bb.fm ], [ %i.adg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEB14_.exit ]
  %.sroa.488.0 = phi ptr [ %.sroa.0101.0, %bb.fm ], [ %i.adf, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryEEB14_.exit ]
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.vc = load i8, ptr %i.vb, align 8, !range !29, !noundef !23
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %bb.ja, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit71

bb.fo:                                            ; preds = %bb.iy, %bb.d, %bb.fp, %bb.jq, %bb.jr, %bb.jp
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.fp:                                            ; preds = %bb.fq
  %i.vf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val35 = load ptr, ptr %i.vg, align 8
  %.val36 = load ptr, ptr %i.vh, align 8, !nonnull !23, !align !50, !noundef !23
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_(ptr %.val35, ptr nonnull %.val36) #69
          to label %.body48 unwind label %bb.fo

bb.fq:                                            ; preds = %bb.a, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %.val39 = load ptr, ptr %i.vg, align 8, !nonnull !23, !noundef !23
  %i.vh = getelementptr i8, ptr %1, i64 152       ; 3 uses
  %.val40 = load ptr, ptr %i.vh, align 8, !nonnull !23, !align !50, !noundef !23
  %i.vi = getelementptr inbounds nuw i8, ptr %.val40, i64 24
  %i.vj = load ptr, ptr %i.vi, align 8, !invariant.load !23, !noalias !12520, !nonnull !23
  invoke void %i.vj(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.z, ptr noundef nonnull %.val39, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2M_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB33_EL_EEB1v_4pollB3o_.exit unwind label %bb.fp, !inline_history !12

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2M_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB33_EL_EEB1v_4pollB3o_.exit: ; preds = %bb.fq
  %i.vk = load i8, ptr %i.z, align 8, !range !101, !noundef !23 ; 5 uses
  %i.vl = icmp eq i8 %i.vk, -2
  br i1 %i.vl, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2M_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB33_EL_EEB1v_4pollB3o_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.fs:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultTINtNtB10_4sync3ArcDNtNtB8_3any3AnyNtNtB8_6marker4SyncNtB2M_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB33_EL_EEB1v_4pollB3o_.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, i64 7, i1 false)
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4126.0.copyload = load ptr, ptr %.sroa.4126.0..sroa_idx, align 8 ; 9 uses
  %.sroa.6127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.6127.0.copyload = load ptr, ptr %.sroa.6127.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.8128.0.copyload = load i64, ptr %.sroa.8128.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10129, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10129.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val33 = load ptr, ptr %i.vg, align 8          ; 5 uses
  %.val34 = load ptr, ptr %i.vh, align 8, !nonnull !23, !align !50, !noundef !23 ; 5 uses
  %i.vm = load ptr, ptr %.val34, align 8, !invariant.load !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.vm, null
  br i1 %.not.i.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val33) ]
  invoke void %i.vm(ptr noundef nonnull %.val33)
          to label %bb.fu unwind label %bb.fv

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.vn = getelementptr inbounds nuw i8, ptr %.val34, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !range !38, !invariant.load !23 ; 2 uses
  %i.vp = icmp eq i64 %i.vo, 0
  br i1 %i.vp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.fu
  %i.vq = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.vr = load i64, ptr %i.vq, align 8, !range !52, !invariant.load !23
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val33) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val33, i64 noundef %i.vo, i64 noundef range(i64 1, -9223372036854775807) %i.vr) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit

bb.fv:                                            ; preds = %bb.ft
  %i.vs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.val34, i64 8
  %i.vu = load i64, ptr %i.vt, align 8, !range !38, !invariant.load !23 ; 2 uses
  %i.vv = icmp eq i64 %i.vu, 0
  br i1 %i.vv, label %.body48, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.fv
  %i.vw = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.vx = load i64, ptr %i.vw, align 8, !range !52, !invariant.load !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val33, i64 noundef %i.vu, i64 noundef range(i64 1, -9223372036854775807) %i.vx) #65
  br label %.body48

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.fu
  %.not.i50 = icmp eq i8 %i.vk, -1
  br i1 %.not.i50, label %bb.fw, label %bb.je

bb.fw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultTINtNtBW_4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2Z_4SendEL_EjENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEB3g_EL_EEEB3B_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6127.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %.sroa.4126.0.copyload, ptr %i.aa, align 8
  %i.vy = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %.sroa.6127.0.copyload, ptr %i.vy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 138 ; 2 uses
  store i8 0, ptr %i.vz, align 2
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.wa, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4126.0.copyload) ]
  %i.wb = atomicrmw add ptr %.sroa.4126.0.copyload, i64 1 monotonic, align 8
  %i.wc = icmp slt i64 %i.wb, 0
  br i1 %i.wc, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.trap()
  unreachable

bb.fy:                                            ; preds = %bb.fw
  store ptr %.sroa.4126.0.copyload, ptr %i.w, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.sroa.6127.0.copyload, ptr %i.wd, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %.sroa.8128.0.copyload, ptr %i.we, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12521)
  call void @llvm.experimental.noalias.scope.decl(metadata !12522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !12523)
  call void @llvm.experimental.noalias.scope.decl(metadata !12524)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !alias.scope !12525, !nonnull !23, !noundef !23 ; 2 uses
  %i.wh = atomicrmw add ptr %.sroa.4126.0.copyload, i64 1 monotonic, align 8, !noalias !12526
  %i.wi = icmp slt i64 %i.wh, 0
  br i1 %i.wi, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.trap()
  unreachable

bb.ga:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs7XvMS87LGBC_11quick_cache7rw_lock16RwLockWriteGuardINtNtBG_5shard10CacheShardNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_5quick10QuickEntryNtB2X_13EntryWeighterNtNtCs8S1wg6nVCjn_5ahash12random_state11RandomStateINtNtBG_4sync16DefaultLifecycleB1X_B2V_EINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtBG_16sync_placeholder11PlaceholderB2V_EEEEEB23_.exit.i.i
  br i1 %.sroa.02.2.i.i, label %.body.thread.i.i, label %.body.thread70.i.i

.body.thread73.i.i:                               ; preds = %bb.gq, %bb.gh
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.i.i55:                                      ; preds = %bb.ig
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread70.i.i

bb.gb:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12527
  store ptr %.sroa.4126.0.copyload, ptr %i.d, align 8, !noalias !12528
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.6127.0.copyload, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !noalias !12528
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.8128.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !12528
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 88
  %i.wk = load atomic i32, ptr %i.wj acquire, align 4, !noalias !12529
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEBZ_.exit.i.i.i, label %bb.gc, !prof !28

bb.gc:                                            ; preds = %bb.gb
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wg, i64 64
  invoke fastcc void @_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEBZ_(ptr noundef nonnull align 8 %i.wm, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEBZ_.exit.i.i.i unwind label %bb.gd, !noalias !12527

bb.gd:                                            ; preds = %bb.gc
  %i.wn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12530)
  %i.wo = load ptr, ptr %i.d, align 8, !alias.scope !12530, !noalias !12527, !noundef !23 ; 2 uses
  %i.wp = icmp eq ptr %i.wo, null
  br i1 %i.wp, label %.body.thread.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.wq = atomicrmw add ptr %i.wo, i64 -1 release, align 8, !noalias !12531
  %i.wr = icmp eq i64 %i.wq, 1
  br i1 %i.wr, label %bb.gf, label %.body.thread.i.i

bb.gf:                                            ; preds = %bb.ge
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.thread.i.i unwind label %bb.gg, !noalias !12527

_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEBZ_.exit.i.i.i: ; preds = %bb.gc, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12527
  %i.ws = load ptr, ptr %i.wf, align 8, !alias.scope !12525, !nonnull !23, !noundef !23 ; 10 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 24 ; 6 uses
  %i.wu = cmpxchg weak ptr %i.wt, i64 0, i64 8 acquire monotonic, align 8, !noalias !12532
  %.sroa.18.0.in.i.i.i52 = extractvalue { i64, i1 } %i.wu, 1
  br i1 %.sroa.18.0.in.i.i.i52, label %bb.gl, label %bb.gh, !prof !28

bb.gg:                                            ; preds = %bb.gf
  %i.wv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !12527
  unreachable

bb.gh:                                            ; preds = %_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEBZ_.exit.i.i.i
  %i.ww = invoke noundef zeroext i1 @_RNvMs8_NtCslnBYTBsvsQk_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.wt, i64 undef, i32 noundef -1)
          to label %bb.gl unwind label %.body.thread73.i.i, !noalias !12532 ; 0 uses

bb.gi:                                            ; preds = %bb.gm, %bb.gk
  %.pn.i.i53 = phi { ptr, i32 } [ %i.wy, %bb.gk ], [ %i.xk, %bb.gm ] ; 2 uses
  %i.wx = cmpxchg ptr %i.wt, i64 8, i64 0 release monotonic, align 8, !noalias !12532
  %.sroa.18.0.in.i.i.i.i.i.i.i54 = extractvalue { i64, i1 } %i.wx, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i54, label %.body.thread.i.i, label %bb.gj, !prof !28

bb.gj:                                            ; preds = %bb.gi
  invoke void @_RNvMs8_NtCslnBYTBsvsQk_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.wt, i1 noundef zeroext false)
          to label %.body.thread.i.i unwind label %bb.go, !noalias !12532

bb.gk:                                            ; preds = %._crit_edge.i.i
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gl:                                            ; preds = %bb.gh, %_RINvMNtNtCsgczF5crJ4sT_3std4sync9once_lockINtB3_8OnceLockNtNtNtCs63DIHKhvmTb_10lance_core5cache5quick10QuickEntryE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEBZ_.exit.i.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ws, i64 56
  store i8 1, ptr %i.wz, align 8, !noalias !12532
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ws, i64 32
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ws, i64 48 ; 2 uses
  %i.xc = load i64, ptr %i.xb, align 8, !noalias !12532, !noundef !23 ; 4 uses
  %i.xd = icmp ult i64 %i.xc, 384307168202282326
  call void @llvm.assume(i1 %i.xd)
  %i.xe = icmp ne i64 %i.xc, 0                    ; 2 uses
  store i64 0, ptr %i.xb, align 8, !alias.scope !12533, !noalias !12532
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ws, i64 40
  %i.xg = load ptr, ptr %i.xf, align 8, !alias.scope !12533, !noalias !12532, !nonnull !23, !noundef !23 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.xc, 24
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.idx.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12532
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.xh, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !12532
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.xa, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !12532
  %.sroa.459.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.xc, ptr %.sroa.459.0..sroa_idx.i.i, align 8, !noalias !12532
  %.sroa.560.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 0, ptr %.sroa.560.0..sroa_idx.i.i, align 8, !noalias !12532
  br i1 %i.xe, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.gl, %bb.gn
  %i.xi = phi ptr [ %i.xj, %bb.gn ], [ %i.xg, %bb.gl ] ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.xi, i64 24, i1 false), !noalias !12532
  invoke fastcc void @_RNvMs2_NtCs7XvMS87LGBC_11quick_cache16sync_placeholderNtB5_6Waiter6notify(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %bb.gn unwind label %bb.gm, !noalias !12532

._crit_edge.i.i:                                  ; preds = %bb.gn, %bb.gl
  %.lcssa.i.i = phi ptr [ %i.xg, %bb.gl ], [ %i.xh, %bb.gn ]
  store ptr %.lcssa.i.i, ptr %i.i, align 8, !noalias !12532
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder6WaiterEECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(40) %i.i)
          to label %bb.gp unwind label %bb.gk, !noalias !12532

bb.gm:                                            ; preds = %.lr.ph.i.i
  %i.xk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.xj, ptr %i.i, align 8, !noalias !12532
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec5drain5DrainNtNtCs7XvMS87LGBC_11quick_cache16sync_placeholder6WaiterEECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(40) %i.i) #69
          to label %bb.gi unwind label %bb.go, !noalias !12532

bb.gn:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12532
  %i.xl = icmp eq ptr %i.xj, %i.xh
  br i1 %i.xl, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.go:                                            ; preds = %bb.ik, %.body.thread70.i.i, %bb.hx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs7XvMS87LGBC_11quick_cache7rw_lock16RwLockWriteGuardINtNtBG_5shard10CacheShardNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_5quick10QuickEntryNtB2X_13EntryWeighterNtNtCs8S1wg6nVCjn_5ahash12random_state11RandomStateINtNtBG_4sync16DefaultLifecycleB1X_B2V_EINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtBG_16sync_placeholder11PlaceholderB2V_EEEEEB23_.exit.i.i, %bb.gm, %bb.gj
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !12534
  unreachable

bb.gp:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12532
  %i.xn = cmpxchg ptr %i.wt, i64 8, i64 0 release monotonic, align 8, !noalias !12532
  %.sroa.18.0.in.i.i.i.i.i19.i.i = extractvalue { i64, i1 } %i.xn, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i19.i.i, label %bb.gs, label %bb.gq, !prof !28

bb.gq:                                            ; preds = %bb.gp
  invoke void @_RNvMs8_NtCslnBYTBsvsQk_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.wt, i1 noundef zeroext false)
          to label %bb.gs unwind label %.body.thread73.i.i, !noalias !12532

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs7XvMS87LGBC_11quick_cache7rw_lock16RwLockWriteGuardINtNtBG_5shard10CacheShardNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_5quick10QuickEntryNtB2X_13EntryWeighterNtNtCs8S1wg6nVCjn_5ahash12random_state11RandomStateINtNtBG_4sync16DefaultLifecycleB1X_B2V_EINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtBG_16sync_placeholder11PlaceholderB2V_EEEEEB23_.exit.i.i: ; preds = %bb.hx, %.body33.i.i, %bb.gr
  %.pn10.i.i = phi { ptr, i32 } [ %i.xo, %bb.gr ], [ %eh.lpad-body34.i.i, %bb.hx ], [ %eh.lpad-body34.i.i, %.body33.i.i ] ; 2 uses
  %.sroa.02.2.i.i = phi i1 [ %.sroa.02.3.i.i, %bb.gr ], [ false, %bb.hx ], [ false, %.body33.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_5quick10QuickEntryEEj2_EB15_(ptr noalias noundef align 8 dereferenceable(80) %i.g) #69
          to label %bb.ga unwind label %bb.go, !noalias !12532

bb.gr:                                            ; preds = %bb.ic, %bb.ia, %bb.gt
  %.sroa.02.3.i.i = phi i1 [ false, %bb.ia ], [ false, %bb.ic ], [ true, %bb.gt ]
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs7XvMS87LGBC_11quick_cache7rw_lock16RwLockWriteGuardINtNtBG_5shard10CacheShardNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB21_5quick10QuickEntryNtB2X_13EntryWeighterNtNtCs8S1wg6nVCjn_5ahash12random_state11RandomStateINtNtBG_4sync16DefaultLifecycleB1X_B2V_EINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtBG_16sync_placeholder11PlaceholderB2V_EEEEEB23_.exit.i.i

bb.gs:                                            ; preds = %bb.gq, %bb.gp
  %i.xp = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i8 1, ptr %i.xp, align 8, !alias.scope !12525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12532
  %.sroa.4.0..sroa_idx.i22.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr null, ptr %.sroa.4.0..sroa_idx.i22.i.i, align 8, !alias.scope !12535, !noalias !12532
  %.sroa.4.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 5 uses
  store ptr null, ptr %.sroa.4.0..sroa_idx1.i.i.i, align 8, !alias.scope !12535, !noalias !12532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12532
end_hunk_2
begin_hunk_3_@_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRlNtB6_5Debug3fmtCs63DIHKhvmTb_10lance_core:bb.a
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRmNtB6_5Debug3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !98, !noundef !23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !23659, !noundef !23 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsw_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs40MM8ukkVQd_9sqlparser9tokenizerNtB6_14TokenizerErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @825, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @792, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @789, ptr noalias noundef nonnull readonly captures(address, read_provenance) @826, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @824)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB1r_4SendEL_ENtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23663)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !23663, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !23663, !nonnull !23, !align !50, !noundef !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !23, !noalias !23664, !nonnull !23
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23663, !inline_history !117
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs40k4W9msRzi_5alloc6string6StringNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23667)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !23667, !nonnull !23, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !23667, !noundef !23
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !23667
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs63DIHKhvmTb_10lance_core5error11FenceReasonNtB6_7Display3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23670)
  %i.b = load i8, ptr %i.a, align 1, !range !29, !alias.scope !23670, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %..i = select i1 %i.c, i64 19, i64 18
  %.1.i = select i1 %i.c, ptr @855, ptr @854
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i), !noalias !23670
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeNtB6_7Display3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23675
  store ptr %i.b, ptr %i.a, align 8, !noalias !23675
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !23675
  %i.c = load ptr, ptr %1, align 8, !alias.scope !23674, !nonnull !23, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !23674, !nonnull !23, !align !50, !noundef !23
  %i.f = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @58, ptr noundef nonnull %i.a), !noalias !23674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23675
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs63DIHKhvmTb_10lance_core5utils7address10RowAddressNtB6_7Display3fmtBC_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23681
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !23679, !noundef !23 ; 2 uses
  %i.f = lshr i64 %i.e, 32
  %i.g = trunc nuw i64 %i.f to i32
  store i32 %i.g, ptr %i.c, align 4, !noalias !23681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23681
  %i.h = trunc i64 %i.e to i32
  store i32 %i.h, ptr %i.b, align 4, !noalias !23681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23681
  store ptr %i.c, ptr %i.a, align 8, !noalias !23681
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !23681
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8, !noalias !23681
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !23681
  %i.j = load ptr, ptr %1, align 8, !alias.scope !23680, !nonnull !23, !noundef !23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !23680, !nonnull !23, !align !50, !noundef !23
  %i.m = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @851, ptr noundef nonnull %i.a), !noalias !23681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23681
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB6_7Display3fmtBC_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRRNtNtNtB8_5panic8location8LocationNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23
  %.val = load ptr, ptr %i.c, align 8, !nonnull !23, !align !50, !noundef !23 ; 4 uses
  %.val1 = load ptr, ptr %1, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23684)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23684
  %i.e = load ptr, ptr %.val, align 8, !alias.scope !23684, !nonnull !23, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !23684, !noundef !23
  store ptr %i.e, ptr %i.b, align 8, !noalias !23684
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !23684
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23684
  store ptr %i.b, ptr %i.a, align 8, !noalias !23684
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !23684
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.k, align 8, !noalias !23684
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !23684
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.j, ptr %i.l, align 8, !noalias !23684
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !23684
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val2) ]
  %i.m = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @1001, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23684
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRaNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRdNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtNtCscI6d9CVNmLh_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !23
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRhNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRlNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !98, !noundef !23
  %i.b = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRyNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23
  %i.b = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1j_NtCscI6d9CVNmLh_4core3fmtQNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtB6_7Display3fmtBC_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !50, !noundef !23
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_CsbD74dXBuBES_6tagptrNtB5_4NullNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @827, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCs40Ppcsylqp4_17crossbeam_channel3errINtB5_12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1W_4moka14MokaCacheEntryEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1Y_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !23
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @829, i64 noundef 16, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @828, i64 noundef 8, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCs40Ppcsylqp4_17crossbeam_channel3errINtB5_12TrySendErrorINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1X_4moka14MokaCacheEntryEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtB1Z_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !23
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @829, i64 noundef 16, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @828, i64 noundef 8, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs2_NtCs63DIHKhvmTb_10lance_core5errorNtB5_24CommitStatusUnknownErrorNtNtCscI6d9CVNmLh_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #35 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !23, !align !50, !noundef !23
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs2_NtCs63DIHKhvmTb_10lance_core8deepsizeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB5_10DeepSizeOf21deep_size_of_children(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = tail call noundef zeroext i1 @_RNvMs_NtCs63DIHKhvmTb_10lance_core8deepsizeNtB4_7Context9mark_seen(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.c)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalTypeINtNtCscI6d9CVNmLh_4core7convert4FromReE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp slt i64 %2, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread9, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !23687
  %i.b = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !23687 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #68
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread9: ; preds = %bb.b, %bb.e
  %i.d = phi ptr [ %i.b, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %2, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread9
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %1, align 8, !range !85, !noundef !23
  switch i8 %i.d, label %default.unreachable23 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
end_hunk_3
begin_hunk_4_@_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq:bb.a

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.fs, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr3477 = phi ptr [ %i.fr, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr76 = phi ptr [ %i.fp, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.p
    i8 34, label %bb.t
    i8 35, label %bb.u
    i8 36, label %bb.v
    i8 37, label %bb.w
    i8 38, label %bb.x
    i8 39, label %bb.y
    i8 40, label %bb.z
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !51, !noundef !23
  %i.g = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !51, !noundef !23
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.aa, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !51, !noundef !23
  %i.l = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !51, !noundef !23
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !51, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !51, !noundef !23
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !51, !noundef !23
  %i.v = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !51, !noundef !23
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !32, !noundef !23
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !32, !noundef !23
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr76, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !23
  %i.af = getelementptr inbounds nuw i8, ptr %.tr3477, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !23
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr76, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !23
  %i.au = getelementptr inbounds nuw i8, ptr %.tr3477, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !23
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.af, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ah

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %.val = load ptr, ptr %i.bh, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %.val21 = load i64, ptr %i.bj, align 8, !noundef !23 ; 3 uses
  %.val22 = load ptr, ptr %i.bi, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %.val23 = load i64, ptr %i.bk, align 8, !noundef !23
  %i.bl = icmp eq ptr %.val, %.val22
  %i.bm = icmp eq i64 %.val21, %.val23            ; 2 uses
  %i.bn = and i1 %i.bl, %i.bm
  br i1 %i.bn, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24565)
  br i1 %i.bm, label %bb.o, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = icmp eq i64 %.val21, 0
  br i1 %i.bq, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread.i.i.i.i
  %.sroa.01.07.i.i.i.i = phi i64 [ %i.bx, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread.i.i.i.i ], [ 0, %bb.o ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.sroa.01.07.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.01.07.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !24564, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !24565, !nonnull !23, !noundef !23 ; 2 uses
  %i.bt = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %i.bt, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread.i.i.i.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i.i.i.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bv), !noalias !24566
  br i1 %i.bw, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread.i.i.i.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bx = add nuw nsw i64 %.sroa.01.07.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bx, %.val21
  br i1 %exitcond.not.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %.val24 = load ptr, ptr %i.by, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %.val25 = load i64, ptr %i.ca, align 8, !noundef !23 ; 3 uses
  %.val26 = load ptr, ptr %i.bz, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %.val27 = load i64, ptr %i.cb, align 8, !noundef !23
  %i.cc = icmp eq ptr %.val24, %.val26
  %i.cd = icmp eq i64 %.val25, %.val27            ; 2 uses
  %i.ce = and i1 %i.cc, %i.cd
  br i1 %i.ce, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.val24, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24568)
  br i1 %i.cd, label %bb.r, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp eq i64 %.val25, 0
  br i1 %i.ch, label %.loopexit, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %bb.r, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread9.i.i.i.i
  %.sroa.01.011.i.i.i.i = phi i64 [ %i.cq, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread9.i.i.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.sroa.01.011.i.i.i.i ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.sroa.01.011.i.i.i.i ; 2 uses
  %.val.i.i.i.i30 = load i8, ptr %i.ci, align 1, !alias.scope !24567, !noundef !23
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val5.i.i.i.i31 = load ptr, ptr %i.ck, align 8, !alias.scope !24567 ; 3 uses
  %.val6.i.i.i.i = load i8, ptr %i.cj, align 1, !alias.scope !24568, !noundef !23
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  %.val7.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !24568 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i30, %.val6.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.s, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph.i.i.i.i29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i31), "nonnull"(ptr %.val7.i.i.i.i) ]
  %i.cm = icmp eq ptr %.val5.i.i.i.i31, %.val7.i.i.i.i
  br i1 %i.cm, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread9.i.i.i.i, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i.i.i.i

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i.i.i.i: ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i31, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 16
  %i.cp = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.co), !noalias !24569
  br i1 %i.cp, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread9.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread9.i.i.i.i: ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i.i.i.i, %bb.s
  %i.cq = add nuw nsw i64 %.sroa.01.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i32 = icmp eq i64 %i.cq, %.val25
  br i1 %exitcond.not.i.i.i.i32, label %.loopexit, label %.lr.ph.i.i.i.i29

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !23, !noundef !23
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !23, !noundef !23
  %i.cv = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
  br i1 %i.cv, label %tailrecurse, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !23
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !noundef !23
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.aj, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !noundef !23
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !noundef !23
  %i.df = icmp eq i8 %i.dc, %i.de
  br i1 %i.df, label %bb.ak, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !23
  %i.di = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !noundef !23
  %i.dk = icmp eq i8 %i.dh, %i.dj
  br i1 %i.dk, label %bb.al, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !23
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !noundef !23
  %i.dp = icmp eq i8 %i.dm, %i.do
  br i1 %i.dp, label %bb.am, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !range !29, !noundef !23
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !range !29, !noundef !23
  %i.du = icmp eq i8 %i.dr, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.dz = icmp eq ptr %i.dw, %i.dy
  br i1 %i.dz, label %bb.aq, label %bb.ap

bb.aa:                                            ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !23 ; 3 uses
  %.not = icmp eq ptr %i.eb, null                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noundef !23 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null                 ; 2 uses
  %brmerge186 = or i1 %.not, %i.ee
  %.mux = and i1 %.not, %i.ee
  br i1 %brmerge186, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.eh = load i64, ptr %i.ef, align 8, !noundef !23 ; 2 uses
  %i.ei = load i64, ptr %i.eg, align 8, !noundef !23
  %i.ej = icmp eq ptr %i.eb, %i.ed                ; 2 uses
  %i.ek = icmp eq i64 %i.eh, %i.ei                ; 2 uses
  %i.el = and i1 %i.ej, %i.ek
  %.not20 = xor i1 %i.ek, true
  %brmerge = or i1 %i.ej, %.not20
  br i1 %brmerge, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.en, ptr nonnull %i.em, i64 %i.eh)
  %i.eo = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.h
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.er = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eq)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.eu = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.et)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ez = icmp eq ptr %i.ew, %i.ey
  br i1 %i.ez, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fb)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.k
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ff = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fe)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.l
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.fi = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fh)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.loopexit:                                        ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.thread9.i.i.i.i, %bb.p, %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !range !29, !noundef !23
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !range !29, !noundef !23
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.fs = load i8, ptr %i.fp, align 8, !range !85, !noundef !23 ; 2 uses
  %i.ft = load i8, ptr %i.fr, align 8, !range !85, !noundef !23
  %i.fu = icmp eq i8 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.fw = load i8, ptr %i.fv, align 2, !noundef !23
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.fy = load i8, ptr %i.fx, align 2, !noundef !23
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gb = load i8, ptr %i.ga, align 2, !noundef !23
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gd = load i8, ptr %i.gc, align 2, !noundef !23
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gg = load i8, ptr %i.gf, align 2, !noundef !23
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gi = load i8, ptr %i.gh, align 2, !noundef !23
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gl = load i8, ptr %i.gk, align 2, !noundef !23
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gn = load i8, ptr %i.gm, align 2, !noundef !23
  %i.go = icmp eq i8 %i.gl, %i.gn
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.gt = icmp eq ptr %i.gq, %i.gs
  br i1 %i.gt, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gw = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gv)
end_hunk_4
