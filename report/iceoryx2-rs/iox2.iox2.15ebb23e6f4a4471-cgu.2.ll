Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2.iox2.15ebb23e6f4a4471-cgu.2?download=true
inline.NumInlined: 193
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCs5WK5l2q0aFk_12clap_builder5errorNtB3_5Error3rawReECs1SGmE4BlMHt_4iox2:bb.a
bb.d:                                             ; preds = %_RNvXsB_NtCsbqH9stoieM8_5alloc6stringReNtB5_8ToString9to_stringCs1SGmE4BlMHt_4iox2.exit
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.461.0..sroa_idx) #23, !noalias !50
  %.val.i.i.i.i.i = load i64, ptr %.sroa.461.0..sroa_idx, align 8, !range !8, !alias.scope !51, !noalias !50, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.g, label %_RINvMNtCs5WK5l2q0aFk_12clap_builder5errorNtB3_5Error11set_messageNtNtCsbqH9stoieM8_5alloc6string6StringECs1SGmE4BlMHt_4iox2.exit, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs1SGmE4BlMHt_4iox2.exit.sink.split.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs1SGmE4BlMHt_4iox2.exit.sink.split.i.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !51, !noalias !50, !nonnull !5, !noundef !5
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !50
  br label %_RINvMNtCs5WK5l2q0aFk_12clap_builder5errorNtB3_5Error11set_messageNtNtCsbqH9stoieM8_5alloc6string6StringECs1SGmE4BlMHt_4iox2.exit

_RINvMNtCs5WK5l2q0aFk_12clap_builder5errorNtB3_5Error11set_messageNtNtCsbqH9stoieM8_5alloc6string6StringECs1SGmE4BlMHt_4iox2.exit: ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit, %_RNvXsB_NtCsbqH9stoieM8_5alloc6stringReNtB5_8ToString9to_stringCs1SGmE4BlMHt_4iox2.exit, %bb.d, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs1SGmE4BlMHt_4iox2.exit.sink.split.i.i.i
  %.sroa.5.0.i.i108 = phi ptr [ %i.d, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs1SGmE4BlMHt_4iox2.exit.sink.split.i.i.i ], [ %i.d, %_RNvXsB_NtCsbqH9stoieM8_5alloc6stringReNtB5_8ToString9to_stringCs1SGmE4BlMHt_4iox2.exit ], [ %i.d, %bb.d ], [ inttoptr (i64 1 to ptr), %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit ]
  store i64 0, ptr %i.a, align 8, !alias.scope !52, !noalias !50
  store i64 %2, ptr %.sroa.461.0..sroa_idx, align 8, !alias.scope !53
  %.sroa.4.0..sroa.42.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.i.i108, ptr %.sroa.4.0..sroa.42.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !53
  %.sroa.5.0..sroa.42.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa.42.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !53
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtB5_7matches11arg_matches6ValuesNtNtCsbqH9stoieM8_5alloc6string6StringEEECs1SGmE4BlMHt_4iox2(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = load i64, ptr %3, align 8, !range !9, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs1SGmE4BlMHt_4iox2, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvMNtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs8Chj7Szqq0n_4core6option6OptionbEECs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = load i64, ptr %2, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs1SGmE4BlMHt_4iox2, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs0_NtNtCs5WK5l2q0aFk_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 8, !range !11, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs1SGmE4BlMHt_4iox2(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1SGmE4BlMHt_4iox2.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1SGmE4BlMHt_4iox2.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1SGmE4BlMHt_4iox2.exit
    i64 1, label %bb.e
  ], !prof !56

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1SGmE4BlMHt_4iox2.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !57
  store i8 3, ptr %i.a, align 8, !alias.scope !57
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #23
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1SGmE4BlMHt_4iox2.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs1SGmE4BlMHt_4iox2.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCsigunbJSLHCW_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCs8Chj7Szqq0n_4core6result6ResultuNtCs2wk0oZsur5i_6anyhow5ErrorEB19_ECs1SGmE4BlMHt_4iox2(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr %0() #23, !inline_history !58
  tail call void asm sideeffect "", "~{memory}"() #23, !srcloc !59
  ret ptr %i.a
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define hidden void @_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort8unstable7ipnsortTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYBT_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs1SGmE4BlMHt_4iox2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !91, !noalias !92, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3.i.i = load i64, ptr %i.c, align 8, !alias.scope !91, !noalias !92, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4.i.i = load ptr, ptr %i.d, align 8, !alias.scope !92, !noalias !91, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i.i = load i64, ptr %i.e, align 8, !alias.scope !92, !noalias !91, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i, i64 %.val5.i.i)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val4.i.i, i64 %spec.store.select.i.i.i.i.i), !noalias !93 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.val3.i.i, %.val5.i.i
  %spec.select.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %cond.i.i.i.i, label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit, label %.split

.split:                                           ; preds = %bb.b
  %i.j = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.j, label %.preheader, label %.preheader28

.preheader:                                       ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit, %.split
  %.not38 = icmp eq i64 %1, 2
  br i1 %.not38, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit, label %.lr.ph34

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.m = load i64, ptr %i.k, align 8, !alias.scope !96, !noalias !97, !noundef !5
  %i.n = load i64, ptr %i.l, align 8, !alias.scope !97, !noalias !96, !noundef !5
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit, %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader28, %bb.c
  %.val5.i.i5 = phi i64 [ %.val3.i.i3, %bb.c ], [ %.val3.i.i, %.preheader28 ] ; 2 uses
  %.val4.i.i4 = phi ptr [ %.val.i.i2, %bb.c ], [ %.val.i.i, %.preheader28 ]
  %.sroa.01.0.i30 = phi i64 [ %i.ad, %bb.c ], [ 2, %.preheader28 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i30 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i2 = load ptr, ptr %i.q, align 8, !alias.scope !102, !noalias !103, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val3.i.i3 = load i64, ptr %i.r, align 8, !alias.scope !102, !noalias !103, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i6 = tail call i64 @llvm.umin.i64(i64 %.val3.i.i3, i64 %.val5.i.i5)
  %i.s = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i2, ptr nonnull readonly %.val4.i.i4, i64 %spec.store.select.i.i.i.i.i6), !noalias !104 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %.val3.i.i3, %.val5.i.i5
  %spec.select.i.i.i.i.i7 = select i1 %i.u, i64 %i.v, i64 %i.t ; 2 uses
  %cond.i.i.i.i8 = icmp eq i64 %spec.select.i.i.i.i.i7, 0
  br i1 %cond.i.i.i.i8, label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit10, label %.split22

.split22:                                         ; preds = %.lr.ph
  %i.w = icmp slt i64 %spec.select.i.i.i.i.i7, 0
  br i1 %i.w, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit, label %bb.c

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit10: ; preds = %.lr.ph
  %i.x = getelementptr [32 x i8], ptr %0, i64 %.sroa.01.0.i30
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.z = getelementptr i8, ptr %i.x, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.aa = load i64, ptr %i.y, align 8, !alias.scope !107, !noalias !108, !noundef !5
  %i.ab = load i64, ptr %i.z, align 8, !alias.scope !108, !noalias !107, !noundef !5
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit, label %bb.c

bb.c:                                             ; preds = %.split22, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit10
  %i.ad = add nuw nsw i64 %.sroa.01.0.i30, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond.not, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs1SGmE4BlMHt_4iox2.exit, label %.lr.ph

.lr.ph34:                                         ; preds = %.preheader, %bb.d
  %.val5.i.i14 = phi i64 [ %.val3.i.i12, %bb.d ], [ %.val3.i.i, %.preheader ] ; 2 uses
  %.val4.i.i13 = phi ptr [ %.val.i.i11, %bb.d ], [ %.val.i.i, %.preheader ]
  %.sroa.01.1.i33 = phi i64 [ %i.as, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.1.i33 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val.i.i11 = load ptr, ptr %i.af, align 8, !alias.scope !113, !noalias !114, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val3.i.i12 = load i64, ptr %i.ag, align 8, !alias.scope !113, !noalias !114, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i15 = tail call i64 @llvm.umin.i64(i64 %.val3.i.i12, i64 %.val5.i.i14)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i11, ptr nonnull readonly %.val4.i.i13, i64 %spec.store.select.i.i.i.i.i15), !noalias !115 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %.val3.i.i12, %.val5.i.i14
  %spec.select.i.i.i.i.i16 = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %cond.i.i.i.i17 = icmp eq i64 %spec.select.i.i.i.i.i16, 0
  br i1 %cond.i.i.i.i17, label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit19, label %.split23

.split23:                                         ; preds = %.lr.ph34
  %i.al = icmp slt i64 %spec.select.i.i.i.i.i16, 0
  br i1 %i.al, label %bb.d, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit19: ; preds = %.lr.ph34
  %i.am = getelementptr [32 x i8], ptr %0, i64 %.sroa.01.1.i33
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ao = getelementptr i8, ptr %i.am, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.ap = load i64, ptr %i.an, align 8, !alias.scope !118, !noalias !119, !noundef !5
  %i.aq = load i64, ptr %i.ao, align 8, !alias.scope !119, !noalias !118, !noundef !5
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.d, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit

bb.d:                                             ; preds = %.split23, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit19
  %i.as = add nuw nsw i64 %.sroa.01.1.i33, 1      ; 2 uses
  %exitcond42.not = icmp eq i64 %i.as, %1
  br i1 %exitcond42.not, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.preheader.i.i, label %.lr.ph34

_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit: ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit10, %.split22, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit19, %.split23, %.preheader28, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader28 ], [ true, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit19 ], [ true, %.split23 ], [ false, %.split22 ], [ false, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit10 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader28 ], [ %.sroa.01.1.i33, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit19 ], [ %.sroa.01.1.i33, %.split23 ], [ %.sroa.01.0.i30, %.split22 ], [ %.sroa.01.0.i30, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit10 ] ; 2 uses
  %i.at = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit
  br i1 %.sroa.3.0.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.preheader.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs1SGmE4BlMHt_4iox2.exit

bb.f:                                             ; preds = %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit
  %i.av = or i64 %1, 1
  %i.aw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = xor i32 %i.ay, 126
  tail call fastcc void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, i32 noundef %i.az) #23
  br label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs1SGmE4BlMHt_4iox2.exit

_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs1SGmE4BlMHt_4iox2.exit: ; preds = %bb.c, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.i.i, %bb.a, %bb.e, %bb.f
  ret void

_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.preheader.i.i: ; preds = %bb.d, %bb.e
  %i.ba = lshr i64 %1, 1
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  br label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.i.i

_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.i.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.i.i, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bf, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.i.i ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.preheader.i.i ] ; 3 uses
  %i.bc = xor i64 %.sroa.0.016.i.i, -1
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.be = getelementptr [32 x i8], ptr %i.bb, i64 %i.bc
  tail call void @_RINvNvNtCs8Chj7Szqq0n_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs1SGmE4BlMHt_4iox2(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 4) #23
  %i.bf = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bf, %i.ba
  br i1 %exitcond.not.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs1SGmE4BlMHt_4iox2.exit, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs1SGmE4BlMHt_4iox2.exit11.i.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 36028797018963968) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b) #23
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b) #23
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 5 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !151, !noalias !152, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %.val3.i.i = load i64, ptr %i.o, align 8, !alias.scope !151, !noalias !152, !noundef !5 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %.val4.i.i = load ptr, ptr %i.p, align 8, !alias.scope !152, !noalias !151, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %.val5.i.i = load i64, ptr %i.q, align 8, !alias.scope !152, !noalias !151, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i, i64 %.val5.i.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val4.i.i, i64 %spec.store.select.i.i.i.i.i), !noalias !153 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %.val3.i.i, %.val5.i.i
  %spec.select.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %cond.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !156, !noalias !157, !noundef !5
  %i.z = load i64, ptr %i.x, align 8, !alias.scope !157, !noalias !156, !noundef !5
  %i.aa = icmp ult i64 %i.y, %i.z
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i = phi i1 [ %i.v, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %.val4.i.i14 = load ptr, ptr %i.ab, align 8, !alias.scope !162, !noalias !163, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %.val5.i.i15 = load i64, ptr %i.ac, align 8, !alias.scope !162, !noalias !163, !noundef !5 ; 4 uses
  %spec.store.select.i.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %.val3.i.i, i64 %.val5.i.i15)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val4.i.i14, i64 %spec.store.select.i.i.i.i.i16), !noalias !164 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub i64 %.val3.i.i, %.val5.i.i15
  %spec.select.i.i.i.i.i17 = select i1 %i.af, i64 %i.ag, i64 %i.ae ; 2 uses
  %cond.i.i.i.i18 = icmp eq i64 %spec.select.i.i.i.i.i17, 0
  br i1 %cond.i.i.i.i18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit
  %i.ah = icmp slt i64 %spec.select.i.i.i.i.i17, 0
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit20

bb.g:                                             ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.ak = load i64, ptr %i.ai, align 8, !alias.scope !167, !noalias !168, !noundef !5
  %i.al = load i64, ptr %i.aj, align 8, !alias.scope !168, !noalias !167, !noundef !5
  %i.am = icmp ult i64 %i.ak, %i.al
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit20

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit20: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i19 = phi i1 [ %i.ah, %bb.f ], [ %i.am, %bb.g ]
  %i.an = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i19
  br i1 %i.an, label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot7median3TNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit, label %bb.h

bb.h:                                             ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %spec.store.select.i.i.i.i.i25 = tail call i64 @llvm.umin.i64(i64 %.val5.i.i, i64 %.val5.i.i15)
  %i.ao = tail call i32 @memcmp(ptr nonnull readonly %.val4.i.i, ptr nonnull readonly %.val4.i.i14, i64 %spec.store.select.i.i.i.i.i25), !noalias !173 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp eq i32 %i.ao, 0
  %i.ar = sub i64 %.val5.i.i, %.val5.i.i15
  %spec.select.i.i.i.i.i26 = select i1 %i.aq, i64 %i.ar, i64 %i.ap ; 2 uses
  %cond.i.i.i.i27 = icmp eq i64 %spec.select.i.i.i.i.i26, 0
  br i1 %cond.i.i.i.i27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = icmp slt i64 %spec.select.i.i.i.i.i26, 0
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit29

bb.j:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.av = load i64, ptr %i.at, align 8, !alias.scope !176, !noalias !177, !noundef !5
  %i.aw = load i64, ptr %i.au, align 8, !alias.scope !177, !noalias !176, !noundef !5
  %i.ax = icmp ult i64 %i.av, %i.aw
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit29

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit29: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i28 = phi i1 [ %i.as, %bb.i ], [ %i.ax, %bb.j ]
  %i.ay = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i28
  %..i = select i1 %i.ay, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot7median3TNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit

_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot7median3TNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2.exit: ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit20, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit29
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit20 ], [ %..i, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit29 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB19_NtNtBa_3cmp10PartialOrd2ltECs1SGmE4BlMHt_4iox2(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !227, !noalias !228, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3.i.i = load i64, ptr %i.b, align 8, !alias.scope !227, !noalias !228, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4.i.i = load ptr, ptr %i.c, align 8, !alias.scope !228, !noalias !227, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i.i = load i64, ptr %i.d, align 8, !alias.scope !228, !noalias !227, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i, i64 %.val5.i.i)
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val4.i.i, i64 %spec.store.select.i.i.i.i.i), !noalias !229 ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i32 %i.e, 0
  %i.h = sub i64 %.val3.i.i, %.val5.i.i
  %spec.select.i.i.i.i.i = select i1 %i.g, i64 %i.h, i64 %i.f ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %cond.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.l = load i64, ptr %i.j, align 8, !alias.scope !232, !noalias !233, !noundef !5
  %i.m = load i64, ptr %i.k, align 8, !alias.scope !233, !noalias !232, !noundef !5
  %i.n = icmp ult i64 %i.l, %i.m
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs1SGmE4BlMHt_4iox2.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi i1 [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i1 = load ptr, ptr %i.o, align 8, !alias.scope !238, !noalias !239, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i.i2 = load i64, ptr %i.p, align 8, !alias.scope !238, !noalias !239, !noundef !5 ; 2 uses
end_hunk_0
