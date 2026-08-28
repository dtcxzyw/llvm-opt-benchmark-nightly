Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.00?download=true
inline.NumInlined: 2699
inline.NumDeleted: 496
begin_hunk_0_@_RINvXNvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs1_1__NtB8_9PackFrameNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB17_7Visitor11visit_bytesNtNtCs974quTetXso_9rmp_serde6decode5ErrorEBc_:bb.a
  %i.br = load i8, ptr %i.bq, align 1, !noundef !5
  %i.bs = icmp eq i8 %i.br, 115
  br i1 %i.bs, label %bb.ab, label %bb.d

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !5
  %i.bv = icmp eq i8 %i.bu, 105
  br i1 %i.bv, label %bb.ac, label %bb.d

bb.ac:                                            ; preds = %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !5
  %i.by = icmp eq i8 %i.bx, 122
  br i1 %i.by, label %bb.ad, label %bb.d

bb.ad:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !5
  %i.cb = icmp eq i8 %i.ca, 101
  br i1 %i.cb, label %bb.m, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvXNvXNvNtNtCskuiImRAV2ip_9elfshaker4repo4packs3_1__NtB8_10PackHeaderNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor11visit_bytesNtNtCs974quTetXso_9rmp_serde6decode5ErrorEBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  switch i64 %2, label %bb.d [
    i64 5, label %bb.b
    i64 6, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !noundef !5
  %i.b = icmp eq i8 %i.a, 109
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !noundef !5
  %i.e = icmp eq i8 %i.d, 97
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 1, !noundef !5
  %i.h = icmp eq i8 %i.g, 103
  br i1 %i.h, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !noundef !5
  %i.k = icmp eq i8 %i.j, 105
  br i1 %i.k, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 1, !noundef !5
  %i.n = icmp eq i8 %i.m, 99
  br i1 %i.n, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g, %bb.n, %bb.d
  %.sink = phi i8 [ 2, %bb.d ], [ 1, %bb.n ], [ 0, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink, ptr %i.o, align 1
  store i8 -1, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.a
  %i.p = load i8, ptr %1, align 1, !noundef !5
  %i.q = icmp eq i8 %i.p, 102
  br i1 %i.q, label %bb.j, label %bb.d

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = load i8, ptr %i.r, align 1, !noundef !5
  %i.t = icmp eq i8 %i.s, 114
  br i1 %i.t, label %bb.k, label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i8, ptr %i.u, align 1, !noundef !5
  %i.w = icmp eq i8 %i.v, 97
  br i1 %i.w, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.y = load i8, ptr %i.x, align 1, !noundef !5
  %i.z = icmp eq i8 %i.y, 109
  br i1 %i.z, label %bb.m, label %bb.d

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !5
  %i.ac = icmp eq i8 %i.ab, 101
  br i1 %i.ac, label %bb.n, label %bb.d

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !5
  %i.af = icmp eq i8 %i.ae, 115
  br i1 %i.af, label %bb.h, label %bb.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs_NtCs974quTetXso_9rmp_serde6decodeNtB5_5ErrorNtNtCs6LlcditsbhK_5serde2de5Error6customNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !91
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !99, !noalias !91, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !100, !noalias !91, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i, !prof !101

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8, !noalias !91
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #14
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %bb.b
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !noalias !91, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = icmp ule i64 %.val1, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !91
  %.not.i.i.i = icmp eq i64 %.val1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val1, i1 false), !noalias !102
  br label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #13
          to label %common.resume unwind label %bb.g

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 6, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit unwind label %bb.e

bb.e:                                             ; preds = %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit: ; preds = %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvXs_NtCs974quTetXso_9rmp_serde6decodeNtB5_5ErrorNtNtCs6LlcditsbhK_5serde2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %3 = trunc i64 %i.c to i1
  %i.d = lshr i64 %i.c, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  br i1 %3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !121
  %i.e = load i64, ptr %i.a, align 8, !range !99, !noalias !121, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !100, !noalias !121, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i, !prof !101

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !noalias !121
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #14, !noalias !121
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !noalias !121, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCskuiImRAV2ip_9elfshaker.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !128
  br label %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCskuiImRAV2ip_9elfshaker.exit.i.i.i.i

_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCskuiImRAV2ip_9elfshaker.exit.i.i.i.i: ; preds = %bb.d, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i.i.i
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !129, !noalias !130
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !129, !noalias !130
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !129, !noalias !130
  br label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %2), !noalias !131
  br label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit: ; preds = %_RNvYNvYeNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTReEE9call_onceCskuiImRAV2ip_9elfshaker.exit.i.i.i.i, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs_NtCs974quTetXso_9rmp_serde6decodeNtB5_5ErrorNtNtCs6LlcditsbhK_5serde2de5Error6customReECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !132
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !132
  %i.b = load i64, ptr %i.a, align 8, !range !99, !noalias !132, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !100, !noalias !132, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i, !prof !101

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !132
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #14, !noalias !132
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !132, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !132
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !140
  br label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringReNtB5_8ToString9to_stringCskuiImRAV2ip_9elfshaker.exit: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i.i, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyINtNtB2O_5impls12ArrayVisitorAhj14_EECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 20 uses
  %i.b = alloca [2 x i8], align 2                 ; 6 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 20 uses
  %i.as = alloca [2 x i8], align 2                ; 6 uses
  %i.at = alloca [4 x i8], align 4                ; 6 uses
  %.sroa.420.i = alloca [23 x i8], align 1        ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [2 x i8], align 2                ; 6 uses
  %i.ax = alloca [1 x i8], align 1                ; 6 uses
  %i.ay = alloca [4 x i8], align 4                ; 6 uses
  %i.az = alloca [2 x i8], align 2                ; 6 uses
  %i.ba = alloca [1 x i8], align 1                ; 6 uses
  %i.bb = alloca [4 x i8], align 4                ; 6 uses
  %i.bc = alloca [8 x i8], align 8                ; 5 uses
  %i.bd = alloca [4 x i8], align 4                ; 6 uses
  %i.be = alloca [2 x i8], align 2                ; 6 uses
  %i.bf = alloca [8 x i8], align 8                ; 5 uses
  %i.bg = alloca [4 x i8], align 4                ; 6 uses
  %i.bh = alloca [2 x i8], align 2                ; 6 uses
  %i.bi = alloca [8 x i8], align 8                ; 5 uses
  %i.bj = alloca [4 x i8], align 4                ; 6 uses
  %i.bk = alloca [1 x i8], align 1                ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 9 uses
  %i.bn = alloca [16 x i8], align 8               ; 8 uses
  %i.bo = alloca [16 x i8], align 8               ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !range !141, !noundef !5 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.bs = load i8, ptr %i.br, align 1
  store i8 1, ptr %i.bp, align 8
  %.not.i = icmp eq i8 %i.bq, 1
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !142
  store i8 0, ptr %i.bk, align 1, !noalias !142
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = call noundef ptr @_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_4read4Read10read_exactCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noalias nofree noundef nonnull %i.bk, i64 noundef range(i64 1, 9) 1), !noalias !153 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.bv = load i8, ptr %i.bk, align 1, !noalias !142, !noundef !5 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !142
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bx = icmp samesign ugt i8 %i.bv, -33
  br i1 %i.bx, label %.thread1014, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = icmp samesign ult i8 %i.bv, -112
  br i1 %i.by, label %.thread1022, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = icmp samesign ult i8 %i.bv, -96
  br i1 %i.bz, label %.thread1018, label %bb.g

.thread1022:                                      ; preds = %bb.e
  %i.ca = and i8 %i.bv, 15
  br label %bb.fw

end_hunk_0
begin_hunk_1_@_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtB3P_12FileMetadataNtB2O_11Deserialize11deserialize9___VisitorEB3R_:bb.a
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !5
  %i.ex = add i64 %i.ew, -1                       ; 2 uses
  store i64 %i.ex, ptr %i.ev, align 8
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.cb, label %bb.cc

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2022
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu
  %.val.i784 = load i16, ptr %i.j, align 2, !noalias !2022
  %i.ez = call noundef i16 @llvm.bswap.i16(i16 %.val.i784)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2022
  %i.fa = zext i16 %i.ez to i32
  br label %bb.bv

bb.by:                                            ; preds = %bb.bz, %bb.bw
  %.sroa.13.sroa.0.0 = phi ptr [ %i.er, %bb.bz ], [ %i.eu, %bb.bw ]
  store i8 1, ptr %0, align 8
  %.sroa.7555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13.sroa.0.0, ptr %.sroa.7555.0..sroa_idx, align 8
  br label %bb.y

bb.bz:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2017
  br label %bb.by

bb.ca:                                            ; preds = %bb.bs
  %.val.i780 = load i32, ptr %i.k, align 4, !noalias !2017
  %i.fb = call noundef i32 @llvm.bswap.i32(i32 %.val.i780)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2017
  br label %bb.bv

bb.cb:                                            ; preds = %bb.bv
  store i8 8, ptr %0, align 8
  br label %bb.y

bb.cc:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %.not.i.i.i = icmp eq i32 %.sroa.9201.0, 0
  br i1 %.not.i.i.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2030
  call void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXs16_NtB2O_5implsmNtB2O_11Deserialize11deserialize16PrimitiveVisitorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) #15, !noalias !2038
  %i.fc = load i8, ptr %i.i, align 8, !range !154, !noalias !2030, !noundef !5 ; 2 uses
  %.not21.i.i.i = icmp eq i8 %i.fc, -1
  br i1 %.not21.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.424.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.414.0..sroa_idx.i.i.i, i64 3, i1 false), !noalias !2039
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.19.8..sroa.616.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.727.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.19.8..sroa.616.0..sroa_idx.i.i.sroa_idx.i, i64 20, i1 false), !noalias !2039
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fd = load <2 x i32>, ptr %.sroa.515.0..sroa_idx.i.i.i, align 4, !noalias !2040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2030
  store i8 %i.fc, ptr %0, align 8, !alias.scope !2027, !noalias !2039
  store <2 x i32> %i.fd, ptr %.sroa.525.0..sroa_idx.i, align 4, !alias.scope !2027, !noalias !2039
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.cf:                                            ; preds = %bb.cd
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !noalias !2030, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2030
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ff, ptr %i.fg, align 4, !alias.scope !2027, !noalias !2039
  store i8 -1, ptr %0, align 8, !alias.scope !2027, !noalias !2039
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.cg:                                            ; preds = %bb.cc
  call fastcc void @_RNvYNtNtCs974quTetXso_9rmp_serde6decode5ErrorNtNtCs6LlcditsbhK_5serde2de5Error14invalid_lengthCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17), !noalias !2039
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit

_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit: ; preds = %bb.ce, %bb.cg, %bb.cf
  %i.fh = load i64, ptr %i.ev, align 8, !noundef !5
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.ev, align 8
  br label %bb.y

bb.ch:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2041
  store i32 0, ptr %i.h, align 4, !noalias !2041
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = call noundef ptr @_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_4read4Read10read_exactCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noalias nofree noundef nonnull %i.h, i64 noundef 4), !noalias !2045 ; 2 uses
  %.not.i786 = icmp eq ptr %i.fk, null
  br i1 %.not.i786, label %bb.cp, label %bb.co

bb.ci:                                            ; preds = %.thread1026, %bb.i
  %.sroa.8800.0.ph1029 = phi i8 [ %i.ar, %.thread1026 ], [ %.sroa.8800.0.ph, %bb.i ]
  %i.fl = zext i8 %.sroa.8800.0.ph1029 to i32
  br label %bb.ck

bb.cj:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2046
  store i16 0, ptr %i.g, align 2, !noalias !2046
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fn = call noundef ptr @_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_4read4Read10read_exactCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.fm, ptr noalias nofree noundef nonnull %i.g, i64 noundef 2), !noalias !2050 ; 2 uses
  %.not.i790 = icmp eq ptr %i.fn, null
  br i1 %.not.i790, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %bb.cp, %bb.cm, %bb.ci
  %.sroa.9248.0 = phi i32 [ %i.fu, %bb.cp ], [ %i.fl, %bb.ci ], [ %i.ft, %bb.cm ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !5
  %i.fq = add i64 %i.fp, -1                       ; 2 uses
  store i64 %i.fq, ptr %i.fo, align 8
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.cq, label %bb.cr

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2046
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cj
  %.val.i792 = load i16, ptr %i.g, align 2, !noalias !2046
  %i.fs = call noundef i16 @llvm.bswap.i16(i16 %.val.i792)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2046
  %i.ft = zext i16 %i.fs to i32
  br label %bb.ck

bb.cn:                                            ; preds = %bb.co, %bb.cl
  %.sroa.13253.sroa.0.0 = phi ptr [ %i.fk, %bb.co ], [ %i.fn, %bb.cl ]
  store i8 1, ptr %0, align 8
  %.sroa.7599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13253.sroa.0.0, ptr %.sroa.7599.0..sroa_idx, align 8
  br label %bb.y

bb.co:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2041
  br label %bb.cn

bb.cp:                                            ; preds = %bb.ch
  %.val.i788 = load i32, ptr %i.h, align 4, !noalias !2041
  %i.fu = call noundef i32 @llvm.bswap.i32(i32 %.val.i788)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2041
  br label %bb.ck

bb.cq:                                            ; preds = %bb.ck
  store i8 8, ptr %0, align 8
  br label %bb.y

bb.cr:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  %.not.i.i133.i = icmp eq i32 %.sroa.9248.0, 0
  br i1 %.not.i.i133.i, label %.loopexit.i.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cr
  %i.fv = zext i32 %.sroa.9248.0 to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.db, %.lr.ph.i
  %.sroa.08.0136.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.08.1.i, %bb.db ] ; 3 uses
  %.sroa.410.0135.i = phi i32 [ undef, %.lr.ph.i ], [ %.sroa.410.1.i, %bb.db ] ; 2 uses
  %.sroa.4.0134.i = phi i64 [ %i.fv, %.lr.ph.i ], [ %i.fy, %bb.db ]
  %i.fy = add nsw i64 %.sroa.4.0134.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2054
  call void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtB3P_12FileMetadataNtB2O_11Deserialize11deserialize14___FieldVisitorEB3R_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) #15, !noalias !2062
  %i.fz = load i8, ptr %i.e, align 8, !range !154, !noalias !2054, !noundef !5 ; 2 uses
  %.not15.i.i.i = icmp eq i8 %i.fz, -1
  %i.ga = load i8, ptr %i.fw, align 1, !noalias !2054 ; 2 uses
  br i1 %.not15.i.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.546.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.511.0..sroa_idx.i.i.i, i64 30, i1 false), !noalias !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2054
  store i8 %i.fz, ptr %0, align 8, !alias.scope !2051, !noalias !2063
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ga, ptr %.sroa.445.0..sroa_idx.i, align 1, !alias.scope !2051, !noalias !2063
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2054
  switch i8 %i.ga, label %bb.cv [
    i8 2, label %.loopexit.i
    i8 0, label %bb.cw
  ]

.loopexit.i:                                      ; preds = %bb.db, %bb.cu
  %.sroa.410.0121.i = phi i32 [ %.sroa.410.0135.i, %bb.cu ], [ %.sroa.410.1.i, %bb.db ]
  %.sroa.08.0115.i = phi i32 [ %.sroa.08.0136.i, %bb.cu ], [ %.sroa.08.1.i, %bb.db ]
  %i.gb = trunc nuw i32 %.sroa.08.0115.i to i1
  br i1 %i.gb, label %bb.dg, label %.loopexit.i.thread

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2064
  call void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNtB2O_11ignored_any10IgnoredAnyECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) #15, !noalias !2069, !inline_history !2070
  %i.gc = load i8, ptr %i.d, align 8, !range !154, !noalias !2064, !noundef !5 ; 2 uses
  %.not.i.i77.i.a = icmp eq i8 %i.gc, -1
  br i1 %.not.i.i77.i.a, label %bb.dd, label %bb.dc

bb.cw:                                            ; preds = %bb.cu
  %2 = trunc nuw i32 %.sroa.08.0136.i to i1
  br i1 %2, label %bb.cy, label %bb.cx, !prof !101

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2071
  call void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXs16_NtB2O_5implsmNtB2O_11Deserialize11deserialize16PrimitiveVisitorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) #15, !noalias !2076
  %i.gd = load i8, ptr %i.c, align 8, !range !154, !noalias !2071, !noundef !5 ; 2 uses
  %.not.i.i78.i = icmp eq i8 %i.gd, -1
  br i1 %.not.i.i78.i, label %bb.da, label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2077
  store ptr @0, ptr %i.b, align 8, !noalias !2078
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4, ptr %i.ge, align 8, !noalias !2078
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2078
  store ptr %i.b, ptr %i.a, align 8, !noalias !2078
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCskuiImRAV2ip_9elfshaker, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2078
  call fastcc void @_RINvXs_NtCs974quTetXso_9rmp_serde6decodeNtB5_5ErrorNtNtCs6LlcditsbhK_5serde2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull @51, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2077
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.cz:                                            ; preds = %bb.cx
  %.sroa.414.0..sroa_idx.i.i.i794 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.456.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.414.0..sroa_idx.i.i.i794, i64 3, i1 false), !noalias !2063
  %.sroa.515.0.copyload.i.i.i795 = load i32, ptr %i.fx, align 4, !noalias !2071
  %.sroa.616.0..sroa_idx.i.i.i796 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.658.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.0..sroa_idx.i.i.i796, i64 24, i1 false), !noalias !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2071
  store i8 %i.gd, ptr %0, align 8, !alias.scope !2051, !noalias !2063
  %.sroa.557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.515.0.copyload.i.i.i795, ptr %.sroa.557.0..sroa_idx.i, align 4, !alias.scope !2051, !noalias !2063
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.da:                                            ; preds = %bb.cx
  %i.gf = load i32, ptr %i.fx, align 4, !noalias !2071, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2071
  br label %bb.db

bb.db:                                            ; preds = %bb.dd, %bb.da
  %.sroa.410.1.i = phi i32 [ %.sroa.410.0135.i, %bb.dd ], [ %i.gf, %bb.da ] ; 2 uses
  %.sroa.08.1.i = phi i32 [ %.sroa.08.0136.i, %bb.dd ], [ 1, %bb.da ] ; 2 uses
  %.not.i.i.i797 = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i797, label %.loopexit.i, label %bb.cs

bb.dc:                                            ; preds = %bb.cv
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.499.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.47.0..sroa_idx.i.i.i, i64 31, i1 false), !noalias !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2064
  store i8 %i.gc, ptr %0, align 8, !alias.scope !2051, !noalias !2063
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.dd:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2064
  br label %bb.db

.loopexit.i.thread:                               ; preds = %bb.cr, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2077
  call void @_RINvXNvNtNtCs6LlcditsbhK_5serde9___private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs974quTetXso_9rmp_serde6decode5ErrorENtNtB9_2de12Deserializer15deserialize_anyNtNvXs16_NtB2a_5implsmNtB2a_11Deserialize11deserialize16PrimitiveVisitorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 4), !noalias !2051
  %i.gg = load i8, ptr %i.f, align 8, !range !154, !noalias !2077, !noundef !5 ; 2 uses
  %.not72.i = icmp eq i8 %i.gg, -1
  br i1 %.not72.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.loopexit.i.thread
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.468.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.464.0..sroa_idx.i, i64 3, i1 false), !noalias !2063
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.565.0.copyload.i = load i32, ptr %.sroa.565.0..sroa_idx.i, align 4, !noalias !2077
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.670.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.670.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666.0..sroa_idx.i, i64 24, i1 false), !noalias !2063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2077
  store i8 %i.gg, ptr %0, align 8, !alias.scope !2051, !noalias !2063
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.565.0.copyload.i, ptr %.sroa.569.0..sroa_idx.i, align 4, !alias.scope !2051, !noalias !2063
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.df:                                            ; preds = %.loopexit.i.thread
  %i.gh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !noalias !2077, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2077
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.loopexit.i
  %.sroa.037.0.i = phi i32 [ %i.gi, %bb.df ], [ %.sroa.410.0121.i, %.loopexit.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.037.0.i, ptr %i.gj, align 4, !alias.scope !2051, !noalias !2063
  store i8 -1, ptr %0, align 8, !alias.scope !2051, !noalias !2063
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit

_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2I_6config13DefaultConfigEEBd_.exit: ; preds = %bb.ct, %bb.cy, %bb.cz, %bb.dc, %bb.de, %bb.dg
  %i.gk = load i64, ptr %i.fo, align 8, !noundef !5
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.fo, align 8
  br label %bb.y
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXNvNtCskuiImRAV2ip_9elfshaker7packidxs3_1__INtB3P_9ChangeSetpENtB2O_11Deserialize11deserialize14___FieldVisitorEB3R_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [2 x i8], align 2                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [2 x i8], align 2                 ; 6 uses
  %i.g = alloca [1 x i8], align 1                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 6 uses
  %i.i = alloca [2 x i8], align 2                 ; 6 uses
  %i.j = alloca [1 x i8], align 1                 ; 6 uses
  %i.k = alloca [4 x i8], align 4                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 6 uses
  %i.n = alloca [2 x i8], align 2                 ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 6 uses
  %i.q = alloca [2 x i8], align 2                 ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [4 x i8], align 4                 ; 6 uses
  %i.t = alloca [1 x i8], align 1                 ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !141, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.ab = load i8, ptr %i.aa, align 1
  store i8 1, ptr %i.y, align 8
  %.not.i = icmp eq i8 %i.z, 1
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2082
  store i8 0, ptr %i.t, align 1, !noalias !2082
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = call noundef ptr @_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB9_4read4Read10read_exactCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias nofree noundef nonnull %i.t, i64 noundef range(i64 1, 9) 1), !noalias !2093 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ae = load i8, ptr %i.t, align 1, !noalias !2082, !noundef !5 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2082
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp samesign ugt i8 %i.ae, -33
  br i1 %i.ag, label %.thread1013, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i8 %i.ae, -112
  br i1 %i.ah, label %.thread1021, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i8 %i.ae, -96
  br i1 %i.ai, label %.thread1017, label %bb.g

.thread1021:                                      ; preds = %bb.e
  %i.aj = and i8 %i.ae, 15
  br label %bb.cr

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i8 %i.ae, -64
  %i.al = and i8 %i.ae, 31                        ; 2 uses
  br i1 %i.ak, label %.thread1025, label %bb.i

.thread1017:                                      ; preds = %bb.f
  %i.am = and i8 %i.ae, 15
  br label %bb.cg

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2082
  store i8 0, ptr %0, align 8
  %.sroa.4842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.4842.0..sroa_idx, align 8
  br label %_RINvMsc_NtCs974quTetXso_9rmp_serde6decodeINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEE13read_str_dataNtNvXNvNtCskuiImRAV2ip_9elfshaker7packidxs3_1__INtB37_9ChangeSetpENtNtCs6LlcditsbhK_5serde2de11Deserialize11deserialize14___FieldVisitorEB39_.exit

bb.i:                                             ; preds = %bb.g, %bb.a
  %.sroa.8795.0.ph = phi i8 [ %i.al, %bb.g ], [ %i.ab, %bb.a ] ; 6 uses
  %.sroa.5.0.ph = phi i8 [ %i.ae, %bb.g ], [ %i.z, %bb.a ] ; 3 uses
  switch i8 %.sroa.5.0.ph, label %bb.j [
    i8 0, label %.thread
    i8 -32, label %.thread1013
    i8 -33, label %bb.cq
    i8 -34, label %bb.cs
    i8 -35, label %bb.cf
    i8 -64, label %bb.k
    i8 -63, label %bb.l
    i8 -62, label %bb.m
    i8 -61, label %bb.m
    i8 -37, label %bb.bb
    i8 -38, label %bb.bd
    i8 -39, label %bb.bc
    i8 -57, label %bb.n
    i8 -56, label %bb.n
end_hunk_1
begin_hunk_2_@_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtB3o_12FileMetadataNtB2n_11Deserialize11deserialize9___VisitorEB3q_:bb.a
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !5
  %i.ex = add i64 %i.ew, -1                       ; 2 uses
  store i64 %i.ex, ptr %i.ev, align 8
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.cb, label %bb.cc

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5390
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu
  %.val.i784 = load i16, ptr %i.j, align 2, !noalias !5390
  %i.ez = call noundef i16 @llvm.bswap.i16(i16 %.val.i784)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5390
  %i.fa = zext i16 %i.ez to i32
  br label %bb.bv

bb.by:                                            ; preds = %bb.bz, %bb.bw
  %.sroa.13.sroa.0.0 = phi ptr [ %i.er, %bb.bz ], [ %i.eu, %bb.bw ]
  store i8 1, ptr %0, align 8
  %.sroa.7555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13.sroa.0.0, ptr %.sroa.7555.0..sroa_idx, align 8
  br label %bb.y

bb.bz:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5385
  br label %bb.by

bb.ca:                                            ; preds = %bb.bs
  %.val.i780 = load i32, ptr %i.k, align 4, !noalias !5385
  %i.fb = call noundef i32 @llvm.bswap.i32(i32 %.val.i780)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5385
  br label %bb.bv

bb.cb:                                            ; preds = %bb.bv
  store i8 8, ptr %0, align 8
  br label %bb.y

bb.cc:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !5395)
  %.not.i.i.i = icmp eq i32 %.sroa.9201.0, 0
  br i1 %.not.i.i.i, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5398
  call void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXs16_NtB2n_5implsmNtB2n_11Deserialize11deserialize16PrimitiveVisitorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #15, !noalias !5406
  %i.fc = load i8, ptr %i.i, align 8, !range !154, !noalias !5398, !noundef !5 ; 2 uses
  %.not21.i.i.i = icmp eq i8 %i.fc, -1
  br i1 %.not21.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.424.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.414.0..sroa_idx.i.i.i, i64 3, i1 false), !noalias !5407
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.19.8..sroa.616.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.727.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.727.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.19.8..sroa.616.0..sroa_idx.i.i.sroa_idx.i, i64 20, i1 false), !noalias !5407
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fd = load <2 x i32>, ptr %.sroa.515.0..sroa_idx.i.i.i, align 4, !noalias !5408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5398
  store i8 %i.fc, ptr %0, align 8, !alias.scope !5395, !noalias !5407
  store <2 x i32> %i.fd, ptr %.sroa.525.0..sroa_idx.i, align 4, !alias.scope !5395, !noalias !5407
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.cf:                                            ; preds = %bb.cd
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !noalias !5398, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5398
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ff, ptr %i.fg, align 4, !alias.scope !5395, !noalias !5407
  store i8 -1, ptr %0, align 8, !alias.scope !5395, !noalias !5407
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.cg:                                            ; preds = %bb.cc
  call fastcc void @_RNvYNtNtCs974quTetXso_9rmp_serde6decode5ErrorNtNtCs6LlcditsbhK_5serde2de5Error14invalid_lengthCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17), !noalias !5407
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit

_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit: ; preds = %bb.ce, %bb.cg, %bb.cf
  %i.fh = load i64, ptr %i.ev, align 8, !noundef !5
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.ev, align 8
  br label %bb.y

bb.ch:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5409
  store i32 0, ptr %i.h, align 4, !noalias !5409
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fk = call noundef ptr @_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_4read4Read10read_exactCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fj, ptr noalias nofree noundef nonnull %i.h, i64 noundef 4), !noalias !5413 ; 2 uses
  %.not.i786 = icmp eq ptr %i.fk, null
  br i1 %.not.i786, label %bb.cp, label %bb.co

bb.ci:                                            ; preds = %.thread1026, %bb.i
  %.sroa.8800.0.ph1029 = phi i8 [ %i.ar, %.thread1026 ], [ %.sroa.8800.0.ph, %bb.i ]
  %i.fl = zext i8 %.sroa.8800.0.ph1029 to i32
  br label %bb.ck

bb.cj:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5414
  store i16 0, ptr %i.g, align 2, !noalias !5414
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fn = call noundef ptr @_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_4read4Read10read_exactCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fm, ptr noalias nofree noundef nonnull %i.g, i64 noundef 2), !noalias !5418 ; 2 uses
  %.not.i790 = icmp eq ptr %i.fn, null
  br i1 %.not.i790, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %bb.cp, %bb.cm, %bb.ci
  %.sroa.9248.0 = phi i32 [ %i.fu, %bb.cp ], [ %i.fl, %bb.ci ], [ %i.ft, %bb.cm ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !5
  %i.fq = add i64 %i.fp, -1                       ; 2 uses
  store i64 %i.fq, ptr %i.fo, align 8
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.cq, label %bb.cr

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5414
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cj
  %.val.i792 = load i16, ptr %i.g, align 2, !noalias !5414
  %i.fs = call noundef i16 @llvm.bswap.i16(i16 %.val.i792)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5414
  %i.ft = zext i16 %i.fs to i32
  br label %bb.ck

bb.cn:                                            ; preds = %bb.co, %bb.cl
  %.sroa.13253.sroa.0.0 = phi ptr [ %i.fk, %bb.co ], [ %i.fn, %bb.cl ]
  store i8 1, ptr %0, align 8
  %.sroa.7599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13253.sroa.0.0, ptr %.sroa.7599.0..sroa_idx, align 8
  br label %bb.y

bb.co:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5409
  br label %bb.cn

bb.cp:                                            ; preds = %bb.ch
  %.val.i788 = load i32, ptr %i.h, align 4, !noalias !5409
  %i.fu = call noundef i32 @llvm.bswap.i32(i32 %.val.i788)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5409
  br label %bb.ck

bb.cq:                                            ; preds = %bb.ck
  store i8 8, ptr %0, align 8
  br label %bb.y

bb.cr:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !5419)
  %.not.i.i133.i = icmp eq i32 %.sroa.9248.0, 0
  br i1 %.not.i.i133.i, label %.loopexit.i.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cr
  %i.fv = zext i32 %.sroa.9248.0 to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.db, %.lr.ph.i
  %.sroa.08.0136.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.08.1.i, %bb.db ] ; 3 uses
  %.sroa.410.0135.i = phi i32 [ undef, %.lr.ph.i ], [ %.sroa.410.1.i, %bb.db ] ; 2 uses
  %.sroa.4.0134.i = phi i64 [ %i.fv, %.lr.ph.i ], [ %i.fy, %bb.db ]
  %i.fy = add nsw i64 %.sroa.4.0134.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5422
  call void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtB3o_12FileMetadataNtB2n_11Deserialize11deserialize14___FieldVisitorEB3q_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #15, !noalias !5430
  %i.fz = load i8, ptr %i.e, align 8, !range !154, !noalias !5422, !noundef !5 ; 2 uses
  %.not15.i.i.i = icmp eq i8 %i.fz, -1
  %i.ga = load i8, ptr %i.fw, align 1, !noalias !5422 ; 2 uses
  br i1 %.not15.i.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.546.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.511.0..sroa_idx.i.i.i, i64 30, i1 false), !noalias !5431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5422
  store i8 %i.fz, ptr %0, align 8, !alias.scope !5419, !noalias !5431
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ga, ptr %.sroa.445.0..sroa_idx.i, align 1, !alias.scope !5419, !noalias !5431
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5422
  switch i8 %i.ga, label %bb.cv [
    i8 2, label %.loopexit.i
    i8 0, label %bb.cw
  ]

.loopexit.i:                                      ; preds = %bb.db, %bb.cu
  %.sroa.410.0121.i = phi i32 [ %.sroa.410.0135.i, %bb.cu ], [ %.sroa.410.1.i, %bb.db ]
  %.sroa.08.0115.i = phi i32 [ %.sroa.08.0136.i, %bb.cu ], [ %.sroa.08.1.i, %bb.db ]
  %i.gb = trunc nuw i32 %.sroa.08.0115.i to i1
  br i1 %i.gb, label %bb.dg, label %.loopexit.i.thread

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5432
  call void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNtB2n_11ignored_any10IgnoredAnyECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #15, !noalias !5437, !inline_history !5438
  %i.gc = load i8, ptr %i.d, align 8, !range !154, !noalias !5432, !noundef !5 ; 2 uses
  %.not.i.i77.i.a = icmp eq i8 %i.gc, -1
  br i1 %.not.i.i77.i.a, label %bb.dd, label %bb.dc

bb.cw:                                            ; preds = %bb.cu
  %2 = trunc nuw i32 %.sroa.08.0136.i to i1
  br i1 %2, label %bb.cy, label %bb.cx, !prof !101

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5439
  call void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXs16_NtB2n_5implsmNtB2n_11Deserialize11deserialize16PrimitiveVisitorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #15, !noalias !5444
  %i.gd = load i8, ptr %i.c, align 8, !range !154, !noalias !5439, !noundef !5 ; 2 uses
  %.not.i.i78.i = icmp eq i8 %i.gd, -1
  br i1 %.not.i.i78.i, label %bb.da, label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5445
  store ptr @0, ptr %i.b, align 8, !noalias !5446
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 4, ptr %i.ge, align 8, !noalias !5446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5446
  store ptr %i.b, ptr %i.a, align 8, !noalias !5446
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCskuiImRAV2ip_9elfshaker, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5446
  call fastcc void @_RINvXs_NtCs974quTetXso_9rmp_serde6decodeNtB5_5ErrorNtNtCs6LlcditsbhK_5serde2de5Error6customNtNtCs3oUPovFnLWP_4core3fmt9ArgumentsECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull @51, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5445
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.cz:                                            ; preds = %bb.cx
  %.sroa.414.0..sroa_idx.i.i.i794 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.456.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.414.0..sroa_idx.i.i.i794, i64 3, i1 false), !noalias !5431
  %.sroa.515.0.copyload.i.i.i795 = load i32, ptr %i.fx, align 4, !noalias !5439
  %.sroa.616.0..sroa_idx.i.i.i796 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.658.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.0..sroa_idx.i.i.i796, i64 24, i1 false), !noalias !5431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5439
  store i8 %i.gd, ptr %0, align 8, !alias.scope !5419, !noalias !5431
  %.sroa.557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.515.0.copyload.i.i.i795, ptr %.sroa.557.0..sroa_idx.i, align 4, !alias.scope !5419, !noalias !5431
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.da:                                            ; preds = %bb.cx
  %i.gf = load i32, ptr %i.fx, align 4, !noalias !5439, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5439
  br label %bb.db

bb.db:                                            ; preds = %bb.dd, %bb.da
  %.sroa.410.1.i = phi i32 [ %.sroa.410.0135.i, %bb.dd ], [ %i.gf, %bb.da ] ; 2 uses
  %.sroa.08.1.i = phi i32 [ %.sroa.08.0136.i, %bb.dd ], [ 1, %bb.da ] ; 2 uses
  %.not.i.i.i797 = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i797, label %.loopexit.i, label %bb.cs

bb.dc:                                            ; preds = %bb.cv
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.499.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.47.0..sroa_idx.i.i.i, i64 31, i1 false), !noalias !5431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5432
  store i8 %i.gc, ptr %0, align 8, !alias.scope !5419, !noalias !5431
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.dd:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5432
  br label %bb.db

.loopexit.i.thread:                               ; preds = %bb.cr, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5445
  call void @_RINvXNvNtNtCs6LlcditsbhK_5serde9___private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCs974quTetXso_9rmp_serde6decode5ErrorENtNtB9_2de12Deserializer15deserialize_anyNtNvXs16_NtB2a_5implsmNtB2a_11Deserialize11deserialize16PrimitiveVisitorECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 4), !noalias !5419
  %i.gg = load i8, ptr %i.f, align 8, !range !154, !noalias !5445, !noundef !5 ; 2 uses
  %.not72.i = icmp eq i8 %i.gg, -1
  br i1 %.not72.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.loopexit.i.thread
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.468.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.464.0..sroa_idx.i, i64 3, i1 false), !noalias !5431
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.565.0.copyload.i = load i32, ptr %.sroa.565.0..sroa_idx.i, align 4, !noalias !5445
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.670.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.670.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.666.0..sroa_idx.i, i64 24, i1 false), !noalias !5431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5445
  store i8 %i.gg, ptr %0, align 8, !alias.scope !5419, !noalias !5431
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.565.0.copyload.i, ptr %.sroa.569.0..sroa_idx.i, align 4, !alias.scope !5419, !noalias !5431
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit

bb.df:                                            ; preds = %.loopexit.i.thread
  %i.gh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !noalias !5445, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5445
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.loopexit.i
  %.sroa.037.0.i = phi i32 [ %i.gi, %bb.df ], [ %.sroa.410.0121.i, %.loopexit.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.037.0.i, ptr %i.gj, align 4, !alias.scope !5419, !noalias !5431
  store i8 -1, ptr %0, align 8, !alias.scope !5419, !noalias !5431
  br label %_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit

_RINvXs0_NvXNvNtCskuiImRAV2ip_9elfshaker7packidxs1_1__NtBb_12FileMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeNtB6_9___VisitorNtB1a_7Visitor9visit_mapINtNtCs974quTetXso_9rmp_serde6decode9MapAccessINtB2G_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2I_6config13DefaultConfigEEBd_.exit: ; preds = %bb.ct, %bb.cy, %bb.cz, %bb.dc, %bb.de, %bb.dg
  %i.gk = load i64, ptr %i.fo, align 8, !noundef !5
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.fo, align 8
  br label %bb.y
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyNtNvXNvNtCskuiImRAV2ip_9elfshaker7packidxs3_1__INtB3o_9ChangeSetpENtB2n_11Deserialize11deserialize14___FieldVisitorEB3q_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  %i.c = alloca [2 x i8], align 2                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [2 x i8], align 2                 ; 6 uses
  %i.g = alloca [1 x i8], align 1                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 6 uses
  %i.i = alloca [2 x i8], align 2                 ; 6 uses
  %i.j = alloca [1 x i8], align 1                 ; 6 uses
  %i.k = alloca [4 x i8], align 4                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 6 uses
  %i.n = alloca [2 x i8], align 2                 ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 6 uses
  %i.q = alloca [2 x i8], align 2                 ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [4 x i8], align 4                 ; 6 uses
  %i.t = alloca [1 x i8], align 1                 ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !141, !noundef !5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.ab = load i8, ptr %i.aa, align 1
  store i8 1, ptr %i.y, align 8
  %.not.i = icmp eq i8 %i.z, 1
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5450
  store i8 0, ptr %i.t, align 1, !noalias !5450
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = call noundef ptr @_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderRShENtNtB9_4read4Read10read_exactCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noalias nofree noundef nonnull %i.t, i64 noundef range(i64 1, 9) 1), !noalias !5461 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ae = load i8, ptr %i.t, align 1, !noalias !5450, !noundef !5 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5450
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp samesign ugt i8 %i.ae, -33
  br i1 %i.ag, label %.thread1013, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i8 %i.ae, -112
  br i1 %i.ah, label %.thread1021, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i8 %i.ae, -96
  br i1 %i.ai, label %.thread1017, label %bb.g

.thread1021:                                      ; preds = %bb.e
  %i.aj = and i8 %i.ae, 15
  br label %bb.cr

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i8 %i.ae, -64
  %i.al = and i8 %i.ae, 31                        ; 2 uses
  br i1 %i.ak, label %.thread1025, label %bb.i

.thread1017:                                      ; preds = %bb.f
  %i.am = and i8 %i.ae, 15
  br label %bb.cg

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5450
  store i8 0, ptr %0, align 8
  %.sroa.4842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.4842.0..sroa_idx, align 8
  br label %_RINvMsc_NtCs974quTetXso_9rmp_serde6decodeINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEE13read_str_dataNtNvXNvNtCskuiImRAV2ip_9elfshaker7packidxs3_1__INtB2G_9ChangeSetpENtNtCs6LlcditsbhK_5serde2de11Deserialize11deserialize14___FieldVisitorEB2I_.exit

bb.i:                                             ; preds = %bb.g, %bb.a
  %.sroa.8795.0.ph = phi i8 [ %i.al, %bb.g ], [ %i.ab, %bb.a ] ; 6 uses
  %.sroa.5.0.ph = phi i8 [ %i.ae, %bb.g ], [ %i.z, %bb.a ] ; 3 uses
  switch i8 %.sroa.5.0.ph, label %bb.j [
    i8 0, label %.thread
    i8 -32, label %.thread1013
    i8 -33, label %bb.cq
    i8 -34, label %bb.cs
    i8 -35, label %bb.cf
    i8 -64, label %bb.k
    i8 -63, label %bb.l
    i8 -62, label %bb.m
    i8 -61, label %bb.m
    i8 -37, label %bb.bb
    i8 -38, label %bb.bd
    i8 -39, label %bb.bc
    i8 -57, label %bb.n
    i8 -56, label %bb.n
end_hunk_2
