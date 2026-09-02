Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.08?download=true
inline.NumInlined: 381
inline.NumDeleted: 171
begin_hunk_0_@_RNvNtNtCslghKHtsL3a4_5tokio4time5sleep5sleep:bb.a
  store i64 2, ptr %i.w, align 8, !alias.scope !619, !noalias !624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !622
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.x = call { i64, i32 } @_RNvMNtNtCslghKHtsL3a4_5tokio4time7instantNtB2_7Instant10far_future() ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !628
  %i.y = call { i64, ptr } @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle7current(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3), !noalias !625 ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { i64, ptr } %i.y, 1       ; 4 uses
  store i64 %i.z, ptr %i.a, align 8, !noalias !628
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !628
  %i.ac = trunc nuw i64 %i.z to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %..i3 = select i1 %i.ac, i64 352, i64 560
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %..i3
  %i.ae = invoke noundef nonnull align 8 ptr @_RNvMs_NtNtCslghKHtsL3a4_5tokio7runtime6driverNtB4_6Handle4time(ptr noundef nonnull align 8 %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep11new_timeout.exit4 unwind label %bb.f, !noalias !625 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #25
          to label %common.resume unwind label %bb.g, !noalias !625

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !625
  unreachable

_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep11new_timeout.exit4: ; preds = %bb.e
  %i.ah = extractvalue { i64, i32 } %i.x, 1
  %i.ai = extractvalue { i64, i32 } %i.x, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ai, ptr %i.aj, align 8, !alias.scope !625, !noalias !630
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ah, ptr %i.ak, align 8, !alias.scope !625, !noalias !630
  store i64 %i.z, ptr %0, align 8, !alias.scope !625, !noalias !630
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.al, align 8, !alias.scope !625, !noalias !630
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.am, align 8, !alias.scope !625, !noalias !630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !628
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep11new_timeout.exit4, %_RNvMNtNtCslghKHtsL3a4_5tokio4time5sleepNtB2_5Sleep11new_timeout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define { i64, i64 } @_RNvNtNtCslghKHtsL3a4_5tokio4util6memchr6memchr(i8 noundef %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #10 {
bb.a:
  %i.a = zext i8 %0 to i32
  %i.b = tail call noundef ptr @memchr(ptr noundef nonnull readonly %1, i32 noundef %i.a, i64 noundef range(i64 0, -9223372036854775808) %2) #30, !alias.scope !631 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RNvNtNtCslghKHtsL3a4_5tokio4util6memchr12memchr_inner.exit, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE3getCslghKHtsL3a4_5tokio.exit

_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE3getCslghKHtsL3a4_5tokio.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %_RNvNtNtCslghKHtsL3a4_5tokio4util6memchr12memchr_inner.exit

_RNvNtNtCslghKHtsL3a4_5tokio4util6memchr12memchr_inner.exit: ; preds = %bb.a, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE3getCslghKHtsL3a4_5tokio.exit
  %.sroa.3.0.i8 = phi i64 [ %i.f, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE3getCslghKHtsL3a4_5tokio.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE3getCslghKHtsL3a4_5tokio.exit ], [ 0, %bb.a ]
  %i.h = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.i = insertvalue { i64, i64 } %i.h, i64 %.sroa.3.0.i8, 1
  ret { i64, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvNtNtCslghKHtsL3a4_5tokio6macros7support12thread_rng_n(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @_RNvNtNtCslghKHtsL3a4_5tokio7runtime7context12thread_rng_n(i32 noundef %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util9read_line18finish_string_read(i64 noundef range(i64 0, 2) %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(24) %4, i1 noundef zeroext %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = trunc nuw i64 %0 to i1
  %i.e = load i64, ptr %2, align 8, !range !634, !noundef !15
  %.not8 = icmp eq i64 %i.e, -1                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.l, label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call fastcc void @_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util9read_line22put_back_original_data(ptr noalias nofree noundef align 8 dereferenceable(24) %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.c)
  %i.f = call noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 34) #26
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.h, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.x, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8truncate.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit, %bb.d
  %.sroa.5.0 = phi ptr [ %1, %bb.x ], [ %1, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8truncate.exit ], [ %i.f, %bb.d ], [ %1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit ]
  %.sroa.06.0 = phi i64 [ 1, %bb.x ], [ 1, %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8truncate.exit ], [ 1, %bb.d ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit ]
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.06.0, 0
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.l

bb.j:                                             ; preds = %bb.t, %bb.w, %.body
  %.pn10 = phi { ptr, i32 } [ %i.ac, %bb.w ], [ %.pn, %bb.t ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util9read_line22put_back_original_data(ptr noalias nofree noundef align 8 dereferenceable(24) %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %3)
          to label %bb.x unwind label %bb.w

bb.l:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i14 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %.body15 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i14: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit17 unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i14
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body15

.body15:                                          ; preds = %bb.m, %bb.o
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.p, %bb.o ], [ %i.n, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit17: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br i1 %5, label %bb.p, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8truncate.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8truncate.exit: ; preds = %bb.p, %.split.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  br label %bb.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit17
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !15 ; 5 uses
  %i.s = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = sub nsw i64 %i.r, %3                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %.not.i = icmp ugt i64 %3, %i.r
  br i1 %.not.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8truncate.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = icmp ne i64 %i.r, %3
  %.not2.i = icmp samesign ult i64 %i.t, %i.r
  %or.cond.i = select i1 %i.u, i1 %.not2.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %.split.i

.split.i:                                         ; preds = %bb.r, %bb.q
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.t)
          to label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8truncate.exit unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !635, !nonnull !15, !noundef !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  %i.y = load i8, ptr %i.x, align 1, !noalias !635, !noundef !15
  %i.z = icmp sgt i8 %i.y, -65
  br i1 %i.z, label %.split.i, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
          to label %.noexc18 unwind label %bb.u

.noexc18:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.u, %.body15
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.u ], [ %eh.lpad-body16, %.body15 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %1) #25
          to label %bb.j unwind label %bb.v

bb.u:                                             ; preds = %bb.s, %.split.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.t, %bb.w
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.w:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslghKHtsL3a4_5tokio(ptr nonnull %1) #25
          to label %bb.j unwind label %bb.v

bb.x:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCslghKHtsL3a4_5tokio2io4util9read_line22put_back_original_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 6 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !15 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub i64 %i.e, %2
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.g)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !643
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !641, !noalias !638, !nonnull !15, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !641, !noalias !638, !noundef !15 ; 2 uses
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
          to label %bb.d unwind label %bb.c, !noalias !643

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %.thread18 unwind label %bb.e, !noalias !638

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.b, align 8, !range !14, !noalias !643, !noundef !15
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.f, label %.thread25

.thread25:                                        ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !alias.scope !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !638
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.p, align 8, !noalias !643
  %i.r = load i64, ptr %i.p, align 8, !noalias !643
  %.sroa.012.0.copyload = load i64, ptr %i.c, align 8, !noalias !638 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %.not.i = icmp eq i64 %.sroa.012.0.copyload, -1
  br i1 %.not.i, label %bb.k, label %bb.g, !prof !649

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !650
  store i64 %.sroa.012.0.copyload, ptr %i.a, align 8, !noalias !644
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !noalias !644
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x i64> %i.q, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx9.sroa_idx, align 8, !noalias !644
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 38, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #31
          to label %bb.i unwind label %bb.h, !noalias !650

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string13FromUtf8ErrorECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #25
          to label %.thread18 unwind label %bb.j, !noalias !650

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !650
  unreachable

bb.k:                                             ; preds = %bb.f, %.thread25
  %.sroa.6.sroa.6.0 = phi i64 [ %i.r, %bb.f ], [ %i.k, %.thread25 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !alias.scope !650
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.l
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.u, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.6.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %.thread18

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.6.0, ptr %.sroa.5.0..sroa_idx32, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

.thread18:                                        ; preds = %bb.c, %bb.h, %.thread, %bb.o
  %.pn17 = phi { ptr, i32 } [ %eh.lpad-body7, %.thread ], [ %i.x, %bb.o ], [ %i.s, %bb.h ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %.pn17

bb.o:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25
          to label %.thread18 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
end_hunk_0
