Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-14328ae00a099d80.lance_tools.e2bf3497c5c70a02-cgu.0?download=true
inline.NumInlined: 6279
inline.NumDeleted: 2880
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEEECsjsY2yM364a4_11lance_tools:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !43, !invariant.load !25 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCscI6d9CVNmLh_4core6future6future6Futurep6OutputbNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit5.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !44, !invariant.load !25
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #36
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCscI6d9CVNmLh_4core6future6future6Futurep6OutputbNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit5.i.i.i

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCscI6d9CVNmLh_4core6future6future6Futurep6OutputbNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit5.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputbNtNtB4_6marker4SendEL_EEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsjsY2yM364a4_11lance_tools(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !789 {
bb.a:
  %.not.i = icmp eq ptr %.0.val, null
  br i1 %.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !25 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !43, !invariant.load !25 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsjsY2yM364a4_11lance_tools.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !44, !invariant.load !25
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsjsY2yM364a4_11lance_tools.exit

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !43, !invariant.load !25 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCscI6d9CVNmLh_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit5.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !44, !invariant.load !25
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #36
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCscI6d9CVNmLh_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit5.i.i.i

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtNtCscI6d9CVNmLh_4core6future6future6Futurep6OutputuNtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit5.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEECsjsY2yM364a4_11lance_tools(ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !808 {
bb.a:
  %i.a = icmp eq ptr %.8.val, null
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEECsjsY2yM364a4_11lance_tools.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %.val.i.i.i.i = load ptr, ptr %.8.val, align 8, !alias.scope !809, !noundef !25 ; 3 uses
  %i.b = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef zeroext i1 @_RNvMNtNtNtCseXbohGRa9jr_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %.val.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.e, !noalias !809

.noexc.i.i.i.i:                                   ; preds = %bb.c
  br i1 %i.c, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i

bb.d:                                             ; preds = %.noexc.i.i.i.i
  invoke void @_RNvMs_NtNtNtCseXbohGRa9jr_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %.val.i.i.i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i unwind label %bb.e, !noalias !809

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtBG_6handle6HandleEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(8) %i.e) #41
          to label %bb.f unwind label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i: ; preds = %bb.d, %.noexc.i.i.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread5queue5LocalINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtBG_6handle6HandleEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(8) %i.f)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.i, %bb.e
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.d, %bb.e ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !811, !noundef !25 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !812
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.o unwind label %bb.m

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCseXbohGRa9jr_5tokio7runtime4task8NotifiedINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !814, !noundef !25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsjsY2yM364a4_11lance_tools.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !815
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsjsY2yM364a4_11lance_tools.exit.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread4park5InnerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h, %bb.g, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.s, %bb.n ], [ %.pn.i.i.i.i, %bb.h ], [ %.pn.i.i.i.i, %bb.g ], [ %.pn.i.i.i.i, %bb.f ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 120, i64 noundef 8) #36
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 120, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker4CoreEEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtNtNtCseXbohGRa9jr_5tokio7runtime9scheduler12multi_thread6worker4CoreEECsjsY2yM364a4_11lance_tools.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 !guid !816 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !45, !noundef !25
  switch i8 %i.a, label %bb.c [
    i8 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit
    i8 -1, label %bb.b
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.c, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjsY2yM364a4_11lance_tools.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools(ptr %.0.val) unnamed_addr #4 !guid !817 {
bb.a:
  %magicptr = ptrtoint ptr %.0.val to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %bb.c, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 144, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9ZJqkc64Jh8_14event_listener3sys8ListeneruEEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %0) unnamed_addr #0 !guid !839 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !29, !noundef !25
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys8ListeneruEECsjsY2yM364a4_11lance_tools.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys8ListeneruEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.d = load i8, ptr %i.c, align 8, !range !41, !alias.scope !846, !noundef !25
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys8ListeneruEECsjsY2yM364a4_11lance_tools.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !848, !noundef !25 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !848, !noundef !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !848, !nonnull !25, !noundef !25
  tail call void %i.j(ptr noundef %.val1.i.i.i.i.i.i.i.i), !noalias !848, !inline_history !832
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys8ListeneruEECsjsY2yM364a4_11lance_tools.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !852, !nonnull !25, !noundef !25
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !852
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys8ListeneruEECsjsY2yM364a4_11lance_tools.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtCsiXpev0CbYtQ_7parking5InnerE9drop_slowCs9ZJqkc64Jh8_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9ZJqkc64Jh8_14event_listener3sys8ListeneruEECsjsY2yM364a4_11lance_tools.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr nofree captures(address_is_null) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !guid !859 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = icmp eq ptr %.0.val, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %.0.val, i64 -1 release, align 8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = tail call noundef i64 @_RNvXsF_NtCs9ZJqkc64Jh8_14event_listener6notifylNtB5_16IntoNotification17into_notification(i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.b) #36, !srcloc !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !860
  %i.i = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !860 ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i, !prof !37

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #40, !noalias !860
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i: ; preds = %bb.d
  store i64 1, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 4
  %.sroa.730.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.730.0..sroa_idx.i.i.i.i.i, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8
  %i.k = cmpxchg ptr %i.e, ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i acq_rel acquire, align 8 ; 2 uses
  %i.l = extractvalue { ptr, i1 } %i.k, 0
  %i.m = extractvalue { ptr, i1 } %i.k, 1
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, label %bb.f

bb.f:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %i.n = atomicrmw add ptr %i.i, i64 -1 release, align 8, !noalias !861
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEE9drop_slowCsjMQ83FLvXnF_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.c, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %.sroa.026.1.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ], [ %.sroa.5.0..sroa_idx.i.i.i.i.i, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i ]
  call fastcc void @_RINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %.sroa.026.1.i.i.i.i.i, i64 noundef %i.f)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtB10_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3s_16CachedReaderDataEEEB1Z_EEECsjsY2yM364a4_11lance_tools(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !862 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !46, !noundef !25
  %i.c = icmp eq i32 %i.b, -2
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtBE_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB35_16CachedReaderDataEEEB1C_EECsjsY2yM364a4_11lance_tools.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtBE_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB35_16CachedReaderDataEEEB1C_EECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2K_16CachedReaderDataEEEB1h_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !align !42, !noundef !25 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.g = load i8, ptr %i.e, align 8, !range !26, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1
  %.not.i.i.i = icmp ne ptr %i.f, null
  %or.cond.not.i.i.i = and i1 %.not.i.i.i, %i.h
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2K_16CachedReaderDataEEEB1h_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.f, i64 -2 release, align 8 ; 0 uses
  br label %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2K_16CachedReaderDataEEEB1h_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i

_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2K_16CachedReaderDataEEEB1h_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.j, align 8, !align !42, !noundef !25 ; 4 uses
  %i.k = icmp eq ptr %.val.i, null
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtBE_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB35_16CachedReaderDataEEEB1C_EECsjsY2yM364a4_11lance_tools.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2K_16CachedReaderDataEEEB1h_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %.val.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 56, i64 noundef 8) #36
  resume { ptr, i32 } %i.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 56, i64 noundef 8) #36
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtBE_5MutexINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB35_16CachedReaderDataEEEB1C_EECsjsY2yM364a4_11lance_tools.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtB10_5MutexINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEB1Z_EEECsjsY2yM364a4_11lance_tools(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !863 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !46, !noundef !25
  %i.c = icmp eq i32 %i.b, -2
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtBE_5MutexINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEB1C_EECsjsY2yM364a4_11lance_tools.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjMQ83FLvXnF_10async_lock5mutex11AcquireSlowRINtBE_5MutexINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEB1C_EECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs9ZJqkc64Jh8_14event_listener13EventListenerECsjsY2yM364a4_11lance_tools.exit.i.i, %_RNvXs0_NvNtCsjMQ83FLvXnF_10async_lock5mutexs2_1__INtB7_11AcquireSlowRINtB7_5MutexINtNtNtCskTBvlRM5ILY_4moka6common11timer_wheel10TimerWheelNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEEB1h_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjsY2yM364a4_11lance_tools.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !align !42, !noundef !25 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.g = load i8, ptr %i.e, align 8, !range !26, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1
end_hunk_0
begin_hunk_1_@_RNCNvNtCsftBYP88YJaE_11lance_tools4util25get_object_store_and_path0CsjsY2yM364a4_11lance_tools:bb.a
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 2 uses
  store <2 x i64> %i.sg, ptr %i.ui, align 8, !noalias !12087
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1080
  store i64 %.sroa.4.0.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1168
  store i64 %i.tj, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.10205.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store i32 %i.tl, ptr %.sroa.10205.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.11206.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1184
  store ptr %i.tn, ptr %.sroa.11206.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %.sroa.55.0.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200
  store ptr %i.tt, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208
  store ptr %.sroa.57.0.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1216
  store ptr %i.ty, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1224
  store i8 %i.ue, ptr %.sroa.16.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1225
  store i8 %i.ug, ptr %.sroa.17.0..sroa_idx.i.i.i, align 1, !noalias !12087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12087
  %i.uj = load ptr, ptr %i.qr, align 8, !noalias !12087, !nonnull !25, !align !42, !noundef !25 ; 7 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 64 ; 10 uses
  %i.ul = load atomic i32, ptr %i.uk monotonic, align 8, !noalias !12114 ; 3 uses
  %or.cond3.i.i.i.i.i = icmp ult i32 %i.ul, 1073741822
  br i1 %or.cond3.i.i.i.i.i, label %bb.he, label %bb.hf, !prof !12115

bb.he:                                            ; preds = %bb.hd
  %i.um = add nuw nsw i32 %i.ul, 1
  %i.un = cmpxchg weak ptr %i.uk, i32 %i.ul, i32 %i.um acquire monotonic, align 4, !noalias !12114
  %i.uo = extractvalue { i32, i1 } %i.un, 1
  br i1 %i.uo, label %bb.hg, label %bb.hf, !prof !27

bb.hf:                                            ; preds = %bb.he, %bb.hd
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 8 %i.uk)
          to label %bb.hg unwind label %bb.hk, !noalias !12088

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %i.up = getelementptr inbounds nuw i8, ptr %i.uj, i64 72
  %i.uq = load atomic i8, ptr %i.up monotonic, align 8, !noalias !12116
  %.not419.i.i.i = icmp eq i8 %i.uq, 0
  %.sink.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 80
  br i1 %.not419.i.i.i, label %bb.hl, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ur = atomicrmw add ptr %i.uk, i32 -1 release, align 4, !noalias !12117
  %i.us = add i32 %i.ur, -1                       ; 2 uses
  %i.ut = and i32 %i.us, -1073741825
  %or.cond.not.i.i.i.i.i.i.i = icmp eq i32 %i.ut, -2147483648
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.sink.split.i.i.i.i.i, label %bb.hi, !prof !32

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.sink.split.i.i.i.i.i: ; preds = %bb.hh
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.uk, i32 noundef %i.us)
          to label %bb.hi unwind label %bb.hk, !noalias !12088

bb.hi:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.sink.split.i.i.i.i.i, %bb.hh
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !12118
  %i.uu = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !12118 ; 3 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %bb.hj, label %bb.jb

bb.hj:                                            ; preds = %bb.hi
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 29) #40
          to label %.noexc119.i.i.i unwind label %bb.hk, !noalias !12088

.noexc119.i.i.i:                                  ; preds = %bb.hj
  unreachable

bb.hk:                                            ; preds = %bb.hj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.sink.split.i.i.i.i.i, %bb.hf
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i

bb.hl:                                            ; preds = %bb.hg
  call void @llvm.experimental.noalias.scope.decl(metadata !12119)
  call void @llvm.experimental.noalias.scope.decl(metadata !12120)
  call void @llvm.experimental.noalias.scope.decl(metadata !12121)
  call void @llvm.experimental.noalias.scope.decl(metadata !12122)
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uj, i64 104
  %i.uy = load i64, ptr %i.ux, align 8, !alias.scope !12123, !noalias !12088, !noundef !25
  %i.uz = icmp eq i64 %i.uy, 0
  br i1 %i.uz, label %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.va = getelementptr inbounds nuw i8, ptr %i.uj, i64 112
  %.val.i.i121.i.i.i = load i64, ptr %i.va, align 8, !alias.scope !12123, !noalias !12088, !noundef !25
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uj, i64 120
  %.val5.i.i.i.i.i = load i64, ptr %i.vb, align 8, !alias.scope !12123, !noalias !12088, !noundef !25
  %i.vc = invoke fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools(i64 %.val.i.i121.i.i.i, i64 %.val5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.uh)
          to label %.noexc122.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12088 ; 2 uses

.noexc122.i.i.i:                                  ; preds = %bb.hm
  call void @llvm.experimental.noalias.scope.decl(metadata !12124)
  call void @llvm.experimental.noalias.scope.decl(metadata !12125)
  call void @llvm.experimental.noalias.scope.decl(metadata !12126)
  %i.vd = lshr i64 %i.vc, 57
  %i.ve = trunc nuw nsw i64 %i.vd to i8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uj, i64 88
  %i.vg = load i64, ptr %i.vf, align 8, !alias.scope !12127, !noalias !12088, !noundef !25 ; 2 uses
  %i.vh = load ptr, ptr %.sink.i.i.i.i.i.i, align 8, !alias.scope !12127, !noalias !12088, !nonnull !25, !noundef !25 ; 2 uses
  %i.vi = insertelement <16 x i8> poison, i8 %i.ve, i64 0
  %i.vj = shufflevector <16 x i8> %i.vi, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %.val1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.vk, align 8, !alias.scope !12128, !noalias !12087 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.vl, align 8, !alias.scope !12128, !noalias !12087, !nonnull !25
  br label %bb.hn

bb.hn:                                            ; preds = %bb.ho, %.noexc122.i.i.i
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc122.i.i.i ], [ %i.wg, %bb.ho ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.vc, %.noexc122.i.i.i ], [ %i.wh, %bb.ho ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.vg ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vh, i64 %.sroa.01.0.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i = load <16 x i8>, ptr %i.vm, align 1, !noalias !12129 ; 2 uses
  %i.vn = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, %i.vj
  %i.vo = bitcast <16 x i1> %i.vn to i16          ; 2 uses
  %.not.i.not33.i.i.i.i.i.i = icmp eq i16 %i.vo, 0
  br i1 %.not.i.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.hn, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i
  %.sroa.06.0.i34.i.i.i.i.i.i = phi i16 [ %i.wf, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i ], [ %i.vo, %bb.hn ] ; 3 uses
  %i.vp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i.i.i.i, i1 true)
  %i.vq = zext nneg i16 %i.vp to i64
  %i.vr = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.vq
  %i.vs = and i64 %i.vr, %i.vg
  %i.vt = sub nsw i64 0, %i.vs
  %i.vu = getelementptr inbounds [216 x i8], ptr %i.vh, i64 %i.vt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12130), !noalias !12126
  call void @llvm.experimental.noalias.scope.decl(metadata !12131), !noalias !12126
  call void @llvm.experimental.noalias.scope.decl(metadata !12132), !noalias !12126
  %i.vv = getelementptr inbounds i8, ptr %i.vu, i64 -200
  %.val3.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.vv, align 8, !alias.scope !12133, !noalias !12134, !noundef !25
  %i.vw = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i
  br i1 %i.vw, label %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i, !prof !34

_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.vx = getelementptr inbounds i8, ptr %i.vu, i64 -208
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.vx, align 8, !alias.scope !12133, !noalias !12134, !nonnull !25, !noundef !25
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i.i), !noalias !12135
  %i.vy = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.vy, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i, !prof !34

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i: ; preds = %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i
  %i.vz = getelementptr inbounds i8, ptr %i.vu, i64 -192
  %i.wa = invoke noundef zeroext i1 @_RNvXs6_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.ui, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.vz)
          to label %.noexc123.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12088

.noexc123.i.i.i:                                  ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i
  br i1 %i.wa, label %bb.hq, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i, !prof !35

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i, %bb.hn
  %i.wb = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, splat (i8 -1)
  %i.wc = bitcast <16 x i1> %i.wb to i16
  %i.wd = icmp eq i16 %i.wc, 0
  br i1 %i.wd, label %bb.ho, label %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsjsY2yM364a4_11lance_tools.exit.i.i.i, !prof !30

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i: ; preds = %.noexc123.i.i.i, %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.we = add i16 %.sroa.06.0.i34.i.i.i.i.i.i, -1
  %i.wf = and i16 %i.we, %.sroa.06.0.i34.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.wf, 0
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ho:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.wg = add i64 %.sroa.9.0.i.i.i.i.i.i.i, 16    ; 2 uses
  %i.wh = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.wg
  br label %bb.hn

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i, %bb.hm
  %lpad.loopexit.split-lp381 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wi = atomicrmw add ptr %i.uk, i32 -1 release, align 4, !noalias !12088
  %i.wj = add i32 %i.wi, -1                       ; 2 uses
  %i.wk = and i32 %i.wj, -1073741825
  %or.cond.not.i.i.i.i.i = icmp eq i32 %i.wk, -2147483648
  br i1 %or.cond.not.i.i.i.i.i, label %bb.hp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i, !prof !32

bb.hp:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.uk, i32 noundef %i.wj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i unwind label %bb.ib, !noalias !12088

bb.hq:                                            ; preds = %.noexc123.i.i.i
  %i.wl = getelementptr inbounds i8, ptr %i.vu, i64 -8
  call void @llvm.experimental.noalias.scope.decl(metadata !12136)
  %.val.i126.i.i.i = load ptr, ptr %i.wl, align 8, !alias.scope !12136, !noalias !12088, !nonnull !25, !noundef !25 ; 3 uses
  %i.wm = icmp eq ptr %.val.i126.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.wm, label %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.wn = getelementptr inbounds nuw i8, ptr %.val.i126.i.i.i, i64 8
  %i.wo = atomicrmw add ptr %i.wn, i64 1 monotonic, align 8, !noalias !12137
  %i.wp = icmp slt i64 %i.wo, 0
  br i1 %i.wp, label %bb.hs, label %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.trap()
  unreachable

_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.hr, %bb.hq, %bb.hl
  %.sroa.02.0.i.i.i.i = phi ptr [ %.val.i126.i.i.i, %bb.hr ], [ inttoptr (i64 -1 to ptr), %bb.hq ], [ null, %bb.hl ], [ null, %._crit_edge.i.i.i.i.i.i ] ; 16 uses
  %i.wq = atomicrmw add ptr %i.uk, i32 -1 release, align 4, !noalias !12088
  %i.wr = add i32 %i.wq, -1                       ; 2 uses
  %i.ws = and i32 %i.wr, -1073741825
  %or.cond.not.i.i127.i.i.i = icmp eq i32 %i.ws, -2147483648
  br i1 %or.cond.not.i.i127.i.i.i, label %bb.ht, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit129.i.i.i, !prof !32

bb.ht:                                            ; preds = %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsjsY2yM364a4_11lance_tools.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.uk, i32 noundef %i.wr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit129.i.i.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i, !noalias !12088

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit129.i.i.i: ; preds = %bb.ht, %_RNvMs1_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEE6clonedCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %.not24.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i, null
  br i1 %.not24.i.i.i, label %bb.iy, label %bb.hu

bb.hu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit129.i.i.i
  %i.wt = icmp eq ptr %.sroa.02.0.i.i.i.i, inttoptr (i64 -1 to ptr) ; 3 uses
  br i1 %i.wt, label %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.wu = load atomic i64, ptr %.sroa.02.0.i.i.i.i monotonic, align 8, !noalias !12088
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hz, %bb.hv
  %.sroa.06.0.i.i.i.i.i = phi i64 [ %i.wu, %bb.hv ], [ %.sroa.01.0.i.i.i.i.i.i, %bb.hz ] ; 4 uses
  %i.wv = icmp eq i64 %.sroa.06.0.i.i.i.i.i, 0
  br i1 %i.wv, label %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ww = icmp sgt i64 %.sroa.06.0.i.i.i.i.i, -1
  br i1 %i.ww, label %bb.hz, label %bb.hy, !prof !27

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12087
  store ptr @380, ptr %i.j, align 8, !noalias !12087
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !12087
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #40
          to label %.noexc131.i.i.i unwind label %bb.ir, !noalias !12088

.noexc131.i.i.i:                                  ; preds = %bb.hy
  unreachable

bb.hz:                                            ; preds = %bb.hx
  %i.wx = add nuw i64 %.sroa.06.0.i.i.i.i.i, 1
  %i.wy = cmpxchg weak ptr %.sroa.02.0.i.i.i.i, i64 %.sroa.06.0.i.i.i.i.i, i64 %i.wx acquire monotonic, align 8, !noalias !12088 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.wy, 1
  %.sroa.01.0.i.i.i.i.i.i = extractvalue { i64, i1 } %i.wy, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %bb.hw

_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i: ; preds = %bb.hw, %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12087
  %i.wz = load ptr, ptr %i.qr, align 8, !noalias !12087, !nonnull !25, !align !42, !noundef !25
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 64
  invoke fastcc void @_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB1K_4sync4WeakNtB2k_11ObjectStoreEEE5writeCsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %i.xa)
          to label %bb.id unwind label %bb.ic, !noalias !12088

_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.hz
  %i.xb = load ptr, ptr %i.qr, align 8, !noalias !12087, !nonnull !25, !align !42, !noundef !25
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 128
  %i.xd = atomicrmw add ptr %i.xc, i64 1 monotonic, align 8, !noalias !12088 ; 0 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 8
  %i.xf = atomicrmw add ptr %i.xe, i64 -1 release, align 8, !noalias !12088
  %i.xg = icmp eq i64 %i.xf, 1
  %i.xh = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.uk, i64 0 ; 2 uses
  br i1 %i.xg, label %bb.ia, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.ia:                                            ; preds = %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.0.i.i.i.i, i64 noundef 144, i64 noundef 8) #36, !noalias !12088
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.ib:                                            ; preds = %bb.lx, %bb.lv, %bb.lj, %.body172.thread.i.i.i, %bb.le, %bb.jo, %bb.jl, %bb.iq, %bb.hp
  %i.xi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !12088
  unreachable

bb.ic:                                            ; preds = %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i
  %i.xj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12087
  br label %bb.iv

bb.id:                                            ; preds = %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.thread.i.i.i
  %i.xk = invoke fastcc { ptr, i1 } @_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBQ_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2u_4sync4WeakNtB34_11ObjectStoreEEEINtBM_11PoisonErrorBH_EE6expectCsjsY2yM364a4_11lance_tools(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.p)
          to label %bb.if unwind label %bb.ie     ; 2 uses

bb.ie:                                            ; preds = %bb.id
  %i.xl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12087
  br label %bb.iv

bb.if:                                            ; preds = %bb.id
  %i.xm = extractvalue { ptr, i1 } %i.xk, 0       ; 4 uses
  %i.xn = extractvalue { ptr, i1 } %i.xk, 1
  %i.xo = zext i1 %i.xn to i8                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12087
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xm) ]
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 16 ; 2 uses
  %i.xq = invoke fastcc noundef align 8 ptr @_RINvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB19_4sync4WeakNtB1J_11ObjectStoreEE3getB14_ECsjsY2yM364a4_11lance_tools(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.uh)
          to label %bb.ig unwind label %bb.in, !noalias !12088 ; 2 uses

bb.ig:                                            ; preds = %bb.if
  %.not28.i.i.i = icmp eq ptr %i.xq, null
  br i1 %.not28.i.i.i, label %bb.ip, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12087
  %.val92.i.i.i = load ptr, ptr %i.xq, align 8, !noalias !12088, !nonnull !25, !noundef !25
  %i.xr = invoke fastcc noundef ptr @_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools(ptr nonnull %.val92.i.i.i)
          to label %bb.ij unwind label %bb.ii, !noalias !12088 ; 3 uses

bb.ii:                                            ; preds = %bb.il, %bb.ih
  %i.xs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12087
  br label %bb.iq

bb.ij:                                            ; preds = %bb.ih
  store ptr %i.xr, ptr %i.o, align 8, !noalias !12087
  %.not.i133.i.i.i = icmp eq ptr %i.xr, null
  br i1 %.not.i133.i.i.i, label %bb.im, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.xt = atomicrmw add ptr %i.xr, i64 -1 release, align 8, !noalias !12138
  %i.xu = icmp eq i64 %i.xt, 1
  br i1 %i.xu, label %bb.il, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit136.i.i.i

bb.il:                                            ; preds = %bb.ik
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit136.i.i.i unwind label %bb.ii, !noalias !12088

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit136.i.i.i: ; preds = %bb.il, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12087
  br label %bb.ip

bb.im:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12087
  %i.xv = invoke fastcc noundef ptr @_RINvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB6_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB19_4sync4WeakNtB1J_11ObjectStoreEE6removeB14_ECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(48) %i.xp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.uh)
          to label %bb.io unwind label %bb.in, !noalias !12088

bb.in:                                            ; preds = %bb.im, %bb.if
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.io:                                            ; preds = %bb.im
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools(ptr %i.xv), !noalias !12088
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit136.i.i.i, %bb.ig
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools(ptr nonnull %i.xm, i8 %i.xo)
          to label %bb.is unwind label %bb.ir, !noalias !12088

bb.iq:                                            ; preds = %bb.in, %bb.ii
  %.pn31.pn.pn.i.i.i = phi { ptr, i32 } [ %i.xs, %bb.ii ], [ %i.xw, %bb.in ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools(ptr nonnull %i.xm, i8 %i.xo) #41
          to label %bb.iv unwind label %bb.ib, !noalias !12088

bb.ir:                                            ; preds = %bb.ip, %bb.hy
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.is:                                            ; preds = %bb.ip
  br i1 %i.wt, label %bb.iy, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 8
  %i.xz = atomicrmw add ptr %i.xy, i64 -1 release, align 8, !noalias !12088
  %i.ya = icmp eq i64 %i.xz, 1
  br i1 %i.ya, label %bb.iu, label %bb.iy

bb.iu:                                            ; preds = %bb.it
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.0.i.i.i.i, i64 noundef 144, i64 noundef 8) #36, !noalias !12088
  br label %bb.iy

bb.iv:                                            ; preds = %bb.ir, %bb.iq, %bb.ie, %bb.ic
  %.pn53.pn.i.i.i = phi { ptr, i32 } [ %i.xl, %bb.ie ], [ %i.xj, %bb.ic ], [ %i.xx, %bb.ir ], [ %.pn31.pn.pn.i.i.i, %bb.iq ] ; 3 uses
  br i1 %i.wt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 8
  %i.yc = atomicrmw add ptr %i.yb, i64 -1 release, align 8, !noalias !12088
  %i.yd = icmp eq i64 %i.yc, 1
  br i1 %i.yd, label %bb.ix, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i

bb.ix:                                            ; preds = %bb.iw
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.0.i.i.i.i, i64 noundef 144, i64 noundef 8) #36, !noalias !12088
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i: ; preds = %bb.ht
  %i.ye = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %magicptr.i.i.i = ptrtoint ptr %.sroa.02.0.i.i.i.i to i64
  %magicptr.off.i.i.i = add i64 %magicptr.i.i.i, -1
  %switch.i.i.i = icmp ult i64 %magicptr.off.i.i.i, -2
  br i1 %switch.i.i.i, label %bb.iz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i

bb.iy:                                            ; preds = %bb.iu, %bb.it, %bb.is, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2n_4sync4WeakNtB2X_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit129.i.i.i
  %i.yf = load ptr, ptr %i.qr, align 8, !noalias !12087, !nonnull !25, !align !42, !noundef !25
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 136
  %i.yh = atomicrmw add ptr %i.yg, i64 1 monotonic, align 8, !noalias !12088 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12087
  %i.yi = load ptr, ptr %i.qr, align 8, !noalias !12087, !nonnull !25, !align !42, !noundef !25
  store i8 0, ptr %i.qp, align 1, !noalias !12087
  store i8 0, ptr %i.qo, align 2, !noalias !12087
  %.sroa.0276.0.copyload.i.i.i = load i64, ptr %i.qs, align 8, !noalias !12087
  %.sroa.7278.0.copyload.i.i.i = load ptr, ptr %i.qz, align 8, !noalias !12087
  %.sroa.0266.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0266.sroa.9.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ra, i64 72, i1 false), !noalias !12087
  %.val80.i.i.i = load ptr, ptr %.sroa.4345.0..sroa_idx.i.i.i, align 8, !noalias !12087, !nonnull !25, !noundef !25
  %.val81.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !12087, !noundef !25
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 1232
  store i64 %.sroa.0276.0.copyload.i.i.i, ptr %i.yj, align 8, !noalias !12087
  %.sroa.0266.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store ptr %.sroa.7278.0.copyload.i.i.i, ptr %.sroa.0266.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.8267.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1320
  store ptr %i.yi, ptr %.sroa.8267.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.9268.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1328
  %i.yk = load <2 x ptr>, ptr %i.rn, align 8, !noalias !12087
  store <2 x ptr> %i.yk, ptr %.sroa.9268.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.11270.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1344
  store ptr %.sroa.0.0.i.i.i.i, ptr %.sroa.11270.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.12271.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1352
  store ptr %.val80.i.i.i, ptr %.sroa.12271.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.13272.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1360
  store i64 %.val81.i.i.i, ptr %.sroa.13272.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.15274.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1424
  store i8 0, ptr %.sroa.15274.0..sroa_idx.i.i.i, align 8, !noalias !12087
  br label %bb.jp

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i, %bb.ja, %bb.iz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i, %bb.ix, %bb.iw, %bb.iv, %bb.hp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hk
  %i.yl = phi ptr [ %i.qg, %bb.iv ], [ %i.abs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i ], [ %i.qg, %bb.ix ], [ %i.qg, %bb.ja ], [ %i.qg, %bb.iw ], [ %i.qg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i ], [ %i.qg, %bb.iz ], [ %i.qg, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qg, %bb.hk ], [ %i.qg, %bb.hp ] ; 2 uses
  %i.ym = phi ptr [ %i.qh, %bb.iv ], [ %i.abt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i ], [ %i.qh, %bb.ix ], [ %i.qh, %bb.ja ], [ %i.qh, %bb.iw ], [ %i.qh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i ], [ %i.qh, %bb.iz ], [ %i.qh, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qh, %bb.hk ], [ %i.qh, %bb.hp ] ; 2 uses
  %i.yn = phi ptr [ %i.qi, %bb.iv ], [ %i.abu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i ], [ %i.qi, %bb.ix ], [ %i.qi, %bb.ja ], [ %i.qi, %bb.iw ], [ %i.qi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i ], [ %i.qi, %bb.iz ], [ %i.qi, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qi, %bb.hk ], [ %i.qi, %bb.hp ] ; 2 uses
  %i.yo = phi ptr [ %i.qj, %bb.iv ], [ %i.abv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i ], [ %i.qj, %bb.ix ], [ %i.qj, %bb.ja ], [ %i.qj, %bb.iw ], [ %i.qj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i ], [ %i.qj, %bb.iz ], [ %i.qj, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qj, %bb.hk ], [ %i.qj, %bb.hp ] ; 2 uses
  %i.yp = phi ptr [ %i.qm, %bb.iv ], [ %i.abw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i ], [ %i.qm, %bb.ix ], [ %i.qm, %bb.ja ], [ %i.qm, %bb.iw ], [ %i.qm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i ], [ %i.qm, %bb.iz ], [ %i.qm, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qm, %bb.hk ], [ %i.qm, %bb.hp ] ; 2 uses
  %i.yq = phi ptr [ %i.qn, %bb.iv ], [ %i.abx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i ], [ %i.qn, %bb.ix ], [ %i.qn, %bb.ja ], [ %i.qn, %bb.iw ], [ %i.qn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i ], [ %i.qn, %bb.iz ], [ %i.qn, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qn, %bb.hk ], [ %i.qn, %bb.hp ] ; 2 uses
  %.pn59.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn53.pn.i.i.i, %bb.iv ], [ %.pn50.pn.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i ], [ %.pn53.pn.i.i.i, %bb.ix ], [ %i.ye, %bb.ja ], [ %.pn53.pn.i.i.i, %bb.iw ], [ %i.ye, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i ], [ %i.ye, %bb.iz ], [ %lpad.loopexit.split-lp381, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.uw, %bb.hk ], [ %lpad.loopexit.split-lp381, %bb.hp ] ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 1435
  %i.ys = load i8, ptr %i.yr, align 1, !range !26, !noalias !12087, !noundef !25
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %bb.lv, label %bb.jd

bb.iz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit140.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i.i) ]
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 8
  %i.yv = atomicrmw add ptr %i.yu, i64 -1 release, align 8, !noalias !12088
  %i.yw = icmp eq i64 %i.yv, 1
  br i1 %i.yw, label %bb.ja, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i

bb.ja:                                            ; preds = %bb.iz
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.02.0.i.i.i.i, i64 noundef 144, i64 noundef 8) #36, !noalias !12088
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i

bb.jb:                                            ; preds = %bb.hi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.uu, ptr noundef nonnull align 1 dereferenceable(29) @278, i64 29, i1 false), !noalias !12139
  %i.yx = insertelement <2 x ptr> <ptr inttoptr (i64 29 to ptr), ptr poison>, ptr %i.uu, i64 1
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i, %bb.jb, %bb.ia, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.yy = phi ptr [ %i.abs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ %i.qg, %bb.jb ], [ %i.qg, %bb.ia ], [ %i.qg, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 3 uses
  %i.yz = phi ptr [ %i.abt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ %i.qh, %bb.jb ], [ %i.qh, %bb.ia ], [ %i.qh, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 3 uses
  %i.za = phi ptr [ %i.abu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ %i.qi, %bb.jb ], [ %i.qi, %bb.ia ], [ %i.qi, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 3 uses
  %i.zb = phi ptr [ %i.abv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ %i.qj, %bb.jb ], [ %i.qj, %bb.ia ], [ %i.qj, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 3 uses
  %i.zc = phi ptr [ %i.abw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ %i.qm, %bb.jb ], [ %i.qm, %bb.ia ], [ %i.qm, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 3 uses
  %i.zd = phi ptr [ %i.abx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ %i.qn, %bb.jb ], [ %i.qn, %bb.ia ], [ %i.qn, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 3 uses
  %.sroa.23.1.i.i.i = phi i64 [ %.sroa.23.5.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ 29, %bb.jb ], [ 29, %bb.ia ], [ 29, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %.sroa.12328.1.i.i.i = phi ptr [ %.sroa.12328.5.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ @280, %bb.jb ], [ %.sroa.02.0.i.i.i.i, %bb.ia ], [ %.sroa.02.0.i.i.i.i, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %.sroa.0324.1.i.i.i = phi i8 [ %.sroa.0324.5.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ 11, %bb.jb ], [ -1, %bb.ia ], [ -1, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.ze = phi <2 x ptr> [ %i.ahs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i ], [ %i.yx, %bb.jb ], [ %i.xh, %bb.ia ], [ %i.xh, %_RNvMsJ_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE7upgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 1024
  call void @llvm.experimental.noalias.scope.decl(metadata !12140)
  call void @llvm.experimental.noalias.scope.decl(metadata !12141)
  %.val.i.i143.i.i.i = load i64, ptr %i.zf, align 8, !alias.scope !12142, !noalias !12087 ; 2 uses
  %i.zg = icmp eq i64 %.val.i.i143.i.i.i, 0
  br i1 %i.zg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i, label %bb.jc

bb.jc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.val1.i.i144.i.i.i = load ptr, ptr %i.zh, align 8, !alias.scope !12142, !noalias !12087, !nonnull !25, !noundef !25
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i144.i.i.i, i64 noundef %.val.i.i143.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !12143
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i: ; preds = %bb.jc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 1048
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(184) %i.zi)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %bb.lo, !noalias !12088

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.hc, %.body.i.i.i72, %bb.gm
  %.pn15.i.i.i = phi { ptr, i32 } [ %i.sf, %bb.gm ], [ %i.sp, %.body.i.i.i72 ], [ %i.sp, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12087
  br label %bb.jd

bb.jd:                                            ; preds = %bb.lv, %bb.lo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i
  %i.zj = phi ptr [ %i.yy, %bb.lo ], [ %i.yl, %bb.lv ], [ %i.yl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i ], [ %i.qg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.zk = phi ptr [ %i.yz, %bb.lo ], [ %i.ym, %bb.lv ], [ %i.ym, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i ], [ %i.qh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.zl = phi ptr [ %i.za, %bb.lo ], [ %i.yn, %bb.lv ], [ %i.yn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i ], [ %i.qi, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.zm = phi ptr [ %i.zb, %bb.lo ], [ %i.yo, %bb.lv ], [ %i.yo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i ], [ %i.qj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.zn = phi ptr [ %i.zc, %bb.lo ], [ %i.yp, %bb.lv ], [ %i.yp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i ], [ %i.qm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.zo = phi ptr [ %i.zd, %bb.lo ], [ %i.yq, %bb.lv ], [ %i.yq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i ], [ %i.qn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %.pn63.i.i.i = phi { ptr, i32 } [ %i.aht, %bb.lo ], [ %.pn59.pn.pn.i.i.i, %bb.lv ], [ %.pn59.pn.pn.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i ], [ %.pn15.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i ] ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 1435
  store i8 0, ptr %i.zp, align 1, !noalias !12087
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 1000
  call void @llvm.experimental.noalias.scope.decl(metadata !12144)
  %.val.i146.i.i.i = load i64, ptr %i.zq, align 8, !alias.scope !12144, !noalias !12087 ; 2 uses
  %i.zr = icmp eq i64 %.val.i146.i.i.i, 0
  br i1 %i.zr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit148.i.i.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %.val1.i147.i.i.i = load ptr, ptr %i.zs, align 8, !alias.scope !12144, !noalias !12087, !nonnull !25, !noundef !25
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i147.i.i.i, i64 noundef %.val.i146.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !12145
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit148.i.i.i

bb.jf:                                            ; preds = %bb.gj
  %.sroa.8.0..sroa_idx197.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8326.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx197.i.i.i, i64 7, i1 false), !noalias !12087
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx197.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.8.sroa.6.0.copyload.i.i.i = load ptr, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx197.sroa_idx.i.i.i, align 8, !alias.scope !12095, !noalias !12087
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx197.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.zt = load <2 x ptr>, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx197.sroa_idx.i.i.i, align 8, !alias.scope !12095, !noalias !12087
  %.sroa.10.0..sroa_idx199.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.10.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx199.i.i.i, align 8, !alias.scope !12095, !noalias !12087
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx199.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx199.sroa_idx.i.i.i, i64 16, i1 false), !noalias !12087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12087
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit187.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit187.i.i.i: ; preds = %bb.lp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i, %bb.jf
  %i.zu = phi ptr [ %i.qg, %bb.jf ], [ %i.yy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.yy, %bb.lp ] ; 2 uses
  %i.zv = phi ptr [ %i.qh, %bb.jf ], [ %i.yz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.yz, %bb.lp ] ; 2 uses
  %i.zw = phi ptr [ %i.qi, %bb.jf ], [ %i.za, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.za, %bb.lp ] ; 2 uses
  %i.zx = phi ptr [ %i.qj, %bb.jf ], [ %i.zb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.zb, %bb.lp ] ; 2 uses
  %i.zy = phi ptr [ %i.qm, %bb.jf ], [ %i.zc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.zc, %bb.lp ] ; 2 uses
  %i.zz = phi ptr [ %i.qn, %bb.jf ], [ %i.zd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.zd, %bb.lp ] ; 2 uses
  %.sroa.23.2.i.i.i = phi i64 [ %.sroa.10.sroa.0.0.copyload.i.i.i, %bb.jf ], [ %.sroa.23.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %.sroa.23.1.i.i.i, %bb.lp ]
  %.sroa.12328.2.i.i.i = phi ptr [ %.sroa.8.sroa.6.0.copyload.i.i.i, %bb.jf ], [ %.sroa.12328.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %.sroa.12328.1.i.i.i, %bb.lp ]
  %.sroa.0324.2.i.i.i = phi i8 [ %i.sa, %bb.jf ], [ %.sroa.0324.1.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %.sroa.0324.1.i.i.i, %bb.lp ]
  %i.aaa = phi <2 x ptr> [ %i.zt, %bb.jf ], [ %i.ze, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i ], [ %i.ze, %bb.lp ]
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 1433 ; 2 uses
  %i.aac = load i8, ptr %i.aab, align 1, !range !26, !noalias !12087, !noundef !25
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.lq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit148.i.i.i: ; preds = %bb.je, %bb.jd, %bb.gk
  %i.aae = phi ptr [ %i.qg, %bb.gk ], [ %i.zj, %bb.je ], [ %i.zj, %bb.jd ] ; 3 uses
  %i.aaf = phi ptr [ %i.qh, %bb.gk ], [ %i.zk, %bb.je ], [ %i.zk, %bb.jd ] ; 3 uses
  %i.aag = phi ptr [ %i.qi, %bb.gk ], [ %i.zl, %bb.je ], [ %i.zl, %bb.jd ] ; 3 uses
  %i.aah = phi ptr [ %i.qj, %bb.gk ], [ %i.zm, %bb.je ], [ %i.zm, %bb.jd ] ; 3 uses
  %i.aai = phi ptr [ %i.qm, %bb.gk ], [ %i.zn, %bb.je ], [ %i.zn, %bb.jd ] ; 3 uses
  %i.aaj = phi ptr [ %i.qn, %bb.gk ], [ %i.zo, %bb.je ], [ %i.zo, %bb.jd ] ; 3 uses
  %.pn65.pn.i.i.i = phi { ptr, i32 } [ %i.sb, %bb.gk ], [ %.pn63.i.i.i, %bb.je ], [ %.pn63.i.i.i, %bb.jd ] ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 1433
  %i.aal = load i8, ptr %i.aak, align 1, !range !26, !noalias !12087, !noundef !25
  %i.aam = trunc nuw i8 %i.aal to i1
  br i1 %i.aam, label %bb.lw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i

bb.jg:                                            ; preds = %bb.gg
  %i.aan = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12087
  br label %bb.jk

bb.jh:                                            ; preds = %bb.gg
  %.sroa.0324.0.copyload.i.i.i = load i8, ptr %i.s, align 8, !noalias !12087
  %.sroa.8326.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8326.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8326.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !12087
  %.sroa.12328.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.12328.0.copyload.i.i.i = load ptr, ptr %.sroa.12328.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.17331.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aao = load <2 x ptr>, ptr %.sroa.17331.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.23.0.copyload.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !12087
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !12087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12087
  br label %bb.ji

bb.ji:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i, %bb.jh
  %i.aap = phi ptr [ %i.qg, %bb.jh ], [ %i.zu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ] ; 3 uses
  %i.aaq = phi ptr [ %i.qh, %bb.jh ], [ %i.zv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ] ; 2 uses
  %i.aar = phi ptr [ %i.qi, %bb.jh ], [ %i.zw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ] ; 3 uses
  %i.aas = phi ptr [ %i.qj, %bb.jh ], [ %i.zx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ] ; 2 uses
  %i.aat = phi ptr [ %i.qm, %bb.jh ], [ %i.zy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ] ; 2 uses
  %i.aau = phi ptr [ %i.qn, %bb.jh ], [ %i.zz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ] ; 2 uses
  %.sroa.23.3.i.i.i = phi i64 [ %.sroa.23.0.copyload.i.i.i, %bb.jh ], [ %.sroa.23.2.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ]
  %.sroa.12328.3.i.i.i = phi ptr [ %.sroa.12328.0.copyload.i.i.i, %bb.jh ], [ %.sroa.12328.2.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ]
  %.sroa.0324.3.i.i.i = phi i8 [ %.sroa.0324.0.copyload.i.i.i, %bb.jh ], [ %.sroa.0324.2.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ] ; 2 uses
  %i.aav = phi <2 x ptr> [ %i.aao, %bb.jh ], [ %i.aaa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i ]
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  %i.aax = load i64, ptr %i.aaw, align 8, !range !36, !alias.scope !12146, !noalias !12087, !noundef !25
  %i.aay = icmp eq i64 %i.aax, -1
  br i1 %i.aay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.aaw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %bb.li, !noalias !12088

bb.jk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i, %bb.jg, %bb.ge
  %i.aaz = phi ptr [ %i.aic, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i ], [ %i.qg, %bb.jg ], [ %i.qg, %bb.ge ] ; 2 uses
  %i.aba = phi ptr [ %i.aid, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i ], [ %i.qh, %bb.jg ], [ %i.qh, %bb.ge ] ; 2 uses
  %i.abb = phi ptr [ %i.aie, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i ], [ %i.qi, %bb.jg ], [ %i.qi, %bb.ge ] ; 2 uses
  %i.abc = phi ptr [ %i.aif, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i ], [ %i.qj, %bb.jg ], [ %i.qj, %bb.ge ] ; 2 uses
  %i.abd = phi ptr [ %i.aig, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i ], [ %i.qm, %bb.jg ], [ %i.qm, %bb.ge ] ; 2 uses
  %i.abe = phi ptr [ %i.aih, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i ], [ %i.qn, %bb.jg ], [ %i.qn, %bb.ge ] ; 2 uses
  %.pn68.pn.i.i.i = phi { ptr, i32 } [ %.pn68.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i ], [ %i.aan, %bb.jg ], [ %i.rj, %bb.ge ] ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  %i.abg = load i64, ptr %i.abf, align 8, !range !36, !alias.scope !12147, !noalias !12087, !noundef !25
  %i.abh = icmp eq i64 %i.abg, -1
  br i1 %i.abh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit151.i.i.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.abf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit151.i.i.i unwind label %bb.ib, !noalias !12088

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit151.i.i.i: ; preds = %bb.li, %bb.jl, %bb.jk
  %i.abi = phi ptr [ %i.ahe, %bb.li ], [ %i.aaz, %bb.jl ], [ %i.aaz, %bb.jk ]
  %i.abj = phi ptr [ %i.ahf, %bb.li ], [ %i.aba, %bb.jl ], [ %i.aba, %bb.jk ]
  %i.abk = phi ptr [ %i.ahg, %bb.li ], [ %i.abb, %bb.jl ], [ %i.abb, %bb.jk ]
  %i.abl = phi ptr [ %i.ahh, %bb.li ], [ %i.abc, %bb.jl ], [ %i.abc, %bb.jk ]
  %i.abm = phi ptr [ %i.ahi, %bb.li ], [ %i.abd, %bb.jl ], [ %i.abd, %bb.jk ]
  %i.abn = phi ptr [ %i.ahj, %bb.li ], [ %i.abe, %bb.jl ], [ %i.abe, %bb.jk ]
  %.pn71.i.i.i = phi { ptr, i32 } [ %i.ahk, %bb.li ], [ %.pn68.pn.i.i.i, %bb.jl ], [ %.pn68.pn.i.i.i, %bb.jk ]
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 1434 ; 2 uses
  %i.abp = load i8, ptr %i.abo, align 2, !range !26, !noalias !12087, !noundef !25
  %i.abq = trunc nuw i8 %i.abp to i1
  br i1 %i.abq, label %bb.ly, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs5FpxmzdwmiN_3url3UrlECsjsY2yM364a4_11lance_tools.exit195.i.i.i

bb.jm:                                            ; preds = %bb.fw
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #40
          to label %.noexc131.i.i unwind label %bb.fv, !noalias !12023

.noexc131.i.i:                                    ; preds = %bb.jm
  unreachable

bb.jn:                                            ; preds = %bb.fw
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #40
          to label %.noexc132.i.i unwind label %bb.fv, !noalias !12023

.noexc132.i.i:                                    ; preds = %bb.jn
  unreachable

bb.jo:                                            ; preds = %bb.jp
end_hunk_1
begin_hunk_2_@_RNCNvNtCsftBYP88YJaE_11lance_tools4util25get_object_store_and_path0CsjsY2yM364a4_11lance_tools:bb.a
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acd, i64 96 ; 3 uses
  %i.adn = load i64, ptr %i.adm, align 8, !alias.scope !12164, !noalias !12088, !noundef !25
  %i.ado = icmp eq i64 %i.adn, 0
  br i1 %i.ado, label %bb.kk, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i, !prof !30

bb.kk:                                            ; preds = %bb.kj
  %i.adp = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1x_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.acy, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.adj, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12165 ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i: ; preds = %bb.kk, %bb.kj
  %.val.i.i.i.i.i.i = load ptr, ptr %i.acy, align 8, !alias.scope !12166, !noalias !12088, !nonnull !25, !noundef !25 ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.acd, i64 88 ; 2 uses
  %.val7.i.i.i.i.i.i = load i64, ptr %i.adq, align 8, !alias.scope !12166, !noalias !12088, !noundef !25 ; 3 uses
  %i.adr = lshr i64 %i.adl, 57
  %i.ads = trunc nuw nsw i64 %i.adr to i8         ; 3 uses
  %i.adt = insertelement <16 x i8> poison, i8 %i.ads, i64 0
  %i.adu = shufflevector <16 x i8> %i.adt, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.adv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.adv, align 8, !alias.scope !12167, !noalias !12087 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.adw, align 8, !alias.scope !12167, !noalias !12087, !nonnull !25
  %i.adx = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kn, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i
  %.pn.i.i.i.i168.i.i.i = phi i64 [ %i.adl, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %i.afb, %bb.kn ]
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %.sroa.4.125.i.i.i.i.i.i.i, %bb.kn ]
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %.sroa.04.127.i.i.i.i.i.i.i, %bb.kn ]
  %i.ady = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %i.afa, %bb.kn ]
  %.sroa.0.021.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i168.i.i.i, %.val7.i.i.i.i.i.i ; 4 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.021.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.adz, align 1, !noalias !12168 ; 3 uses
  %i.aea = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i, %i.adu
  %i.aeb = bitcast <16 x i1> %i.aea to i16        ; 2 uses
  %.not33.i.i.i.i.i.i.i = icmp eq i16 %i.aeb, 0
  br i1 %.not33.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.kl, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i
  %.sroa.01.034.i.i.i.i.i.i.i = phi i16 [ %i.aeq, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i ], [ %i.aeb, %bb.kl ] ; 3 uses
  %i.aec = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.034.i.i.i.i.i.i.i, i1 true)
  %i.aed = zext nneg i16 %i.aec to i64
  %i.aee = add i64 %.sroa.0.021.i.i.i.i.i.i.i, %i.aed
  %i.aef = and i64 %i.aee, %.val7.i.i.i.i.i.i
  %i.aeg = load ptr, ptr %i.acy, align 8, !alias.scope !12166, !noalias !12169, !nonnull !25, !noundef !25
  %i.aeh = sub nsw i64 0, %i.aef                  ; 2 uses
  %i.aei = getelementptr inbounds [216 x i8], ptr %i.aeg, i64 %i.aeh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12170)
  call void @llvm.experimental.noalias.scope.decl(metadata !12171)
  call void @llvm.experimental.noalias.scope.decl(metadata !12172)
  %i.aej = getelementptr inbounds i8, ptr %i.aei, i64 -200
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aej, align 8, !alias.scope !12173, !noalias !12169, !noundef !25
  %i.aek = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aek, label %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i, !prof !34

_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ael = getelementptr inbounds i8, ptr %i.aei, i64 -208
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ael, align 8, !alias.scope !12173, !noalias !12169, !nonnull !25, !noundef !25
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i.i.i), !noalias !12174
  %i.aem = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aem, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i, !prof !34

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aen = getelementptr inbounds i8, ptr %i.aei, i64 -192
  %i.aeo = invoke noundef zeroext i1 @_RNvXs6_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.adx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.aen)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12088

.noexc9.i.i.i.i.i:                                ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  br i1 %i.aeo, label %bb.kq, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i, !prof !35

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i, %bb.kl
  %.not13.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %bb.km, !prof !30

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i, %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.aep = add i16 %.sroa.01.034.i.i.i.i.i.i.i, -1
  %i.aeq = and i16 %i.aep, %.sroa.01.034.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i125.i.i = icmp eq i16 %i.aeq, 0
  br i1 %.not.i.i.i.i.i125.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.km:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aer = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i, zeroinitializer
  %i.aes = bitcast <16 x i1> %i.aer to i16        ; 2 uses
  %.not.i.i.i.i.i169.i.i.i = icmp eq i16 %i.aes, 0
  br i1 %.not.i.i.i.i.i169.i.i.i, label %bb.kn, label %.thread29.i.i.i.i.i.i.i, !prof !30

.thread29.i.i.i.i.i.i.i:                          ; preds = %bb.km
  %i.aet = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aes, i1 true)
  %i.aeu = zext nneg i16 %i.aet to i64
  %i.aev = add i64 %.sroa.0.021.i.i.i.i.i.i.i, %i.aeu
  %i.aew = and i64 %i.aev, %.val7.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %.thread29.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.4.126.i.i.i.i.i.i.i = phi i64 [ %i.aew, %.thread29.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.aex = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i, splat (i8 -1)
  %i.aey = bitcast <16 x i1> %i.aex to i16
  %i.aez = icmp eq i16 %i.aey, 0
  br i1 %i.aez, label %bb.kn, label %bb.ko, !prof !30

bb.kn:                                            ; preds = %.thread.i.i.i.i.i.i.i, %bb.km
  %.sroa.04.127.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i ], [ 0, %bb.km ]
  %.sroa.4.125.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.126.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ undef, %bb.km ]
  %i.afa = add i64 %i.ady, 16                     ; 2 uses
  %i.afb = add i64 %i.afa, %.sroa.0.021.i.i.i.i.i.i.i
  br label %bb.kl

bb.ko:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.afc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.sroa.4.126.i.i.i.i.i.i.i
  %i.afd = load i8, ptr %i.afc, align 1, !noalias !12088, !noundef !25
  %i.afe = icmp sgt i8 %i.afd, -1
  br i1 %i.afe, label %bb.kp, label %bb.ks, !prof !30

bb.kp:                                            ; preds = %bb.ko
  %.val2.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i, align 16, !noalias !12088
  %i.aff = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i, zeroinitializer
  %i.afg = bitcast <16 x i1> %i.aff to i16        ; 2 uses
  %.not.i24.i.i.i.i.i.i.i = icmp ne i16 %i.afg, 0
  %i.afh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.afg, i1 true)
  %i.afi = zext nneg i16 %i.afh to i64
  call void @llvm.assume(i1 %.not.i24.i.i.i.i.i.i.i)
  br label %bb.ks

bb.kq:                                            ; preds = %.noexc9.i.i.i.i.i
  %i.afj = load ptr, ptr %i.acy, align 8, !alias.scope !12166, !noalias !12088, !nonnull !25, !noundef !25
  %i.afk = getelementptr inbounds [216 x i8], ptr %i.afj, i64 %i.aeh
  %i.afl = getelementptr inbounds i8, ptr %i.afk, i64 -8 ; 2 uses
  %i.afm = load ptr, ptr %i.afl, align 8, !noalias !12088, !nonnull !25, !noundef !25
  store ptr %i.adb, ptr %i.afl, align 8, !noalias !12088
  call void @llvm.experimental.noalias.scope.decl(metadata !12175)
  call void @llvm.experimental.noalias.scope.decl(metadata !12176)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !12177, !noalias !12087 ; 2 uses
  %i.afn = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.afn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.adw, align 8, !alias.scope !12177, !noalias !12087, !nonnull !25, !noundef !25
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !12178
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.kr, %bb.kq
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(184) %i.adx)
          to label %_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %.body172.i.i.i, !noalias !12088

bb.ks:                                            ; preds = %bb.kp, %bb.ko
  %.sroa.3.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.afi, %bb.kp ], [ %.sroa.4.126.i.i.i.i.i.i.i, %bb.ko ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %i.l, i64 208, i1 false), !noalias !12179
  call void @llvm.experimental.noalias.scope.decl(metadata !12180)
  %i.afo = load ptr, ptr %i.acy, align 8, !alias.scope !12181, !noalias !12088, !nonnull !25, !noundef !25 ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i ; 2 uses
  %i.afq = load i8, ptr %i.afp, align 1, !noalias !12182, !noundef !25
  %i.afr = and i8 %i.afq, 1
  %i.afs = zext nneg i8 %i.afr to i64
  %i.aft = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i, -16
  %i.afu = load i64, ptr %i.adq, align 8, !alias.scope !12181, !noalias !12088, !noundef !25
  %i.afv = and i64 %i.afu, %i.aft
  store i8 %i.ads, ptr %i.afp, align 1, !noalias !12182
  %i.afw = getelementptr i8, ptr %i.afo, i64 %i.afv
  %i.afx = getelementptr i8, ptr %i.afw, i64 16
  store i8 %i.ads, ptr %i.afx, align 1, !noalias !12182
  %i.afy = load <2 x i64>, ptr %i.adm, align 8, !alias.scope !12181, !noalias !12088
  %i.afz = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.afs, i64 0
  %i.aga = sub <2 x i64> %i.afy, %i.afz
  store <2 x i64> %i.aga, ptr %i.adm, align 8, !alias.scope !12181, !noalias !12088
  %i.agb = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i
  %i.agc = getelementptr inbounds [216 x i8], ptr %i.afo, i64 %i.agb ; 2 uses
  %i.agd = getelementptr inbounds i8, ptr %i.agc, i64 -216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.agd, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.011.i.i.i.i.i, i64 208, i1 false), !noalias !12183
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.agc, i64 -8
  store ptr %i.adb, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !12183
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i.i.i.i.i)
  br label %_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, %bb.kk, %_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9downgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %lpad.loopexit.split-lp375 = landingpad { ptr, i32 }
          cleanup
  %i.age = icmp eq ptr %i.adb, inttoptr (i64 -1 to ptr)
  br i1 %i.age, label %bb.kw, label %bb.kt

bb.kt:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.agf = atomicrmw add ptr %i.adc, i64 -1 release, align 8, !noalias !12184
  %i.agg = icmp eq i64 %i.agf, 1
  br i1 %i.agg, label %bb.ku, label %bb.kw

bb.ku:                                            ; preds = %bb.kt
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adb, i64 noundef 144, i64 noundef 8) #36, !noalias !12088
  br label %bb.kw

bb.kv:                                            ; preds = %bb.kw
  %i.agh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !12088
  unreachable

bb.kw:                                            ; preds = %bb.ku, %bb.kt, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.l) #41
          to label %.body172.thread.i.i.i unwind label %bb.kv, !noalias !12088

_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.ks, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %.sroa.0.0.i.i170.i.i.i = phi ptr [ null, %bb.ks ], [ %i.afm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12087
  %magicptr.i.i.i.i = ptrtoint ptr %.sroa.0.0.i.i170.i.i.i to i64
  %magicptr.off.i.i.i.i = add i64 %magicptr.i.i.i.i, -1
  %switch.i.i.i.i = icmp ult i64 %magicptr.off.i.i.i.i, -2
  br i1 %switch.i.i.i.i, label %bb.kx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.kx:                                            ; preds = %_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i170.i.i.i) ]
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i170.i.i.i, i64 8
  %i.agj = atomicrmw add ptr %i.agi, i64 -1 release, align 8, !noalias !12088
  %i.agk = icmp eq i64 %i.agj, 1
  br i1 %i.agk, label %bb.ky, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.ky:                                            ; preds = %bb.kx
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i170.i.i.i, i64 noundef 144, i64 noundef 8) #36, !noalias !12088
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.ky, %bb.kx, %_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.agl = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1
  br i1 %i.agl, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.kz

bb.kz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.agm = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !12087
  %i.agn = and i64 %i.agm, 9223372036854775807
  %i.ago = icmp eq i64 %i.agn, 0
  br i1 %i.ago, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.la, !prof !27

bb.la:                                            ; preds = %bb.kz
  %i.agp = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc174.i.i.i unwind label %bb.lf, !noalias !12088

.noexc174.i.i.i:                                  ; preds = %bb.la
  br i1 %i.agp, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.lb

bb.lb:                                            ; preds = %.noexc174.i.i.i
  store atomic i8 1, ptr %i.acn monotonic, align 8, !noalias !12088
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.lb, %.noexc174.i.i.i, %bb.kz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.agq = atomicrmw add ptr %i.ace, i32 -1073741823 release, align 4, !noalias !12088
  %i.agr = add i32 %i.agq, -1073741823            ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i32 %i.agr, 1073741824
  br i1 %or.cond.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i, label %bb.lc, !prof !56

bb.lc:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.ace, i32 noundef %i.agr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %bb.lf, !noalias !12088

bb.ld:                                            ; preds = %.body172.thread.i.i.i, %bb.lf
  %.pn47.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body173415.i.i.i, %.body172.thread.i.i.i ], [ %i.agv, %bb.lf ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12185)
  call void @llvm.experimental.noalias.scope.decl(metadata !12186)
  %i.ags = load ptr, ptr %i.n, align 8, !alias.scope !12187, !noalias !12087, !nonnull !25, !noundef !25
  %i.agt = atomicrmw add ptr %i.ags, i64 -1 release, align 8, !noalias !12188
  %i.agu = icmp eq i64 %i.agt, 1
  br i1 %i.agu, label %bb.le, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i

bb.le:                                            ; preds = %bb.ld
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i unwind label %bb.ib, !noalias !12088

bb.lf:                                            ; preds = %bb.lc, %bb.la, %bb.kd, %bb.kb, %bb.jz, %bb.jv, %bb.ju
  %i.agv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.lc, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  %i.agw = load ptr, ptr %i.n, align 8, !noalias !12087, !nonnull !25, !noundef !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12087
  store i8 0, ptr %i.acz, align 1, !noalias !12087
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 1000
  call void @llvm.experimental.noalias.scope.decl(metadata !12189)
  %.val.i178.i.i.i = load i64, ptr %i.agx, align 8, !alias.scope !12189, !noalias !12087 ; 2 uses
  %i.agy = icmp eq i64 %.val.i178.i.i.i, 0
  br i1 %i.agy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit180.i.i.i, label %bb.lg

bb.lg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %.val1.i179.i.i.i = load ptr, ptr %i.agz, align 8, !alias.scope !12189, !noalias !12087, !nonnull !25, !noundef !25
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i179.i.i.i, i64 noundef %.val.i178.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !12190
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit180.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit180.i.i.i: ; preds = %bb.lg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.aha = getelementptr inbounds nuw i8, ptr %1, i64 1433
  store i8 0, ptr %i.aha, align 1, !noalias !12087
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  %i.ahc = load i64, ptr %i.ahb, align 8, !range !36, !alias.scope !12191, !noalias !12087, !noundef !25
  %i.ahd = icmp eq i64 %i.ahc, -1
  br i1 %i.ahd, label %.thread456.i.i, label %bb.lh

bb.lh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit180.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.ahb)
          to label %.thread456.i.i unwind label %bb.li, !noalias !12088

bb.li:                                            ; preds = %bb.lh, %bb.jj, %bb.fx
  %i.ahe = phi ptr [ %i.abs, %bb.lh ], [ %i.aap, %bb.jj ], [ %i.qg, %bb.fx ]
  %i.ahf = phi ptr [ %i.abt, %bb.lh ], [ %i.aaq, %bb.jj ], [ %i.qh, %bb.fx ]
  %i.ahg = phi ptr [ %i.abu, %bb.lh ], [ %i.aar, %bb.jj ], [ %i.qi, %bb.fx ]
  %i.ahh = phi ptr [ %i.abv, %bb.lh ], [ %i.aas, %bb.jj ], [ %i.qj, %bb.fx ]
  %i.ahi = phi ptr [ %i.abw, %bb.lh ], [ %i.aat, %bb.jj ], [ %i.qm, %bb.fx ]
  %i.ahj = phi ptr [ %i.abx, %bb.lh ], [ %i.aau, %bb.jj ], [ %i.qn, %bb.fx ]
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit151.i.i.i

.thread456.i.i:                                   ; preds = %bb.lh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit180.i.i.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 1434
  store i8 0, ptr %i.ahl, align 2, !noalias !12087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8269.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8326.i.i.i, i64 7, i1 false), !noalias !12192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.i.i.i, i64 16, i1 false), !noalias !12192
  store i8 1, ptr %i.abw, align 8, !noalias !12087
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8326.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6282.sroa.4.i.i.i)
  br label %bb.mc

.body172.thread.i.i.i:                            ; preds = %bb.lj, %bb.kw, %.body172.i.i.i
  %eh.lpad-body173415.i.i.i = phi { ptr, i32 } [ %i.adi, %.body172.i.i.i ], [ %i.ahm, %bb.lj ], [ %lpad.loopexit.split-lp375, %bb.kw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12087
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools(ptr nonnull %i.ace, i8 %.sroa.01.0.i.i.i.i.i) #41
          to label %bb.ld unwind label %bb.ib, !noalias !12088

bb.lj:                                            ; preds = %bb.kh
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(208) %i.l) #41
          to label %.body172.thread.i.i.i unwind label %bb.ib, !noalias !12088

bb.lk:                                            ; preds = %bb.kc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.acw, ptr noundef nonnull align 1 dereferenceable(29) @278, i64 29, i1 false), !noalias !12193
  call void @llvm.experimental.noalias.scope.decl(metadata !12194)
  call void @llvm.experimental.noalias.scope.decl(metadata !12195)
  %i.ahn = load ptr, ptr %i.n, align 8, !alias.scope !12196, !noalias !12087, !nonnull !25, !noundef !25
  %i.aho = atomicrmw add ptr %i.ahn, i64 -1 release, align 8, !noalias !12197
  %i.ahp = icmp eq i64 %i.aho, 1
  %i.ahq = insertelement <2 x ptr> <ptr inttoptr (i64 29 to ptr), ptr poison>, ptr %i.acw, i64 1 ; 2 uses
  br i1 %i.ahp, label %bb.ll, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i

bb.ll:                                            ; preds = %bb.lk
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i unwind label %bb.lm, !noalias !12088

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i: ; preds = %bb.lm, %bb.le, %bb.ld, %bb.jo
  %.pn50.pn.i.i.i = phi { ptr, i32 } [ %.pn47.pn.i.i.i, %bb.ld ], [ %i.ahr, %bb.lm ], [ %.pn47.pn.i.i.i, %bb.le ], [ %i.abr, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12087
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit142.i.i.i

bb.lm:                                            ; preds = %bb.ll, %bb.jr
  %i.ahr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i: ; preds = %bb.ln, %bb.ll, %bb.lk
  %.sroa.23.5.i.i.i = phi i64 [ %.sroa.6282.sroa.3.0.copyload.i.i.i, %bb.ln ], [ 29, %bb.ll ], [ 29, %bb.lk ]
  %.sroa.12328.5.i.i.i = phi ptr [ %.sroa.4.0.copyload.i.i.i, %bb.ln ], [ @280, %bb.ll ], [ @280, %bb.lk ]
  %.sroa.0324.5.i.i.i = phi i8 [ %i.abz, %bb.ln ], [ 11, %bb.ll ], [ 11, %bb.lk ]
  %i.ahs = phi <2 x ptr> [ %i.acb, %bb.ln ], [ %i.ahq, %bb.ll ], [ %i.ahq, %bb.lk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12087
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.ln:                                            ; preds = %bb.js
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8326.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.i.i, i64 7, i1 false), !noalias !12087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.26.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6282.sroa.4.i.i.i, i64 16, i1 false), !noalias !12087
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit184.i.i.i

bb.lo:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i
  %i.aht = landingpad { ptr, i32 }
          cleanup
  br label %bb.jd

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit.i.i.i.i
  %i.ahu = getelementptr inbounds nuw i8, ptr %1, i64 1435
  store i8 0, ptr %i.ahu, align 1, !noalias !12087
  %i.ahv = getelementptr inbounds nuw i8, ptr %1, i64 1000
  call void @llvm.experimental.noalias.scope.decl(metadata !12198)
  %.val.i185.i.i.i = load i64, ptr %i.ahv, align 8, !alias.scope !12198, !noalias !12087 ; 2 uses
  %i.ahw = icmp eq i64 %.val.i185.i.i.i, 0
  br i1 %i.ahw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit187.i.i.i, label %bb.lp

bb.lp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.ahx = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %.val1.i186.i.i.i = load ptr, ptr %i.ahx, align 8, !alias.scope !12198, !noalias !12087, !nonnull !25, !noundef !25
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i186.i.i.i, i64 noundef %.val.i185.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !12199
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit187.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i: ; preds = %bb.lr, %bb.lq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit187.i.i.i
  store i8 0, ptr %i.aab, align 1, !noalias !12087
  br label %bb.ji

bb.lq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit187.i.i.i
  %i.ahy = getelementptr inbounds nuw i8, ptr %1, i64 984 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12200)
  call void @llvm.experimental.noalias.scope.decl(metadata !12201)
  %i.ahz = load ptr, ptr %i.ahy, align 8, !alias.scope !12202, !noalias !12087, !nonnull !25, !noundef !25
  %i.aia = atomicrmw add ptr %i.ahz, i64 -1 release, align 8, !noalias !12203
  %i.aib = icmp eq i64 %i.aia, 1
  br i1 %i.aib, label %bb.lr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i

bb.lr:                                            ; preds = %bb.lq
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ahy)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit189.i.i.i unwind label %bb.ls, !noalias !12088

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCsjjbR6Jfsbqw_8lance_io12object_store9providers19ObjectStoreProviderEL_EECsjsY2yM364a4_11lance_tools.exit193.i.i.i: ; preds = %bb.lx, %bb.lw, %bb.ls, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjsY2yM364a4_11lance_tools.exit148.i.i.i
end_hunk_2
