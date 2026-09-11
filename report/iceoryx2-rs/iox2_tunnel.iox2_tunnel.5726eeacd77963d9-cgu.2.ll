Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_tunnel.iox2_tunnel.5726eeacd77963d9-cgu.2?download=true
inline.NumInlined: 193
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockEECs7tUkaH0Ivrh_11iox2_tunnel:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i
    i64 1, label %bb.d
  ], !prof !8

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !18, !noalias !17
  store i8 3, ptr %i.a, align 8, !alias.scope !18, !noalias !17
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #21, !noalias !17
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7tUkaH0Ivrh_11iox2_tunnel.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7tUkaH0Ivrh_11iox2_tunnel.exit: ; preds = %bb.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #21
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #21
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7tUkaH0Ivrh_11iox2_tunnel.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7tUkaH0Ivrh_11iox2_tunnel.exit
    i64 1, label %bb.c
  ], !prof !8

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7tUkaH0Ivrh_11iox2_tunnel.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !21
  store i8 3, ptr %i.a, align 8, !alias.scope !21
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7tUkaH0Ivrh_11iox2_tunnel.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs7tUkaH0Ivrh_11iox2_tunnel.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCs8Chj7Szqq0n_4core2io5write17default_write_fmtNtNtNtCsigunbJSLHCW_3std2io5stdio10StderrLockECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3, ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  %i.e = load ptr, ptr %i.c, align 8, !noundef !6 ; 5 uses
  %.not = icmp eq ptr %i.e, null                  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.g, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7tUkaH0Ivrh_11iox2_tunnel.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  br i1 %.not, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7tUkaH0Ivrh_11iox2_tunnel.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i
    i64 1, label %bb.f
  ], !prof !8

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !27, !noalias !26
  store i8 3, ptr %i.a, align 8, !alias.scope !27, !noalias !26
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #21, !noalias !26
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7tUkaH0Ivrh_11iox2_tunnel.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7tUkaH0Ivrh_11iox2_tunnel.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ], [ null, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7tUkaH0Ivrh_11iox2_tunnel.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.g:                                             ; preds = %bb.b
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #20
  unreachable
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCsigunbJSLHCW_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCs8Chj7Szqq0n_4core6result6ResultuNtCs2wk0oZsur5i_6anyhow5ErrorEB19_ECs7tUkaH0Ivrh_11iox2_tunnel(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr %0() #21, !inline_history !28
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !29
  ret ptr %i.a
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define hidden void @_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort8unstable7ipnsortTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYBT_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs7tUkaH0Ivrh_11iox2_tunnel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.c = tail call noundef range(i8 0, 3) i8 @_RINvNtCs8Chj7Szqq0n_4core3cmp21default_chaining_implNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringBO_NvMB2_NtB2_8Ordering5is_ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #21
  switch i8 %i.c, label %.preheader [
    i8 2, label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit
    i8 0, label %.preheader17
  ]

.preheader:                                       ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit, %bb.b
  %.not29 = icmp eq i64 %1, 2
  br i1 %.not29, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit, label %.lr.ph24

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.f = load i64, ptr %i.d, align 8, !alias.scope !63, !noalias !64, !noundef !6
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !64, !noalias !63, !noundef !6
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit, %bb.b
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17, %bb.c
  %.sroa.01.0.i19 = phi i64 [ %i.p, %bb.c ], [ 2, %.preheader17 ] ; 5 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 2 uses
  %3 = getelementptr [32 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 2 uses
  %4 = getelementptr i8, ptr %3, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.j = tail call noundef range(i8 0, 3) i8 @_RINvNtCs8Chj7Szqq0n_4core3cmp21default_chaining_implNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringBO_NvMB2_NtB2_8Ordering5is_ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4) #21
  switch i8 %i.j, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit [
    i8 2, label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit4
    i8 0, label %bb.c
  ]

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit4: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = getelementptr i8, ptr %3, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.m = load i64, ptr %i.k, align 8, !alias.scope !71, !noalias !72, !noundef !6
  %i.n = load i64, ptr %i.l, align 8, !alias.scope !72, !noalias !71, !noundef !6
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit4
  %i.p = add nuw nsw i64 %.sroa.01.0.i19, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1
  br i1 %exitcond.not, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs7tUkaH0Ivrh_11iox2_tunnel.exit, label %.lr.ph

.lr.ph24:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i23 = phi i64 [ %i.x, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.1.i23 ; 2 uses
  %5 = getelementptr [32 x i8], ptr %0, i64 %.sroa.01.1.i23 ; 2 uses
  %6 = getelementptr i8, ptr %5, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.r = tail call noundef range(i8 0, 3) i8 @_RINvNtCs8Chj7Szqq0n_4core3cmp21default_chaining_implNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringBO_NvMB2_NtB2_8Ordering5is_ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6) #21
  switch i8 %i.r, label %bb.d [
    i8 2, label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit7
    i8 0, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit
  ]

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit7: ; preds = %.lr.ph24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr i8, ptr %5, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.u = load i64, ptr %i.s, align 8, !alias.scope !79, !noalias !80, !noundef !6
  %i.v = load i64, ptr %i.t, align 8, !alias.scope !80, !noalias !79, !noundef !6
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit

bb.d:                                             ; preds = %.lr.ph24, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit7
  %i.x = add nuw nsw i64 %.sroa.01.1.i23, 1       ; 2 uses
  %exitcond33.not = icmp eq i64 %i.x, %1
  br i1 %exitcond33.not, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.preheader.i.i, label %.lr.ph24

_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit: ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit4, %.lr.ph, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit7, %.lr.ph24, %.preheader17, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader17 ], [ true, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit7 ], [ true, %.lr.ph24 ], [ false, %.lr.ph ], [ false, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit4 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader17 ], [ %.sroa.01.1.i23, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit7 ], [ %.sroa.01.1.i23, %.lr.ph24 ], [ %.sroa.01.0.i19, %.lr.ph ], [ %.sroa.01.0.i19, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit4 ] ; 2 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit
  br i1 %.sroa.3.0.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.preheader.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs7tUkaH0Ivrh_11iox2_tunnel.exit

bb.f:                                             ; preds = %_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared17find_existing_runTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit
  %i.aa = or i64 %1, 1
  %i.ab = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 1
  %i.ae = xor i32 %i.ad, 126
  tail call fastcc void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB17_NtNtBa_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, i32 noundef %i.ae) #21
  br label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs7tUkaH0Ivrh_11iox2_tunnel.exit

_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs7tUkaH0Ivrh_11iox2_tunnel.exit: ; preds = %bb.c, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.i.i, %bb.a, %bb.e, %bb.f
  ret void

_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.preheader.i.i: ; preds = %bb.d, %bb.e
  %i.af = lshr i64 %1, 1
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  br label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.i.i

_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.i.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.i.i, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ak, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.i.i ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.aj = getelementptr [32 x i8], ptr %i.ag, i64 %i.ah
  tail call void @_RINvNvNtCs8Chj7Szqq0n_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7tUkaH0Ivrh_11iox2_tunnel(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef 4) #21
  %i.ak = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ak, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE7reverseCs7tUkaH0Ivrh_11iox2_tunnel.exit, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjE12split_at_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit11.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 36028797018963968) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b) #21
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b) #21
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB14_NtNtBa_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 5 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.n = tail call noundef range(i8 0, 3) i8 @_RINvNtCs8Chj7Szqq0n_4core3cmp21default_chaining_implNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringBO_NvMB2_NtB2_8Ordering5is_ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.04.0) #21 ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i8 %i.n to i1
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.r = load i64, ptr %i.p, align 8, !alias.scope !114, !noalias !115, !noundef !6
  %i.s = load i64, ptr %i.q, align 8, !alias.scope !115, !noalias !114, !noundef !6
  %i.t = icmp ult i64 %i.r, %i.s
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i = phi i1 [ %i.o, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.u = tail call noundef range(i8 0, 3) i8 @_RINvNtCs8Chj7Szqq0n_4core3cmp21default_chaining_implNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringBO_NvMB2_NtB2_8Ordering5is_ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.08.0) #21 ; 2 uses
  %.not.i.i12 = icmp eq i8 %i.u, 2
  br i1 %.not.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit
  %i.v = trunc nuw i8 %i.u to i1
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit14

bb.g:                                             ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !122, !noalias !123, !noundef !6
  %i.z = load i64, ptr %i.x, align 8, !alias.scope !123, !noalias !122, !noundef !6
  %i.aa = icmp ult i64 %i.y, %i.z
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit14

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit14: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i13 = phi i1 [ %i.v, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i13
  br i1 %i.ab, label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot7median3TNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit, label %bb.h

bb.h:                                             ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ac = tail call noundef range(i8 0, 3) i8 @_RINvNtCs8Chj7Szqq0n_4core3cmp21default_chaining_implNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringBO_NvMB2_NtB2_8Ordering5is_ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.08.0) #21 ; 2 uses
  %.not.i.i15 = icmp eq i8 %i.ac, 2
  br i1 %.not.i.i15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = trunc nuw i8 %i.ac to i1
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit17

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.ag = load i64, ptr %i.ae, align 8, !alias.scope !130, !noalias !131, !noundef !6
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !131, !noalias !130, !noundef !6
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit17

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit17: ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i16 = phi i1 [ %i.ad, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i16
  %..i = select i1 %i.aj, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot7median3TNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit

_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared5pivot7median3TNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYBZ_NtNtBa_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel.exit: ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit14, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit17
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit14 ], [ %..i, %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit17 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort12sort4_stableTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENvYB19_NtNtBa_3cmp10PartialOrd2ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noundef nonnull captures(address, read_provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.b = tail call noundef range(i8 0, 3) i8 @_RINvNtCs8Chj7Szqq0n_4core3cmp21default_chaining_implNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringBO_NvMB2_NtB2_8Ordering5is_ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #21 ; 2 uses
  %.not.i.i = icmp eq i8 %i.b, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw i8 %i.b to i1
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.f = load i64, ptr %i.d, align 8, !alias.scope !183, !noalias !184, !noundef !6
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !184, !noalias !183, !noundef !6
  %i.h = icmp ult i64 %i.f, %i.g
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi i1 [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.k = tail call noundef range(i8 0, 3) i8 @_RINvNtCs8Chj7Szqq0n_4core3cmp21default_chaining_implNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringBO_NvMB2_NtB2_8Ordering5is_ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j) #21 ; 2 uses
  %.not.i.i1 = icmp eq i8 %i.k, 2
  br i1 %.not.i.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit
  %i.l = trunc nuw i8 %i.k to i1
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit3

bb.e:                                             ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.o = load i64, ptr %i.m, align 8, !alias.scope !191, !noalias !192, !noundef !6
  %i.p = load i64, ptr %i.n, align 8, !alias.scope !192, !noalias !191, !noundef !6
  %i.q = icmp ult i64 %i.o, %i.p
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit3

_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit3: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i2 = phi i1 [ %i.l, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = zext i1 %.sroa.0.0.i.i to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r ; 4 uses
  %i.t = xor i1 %.sroa.0.0.i.i, true
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.u ; 5 uses
  %i.w = select i1 %.sroa.0.0.i.i2, i64 3, i64 2
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = select i1 %.sroa.0.0.i.i2, i64 2, i64 3
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.y ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.aa = tail call noundef range(i8 0, 3) i8 @_RINvNtCs8Chj7Szqq0n_4core3cmp21default_chaining_implNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringBO_NvMB2_NtB2_8Ordering5is_ltECs7tUkaH0Ivrh_11iox2_tunnel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s) #21 ; 2 uses
  %.not.i.i4 = icmp eq i8 %i.aa, 2
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit3
  %i.ab = trunc nuw i8 %i.aa to i1
  br label %_RNvYNvYTNtNtNtCsigunbJSLHCW_3std3ffi6os_str8OsStringjENtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltINtNtNtBU_3ops8function5FnMutTRB5_B20_EE8call_mutCs7tUkaH0Ivrh_11iox2_tunnel.exit6

end_hunk_0
