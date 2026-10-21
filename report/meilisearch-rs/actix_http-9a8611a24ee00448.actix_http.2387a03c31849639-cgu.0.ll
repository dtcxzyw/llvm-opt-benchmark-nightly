Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h85293591a090a478E":bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa.0.0.1.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa.0.0.1.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa.0.0.1.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa.0.0.1.sroa_idx.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.e = trunc nuw i64 %.sroa.03.0.copyload to i1
  br i1 %i.e, label %_ZN4core3ops8function6FnOnce9call_once17h7c85dec4dd63b9a5E.exit.thread, label %bb.e

_ZN4core3ops8function6FnOnce9call_once17h7c85dec4dd63b9a5E.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i64> %i.d, ptr %0, align 8
  %.sroa.525.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.525.0..sroa_idx34, align 8
  %.sroa.626.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.626.0..sroa_idx35, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5067
  %i.f = tail call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1024, i64 noundef range(i64 1, 9) 8) #45, !noalias !5067 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %_ZN4core3ops8function6FnOnce9call_once17h7c85dec4dd63b9a5E.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 1024, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #46, !noalias !5068
  unreachable

_ZN4core3ops8function6FnOnce9call_once17h7c85dec4dd63b9a5E.exit: ; preds = %bb.e
  %.pre = load i8, ptr %i.b, align 8, !range !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 128, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.626.0..sroa_idx, align 8
  store i8 1, ptr %i.b, align 8
  switch i8 %.pre, label %default.unreachable28 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
  ], !prof !77

bb.g:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h7c85dec4dd63b9a5E.exit.thread, %_ZN4core3ops8function6FnOnce9call_once17h7c85dec4dd63b9a5E.exit
  tail call void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_ZN3std3sys12thread_local6native4lazy7destroy17h6f113d4a38a99d3bE)
  br label %bb.j

bb.h:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h7c85dec4dd63b9a5E.exit
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$actix_http..message..MessagePool$LT$actix_http..requests..head..RequestHead$GT$$GT$17h24be54dfb7b4407bE"(ptr noalias noundef align 8 dereferenceable(32) %i.a)
  br label %bb.j

bb.i:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h7c85dec4dd63b9a5E.exit
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @409, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #46
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.c, %bb.j
  %.sroa.02.0 = phi ptr [ %0, %bb.j ], [ null, %bb.c ], [ %0, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_ZN3std3sys12thread_local6native4lazy7destroy17h6f113d4a38a99d3bE(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !21, !noundef !20
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17h85ff81e19f953cadE.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$actix_http..message..MessagePool$LT$actix_http..requests..head..RequestHead$GT$$GT$17h24be54dfb7b4407bE"(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17h85ff81e19f953cadE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN103_$LT$std..sys..thread_local..abort_on_dtor_unwind..DtorUnwindGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c3f4de280ab1089E"()
          to label %.noexc1.i unwind label %bb.d

.noexc1.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

_ZN3std3sys12thread_local20abort_on_dtor_unwind17h85ff81e19f953cadE.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_ZN3std3sys12thread_local6native4lazy7destroy17hc5bccd7f3b73eec7E(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !21, !noundef !20
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17h73ce28974feeacfaE.exit

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponsePool$GT$17h64f12154f2c6763eE"(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17h73ce28974feeacfaE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN103_$LT$std..sys..thread_local..abort_on_dtor_unwind..DtorUnwindGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c3f4de280ab1089E"()
          to label %.noexc1.i unwind label %bb.d

.noexc1.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

_ZN3std3sys12thread_local20abort_on_dtor_unwind17h73ce28974feeacfaE.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_ZN3std3sys12thread_local6native5eager7destroy17h0dc2ad0b99ec4523E(ptr noundef initializes((16, 17)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5087)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !5088, !noundef !20 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17h6abcea4bc9aba4a0E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !noalias !5089, !noundef !20
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !noalias !5089
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17h6abcea4bc9aba4a0E.exit

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h3a6232090768b030E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17h6abcea4bc9aba4a0E.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN103_$LT$std..sys..thread_local..abort_on_dtor_unwind..DtorUnwindGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c3f4de280ab1089E"()
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

_ZN3std3sys12thread_local20abort_on_dtor_unwind17h6abcea4bc9aba4a0E.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_ZN3std3sys12thread_local6native5eager7destroy17h8efa159bd3e7fdcaE(ptr noundef initializes((72, 73)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5112)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5114)
  %i.c = load i64, ptr %i.b, align 8, !range !35, !alias.scope !5115, !noundef !20 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17hd4bc1f3928712bfcE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5116)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5118)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !5119, !nonnull !20, !noundef !20
  %1 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !5119
  %i.h = icmp eq i64 %1, 1
  br i1 %i.h, label %bb.d, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17hd4bc1f3928712bfcE.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17hd4bc1f3928712bfcE.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5121)
  %i.i = load ptr, ptr %i.e, align 8, !alias.scope !5122, !nonnull !20, !noundef !20
  %2 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !5122
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.f, label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17hd4bc1f3928712bfcE.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf5f3293d72219e9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN3std3sys12thread_local20abort_on_dtor_unwind17hd4bc1f3928712bfcE.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @"_ZN103_$LT$std..sys..thread_local..abort_on_dtor_unwind..DtorUnwindGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c3f4de280ab1089E"()
          to label %.noexc2.i unwind label %bb.h

.noexc2.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

_ZN3std3sys12thread_local20abort_on_dtor_unwind17hd4bc1f3928712bfcE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h136e87712ae99e99E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 7 uses
  %i.b = alloca [192 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN10actix_http8requests4head12REQUEST_POOL29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h57d981f63a6c63e8E") ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !21, !noalias !5137, !noundef !20
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.thread.i, label %_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.i, !prof !30

_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.i: ; preds = %bb.a
  %i.h = tail call fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h85293591a090a478E"(ptr noundef nonnull align 8 %i.d, ptr noalias noundef align 8 dereferenceable_or_null(40) null) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.t, label %_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.thread.i

_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.thread.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.i, %bb.a
  %.sroa.0.0.i.i.i2.i = phi ptr [ %i.h, %_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.i ], [ %i.d, %bb.a ] ; 9 uses
  %i.j = load i64, ptr %.sroa.0.0.i.i.i2.i, align 8, !noundef !20
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.thread.i
  store i64 -1, ptr %.sroa.0.0.i.i.i2.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !20 ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.c:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.thread.i
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN82_$LT$actix_http..requests..head..RequestHead$u20$as$u20$core..default..Default$GT$7default17hbc76953a94f708a9E"(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.b)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i, i64 8
  %i.p = add nsw i64 %i.m, -1                     ; 3 uses
  store i64 %i.p, ptr %i.l, align 8
  %i.q = load i64, ptr %i.o, align 8, !range !32, !noundef !20
  %i.r = icmp samesign ult i64 %i.p, %i.q
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !20, !noundef !20
  %i.u = icmp ult i64 %i.m, 1152921504606846977
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.p
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !20, !noundef !20 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.w, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !20
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.l, label %bb.n, !prof !30

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ac, ptr noundef nonnull align 8 dereferenceable(192) %i.b, i64 192, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !5138
  %i.ad = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !5138 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.k, !prof !23

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 208) #46
          to label %.noexc.i.i.i.i unwind label %bb.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..rc..RcInner$LT$actix_http..requests..head..RequestHead$GT$$GT$17h9323f254afeddf6aE"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.a) #47
          to label %bb.s unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.ad, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.l:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %i.w, align 8, !noundef !20
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.m, label %bb.n, !prof !30

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 201
  store i8 0, ptr %i.aj, align 1, !alias.scope !5139
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  invoke void @_ZN10actix_http6header3map9HeaderMap5clear17h930e22e098f71a54E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %"_ZN85_$LT$actix_http..requests..head..RequestHead$u20$as$u20$actix_http..message..Head$GT$5clear17h84168fabfc428882E.exit.i.i.i.i" unwind label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.e
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #46
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load i64, ptr %i.w, align 8, !noalias !5140, !noundef !20
  %i.an = add i64 %i.am, -1                       ; 2 uses
  store i64 %i.an, ptr %i.w, align 8, !noalias !5140
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h23a34c237464c3ccE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %bb.s unwind label %bb.r

"_ZN85_$LT$actix_http..requests..head..RequestHead$u20$as$u20$actix_http..message..Head$GT$5clear17h84168fabfc428882E.exit.i.i.i.i": ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.o, %bb.i, %bb.f
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.aa, %bb.f ], [ %i.al, %bb.p ], [ %i.al, %bb.o ]
  %i.aq = load i64, ptr %.sroa.0.0.i.i.i2.i, align 8, !noundef !20
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %.sroa.0.0.i.i.i2.i, align 8
  resume { ptr, i32 } %.pn.i.i.i.i

bb.t:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h2565895c91401bb0E.exit.i
  tail call void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @520) #46
  unreachable

bb.u:                                             ; preds = %"_ZN85_$LT$actix_http..requests..head..RequestHead$u20$as$u20$actix_http..message..Head$GT$5clear17h84168fabfc428882E.exit.i.i.i.i", %bb.k
  %.sroa.0.0.i.i.i6.i = phi ptr [ %i.ad, %bb.k ], [ %i.w, %"_ZN85_$LT$actix_http..requests..head..RequestHead$u20$as$u20$actix_http..message..Head$GT$5clear17h84168fabfc428882E.exit.i.i.i.i" ]
  %i.as = load i64, ptr %.sroa.0.0.i.i.i2.i, align 8, !noundef !20
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %.sroa.0.0.i.i.i2.i, align 8
  ret ptr %.sroa.0.0.i.i.i6.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h046f6f65d80f1091E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !20, !align !27, !noundef !20 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !5143, !noundef !20 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr131drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$$GT$17hf1ebde9ab7f25989E":bb.a
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bb21485bd40570fE.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h926073ae346400afE.exit.i"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !5658, !noundef !20 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bb21485bd40570fE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !5658, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #45, !noalias !5658
  br label %"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bb21485bd40570fE.exit"

"_ZN82_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bb21485bd40570fE.exit": ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17h926073ae346400afE.exit.i", %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr143drop_in_place$LT$$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..drop..Drop$GT$..drop..$u7b$$u7b$closure$u7d$$u7d$$GT$17haf08b213269ffe90E"(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$GT$17hcb08d1ad5ecab8bfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.a)
          to label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17h4fde85f0ec63409eE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #45
  resume { ptr, i32 } %i.b

"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17h4fde85f0ec63409eE.exit": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 64, i64 noundef 8) #45
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr154drop_in_place$LT$brotli_decompressor..huffman..HuffmanTreeGroup$LT$alloc_stdlib..std_alloc..StandardAlloc$C$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17h982229b51398b171E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load i64, ptr %i.a, align 8, !noundef !20 ; 2 uses
  %i.b = icmp eq i64 %.val5, 0
  br i1 %i.b, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.a
  %.val4 = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20
  %i.c = shl nuw nsw i64 %.val5, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.c, i64 noundef 4) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.d, align 8, !noundef !20 ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit8", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.f, align 8, !nonnull !20, !noundef !20
  %i.g = shl nuw nsw i64 %.val1, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef 2) #45
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit8"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli_decompressor..huffman..HuffmanCode$GT$$GT$17h9906f5c1e10440daE.exit8": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i7"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr156drop_in_place$LT$$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..Dropper$LT$bytes..bytes..Bytes$GT$$GT$17hca82af5a00d2715bE"(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %"_ZN159_$LT$$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd5b97d7f4848a4abE.exit", label %.lr.ph

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit.i.i": ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %.8.val
  br i1 %i.b, label %"_ZN159_$LT$$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd5b97d7f4848a4abE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit.i.i"
  %.sroa.0.0.i.i1 = phi i64 [ %i.d, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1 ; 4 uses
  %i.d = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5674)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !5675, !nonnull !20, !align !31, !noundef !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !5676, !nonnull !20, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5675, !noundef !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5675, !noundef !20
  invoke void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit.i.i" unwind label %bb.b, !inline_history !38

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit7.i.i": ; preds = %.lr.ph3
  %i.m = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.n = icmp eq i64 %i.m, %.8.val
  br i1 %i.n, label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit7.i.i._crit_edge", label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.d, %.8.val
  br i1 %i.p, label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit7.i.i._crit_edge", label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit7.i.i"
  %.sroa.0.1.i.i2 = phi i64 [ %i.m, %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit7.i.i" ], [ %i.d, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5678)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !5679, !nonnull !20, !align !31, !noundef !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !5680, !nonnull !20, !noundef !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !5679, !noundef !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !5679, !noundef !20
  invoke void %i.t(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.y)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit7.i.i" unwind label %bb.c, !inline_history !38

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit7.i.i._crit_edge": ; preds = %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit7.i.i", %bb.b
  resume { ptr, i32 } %i.o

bb.c:                                             ; preds = %.lr.ph3
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN159_$LT$$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd5b97d7f4848a4abE.exit": ; preds = %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr169drop_in_place$LT$core..option..Option$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$$GT$17h8fc6c28a97c5c9dbE"(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !51, !noundef !20
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr141drop_in_place$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$17hccdbf438079ac088E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5697)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !5698, !noundef !20 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %"_ZN4core3ptr141drop_in_place$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$17hccdbf438079ac088E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5702)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !5703, !nonnull !20, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5703, !noundef !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5703, !noundef !20
  invoke void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %"_ZN4core3ptr141drop_in_place$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$17hccdbf438079ac088E.exit" unwind label %bb.e, !inline_history !1

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h492347d9c41c84ccE"(ptr noalias noundef align 8 dereferenceable(184) %i.n) #47
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m

"_ZN4core3ptr141drop_in_place$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$17hccdbf438079ac088E.exit": ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h492347d9c41c84ccE"(ptr noalias noundef align 8 dereferenceable(184) %i.p)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h9976e347a8f933c6E"(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5727)
  %i.b = load ptr, ptr %i.a, align 32, !alias.scope !5728, !nonnull !20, !noundef !20
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !5728
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$17h5c5af91f9b5b9e3dE.exit.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4b5039c0e32af777E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$17h5c5af91f9b5b9e3dE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$tokio..runtime..task..core..CoreStage$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9c2e35f54ebbbbfaE"(ptr noundef nonnull align 8 %i.e) #47
          to label %.body unwind label %bb.k

"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$17h5c5af91f9b5b9e3dE.exit.i": ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 16, !range !58, !noundef !20
  switch i32 %i.g, label %"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h2a48ccc3202a00faE.exit" [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$17h5c5af91f9b5b9e3dE.exit.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$GT$17he89943da4d9845d5E"(ptr noundef nonnull readonly align 8 %i.h)
          to label %"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h2a48ccc3202a00faE.exit" unwind label %bb.l

bb.e:                                             ; preds = %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$17h5c5af91f9b5b9e3dE.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5729)
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5729, !noundef !20
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h2a48ccc3202a00faE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 64, !alias.scope !5729, !align !28, !noundef !20 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !5729 ; 6 uses
  %i.n = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.n, label %"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h2a48ccc3202a00faE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i) ]
  %i.o = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !20, !noalias !5729 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.o(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.i unwind label %bb.j, !noalias !5729

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !32, !invariant.load !20, !noalias !5729 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !33, !invariant.load !20, !noalias !5729 ; 2 uses
  %i.t = icmp ult i64 %i.s, -9223372036854775807
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h2a48ccc3202a00faE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.s) #45, !noalias !5729
  br label %"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h2a48ccc3202a00faE.exit"

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !32, !invariant.load !20, !noalias !5729 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !33, !invariant.load !20, !noalias !5729 ; 2 uses
  %i.aa = icmp ult i64 %i.z, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.z) #45, !noalias !5729
  br label %.body

bb.k:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.j, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i", %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.v, %bb.j ], [ %i.v, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i" ], [ %i.d, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE"(ptr noundef nonnull align 8 %i.ae) #47
          to label %common.resume unwind label %bb.t

"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h2a48ccc3202a00faE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.i, %bb.f, %bb.e, %"_ZN4core3ptr71drop_in_place$LT$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$17h5c5af91f9b5b9e3dE.exit.i", %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val.i = load ptr, ptr %i.af, align 16, !align !31, !noundef !20 ; 2 uses
  %i.ag = icmp eq ptr %.val.i, null
  br i1 %i.ag, label %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h2a48ccc3202a00faE.exit"
  %i.ah = getelementptr i8, ptr %0, i64 152
  %.val1.i = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !20, !noundef !20
  invoke void %i.aj(ptr noundef %.val1.i)
          to label %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i" unwind label %bb.n, !inline_history !12

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5731)
  %i.am = load ptr, ptr %i.al, align 32, !alias.scope !5732, !noundef !20 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %2 = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !5733
  %i.ao = icmp eq i64 %2, 1
  br i1 %i.ao, label %bb.p, label %common.resume

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb63e2b2efeb315a6E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %common.resume unwind label %bb.s

"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i": ; preds = %bb.m, %"_ZN4core3ptr177drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..task..local..Shared$GT$$GT$$GT$17h2a48ccc3202a00faE.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5735)
  %i.aq = load ptr, ptr %i.ap, align 32, !alias.scope !5736, !noundef !20 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE.exit", label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i"
  %3 = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !5737
  %i.as = icmp eq i64 %3, 1
  br i1 %i.as, label %bb.r, label %"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE.exit"

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb63e2b2efeb315a6E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap)
  br label %"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE.exit"

bb.s:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

common.resume:                                    ; preds = %.body, %bb.n, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.n ], [ %i.ak, %bb.p ], [ %i.ak, %bb.o ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE.exit": ; preds = %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i", %bb.q, %bb.r
  ret void

bb.t:                                             ; preds = %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h945298062e3ba778E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5741)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !5741, !noundef !20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !5741
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !5741 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f880fe317b3596bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !5741, !noundef !20 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f880fe317b3596bE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !5741, !nonnull !20, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !5741, !noundef !20
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !5741, !noundef !20
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !5741
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !5741, !nonnull !20, !noundef !20
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !5741
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !5741, !nonnull !20, !noundef !20
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !5741, !inline_history !5740
  %i.s = load i64, ptr %i.e, align 8, !noalias !5741, !noundef !20
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !5741
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f880fe317b3596bE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6f880fe317b3596bE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !5741, !noundef !20 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !5741, !noundef !20
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !5741
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7bf2354fca6befceE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5744)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !5744 ; 5 uses
  %.val2.i = load ptr, ptr %i.a, align 8, !alias.scope !5744 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i = load i64, ptr %i.c, align 8, !alias.scope !5744, !noundef !20 ; 3 uses
  %i.d = icmp eq i64 %.val3.i, 0
  br i1 %i.d, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e754849d6d98792E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !5744
  %i.f = add i64 %.val3.i, 1
  %i.g = mul nuw i64 %.val.i, %i.f                ; 2 uses
  %i.h = add i64 %.val1.i, -1
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %.val1.i
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %.val3.i, 17
  %i.n = add i64 %i.m, %i.l                       ; 4 uses
  %i.o = icmp uge i64 %i.n, %i.l
  %i.p = sub nuw i64 -9223372036854775808, %.val1.i
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp ne i64 %.val1.i, 0
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e754849d6d98792E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i
  %i.t = sub nsw i64 0, %i.l
  %i.u = getelementptr inbounds i8, ptr %.val2.i, i64 %i.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %.val1.i) #45, !noalias !5744
  br label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e754849d6d98792E.exit"

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e754849d6d98792E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17h2976a307dafa1e73E(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 32, 201) %2) unnamed_addr #12 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 4 uses
  %min.iters.check = icmp samesign ult i64 %2, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.b = and i64 %2, 248                          ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 28                       ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5780)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %0, align 1, !alias.scope !5781, !noalias !5782
  %wide.load2 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !5781, !noalias !5782
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %wide.load3 = load <2 x i64>, ptr %1, align 1, !alias.scope !5783
  %wide.load4 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !5783
  store <2 x i64> %wide.load3, ptr %0, align 1, !alias.scope !5781, !noalias !5782
  store <2 x i64> %wide.load4, ptr %i.e, align 1, !alias.scope !5781, !noalias !5782
  store <2 x i64> %wide.load, ptr %1, align 1, !alias.scope !5783
  store <2 x i64> %wide.load2, ptr %i.f, align 1, !alias.scope !5783
  %i.g = icmp eq i64 %n.vec, 4
  br i1 %i.g, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5785)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load.1 = load <2 x i64>, ptr %i.h, align 1, !alias.scope !5786, !noalias !5782
  %wide.load2.1 = load <2 x i64>, ptr %i.j, align 1, !alias.scope !5786, !noalias !5782
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %wide.load3.1 = load <2 x i64>, ptr %i.i, align 1, !alias.scope !5787
  %wide.load4.1 = load <2 x i64>, ptr %i.k, align 1, !alias.scope !5787
  store <2 x i64> %wide.load3.1, ptr %i.h, align 1, !alias.scope !5786, !noalias !5782
  store <2 x i64> %wide.load4.1, ptr %i.j, align 1, !alias.scope !5786, !noalias !5782
  store <2 x i64> %wide.load.1, ptr %i.i, align 1, !alias.scope !5787
  store <2 x i64> %wide.load2.1, ptr %i.k, align 1, !alias.scope !5787
  %i.l = icmp eq i64 %n.vec, 8
  br i1 %i.l, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5789)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load.2 = load <2 x i64>, ptr %i.m, align 1, !alias.scope !5790, !noalias !5782
  %wide.load2.2 = load <2 x i64>, ptr %i.o, align 1, !alias.scope !5790, !noalias !5782
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %wide.load3.2 = load <2 x i64>, ptr %i.n, align 1, !alias.scope !5791
  %wide.load4.2 = load <2 x i64>, ptr %i.p, align 1, !alias.scope !5791
  store <2 x i64> %wide.load3.2, ptr %i.m, align 1, !alias.scope !5790, !noalias !5782
  store <2 x i64> %wide.load4.2, ptr %i.o, align 1, !alias.scope !5790, !noalias !5782
  store <2 x i64> %wide.load.2, ptr %i.n, align 1, !alias.scope !5791
  store <2 x i64> %wide.load2.2, ptr %i.p, align 1, !alias.scope !5791
  %i.q = icmp eq i64 %n.vec, 12
  br i1 %i.q, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5793)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load.3 = load <2 x i64>, ptr %i.r, align 1, !alias.scope !5794, !noalias !5782
  %wide.load2.3 = load <2 x i64>, ptr %i.t, align 1, !alias.scope !5794, !noalias !5782
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %wide.load3.3 = load <2 x i64>, ptr %i.s, align 1, !alias.scope !5795
  %wide.load4.3 = load <2 x i64>, ptr %i.u, align 1, !alias.scope !5795
  store <2 x i64> %wide.load3.3, ptr %i.r, align 1, !alias.scope !5794, !noalias !5782
  store <2 x i64> %wide.load4.3, ptr %i.t, align 1, !alias.scope !5794, !noalias !5782
  store <2 x i64> %wide.load.3, ptr %i.s, align 1, !alias.scope !5795
  store <2 x i64> %wide.load2.3, ptr %i.u, align 1, !alias.scope !5795
  %i.v = icmp eq i64 %n.vec, 16
  br i1 %i.v, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5797)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %wide.load.4 = load <2 x i64>, ptr %i.w, align 1, !alias.scope !5798, !noalias !5782
  %wide.load2.4 = load <2 x i64>, ptr %i.y, align 1, !alias.scope !5798, !noalias !5782
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %wide.load3.4 = load <2 x i64>, ptr %i.x, align 1, !alias.scope !5799
  %wide.load4.4 = load <2 x i64>, ptr %i.z, align 1, !alias.scope !5799
  store <2 x i64> %wide.load3.4, ptr %i.w, align 1, !alias.scope !5798, !noalias !5782
  store <2 x i64> %wide.load4.4, ptr %i.y, align 1, !alias.scope !5798, !noalias !5782
  store <2 x i64> %wide.load.4, ptr %i.x, align 1, !alias.scope !5799
  store <2 x i64> %wide.load2.4, ptr %i.z, align 1, !alias.scope !5799
  %i.aa = icmp eq i64 %n.vec, 20
  br i1 %i.aa, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5801)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %wide.load.5 = load <2 x i64>, ptr %i.ab, align 1, !alias.scope !5802, !noalias !5782
  %wide.load2.5 = load <2 x i64>, ptr %i.ad, align 1, !alias.scope !5802, !noalias !5782
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %wide.load3.5 = load <2 x i64>, ptr %i.ac, align 1, !alias.scope !5803
  %wide.load4.5 = load <2 x i64>, ptr %i.ae, align 1, !alias.scope !5803
  store <2 x i64> %wide.load3.5, ptr %i.ab, align 1, !alias.scope !5802, !noalias !5782
  store <2 x i64> %wide.load4.5, ptr %i.ad, align 1, !alias.scope !5802, !noalias !5782
  store <2 x i64> %wide.load.5, ptr %i.ac, align 1, !alias.scope !5803
  store <2 x i64> %wide.load2.5, ptr %i.ae, align 1, !alias.scope !5803
  br label %middle.block

middle.block:                                     ; preds = %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h729b6a9b029f7509E.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.03.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.i.i.ph, 1
  %i.af = and i64 %2, 8
  %lcmp.mod.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = or disjoint i64 %.sroa.0.03.i.i.ph, 1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i.ph ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5780)
  %.sroa.0.0.copyload.i.i.i.prol = load i64, ptr %i.ah, align 1, !alias.scope !5779
  %.sroa.02.0.copyload.i.i.i.prol = load i64, ptr %i.ai, align 1, !alias.scope !5780
  store i64 %.sroa.02.0.copyload.i.i.i.prol, ptr %i.ah, align 1, !alias.scope !5779
  store i64 %.sroa.0.0.copyload.i.i.i.prol, ptr %i.ai, align 1, !alias.scope !5780
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.03.i.i.unr = phi i64 [ %.sroa.0.03.i.i.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %i.a, %.neg
  br i1 %i.aj, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h729b6a9b029f7509E.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.03.i.i = phi i64 [ %i.an, %scalar.ph ], [ %.sroa.0.03.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ak = add nuw nsw i64 %.sroa.0.03.i.i, 1      ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5780)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.al, align 1, !alias.scope !5779
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.am, align 1, !alias.scope !5780
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.al, align 1, !alias.scope !5779
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.am, align 1, !alias.scope !5780
  %i.an = add nuw nsw i64 %.sroa.0.03.i.i, 2      ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5805)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.ao, align 1, !alias.scope !5804
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.ap, align 1, !alias.scope !5805
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.ao, align 1, !alias.scope !5804
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.ap, align 1, !alias.scope !5805
  %exitcond.not.i.i.1 = icmp eq i64 %i.an, %i.a
  br i1 %exitcond.not.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h729b6a9b029f7509E.exit.i, label %scalar.ph, !llvm.loop !5769

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h729b6a9b029f7509E.exit.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aq = and i64 %2, 7                           ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h729b6a9b029f7509E.exit.i
  %i.ar = and i64 %2, 248                         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar ; 4 uses
  %i.au = icmp samesign ult i64 %i.aq, 4
  br i1 %i.au, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5807)
  %.sroa.0.0.copyload.i.i4.i = load i32, ptr %i.as, align 1, !alias.scope !5806
  %.sroa.02.0.copyload.i.i5.i = load i32, ptr %i.at, align 1, !alias.scope !5807
  store i32 %.sroa.02.0.copyload.i.i5.i, ptr %i.as, align 1, !alias.scope !5806
  store i32 %.sroa.0.0.copyload.i.i4.i, ptr %i.at, align 1, !alias.scope !5807
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.av = and i64 %2, 2
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5809)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.ax, align 1, !alias.scope !5808
  %.sroa.02.0.copyload.i10.i.i = load i16, ptr %i.ay, align 1, !alias.scope !5809
  store i16 %.sroa.02.0.copyload.i10.i.i, ptr %i.ax, align 1, !alias.scope !5808
  store i16 %.sroa.0.0.copyload.i9.i.i, ptr %i.ay, align 1, !alias.scope !5809
  %i.az = or disjoint i64 %.sroa.0.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.d ], [ %i.az, %bb.e ] ; 2 uses
  %i.ba = and i64 %2, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.1.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.0.1.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5811)
  %.sroa.0.0.copyload.i11.i.i = load i8, ptr %i.bc, align 1, !alias.scope !5810
  %.sroa.02.0.copyload.i12.i.i = load i8, ptr %i.bd, align 1, !alias.scope !5811
  store i8 %.sroa.02.0.copyload.i12.i.i, ptr %i.bc, align 1, !alias.scope !5810
  store i8 %.sroa.0.0.copyload.i11.i.i, ptr %i.bd, align 1, !alias.scope !5811
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h729b6a9b029f7509E.exit.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Cell$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17h7804a92c4402ee19E"(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5835)
  %i.b = load ptr, ptr %i.a, align 32, !alias.scope !5836, !nonnull !20, !noundef !20
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !5836
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$tokio..runtime..task..core..CoreStage$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h9c2e35f54ebbbbfaE"(ptr noundef nonnull align 8 %i.e) #47
          to label %.body unwind label %bb.k

"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit.i": ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 16, !range !58, !noundef !20
  switch i32 %i.g, label %"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hca7e84baf8da1240E.exit" [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$GT$17he89943da4d9845d5E"(ptr noundef nonnull readonly align 8 %i.h)
          to label %"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hca7e84baf8da1240E.exit" unwind label %bb.l

bb.e:                                             ; preds = %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5837)
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5837, !noundef !20
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hca7e84baf8da1240E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 64, !alias.scope !5837, !align !28, !noundef !20 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !5837 ; 6 uses
  %i.n = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.n, label %"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hca7e84baf8da1240E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i) ]
  %i.o = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !20, !noalias !5837 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.o(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.i unwind label %bb.j, !noalias !5837

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !32, !invariant.load !20, !noalias !5837 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !33, !invariant.load !20, !noalias !5837 ; 2 uses
  %i.t = icmp ult i64 %i.s, -9223372036854775807
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.q, 0
  br i1 %i.u, label %"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hca7e84baf8da1240E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.s) #45, !noalias !5837
  br label %"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hca7e84baf8da1240E.exit"

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !32, !invariant.load !20, !noalias !5837 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !33, !invariant.load !20, !noalias !5837 ; 2 uses
  %i.aa = icmp ult i64 %i.z, -9223372036854775807
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %.body, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.j
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.z) #45, !noalias !5837
  br label %.body

bb.k:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.l:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.j, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i", %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.v, %bb.j ], [ %i.v, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i" ], [ %i.d, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE"(ptr noundef nonnull align 8 %i.ae) #47
          to label %common.resume unwind label %bb.t

"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hca7e84baf8da1240E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.i, %bb.f, %bb.e, %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit.i", %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val.i = load ptr, ptr %i.af, align 16, !align !31, !noundef !20 ; 2 uses
  %i.ag = icmp eq ptr %.val.i, null
  br i1 %i.ag, label %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hca7e84baf8da1240E.exit"
  %i.ah = getelementptr i8, ptr %0, i64 152
  %.val1.i = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !20, !noundef !20
  invoke void %i.aj(ptr noundef %.val1.i)
          to label %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i" unwind label %bb.n, !inline_history !12

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5839)
  %i.am = load ptr, ptr %i.al, align 32, !alias.scope !5840, !noundef !20 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %2 = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !5841
  %i.ao = icmp eq i64 %2, 1
  br i1 %i.ao, label %bb.p, label %common.resume

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb63e2b2efeb315a6E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %common.resume unwind label %bb.s

"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i": ; preds = %bb.m, %"_ZN4core3ptr200drop_in_place$LT$tokio..runtime..task..core..Core$LT$actix_http..date..DateService..new..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$$GT$17hca7e84baf8da1240E.exit"
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5843)
  %i.aq = load ptr, ptr %i.ap, align 32, !alias.scope !5844, !noundef !20 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE.exit", label %bb.q

bb.q:                                             ; preds = %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i"
  %3 = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !5845
  %i.as = icmp eq i64 %3, 1
  br i1 %i.as, label %bb.r, label %"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE.exit"

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb63e2b2efeb315a6E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap)
  br label %"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE.exit"

bb.s:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

common.resume:                                    ; preds = %.body, %bb.n, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.n ], [ %i.ak, %bb.p ], [ %i.ak, %bb.o ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE.exit": ; preds = %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit.i", %bb.q, %bb.r
  ret void

bb.t:                                             ; preds = %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr231drop_in_place$LT$actix_http..body..message_body..MessageBodyMapErr$LT$alloc..string..String$C$$LT$core..convert..Infallible$u20$as$u20$core..convert..Into$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$GT$$GT$$GT$..into$GT$$GT$17hc1365ed9b8669218E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5848)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !5848 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !5848, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !5848
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr238drop_in_place$LT$alloc..boxed..convert..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$GT$17h21fe2dcb780547d9E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5851)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !5851 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !5851, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !5851
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17h2caf1400166a6e95E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !73, !noundef !20
  switch i64 %i.a, label %default.unreachable4 [
    i64 0, label %"_ZN4core3ptr209drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$17hd81f17b901a14239E.exit"
    i64 1, label %bb.f
    i64 2, label %bb.h
    i64 3, label %bb.b
  ]

default.unreachable4:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !20, !align !31, !noundef !20 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !32, !invariant.load !20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !33, !invariant.load !20 ; 2 uses
  %i.i = icmp ult i64 %i.h, -9223372036854775807
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN4core3ptr209drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$17hd81f17b901a14239E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.h) #45
  br label %"_ZN4core3ptr209drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$17hd81f17b901a14239E.exit"

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !32, !invariant.load !20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !33, !invariant.load !20 ; 2 uses
  %i.p = icmp ult i64 %i.o, -9223372036854775807
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.m, 0
  br i1 %i.q, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.o) #45
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %bb.k, %bb.l, %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i"
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.k, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i" ], [ %i.y, %bb.k ], [ %i.y, %bb.l ], [ %i.x, %bb.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr209drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$17hd81f17b901a14239E.exit": ; preds = %bb.n, %bb.m, %bb.g, %bb.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.d, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5876)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !5877, !nonnull !20, !noundef !20 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !5877, !noundef !20
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !noalias !5877
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.g, label %"_ZN4core3ptr209drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$17hd81f17b901a14239E.exit"

bb.g:                                             ; preds = %bb.f
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h5b4061b4948bf14cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.r)
  br label %"_ZN4core3ptr209drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$17hd81f17b901a14239E.exit"

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  invoke void @"_ZN63_$LT$h2..share..RecvStream$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b7f272e0f87df62E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$h2..share..FlowControl$GT$17h5163626bd26b2ba9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w) #47
          to label %common.resume unwind label %bb.p

bb.j:                                             ; preds = %bb.h
  invoke void @"_ZN86_$LT$h2..proto..streams..streams..OpaqueStreamRef$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a194b6c50aa2afaE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5879)
  %i.z = load ptr, ptr %i.w, align 8, !alias.scope !5880, !nonnull !20, !noundef !20
  %1 = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !5881
  %i.aa = icmp eq i64 %1, 1
  br i1 %i.aa, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h908edc0efbc45525E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %common.resume unwind label %bb.o

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5883)
  %i.ab = load ptr, ptr %i.w, align 8, !alias.scope !5884, !nonnull !20, !noundef !20
  %2 = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !5885
  %i.ac = icmp eq i64 %2, 1
  br i1 %i.ac, label %bb.n, label %"_ZN4core3ptr209drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$17hd81f17b901a14239E.exit"

bb.n:                                             ; preds = %bb.m
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h908edc0efbc45525E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  br label %"_ZN4core3ptr209drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$17hd81f17b901a14239E.exit"

bb.o:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.p:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr255drop_in_place$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17h8d2b3d903e2784cdE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17h2caf1400166a6e95E"(ptr noalias noundef align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$actix_http..message..Message$LT$actix_http..requests..head..RequestHead$GT$$GT$17he01d7969f8120bc4E"(ptr noalias noundef align 8 dereferenceable(8) %i.b) #47
          to label %bb.d unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$actix_http..message..Message$LT$actix_http..requests..head..RequestHead$GT$$GT$17he01d7969f8120bc4E"(ptr noalias noundef align 8 dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5898)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5898, !noundef !20 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !noalias !5899, !noundef !20
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.e, align 8, !noalias !5899
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit"

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit" unwind label %bb.l

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.h:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5900)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !5900, !noundef !20 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit5", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i64, ptr %i.l, align 8, !noalias !5901, !noundef !20
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %i.l, align 8, !noalias !5901
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit5"

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.k)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit5" unwind label %bb.k

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit": ; preds = %bb.e, %bb.d, %bb.f, %bb.k
  %.pn2 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn, %bb.f ], [ %.pn, %bb.d ], [ %.pn, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h44e6afe324e39064E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.q)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$17h46b362992049b3d5E.exit" unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit"

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit5": ; preds = %bb.i, %bb.h, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h44e6afe324e39064E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.s)
  ret void

bb.l:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit", %bb.f, %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr82drop_in_place$LT$core..cell..RefCell$LT$actix_http..extensions..Extensions$GT$$GT$17h46b362992049b3d5E.exit": ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4af50d38fab8ad46E.exit"
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr267drop_in_place$LT$brotli..enc..writer..CompressorWriterCustomIo$LT$std..io..error..Error$C$brotli_decompressor..io_wrappers..IntoIoWriter$LT$actix_http..encoding..Writer$GT$$C$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$C$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17hcffcfbf4087d9bd8E"(ptr noalias noundef nonnull align 8 dereferenceable(5664) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5924)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5616 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5924, !noundef !20
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5924
  %i.d = invoke fastcc noundef ptr @"_ZN6brotli3enc6writer64CompressorWriterCustomIo$LT$ErrType$C$W$C$BufferType$C$Alloc$GT$14flush_or_close17h8a3a9b66814490d8E"(ptr noalias noundef nonnull align 8 dereferenceable(5664) %0, i8 noundef 2)
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.d, ptr %i.a, align 8, !noalias !5924
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h1ee6ae55c83a15b5E.exit.i", label %bb.c

bb.c:                                             ; preds = %.noexc
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h1ee6ae55c83a15b5E.exit.i" unwind label %bb.o

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h1ee6ae55c83a15b5E.exit.i": ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5924
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h1ee6ae55c83a15b5E.exit.i", %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5925)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !5926, !nonnull !20, !align !28, !noundef !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5926, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.g, align 8, !alias.scope !5926
  store i64 0, ptr %i.i, align 8, !alias.scope !5926
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.h, i64 noundef %i.j, i64 noundef 1) #45, !noalias !5925
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5926, !nonnull !20, !align !27, !noundef !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !5926, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.l, align 8, !alias.scope !5926
  store i64 0, ptr %i.n, align 8, !alias.scope !5926
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hec8ddfb1017045feE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i"
  %i.q = shl nuw nsw i64 %i.o, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.m, i64 noundef %i.q, i64 noundef 4) #45, !noalias !5925
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hec8ddfb1017045feE.exit.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hec8ddfb1017045feE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit.i.i"
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !5926, !nonnull !20, !align !28, !noundef !20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5926, !noundef !20 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8, !alias.scope !5926
  store i64 0, ptr %i.t, align 8, !alias.scope !5926
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit3.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i2.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i2.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hec8ddfb1017045feE.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.s, i64 noundef %i.u, i64 noundef 1) #45, !noalias !5925
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit3.i.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit3.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i2.i.i", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hec8ddfb1017045feE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5927)
  %i.w = load i64, ptr %i.f, align 8, !range !69, !alias.scope !5928, !noundef !20
  switch i64 %i.w, label %default.unreachable [
    i64 0, label %"_ZN6brotli3enc19backward_references24UnionHasher$LT$Alloc$GT$4free17h3cfd05bb56c69287E.exit.i.i"
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
    i64 8, label %bb.l
    i64 9, label %bb.m
    i64 10, label %bb.n
  ]

default.unreachable:                              ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit3.i.i"
  unreachable

end_hunk_1
begin_hunk_2_@"_ZN4core3ptr37drop_in_place$LT$h2..error..Error$GT$17h846388af62263a14E":bb.a
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr36drop_in_place$LT$h2..error..Kind$GT$17h27d60ee7eb6794b2E.exit"

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6045)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !6046, !nonnull !20, !align !31, !noundef !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !6046, !nonnull !20, !noundef !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !6046, !noundef !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !6046, !noundef !20
  tail call void %i.f(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !6042
  br label %"_ZN4core3ptr36drop_in_place$LT$h2..error..Kind$GT$17h27d60ee7eb6794b2E.exit"

"_ZN4core3ptr36drop_in_place$LT$h2..error..Kind$GT$17h27d60ee7eb6794b2E.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h5baa80da901e7995E"(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6050)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !6050, !nonnull !20, !align !31, !noundef !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !6050, !nonnull !20, !noundef !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !6050, !noundef !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6050, !noundef !20
  tail call void %i.c(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.f, i64 noundef %i.h), !inline_history !6049
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17h0ad36fdaadc91586E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6053)
  %i.a = load i8, ptr %0, align 8, !range !24, !alias.scope !6053, !noundef !20
  %switch.i = icmp samesign ult i8 %i.a, 10
  br i1 %switch.i, label %"_ZN4core3ptr40drop_in_place$LT$http..method..Inner$GT$17h96b15b33eedb2511E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !6053, !noundef !20 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %"_ZN4core3ptr40drop_in_place$LT$http..method..Inner$GT$17h96b15b33eedb2511E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !6053, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #45, !noalias !6053
  br label %"_ZN4core3ptr40drop_in_place$LT$http..method..Inner$GT$17h96b15b33eedb2511E.exit"

"_ZN4core3ptr40drop_in_place$LT$http..method..Inner$GT$17h96b15b33eedb2511E.exit": ; preds = %bb.a, %bb.b, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha11c7752690666b5E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h815f16dd4b32f068E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #45
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h815f16dd4b32f068E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h815f16dd4b32f068E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$flate2..mem..Compress$GT$17hc93b770f35e31b59E"(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6060)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 65656
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !6060, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 85196, i64 noundef 1) #45, !noalias !6060
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 65632
  %.val2.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !6060, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef 4320, i64 noundef 2) #45, !noalias !6060
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 65560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6062)
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !6063, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef 33026, i64 noundef 1) #45, !noalias !6063
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 65568
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !6063, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i, i64 noundef 65536, i64 noundef 2) #45, !noalias !6063
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 65576
  %.val2.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !6063, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i, i64 noundef 65536, i64 noundef 2) #45, !noalias !6063
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 65712, i64 noundef 8) #45
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hcf8bafae2e7d0a42E.exit"
    i64 3, label %bb.b
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hcf8bafae2e7d0a42E.exit"
    i64 1, label %bb.c
  ], !prof !61

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hcf8bafae2e7d0a42E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !20, !align !31, !noundef !20 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !32, !invariant.load !20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !33, !invariant.load !20 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he0f8f4363b799573E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #45
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he0f8f4363b799573E.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !32, !invariant.load !20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !33, !invariant.load !20 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %bb.g, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #45
  br label %bb.g

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #45
  resume { ptr, i32 } %i.m

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he0f8f4363b799573E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #45
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hcf8bafae2e7d0a42E.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hcf8bafae2e7d0a42E.exit": ; preds = %bb.a, %bb.a, %bb.b, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he0f8f4363b799573E.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$h2..share..FlowControl$GT$17h5163626bd26b2ba9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN86_$LT$h2..proto..streams..streams..OpaqueStreamRef$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a194b6c50aa2afaE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6075)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !6076, !nonnull !20, !noundef !20
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !6077
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.c, label %"_ZN4core3ptr118drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$h2..proto..streams..streams..Inner$GT$$GT$$GT$17h6b4d6b7eb5bb6ac9E.exit.i"

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h908edc0efbc45525E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr118drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$h2..proto..streams..streams..Inner$GT$$GT$$GT$17h6b4d6b7eb5bb6ac9E.exit.i" unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6079)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !6080, !nonnull !20, !noundef !20
  %2 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !6081
  %i.e = icmp eq i64 %2, 1
  br i1 %i.e, label %bb.e, label %"_ZN4core3ptr65drop_in_place$LT$h2..proto..streams..streams..OpaqueStreamRef$GT$17h3eb05d2aaa70f45bE.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h908edc0efbc45525E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %"_ZN4core3ptr65drop_in_place$LT$h2..proto..streams..streams..OpaqueStreamRef$GT$17h3eb05d2aaa70f45bE.exit"

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr118drop_in_place$LT$alloc..sync..Arc$LT$std..sync..poison..mutex..Mutex$LT$h2..proto..streams..streams..Inner$GT$$GT$$GT$17h6b4d6b7eb5bb6ac9E.exit.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr65drop_in_place$LT$h2..proto..streams..streams..OpaqueStreamRef$GT$17h3eb05d2aaa70f45bE.exit": ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_http..error..Error$GT$17h8488a389a74131b3E"(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8, !alias.scope !6086, !align !28, !noundef !20 ; 4 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1.i = load ptr, ptr %i.a, align 8          ; 6 uses
  %i.b = icmp eq ptr %.val.i, null
  br i1 %i.b, label %"_ZN4core3ptr75drop_in_place$LT$alloc..boxed..Box$LT$actix_http..error..ErrorInner$GT$$GT$17h158e132aaa00b7c6E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.c = load ptr, ptr %.val1.i, align 8, !invariant.load !20, !noalias !6087 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.c(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.e, !noalias !6087

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !32, !invariant.load !20, !noalias !6087 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !33, !invariant.load !20, !noalias !6087 ; 2 uses
  %i.h = icmp ult i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %"_ZN4core3ptr75drop_in_place$LT$alloc..boxed..Box$LT$actix_http..error..ErrorInner$GT$$GT$17h158e132aaa00b7c6E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.g) #45, !noalias !6087
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..boxed..Box$LT$actix_http..error..ErrorInner$GT$$GT$17h158e132aaa00b7c6E.exit"

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !32, !invariant.load !20, !noalias !6087 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !33, !invariant.load !20, !noalias !6087 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %bb.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #45, !noalias !6087
  br label %bb.f

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #45
  resume { ptr, i32 } %i.j

"_ZN4core3ptr75drop_in_place$LT$alloc..boxed..Box$LT$actix_http..error..ErrorInner$GT$$GT$17h158e132aaa00b7c6E.exit": ; preds = %bb.a, %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #45
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$actix_http..config..Inner$GT$17h8e0a0fd6aa807a26E"(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke void @"_ZN5tokio7runtime4task7harness52_$LT$impl$u20$tokio..runtime..task..raw..RawTask$GT$12remote_abort17hdc11b91b5edf8232E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %"_ZN71_$LT$actix_http..date..DateService$u20$as$u20$core..ops..drop..Drop$GT$4drop17h976cbc4c5158959bE.exit.i" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6099)
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !6100, !nonnull !20, !noundef !20 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !6101, !noundef !20
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !6101
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit.i"

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha81bbffc4420a36fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit.i"

"_ZN71_$LT$actix_http..date..DateService$u20$as$u20$core..ops..drop..Drop$GT$4drop17h976cbc4c5158959bE.exit.i": ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6103)
  %i.h = load ptr, ptr %i.a, align 8, !alias.scope !6104, !nonnull !20, !noundef !20 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !6105, !noundef !20
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !noalias !6105
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit3.i"

bb.d:                                             ; preds = %"_ZN71_$LT$actix_http..date..DateService$u20$as$u20$core..ops..drop..Drop$GT$4drop17h976cbc4c5158959bE.exit.i"
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha81bbffc4420a36fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a)
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit3.i"

"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit.i": ; preds = %bb.c, %bb.b
  %.val2.i = load ptr, ptr %i.b, align 8, !alias.scope !6106, !nonnull !20, !noundef !20 ; 2 uses
  %i.l = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.val2.i)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit.i"
  br i1 %i.l, label %bb.e, label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17hc22b306531be4609E.exit.i"

bb.e:                                             ; preds = %.noexc.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.val2.i)
          to label %"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17hc22b306531be4609E.exit.i" unwind label %bb.g

"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit3.i": ; preds = %bb.d, %"_ZN71_$LT$actix_http..date..DateService$u20$as$u20$core..ops..drop..Drop$GT$4drop17h976cbc4c5158959bE.exit.i"
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !6106, !nonnull !20, !noundef !20 ; 2 uses
  %i.m = tail call noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %.val.i)
  br i1 %i.m, label %bb.f, label %"_ZN4core3ptr50drop_in_place$LT$actix_http..date..DateService$GT$17h3051903105efcd16E.exit"

bb.f:                                             ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit3.i"
  tail call void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %.val.i)
  br label %"_ZN4core3ptr50drop_in_place$LT$actix_http..date..DateService$GT$17h3051903105efcd16E.exit"

bb.g:                                             ; preds = %bb.e, %"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit.i"
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr75drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$$LP$$RP$$GT$$GT$17hc22b306531be4609E.exit.i": ; preds = %bb.e, %.noexc.i
  resume { ptr, i32 } %i.c

"_ZN4core3ptr50drop_in_place$LT$actix_http..date..DateService$GT$17h3051903105efcd16E.exit": ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..rc..Rc$LT$core..cell..Cell$LT$$LP$actix_http..date..Date$C$std..time..Instant$RP$$GT$$GT$$GT$17h44cfa5d5aa1a6ae3E.exit3.i", %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17h8a2b6b15541b51daE"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN5tokio7runtime4time5entry1_91_$LT$impl$u20$core..ops..drop..Drop$u20$for$u20$tokio..runtime..time..entry..TimerEntry$GT$4drop17h7a93847ded13706cE"(ptr noundef nonnull align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..scheduler..Handle$GT$17hba8c8dd2fa190caeE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) #47
          to label %bb.h unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6119)
  %i.b = load i64, ptr %0, align 8, !range !51, !alias.scope !6119, !noundef !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6121)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !6122, !nonnull !20, !noundef !20
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !6122
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.e, label %"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..scheduler..Handle$GT$17hba8c8dd2fa190caeE.exit.i.i"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..scheduler..Handle$GT$17hba8c8dd2fa190caeE.exit.i.i" unwind label %bb.k

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6124)
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !6125, !nonnull !20, !noundef !20
  %2 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !6125
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.g, label %"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..scheduler..Handle$GT$17hba8c8dd2fa190caeE.exit.i.i"

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf5f3293d72219e9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..scheduler..Handle$GT$17hba8c8dd2fa190caeE.exit.i.i" unwind label %bb.k

bb.h:                                             ; preds = %bb.k, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.a, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !51, !noundef !20
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$tokio..runtime..time..entry..TimerShared$GT$$GT$17he785446767688c35E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr i8, ptr %0, i64 56
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !align !31, !noundef !20 ; 2 uses
  %i.m = icmp eq ptr %.val.i.i.i, null
  br i1 %i.m, label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$tokio..runtime..time..entry..TimerShared$GT$$GT$17he785446767688c35E.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val1.i.i.i = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !20, !noundef !20
  invoke void %i.p(ptr noundef %.val1.i.i.i)
          to label %"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$tokio..runtime..time..entry..TimerShared$GT$$GT$17he785446767688c35E.exit.i.i" unwind label %bb.n, !inline_history !6117

bb.k:                                             ; preds = %bb.g, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..scheduler..Handle$GT$17hba8c8dd2fa190caeE.exit.i.i": ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !51, !noundef !20
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr42drop_in_place$LT$tokio..runtime..Timer$GT$17hab3b67155fe8e405E.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..scheduler..Handle$GT$17hba8c8dd2fa190caeE.exit.i.i"
  %i.u = getelementptr i8, ptr %0, i64 56
  %.val.i4.i.i = load ptr, ptr %i.u, align 8, !align !31, !noundef !20 ; 2 uses
  %i.v = icmp eq ptr %.val.i4.i.i, null
  br i1 %i.v, label %"_ZN4core3ptr42drop_in_place$LT$tokio..runtime..Timer$GT$17hab3b67155fe8e405E.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr i8, ptr %0, i64 64
  %.val1.i5.i.i = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i4.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !20, !noundef !20
  tail call void %i.y(ptr noundef %.val1.i5.i.i), !inline_history !6118
  br label %"_ZN4core3ptr42drop_in_place$LT$tokio..runtime..Timer$GT$17hab3b67155fe8e405E.exit"

bb.n:                                             ; preds = %bb.j, %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr89drop_in_place$LT$core..option..Option$LT$tokio..runtime..time..entry..TimerShared$GT$$GT$17he785446767688c35E.exit.i.i": ; preds = %bb.j, %bb.i, %bb.h
  resume { ptr, i32 } %.pn.i.i

"_ZN4core3ptr42drop_in_place$LT$tokio..runtime..Timer$GT$17hab3b67155fe8e405E.exit": ; preds = %"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..scheduler..Handle$GT$17hba8c8dd2fa190caeE.exit.i.i", %bb.l, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..extensions..Extensions$GT$17h6378c79bf1cae76eE"(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %"_ZN4core3ptr298drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$core..hash..BuildHasherDefault$LT$http..extensions..IdHasher$GT$$GT$$GT$$GT$$GT$17h47af98cc0e8b07caE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6146)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !6147, !noundef !20 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN4core3ptr270drop_in_place$LT$alloc..boxed..Box$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$core..hash..BuildHasherDefault$LT$http..extensions..IdHasher$GT$$GT$$GT$$GT$17h856019dcdf67e38bE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6148)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6149, !noundef !20 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9d45b293fd537ce2E.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.0.val, align 8, !alias.scope !6149, !nonnull !20, !noundef !20 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !6150
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h6341a297641e2e8cE.exit.i.i.i.i.i.i.i.i", %bb.d
  %.sroa.07.018.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.d ], [ %.sroa.07.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h6341a297641e2e8cE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.d ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h6341a297641e2e8cE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i.i.i = phi i16 [ %i.k, %bb.d ], [ %i.t, %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h6341a297641e2e8cE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %bb.d ], [ %i.w, %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h6341a297641e2e8cE.exit.i.i.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hc2feeac181ad327dE.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i.i.i, %bb.e ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !6151
  %i.n = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -512 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hc2feeac181ad327dE.exit.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hc2feeac181ad327dE.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i.i.i, %bb.e ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i.i.i, %bb.e ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i.i.i, %bb.e ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i.i.i.i.i.i.i.i, i64 %i.u ; 2 uses
  %i.w = add i64 %.sroa.109.015.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 -16
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !noalias !6149 ; 5 uses
  %i.y = getelementptr i8, ptr %i.v, i64 -8
  %.val6.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !6149, !nonnull !20, !align !31, !noundef !20 ; 5 uses
  %i.z = load ptr, ptr %.val6.i.i.i.i.i.i.i.i, align 8, !invariant.load !20, !noalias !6149 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hc2feeac181ad327dE.exit.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  invoke void %i.z(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i)
          to label %bb.g unwind label %bb.h, !noalias !6149

bb.g:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hc2feeac181ad327dE.exit.i.i.i.i.i.i.i.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !32, !invariant.load !20, !noalias !6149 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !33, !invariant.load !20, !noalias !6149 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ab, 0
  br i1 %i.af, label %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h6341a297641e2e8cE.exit.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #45, !noalias !6149
  br label %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h6341a297641e2e8cE.exit.i.i.i.i.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !32, !invariant.load !20, !noalias !6149 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !33, !invariant.load !20, !noalias !6149 ; 2 uses
  %i.al = icmp ult i64 %i.ak, -9223372036854775807
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ai, 0
  br i1 %i.am, label %bb.j, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #45, !noalias !6149
  br label %bb.j

"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h6341a297641e2e8cE.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.g
  %i.an = icmp eq i64 %i.w, 0
  br i1 %i.an, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9d45b293fd537ce2E.exit.i.i.i.i.i.i.i, label %bb.e

_ZN9hashbrown3raw13RawTableInner13drop_elements17h9d45b293fd537ce2E.exit.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr142drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$RP$$GT$17h6341a297641e2e8cE.exit.i.i.i.i.i.i.i.i", %bb.c
  %i.ao = shl i64 %i.c, 5                         ; 2 uses
  %i.ap = add i64 %i.ao, 32                       ; 2 uses
  %i.aq = add i64 %i.c, 17
  %i.ar = add i64 %i.aq, %i.ap                    ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %"_ZN4core3ptr270drop_in_place$LT$alloc..boxed..Box$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$core..hash..BuildHasherDefault$LT$http..extensions..IdHasher$GT$$GT$$GT$$GT$17h856019dcdf67e38bE.exit.i", label %bb.i

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9d45b293fd537ce2E.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %.0.val, align 8, !alias.scope !6147, !nonnull !20, !noundef !20
  %i.aw = sub nuw nsw i64 -32, %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !6147
  br label %"_ZN4core3ptr270drop_in_place$LT$alloc..boxed..Box$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$C$core..hash..BuildHasherDefault$LT$http..extensions..IdHasher$GT$$GT$$GT$$GT$17h856019dcdf67e38bE.exit.i"

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i.i", %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #45
  resume { ptr, i32 } %i.ag

end_hunk_2
begin_hunk_3_@"_ZN4core3ptr54drop_in_place$LT$actix_http..header..map..IntoIter$GT$17h467e39a2065df9b5E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6244)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6245)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !6246, !noundef !20 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hd18106f04d232300E.exit.i.i.i.i", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.promoted.i.i.i.i = load i16, ptr %i.f, align 8, !alias.scope !6247
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %.preheader.i.i.i.i.i
  %i.h = phi i16 [ %.promoted.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.s, %.noexc ] ; 2 uses
  %i.i = phi i64 [ %i.d, %.preheader.i.i.i.i.i ], [ %i.v, %.noexc ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6248)
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.h, 0
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !6247 ; 2 uses
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %.promoted15.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !6247
  br label %bb.c

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.c
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !6247
  store ptr %i.m, ptr %i.b, align 8, !alias.scope !6247
  br label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i.i.i.i"

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.j = phi ptr [ %.promoted15.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.k = phi ptr [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.c ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.j, align 16, !noalias !6247
  %i.l = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -3200 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.l to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %._crit_edge.i.i.i.i.i.i

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i.i.i.i": ; preds = %bb.b, %._crit_edge.i.i.i.i.i.i
  %i.o = phi ptr [ %i.m, %._crit_edge.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.b ]
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i        ; 2 uses
  store i16 %i.s, ptr %i.f, align 8, !alias.scope !6247
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [200 x i8], ptr %i.o, i64 %i.t ; 6 uses
  %i.v = add i64 %i.i, -1                         ; 3 uses
  store i64 %i.v, ptr %i.c, align 8, !alias.scope !6246
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6251)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !6252, !noalias !6246, !noundef !20 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6256)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !6257, !nonnull !20, !noundef !20
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -176
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -192
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !6258, !noalias !6246, !noundef !20
  %i.ae = getelementptr inbounds i8, ptr %i.u, i64 -184
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !6258, !noalias !6246, !noundef !20
  invoke void %i.aa(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ad, i64 noundef %i.af)
          to label %"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i.i.i.i" unwind label %bb.e, !noalias !6246, !inline_history !1

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds i8, ptr %i.u, i64 -168
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h6ea4f9ddcde586a1E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.ah)
          to label %.body unwind label %bb.f, !noalias !6246

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !6246
  unreachable

"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i.i.i.i": ; preds = %bb.d, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h4053606538784904E.exit.i.i.i.i.i"
  %i.aj = getelementptr inbounds i8, ptr %i.u, i64 -168
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h6ea4f9ddcde586a1E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.aj)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i.i.i.i"
  %.old5.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.old5.i.i.i.i.i, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hd18106f04d232300E.exit.i.i.i.i", label %bb.b

"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hd18106f04d232300E.exit.i.i.i.i": ; preds = %.noexc, %bb.a
  %i.ak = load i64, ptr %i.a, align 8, !range !57, !alias.scope !6259, !noundef !20 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i, label %"_ZN4core3ptr129drop_in_place$LT$std..collections..hash..map..IntoIter$LT$http..header..name..HeaderName$C$actix_http..header..map..Value$GT$$GT$17hfeb97b2680c90c20E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hd18106f04d232300E.exit.i.i.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !6259, !noundef !20 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %"_ZN4core3ptr129drop_in_place$LT$std..collections..hash..map..IntoIter$LT$http..header..name..HeaderName$C$actix_http..header..map..Value$GT$$GT$17hfeb97b2680c90c20E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !6259, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #45, !noalias !6259
  br label %"_ZN4core3ptr129drop_in_place$LT$std..collections..hash..map..IntoIter$LT$http..header..name..HeaderName$C$actix_http..header..map..Value$GT$$GT$17hfeb97b2680c90c20E.exit"

bb.i:                                             ; preds = %"_ZN4core3ptr92drop_in_place$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$17h95989105fb88684dE.exit.i.i.i.i.i"
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %i.ag, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr169drop_in_place$LT$core..option..Option$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$$GT$17h8fc6c28a97c5c9dbE"(ptr noalias noundef align 8 dereferenceable(224) %0) #47
          to label %common.resume unwind label %bb.n

"_ZN4core3ptr129drop_in_place$LT$std..collections..hash..map..IntoIter$LT$http..header..name..HeaderName$C$actix_http..header..map..Value$GT$$GT$17hfeb97b2680c90c20E.exit": ; preds = %bb.h, %bb.g, %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17hd18106f04d232300E.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6260)
  %i.ar = load i64, ptr %0, align 8, !range !51, !alias.scope !6260, !noundef !20
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %"_ZN4core3ptr169drop_in_place$LT$core..option..Option$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$$GT$17h8fc6c28a97c5c9dbE.exit", label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr129drop_in_place$LT$std..collections..hash..map..IntoIter$LT$http..header..name..HeaderName$C$actix_http..header..map..Value$GT$$GT$17hfeb97b2680c90c20E.exit"
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6263)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !6264, !noundef !20 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %"_ZN4core3ptr141drop_in_place$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$17hccdbf438079ac088E.exit.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6268)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !6269, !nonnull !20, !noundef !20
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !6269, !noundef !20
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !6269, !noundef !20
  invoke void %i.ax(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %"_ZN4core3ptr141drop_in_place$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$17hccdbf438079ac088E.exit.i" unwind label %bb.l, !inline_history !1

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h492347d9c41c84ccE"(ptr noalias noundef align 8 dereferenceable(184) %i.be) #47
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

common.resume:                                    ; preds = %.body, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bd, %bb.l ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr141drop_in_place$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$17hccdbf438079ac088E.exit.i": ; preds = %bb.k, %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h492347d9c41c84ccE"(ptr noalias noundef align 8 dereferenceable(184) %i.bg)
  br label %"_ZN4core3ptr169drop_in_place$LT$core..option..Option$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$$GT$17h8fc6c28a97c5c9dbE.exit"

"_ZN4core3ptr169drop_in_place$LT$core..option..Option$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$$GT$17h8fc6c28a97c5c9dbE.exit": ; preds = %"_ZN4core3ptr129drop_in_place$LT$std..collections..hash..map..IntoIter$LT$http..header..name..HeaderName$C$actix_http..header..map..Value$GT$$GT$17hfeb97b2680c90c20E.exit", %"_ZN4core3ptr141drop_in_place$LT$$LP$http..header..name..HeaderName$C$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$RP$$GT$17hccdbf438079ac088E.exit.i"
  ret void

bb.n:                                             ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr54drop_in_place$LT$tokio..runtime..scheduler..Handle$GT$17hba8c8dd2fa190caeE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !51, !noundef !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6279)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !6280, !nonnull !20, !noundef !20
  %1 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !6280
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit"

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb6722ad016bd85d3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6282)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !6283, !nonnull !20, !noundef !20
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !6283
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.e, label %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf5f3293d72219e9aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit"

"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Arc$LT$tokio..runtime..scheduler..current_thread..Handle$GT$$GT$17h70bff66d7ee9cf67E.exit": ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h44e6afe324e39064E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6304)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !6305, !noundef !20 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr207drop_in_place$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$C$core..hash..BuildHasherDefault$LT$actix_http..extensions..NoOpHasher$GT$$GT$$GT$17h6c22c7ea94feb160E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6306)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6307, !noundef !20 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17habc466427b25e135E.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !6307, !nonnull !20, !noundef !20 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !6308
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr96drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$17h15edb4d2270d0f18E.exit.i.i.i.i.i.i", %bb.c
  %.sroa.07.018.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.07.1.i.i.i.i.i.i, %"_ZN4core3ptr96drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$17h15edb4d2270d0f18E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN4core3ptr96drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$17h15edb4d2270d0f18E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr96drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$17h15edb4d2270d0f18E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr96drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$17h15edb4d2270d0f18E.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3126ffee0e93358aE.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !6309
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3126ffee0e93358aE.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3126ffee0e93358aE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.109.015.i.i.i.i.i.i, -1   ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !noalias !6307 ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !noalias !6307, !nonnull !20, !align !31, !noundef !20 ; 5 uses
  %i.y = load ptr, ptr %.val6.i.i.i.i.i.i, align 8, !invariant.load !20, !noalias !6307 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3126ffee0e93358aE.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.y(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.f unwind label %bb.g, !noalias !6307

bb.f:                                             ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h3126ffee0e93358aE.exit.i.i.i.i.i.i"
  %i.z = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !32, !invariant.load !20, !noalias !6307 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !33, !invariant.load !20, !noalias !6307 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %"_ZN4core3ptr96drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$17h15edb4d2270d0f18E.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ac) #45, !noalias !6307
  br label %"_ZN4core3ptr96drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$17h15edb4d2270d0f18E.exit.i.i.i.i.i.i"

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !32, !invariant.load !20, !noalias !6307 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !33, !invariant.load !20, !noalias !6307 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h651b8696d057c042E.exit5.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #45, !noalias !6307
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h651b8696d057c042E.exit5.i.i.i.i.i.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h651b8696d057c042E.exit5.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %bb.g
  resume { ptr, i32 } %i.af

"_ZN4core3ptr96drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$17h15edb4d2270d0f18E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.f
  %i.am = icmp eq i64 %i.v, 0
  br i1 %i.am, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17habc466427b25e135E.exit.i.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17habc466427b25e135E.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr96drop_in_place$LT$$LP$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$RP$$GT$17h15edb4d2270d0f18E.exit.i.i.i.i.i.i", %bb.b
  %i.an = shl i64 %i.b, 5                         ; 2 uses
  %i.ao = add i64 %i.an, 32                       ; 2 uses
  %i.ap = add i64 %i.b, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %"_ZN4core3ptr207drop_in_place$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$C$core..hash..BuildHasherDefault$LT$actix_http..extensions..NoOpHasher$GT$$GT$$GT$17h6c22c7ea94feb160E.exit", label %bb.h

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17habc466427b25e135E.exit.i.i.i.i.i
  %i.au = load ptr, ptr %0, align 8, !alias.scope !6305, !nonnull !20, !noundef !20
  %i.av = sub nuw nsw i64 -32, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !6305
  br label %"_ZN4core3ptr207drop_in_place$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$C$core..hash..BuildHasherDefault$LT$actix_http..extensions..NoOpHasher$GT$$GT$$GT$17h6c22c7ea94feb160E.exit"

"_ZN4core3ptr207drop_in_place$LT$std..collections..hash..map..HashMap$LT$core..any..TypeId$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$C$core..hash..BuildHasherDefault$LT$actix_http..extensions..NoOpHasher$GT$$GT$$GT$17h6c22c7ea94feb160E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17habc466427b25e135E.exit.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr56drop_in_place$LT$tokio..runtime..task..core..Trailer$GT$17hcd46f80ca000a66eE"(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !31, !noundef !20 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !20, !noundef !20
  invoke void %i.e(ptr noundef %.val1)
          to label %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit" unwind label %bb.c, !inline_history !12

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6327)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !6328, !noundef !20 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %"_ZN4core3ptr67drop_in_place$LT$tokio..runtime..task..TaskHarnessScheduleHooks$GT$17h6024943275e96b99E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !6329
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.e, label %"_ZN4core3ptr67drop_in_place$LT$tokio..runtime..task..TaskHarnessScheduleHooks$GT$17h6024943275e96b99E.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb63e2b2efeb315a6E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %"_ZN4core3ptr67drop_in_place$LT$tokio..runtime..task..TaskHarnessScheduleHooks$GT$17h6024943275e96b99E.exit" unwind label %bb.h

"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit": ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6331)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6332, !noundef !20 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %"_ZN4core3ptr67drop_in_place$LT$tokio..runtime..task..TaskHarnessScheduleHooks$GT$17h6024943275e96b99E.exit3", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit"
  %2 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !6333
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.g, label %"_ZN4core3ptr67drop_in_place$LT$tokio..runtime..task..TaskHarnessScheduleHooks$GT$17h6024943275e96b99E.exit3"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb63e2b2efeb315a6E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  br label %"_ZN4core3ptr67drop_in_place$LT$tokio..runtime..task..TaskHarnessScheduleHooks$GT$17h6024943275e96b99E.exit3"

"_ZN4core3ptr67drop_in_place$LT$tokio..runtime..task..TaskHarnessScheduleHooks$GT$17h6024943275e96b99E.exit3": ; preds = %"_ZN4core3ptr121drop_in_place$LT$tokio..loom..std..unsafe_cell..UnsafeCell$LT$core..option..Option$LT$core..task..wake..Waker$GT$$GT$$GT$17hcbf0098037298baaE.exit", %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr67drop_in_place$LT$tokio..runtime..task..TaskHarnessScheduleHooks$GT$17h6024943275e96b99E.exit": ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr61drop_in_place$LT$http..response..Response$LT$$LP$$RP$$GT$$GT$17hb78072d8385edb9bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6339)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !6340, !noundef !20 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !6340, !nonnull !20, !noundef !20
  %i.d = shl nuw nsw i64 %.val2.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.d, i64 noundef 2) #45, !noalias !6340
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i"

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17h1de2d72d91212fafE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i"
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..ExtraValue$LT$http..header..value..HeaderValue$GT$$GT$$GT$17h55e18b70bf41f712E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.g) #47
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..ExtraValue$LT$http..header..value..HeaderValue$GT$$GT$$GT$17h55e18b70bf41f712E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h512fae408f6cc633E.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !6340
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !6338, !align !31, !noundef !20
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..extensions..Extensions$GT$17h6378c79bf1cae76eE"(ptr %.val1.i) #47
          to label %bb.g unwind label %bb.f, !noalias !6338

bb.f:                                             ; preds = %.body.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !6338
  unreachable

bb.g:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr42drop_in_place$LT$http..response..Parts$GT$17h512fae408f6cc633E.exit": ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !6338, !align !31, !noundef !20
  tail call fastcc void @"_ZN4core3ptr49drop_in_place$LT$http..extensions..Extensions$GT$17h6378c79bf1cae76eE"(ptr %.val.i), !noalias !6338
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr63drop_in_place$LT$alloc..rc..Rc$LT$std..io..error..Error$GT$$GT$17h567c72b18813f356E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6343)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !6343, !nonnull !20, !noundef !20 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !6343, !noundef !20
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !noalias !6343
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hccbcb77523b177c0E.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hcfe607e79af68e65E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
  br label %"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hccbcb77523b177c0E.exit"

"_ZN68_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hccbcb77523b177c0E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr64drop_in_place$LT$actix_http..encoding..encoder..EncoderError$GT$17ha3b34a4a36318814E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !20  ; 4 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !20, !align !31, !noundef !20 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !20 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.c(ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !32, !invariant.load !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !33, !invariant.load !20 ; 2 uses
  %i.h = icmp ult i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$GT$$GT$17hd30f5e1d5d736443E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.g) #45
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$GT$$GT$17hd30f5e1d5d736443E.exit"

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !32, !invariant.load !20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !33, !invariant.load !20 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h199c44db02476e77E.exit5.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h199c44db02476e77E.exit5.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h199c44db02476e77E.exit5.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i", %bb.e
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.a
  tail call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h85474bca0acdf2a3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$GT$$GT$17hd30f5e1d5d736443E.exit"

"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$GT$$GT$17hd30f5e1d5d736443E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %bb.d, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr64drop_in_place$LT$actix_http..requests..head..RequestHeadType$GT$17h4f96982c72138450E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %0, align 8, !range !19, !noundef !20
  %.not = icmp eq i16 %i.a, 3
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6358)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6360)
  %i.c = load i8, ptr %i.b, align 8, !range !24, !alias.scope !6361, !noundef !20
  %switch.i.i.i = icmp samesign ult i8 %i.c, 10
  br i1 %switch.i.i.i, label %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17h0ad36fdaadc91586E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val1.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !6361, !noundef !20 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17h0ad36fdaadc91586E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !6361, !nonnull !20, !noundef !20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #45, !noalias !6361
  br label %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17h0ad36fdaadc91586E.exit.i"

"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17h0ad36fdaadc91586E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$http..uri..Uri$GT$17h4f3ddb8af80f4cb4E"(ptr noalias noundef align 8 dereferenceable(88) %i.g)
          to label %"_ZN4core3ptr60drop_in_place$LT$actix_http..requests..head..RequestHead$GT$17h8a2ccaf2d22226bcE.exit" unwind label %bb.d

end_hunk_3
