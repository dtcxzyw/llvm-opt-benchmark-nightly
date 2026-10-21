Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.06?download=true
inline.NumInlined: 353
inline.NumDeleted: 137
begin_hunk_0_@_RINvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB6_3Buf9read_fromRNtNtCsaL1QbXo9JQH_3std2fs4FileEBa_:bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.r ], [ %i.an, %bb.j ]
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %.loopexit
  ret { i64, ptr } %.lcssa2751

bb.q:                                             ; preds = %.loopexit
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio(i64 %.lcssa2352, ptr %.lcssa1953) #24
          to label %bb.o unwind label %bb.n

bb.s:                                             ; preds = %bb.q
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs1_NtNtCslghKHtsL3a4_5tokio4util12sync_wrapperINtB6_11SyncWrapperINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1K_6marker4SendEL_EE17downcast_ref_syncNtNtB1b_6string6StringEBa_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !align !13, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !7, !nonnull !7
  call void %i.f(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.b) #27
  %i.g = load i128, ptr %i.a, align 16, !noundef !7
  %i.h = icmp eq i128 %i.g, 166310101364263904992416576642764729534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.h, ptr %i.b, ptr null
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs1_NtNtCslghKHtsL3a4_5tokio4util12sync_wrapperINtB6_11SyncWrapperINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtB1K_6marker4SendEL_EE17downcast_ref_syncReEBa_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !align !13, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !7, !nonnull !7
  call void %i.f(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.b) #27
  %i.g = load i128, ptr %i.a, align 16, !noundef !7
  %i.h = icmp eq i128 %i.g, 48856307742461772449142782864826955356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.h, ptr %i.b, ptr null
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.c = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit
    i64 1, label %bb.e
  ], !prof !11

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !38
  store i8 3, ptr %i.a, align 8, !alias.scope !38
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexNtNtNtNtB1n_2io4util3mem13SimplexStreamEEEB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs0_NtCslISFVBvEzZQ_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslISFVBvEzZQ_5bytes9bytes_mut8BytesMutECslghKHtsL3a4_5tokio.exit.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val7.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !48, !align !13, !noundef !7 ; 2 uses
  %i.d = icmp eq ptr %.val7.i.i.i.i, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val8.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !48
  %i.f = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  invoke void %i.g(ptr noundef %.val8.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i unwind label %bb.h, !inline_history !1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslISFVBvEzZQ_5bytes9bytes_mut8BytesMutECslghKHtsL3a4_5tokio.exit.i.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val5.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !48, !align !13, !noundef !7 ; 2 uses
  %i.i = icmp eq ptr %.val5.i.i.i.i, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit10.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslISFVBvEzZQ_5bytes9bytes_mut8BytesMutECslghKHtsL3a4_5tokio.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val6.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !48
  %i.k = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  invoke void %i.l(ptr noundef %.val6.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit10.i.i.i.i unwind label %bb.f, !inline_history !1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i: ; preds = %bb.f, %bb.c, %bb.b
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val3.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !48, !align !13, !noundef !7 ; 2 uses
  %i.n = icmp eq ptr %.val3.i.i.i.i, null
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit12.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val4.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !48
  %i.p = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  invoke void %i.q(ptr noundef %.val4.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit12.i.i.i.i unwind label %bb.h, !inline_history !1

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit10.i.i.i.i: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslISFVBvEzZQ_5bytes9bytes_mut8BytesMutECslghKHtsL3a4_5tokio.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !48, !align !13, !noundef !7 ; 2 uses
  %i.t = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexNtNtNtNtBK_2io4util3mem13SimplexStreamEEBK_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit10.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val2.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !48
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !7, !noundef !7
  tail call void %i.w(ptr noundef %.val2.i.i.i.i), !inline_history !47
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexNtNtNtNtBK_2io4util3mem13SimplexStreamEEBK_.exit

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit12.i.i.i.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit.i.i.i.i
  resume { ptr, i32 } %.pn.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexNtNtNtNtBK_2io4util3mem13SimplexStreamEEBK_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECslghKHtsL3a4_5tokio.exit10.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCsaL1QbXo9JQH_3std2fs8DirEntryEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !61, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !61
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.e, align 8, !alias.scope !62, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load i64, ptr %i.f, align 8, !alias.scope !62 ; 2 uses
  store i8 0, ptr %.val2.i.i, align 1
  %i.g = icmp eq i64 %.val3.i.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECslghKHtsL3a4_5tokio.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val3.i.i, i64 noundef 1) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECslghKHtsL3a4_5tokio.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !62, !nonnull !7, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load i64, ptr %i.i, align 8, !alias.scope !62 ; 2 uses
  store i8 0, ptr %.val.i.i, align 1
  %i.j = icmp eq i64 %.val1.i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs8DirEntryECslghKHtsL3a4_5tokio.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs8DirEntryECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i, %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs8DirEntryECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB11_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEEB3p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !7 ; 2 uses
  %.not = icmp eq i64 %i.b, 2
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEB2Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !71, !noundef !7
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtB12_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEB2Z_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !71, !nonnull !7, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !71
  %i.g = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i
    i64 1, label %bb.g
  ], !prof !11

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.val.i.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !72, !noalias !71
  store i8 3, ptr %i.a, align 8, !alias.scope !72, !noalias !71
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !71
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEB2Z_.exit

bb.h:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !69, !noundef !7 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !69 ; 6 uses
  %i.p = icmp eq ptr %.val.i, null
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEB2Z_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.q = load ptr, ptr %.val1.i, align 8, !invariant.load !7, !noalias !69 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i)
          to label %bb.k unwind label %bb.l, !noalias !69

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !9, !invariant.load !7, !noalias !69 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEB2Z_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !15, !invariant.load !7, !noalias !69
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #29, !noalias !69
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEB2Z_.exit

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !9, !invariant.load !7, !noalias !69 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit5.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !15, !invariant.load !7, !noalias !69
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #29, !noalias !69
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit5.i.i.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit5.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.l
  resume { ptr, i32 } %i.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorENtNtNtNtCslghKHtsL3a4_5tokio7runtime4task5error9JoinErrorEEB2Z_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.k, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTIB11_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtNtNtB1Y_7runtime4task5error9JoinErrorEEEB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !16, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTIBC_jNtNtNtB4_2io5error5ErrorENtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtNtNtB1y_7runtime4task5error9JoinErrorEEB1y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %.not.i = icmp eq i64 %i.b, 2
  br i1 %.not.i, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !91 ; 4 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.e = ptrtoint ptr %.val1.i.i to i64           ; 2 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i
    i64 1, label %bb.f
  ], !prof !11

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ult ptr %.val1.i.i, inttoptr (i64 188978561024 to ptr)
  %i.h = and i64 %i.e, 1095216660480
  %i.i = icmp ne i64 %i.h, 1095216660480
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.val1.i.i, i64 -1 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtB1t_2io8blocking3BufENtNtNtNtB1t_7runtime4task5error9JoinErrorEEEB1t_:bb.a

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !9, !invariant.load !7, !noalias !170 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtB14_2io8blocking3BufENtNtNtNtB14_7runtime4task5error9JoinErrorEEB14_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !15, !invariant.load !7, !noalias !170
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #29, !noalias !170
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtB14_2io8blocking3BufENtNtNtNtB14_7runtime4task5error9JoinErrorEEB14_.exit

bb.z:                                             ; preds = %bb.x
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !9, !invariant.load !7, !noalias !170 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %common.resume.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.z
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !15, !invariant.load !7, !noalias !170
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) %i.bc) #29, !noalias !170
  br label %common.resume.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCslghKHtsL3a4_5tokio2fs4file9OperationNtNtNtB14_2io8blocking3BufENtNtNtNtB14_7runtime4task5error9JoinErrorEEB14_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.y, %bb.v, %bb.t, %bb.s, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io8blocking5StateNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !7
  switch i64 %i.a, label %bb.b [
    i64 -2, label %bb.g
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !198 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !199, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !200
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !198 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !199, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !201
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.b

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !alias.scope !202, !nonnull !7, !noundef !7 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val), !noalias !203
  br i1 %i.h, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val), !noalias !203
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit: ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io8blocking5StateNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StderrEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !7
  switch i64 %i.a, label %bb.b [
    i64 -2, label %bb.g
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !220 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !221, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !222
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !220 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !221, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !223
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.b

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !alias.scope !224, !nonnull !7, !noundef !7 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val), !noalias !225
  br i1 %i.h, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val), !noalias !225
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit: ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio2io8blocking5StateNtNtNtCsaL1QbXo9JQH_3std2io5stdio6StdoutEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !7
  switch i64 %i.a, label %bb.b [
    i64 -2, label %bb.g
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !242 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !243, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !244
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !242 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !243, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !245
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.b

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !alias.scope !246, !nonnull !7, !noundef !7 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %.val), !noalias !247
  br i1 %i.h, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %.val), !noalias !247
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEEB13_.exit: ; preds = %bb.a, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs8DirEntryECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !257, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !257
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !254, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !254 ; 2 uses
  store i8 0, ptr %.val2.i, align 1
  %i.f = icmp eq i64 %.val3.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECslghKHtsL3a4_5tokio.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i: ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val3.i, i64 noundef 1) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !254, !nonnull !7, !noundef !7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.h, align 8, !alias.scope !254 ; 2 uses
  store i8 0, ptr %.val.i, align 1
  %i.i = icmp eq i64 %.val1.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix8DirEntryECslghKHtsL3a4_5tokio.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix8DirEntryECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECslghKHtsL3a4_5tokio.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i.i, %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix8DirEntryECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirEECslghKHtsL3a4_5tokio.exit.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit
    i64 1, label %bb.c
  ], !prof !11

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !260
  store i8 3, ptr %i.a, align 8, !alias.scope !260
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio2io8blocking3BufEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !269 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !270, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !271
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !269 ; 2 uses
  %i.d = icmp eq i64 %.val.i, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !270, !nonnull !7, !noundef !7
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !272
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6DriverEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs2H62UwHeHv9_4libc4unix10linux_like11epoll_eventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !293 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.b, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !294, !nonnull !7, !noundef !7
  %i.d = mul nuw i64 %.val2.i.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !295
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !293 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !294, !nonnull !7, !noundef !7
  %i.g = mul nuw i64 %.val.i.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !296
  br label %bb.g

.body:                                            ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i32, ptr %i.h, align 8, !range !20, !alias.scope !297, !noundef !7
  %i.i = tail call noundef i32 @close(i32 noundef %.val1.i) #29 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load i32, ptr %i.j, align 8, !range !20, !noundef !7
  %i.k = tail call noundef i32 @close(i32 noundef %.val2) #29 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !300, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !300
  %i.n = icmp eq i64 %1, 1
  br i1 %i.n, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcuEECslghKHtsL3a4_5tokio.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcuE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcuEECslghKHtsL3a4_5tokio.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.o, align 8, !range !20, !alias.scope !297, !noundef !7
  %i.p = tail call noundef i32 @close(i32 noundef %.val.i) #29 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i32, ptr %i.q, align 8, !range !20, !noundef !7
  %i.r = tail call noundef i32 @close(i32 noundef %.val) #29 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !303, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !303
  %i.u = icmp eq i64 %2, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcuEECslghKHtsL3a4_5tokio.exit3

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcuE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcuEECslghKHtsL3a4_5tokio.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcuEECslghKHtsL3a4_5tokio.exit3: ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcuEECslghKHtsL3a4_5tokio.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io6driver6DriverEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs2H62UwHeHv9_4libc4unix10linux_like11epoll_eventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !314 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !315, !nonnull !7, !noundef !7
  %i.d = mul nuw i64 %.val2.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !316
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !314 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbPfeiB6icZG_3mio5event6events6EventsECslghKHtsL3a4_5tokio.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !315, !nonnull !7, !noundef !7
  %i.g = mul nuw i64 %.val.i.i, 12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !317
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbPfeiB6icZG_3mio5event6events6EventsECslghKHtsL3a4_5tokio.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbPfeiB6icZG_3mio5event6events6EventsECslghKHtsL3a4_5tokio.exit: ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i32, ptr %i.h, align 8, !range !20, !noundef !7
  %i.i = tail call noundef i32 @close(i32 noundef %.val) #29 ; 0 uses
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i32, ptr %i.j, align 8, !range !20, !noundef !7
  %i.k = tail call noundef i32 @close(i32 noundef %.val1) #29 ; 0 uses
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEENtNtCsaL1QbXo9JQH_3std2fs7ReadDirbEEB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB1a_2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !342 ; 2 uses
  %i.b = icmp eq i64 %.val2.i, 0
  br i1 %i.b, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.c, align 8, !alias.scope !343, !nonnull !7, !noundef !7
  %i.d = shl nuw i64 %.val2.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !344
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %0, align 8, !alias.scope !342 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEEB20_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !343, !nonnull !7, !noundef !7
  %i.g = shl nuw i64 %.val.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !345
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEEB20_.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !350, !nonnull !7, !noundef !7
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !350
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs7ReadDirECslghKHtsL3a4_5tokio.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs7ReadDirECslghKHtsL3a4_5tokio.exit unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEEB20_.exit: ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !355, !nonnull !7, !noundef !7
  %2 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !355
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs7ReadDirECslghKHtsL3a4_5tokio.exit1

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEEB20_.exit
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs7ReadDirECslghKHtsL3a4_5tokio.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs7ReadDirECslghKHtsL3a4_5tokio.exit1: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeINtNtB4_6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB4_2io5error5ErrorEEEB20_.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std2fs7ReadDirECslghKHtsL3a4_5tokio.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !9, !alias.scope !358, !noundef !7 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !358
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !358
  %i.j = load i64, ptr %i.a, align 8, !range !19, !noalias !358, !noundef !7
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !21, !noalias !358, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !358
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #26
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !358, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !358
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !358
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !358
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtCslghKHtsL3a4_5tokio2fs8read_dirNtB2_7ReadDir10next_chunk(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 2 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.p
  %.sroa.011.0 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.p ]
  %i.m = add nuw nsw i64 %.sroa.011.0, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXsz_NtCsaL1QbXo9JQH_3std2fsNtB5_7ReadDirNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  %i.n = load i64, ptr %i.f, align 8, !range !19, !noundef !7
  %i.o = trunc nuw i64 %i.n to i1                 ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.02.0.copyload = load ptr, ptr %i.g, align 8 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.p = icmp eq ptr %.sroa.02.0.copyload, null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br i1 %i.p, label %.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %.thread, %bb.d
  ret i1 %i.o

.thread:                                          ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  store ptr %.sroa.4.0.copyload, ptr %.sroa.516.0..sroa_idx, align 8
  store i32 2, ptr %i.e, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCslghKHtsL3a4_5tokio2fs8read_dir8DirEntryNtNtNtB1a_2io5error5ErrorEE13push_back_mutB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store ptr %.sroa.02.0.copyload, ptr %i.d, align 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !366
  invoke void @_RNvMsA_NtCsaL1QbXo9JQH_3std2fsNtB5_8DirEntry9file_type(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.f unwind label %bb.n, !noalias !367

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.c, align 8, !range !22, !noalias !366, !noundef !7 ; 2 uses
  %i.s = trunc nuw i32 %i.r to i1                 ; 2 uses
  %i.t = load i32, ptr %i.h, align 4, !noalias !366
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.val5.i = load ptr, ptr %i.i, align 8, !noalias !366, !nonnull !7, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !366
  %i.u = ptrtoint ptr %.val5.i to i64             ; 2 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8FileTypeNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.h
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8FileTypeNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.i
  ], !prof !11

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.w = icmp ult ptr %.val5.i, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.y)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8FileTypeNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %.val5.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  store ptr %i.z, ptr %i.j, align 8, !alias.scope !368, !noalias !366
  store i8 3, ptr %i.a, align 8, !alias.scope !368, !noalias !366
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8FileTypeNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.n, !noalias !367

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8FileTypeNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !366
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8FileTypeNtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !367
  store i64 1, ptr %i.b, align 8, !noalias !366
  store i64 1, ptr %i.l, align 8, !noalias !366
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !369
  %i.aa = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #29, !noalias !369 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %bb.p, !prof !23

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26
          to label %.noexc6.i unwind label %bb.l, !noalias !367

.noexc6.i:                                        ; preds = %bb.k
  unreachable

end_hunk_1
begin_hunk_2_@_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio:bb.a
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs5_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf12discard_read(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !498, !noundef !7 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !498, !noundef !7 ; 4 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf5bytes.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #23, !noalias !498
  unreachable

_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf5bytes.exit: ; preds = %bb.a
  %.neg = sub i64 %i.b, %i.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret i64 %.neg
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs5_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf14copy_from_bufs(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCslghKHtsL3a4_5tokio.exit
  %.sroa.0.08 = phi i64 [ %3, %.lr.ph ], [ %i.v, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCslghKHtsL3a4_5tokio.exit ] ; 3 uses
  %.sroa.04.07 = phi ptr [ %1, %.lr.ph ], [ %i.j, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCslghKHtsL3a4_5tokio.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  %i.k = icmp eq i64 %.sroa.0.08, 0
  br i1 %i.k, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCslghKHtsL3a4_5tokio.exit, %bb.d, %bb.c
  %.sroa.0.0.lcssa = phi i64 [ %3, %bb.c ], [ 0, %bb.d ], [ %i.v, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCslghKHtsL3a4_5tokio.exit ]
  %i.l = sub i64 %3, %.sroa.0.0.lcssa
  ret i64 %i.l

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !7 ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.08, i64 %i.n) ; 4 uses
  %i.o = load ptr, ptr %.sroa.04.07, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %..i)
  %i.p = load i64, ptr %i.a, align 8, !alias.scope !501, !noundef !7 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCslghKHtsL3a4_5tokio.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.i, align 8, !alias.scope !501, !nonnull !7, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.o, i64 %..i, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !501
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCslghKHtsL3a4_5tokio.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCslghKHtsL3a4_5tokio.exit: ; preds = %bb.e, %bb.f
  %i.t = phi i64 [ %.pre.i, %bb.f ], [ %i.p, %bb.e ]
  %i.u = add i64 %i.t, %..i
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !501
  %i.v = sub nuw i64 %.sroa.0.08, %..i            ; 2 uses
  %i.w = icmp eq ptr %i.j, %i.g
  br i1 %i.w, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCslghKHtsL3a4_5tokio2fs8read_dirNtB4_8DirEntry4path(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RNvMsA_NtCsaL1QbXo9JQH_3std2fsNtB5_8DirEntry4path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCslghKHtsL3a4_5tokio2fs8read_dirNtB4_8DirEntry9file_name(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RNvMsA_NtCsaL1QbXo9JQH_3std2fsNtB5_8DirEntry9file_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6signalNtB4_6Handle11check_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvMsK_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakuE12strong_countCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 18) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util3mem6duplex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 14 uses
  %i.b = alloca [104 x i8], align 8               ; 14 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 0, ptr %i.e, align 8
  %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.426.sroa.4.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.7.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %1, ptr %.sroa.426.sroa.7.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.8.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr null, ptr %.sroa.426.sroa.8.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.10.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr null, ptr %.sroa.426.sroa.10.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  %.sroa.426.sroa.12.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i8 0, ptr %.sroa.426.sroa.12.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !510
  %i.f = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef 8) #29, !noalias !510 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.f, !prof !23

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexNtNtNtNtB1n_2io4util3mem13SimplexStreamEEEB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b) #24
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.e, %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.o, %.body ], [ %i.o, %bb.e ]
  resume { ptr, i32 } %common.resume.op

.body:                                            ; preds = %bb.h
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !511
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.e, label %common.resume

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexNtNtNtNtBP_2io4util3mem13SimplexStreamEE9drop_slowBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #28
          to label %common.resume unwind label %bb.o

bb.f:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.438.sroa.5.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.438.sroa.5.0..sroa.438.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.l, align 8
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  %.sroa.438.sroa.6.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.438.sroa.6.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  %.sroa.438.sroa.7.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %1, ptr %.sroa.438.sroa.7.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  %.sroa.438.sroa.8.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %.sroa.438.sroa.8.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  %.sroa.438.sroa.10.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %.sroa.438.sroa.10.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  %.sroa.438.sroa.12.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 0, ptr %.sroa.438.sroa.12.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !512
  %i.m = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef 8) #29, !noalias !512 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.j, !prof !23

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #26
          to label %.noexc9 unwind label %bb.h

.noexc9:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtNtCslghKHtsL3a4_5tokio4loom3std11parking_lot5MutexNtNtNtNtB1n_2io4util3mem13SimplexStreamEEEB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a) #24
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  store ptr %i.f, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util3mem7simplex(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !515
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !alias.scope !515
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !515
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.b, align 8, !alias.scope !515
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %0, ptr %i.c, align 8, !alias.scope !515
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %i.d, align 8, !alias.scope !515
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.e, align 8, !alias.scope !515
  %i.f = call { ptr, ptr } @_RINvNtNtCslghKHtsL3a4_5tokio2io5split5splitNtNtNtB4_4util3mem13SimplexStreamEB6_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker10drop_waker(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask14drop_reference(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker11clone_waker(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4task5stateNtB2_5State7ref_inc(ptr noundef nonnull align 8 %0)
  %i.a = insertvalue { ptr, ptr } { ptr @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker12WAKER_VTABLE, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker11wake_by_ref(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask11wake_by_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime4task5waker11wake_by_val(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  call void @_RNvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask11wake_by_val(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXNtNtCslghKHtsL3a4_5tokio2io8blockingINtB2_8BlockingNtNtNtCsaL1QbXo9JQH_3std2io5stdio5StdinENtNtB4_10async_read9AsyncRead9poll_readB6_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.637 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 3 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 11 uses
  %.pr = load i64, ptr %0, align 8                ; 3 uses
  %i.h = icmp eq i64 %.pr, -2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.h, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.a
  %.val52.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.e

.lr.ph.split.us:                                  ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 5 uses
  %i.p = sub i64 %i.m, %i.o                       ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 2097152)
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  %.not.us = icmp eq i64 %.pr, -1
  br i1 %.not.us, label %.split.us, label %bb.b, !prof !23

bb.b:                                             ; preds = %.lr.ph.split.us
  store i64 %.pr, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.phi.trans.insert, i64 24, i1 false)
  %i.s = load i64, ptr %i.i, align 8, !noundef !7 ; 7 uses
end_hunk_2
