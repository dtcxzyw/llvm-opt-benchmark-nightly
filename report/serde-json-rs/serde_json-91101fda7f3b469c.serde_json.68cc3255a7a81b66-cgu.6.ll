Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.6?download=true
inline.NumInlined: 76
inline.NumDeleted: 57
begin_hunk_0_@_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error6customNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsEB8_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  %i.e = lshr i64 %i.c, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !39
  %i.f = load i64, ptr %i.a, align 8, !range !40, !noalias !39, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !41, !noalias !39, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !noalias !39
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #17, !noalias !39
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !noalias !39, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !42
  br label %_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i

_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %bb.d, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i.i.i
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !43
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !43
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !43
  br label %_RNvXsB_NtCsbqH9stoieM8_5alloc6stringNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs8ZPNfZ0ciAA_10serde_json.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !44
  br label %_RNvXsB_NtCsbqH9stoieM8_5alloc6stringNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs8ZPNfZ0ciAA_10serde_json.exit

_RNvXsB_NtCsbqH9stoieM8_5alloc6stringNtNtCs8Chj7Szqq0n_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %_RNvYNvYeNtNtCsbqH9stoieM8_5alloc6borrow7ToOwned8to_ownedINtNtNtCs8Chj7Szqq0n_4core3ops8function6FnOnceTReEE9call_onceCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %bb.e
  %i.n = call noundef nonnull align 8 ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.n
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 44) i8 @_RNvMNtCs8ZPNfZ0ciAA_10serde_json5errorNtB2_5Error13io_error_kind(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = ptrtoint ptr %.val to i64                ; 3 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 0, label %bb.e
    i64 1, label %bb.f
  ], !prof !6

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 32
  %i.h = trunc nuw i64 %i.g to i32
  %i.i = tail call noundef nonnull align 8 ptr @_RNvNtNtNtCs8Chj7Szqq0n_4core2io5error12os_functions16get_os_functions()
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = tail call noundef i8 %i.k(i32 noundef %i.h), !inline_history !45
  br label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

bb.d:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.e, 32
  %i.n = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.m to i8   ; 2 uses
  %i.o = icmp ne i8 %switch.idx.cast.i.i.i, -1
  tail call void @llvm.assume(i1 %i.n)
  tail call void @llvm.assume(i1 %i.o)
  br label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !46, !noundef !4
  br label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %.val, i64 31
  %i.s = load i8, ptr %i.r, align 8, !range !46, !noundef !4
  br label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i8 [ -1, %bb.a ], [ %i.l, %bb.c ], [ %switch.idx.cast.i.i.i, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  ret i8 %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !49
  %i.c = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #15, !noalias !49 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplE3newBI_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #17
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #18
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplE3newBI_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %2, ptr %i.c, align 8
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !52
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #15, !noalias !52 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplE3newBI_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #17
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #18
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplE3newBI_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json5error10make_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 29 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !96, !nonnull !4, !noundef !4 ; 23 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !96, !noundef !4 ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  invoke void @_RNvMsu_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 9)
          to label %.noexc unwind label %bb.bt

.noexc:                                           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.h = load i64, ptr %i.a, align 8, !range !99, !alias.scope !98, !noalias !97, !noundef !4
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

.preheader.i.i.i:                                 ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.j = load i8, ptr %i.i, align 2, !range !100, !alias.scope !98, !noalias !97
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !98, !noalias !97, !nonnull !4 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !98, !noalias !97 ; 8 uses
  br i1 %i.k, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted152.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !98, !noalias !97
  %.promoted104.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !98, !noalias !97 ; 12 uses
  %i.r = trunc i8 %.promoted152.i.i.i to i1       ; 2 uses
  %i.s = icmp eq i64 %.promoted104.i.i.i, 0
  br i1 %i.s, label %.split.us.i.i.i, label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted104.i.i.i, %i.o
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.b, label %.split.i.i.us.i.peel.i.i

.split.i.i.us.i.peel.i.i:                         ; preds = %.lr.ph41.i.i
  %i.t = icmp eq i64 %.promoted104.i.i.i, %i.o
  br i1 %i.t, label %bb.c, label %.split114.us.i.i.i.invoke

bb.b:                                             ; preds = %.lr.ph41.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %.promoted104.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !101, !noalias !102, !noundef !4
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.c, label %.split114.us.i.i.i.invoke

bb.c:                                             ; preds = %bb.b, %.split.i.i.us.i.peel.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %.promoted104.i.i.i ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !noalias !103, !noundef !4 ; 3 uses
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %bb.f, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i: ; preds = %bb.c
  %i.ab = icmp ne i64 %.promoted104.i.i.i, 1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -2
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !103, !noundef !4 ; 3 uses
  %i.ae = and i8 %i.ad, 31
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = icmp slt i8 %i.ad, -64
  br i1 %i.ag, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i, label %bb.e

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i: ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i
  %i.ah = icmp ne i64 %.promoted104.i.i.i, 2
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds i8, ptr %i.x, i64 -3
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !103, !noundef !4 ; 3 uses
  %i.ak = and i8 %i.aj, 15
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = icmp slt i8 %i.aj, -64
  br i1 %i.am, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.peel.i.i, label %bb.d

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.peel.i.i: ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i
  %i.an = icmp ne i64 %.promoted104.i.i.i, 3
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !103, !noundef !4
  %i.aq = and i8 %i.ap, 7
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 6
  %i.at = and i8 %i.aj, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.peel.i.i, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i
  %.sroa.010.1.i.i.us.i.peel.i.i = phi i32 [ %i.av, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.peel.i.i ], [ %i.al, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.peel.i.i ]
  %i.aw = shl nuw nsw i32 %.sroa.010.1.i.i.us.i.peel.i.i, 6
  %i.ax = and i8 %i.ad, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i
  %.sroa.010.0.i.i.us.i.peel.i.i = phi i32 [ %i.az, %bb.d ], [ %i.af, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.peel.i.i ]
  %i.ba = shl nuw nsw i32 %.sroa.010.0.i.i.us.i.peel.i.i, 6
  %i.bb = and i8 %i.z, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.be = zext nneg i8 %i.z to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.1.i.ph.i.us.i.peel.i.i = phi i32 [ %i.be, %bb.f ], [ %i.bd, %bb.e ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.r, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i, 128
  br i1 %i.bg, label %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i, 2048
  br i1 %i.bh, label %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = icmp samesign ult i32 %.sroa.4.1.i.ph.i.us.i.peel.i.i, 65536
  %..i.us.i.peel.i.i = select i1 %i.bi, i64 -3, i64 -4
  br label %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i

_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.neg.i.us.i.peel.i.i = phi i64 [ -2, %bb.i ], [ %..i.us.i.peel.i.i, %bb.j ], [ -1, %bb.h ]
  %i.bj = add i64 %.sroa.01.0.neg.i.us.i.peel.i.i, %.promoted104.i.i.i ; 14 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.bj, %i.o
  br i1 %.not.i.i.us.i.i.i, label %bb.k, label %.split.i.i.us.i.i.i

.split.i.i.us.i.i.i:                              ; preds = %.peel.next.i.i
  %i.bl = icmp eq i64 %i.bj, %i.o
  br i1 %i.bl, label %bb.l, label %.split114.us.i.i.i.invoke

bb.k:                                             ; preds = %.peel.next.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !101, !noalias !104, !noundef !4
  %i.bo = icmp sgt i8 %i.bn, -65
  br i1 %i.bo, label %bb.l, label %.split114.us.i.i.i.invoke

bb.l:                                             ; preds = %bb.k, %.split.i.i.us.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bj ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !noalias !105, !noundef !4
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i: ; preds = %bb.l
  %i.bt = icmp ne i64 %i.bj, 1
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 -2
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !105, !noundef !4
  %i.bw = icmp slt i8 %i.bv, -64
  br i1 %i.bw, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i: ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i
  %i.bx = icmp ne i64 %i.bj, 2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds i8, ptr %i.bp, i64 -3
  %i.bz = load i8, ptr %i.by, align 1, !noalias !105, !noundef !4
  %i.ca = icmp slt i8 %i.bz, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i: ; preds = %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i
  %i.cb = icmp ne i64 %i.bj, 3
  tail call void @llvm.assume(i1 %i.cb)
  br label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  br i1 %i.r, label %bb.ae, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

.split114.us.i.i.i.invoke:                        ; preds = %.split.i.i, %bb.ah, %.split.i45.i, %bb.as, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i, %bb.bh, %bb.ax, %bb.bb, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i, %.split.i40.i, %bb.am, %.split.i.i.us.i.peel.i.i, %bb.b, %.split.i.i.us.i.i.i, %bb.k
  %i.cc = phi ptr [ %i.e, %bb.ax ], [ %i.m, %.split.i.i.us.i.peel.i.i ], [ %i.e, %bb.bb ], [ %i.e, %.split.i40.i ], [ %i.e, %bb.bh ], [ %i.m, %bb.k ], [ %i.m, %.split.i.i.us.i.i.i ], [ %i.m, %bb.b ], [ %i.e, %.split.i45.i ], [ %i.e, %bb.am ], [ %i.e, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.e, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.e, %bb.as ], [ %i.e, %bb.ah ], [ %i.e, %.split.i.i ]
  %i.cd = phi i64 [ %i.g, %bb.ax ], [ %i.o, %.split.i.i.us.i.peel.i.i ], [ %i.g, %bb.bb ], [ %i.g, %.split.i40.i ], [ %i.g, %bb.bh ], [ %i.o, %bb.k ], [ %i.o, %.split.i.i.us.i.i.i ], [ %i.o, %bb.b ], [ %i.g, %.split.i45.i ], [ %i.g, %bb.am ], [ %i.g, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.g, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.g, %bb.as ], [ %i.g, %bb.ah ], [ %i.g, %.split.i.i ]
  %i.ce = phi i64 [ %i.ha, %bb.ax ], [ 0, %.split.i.i.us.i.peel.i.i ], [ %i.ha, %bb.bb ], [ %.sroa.03.0.lcssa168.i, %.split.i40.i ], [ %i.hr, %bb.bh ], [ 0, %bb.k ], [ 0, %.split.i.i.us.i.i.i ], [ 0, %bb.b ], [ %.sroa.010.0.i, %.split.i45.i ], [ %.sroa.03.0.lcssa168.i, %bb.am ], [ %i.hr, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.ha, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %.sroa.010.0.i, %bb.as ], [ %.sroa.03.0.i, %bb.ah ], [ %.sroa.03.0.i, %.split.i.i ]
  %i.cf = phi i64 [ %.sroa.03.0.lcssa168.i, %bb.ax ], [ %.promoted104.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.sroa.03.0.lcssa168.i, %bb.bb ], [ %i.g, %.split.i40.i ], [ %.sroa.010.0.lcssa165214.i, %bb.bh ], [ %i.bj, %bb.k ], [ %i.bj, %.split.i.i.us.i.i.i ], [ %.promoted104.i.i.i, %bb.b ], [ %i.g, %.split.i45.i ], [ %i.g, %bb.am ], [ %.sroa.010.0.lcssa165214.i, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %.sroa.03.0.lcssa168.i, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ %i.g, %bb.as ], [ %i.g, %bb.ah ], [ %i.g, %.split.i.i ]
  %i.cg = phi ptr [ @11, %bb.ax ], [ @49, %.split.i.i.us.i.peel.i.i ], [ @11, %bb.bb ], [ @8, %.split.i40.i ], [ @12, %bb.bh ], [ @49, %bb.k ], [ @49, %.split.i.i.us.i.i.i ], [ @49, %bb.b ], [ @10, %.split.i45.i ], [ @8, %bb.am ], [ @12, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ @11, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i ], [ @10, %bb.as ], [ @7, %bb.ah ], [ @7, %.split.i.i ]
  invoke void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.cd, i64 noundef %i.ce, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg) #19
          to label %.split114.us.i.i.i.cont unwind label %bb.bt

.split114.us.i.i.i.cont:                          ; preds = %.split114.us.i.i.i.invoke
  unreachable

default.unreachable:                              ; preds = %.noexc
  unreachable

bb.m:                                             ; preds = %.noexc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !98, !noalias !97, !noundef !4 ; 4 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i, label %bb.o

bb.n:                                             ; preds = %.noexc
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !98, !noalias !97, !noundef !4
  %i.cm = icmp eq i64 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !98, !noalias !97, !nonnull !4, !noundef !4 ; 10 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !98, !noalias !97, !noundef !4 ; 11 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !98, !noalias !97, !nonnull !4, !noundef !4 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !98, !noalias !97, !noundef !4 ; 14 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br i1 %i.cm, label %bb.z, label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !98, !noalias !97, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ci, %i.cx
  br i1 %.not.i.i.i, label %bb.p, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i, !prof !106

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ci, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
          to label %.noexc7.a unwind label %bb.bt

.noexc7.a:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %.promoted.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !110, !noalias !97 ; 2 uses
  %i.cy = sub i64 %.promoted.i.i.i.i, %i.cu       ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cq
  br i1 %i.cz, label %.lr.ph.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !110, !noalias !97, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !110, !noalias !97 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !110, !noalias !97 ; 2 uses
  %umax71.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 range(i64 0, -9223372036854775808) %i.cu) ; 2 uses
  %.promoted36.i.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !110, !noalias !97
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.s, %.lr.ph.i.i.i.i
  %.sink99.i.i24.i.i = phi i64 [ %.sink99.i.i.i.i, %bb.s ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.dh = phi i64 [ %.sink98.i.i.i.i, %bb.s ], [ %.promoted36.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.di = phi i64 [ %i.dq, %bb.s ], [ %i.cy, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !108, !noalias !111, !noundef !4
  %i.dl = and i8 %i.dk, 63
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.db
  %.not.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 %i.dh) ; 2 uses
  %.not19.i.i.i.i191 = icmp eq i64 %i.dp, 0
  br i1 %.not19.i.i.i.i191, label %.preheader46.i.i.i.i, label %.lr.ph

bb.s:                                             ; preds = %bb.y, %bb.w, %.lr.ph.split.i.i.i.i
  %.sink99.i.i.i.i = phi i64 [ %i.ek, %bb.y ], [ %i.ed, %bb.w ], [ %i.di, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.sink98.i.i.i.i = phi i64 [ %i.cu, %bb.y ], [ %i.dg, %bb.w ], [ %i.cu, %.lr.ph.split.i.i.i.i ]
  %i.dq = sub i64 %.sink99.i.i.i.i, %i.cu         ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.cq
  br i1 %i.dr, label %.lr.ph.split.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

bb.t:                                             ; preds = %bb.x
  %.not19.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not19.i.i.i.i, label %.preheader46.i.i.i.i, label %.lr.ph

.preheader46.i.i.i.i:                             ; preds = %bb.t, %bb.r
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 %i.dd)
  %exitcond.not.i.i.i.i193.not = icmp ult i64 %i.dd, %i.dh
  br i1 %exitcond.not.i.i.i.i193.not, label %.lr.ph195, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

.lr.ph:                                           ; preds = %bb.r, %bb.t
  %.sroa.2.0.i.i.i.i192 = phi i64 [ %i.ds, %bb.t ], [ %i.dp, %bb.r ]
  %i.ds = add i64 %.sroa.2.0.i.i.i.i192, -1       ; 7 uses
  %i.dt = icmp ult i64 %i.ds, %i.cu
  br i1 %i.dt, label %bb.x, label %.split43.i.i.i.i.invoke

bb.u:                                             ; preds = %bb.v
  %i.du = add nuw i64 %.sroa.09.0.i.i.i.i194, 1   ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.du, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph195

.lr.ph195:                                        ; preds = %.preheader46.i.i.i.i, %bb.u
  %.sroa.09.0.i.i.i.i194 = phi i64 [ %i.du, %bb.u ], [ %i.dd, %.preheader46.i.i.i.i ] ; 4 uses
  %exitcond70.not.i.i.i.i = icmp eq i64 %.sroa.09.0.i.i.i.i194, %umax71.i.i.i.i
  br i1 %exitcond70.not.i.i.i.i, label %.split43.i.i.i.i.invoke, label %bb.v

bb.v:                                             ; preds = %.lr.ph195
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.09.0.i.i.i.i194
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !109, !noalias !111, !noundef !4
  %i.dx = add i64 %.sroa.09.0.i.i.i.i194, %i.di   ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cq
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dx
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !108, !noalias !111, !noundef !4
  %.not20.i.i.i.i = icmp eq i8 %i.dw, %i.ea
  br i1 %.not20.i.i.i.i, label %bb.u, label %bb.w

.split43.i.i.i.i.invoke:                          ; preds = %.lr.ph, %.lr.ph195, %.lr.ph.split.us.i.i.i.i, %.lr.ph.split.us.i.i.preheader.i.i
  %i.eb = phi i64 [ %i.et, %.lr.ph.split.us.i.i.i.i ], [ %umax71.i.i.i.i, %.lr.ph195 ], [ %i.et, %.lr.ph.split.us.i.i.preheader.i.i ], [ %i.ds, %.lr.ph ]
  %i.ec = phi ptr [ @2, %.lr.ph.split.us.i.i.i.i ], [ @1, %.lr.ph195 ], [ @2, %.lr.ph.split.us.i.i.preheader.i.i ], [ @2, %.lr.ph ]
  invoke void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec) #19
          to label %.split43.i.i.i.i.cont unwind label %bb.bt

.split43.i.i.i.i.cont:                            ; preds = %.split43.i.i.i.i.invoke
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ed = sub i64 %.sink99.i.i24.i.i, %i.dg
  br label %bb.s

bb.x:                                             ; preds = %.lr.ph
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ds
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !109, !noalias !111, !noundef !4
  %i.eg = add nuw i64 %i.ds, %i.di                ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.cq
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !108, !noalias !111, !noundef !4
  %.not21.i.i.i.i = icmp eq i8 %i.ef, %i.ej
  br i1 %.not21.i.i.i.i, label %bb.t, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.neg.i.i.i.i = sub i64 %.sink99.i.i24.i.i, %i.dd
  %i.ek = add i64 %.neg.i.i.i.i, %i.ds
  br label %bb.s

bb.z:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.promoted.i6.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !115, !noalias !97 ; 3 uses
  %i.el = sub i64 %.promoted.i6.i.i.i, %i.cu      ; 5 uses
  %i.em = icmp ult i64 %i.el, %i.cq
  br i1 %i.em, label %.lr.ph.i9.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.i9.i.i.i:                                  ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !115, !noalias !97, !noundef !4 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !115, !noalias !97
  %.fr159.i.i.i = freeze i64 %i.eq                ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !115, !noalias !97 ; 2 uses
  %umax71.i10.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr159.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cu) ; 3 uses
  %i.et = add i64 %.fr159.i.i.i, -1               ; 3 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.et, %i.cu
  br i1 %.first_iter.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.preheader, label %.lr.ph.i9.split.i.i.i

.lr.ph.split.us.i.us.i.i.i.preheader:             ; preds = %.lr.ph.i9.i.i.i
  %.not19.us.i.us.us.i.i.i202 = icmp eq i64 %.fr159.i.i.i, 0
  %exitcond72.not.i.us.i.i.i205.not = icmp ult i64 %.fr159.i.i.i, %i.cu
  br label %.lr.ph.split.us.i.us.i.i.i

.lr.ph.split.us.i.us.i.i.i:                       ; preds = %.lr.ph.split.us.i.us.i.i.i.preheader, %bb.ab
  %.sink.i12.us.i36.i.i = phi i64 [ %.sink.i12.us.i.i.i, %bb.ab ], [ %.promoted.i6.i.i.i, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 2 uses
  %i.eu = phi i64 [ %i.fr, %bb.ab ], [ %i.el, %.lr.ph.split.us.i.us.i.i.i.preheader ] ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !113, !noalias !111, !noundef !4
  %i.ex = and i8 %i.ew, 63
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = shl nuw i64 1, %i.ey
  %i.fa = and i64 %i.ez, %i.eo
  %.not.us.i.us.i.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not.us.i.us.i.i.i, label %bb.ab, label %.preheader45.i.us.us.i.i.i.preheader

.preheader45.i.us.us.i.i.i.preheader:             ; preds = %.lr.ph.split.us.i.us.i.i.i
  br i1 %.not19.us.i.us.us.i.i.i202, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph204

.preheader45.i.us.us.i.i.i:                       ; preds = %.lr.ph204
  %.not19.us.i.us.us.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not19.us.i.us.us.i.i.i, label %.preheader.i.us.i.i.i.preheader, label %.lr.ph204

.preheader.i.us.i.i.i.preheader:                  ; preds = %.preheader45.i.us.us.i.i.i, %.preheader45.i.us.us.i.i.i.preheader
  br i1 %exitcond72.not.i.us.i.i.i205.not, label %.lr.ph207, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i

.lr.ph204:                                        ; preds = %.preheader45.i.us.us.i.i.i.preheader, %.preheader45.i.us.us.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i203 = phi i64 [ %i.fb, %.preheader45.i.us.us.i.i.i ], [ %.fr159.i.i.i, %.preheader45.i.us.us.i.i.i.preheader ]
  %i.fb = add i64 %.sroa.2.0.us.i.us.us.i.i.i203, -1 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !114, !noalias !111, !noundef !4
  %i.fe = add i64 %i.fb, %i.eu                    ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.cq
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !113, !noalias !111, !noundef !4
  %.not21.us.i.us.us.i.i.i = icmp eq i8 %i.fd, %i.fh
  br i1 %.not21.us.i.us.us.i.i.i, label %.preheader45.i.us.us.i.i.i, label %.split.us.us.i.i.i

.split.us.us.i.i.i:                               ; preds = %.lr.ph204
  %.neg.us.i.us.i.i.i = sub i64 %.sink.i12.us.i36.i.i, %.fr159.i.i.i
  %i.fi = add i64 %.neg.us.i.us.i.i.i, %i.fb
  br label %bb.ab

.preheader.i.us.i.i.i:                            ; preds = %.lr.ph207
  %i.fj = add i64 %.sroa.09.0.us.i.us.i.i.i206, 1 ; 2 uses
  %exitcond72.not.i.us.i.i.i = icmp eq i64 %i.fj, %umax71.i10.i.i.i
  br i1 %exitcond72.not.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i
  %.sroa.09.0.us.i.us.i.i.i206 = phi i64 [ %i.fj, %.preheader.i.us.i.i.i ], [ %.fr159.i.i.i, %.preheader.i.us.i.i.i.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.09.0.us.i.us.i.i.i206
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !114, !noalias !111, !noundef !4
  %i.fm = add i64 %.sroa.09.0.us.i.us.i.i.i206, %i.eu ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.cq
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fm
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !113, !noalias !111, !noundef !4
  %.not20.us.i.us.i.i.i = icmp eq i8 %i.fl, %i.fp
  br i1 %.not20.us.i.us.i.i.i, label %.preheader.i.us.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph207
  %i.fq = sub i64 %.sink.i12.us.i36.i.i, %i.es
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split.us.us.i.i.i, %.lr.ph.split.us.i.us.i.i.i
  %.sink.i12.us.i.i.i = phi i64 [ %i.fi, %.split.us.us.i.i.i ], [ %i.fq, %bb.aa ], [ %i.eu, %.lr.ph.split.us.i.us.i.i.i ] ; 2 uses
  %i.fr = sub i64 %.sink.i12.us.i.i.i, %i.cu      ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.cq
  br i1 %i.fs, label %.lr.ph.split.us.i.us.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.i9.split.i.i.i:                            ; preds = %.lr.ph.i9.i.i.i
  %.not19.us.i.i.i.i = icmp eq i64 %.fr159.i.i.i, 0
  br i1 %.not19.us.i.i.i.i, label %.lr.ph.split.us.i.us92.i.i.i.preheader, label %.lr.ph.split.us.i.i.preheader.i.i

.lr.ph.split.us.i.us92.i.i.i.preheader:           ; preds = %.lr.ph.i9.split.i.i.i
  %exitcond72.not.i.us97.i.i.i197 = icmp eq i64 %umax71.i10.i.i.i, 0
  br label %.lr.ph.split.us.i.us92.i.i.i

.lr.ph.split.us.i.i.preheader.i.i:                ; preds = %.lr.ph.i9.split.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.el
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !113, !noalias !111, !noundef !4
  %i.fv = and i8 %i.fu, 63
  %i.fw = zext nneg i8 %i.fv to i64
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.eo
  %.not.us.i.i34.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not.us.i.i34.i.i, label %.lr.ph.i.i, label %.split43.i.i.i.i.invoke

.lr.ph.split.us.i.us92.i.i.i:                     ; preds = %.lr.ph.split.us.i.us92.i.i.i.preheader, %bb.ad
  %i.fz = phi i64 [ %i.gp, %bb.ad ], [ %i.el, %.lr.ph.split.us.i.us92.i.i.i.preheader ] ; 5 uses
  %i.ga = phi i64 [ %.sink.i12.us99.i.i.i, %bb.ad ], [ %.promoted.i6.i.i.i, %.lr.ph.split.us.i.us92.i.i.i.preheader ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !113, !noalias !111, !noundef !4
  %i.gd = and i8 %i.gc, 63
  %i.ge = zext nneg i8 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = and i64 %i.gf, %i.eo
  %.not.us.i.us93.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not.us.i.us93.i.i.i, label %bb.ad, label %.preheader.i.us95.i.i.i.preheader

.preheader.i.us95.i.i.i.preheader:                ; preds = %.lr.ph.split.us.i.us92.i.i.i
  br i1 %exitcond72.not.i.us97.i.i.i197, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph199

.preheader.i.us95.i.i.i:                          ; preds = %.lr.ph199
  %i.gh = add nuw i64 %.sroa.09.0.us.i.us96.i.i.i198, 1 ; 2 uses
  %exitcond72.not.i.us97.i.i.i = icmp eq i64 %i.gh, %umax71.i10.i.i.i
  br i1 %exitcond72.not.i.us97.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, label %.lr.ph199

.lr.ph199:                                        ; preds = %.preheader.i.us95.i.i.i.preheader, %.preheader.i.us95.i.i.i
  %.sroa.09.0.us.i.us96.i.i.i198 = phi i64 [ %i.gh, %.preheader.i.us95.i.i.i ], [ 0, %.preheader.i.us95.i.i.i.preheader ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.09.0.us.i.us96.i.i.i198
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !114, !noalias !111, !noundef !4
  %i.gk = add nuw i64 %.sroa.09.0.us.i.us96.i.i.i198, %i.fz ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.cq
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.gk
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !113, !noalias !111, !noundef !4
  %.not20.us.i.us98.i.i.i = icmp eq i8 %i.gj, %i.gn
  br i1 %.not20.us.i.us98.i.i.i, label %.preheader.i.us95.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph199
  %i.go = sub i64 %i.ga, %i.es
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.split.us.i.us92.i.i.i
  %.sink.i12.us99.i.i.i = phi i64 [ %i.fz, %.lr.ph.split.us.i.us92.i.i.i ], [ %i.go, %bb.ac ] ; 2 uses
  %i.gp = sub i64 %.sink.i12.us99.i.i.i, %i.cu    ; 2 uses
  %i.gq = icmp ult i64 %i.gp, %i.cq
  br i1 %i.gq, label %.lr.ph.split.us.i.us92.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.gy
  %i.gs = load i8, ptr %i.gr, align 1, !alias.scope !113, !noalias !111, !noundef !4
  %i.gt = and i8 %i.gs, 63
  %i.gu = zext nneg i8 %i.gt to i64
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = and i64 %i.gv, %i.eo
  %.not.us.i.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not.us.i.i.i.i, label %.lr.ph.i.i, label %.split43.i.i.i.i.invoke

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.us.i.i.preheader.i.i, %.lr.ph.split.us.i.i.i.i
  %i.gx = phi i64 [ %i.gy, %.lr.ph.split.us.i.i.i.i ], [ %i.el, %.lr.ph.split.us.i.i.preheader.i.i ]
  %i.gy = sub i64 %i.gx, %i.cu                    ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %i.cq
  br i1 %i.gz, label %.lr.ph.split.us.i.i.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i

_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i: ; preds = %bb.s, %.lr.ph.i.i, %bb.ad, %bb.ab, %bb.z, %bb.q, %bb.m, %.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  br label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i: ; preds = %.preheader46.i.i.i.i, %bb.u, %.preheader.i.us95.i.i.i.preheader, %.preheader.i.us95.i.i.i, %.preheader.i.us.i.i.i.preheader, %.preheader.i.us.i.i.i, %bb.l, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i, %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i, %bb.g
  %.sroa.4.1.i.ph.i = phi i64 [ %i.bj, %bb.l ], [ 0, %_RNvXsw_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.us.i.peel.i.i ], [ %i.di, %bb.u ], [ %.promoted104.i.i.i, %bb.g ], [ %i.eu, %.preheader.i.us.i.i.i.preheader ], [ %i.bj, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit21.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit19.i.i.us.i.i.i ], [ %i.bj, %_RNvXs2K_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8ZPNfZ0ciAA_10serde_json.exit17.i.i.us.i.i.i ], [ %i.fz, %.preheader.i.us95.i.i.i.preheader ], [ %i.eu, %.preheader.i.us.i.i.i ], [ %i.fz, %.preheader.i.us95.i.i.i ], [ %i.di, %.preheader46.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  br label %bb.ae

_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.o
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %2 = load i8, ptr %1, align 8, !alias.scope !98, !noalias !97, !noundef !4
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %4 = load ptr, ptr %3, align 8, !alias.scope !98, !noalias !97, !nonnull !4, !noundef !4
  %5 = invoke { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr15memrchr_aligned(i8 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %i.ci)
          to label %.noexc11 unwind label %bb.bt  ; 2 uses

.noexc11:                                         ; preds = %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i
  %6 = extractvalue { i64, i64 } %5, 0
  %7 = trunc nuw i64 %6 to i1
  %8 = extractvalue { i64, i64 } %5, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  br i1 %7, label %bb.ae, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

bb.ae:                                            ; preds = %.noexc11, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i, %.split.us.i.i.i
  %.sroa.4.1.i88.i = phi i64 [ %.sroa.4.1.i.ph.i, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread85.i ], [ %8, %.noexc11 ], [ 0, %.split.us.i.i.i ] ; 6 uses
  %i.ha = add i64 %.sroa.4.1.i88.i, 9             ; 10 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.an, %bb.ae
  %.sroa.03.0.i = phi i64 [ %i.ha, %bb.ae ], [ %i.hn, %bb.an ] ; 10 uses
  %i.hb = icmp eq i64 %.sroa.03.0.i, 0            ; 2 uses
  br i1 %i.hb, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i.i = icmp ult i64 %.sroa.03.0.i, %i.g
  br i1 %.not.i.i, label %bb.ah, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ag
  %i.hc = icmp eq i64 %.sroa.03.0.i, %i.g
  br i1 %i.hc, label %bb.ai, label %.split114.us.i.i.i.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.i
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !116, !noalias !117, !noundef !4
  %i.hf = icmp sgt i8 %i.he, -65
  br i1 %i.hf, label %bb.ai, label %.split114.us.i.i.i.invoke

bb.ai:                                            ; preds = %bb.ah, %.split.i.i, %bb.af
  %.not31.i = icmp eq i64 %i.g, %.sroa.03.0.i
  br i1 %.not31.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.i
  %i.hh = load i8, ptr %i.hg, align 1, !noalias !117, !noundef !4
  %i.hi = add i8 %i.hh, -48
  %or.cond.i = icmp ult i8 %i.hi, 10
  br i1 %or.cond.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.03.0.lcssa168.i = phi i64 [ %.sroa.03.0.i, %bb.aj ], [ %i.g, %bb.ai ] ; 15 uses
  br i1 %i.hb, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i39.i = icmp ult i64 %.sroa.03.0.lcssa168.i, %i.g
  br i1 %.not.i39.i, label %bb.am, label %.split.i40.i

.split.i40.i:                                     ; preds = %bb.al
  %i.hj = icmp eq i64 %.sroa.03.0.lcssa168.i, %i.g
  br i1 %i.hj, label %bb.ao, label %.split114.us.i.i.i.invoke

bb.am:                                            ; preds = %bb.al
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.lcssa168.i
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !118, !noalias !117, !noundef !4
  %i.hm = icmp sgt i8 %i.hl, -65
  br i1 %i.hm, label %bb.ao, label %.split114.us.i.i.i.invoke

bb.an:                                            ; preds = %bb.aj
  %i.hn = add i64 %.sroa.03.0.i, 1
  br label %bb.af

bb.ao:                                            ; preds = %bb.am, %.split.i40.i, %bb.ak
  %i.ho = sub nuw i64 %i.g, %.sroa.03.0.lcssa168.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.03.0.lcssa168.i ; 2 uses
  %i.hq = invoke noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hp, i64 noundef %i.ho, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 8)
          to label %.noexc13 unwind label %bb.bt

.noexc13:                                         ; preds = %bb.ao
  br i1 %i.hq, label %bb.ap, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

bb.ap:                                            ; preds = %.noexc13
  %i.hr = add i64 %.sroa.03.0.lcssa168.i, 8       ; 9 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aw, %bb.ap
  %.sroa.010.0.i = phi i64 [ %i.hr, %bb.ap ], [ %i.id, %bb.aw ] ; 11 uses
  %i.hs = icmp eq i64 %.sroa.010.0.i, 0
  br i1 %i.hs, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i44.i = icmp ult i64 %.sroa.010.0.i, %i.g
  br i1 %.not.i44.i, label %bb.as, label %.split.i45.i

.split.i45.i:                                     ; preds = %bb.ar
  %i.ht = icmp eq i64 %.sroa.010.0.i, %i.g
  br i1 %i.ht, label %bb.at, label %.split114.us.i.i.i.invoke

bb.as:                                            ; preds = %bb.ar
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.010.0.i
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !119, !noalias !117, !noundef !4
  %i.hw = icmp sgt i8 %i.hv, -65
  br i1 %i.hw, label %bb.at, label %.split114.us.i.i.i.invoke

bb.at:                                            ; preds = %bb.as, %.split.i45.i, %bb.aq
  %.not34.i = icmp eq i64 %i.g, %.sroa.010.0.i
  br i1 %.not34.i, label %.thread.i, label %bb.au

.thread.i:                                        ; preds = %bb.at
  %i.hx = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.hx)
  br label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hy = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.010.0.i
  %i.hz = load i8, ptr %i.hy, align 1, !noalias !117, !noundef !4
  %i.ia = add i8 %i.hz, -48
  %or.cond1.i = icmp ult i8 %i.ia, 10
  br i1 %or.cond1.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ib = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.ib)
  %i.ic = icmp ult i64 %.sroa.010.0.i, %i.g
  br i1 %i.ic, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.id = add i64 %.sroa.010.0.i, 1
  br label %bb.aq

bb.ax:                                            ; preds = %bb.av, %.thread.i
  %.sroa.010.0.lcssa165214.i = phi i64 [ %i.g, %.thread.i ], [ %.sroa.010.0.i, %bb.av ] ; 5 uses
  %i.ie = icmp ugt i64 %i.ha, %.sroa.03.0.lcssa168.i
  %i.if = icmp ugt i64 %.sroa.03.0.lcssa168.i, %i.g
  %or.cond.i35.i = or i1 %i.ie, %i.if
  br i1 %or.cond.i35.i, label %.split114.us.i.i.i.invoke, label %bb.ay, !prof !120

bb.ay:                                            ; preds = %bb.ax
  %i.ig = icmp eq i64 %i.ha, %i.g
  br i1 %i.ig, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ih = icmp eq i64 %i.ha, 0
  br i1 %i.ih, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.ii = icmp eq i64 %.sroa.03.0.lcssa168.i, %i.g
  br i1 %i.ii, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i

bb.bb:                                            ; preds = %bb.az
  %i.ij = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ha
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !121, !noalias !117, !noundef !4
  %i.il = icmp sgt i8 %i.ik, -65
  br i1 %i.il, label %bb.ba, label %.split114.us.i.i.i.invoke, !prof !122

_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i: ; preds = %bb.ba
  %i.im = load i8, ptr %i.hp, align 1, !alias.scope !121, !noalias !117, !noundef !4
  %i.in = icmp sgt i8 %i.im, -65
  br i1 %i.in, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, label %.split114.us.i.i.i.invoke, !prof !123

_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i: ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.i, %bb.ba, %bb.ay
  %i.io = sub nuw i64 %.sroa.03.0.lcssa168.i, %i.ha ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ha ; 3 uses
  switch i64 %i.io, label %thread-pre-split.i.i [
    i64 0, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
    i64 1, label %bb.bc
  ]

bb.bc:                                            ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i
  %i.iq = load i8, ptr %i.ip, align 1, !alias.scope !124, !noalias !117, !noundef !4 ; 2 uses
  switch i8 %i.iq, label %bb.bd [
    i8 43, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
    i8 45, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
  ]

thread-pre-split.i.i:                             ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i
  %.pr.i.i = load i8, ptr %i.ip, align 1, !alias.scope !124, !noalias !117
  br label %bb.bd

bb.bd:                                            ; preds = %thread-pre-split.i.i, %bb.bc
  %i.ir = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.iq, %bb.bc ]
  %cond.i.i = icmp eq i8 %i.ir, 43                ; 2 uses
  %i.is = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.io, %i.is      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i49.i = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.it = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.it, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.bd
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i50.i

.preheader56.i.i:                                 ; preds = %bb.be
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i212, i64 1
  %i.iv = add nsw i64 %.sroa.15.1.i.i211, -1      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not52.i.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.bd, %.preheader56.i.i
  %.sroa.0.1.i.i212 = phi ptr [ %i.iu, %.preheader56.i.i ], [ %.sroa.0.0.i49.i, %bb.bd ] ; 2 uses
  %.sroa.15.1.i.i211 = phi i64 [ %i.iv, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.bd ]
  %.sroa.042.0.i.i210 = phi i64 [ %i.je, %.preheader56.i.i ], [ 0, %bb.bd ]
  %i.iw = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i210, i64 10) ; 2 uses
  %i.ix = extractvalue { i64, i1 } %i.iw, 1
  br i1 %i.ix, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit, label %bb.be, !prof !7

bb.be:                                            ; preds = %.preheader56.i.i.preheader
  %i.iy = extractvalue { i64, i1 } %i.iw, 0       ; 2 uses
  %i.iz = load i8, ptr %.sroa.0.1.i.i212, align 1, !alias.scope !124, !noalias !117, !noundef !4
  %i.ja = zext i8 %i.iz to i32
  %i.jb = add nsw i32 %i.ja, -48                  ; 2 uses
  %i.jc = icmp ugt i32 %i.jb, 9
  %i.jd = zext nneg i32 %i.jb to i64
  %i.je = add i64 %i.iy, %i.jd                    ; 3 uses
  %i.jf = icmp ult i64 %i.je, %i.iy
  %or.cond112.i = select i1 %i.jc, i1 true, i1 %i.jf, !prof !125
  br i1 %or.cond112.i, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit, label %.preheader56.i.i, !prof !125

.lr.ph.i50.i:                                     ; preds = %.preheader.i.i, %bb.bf
  %.sroa.0.269.i.i = phi ptr [ %i.jm, %bb.bf ], [ %.sroa.0.0.i49.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.jl, %bb.bf ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.jo, %bb.bf ], [ 0, %.preheader.i.i ]
  %i.jg = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !124, !noalias !117, !noundef !4
  %i.jh = zext i8 %i.jg to i32
  %i.ji = add nsw i32 %i.jh, -48                  ; 2 uses
  %i.jj = icmp ult i32 %i.ji, 10
  br i1 %i.jj, label %bb.bf, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

bb.bf:                                            ; preds = %.lr.ph.i50.i
  %i.jk = mul i64 %.sroa.042.267.i.i, 10
  %i.jl = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.jn = zext nneg i32 %i.ji to i64
  %i.jo = add i64 %i.jk, %i.jn                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not53.i.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i50.i

_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i: ; preds = %.preheader56.i.i, %bb.bf, %.preheader.i.i
  %.sroa.1177.0.i = phi i64 [ %i.jo, %bb.bf ], [ 0, %.preheader.i.i ], [ %i.je, %.preheader56.i.i ] ; 2 uses
  %i.jp = icmp ugt i64 %i.hr, %.sroa.010.0.lcssa165214.i
  %i.jq = icmp ugt i64 %.sroa.010.0.lcssa165214.i, %i.g
  %or.cond.i.i = or i1 %i.jp, %i.jq
  br i1 %or.cond.i.i, label %.split114.us.i.i.i.invoke, label %bb.bg, !prof !120

bb.bg:                                            ; preds = %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %i.jr = icmp eq i64 %i.hr, %i.g
  %i.js = icmp eq i64 %i.hr, 0
  %or.cond152.i = or i1 %i.jr, %i.js
  br i1 %or.cond152.i, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hr
  %i.ju = load i8, ptr %i.jt, align 1, !alias.scope !126, !noalias !117, !noundef !4
  %i.jv = icmp sgt i8 %i.ju, -65
  br i1 %i.jv, label %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit.thread.i, label %.split114.us.i.i.i.invoke, !prof !122

_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit.thread.i: ; preds = %bb.bh, %bb.bg
  %i.jw = sub nuw i64 %.sroa.010.0.lcssa165214.i, %i.hr ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hr ; 3 uses
  switch i64 %i.jw, label %thread-pre-split.i71.i [
    i64 0, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
    i64 1, label %bb.bi
  ]

bb.bi:                                            ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit.thread.i
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !127, !noalias !117, !noundef !4 ; 2 uses
  switch i8 %i.jy, label %bb.bj [
    i8 43, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
    i8 45, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
  ]

thread-pre-split.i71.i:                           ; preds = %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit.thread.i
  %.pr.i72.i = load i8, ptr %i.jx, align 1, !alias.scope !127, !noalias !117
  br label %bb.bj

bb.bj:                                            ; preds = %thread-pre-split.i71.i, %bb.bi
  %i.jz = phi i8 [ %.pr.i72.i, %thread-pre-split.i71.i ], [ %i.jy, %bb.bi ]
  %cond.i52.i = icmp eq i8 %i.jz, 43              ; 2 uses
  %i.ka = sext i1 %cond.i52.i to i64
  %.sroa.15.0.i53.i = add nsw i64 %i.jw, %i.ka    ; 4 uses
  %.sroa.0.0.idx.i54.i = zext i1 %cond.i52.i to i64
  %.sroa.0.0.i55.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.sroa.0.0.idx.i54.i ; 2 uses
  %i.kb = icmp samesign ult i64 %.sroa.15.0.i53.i, 17
  br i1 %i.kb, label %.preheader.i64.i, label %.preheader56.i56.i.preheader

.preheader.i64.i:                                 ; preds = %bb.bj
  %.not5366.i65.i = icmp eq i64 %.sroa.15.0.i53.i, 0
  br i1 %.not5366.i65.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit73.i, label %.lr.ph.i66.i

.preheader56.i56.i:                               ; preds = %bb.bk
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i59.i215, i64 1
  %i.kd = add nsw i64 %.sroa.15.1.i58.i214, -1    ; 2 uses
  %.not52.i60.i = icmp eq i64 %i.kd, 0
  br i1 %.not52.i60.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit73.i, label %.preheader56.i56.i.preheader

.preheader56.i56.i.preheader:                     ; preds = %bb.bj, %.preheader56.i56.i
  %.sroa.0.1.i59.i215 = phi ptr [ %i.kc, %.preheader56.i56.i ], [ %.sroa.0.0.i55.i, %bb.bj ] ; 2 uses
  %.sroa.15.1.i58.i214 = phi i64 [ %i.kd, %.preheader56.i56.i ], [ %.sroa.15.0.i53.i, %bb.bj ]
  %.sroa.042.0.i57.i213 = phi i64 [ %i.km, %.preheader56.i56.i ], [ 0, %bb.bj ]
  %i.ke = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i57.i213, i64 10) ; 2 uses
  %i.kf = extractvalue { i64, i1 } %i.ke, 1
  br i1 %i.kf, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit, label %bb.bk, !prof !7

bb.bk:                                            ; preds = %.preheader56.i56.i.preheader
  %i.kg = extractvalue { i64, i1 } %i.ke, 0       ; 2 uses
  %i.kh = load i8, ptr %.sroa.0.1.i59.i215, align 1, !alias.scope !127, !noalias !117, !noundef !4
  %i.ki = zext i8 %i.kh to i32
  %i.kj = add nsw i32 %i.ki, -48                  ; 2 uses
  %i.kk = icmp ugt i32 %i.kj, 9
  %i.kl = zext nneg i32 %i.kj to i64
  %i.km = add i64 %i.kg, %i.kl                    ; 3 uses
  %i.kn = icmp ult i64 %i.km, %i.kg
  %or.cond115.i = select i1 %i.kk, i1 true, i1 %i.kn, !prof !125
  br i1 %or.cond115.i, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit, label %.preheader56.i56.i, !prof !125

.lr.ph.i66.i:                                     ; preds = %.preheader.i64.i, %bb.bl
  %.sroa.0.269.i67.i = phi ptr [ %i.ku, %bb.bl ], [ %.sroa.0.0.i55.i, %.preheader.i64.i ] ; 2 uses
  %.sroa.15.268.i68.i = phi i64 [ %i.kt, %bb.bl ], [ %.sroa.15.0.i53.i, %.preheader.i64.i ]
  %.sroa.042.267.i69.i = phi i64 [ %i.kw, %bb.bl ], [ 0, %.preheader.i64.i ]
  %i.ko = load i8, ptr %.sroa.0.269.i67.i, align 1, !alias.scope !127, !noalias !117, !noundef !4
  %i.kp = zext i8 %i.ko to i32
  %i.kq = add nsw i32 %i.kp, -48                  ; 2 uses
  %i.kr = icmp ult i32 %i.kq, 10
  br i1 %i.kr, label %bb.bl, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit

bb.bl:                                            ; preds = %.lr.ph.i66.i
  %i.ks = mul i64 %.sroa.042.267.i69.i, 10
  %i.kt = add nsw i64 %.sroa.15.268.i68.i, -1     ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i67.i, i64 1
  %i.kv = zext nneg i32 %i.kq to i64
  %i.kw = add i64 %i.ks, %i.kv                    ; 2 uses
  %.not53.i70.i = icmp eq i64 %i.kt, 0
  br i1 %.not53.i70.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit73.i, label %.lr.ph.i66.i

_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit73.i: ; preds = %.preheader56.i56.i, %bb.bl, %.preheader.i64.i
  %.sroa.1181.0.i = phi i64 [ %i.kw, %bb.bl ], [ 0, %.preheader.i64.i ], [ %i.km, %.preheader56.i56.i ] ; 2 uses
  %.not.i74.i = icmp ugt i64 %.sroa.4.1.i88.i, %i.g
  br i1 %.not.i74.i, label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit, label %bb.bm

bb.bm:                                            ; preds = %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit73.i
  %i.kx = icmp ne i64 %.sroa.4.1.i88.i, 0
  %.not2.i.i = icmp samesign ult i64 %.sroa.4.1.i88.i, %i.g
  %or.cond.i75.i = select i1 %i.kx, i1 %.not2.i.i, i1 false
  br i1 %or.cond.i75.i, label %bb.bn, label %.split.i76.i

.split.i76.i:                                     ; preds = %bb.bn, %bb.bm
  invoke void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE8truncateCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.4.1.i88.i)
          to label %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit unwind label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.4.1.i88.i
  %i.kz = load i8, ptr %i.ky, align 1, !noalias !128, !noundef !4
  %i.la = icmp sgt i8 %i.kz, -65
  br i1 %i.la, label %.split.i76.i, label %bb.bo, !prof !129

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19
          to label %.noexc19 unwind label %bb.bt

.noexc19:                                         ; preds = %bb.bo
  unreachable

_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit: ; preds = %bb.be, %.preheader56.i.i.preheader, %.lr.ph.i50.i, %.preheader56.i56.i.preheader, %bb.bk, %.lr.ph.i66.i, %.split.i76.i, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit73.i, %.noexc13, %bb.av, %bb.bc, %bb.bc, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i, %.split.us.i.i.i, %bb.bi, %bb.bi, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit.thread.i, %.noexc11, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i
  %9 = phi i64 [ 0, %.lr.ph.i66.i ], [ 0, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i ], [ 0, %.noexc11 ], [ %.sroa.1181.0.i, %.split.i76.i ], [ %i.jw, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit.thread.i ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %.lr.ph.i50.i ], [ 0, %.split.us.i.i.i ], [ %.sroa.1181.0.i, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit73.i ], [ %i.io, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i ], [ 0, %bb.bc ], [ 0, %bb.bc ], [ 0, %bb.av ], [ 0, %.noexc13 ], [ 0, %.preheader56.i56.i.preheader ], [ 0, %bb.bk ], [ 0, %.preheader56.i.i.preheader ], [ 0, %bb.be ]
  %10 = phi i64 [ 0, %.lr.ph.i66.i ], [ 0, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.thread.i ], [ 0, %.noexc11 ], [ %.sroa.1177.0.i, %.split.i76.i ], [ %i.jw, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit.thread.i ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %.lr.ph.i50.i ], [ 0, %.split.us.i.i.i ], [ %.sroa.1177.0.i, %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit73.i ], [ %i.io, %_RNvNtNtCs8Chj7Szqq0n_4core3str6traits11check_range.exit37.thread.i ], [ 0, %bb.bc ], [ 0, %bb.bc ], [ 0, %bb.av ], [ 0, %.noexc13 ], [ 0, %.preheader56.i56.i.preheader ], [ 0, %bb.bk ], [ 0, %.preheader56.i.i.preheader ], [ 0, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.lb = call { ptr, i64 } @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE16into_boxed_sliceCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.lc = extractvalue { ptr, i64 } %i.lb, 0      ; 2 uses
  %i.ld = extractvalue { ptr, i64 } %i.lb, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lc) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.lc, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ld, ptr %.sroa.5.0..sroa_idx, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %10, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %9, ptr %i.lf, align 8
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !130
  %i.lg = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #15, !noalias !130 ; 3 uses
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %bb.bp, label %bb.bs, !prof !7

bb.bp:                                            ; preds = %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
  invoke void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #17
          to label %.noexc20 unwind label %bb.bq

.noexc20:                                         ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #18
          to label %.body.thread unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.bs:                                            ; preds = %_RNvNtCs8ZPNfZ0ciAA_10serde_json5error14parse_line_col.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lg, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.lg

.body.thread:                                     ; preds = %bb.bq, %bb.bt
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.li, %bb.bq ], [ %lpad.thr_comm, %bb.bt ]
  resume { ptr, i32 } %eh.lpad-body23

bb.bt:                                            ; preds = %.split43.i.i.i.i.invoke, %.split114.us.i.i.i.invoke, %bb.bo, %bb.a, %bb.p, %_RINvMNtCs8Chj7Szqq0n_4core3stre5rfindReECs8ZPNfZ0ciAA_10serde_json.exit.i, %bb.ao, %.split.i76.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #18
          to label %.body.thread unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorCodeNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !5, !noundef !4
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call noundef zeroext i1 @_RNvXs3_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 24)
  br label %bb.aa

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 27)
  br label %bb.aa

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 26)
  br label %bb.aa

bb.g:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 25)
  br label %bb.aa

bb.h:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 12)
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 19)
  br label %bb.aa

bb.j:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 19)
  br label %bb.aa

bb.k:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 14)
  br label %bb.aa

bb.l:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 14)
  br label %bb.aa

bb.m:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 12)
  br label %bb.aa

bb.n:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 14)
  br label %bb.aa

bb.o:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 14)
  br label %bb.aa

bb.p:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 19)
  br label %bb.aa

bb.q:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 26)
  br label %bb.aa

bb.r:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 62)
  br label %bb.aa

bb.s:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 20)
  br label %bb.aa

bb.t:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 52)
  br label %bb.aa

bb.u:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 44)
  br label %bb.aa

bb.v:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 36)
  br label %bb.aa

bb.w:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 14)
  br label %bb.aa

bb.x:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19)
  br label %bb.aa

bb.y:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 28)
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 24)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.m, %bb.h ], [ %i.n, %bb.i ], [ %i.o, %bb.j ], [ %i.p, %bb.k ], [ %i.q, %bb.l ], [ %i.r, %bb.m ], [ %i.s, %bb.n ], [ %i.t, %bb.o ], [ %i.u, %bb.p ], [ %i.v, %bb.q ], [ %i.w, %bb.r ], [ %i.x, %bb.s ], [ %i.y, %bb.t ], [ %i.z, %bb.u ], [ %i.aa, %bb.v ], [ %i.ab, %bb.w ], [ %i.ac, %bb.x ], [ %i.ad, %bb.y ], [ %i.ae, %bb.z ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs2_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !4
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = tail call { ptr, ptr } @_RNvXs4_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.g, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !134, !noundef !4
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorCodeNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs4_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_9ErrorImplNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136
  store ptr %i.b, ptr %i.a, align 8, !noalias !136
end_hunk_0
